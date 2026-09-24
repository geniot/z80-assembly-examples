    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48
    ORG     $8000           ; Program load address
main:
       ei
       LD    A,6         ; Screen setup
       LD    (23693),A
       XOR   A
       CALL  8859
       CALL  3435
       LD    A,2
       CALL  5633
       LD    HL,TEXT     ; Text string address
MAIN1:
       LD    DE,PR_AT    ; Cursor positioning, black
       LD    BC,5        ; (matching the background) character color
       CALL  8252
       LD    A,(HL)      ; Read next character of the string
       AND   A
       JR    Z,MAIN3     ; If 0, finish output
       RST   16
       INC   HL
       PUSH  HL
; Scroll the string left eight times (based on character width in pixels)
       LD    B,8
MAIN2  PUSH  BC
       LD    A,21
       CALL  SCRLIN
       CALL  PAUSE       ; Delay for smoother
                         ; string movement
       POP   BC
       DJNZ  MAIN2
       POP   HL
       JR    MAIN1
; Scroll until the entire string disappears off the left edge of the screen (0 = 265 times)
MAIN3  LD    B,0
MAIN4  PUSH  BC
       LD    A,21
       CALL  SCRLIN
       CALL  PAUSE
       POP   BC
       DJNZ  MAIN4
       JP    main;RET
PAUSE  LD    BC,1
       JP    7997
SCRLIN CALL  3742        ; Get its address in HL
; Since the string is to run from left to right, we need to shift it earlier
; ...last bytes, so we determine the address of the end of the line
       LD    A,L
       OR    31
       LD    L,A
       LD    C,8         ;line height is 8 pixels
SCRL1  LD    B,32        ;line length is 32 bytes
       AND   A           ;clear CY flag
       PUSH  HL          ;save address
SCRL2  RL    (HL)        ;shift all bytes sequentially
       DEC   HL
       DJNZ  SCRL2
       POP   HL          ;restore address
       INC   H           ;move to the next row of pixels
       DEC   C           ;repeat
       JR    NZ,SCRL1
       RET
PR_AT  DEFB  22,21,31,16,0
TEXT   DEFM  "Examine yourself how you know the assembler!"
       DEFB  0

    SAVESNA "main.sna", main