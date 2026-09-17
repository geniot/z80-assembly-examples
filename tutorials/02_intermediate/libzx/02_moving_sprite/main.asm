;------------------------------------------------------------------------------
; This file is part of the libzx examples suite
;                      by Sebastian Mihai, 2016, http://sebastianmihai.com
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; Example 2: demonstrate a moving sprite on top of a background, rendered using
;               1. XORed
;               2. Masked then ORed
;------------------------------------------------------------------------------
    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48
    ORG 33000


main: ;org 33000					; stay above ULA-contended memory
	jp start					; jump to the beginning of our program
	
	include "../libzx/libzx.asm"	; include the libzx library

stack ds 512				; reserve some bytes for our stack
endstack:					; mark end of our stack
	
xorMessage db "XOR-ED SPRITES ARE FAST TO RENDER AND DO NOT REQUIRE A BACKGROUND BUFFER, "
    db "BUT DO NOT LOOK GOOD WHEN PASSING OVER OTHER GRAPHICS."
    db" USE THEM WHEN THERE WILL NOT BE MUCH OVERLAP.                   "
    db 0	; the 0 indicates the end of string
maskedMessage db "MASKED SPRITES LOOK GOOD, "
    db "BUT NEED 50 PERCENT MORE CPU TIME TO RENDER THAN XOR-ED SPRITES.      "
    db 0	; the 0 indicates the end of string
	
backgroundTile db %10001000
				   db %10001000
				   db %10001000
				   db %10001000
				   db %10001000
				   db %10001000
				   db %10001000
				   db %10001000
	
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
				
MASKED_Y_COORDINATE equ 170
maskedCurrentX db 50
	
XORED_Y_COORDINATE equ 81
xoredCurrentX db 100
	
start:
	ld sp, endstack				; set up our new stack (we point to the end 
								; because the stack grows into lower addresses)
	call initialize_libzx		; initialize the libzx library
	
	; this is where the example begins
	
	; first, tile the entire background with our 8x8 tile
	ld c, 0						; starting row
	ld ixl, 0					; starting column
	ld hl, backgroundTile		; pointer to bitmap
	ld d, 32					; 32 tiles horizontally
	ld e, 24					; 24 tiles vertically
	call repeat_tile_background	; draw tile multiple times 
								; to the background buffer
	call copy_background_buffer_to_video_ram	; copy background buffer
												; to the video ram
	
	; print descriptions
	ld hl, xorMessage			; HL := address of string
	ld b, 2						; row
	ld c, 0						; column
	call text_print_at			; call routine
	
	ld hl, maskedMessage		; HL := address of string
	ld b, 16					; row
	ld c, 0						; column
	call text_print_at			; call routine
	
	call draw_donut_xored		; draw the xored donut a first time, since
								; our first operation is to erase the donut
								; at its old location
    ei
	; done initializing, now enter the main loop
main_loop:
	halt						; synchronize with video interrupt
	call draw_donut_xor
	call draw_donut_masked
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
	
	ld hl, maskedCurrentX	; HL := pointer to maskedCurrentX
	inc (hl)				; increment value at address HL
	
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
; NOTE: XORed sprites are erased simply by re-drawing them in the same spot
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
	
	ld hl, xoredCurrentX	; HL := pointer to xoredCurrentX
	inc (hl)				; increment value at address HL
	
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

	
;end main	; this is needed so the Pasmo assembler generates an
			; "auto-running" BASIC header for us
			;
			; the only way on the ZX Spectrum to run a program automatically
			; after loading it (that is, without requiring the user to issue
			; a "RUN" command manually), is via a loader written in BASIC
			; which simply loads the main program block (written in assembler)
			; after which it jumps into its beginning
    SAVESNA "main.sna", main