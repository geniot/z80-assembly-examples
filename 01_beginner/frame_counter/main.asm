        SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
        DEVICE ZXSPECTRUM48         ; Device setting for sjasmplus (.tap writing etc)
SCREEN  EQU $4000                   ; Location of screen
COLOR   EQU $5800                   ; Location of color array

        ORG $8000                   ; Let's start our code at 32k
main:
        di                          ; Disable interrupts
        ld  sp,     0x8000          ; Set stack to grow down from our code
        ld  de,     0xfe00          ; im2 vector table start right after color table
        ld  hl,     0xfdfd          ; where interrupt will point at
        ld  a,      d 
        ld  i,      a               ; interrupt will hop to 0xfe?? where ?? is random 
        ld  a,      l               ; we need 257 copies of the address
rep_isr_setup:
        ld  (de),   a 
        inc e
        jr  nz,     rep_isr_setup
        inc d                       ; just one more
        ld  (de),   a
        ld de,      isr
        ld  (hl),   0xc3            ; 0xc3 = JP
        inc hl
        ld  (hl),   e
        inc hl
        ld  (hl),   d
        im  2                       ; set the interrupt mode
        ei                          ; Enable interrupt

mainloop:
        ld  hl, SCREEN
        ld  a, (framecounter)
        ld  (hl), a
        
        jp mainloop


isr:                    ; This will be called ~50Hz
        push bc
        ld   bc, (framecounter)
        inc  bc
        ld   (framecounter), bc
        pop bc
        ei
        reti            ; Return from interrupt

framecounter:
        db 0,0


    SAVESNA "main.sna", main