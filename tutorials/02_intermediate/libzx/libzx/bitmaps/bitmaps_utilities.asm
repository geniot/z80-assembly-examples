;------------------------------------------------------------------------------
; This file is part of the ZX Spectrum libzx library by Sebastian Mihai, 2016
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; Various bitmap utilities
;------------------------------------------------------------------------------

bitmapFilled8x8Square_Times5
bitmapFilled8x8Square_Times4
bitmapFilled8x8Square_Times3
bitmapFilled8x8Square_Times2
bitmapFilled8x8Square
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
	
bitmapEmpty8x8Square_Times5
bitmapEmpty8x8Square_Times4
bitmapEmpty8x8Square_Times3
bitmapEmpty8x8Square_Times2
bitmapEmpty8x8Square
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000
		db %00000000

; Erases an 8x8 bitmap in video ram
;
; Input:	
; 		C - screen Y coordinate
;	  IXL - screen X coordinate
erase_8x8_bitmap_vram:
	ld hl, bitmapEmpty8x8Square
	ld de, bitmapFilled8x8Square
	ld a, 8
	call draw_bitmap_OR_blitted_masked_vram
	ret
		
; Determines whether two input rectangles overlap
;
; Input:	
; 		B - rectangle 1 left
;       C - rectangle 1 top
;       D - rectangle 1 right
;       E - rectangle 1 bottom
;
; 		H - rectangle 2 left
;       L - rectangle 2 top
;     IXH - rectangle 2 right
;     IXL - rectangle 2 bottom
; Output:
; 		A - 1 if rectangles overlap, 0 otherwise
rectangle_overlap_test:
	ld a, ixh
	cp b
	jp c, no_collision		; if r2.right < r1.left then no collision
	
	ld a, d
	cp h
	jp c, no_collision		; if r1.right < r2.left then no collision
	
	ld a, e
	cp l
	jp c, no_collision		; if r1.bottom < r2.top then no collision
	
	ld a, ixl
	cp c
	jp c, no_collision		; if r2.bottom < r1.top then no collision
	
is_collision:
	ld a, 1
	ret
no_collision:
	ld a, 0
	ret

	
; Zero all pixel data bytes of a video buffer, and set all attribute 
; bytes to flash off, bright off, black paper, white ink
; Input:	
; 		A - attribute to apply to all attribute bytes
clear_vram_to_attribute:
	; first set attributes
	ld de, VISIBLE_ATTRIBUTES_MEMORY
	ld bc, VIDEO_ATTRIBUTES_SIZE
	ld (attributeByte), a					; A was passed in
	jp clear_vram_to_attribute_attributes_loop
attributeByte db 0						; "private" variable
clear_vram_to_attribute_attributes_loop:
	ld hl, attributeByte
	ldi
	jp pe, clear_vram_to_attribute_attributes_loop	; parity flag 
													; becomes 0 when BC=0
	
	; and then clear all pixel data
	ld de, VISIBLE_VIDEO_MEMORY
	ld bc, 3*VIDEO_SEGMENT_SIZE
	jp clear_vram_to_attribute_loop
zeroByte db 0							; "private" variable
clear_vram_to_attribute_loop:
	ld hl, zeroByte
	ldi
	jp pe, clear_vram_to_attribute_loop	; parity flag becomes 0 when BC=0

	ret
	
