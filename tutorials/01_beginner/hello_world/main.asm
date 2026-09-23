    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    ;https://z00m128.github.io/sjasmplus/documentation.html#po_device
    DEVICE ZXSPECTRUM48,$ff50 ;RAMTOP
    INCLUDE "48rom.asm"
    ORG $8000


main:
  ; You want to write your message to the upper screen
  ; ld a,2;	      ; upper screen
  ; call $1601    ; open the channel
  ld bc, MY_STRING

PRINT_LOOP:
  ld a, (bc)
  cp 0
  jr z, END_PROGRAM
  rst $10 ; https://skoolkid.github.io/rom/asm/0010.html
  inc bc
  jr PRINT_LOOP

END_PROGRAM:
  ret

MY_STRING:
  defb "Hello, world!"
  defb 13, 0

    SAVESNA "main.sna", main