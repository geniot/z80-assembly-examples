;------------------------------------------------------------------------------
; This file is part of the ZX Spectrum libzx library by Sebastian Mihai, 2016
;------------------------------------------------------------------------------

; Draws an 8xA bitmap in "erase" mode - any set pixel in the input will erase
; the resulting pixel.
; Each resulting pixel's value is calculated as:
;          pixel = (NOT input) AND existing
; Input:	
; 		C - screen Y coordinate
;	  IXL - screen X coordinate
;      HL - pointer to 8 bytes sprite data
;       A - lines count
draw_bitmap_NOT_AND_blitted_background:
	push hl
	push bc
	push af
	ld a, (hl)
	ld ixh, a
	call draw_line_NOT_AND_blitted_background
	pop af
	pop bc
	pop hl

	inc hl	; next byte of data (a 8-pixel horizontal line)
	inc c	; next Y down
	
	dec a
	cp 0
	jp nz, draw_bitmap_NOT_AND_blitted_background
	
	ret


; Draw a horizontal line whose pixel data is specified.
; Blitting mode is NOT AND.
; 
; Input:	
; 		C - screen Y coordinate
;	  IXL - screen X coordinate
;     IXH - line data
draw_line_NOT_AND_blitted_background:
	; first thing we do is to obtain the address of the Y line
	; from our lookup table
	ld b, 0			; BC := C
	ld hl, video_memory_Y_lookup_background
	add hl, bc
	add hl, bc		; HL now points to video memory address for this line
	ld d, (hl)
	inc hl
	ld e, (hl)		; DE := word (HL)
	ex de, hl		; HL := video_memory_Y_lookup[C]
	; we now have address of the Y line in HL, and can from now on
	; offset based on the X coordinate
	
	; each 8-pixel line can straddle 2 8-pixel squares
	
	; calculate address of the left 8x8 square
	ld c, ixl
	srl c
	srl c
	srl c
	; B = 0 from above, at the Y-coordinate lookup, so BC = (X coord) div 8
	add hl, bc		; add x coordinate to HL to offset horizontally
	
	; now shift line data right in preparation to write to left 8x8 square
	ld a, ixl
	and 7			; A := how far into left square we will draw
	ld d, a			; D := how far into left square we will draw
					; this will be needed a bit later
	jp z, na_spans_only_one_square	; when x coordinate is a multiple of 8,
								; the 8-pixel line we're drawing
								; fits exactly inside a single square
	
	; line spans two squares, so we begin by writing to the left square
	ld c, ixh		; C := initial line data
na_shift_line_data_right_loop:
	srl c			; shift line data to the right as much as needed to
	dec a			; display in the left 8x8 square
	jp nz, na_shift_line_data_right_loop
	
	; C now contains the shifted pixel data that 
	; we'll now write to the left square
	ld a, c			; A := line data (input)
	xor %11111111	; A := NOT input
	and (hl)		; A := (NOT input) AND existing
	ld (hl), a		; put pixel data into left square
	
	ld c, ixh		; C := initial line data
	; now we have to shift left, in preparation to write to the right square
	ld a, 8
	sub d			; A := how far into right square we will draw
na_shift_line_data_left_loop:
	sla c
	dec a
	jp nz, na_shift_line_data_left_loop
	
	; C now contains the shifted pixel data that 
	; we'll now write to the right square
	inc hl			; move to next memory location (right square)
	
	ld a, c			; A := line data (input)
	xor %11111111	; A := NOT input
	and (hl)		; A := (NOT input) AND existing
	ld (hl), a		; put pixel data into right square
	ret
	
na_spans_only_one_square:
	ld a, ixh		; A := line data (input)
	xor %11111111	; A := NOT input
	and (hl)		; A := (NOT input) AND existing
	ld (hl), a		; put pixel data into square
	ret
