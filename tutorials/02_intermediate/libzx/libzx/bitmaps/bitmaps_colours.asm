;------------------------------------------------------------------------------
; This file is part of the ZX Spectrum libzx library by Sebastian Mihai, 2016
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
;
; Constants needed to operate on colour attributes (ink and paper)
;
; Each 8x8 pixels square has a corresponding byte in the attributes area of 
; the video memory and the background buffer. Thus, for the whole 256x192 
; pixel screen, we will have 32x24 attribute bytes.
;
; Each attribute byte contains:
;       F B P P P I I I
; where:
;       F - flash
;       B - bright
;   P P P - paper colour
;   I I I - ink colour
;
;------------------------------------------------------------------------------
	
FLASH_ON equ %10000000
FLASH_OFF equ %00000000
BRIGHT_ON equ %01000000
BRIGHT_OFF equ %00000000
	
PAPER_BLACK equ %00000000
PAPER_BLUE equ %00001000
PAPER_RED equ %00010000
PAPER_MAGENTA equ %00011000
PAPER_GREEN equ %00100000
PAPER_CYAN equ %00101000
PAPER_YELLOW equ %00110000
PAPER_WHITE equ %00111000
	
INK_BLACK equ %00000000
INK_BLUE equ %00000001
INK_RED equ %00000010
INK_MAGENTA equ %00000011
INK_GREEN equ %00000100
INK_CYAN equ %00000101
INK_YELLOW equ %00000110
INK_WHITE equ %00000111
	

; Sets the attribute byte of a given location on the screen.
; Writes directly to video ram.
;
; Input:
; 		B - row
;	    C - column
;       D - attribute byte
bitmaps_colours_set:
	ld h, 0
	ld l, b
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl					; HL := row x 32
	
	ld b, 0						; BC := column
	add hl, bc					; HL := (row x 32) + column
	
	ld bc, VISIBLE_ATTRIBUTES_MEMORY
	add hl, bc					; offset HL into the attributes memory area
	
	ld (hl), d					; store attribute byte
	ret


; Sets contiguous attribute bytes starting at a specified screen location.
; Writes directly to video ram.
;
; Input:
; 		B - starting row
;	    C - starting column
;       D - attribute byte
;       E - count
bitmaps_colours_set_many:
	ld h, 0
	ld l, b
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl					; HL := row x 32
	
	ld b, 0						; BC := column
	add hl, bc					; HL := (row x 32) + column
	
	ld bc, VISIBLE_ATTRIBUTES_MEMORY
	add hl, bc					; offset HL into the attributes memory area

	ld b, e						; we'll use B as a counter
bitmaps_colours_set_many_loop:
	ld (hl), d					; store attribute byte
	inc hl
	djnz bitmaps_colours_set_many_loop ; if B != 0 loop again
	ret
