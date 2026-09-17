;------------------------------------------------------------------------------
; This file is part of the libzx examples suite
;                      by Sebastian Mihai, 2016, http://sebastianmihai.com
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; Example 1: demonstrate keyboard functionality
;------------------------------------------------------------------------------
    ORG 33000
    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48
main: 					; stay above ULA-contended memory
	jp start					; jump to the beginning of our program
	
	include "../libzx/libzx.asm"	; include the libzx library

stack ds 512				; reserve some bytes for our stack
endstack:					; mark end of our stack
	
pressZMsg db "HOLD DOWN THE Z KEY", 0
pressXMsg db "HOLD DOWN THE X KEY", 0
pressMMsg db "PRESS AND RELEASE THE M KEY", 0
ATTRIBUTES_GREEN equ FLASH_OFF | BRIGHT_ON | PAPER_GREEN | INK_BLACK
ATTRIBUTES_RED equ FLASH_OFF | BRIGHT_ON | PAPER_RED | INK_BLACK
	
zSquareState db ATTRIBUTES_RED
xSquareState db ATTRIBUTES_RED
mSquareState db ATTRIBUTES_RED
	
start:
	ld sp, endstack				; set up our new stack (we point to the end 
								; because the stack grows into lower addresses)
	call initialize_libzx		; initialize the libzx library

	; this is where the example begins
	
	ld hl, pressZMsg			; HL := address of pressZMsg
	ld b, 8						; row
	ld c, 3						; column
	call text_print_at			; call routine
	
	ld hl, pressXMsg			; HL := address of pressZMsg
	ld b, 12					; row
	ld c, 3						; column
	call text_print_at			; call routine
	
	ld hl, pressMMsg			; HL := address of pressZMsg
	ld b, 16					; row
	ld c, 3						; column
	call text_print_at			; call routine
    ei

main_loop:
	halt						; synchronize with video interrupt
	call keyboard_read_keys		; record the state of all keys

	call check_Z_key			; check the status of all keys,
	call check_X_key			; settings the states of the squares
	call check_M_key			; appropriately
	
	call display_Z_key_square	; display each of the squares
	call display_X_key_square
	call display_M_key_square

loop_again:
	jp main_loop					; next video frame
	

; Checks the Z key, and sets state of corresponding square appropriately
;
check_Z_key:
	; check whether Z key is being pressed right now
	ld a, (keys_v_c_x_z_cs)		; A := keys status
	and KEY_Z
	jp z, z_key_is_pressed		; if Z is pressed, turn square green
	ld hl, zSquareState			; else turn it red
	ld (hl), ATTRIBUTES_RED
	ret
z_key_is_pressed:
	ld hl, zSquareState
	ld (hl), ATTRIBUTES_GREEN
	ret


; Checks the X key, and sets state of corresponding square appropriately
;
check_X_key:
	; check whether X key is being pressed right now
	ld a, (keys_v_c_x_z_cs)		; A := keys status
	and KEY_X
	jp z, x_key_is_pressed		; if X is pressed, turn square green
	ld hl, xSquareState			; else turn it red
	ld (hl), ATTRIBUTES_RED
	ret
x_key_is_pressed:
	ld hl, xSquareState
	ld (hl), ATTRIBUTES_GREEN
	ret


; Checks the M key, and sets state of corresponding square appropriately
;
check_M_key:
	; check whether M key has just become pressed
	ld b, KEY_M
	call check_just_pressed_keys_b_n_m_ss_sp ; check if M was just pressed
	cp 0
	jp nz, m_key_is_pressed		; if M was not just pressed, then do nothing
	ret
m_key_is_pressed:				; else toggle the square between red and green
	ld a, (mSquareState)
	cp ATTRIBUTES_GREEN
	jp z, m_key_make_it_red		; if it's green, make it red
	
	ld hl, mSquareState			; else make it green
	ld (hl), ATTRIBUTES_GREEN
	ret
m_key_make_it_red:
	ld hl, mSquareState
	ld (hl), ATTRIBUTES_RED
	ret	
	

; Sets the attributes on the Z square, according to its state
;
display_Z_key_square:
	ld a, (zSquareState)
	ld d, a						; D := attributes of square
	ld b, 8						; row
	ld c, 1						; column
	call bitmaps_colours_set	; call routine
	ret


; Sets the attributes on the X square, according to its state
;	
display_X_key_square:
	ld a, (xSquareState)
	ld d, a							; D := attributes of square
	ld b, 12						; row
	ld c, 1							; column
	call bitmaps_colours_set		; call routine
	ret
	

; Sets the attributes on the M square, according to its state
;
display_M_key_square:
	ld a, (mSquareState)
	ld d, a							; D := attributes of square
	ld b, 16						; row
	ld c, 1							; column
	call bitmaps_colours_set		; call routine
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