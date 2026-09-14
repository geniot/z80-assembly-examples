;------------------------------------------------------------------------------
; This file is part of the libzx examples suite
;                      by Sebastian Mihai, 2016, http://sebastianmihai.com
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; Example 0: demonstrate text output and setting attributes
;------------------------------------------------------------------------------
    ORG 33000
    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48
main: 				; stay above ULA-contended memory
	jp start					; jump to the beginning of our program
	
	include "../libzx/libzx.asm"	; include the libzx library

stack ds 512				; reserve some bytes for our stack
endstack:					; mark end of our stack
	
helloWorldMessage db "HELLO,WORLD", 0	; the 0 indicates the end of string
	
start:
	ld sp, endstack				; set up our new stack (we point to the end 
								; because the stack grows into lower addresses)
	call initialize_libzx		; initialize the libzx library
	
	; this is where the example begins
	
	ld hl, helloWorldMessage	; HL := address of helloWorldMessage
	ld b, 10					; row
	ld c, 5						; column
	call text_print_at			; call routine
	
	ld b, 10						; row
	ld c, 5							; column
	ld d, FLASH_OFF | BRIGHT_ON | PAPER_RED | INK_YELLOW	; attributes
	ld e, 5							; set attributes for 5 characters
	call bitmaps_colours_set_many	; call routine
	
	ld b, 10						; row
	ld c, 11						; column
	ld d, FLASH_OFF | BRIGHT_ON | PAPER_CYAN | INK_MAGENTA	; attributes
	ld e, 5							; set attributes for 5 characters
	call bitmaps_colours_set_many	; call routine
	
	ld b, 10						; row
	ld c, 10						; column
	ld d, FLASH_ON | BRIGHT_OFF | PAPER_BLUE | INK_GREEN	; attributes
	call bitmaps_colours_set		; call routine
	
infinite_loop:
	jp infinite_loop				; lock CPU
	

;end main	; this is needed so the Pasmo assembler generates an
			; "auto-running" BASIC header for us
			;
			; the only way on the ZX Spectrum to run a program automatically
			; after loading it (that is, without requiring the user to issue
			; a "RUN" command manually), is via a loader written in BASIC
			; which simply loads the main program block (written in assembler)
			; after which it jumps into its beginning

    SAVESNA "main.sna", main