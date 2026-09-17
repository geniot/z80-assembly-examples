;------------------------------------------------------------------------------
; This file is part of the libzx examples suite
;                      by Sebastian Mihai, 2016, http://sebastianmihai.com
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; Example 7: demonstrate keyboard-controlled sprites on a loaded background
;            image, with sound playing
;------------------------------------------------------------------------------
    ORG 33000
    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48

main: ;org 33000					; stay above ULA-contended memory
	jp start					; jump to the beginning of our program
	
	include "../libzx/libzx.asm"	; include the libzx library

stack ds 512				; reserve some bytes for our stack
endstack:					; mark end of our stack
	
message db "PRESS Z TO MOVE SPRITES", 0
message2 db "PRESS M TO PLAY A SOUND", 0
	
	; music loop definition
	; see libzx\sound\sound_effects.asm for how [time slice] 
	; and [pitch] are calculated
musicStart 
		; [frames], [time slice], [pitch]
		dw 25, 7, 160		; first sound in the loop
		dw 25, 7, 130		; second sound in the loop
		dw 25, 7, 110		; next sound in the loop
		dw 25, 7, 170		; next sound in the loop
		dw 25, 0, 0			; 15 frames of silence
musicEnd
musicEntriesCount dw ( musicEnd - musicStart ) / 6	; 6 bytes per entry
	
background_definition:
		include "../background_screen.asm"	; the background data is in this file
	
donut		db %00111100	; an 8x8 image of our donut
				db %01000010
				db %10000001
				db %10000001
				db %10000001
				db %10000001
				db %01000010
				db %00111100
	
donutMask	db %00111100	; the mask is used to "erase" the
				db %01111110	; background behind the donut,
				db %11111111	; before the donut is drawn
				db %11111111
				db %11111111
				db %11111111
				db %01111110
				db %00111100
				
MASKED_Y_COORDINATE equ 146
maskedCurrentX db 50
	
XORED_Y_COORDINATE equ 122
xoredCurrentX db 100
	
start:
	ld sp, endstack				; set up our new stack (we point to the end 
								; because the stack grows into lower addresses)
	call initialize_libzx		; initialize the libzx library
	
	; this is where the example begins
	ld hl, background_definition
	ld de, backgroundVideoBuffer
	call copy_buffer_to_buffer		; copy background definition to 
									; libzx's background buffer
	
	call copy_background_buffer_to_video_ram ; copy libzx's background buffer
											 ; to the video ram
	; write messages
	ld hl, message				; HL := address of message
	ld b, 7						; row
	ld c, 4						; column
	call text_print_at			; call routine
	
	ld hl, message2				; HL := address of message
	ld b, 9						; row
	ld c, 4						; column
	call text_print_at			; call routine
	
	call draw_donut_xored		; draw the xored donut a first time, since
								; our first operation is to erase the donut
								; at its old location
	; initialize sound
	ld a, SOUND_MODE_INDEPENDENT
	call sound_manager_set_mode		; set sound manager mode
									; find more modes in libzx/sound.asm
	ld bc, musicStart
	ld de, (musicEntriesCount)
	call sound_manager_music_load	; load music

    ei
	; done initializing, now enter the main loop
main_loop:
	halt						; synchronize with video interrupt

	ld a, COLOUR_RED					; change border colour to red, to 
	call ROM_ROUTINE_SET_BORDER_COLOUR	; illustrate amount of CPU time spent
										; playing sounds every frame

	call sound_manager_continue_playing	; call this every frame to output sound

	ld a, COLOUR_YELLOW					; change border colour to yellow, to 
	call ROM_ROUTINE_SET_BORDER_COLOUR	; illustrate amount of CPU time spent
										; drawing the donut every frame

	call keyboard_read_keys		; record the state of all keys
	call draw_donut_xor
	call draw_donut_masked

	ld a, COLOUR_BLACK					; change border colour to black, to 
	call ROM_ROUTINE_SET_BORDER_COLOUR	; illustrate amount of CPU time left
										; over in each frame
	
	ld b, KEY_M
	call check_just_pressed_keys_b_n_m_ss_sp	; check if M was just pressed
	cp 0
	jp z, main_loop_done		; if M was not just pressed, we do nothing
	
	call play_sound_effect		; if it was just pressed, queue up the sound
main_loop_done:
	jp main_loop		; next video frame

	
