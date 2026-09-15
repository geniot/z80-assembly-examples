;------------------------------------------------------------------------------
; This file is part of the libzx examples suite
;                      by Sebastian Mihai, 2016, http://sebastianmihai.com
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; Example 3: demonstrate the random number generator
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
	
start:
	ld sp, endstack				; set up our new stack (we point to the end 
								; because the stack grows into lower addresses)
	call initialize_libzx		; initialize the libzx library
	
	; this is where the example begins
    ei
	; done initializing, now enter the main loop
main_loop:
	halt						; synchronize with video interrupt
	call draw_donut
	jp main_loop				; next video frame

	
; Draws a donut at a random location with:
; X between 0 and 127
; Y between 0 and 127
draw_donut:
	call get_next_random		; A := random number between 0 and 255
	cp 184
	jp nc, draw_donut			; if A >= 184 then get another random
								; (since screen is only 192 pixels tall
								; and our sprite is 8 pixels tall)
								
	ld c, a						; Y coordinate
	push bc						; save Y coordinate (here it's stored in C)
	
	call get_next_random		; A := random number between 0 and 255
	ld ixl, a					; X coordinate (screen is 256 pixels wide)
	
	pop bc						; restore Y coordinate in C
	ld a, 8						; our donut is 8 pixels tall
	ld hl, donut				; HL := pointer to donut bitmap
	ld de, donutMask			; DE := pointer to donut mask bitmap
	call draw_bitmap_OR_blitted_masked_vram	; draw masked bitmap	
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