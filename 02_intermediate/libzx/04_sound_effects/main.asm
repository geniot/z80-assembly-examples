;------------------------------------------------------------------------------
; This file is part of the libzx examples suite
;                      by Sebastian Mihai, 2016, http://sebastianmihai.com
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; Example 4: demonstrate music and sound effects playback, along with a method
;            of timing the CPU during each video frame
;
;            throughout the height of the red border strip, the CPU is busy
;            outputting music and sound
;
;            throughout the height of the yellow border strip, the CPU is busy
;            drawing the sprite
;------------------------------------------------------------------------------
    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48
    ORG 33000

main: ;org 33000					; stay above ULA-contended memory
	jp start					; jump to the beginning of our program
	
	include "../libzx/libzx.asm"	; include the libzx library

stack ds 512				; reserve some bytes for our stack
endstack:					; mark end of our stack
	
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
				
Y_COORDINATE equ 170	; used to animate the donut
currentX db 50
	
	; music loop definition
	; see libzx\sound\sound_effects.asm for how [time slice] 
	; and [pitch] are calculated
musicStart 
		; [frames], [time slice], [pitch]
		dw 15, 10, 160		; first sound in the loop
		dw 15, 10, 130		; second sound in the loop
		dw 15, 10, 100		; next sound in the loop
		dw 15, 10, 70		; next sound in the loop
		dw 15, 0, 0			; 15 frames of silence
musicEnd
musicEntriesCount dw ( musicEnd - musicStart ) / 6	; 6 bytes per entry
	
start:
	ld sp, endstack				; set up our new stack (we point to the end 
								; because the stack grows into lower addresses)
	call initialize_libzx		; initialize the libzx library
	
	; this is where the example begins
	
	ld a, SOUND_MODE_INDEPENDENT
	call sound_manager_set_mode		; set sound manager mode
									; find more modes in libzx/sound.asm
	ld bc, musicStart
	ld de, (musicEntriesCount)
	call sound_manager_music_load	; load music

	; done initializing, now start the main loop
    ei
main_loop:
	halt						; synchronize with video interrupt
	
	ld a, COLOUR_RED					; change border colour to red, to 
	call ROM_ROUTINE_SET_BORDER_COLOUR	; illustrate amount of CPU time spent
										; playing sounds every frame
	
	call sound_manager_continue_playing	; call this every frame to output sound
	
	ld a, COLOUR_YELLOW					; change border colour to yellow, to 
	call ROM_ROUTINE_SET_BORDER_COLOUR	; illustrate amount of CPU time spent
										; drawing the donut every frame
	
	call draw_donut_masked		; animate a donut to show that music and sound
								; playback does not interrupt it
								
	ld a, COLOUR_BLACK					; change border colour to black, to 
	call ROM_ROUTINE_SET_BORDER_COLOUR	; illustrate amount of CPU time left
										; over in each frame
								
	jp main_loop				; next video frame

	
; Erases the masked donut at the old location,
; then increments the X position,
; then displays the donut at the new X position
draw_donut_masked:
	; erase the donut at its current position by copying over a background
	; "cut-out" 
	ld c, Y_COORDINATE	; Y coordinate
	ld a, (currentX)
	ld ixl, a					; X coordinate
	ld a, 8							   ; our donut is 8 pixels tall
	call copy_buffer_rectangle_to_vram ; copy rectangle from background
	
	ld hl, currentX	; HL := pointer to currentX
	inc (hl)				; increment value at address HL
	
	ld a, (hl)				; A := currentX value
	cp 200					; compare to right-most limit
	jp nz, draw_donut_ored	; if currentX != 200 then go ahead and draw it
	ld hl, currentX	; else 
	ld (hl), 50				; 	currentX := left most limit
	
	call play_sound_effect	; play a sound effect when we reach right side
draw_donut_ored:
	; draw donut at its new position
	ld c, Y_COORDINATE			; Y coordinate
	ld a, (currentX)
	ld ixl, a			; X coordinate
	ld a, 8				; our donut is 8 pixels tall
	ld hl, donut		; HL := pointer to donut bitmap
	ld de, donutMask	; DE := pointer to donut mask bitmap
	call draw_bitmap_OR_blitted_masked_vram	; draw masked bitmap	
	ret


play_sound_effect:
	; see libzx\sound\sound_effects.asm for how duration
	; and pitch are calculated

	; first part of the sound effect
	ld de, 6		; duration
	ld bc, 300		; pitch
	ld a, 3			; number of frames to sustain
	call sound_manager_effects_enqueue
	
	; second part of the sound effect
	ld de, 6		; duration
	ld bc, 330		; pitch
	ld a, 3			; number of frames to sustain
	call sound_manager_effects_enqueue
	
	; third part of the sound effect
	ld de, 6		; duration
	ld bc, 360		; pitch
	ld a, 3			; number of frames to sustain
	call sound_manager_effects_enqueue
	
	; fourth part of the sound effect
	ld de, 6		; duration
	ld bc, 390		; pitch
	ld a, 3			; number of frames to sustain
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