; Erases the masked donut at the old location,
; then increments the X position,
; then displays the donut at the new X position
draw_donut_masked:
	; erase the donut at its current position by copying over a background
	; "cut-out" 
	ld c, MASKED_Y_COORDINATE	; Y coordinate
	ld a, (maskedCurrentX)
	ld ixl, a					; X coordinate
	ld a, 8							   ; our donut is 8 pixels tall
	call copy_buffer_rectangle_to_vram ; copy rectangle from background
	
	ld a, (keys_v_c_x_z_cs)		; A := keys status
	and KEY_Z
	jp nz, draw_donut_masked_done_moving ; if Z is not pressed, we don't move
	
	ld hl, maskedCurrentX	; HL := pointer to maskedCurrentX
	inc (hl)				; increment value at address HL
draw_donut_masked_done_moving:	
	ld a, (hl)				; A := maskedCurrentX value
	cp 200					; compare to right-most limit
	jp nz, draw_donut_ored	; if maskedCurrentX != 200 then go ahead and draw it
	ld hl, maskedCurrentX	; else 
	ld (hl), 50				; 	maskedCurrentX := left most limit
draw_donut_ored:
	; draw donut at its new position
	ld c, MASKED_Y_COORDINATE			; Y coordinate
	ld a, (maskedCurrentX)
	ld ixl, a			; X coordinate
	ld a, 8				; our donut is 8 pixels tall
	ld hl, donut		; HL := pointer to donut bitmap
	ld de, donutMask	; DE := pointer to donut mask bitmap
	call draw_bitmap_OR_blitted_masked_vram	; draw masked bitmap	
	ret


; Erases the XORed donut at the old location,
; then increments the X position,
; then displays the donut at the new X position	
draw_donut_xor:
	; erase the donut at its current position by re-displaying it at the same
	; location where it was last drawn.
	; due to XOR behaviour, this will erase it
	ld c, XORED_Y_COORDINATE			; Y coordinate
	ld a, (xoredCurrentX)
	ld ixl, a			; X coordinate
	ld a, 8				; our donut is 8 pixels tall
	ld hl, donut		; HL := pointer to donut bitmap
	call draw_bitmap_XOR_blitted_vram	; draw bitmap
	
	ld a, (keys_v_c_x_z_cs)		; A := keys status
	and KEY_Z
	jp nz, draw_donut_xor_done_moving ; if Z is not pressed, we don't move
	
	ld hl, xoredCurrentX	; HL := pointer to xoredCurrentX
	inc (hl)				; increment value at address HL
draw_donut_xor_done_moving:	
	ld a, (hl)				; A := xoredCurrentX value
	cp 200					; compare to right-most limit
	jp nz, draw_donut_xored	; if xoredCurrentX != 200 then go ahead and draw it
	ld hl, xoredCurrentX	; else 
	ld (hl), 50				; 	xoredCurrentX := left most limit
draw_donut_xored:
	; draw donut at its new position
	ld c, XORED_Y_COORDINATE			; Y coordinate
	ld a, (xoredCurrentX)
	ld ixl, a			; X coordinate
	ld a, 8				; our donut is 8 pixels tall
	ld hl, donut		; HL := pointer to donut bitmap
	call draw_bitmap_XOR_blitted_vram	; draw bitmap
	ret

	
play_sound_effect:
	; see libzx\sound\sound_effects.asm for how duration
	; and pitch are calculated
	
	; first part of the sound effect
	ld de, 4		; duration
	ld bc, 300		; pitch
	ld a, 1			; number of frames to sustain
	call sound_manager_effects_enqueue
	
	; second part of the sound effect
	ld de, 4		; duration
	ld bc, 330		; pitch
	ld a, 1			; number of frames to sustain
	call sound_manager_effects_enqueue
	
	; third part of the sound effect
	ld de, 4		; duration
	ld bc, 360		; pitch
	ld a, 1			; number of frames to sustain
	call sound_manager_effects_enqueue
	
	; fourth part of the sound effect
	ld de, 4		; duration
	ld bc, 390		; pitch
	ld a, 1			; number of frames to sustain
	call sound_manager_effects_enqueue
	ret
	
	
	
;end main	; this is needed so the Pasmo assembler generates an
			; "auto-running" BASIC header for us
			;
			; the only way on the ZX Spectrum to run a program automatically
			; after loading it (that is, without requiring the user to issue
			; a "RUN" command manually), is via a loader written in BASIC
			; which simply loads the main program block (written in assembler)
			; after which it jumps into its beginning


    SAVESNA "main.sna", main