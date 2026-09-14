;------------------------------------------------------------------------------
; This file is part of the ZX Spectrum libzx library by Sebastian Mihai, 2016
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
;
; Plays sound loops intended for background music.
; The main difference between this and the "effects" routines is that this
; expects a fully populated buffer up front, and loops continuously through it.
;
;------------------------------------------------------------------------------

	; Pointer to consumer-supplied queue of sounds through which we'll loop
	;
	; Format of an entry (by byte, low endian):
	;     0 - number of frames remaining to output this sound
	;     1 - unused
	;   2-3 - time slice duration (how long we sustain it during each frame)
	;   4-5 - pitch
musicQueue dw 0				; pointer to beginning of queue of entries
musicQueueLength dw 0		; length of queue, in entries
musicQueueLastEntry dw 0	; pointer to last sound
MUSIC_QUEUE_ENTRY_SIZE equ 6	; in bytes
	
musicQueueCurrentEntry dw 0	; pointer to current sound
musicQueueFramesLeftInCurrentSound db 0	; number of frames left to play
											; current sound
musicQueueIsLoaded db 0
musicQueueIsPaused db 0


initialize_music:
	ld hl, musicQueueIsLoaded
	ld (hl), 0
	
	ld hl, musicQueueIsPaused
	ld (hl), 0
	ret
	
; Used by consumers to initialize the queue based on a buffer they provide.
;
; Output:
;        BC - address of beginning of buffer (see above for format)
;        DE - number of buffer entries
music_queue_load:
	push de
	
	ld hl, musicQueue
	ld (hl), c
	inc hl
	ld (hl), b				; musicQueue := BC
	
	ld hl, musicQueueLength
	ld (hl), e
	inc hl
	ld (hl), d				; musicQueueLength := DE
	
	pop de
	ld hl, 0
music_queue_load_calculate_last_loop:
	dec de					; buffer entries--
	
	ld a, d
	or e
	jp z, music_queue_load_offset_by_queue_base	; if DE = 0, we're done
	
	ld bc, MUSIC_QUEUE_ENTRY_SIZE
	add hl, bc				; HL := pointer to next entry
	jp music_queue_load_calculate_last_loop		; next entry
music_queue_load_offset_by_queue_base:
	; here, HL = offset to last queue entry
	push hl
	pop bc							; BC := HL
	ld hl, (musicQueue)				; HL := queue start address
	add hl, bc						; HL := address of last queue entry
	ld (musicQueueLastEntry), hl	; store it
	
	ld hl, musicQueueIsLoaded
	ld (hl), 1
	
	ld hl, musicQueueIsPaused
	ld (hl), 0
	
	call music_queue_rewind
	ret


; Restart playing from the beginning of the queue
;
music_queue_rewind:
	ld hl, (musicQueue)
	ld (musicQueueCurrentEntry), hl	; point current entry to the beginning
	
	ld a, (hl)						; A := total frames of first entry
									; since byte 0 stores total frames
	ld (musicQueueFramesLeftInCurrentSound), a
	ret


; Called every frame to output a sound slice
;
music_continue_playing:
	ld a, (musicQueueIsPaused)
	cp 1
	jp z, music_continue_playing_done	; if paused, don't play
	
	ld a, (musicQueueIsLoaded)
	cp 0
	jp z, music_continue_playing_done	; if not yet loaded, don't play
	
	ld a, (musicQueueFramesLeftInCurrentSound)
	cp 0						; byte 0 of entry contains frames remaining
	jp nz, music_continue_playing_output	; if frames remaining is not 0,
											; we have some frames left to play
											; for the current queue entry
	
	; no frames left to play in current sound
	; so advance to next entry before outputting sound
	call music_queue_move_next
music_continue_playing_output:
	; we are now going to turn on the speaker
	ld hl, musicQueueFramesLeftInCurrentSound
	dec (hl)									; decrement frames left
	
	ld hl, (musicQueueCurrentEntry)	; HL := address of current entry
	inc hl						; skip unused byte
	
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)					; bytes 2-3 hold time slice duration
								; now stored in DE
	inc hl
	ld c, (hl)
	inc hl
	ld b, (hl)					; bytes 4-5 hold pitch (now stored in BC)

	ld a, b
	or c
	jp z, music_continue_playing_done	; if BC = 0, don't output
	
	ld h, b
	ld l, c						; HL := BC  (pitch)
	call ROM_ROUTINE_OUTPUT_SOUND	; turn on speaker
music_continue_playing_done:
	ret
	

; Plays "muted" music, as in, it advances through the sounds, but doesn't
; actually output anything to the speaker
;
music_continue_playing_muted:
	ld a, (musicQueueIsPaused)
	cp 1
	jp z, music_continue_playing_muted_done	; if paused, don't play
	
	ld a, (musicQueueIsLoaded)
	cp 0
	jp z, music_continue_playing_muted_done	; if not yet loaded, don't play
	
	ld a, (musicQueueFramesLeftInCurrentSound)
	cp 0						; byte 0 of entry contains frames remaining
	jp nz, music_continue_playing_muted_output	; if frames remaining is not 0,
											; we have some frames left to play
											; for the current queue entry
	
	; no frames left to play in current sound
	; so advance to next entry before outputting sound
	call music_queue_move_next
music_continue_playing_muted_output:
	ld hl, musicQueueFramesLeftInCurrentSound
	dec (hl)									; decrement frames left
music_continue_playing_muted_done:
	; we don't actually output anything here, so we're done now
	ret
	
	
; Moves to the next entry in the loop, wrapping around if at the end
;
music_queue_move_next:
	; see if we're already pointing to the last entry, by comparing the values
	; of musicQueueLastEntry and musicQueueCurrentEntry
	; this is a comparison between 16-bit numbers, to be done byte by byte
	ld ix, musicQueueLastEntry
	
	ld a, (ix+0)
	ld hl, musicQueueCurrentEntry
	cp (hl)							; compare LSB
	jp nz, music_queue_move_next_not_at_end		; not equal, so not at end yet
	
	ld a, (ix+1)
	inc hl
	cp (hl)							; compare MSB
	jp nz, music_queue_move_next_not_at_end		; not equal, so not at end yet

	; we're at the end, so we have to go back to the beginning
	call music_queue_rewind
	ret
music_queue_move_next_not_at_end:	
	ld hl, (musicQueueCurrentEntry)
	ld b, 0
	ld c, MUSIC_QUEUE_ENTRY_SIZE
	add hl, bc						; move pointer forward
	
	ld (musicQueueCurrentEntry), hl
	ld a, (hl)						; A := total frames of next entry
									; since byte 0 stores total frames
	ld (musicQueueFramesLeftInCurrentSound), a
	ret


music_queue_pause:
	ld hl, musicQueueIsPaused
	ld (hl), 1
	ret


music_queue_resume:
	ld hl, musicQueueIsPaused
	ld (hl), 0
	ret


