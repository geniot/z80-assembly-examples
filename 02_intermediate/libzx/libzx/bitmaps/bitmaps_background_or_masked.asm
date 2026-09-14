;------------------------------------------------------------------------------
; This file is part of the ZX Spectrum libzx library by Sebastian Mihai, 2016
;------------------------------------------------------------------------------

; Draws an 8xA image additively, using a blitting method of OR and masking.
; Each resulting pixel's value is calculated as:
;          pixel = input OR existing
; Input:	
; 		C - screen Y coordinate
;	  IXL - screen X coordinate
;      HL - pointer to 8 bytes sprite data
;       A - lines count
;      DE - pointer to 8 bytes mask data
draw_bitmap_OR_blitted_masked_background:
	push hl
	push bc
	push af
	push de
	ld a, (hl)
	ld ixh, a
	ld a, (de)
	call draw_line_OR_blitted_masked_background
	pop de
	pop af
	pop bc
	pop hl

	inc hl	; next byte of data (a 8-pixel horizontal line)
	inc de	; next byte of mask data (a 8-pixel horizontal line)
	inc c	; next Y down
	
	dec a
	cp 0
	jp nz, draw_bitmap_OR_blitted_masked_background
	
	ret
	
	
; Draw a horizontal line whose pixel data is specified.
; Blitting mode is OR, and a mask is applied first
; 
; Input:	
; 		C - screen Y coordinate
;	  IXL - screen X coordinate
;     IXH - line data
;       A - mask data
draw_line_OR_blitted_masked_background:
	push af

	; first thing we do is to obtain the address of the Y line
	; from our lookup table
	ld b, 0			; BC := C
	ld hl, video_memory_Y_lookup_background
	add hl, bc
	add hl, bc		; HL now points to video memory address for this line
	ld d, (hl)
	inc hl
	ld e, (hl)		; DE := word (HL)
	ex de, hl		; HL := video_memory_Y_lookup_background[C]
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
	jp z, spans_only_one_square_OR_masked_background	; when x coordinate is a multiple of 8,
								; the 8-pixel line we're drawing
								; fits exactly inside a single square
	
	; line spans two squares, so we begin by writing to the left square
	pop af			; A := mask data
	push af
	
	ld e, a			; E := mask data
	ld a, d			; A := how far into left square we will draw
	
	ld c, ixh		; C := initial line data
shift_line_data_right_loop_OR_masked_background:
	srl c			; shift line data to the right as much as needed to
	srl e			; shift mask data as well
	dec a			; display in the left 8x8 square
	jp nz, shift_line_data_right_loop_OR_masked_background
	
	; C now contains the shifted pixel data that 
	; we'll now write to the left square
	; and E contains the shifted mask
	ld a, e			; A := mask
	xor %11111111	; A := NOT mask
	and (hl)		; A := (NOT mask) AND existing
	or c			; A := ((NOT mask) AND existing) OR input
	ld (hl), a		; put pixel data into left square
	
	
	pop af
	ld e, a			; E := mask data
	
	ld c, ixh		; C := initial line data
	; now we have to shift left, in preparation to write to the right square
	ld a, 8
	sub d			; A := how far into right square we will draw
shift_line_data_left_loop_OR_masked_background:
	sla c			; shift line data
	sla e			; shift mask
	dec a
	jp nz, shift_line_data_left_loop_OR_masked_background
	
	; C now contains the shifted pixel data that 
	; we'll now write to the right square
	inc hl			; move to next memory location (right square)
	
	ld a, e			; A := mask
	xor %11111111	; A := NOT mask
	and (hl)		; A := (NOT mask) AND existing
	or c			; A := ((NOT mask) AND existing) OR input
	ld (hl), a		; put pixel data into left square
		
	ret
	
spans_only_one_square_OR_masked_background:
	pop af			; A := mask data
	
	xor %11111111	; A := NOT mask
	and (hl)		; A := (NOT mask) AND existing
	or ixh			; A := ((NOT mask) AND existing) OR input
	ld (hl), a		; put pixel data into left square
	
	ret
