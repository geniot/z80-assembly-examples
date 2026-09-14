;------------------------------------------------------------------------------
; This file is part of the ZX Spectrum libzx library by Sebastian Mihai, 2016
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; These routines operate directly on the video ram.
; They are meant to draw foreground items, such as sprites.
; They are called right after the background buffer is fast-copied to the
; video ram.
;------------------------------------------------------------------------------
	
; Meant to be called before any sprite functionality is used, 
; it initializes sprite routines, including:
;     - pre-computing video memory addresses for each horizontal line
;
initialize_bitmaps_vram:
	; pre-compute video memory addresses for each of the 192 horizontal
	; display lines
	; each stored address is of the first byte of each line (which represents
	; the left-most 8x8 pixel square of each line)
	
	ld b, 0				; we zero out B because C is enough for 192 lines
	ld c, 0				; this will be our counter, going from 0 to 191
	
compute_video_memory_Y_loop_vram:
	push bc
	
	ld l, c
	call get_video_Y_vram	; get address of line in L (returned in HL)
	
	ld d, h
	ld e, l				; DE := address of first square on B horizontal line
	
	pop bc				; get_video_Y destroys B and C, so restore them
	ld hl, video_memory_Y_lookup_vram
	add hl, bc
	add hl, bc			; HL := video_memory_Y_lookup_vram + 2*(current Y)
	
	ld (hl), d
	inc hl
	ld (hl), e			; (HL) := word DE
						
	inc c
	ld a, c
	cp 192
	jp nz, compute_video_memory_Y_loop_vram	; if C != 192, compute video memory
										; for next horizontal line down
	ret	
	
		
; Given a screen Y coordinate, calculate the video memory address
; which represents the first pixel on that line.
; 
; Input:	
; 		L - screen Y coordinate
; Output:
; 		HL - video memory address of beginning of Y line
get_video_Y_vram:
	; where y is the screen coordinate in each sector
	;
	; since the 192 pixel tall screen is divided into 3 sectors,
	; then each sector is 64 pixels tall
	;
	; MEMORY Y = (beginning of screen sector) + ( y/8 + 8*(y%8) )*32
	;          = (beginning of screen sector) + ( y>>3 + 8*(y AND 7) )*32
	;          = (beginning of screen sector) + ( y>>3 + (y AND 7)<<3 )*32
	;          = (beginning of screen sector) + ( y>>3 + (y AND 7)<<3 )<<5
	ld e, l			; E := overall screen y (we'll need this later)
	
	ld h, 0			; y coordinates are between 0 and 191, so 
					; they don't need register H
	
	ld a, l
	and 63			; A := y (in sector, since sectors are 64 pixels tall)
	ld l, a			; L := y (in sector, since sectors are 64 pixels tall)
	
	and 7			; A := y AND 7
	sla a
	sla a
	sla a			; A := (y AND 7)<<3
	
	srl l
	srl l
	srl l			; HL := y>>3
	
	ld b, 0
	ld c, a			; BC := (y AND 7)<<3
	add hl, bc		; HL := y>>3 + (y AND 7)<<3
	
	add hl, hl		; shift left one
	add hl, hl		; shift left one
	add hl, hl		; shift left one
	add hl, hl		; shift left one
	add hl, hl		; HL := ( y>>3 + (y AND 7)<<3 )<<5
	
	ld bc, VISIBLE_VIDEO_MEMORY
	add hl, bc		; HL := VRAM BASE + ( y>>3 + (y AND 7)<<3 )<<5
	
	; now, depending on where the initial screen y value puts us
	; (which of the three vertical screen segments),
	; offset the memory y location we're returning
	;
	; since there are three segments, we can offset at most by two
	
	ld bc, VIDEO_SEGMENT_SIZE ; we'll offset each time by this much
	
	ld a, e					; A := screen y
	sub VIDEO_SEGMENT_LINES	; A := A - lines per segment
	jp M, get_video_Y_vram_done	; no left over lines
	add hl, bc				; offset by one screen segment
	sub VIDEO_SEGMENT_LINES ; A := A - lines per segment
	jp M, get_video_Y_vram_done	; no left over lines
	add hl, bc				; offset by a second screen segment
	
get_video_Y_vram_done:
	ret
