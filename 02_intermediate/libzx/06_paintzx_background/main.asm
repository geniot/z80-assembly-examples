;------------------------------------------------------------------------------
; This file is part of the libzx examples suite
;                      by Sebastian Mihai, 2016, http://sebastianmihai.com
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; Example 2: demonstrate how to load and display a background saved by ZX Paint
;------------------------------------------------------------------------------
    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48
    ORG 33000
main: ;org 33000					; stay above ULA-contended memory
	jp start					; jump to the beginning of our program
	
	include "../libzx/libzx.asm"	; include the libzx library
    

stack ds 512				; reserve some bytes for our stack
endstack:					; mark end of our stack
	
background_definition:
		include "background_screen.asm"	; the background data is in this file

start:
	ld sp, endstack				; set up our new stack (we point to the end 
								; because the stack grows into lower addresses)
	call initialize_libzx		; initialize the libzx library
	
	; this is where the example begins
	
	ld hl, background_definition
	ld de, backgroundVideoBuffer
	call copy_buffer_to_buffer		; copy background definition to 
									; libzx's background buffer
	
	call copy_background_buffer_to_video_ram ; copy libzx's background buffer
											 ; to the video ram
infinite_loop:
	jp infinite_loop			; lock CPU

	
;end main	; this is needed so the Pasmo assembler generates an
			; "auto-running" BASIC header for us
			;
			; the only way on the ZX Spectrum to run a program automatically
			; after loading it (that is, without requiring the user to issue
			; a "RUN" command manually), is via a loader written in BASIC
			; which simply loads the main program block (written in assembler)
			; after which it jumps into its beginning


    SAVESNA "main.sna", main