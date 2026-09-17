;------------------------------------------------------------------------------
; This file is part of the ZX Spectrum libzx library by Sebastian Mihai, 2016
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
;
; Routines for printing to the screen
;
;------------------------------------------------------------------------------

; Prints a string at the specified location
;
; Input:
; 		B - row
;	    C - column
;      HL - pointer to 0-terminated string
text_print_at:
	push bc
	push hl
	ld a, 2					; channel 2 = "S" for screen
	call $1601				; open channel 
	pop hl
	pop bc
	
text_print_at_character:
	push bc
	push hl
	
	ld a, (hl)
	cp 0
	jp z, text_print_at_done	; if current character is 0, we're done
	
	ld a, 22				; stream the "AT"
	rst 16              
	ld a, b					; stream the row
	rst 16
	ld a, c					; stream the column
	rst 16
	ld a, (hl)				; finally, stream the character to print
	rst 16

	pop hl
	pop bc
	
	inc hl					; next character
	inc c					; next column

	ld a, c							;
	sub 32							;
	jp m, text_print_at_character	; if column<32 then print next character
	ld c, 0							; else bring position to beginning
	inc b							;   of next line
	
	jp text_print_at_character		; print next character
text_print_at_done:
	pop hl					; we have two of these on the stack still
	pop bc
	ret
