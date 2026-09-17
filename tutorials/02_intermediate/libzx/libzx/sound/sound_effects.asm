;------------------------------------------------------------------------------
; This file is part of the ZX Spectrum libzx library by Sebastian Mihai, 2016
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
;
; Plays non-blocking sound effects from a queue.
; Intended for short game effects, such as punches, explosions, etc.
;
;------------------------------------------------------------------------------

	; all sizes are in bytes
SOUND_QUEUE_ENTRY_SIZE equ 5
SOUND_QUEUE_ENTRIES equ 50
SOUND_QUEUE_SIZE equ SOUND_QUEUE_ENTRY_SIZE * SOUND_QUEUE_ENTRIES

	; The sound queue stores entries representing sounds queued up by consumers
	; It is implemented as a circular buffer, like so:
	;  +-> [entry 0] --> [entry 1] --> [entry2] --> [entryN] -+
	;  |                                                      |
	;  +------------------------------------------------------+
	;
	; Format of an entry (by byte, low endian):
	;     0 - number of frames remaining to output this sound
	;   1-2 - time slice duration (how long we sustain it during each frame)
	;   3-4 - pitch
soundQueue ds SOUND_QUEUE_SIZE, 0
	
soundQueueOffset db 0	; the offset of the current entry in the queue
							; used to offset from the address of soundQueue
soundQueueIsLocked db 0	; when 1, the queue will not accept new sounds


; Adds a sound with the specified characteristics to the queue. 
;
; NOTE: Since to get DE's value we multiply by FREQUENCY, and since to get
;       HL's value we divide by FREQUENCY, to have two sounds of different
;       frequencies playing for the same amount of time, both DE and HL values
;       must change.
;
; Input:
;      DE - time slice duration (calculated as FREQUENCY * SECONDS)
;           (how much time the CPU is blocked playing this sound each frame)
;      BC - pitch (calculated as 437500 / FREQUENCY - 30.125)
;       A - number of frames during which the sound will be played
sound_queue_add:
	push af
	
	ld a, (soundQueueIsLocked)
	cp 0
	jp nz, sound_queue_add_done		; if queue is locked, we won't add it

	push bc
	push de
	call sound_queue_get_next_available_slot	; HL := pointer to empty slot
	pop de
	pop bc
	pop af
	
	; now fill in the entry (HL points to its beginning)
	ld (hl), a			; byte 0 holds number of frames (input in A)
	inc hl
	ld (hl), e
	inc hl
	ld (hl), d			; bytes 1-2 hold time slice duration (input in DE)
	inc hl
	ld (hl), c
	inc hl
	ld (hl), b			; bytes 3-4 hold pitch (input in BC)
sound_queue_add_done:
	pop af				; we have an extra value on the stack
	ret


; Starting from immediately after the current entry, returns a pointer to 
; the next available entry.
;
; NOTE: In case of a full buffer, this routine returns the slot right BEFORE
;       the current slot, basically overwriting the "last" sound in the queue
;
; Output:
;        HL - pointer to next available slot
sound_queue_get_next_available_slot:
	ld a, (soundQueueOffset)			; start at current pointer
	jp sound_queue_get_next_available_slot_loop
soundQueueLastOffset db 0			; private variable
sound_queue_get_next_available_slot_loop:
	; here, A = last checked offset
	; we save it in case the queue is full and we add right before current
	ld (soundQueueLastOffset), a
	
	call sound_queue_get_next_offset		; A := next offset
	
	push af									; save next offset
	ld hl, soundQueue	; HL := base of queue
	ld b, 0
	ld c, a				; BC := A
	add hl, bc			; HL now points to the entry that may be empty
	ld a, (hl)
	cp 0				; if zero frames remaining in this entry
	jp z, sound_queue_get_next_available_slot_done 
						; then we found our available slot
	pop af								; restore offset
	push af
	; this entry isn't empty
	
	; if we have come back to the current offset, the queue is full
	; in this case, we'll return the entry right BEFORE current offset
	
	; here, A = next offset
	ld hl, soundQueueOffset		; if we haven't reached the current offset
	cp (hl)						; then we can continue looking
	jp nz, sound_queue_get_next_available_slot_loop_next 
	
	; by having reached the current offset, we've come full circle
	; the queue is full, and we'll return the entry right BEFORE current
	pop af						; we have an extra value on the stack

	ld hl, soundQueue	; HL := base of queue
	ld a, (soundQueueLastOffset)
	ld b, 0
	ld c, a				; BC := soundQueueLastOffset
	add hl, bc			; HL now points to the entry we're returning
	ret
	
