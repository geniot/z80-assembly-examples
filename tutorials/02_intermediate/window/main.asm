    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    ;https://z00m128.github.io/sjasmplus/documentation.html#po_device
    DEVICE ZXSPECTRUM48,$ff50 ;RAMTOP
    INCLUDE "48rom.asm"
    ORG $8000
main:
       ei
       CALL  SETSCR

; Output window sequence
       LD    HL,COORD    ;address of window parameter data block
PW1    LD    A,(HL)      ;sequentially read parameters
       CP    -1          ;check for end of data block
       JR    Z,PW2       ;if reached, proceed to the second stage
       INC   HL
       LD    (COL),A
       LD    A,(HL)
       INC   HL
       LD    (ROW),A
       LD    A,(HL)
       INC   HL
       LD    (LEN),A
       LD    A,(HL)
       INC   HL
       LD    (HGT),A
       LD    A,(HL)      ;last parameter - window color
       INC   HL
       RLCA              ;shift to PAPER attribute position
       RLCA
       RLCA
       OR    7           ;add INK color 7
       LD    (ATTR),A
       PUSH  HL
       PUSH  BC
       XOR   A
       OUT   (254),A     ;produce a "click"
       LD    BC,5
       CALL  7997        ;PAUSE 5
       LD    A,16
       OUT   (254),A
       CALL  CLSV        ;display window
       CALL  SETV
       POP   BC
       POP   HL
       JR    PW1         ;jump to the next window
PW2    LD    A,6
       LD    (23695),A   ;set temporary attributes
       LD    BC,#8780    ;B = 135, C = 128
       LD    HL,#3848    ;H = 56, L = 72
       CALL  BOX_0       ;rectangle around the last window
       ; "Scrolling text" in the last window
       LD    HL,TEXT     ;address of the "scrolling text"
PW3    LD    A,22        ;AT 8,24
       RST   16
       LD    A,8
       RST   16
       LD    A,24
       RST   16
       LD    A,16        ;INK 0
       RST   16
       XOR   A
       RST   16
       LD    A,(HL)      ;read the next character
       AND   A           ;reached the end? 
       JP    Z,main;RET   Z           ;if so, terminate the program
       RST   16          ;display the read character on screen
       INC   HL
       LD    B,8         ;shift the line 8 pixels to the left
PW4    PUSH  BC
       PUSH  HL
       CALL  SCROL       ;scroll the line 1 pixel to the left
       LD    BC,1
       CALL  7997        ;PAUSE 1
       POP   HL
       POP   BC
       DJNZ  PW4
       JR    PW3         ;proceed to output the next character
SCROL  LD    HL,18448+8  ; pre-calculated screen address
; of the end of the "scrolling line"
       LD    C,8
SCROL1 LD    B,8
       AND   A
       PUSH  HL
SCROL2 RL    (HL)
       DEC   HL
       DJNZ  SCROL2
       POP   HL
       INC   H
       DEC   C
       JR    NZ,SCROL1
       RET
SETSCR LD    A,5
       LD    (23693),A
       LD    A,0
       CALL  8859
       CALL  3435
       LD    A,2
       CALL  5633
       RET
SETV   LD    DE,#5800    ;start address of screen attribute area
       LD    BC,(LEN)    ;C = LEN, B = HGT
       LD    A,(ROW)
       LD    L,A         ;calculate address of window's top-left corner
       LD    H,0         ; within the screen attribute area
       ADD   HL,HL       ;multiply by 32 (2 to the power of 5)
       ADD   HL,HL
       ADD   HL,HL
       ADD   HL,HL
       ADD   HL,HL
       ADD   HL,DE       ;add the resulting offset
       ; to the start of the attribute area
       LD    A,(COL)     ;add the window's horizontal offset
       ADD   A,L
       LD    L,A
       LD    A,(ATTR)    ;attribute byte in the accumulator
SETV1  PUSH  BC
       PUSH  HL
SETV2  LD    (HL),A      ;store in video buffer
       INC   HL
       DEC   C           ;to the right edge of the window
       JR    NZ,SETV2
       POP   HL
       POP   BC
       LD    DE,32       ;move to the next line
       ADD   HL,DE       ; (line length is 32 character positions)
       DJNZ  SETV1       ;repeat until the bottom
                         ; edge of the window is reached
       RET
CLSV   LD    BC,(LEN)    ;read two variables at once:
                         ; C = LEN, B = HGT
       LD    A,(ROW)
CLSV1  PUSH  AF
       PUSH  BC
       CALL  3742        ;address of the start of the screen line
       LD    A,(COL)     ;add the offset
       ADD   A,L         ; COL horizontally
       LD    L,A
       LD    B,8         ;8 pixel rows per line
CLSV2  PUSH  HL
       LD    E,C         ;loop counter in E, equal to window widt
       XOR   A           ;accumulator = 0
CLSV3  LD    (HL),A      ;clear the current video buffer byte
       INC   HL          ;move to the next one
       DEC   E           ;until the right edge of the window is reached
       JR    NZ,CLSV3
       POP   HL
       INC   H           ;move to the next row of pixels
       DJNZ  CLSV2
       POP   BC
       POP   AF
       INC   A          ;move to the next screen line
       DJNZ  CLSV1       ;repeat until the bottom edge
                         ; of the window is reached
       RET
BOX_0  PUSH  HL
       CALL  8933        ;PLOT - top-left corner
       POP   BC
       PUSH  BC
       LD    DE,#101     ;top line
       LD    B,0
       CALL  9402        ;DRAW
       POP   BC
       PUSH  BC
       LD    D,-1        ;right line
       LD    C,0
       CALL  9402
       POP   BC
       PUSH  BC
       LD    E,-1        ;bottom line
       LD    B,0
       CALL  9402
       POP   BC
       LD    DE,#101    ;left line
       LD    C,0
       CALL  9402
       LD    HL,10072
       EXX
       RET

COL    DEFB  0
ROW    DEFB  0
LEN    DEFB  0
HGT    DEFB  0
ATTR   DEFB  0
; Data for all windows. Parameters are listed in the following order:
; COL, ROW, LEN, HGT, and the last number is the window color code (PAPER)
COORD  DEFB  27,11,4,4,7
       DEFB  26,12,4,4,4
       DEFB  24,13,4,4,1
       DEFB  23,15,4,4,2
       DEFB  21,17,5,3,3
       DEFB  19,18,5,3,5
       DEFB  17,20,4,2,6
       DEFB  14,21,4,2,2
       DEFB  12,19,3,3,7
       DEFB  10,18,3,3,1
       DEFB  9,17,3,3,4
       DEFB  7,15,4,4,3
       DEFB  5,13,4,4,2
       DEFB  4,12,4,4,5
       DEFB  3,11,4,4,6
       DEFB  1,8,5,5,1
       DEFB  2,5,5,5,7
       DEFB  3,4,5,5,2
       DEFB  4,3,5,5,5
       DEFB  6,2,5,5,3
       DEFB  8,1,8,5,4
       DEFB  11,0,6,5,6
       DEFB  13,1,6,6,1
       DEFB  15,3,7,6,3
       DEFB  16,5,9,7,6
; "Painting over" the last window
       DEFB  20,8,1,1,0
       DEFB  19,7,3,3,0
       DEFB  18,6,5,5,0
       DEFB  17,6,7,5,0
       DEFB  16,5,9,7,0
       DEFB  255
;-------------------
TEXT   DEFM  " Sinclair Research Ltd. 1982 "
       DEFM  " Program W I N D O W "
       DEFM  " * Saint-Petersburg 1994 * "
       DEFB  0
    SAVESNA "main.sna", main