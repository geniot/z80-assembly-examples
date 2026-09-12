    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48
    ORG $8000


main:
  ld bc, MY_STRING

PRINT_LOOP:
  ld a, (bc)
  cp 0
  jr z, END_PROGRAM
  rst $10
  inc bc
  jr PRINT_LOOP

END_PROGRAM:
  ret

MY_STRING:
  defb "Hello, world!"
  defb 13, 0

    SAVESNA "main.sna", main