sound_queue_get_next_available_slot_loop_next:
	pop af
	jp sound_queue_get_next_available_slot_loop
sound_queue_get_next_available_slot_done:
	pop af						; we have an extra value on the stack
	ret

	
sound_queue_advance_pointer:
	ld a, (soundQueueOffset)
	call sound_queue_get_next_offset
	ld (soundQueueOffset), a
	ret
	

; Gets the offset of next entry, cycling to the beginning when needed
;
; Input:
;       A - offset to start from (not inclusive)
; Output:
;       A - offset of next entry
sound_queue_get_next_offset:
	add a, SOUND_QUEUE_ENTRY_SIZE			; move pointer forward
	
	cp SOUND_QUEUE_SIZE
	jp c, sound_queue_get_next_offset_done	; if pointer < total size
											;     then we're done
	ld a, 0									; else reset it to the beginning
sound_queue_get_next_offset_done:
	ret
	

initialize_sound:
	call sound_queue_unlock
	call sound_queue_clear
	
	ld hl, soundQueueOffset
	ld (hl), 0
	ret

	
sound_queue_lock:
	ld hl, soundQueueIsLocked
	ld (hl), 1
	ret
	
	
sound_queue_unlock:
	ld hl, soundQueueIsLocked
	ld (hl), 0
	ret
	

; Remove everything from the sound queue
;
sound_queue_clear:
	ld b, SOUND_QUEUE_SIZE
	ld hl, soundQueue
sound_queue_clear_loop:
	ld (hl), 0
	inc hl
	djnz sound_queue_clear_loop
	ret


; Meant to be invoked every frame, this routine uses a CPU time slice of every
; frame to output a sound from the queue over a number of frames, while not
; blocking game play.
; The ZX Spectrum outputs PAL signal, at 50 frames per second (50 Hz).
;
; Each sound in the queue is "cut into pieces" distributed across a number of
; frames.
;
; Output:
; 		A - 1 if a sound was output, 0 otherwise
sound_continue_playing:
	ld hl, soundQueue			;
	ld a, (soundQueueOffset)	;
	ld b, 0						;
	ld c, a						;
	add hl, bc					; HL now points to current entry
	
	ld a, 0
	cp (hl)						; byte 0 of entry contains frames remaining
	jp nz, sound_continue_playing_output	; if frames remaining is not 0,
											; we have some frames left to play
											; for the current queue entry
sound_continue_playing_next_sound:
	; we ran out of frames for the current sound, so advance to the next entry
	call sound_queue_advance_pointer
	
	ld hl, soundQueue			;
	ld a, (soundQueueOffset)	;
	ld b, 0						;
	ld c, a						;
	add hl, bc					; HL now points to current entry
	
	ld a, 0
	cp (hl)						; byte 0 of entry contains frames remaining
	jp z, sound_continue_playing_no_output	; if even next entry is empty,
										; then the whole queue is empty
sound_continue_playing_output:
	; we are now going to turn on the speaker
	; HL points to current entry at this point
	dec (hl)					; byte 0 of entry contains frames remaining
								; which is now 1 lower
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)					; bytes 1-2 hold time slice duration
								; now stored in DE
	inc hl
	ld c, (hl)
	inc hl
	ld b, (hl)					; bytes 3-4 hold pitch (now stored in BC)

	ld a, b
	or c
	jp z, sound_continue_playing_done_outputting ; if BC = 0, don't output
												 ; but claim we did
	
	ld h, b
	ld l, c						; HL := BC  (pitch)
	call ROM_ROUTINE_OUTPUT_SOUND	; turn on speaker
sound_continue_playing_done_outputting:
	ld a, 1						; return the fact that we did output a sound
	ret
sound_continue_playing_no_output:
	ld a, 0						; return that we did not output a sound
	ret


; This is the address of a ROM routine, which is invoked normally, via call
;
; Generates a sound via ZX Spectrum's internal beeper, blocking the CPU.
;
; Input:
;      DE - duration (calculated as FREQUENCY * SECONDS)
;      HL - pitch (calculated as 437500 / FREQUENCY - 30.125)
ROM_ROUTINE_OUTPUT_SOUND equ 949

