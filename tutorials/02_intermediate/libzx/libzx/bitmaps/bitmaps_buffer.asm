;------------------------------------------------------------------------------
; This file is part of the ZX Spectrum libzx library by Sebastian Mihai, 2016
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
;
; Routines for buffer-to-buffer routines
;
;------------------------------------------------------------------------------
	
; Copies an 8xA rectangle from the background buffer to the video ram
; Its main purpose is to display what was "behind" a moving sprite, before
; the sprite is drawn in its new position.
;
; Input:	
; 		C - screen Y coordinate
;	  IXL - screen X coordinate
;       A - lines count
copy_buffer_rectangle_to_vram:
	push bc
	push af
	call copy_line_to_vram
	pop af
	pop bc
	
	inc c	; next Y down
	
	dec a
	cp 0
	jp nz, copy_buffer_rectangle_to_vram
	
	ret


; Copy an 8-pixel horizontal line from the background buffer to the video ram
; 
; Input:	
; 		C - screen Y coordinate
;	  IXL - screen X coordinate
copy_line_to_vram:
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
	ld b, 0			; BC := C div 8
	add hl, bc		; add x coordinate to HL to offset horizontally
	
	; now shift line data right in preparation to write to left 8x8 square
	ld a, ixl
	and 7			; A := how far into left square we will draw
	ld d, a			; D := how far into left square we will draw
					; this will be needed a bit later
	jp z, copy_line_to_vram__spans_only_one_square	; when x coordinate is a multiple of 8,
								; the 8-pixel line we're drawing
								; fits exactly inside a single square

	; HL now points to the byte in the background buffer that we need to copy
	push hl
	ld a, (hl)	; A := byte to copy
	ld bc, BUFFER_TO_SCREEN_OFFSET
	add hl, bc		; translate to visible video memory
	ld (hl), a
	pop hl
	
	; we'll now write to the right square
	inc hl			; move to next memory location (right square)
	
	ld a, (hl)	; A := byte to copy
	ld bc, BUFFER_TO_SCREEN_OFFSET
	add hl, bc		; translate to visible video memory
	ld (hl), a
	
	ret
	
copy_line_to_vram__spans_only_one_square:
	ld a, (hl)	; A := byte to copy
	ld bc, BUFFER_TO_SCREEN_OFFSET
	add hl, bc		; translate to visible video memory
	ld (hl), a
	
	ret
	
	
; Fast-copy background buffer to the video ram (6912 bytes)
; FALLS THROUGH TO THE GENERIC ROUTINE BELOW
copy_background_buffer_to_video_ram:
	ld hl, backgroundVideoBuffer
	ld de, VISIBLE_VIDEO_MEMORY
	
; Fast-copy a 6912 bytes-long buffer to another buffer
; 
; Input:	
; 		HL - source address
;       DE - destination address
copy_buffer_to_buffer:
	ld bc, VIDEO_TOTAL_SIZE
copy_buffer_to_buffer_loop:
	ldi				; 64 ldi calls to reduce number of counter compares
	ldi				; needed, as opposed to what ldir would do
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	
	jp pe, copy_buffer_to_buffer_loop	; parity flag becomes 0 when BC=0
	
	ret
