    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM128

  ORG $5800

; ATTR
  DEFB $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
  DEFB $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
  DEFB $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
  DEFB $0B,$0B,$2B,$0B,$0B,$0B,$0B,$0B
  DEFB $18,$18,$18,$18,$18,$18,$18,$18
  DEFB $18,$18,$18,$18,$18,$1F,$1F,$1F
  DEFB $1F,$1F,$1F,$1F,$1F,$18,$18,$18
  DEFB $18,$1F,$1F,$1F,$1F,$1F,$1F,$1F
  DEFB $18,$18,$18,$18,$18,$18,$18,$18
  DEFB $18,$18,$18,$18,$1F,$1F,$1F,$1F
  DEFB $1F,$1F,$1F,$1F,$18,$18,$60,$18
  DEFB $58,$18,$18,$1F,$1F,$1F,$1F,$1F
  DEFB $18,$18,$18,$18,$18,$18,$18,$18
  DEFB $18,$18,$18,$18,$18,$18,$18,$18
  DEFB $18,$18,$18,$18,$18,$78,$78,$18
  DEFB $78,$18,$18,$18,$18,$18,$18,$18
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10
ATTR_Message:
  DEFB $10,$10,$10,$10,$10,$10,$10,$10 ; Message area
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$02,$02,$02,$02,$02,$02,$02
  DEFB $02,$02,$02,$02,$02,$02,$02,$02
  DEFB $02,$02,$10,$10,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$04,$04,$04,$04,$02,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$10,$10,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$10,$10,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$10,$10,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$00,$10,$10,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10,$10,$10
  DEFB $10,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$02,$02,$02,$02,$02,$02
  DEFB $02,$02,$02,$02,$02,$02,$02,$02
  DEFB $02,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$02
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04
ATTR_5a81:
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$07
  DEFB $07,$07,$07,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$07
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $07,$07
ATTR_AreaName1:
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $07,$07,$07,$07,$07
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $07,$07,$07
ATTR_AreaName2:
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $07,$07,$07,$07,$07

; Spare memory for creating temprory data / bitmaps.
ScratchPad:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00
ScratchPad_DoorBottom:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00 ; Bottom of door when copied to
                                       ; scatchpad.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00
Bitmap_temp:
  DEFB $00,$00,$00,$00,$00,$00 ; Temporary memory for creating an 8x8 bitmap.
_5be6_PathEW:
  DEFW $0000              ; Points to the roads on the E/W map
_5be8_PathNS:
  DEFW $0000              ; Points to the roads on the N/S map
Temp_PathPtr:
  DEFW $0000
Temp_DistanceA:
  DEFW $0000
Temp_DistanceB:
  DEFW $0000
  DEFW $0000
  DEFW $0000
  DEFW $0000
People_TempCoordNS:
  DEFW $0000              ; Temporary N/S coord.
People_TempCoordEW:
  DEFW $0000              ; Temporary E/W coord.
Temp_DirCompass:
  DEFB $00                ; Temporary camera compass for person's direction.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00
GameTime_mins:
  DEFB $00                ; $FF minutes in an hour.
GameTime_hours:
  DEFB $00                ; $40 hours a day. ($20 daytime, $20 nighttime).
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Temporary store which gets used for copy blocks.
TempStore:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$0A,$65,$00,$E7,$30,$0E
  DEFB $00,$00,$00,$00,$00,$3A,$DA,$30
  DEFB $0E,$00,$00,$00,$00,$00,$3A,$D9
  DEFB $30,$0E,$00,$00,$00,$00,$00,$3A
  DEFB $FD,$32,$36,$38,$38,$37,$0E,$00
  DEFB $00,$07,$69,$00,$3A,$EF,$22,$22
  DEFB $AA,$3A,$DA,$33,$0E,$00,$00,$03
  DEFB $00,$00,$3A,$D9,$33,$0E,$00,$00
  DEFB $03,$00,$00,$3A,$F5,$AC,$30,$0E
  DEFB $00,$00,$00,$00,$00,$2C,$30,$0E
  DEFB $00,$00,$00,$00,$00,$3B,$3A,$EF
  DEFB $22,$22,$AF,$3A,$F9,$C0,$32,$36
  DEFB $38,$38,$38,$0E,$00,$00,$08,$69
  DEFB $00,$0D,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00

; Data block at 5E23
Stack:
  DEFB $00

; Offscreen Attribute table.
Offscreen_Attr:
  DEFB $00
Offscreen_Attr2:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00
Bg_ItemIndex:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00 ; Index to background items relative to
                                       ; whats on the screen.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
Bg_ItemIndexHero:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00 ; Index to item that is directly behind
                                       ; hero.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00

; Offscreen
Offscreen_Bitmap:
  DEFB $00                ; First column of offscreen.
Offscreen_TopLine:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
Offscreen_Second:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
Offscreen_Third:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00
; ??Bytes blitted to ATTR(5B00...)??
_60db:
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
; ??Bytes blitted to ATTR(5B00...)??
  DEFB $00,$00,$00,$00    ; Four bytes to Attr, $1E bytes skipped.
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Rooms Room structures.
;
; Details of each room, including outside.
Outside_DataCopy:
  DEFB $00,$00,$00,$00,$00 ; Blocks of 8

; Routine at 6908
main:
  JP Init                 ; This bit of code gets over written and is used as
                          ; data.

; Data block at 690B
Room_outside_pathEW:
  DEFW Path_Data_EW
Room_outside_pathNS:
  DEFW Path_Data_NS
  DEFB $00,$F9,$89,$28
; Seller
  DEFW _b1be_path
  DEFW _b1fa_path
  DEFB $01,$04,$8A,$30
; Broker
  DEFW _b1be_path
  DEFW _b1fa_path
  DEFB $02,$F9,$89,$30
; Deposit
  DEFW _b1be_path
  DEFW _b21c_path
  DEFB $03,$2E,$8A,$30
; Castle Inner Room
  DEFW _b1be_path
  DEFW _b234_path
  DEFB $04,$9A,$8A,$30
; Gambling Room
  DEFW _b1be_path
  DEFW _b260_path
  DEFB $05,$F9,$89,$30
; Temple
  DEFW _b1be_path
  DEFW _b278_path
  DEFB $06,$F9,$89,$30
; Gallery
  DEFW _b1be_path
  DEFW _b290_path
  DEFB $07,$F9,$89,$30
; Castle / Rats hole / Ladyos etc.
  DEFW _b1be_path
  DEFW _b2a8_path
  DEFB $08,$F9,$89,$30
; Bank
  DEFW _b1be_path
  DEFW _b2c0_path
  DEFB $09,$F9,$89,$30
; Portal
  DEFW _b1be_path
  DEFW _b2a8_path
  DEFB $0A,$C4,$8A,$30
; Strong Room
  DEFW _b1be_path
  DEFW _b21c_path
  DEFB $0B,$F1,$8A,$30

; Areas  Data holding area positions and names.
Area_Data:
  DEFW $0208              ; Bounding box of area [NS1, EW1, NS2, EW2]
  DEFW $0528
  DEFW $0460
  DEFW $0AA0
  DEFB $07,$42,$01,$01    ; ["the", "castle",  " ",  " "] See Dictionary ,
                          ; Dict_Groups and Area_Check
  DEFW $02F8
  DEFW $0208
  DEFW $04C4
  DEFW $0370
  DEFB $0A,$55,$01,$01    ; "old quarter"
  DEFW $0460
  DEFW $04B0
  DEFW $0690
  DEFW $0640
  DEFB $70,$01,$45,$2B    ; "greymarket mercer heath"
  DEFW $0460
  DEFW $0640
  DEFW $0690
  DEFW $0820
  DEFB $70,$01,$5A,$10    ; "greymarket thieves hill"
  DEFW $04C4
  DEFW $02A8
  DEFW $0690
  DEFW $04B0
Area_DataArgot:
  DEFB $33,$01,$01,$01    ; "argot"
  DEFW $0690
  DEFW $02A8
  DEFW $07F8
  DEFW $05DC
  DEFB $44,$01,$01,$01    ; "Iomain"
  DEFW $067C
  DEFW $05DC
  DEFW $07F8
  DEFW $0820
  DEFB $32,$03,$01,$01    ; "ratha de"
  DEFW $07F8
  DEFW $0438
  DEFW $0960
  DEFW $0820
  DEFB $07,$21,$01,$01    ; "the soke"
  DEFW $0000
  DEFW $0000
  DEFW $FFFF
  DEFW $FFFF
  DEFB $01,$01,$01,$01    ; ""

; Dictionary  Table of start addresses for each different word lengths. Groups
; words into their sizes.
Dict_Groups:
  DEFB $01                ; Index off set of word group.
  DEFW Dictionary         ; Start address of group.
; Groups words into their sizes.
  DEFB $02                ; Index off set of word group.
  DEFW Dictionary_2w      ; Start address of group.
; Groups words into their sizes.
  DEFB $05                ; Index off set of word group.
  DEFW Dictionary_3w      ; Start address of group.
; Groups words into their sizes.
  DEFB $0F                ; Index off set of word group.
  DEFW Dictionary_4w      ; Start address of group.
; Groups words into their sizes.
  DEFB $28                ; Index off set of word group.
  DEFW Dictionary_5w      ; Start address of group.
; Groups words into their sizes.
  DEFB $3C                ; Index off set of word group.
  DEFW Dictionary_6w      ; Start address of group.
; Groups words into their sizes.
  DEFB $55                ; Index off set of word group.
  DEFW Dictionary_7w      ; Start address of group.
; Groups words into their sizes.
  DEFB $5F                ; Index off set of word group.
  DEFW Dictionary_8w      ; Start address of group.
; Groups words into their sizes.
  DEFB $68                ; Index off set of word group.
  DEFW Dictionary_w9      ; Start address of group.
; Groups words into their sizes.
  DEFB $6E                ; Index off set of word group.
  DEFW Dictionary_10w     ; Start address of group.
  DEFB $FF

; Dictionary  Of names and places.
Dictionary:
  DEFM " "                ; [1]
Dictionary_2w:
  DEFM "st"
  DEFM "de"
Dictionary_3w:
  DEFM "row"
  DEFM "way"
  DEFM "the"
  DEFM "oak"
  DEFM "new"
  DEFM "old"
Dictionary_4w:
  DEFM "road"
  DEFM "hill"
  DEFM "lane"
  DEFM "gate"
  DEFM "wall"
  DEFM "bank"
  DEFM "hail"
  DEFM "long"
  DEFM "park"
  DEFM "mead"
  DEFM "high"
  DEFM "leaf"
  DEFM "myre"
  DEFM "king"
  DEFM "west"
  DEFM "east"
  DEFM "claw"
  DEFM "mabs"
  DEFM "soke"
  DEFM "dice"
  DEFM "bird"
  DEFM "moss"
  DEFM "danu"
  DEFM "walk"
  DEFM "star"
Dictionary_5w:
  DEFM "ludum"
  DEFM "guild"
  DEFM "calls"
  DEFM "heath"
  DEFM "herne"
  DEFM "marsh"
  DEFM "south"
  DEFM "north"
  DEFM "cross"
  DEFM "stone"
  DEFM "ratha"
  DEFM "argot"
  DEFM "downs"
  DEFM "baker"
  DEFM "amber"
  DEFM "midir"
  DEFM "aurum"
  DEFM "cloth"
  DEFM "grape"
  DEFM "spice"
Dictionary_6w:
  DEFM "square"
  DEFM "broker"
  DEFM "draper"
  DEFM "cinder"
  DEFM "market"
  DEFM "parade"
  DEFM "castle"
  DEFM "silver"
  DEFM "iomain"
  DEFM "mercer"
  DEFM "salter"
  DEFM "magick"
  DEFM "portal"
  DEFM "ladyqs"
  DEFM "cooper"
  DEFM "grocer"
  DEFM "barber"
  DEFM "farmer"
  DEFM "herald"
Dictionary_7w:
  DEFM "quarter"
  DEFM "skinner"
  DEFM "belinus"
  DEFM "parthol"
  DEFM "vintner"
  DEFM "thieves"
  DEFM "herbist"
  DEFM "gallery"
  DEFM "assayer"
  DEFM "remnant"
Dictionary_w:
  DEFB $5E
Dictionary_8w:
  DEFM "cobblers"
  DEFM "fletcher"
  DEFM "armourer"
  DEFM "minstre"

; Data block at 6BAD
_6bad:
  DEFB $6C

; Paths  Data for paths running east / west.
;
; Data for paths.
Path_Data_EW:
  DEFW $02BC              ; Coordinate of path on E/W [X] Axis.
  DEFW $0538              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $06D0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6dfe         ; Background description for east side.
  DEFW Bg_Str7014         ; Background description for west side.
  DEFB $19,$12            ; String of indicies, representing words used to
                          ; describe name.
; North Gate.
  DEFW $03AC              ; Coordinate of path on E/W [X] Axis.
  DEFW $0218              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0360              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6e0d         ; Background description for east side.
  DEFW Bg_Str7028         ; Background description for west side.
  DEFB $2F,$13            ; String of indicies, representing words used to
                          ; describe name.
; Park Row.
  DEFW $03FC              ; Coordinate of path on E/W [X] Axis.
  DEFW $0218              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0360              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6e1b         ; Background description for east side.
  DEFW Bg_str7040         ; Background description for west side.
  DEFB $17,$05            ; String of indicies, representing words used to
                          ; describe name.
; Castle Walk
  DEFW $044C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0538              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $06D0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6e32         ; Background description for east side.
  DEFW Bg_Str7058         ; Background description for west side.
  DEFB $42,$26            ; String of indicies, representing words used to
                          ; describe name.
; Leaf Lane.
  DEFW $049C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0218              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0360              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6e3f         ; Background description for east side.
  DEFW Bg_Str706d         ; Background description for west side.
  DEFB $1A,$11            ; String of indicies, representing words used to
                          ; describe name.
; The Parade.
  DEFW $049C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0538              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0810              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6e52         ; Background description for east side.
  DEFW Bg_Str7080         ; Background description for west side.
  DEFB $07,$41            ; String of indicies, representing words used to
                          ; describe name.
; High St.
  DEFW $04EC              ; Coordinate of path on E/W [X] Axis.
  DEFW $02B8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0540              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6e73         ; Background description for east side.
  DEFW Bg_Str70a1         ; Background description for west side.
  DEFB $19,$02            ; String of indicies, representing words used to
                          ; describe name.
; Long Lane.
  DEFW $053C              ; Coordinate of path on E/W [X] Axis.
  DEFW $02B8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0810              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6e86         ; Background description for east side.
  DEFW Bg_Str70bb         ; Background description for west side.
  DEFB $16,$11            ; String of indicies, representing words used to
                          ; describe name.
; Mead Square, north.
Path_DataMeadSqu:
  DEFW $058C              ; Coordinate of path on E/W [X] Axis.
  DEFW $03F8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $04A0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6ecd         ; Background description for east side.
  DEFW Bg_Str70fd         ; Background description for west side.
  DEFB $18,$3C            ; String of indicies, representing words used to
                          ; describe name.
; West Way.
  DEFW $05DC              ; Coordinate of path on E/W [X] Axis.
  DEFW $02B8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0400              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6ede         ; Background description for east side.
  DEFW Bg_Str7107         ; Background description for west side.
  DEFB $1D,$06            ; String of indicies, representing words used to
                          ; describe name.
  DEFW $05DC              ; Coordinate of path on E/W [X] Axis.
  DEFW $0498              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $05E0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6ef3         ; Background description for east side.
  DEFW Bg_Str711b         ; Background description for west side.
  DEFB $40,$02            ; String of indicies, representing words used to
                          ; describe name.
; Hill St.
  DEFW $05DC              ; Coordinate of path on E/W [X] Axis.
  DEFW $06C8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0810              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6f10         ; Background description for east side.
  DEFW Bg_Str712e         ; Background description for west side.
  DEFB $10,$02            ; String of indicies, representing words used to
                          ; describe name.
; Mead Square, south.
  DEFW $062C              ; Coordinate of path on E/W [X] Axis.
  DEFW $03F8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $04A0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6f1f         ; Background description for east side.
  DEFW Bg_Str7141         ; Background description for west side.
  DEFB $18,$3C            ; String of indicies, representing words used to
                          ; describe name.
; Silver St.
  DEFW $067C              ; Coordinate of path on E/W [X] Axis.
  DEFW $02B8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0450              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6f29         ; Background description for east side.
  DEFW Bg_Str7152         ; Background description for west side.
  DEFB $43,$02            ; String of indicies, representing words used to
                          ; describe name.
; Heath Rd.
  DEFW $067C              ; Coordinate of path on E/W [X] Axis.
  DEFW $06C8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0810              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6f46         ; Background description for east side.
  DEFW Bg_Str7166         ; Background description for west side.
  DEFB $2B,$0F            ; String of indicies, representing words used to
                          ; describe name.
; Myre St.
  DEFW $06CC              ; Coordinate of path on E/W [X] Axis.
  DEFW $02B8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $04F0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6f5a         ; Background description for east side.
  DEFW Bg_Str717a         ; Background description for west side.
  DEFB $1B,$02            ; String of indicies, representing words used to
                          ; describe name.
; The Calls.
  DEFW $071C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0448              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0590              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6f79         ; Background description for east side.
  DEFW Bg_Str7190         ; Background description for west side.
  DEFB $07,$2A            ; String of indicies, representing words used to
                          ; describe name.
; Bird St.
  DEFW $071C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0628              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0810              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6f91         ; Background description for east side.
  DEFW Bg_Str71a7         ; Background description for west side.
  DEFB $23,$02            ; String of indicies, representing words used to
                          ; describe name.
; Cross St.
  DEFW $07BC              ; Coordinate of path on E/W [X] Axis.
  DEFW $0448              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0770              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6fb1         ; Background description for east side.
  DEFW Bg_Str71c4         ; Background description for west side.
  DEFB $30,$02            ; String of indicies, representing words used to
                          ; describe name.
; Stone Rd.
  DEFW $080C              ; Coordinate of path on E/W [X] Axis.
  DEFW $04E8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0770              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str6fbf         ; Background description for east side.
  DEFW Bg_Str71f8         ; Background description for west side.
  DEFB $31,$0F            ; String of indicies, representing words used to
                          ; describe name.
; Claw Lane.
  DEFW $08AC              ; Coordinate of path on E/W [X] Axis.
  DEFW $0588              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0770              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7000         ; Background description for east side.
  DEFW Bg_Str7220         ; Background description for west side.
  DEFB $1F,$11            ; String of indicies, representing words used to
                          ; describe name.
Path_Data_EW_End:
  DEFB $FF,$FF            ; End of data.

; Paths  Data for paths running north / south.
;
; Data for paths.
Path_Data_NS:
  DEFW $021C              ; Coordinate of path on E/W [X] Axis.
  DEFW $03A8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $04A0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7243         ; Background description for north side.
  DEFW Bg_Str748d         ; Background description for south side.
  DEFB $1D,$13            ; String of indicies, representing words used to
                          ; describe name.
; Hern Hill.
  DEFW $02BC              ; Coordinate of path on E/W [X] Axis.
  DEFW $03A8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $06D0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7252         ; Background description for north side.
  DEFW Bg_Str749a         ; Background description for south side.
  DEFB $2C,$10            ; String of indicies, representing words used to
                          ; describe name.
; Moss Lane.
  DEFW $035C              ; Coordinate of path on E/W [X] Axis.
  DEFW $03A8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0400              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7287         ; Background description for north side.
  DEFW Bg_Str74bc         ; Background description for south side.
  DEFB $24,$11            ; String of indicies, representing words used to
                          ; describe name.
; Amber Way.
  DEFW $035C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0498              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $06D0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7298         ; Background description for north side.
  DEFW Bg_Str74c3         ; Background description for south side.
  DEFB $36,$06            ; String of indicies, representing words used to
                          ; describe name.
; Mead Square, west.
  DEFW $03FC              ; Coordinate of path on E/W [X] Axis.
  DEFW $0588              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0630              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str72be         ; Background description for north side.
  DEFW Bg_Str74ed         ; Background description for south side.
  DEFB $18,$3C            ; String of indicies, representing words used to
                          ; describe name.
; Mead Cross.
  DEFW $044C              ; Coordinate of path on E/W [X] Axis.
  DEFW $04E8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0590              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str72c8         ; Background description for north side.
  DEFW Bg_Str74fe         ; Background description for south side.
  DEFB $18,$30            ; String of indicies, representing words used to
                          ; describe name.
; Downs Rd.
  DEFW $044C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0628              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $07C0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str72d4         ; Background description for north side.
  DEFW Bg_Str750a         ; Background description for south side.
  DEFB $34,$0F            ; String of indicies, representing words used to
                          ; describe name.
; Mead Square, east.
  DEFW $049C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0588              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0630              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str72ed         ; Background description for north side.
  DEFW Bg_Str7523         ; Background description for south side.
  DEFB $18,$3C            ; String of indicies, representing words used to
                          ; describe name.
; Baker St.
  DEFW $04EC              ; Coordinate of path on E/W [X] Axis.
  DEFW $04E8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $05E0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str72fe         ; Background description for north side.
  DEFW Bg_Str7531         ; Background description for south side.
  DEFB $35,$02            ; String of indicies, representing words used to
                          ; describe name.
; Dice St.
  DEFW $04EC              ; Coordinate of path on E/W [X] Axis.
  DEFW $06C8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0810              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7310         ; Background description for north side.
  DEFW Bg_Str753d         ; Background description for south side.
  DEFB $22,$02            ; String of indicies, representing words used to
                          ; describe name.
; West Castle.
  DEFW $053C              ; Coordinate of path on E/W [X] Axis.
  DEFW $02B8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0450              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7327         ; Background description for north side.
  DEFW Bg_Str7559         ; Background description for south side.
  DEFB $1D,$42            ; String of indicies, representing words used to
                          ; describe name.
; King St.
  DEFW $053C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0498              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $05E0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7334         ; Background description for north side.
  DEFW Bg_Str756e         ; Background description for south side.
  DEFB $1C,$02            ; String of indicies, representing words used to
                          ; describe name.
; Old Hill.
  DEFW $058C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0718              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $08B0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7348         ; Background description for north side.
  DEFW Bg_Str7588         ; Background description for south side.
  DEFB $0A,$10            ; String of indicies, representing words used to
                          ; describe name.
; Oak Rd.
  DEFW $05DC              ; Coordinate of path on E/W [X] Axis.
  DEFW $0448              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $05E0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7361         ; Background description for north side.
  DEFW Bg_Str75a1         ; Background description for south side.
  DEFB $08,$0F            ; String of indicies, representing words used to
                          ; describe name.
; Star St.
  DEFW $062C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0718              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $08B0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7380         ; Background description for north side.
  DEFW Bg_Str75b9         ; Background description for south side.
  DEFB $27,$02            ; String of indicies, representing words used to
                          ; describe name.
; Marsh Gate.
  DEFW $06CC              ; Coordinate of path on E/W [X] Axis.
  DEFW $02B8              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0450              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7391         ; Background description for north side.
  DEFW Bg_Str75ce         ; Background description for south side.
  DEFB $2D,$12            ; String of indicies, representing words used to
                          ; describe name.
; New St.
  DEFW $06CC              ; Coordinate of path on E/W [X] Axis.
  DEFW $0498              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $05E0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str73a7         ; Background description for north side.
  DEFW Bg_Str75db         ; Background description for south side.
  DEFB $09,$02            ; String of indicies, representing words used to
                          ; describe name.
; Cinder Bank.
  DEFW $06CC              ; Coordinate of path on E/W [X] Axis.
  DEFW $0678              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $08B0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str73b3         ; Background description for north side.
  DEFW Bg_Str75f2         ; Background description for south side.
  DEFB $3F,$14            ; String of indicies, representing words used to
                          ; describe name.
; Marsh St.
  DEFW $076C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0498              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $08B0              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str73d2         ; Background description for north side.
  DEFW Bg_Str7618         ; Background description for south side.
  DEFB $2D,$02            ; String of indicies, representing words used to
                          ; describe name.
; East Wall.
  DEFW $080C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0498              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $0720              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str73ff         ; Background description for north side.
  DEFW Bg_Str7652         ; Background description for south side.
  DEFB $1E,$13            ; String of indicies, representing words used to
                          ; describe name.
  DEFW $085C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0218              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $028C              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7415         ; Background description for north side.
  DEFW Bg_Str7668         ; Background description for south side.
  DEFB $05,$E1            ; String of indicies, representing words used to
                          ; describe name.
  DEFW $08AC              ; Coordinate of path on E/W [X] Axis.
  DEFW $0218              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $028C              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7424         ; Background description for north side.
  DEFW Bg_Str7668         ; Background description for south side.
  DEFB $05,$E2            ; String of indicies, representing words used to
                          ; describe name.
  DEFW $08FC              ; Coordinate of path on E/W [X] Axis.
  DEFW $0218              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $028C              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7433         ; Background description for north side.
  DEFW Bg_Str7668         ; Background description for south side.
  DEFB $05,$E3            ; String of indicies, representing words used to
                          ; describe name.
  DEFW $094C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0218              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $028C              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7442         ; Background description for north side.
  DEFW Bg_Str7668         ; Background description for south side.
  DEFB $05,$E4            ; String of indicies, representing words used to
                          ; describe name.
  DEFW $099C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0218              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $028C              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7451         ; Background description for north side.
  DEFW Bg_Str7668         ; Background description for south side.
  DEFB $05,$E5            ; String of indicies, representing words used to
                          ; describe name.
  DEFW $09EC              ; Coordinate of path on E/W [X] Axis.
  DEFW $0218              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $028C              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str7460         ; Background description for north side.
  DEFW Bg_Str7668         ; Background description for south side.
  DEFB $05,$E6            ; String of indicies, representing words used to
                          ; describe name.
  DEFW $0A3C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0218              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $028C              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str746f         ; Background description for north side.
  DEFW Bg_Str7668         ; Background description for south side.
  DEFB $05,$E7            ; String of indicies, representing words used to
                          ; describe name.
  DEFW $0A8C              ; Coordinate of path on E/W [X] Axis.
  DEFW $0218              ; Coordinate for left hand end of path on N/S [Y]
                          ; Axis.
  DEFW $028C              ; Coordinate for right hand end of path on N/S [Y]
                          ; Axis.
  DEFW Bg_Str747e         ; Background description for north side.
  DEFW Bg_Str7668         ; Background description for south side.
  DEFB $05,$E8            ; String of indicies, representing words used to
                          ; describe name.
_Path_Data_NS_End:
  DEFB $FF,$FF            ; End of data.

; Background  Description string.
;
; Strings containing indicies to each item displayed in the background. Codes:
; $83 ~ $96 $97 ~ $DC $DD ~ $FE - Use sub string data. (String index is
; calculated by NN-$DD) $FF - Draw blank column.
Bg_Str6dfe:
  DEFW $8604              ; Axis position on map. Upper bit determines data
                          ; structure size.
  DEFB $CE                ; Half length of background. This creates an offset
                          ; from the centre of the background when fully
                          ; decoded.
  DEFB $0D                ; Number of bytes in string of data.
  DEFB $DD,$E2,$E3,$E2,$E3,$E4,$E2,$E2 ; String of data.
  DEFB $DE
  DEFW $0000              ; Next string (0000 is end of data)
Bg_Str6e0d:
  DEFB $BC,$82,$A6,$0C,$DD,$E3,$EB,$E4
  DEFB $EB,$E2,$E3,$DE,$00,$00
Bg_Str6e1b:
  DEFB $6C,$82,$4A,$0A,$DD,$B8,$E2,$E3
  DEFB $B8,$DE,$0C,$03,$4A,$0B,$00,$10
  DEFB $5F,$DD,$E2,$FB,$DE,$00,$00
Bg_Str6e32:
  DEFB $04,$86,$C2,$0B,$DD,$EB,$E4,$EB
  DEFB $EB,$EB,$DE,$00,$00
Bg_Str6e3f:
  DEFB $6C,$02,$4A,$08,$55,$10,$63,$F7
  DEFB $12,$83,$50,$09,$DD,$E5,$EB,$E3
  DEFB $DE,$00,$00
Bg_Str6e52:
  DEFB $86,$85,$50,$09,$DD,$E5,$E2,$E3
  DEFB $DE,$6C,$86,$8A,$09,$DD,$EB,$E2
  DEFB $E3,$E2,$84,$07,$8E,$0D,$05,$11
  DEFB $1E,$45,$DF,$EB,$E5,$E2,$DE,$00
  DEFB $00
Bg_Str6e73:
  DEFB $0C,$83,$4A,$05,$E7,$4C,$84,$EA
  DEFB $0C,$DD,$E2,$E2,$EB,$E4,$EB,$EB
  DEFB $DE,$00,$00
Bg_Str6e86:
  DEFW $030C
  DEFB $4A,$0C,$01,$11,$08,$3D
  DEFB $DD,$E6,$E5,$DE,$D4,$03,$72
  DEFW $030C
  DEFB $10,$09,$DD,$E5,$E2,$E1,$DE,$9C
  DEFB $84,$4A,$05,$E7
  DEFW $8514
  DEFB $22
  DEFB $05,$FD
  DEFW $058C
  DEFB $4A,$09,$05,$11,$0A,$61
  DEFB $FE,$54,$06,$72,$0D,$07,$11,$0B
  DEFB $4A,$DD,$E2,$DF,$E5,$DE,$1C,$87
  DEFB $4A,$05,$E7,$BC,$07,$4A,$08,$09
  DEFB $10,$0C,$F7,$00,$00
Bg_Str6ecd:
  DEFB $4C,$84,$56,$0F,$DD,$E3,$E5,$DE
  DEFB $90,$10,$90,$DD,$E5,$E3,$DE,$00
  DEFB $00
Bg_Str6ede:
  DEFB $0C,$03,$4A,$09,$4F,$11,$2A,$5D
  DEFB $FE,$AC,$83,$4A,$0A,$DD,$B8,$E3
  DEFB $B8,$E2,$DE,$00,$00
Bg_Str6ef3:
  DEFB $C4,$84,$22,$09,$DD,$B8,$E3,$B8
  DEFB $DE,$14,$85,$22,$09,$DD,$B8,$E3
  DEFB $B8,$DE,$8C,$05,$4A,$09,$0E,$11
  DEFB $11,$4B,$FE,$00,$00
Bg_Str6f10:
  DEFB $1C,$87,$4A,$05,$E7,$BC,$07,$4A
  DEFB $08,$26,$10,$56,$F7,$00,$00
Bg_Str6f1f:
  DEFB $4C,$04,$4A,$08,$03,$10,$06,$F7
  DEFB $00,$00
Bg_Str6f29:
  DEFB $0C,$03,$4A,$0D,$51,$12,$2B,$33
  DEFB $14,$DD,$E5,$E8,$DE,$D4,$03,$72
  DEFB $0E,$53,$12,$41,$5A,$29,$DD,$E8
  DEFB $E5,$EB,$DE,$00,$00
Bg_Str6f46:
  DEFB $16,$87,$50,$09,$DD,$E2,$E3,$E5
  DEFB $DE,$BC,$07,$4A,$09,$3A,$11,$58
  DEFB $6F,$FE,$00,$00
Bg_Str6f5a:
  DEFB $0C,$83,$4A,$05,$E7,$D4,$03,$72
  DEFB $0C,$00,$10,$3F,$DD,$E2,$FB,$E2
  DEFB $DE,$A2,$04,$50,$0C,$02,$10,$40
  DEFB $DD,$E1,$E3,$E5,$DE,$00,$00
Bg_Str6f79:
  DEFB $9C,$04,$4A,$0D,$02,$12,$39,$49
  DEFB $49,$DD,$EA,$E5,$DE,$42,$85,$50
  DEFB $09,$DD,$E2,$E5,$E3,$DE,$00,$00
Bg_Str6f91:
  DEFB $76,$06,$50,$0C,$10,$10,$66,$DD
  DEFB $E3,$E1,$E5,$DE,$1C,$07,$4A,$09
  DEFB $12,$11,$1F,$5B,$FE,$BC,$07,$4A
  DEFB $09,$14,$11,$20,$6A,$FE,$00,$00
Bg_Str6fb1:
  DEFB $9C,$04,$4A,$0D,$35,$12,$29,$44
  DEFB $28,$DD,$E5,$EA,$DE,$3C
  DEFB $05,$4A,$08,$37,$10,$32,$F7,$DC
  DEFB $05,$4A,$09,$39,$11,$33,$6B,$FE
  DEFB $7C,$86,$4A,$05,$E7,$1C,$07,$4A
  DEFB $09,$3B,$11,$35,$68,$FE,$00,$00
Bg_Str6fbf:
  DEFB $3C,$85,$4A,$0A,$DD,$E2,$8D,$E3
  DEFB $8D,$DE,$DC,$85,$4A,$05,$E7,$7C
  DEFB $06,$4A,$0B,$4A,$10,$3A,$DD,$E9
  DEFB $E5,$DE,$1C,$87,$4A,$05,$E7,$00
  DEFB $00
Bg_Str7000:
  DEFB $DC,$85,$4A,$05,$E7,$7C,$06,$4A
  DEFB $08,$52,$10,$52,$F7,$1C,$87,$4A
  DEFB $05,$E7,$00,$00
Bg_Str7014:
  DEFB $04,$06,$C2,$12,$00,$10,$01,$DD
  DEFB $EB,$EB,$9A,$93,$C6,$10,$9A,$EB
  DEFB $EB,$DE,$00,$00
Bg_Str7028:
  DEFB $6C,$02,$4A,$0D,$01,$12,$61,$72
  DEFB $72,$DD,$E8,$E5,$DE,$0C,$03,$4A
  DEFB $09,$03,$11,$62,$5C,$FE,$00,$00
Bg_str7040:
  DEFB $6C,$02,$4A,$0D,$1D,$10,$60,$DD
  DEFB $B8,$E3,$B8,$E1,$DE,$12,$83,$50
  DEFB $09,$DD,$E5,$EB,$E3,$DE,$00,$00
Bg_Str7058:
  DEFB $86,$85,$50,$09,$DD,$E5,$E3,$E2
  DEFB $DE,$5A,$86,$78,$0A,$DD,$E2,$E3
  DEFB $E2,$E5,$DE,$00,$00
Bg_Str706d:
  DEFB $66,$82,$50,$09,$DD,$E5,$E2,$E3
  DEFB $DE,$0C,$03,$4A,$08,$56,$10,$64
  DEFB $F7,$00,$00
Bg_Str7080:
  DEFB $8C,$05,$4A,$08,$02,$10,$1C,$F7
  DEFB $54,$06,$72,$0D,$04,$11,$1D,$4D
  DEFB $DD,$DF,$E5,$E2,$DE,$1C,$87,$4A
  DEFB $05,$E7,$BC,$87,$4A,$05,$E7,$00
  DEFB $00
Bg_Str70a1:
  DEFB $0C,$83,$4A,$05,$E7,$D4,$83,$72
  DEFB $09,$DD,$E2,$E4,$EB,$DE,$9C,$84
  DEFB $4A,$05,$E7,$14,$85,$22,$05,$FD
  DEFB $00,$00
Bg_Str70bb:
  DEFB $0C,$83,$4A,$05,$E7,$D4,$83,$72
  DEFB $09,$DD,$E2,$E2,$E5,$DE,$9C,$04
  DEFB $4A,$09,$04,$11,$0D,$5F,$FE,$14
  DEFB $85,$22,$05,$FD,$8C,$05,$4A,$09
  DEFB $06,$11,$0E,$3E,$FE,$54,$06,$72
  DEFB $0D,$08,$11,$0F,$3D,$DD,$E5,$E6
  DEFB $E2,$DE,$1C,$87,$4A,$05,$E7,$BC
  DEFB $07,$4A,$09,$0A,$11,$10,$56,$FE
  DEFB $00,$00
Bg_Str70fd:
  DEFB $4C,$04,$4A,$08,$01,$10,$04,$F7
  DEFB $00,$00
Bg_Str7107:
  DEFB $0C,$03,$4A,$0D,$50,$12,$2B,$33
  DEFB $14,$DD,$E5,$E8,$DE,$AC,$83,$4A
  DEFB $05,$E7,$00,$00
; Market St (example)
Bg_Str711b:
  DEFW $0542
  DEFW $11A0
  DEFW $110C
  DEFW $6F12
  DEFB $DD,$E2,$B8,$E3,$DF,$B8,$EB,$E3
  DEFB $DE,$00,$00
Bg_Str712e:
  DEFB $16,$87,$50,$09,$DD,$E3,$E2,$E5
  DEFB $DE,$BC,$07,$4A,$08,$25,$10,$57
  DEFB $F7,$00,$00
Bg_Str7141:
  DEFB $4C,$84,$56,$0F,$DD,$E3,$E5,$DE
  DEFB $90,$10,$90,$DD,$E5,$E3,$DE,$00
  DEFB $00
Bg_Str7152:
  DEFB $0C,$83,$4A,$05,$E7,$D4,$03,$72
  DEFB $0D,$52,$11,$42,$5D,$DD,$DF,$EB
  DEFB $E5,$DE,$00,$00
Bg_Str7166:
  DEFB $1C,$07,$4A,$08,$39,$10,$59,$F7
  DEFB $BC,$87,$4A,$0A,$DD,$8D,$E2,$8D
  DEFB $E3,$DE,$00,$00
Bg_Str717a:
  DEFB $7E,$83,$C8,$0C,$DD,$EB,$E3,$E2
  DEFB $EB,$E5,$E2,$DE,$9C,$84,$4A,$08
  DEFB $DD,$EB,$E5,$DE,$00,$00
Bg_Str7190:
  DEFB $9C,$04,$4A,$0D,$01,$12,$29,$44
  DEFB $28,$DD,$EA,$E5,$DE,$3C,$05,$4A
  DEFB $08,$03,$10,$38,$F7,$00,$00
Bg_Str71a7:
  DEFB $7C,$86,$4A,$05,$E7,$1C,$07,$4A
  DEFB $0D,$13,$12,$67,$15,$25,$DD,$E5
  DEFB $E8,$DE,$C2,$87,$50,$09,$DD,$E3
  DEFB $E2,$E5,$DE,$00,$00
Bg_Str71c4:
  DEFB $96,$04,$50,$0D,$34,$11,$21,$3D
  DEFB $DD,$E3,$E5,$E6,$DE,$3C,$05,$4A
  DEFB $0B,$00,$10,$37,$DD,$E2,$FB,$DE
  DEFB $DC,$85,$4A,$05,$E7,$7C,$06,$4A
  DEFB $0D,$3A,$12,$34,$15,$57,$DD,$E8
  DEFB $E5,$DE,$1C,$07,$4A,$08,$3C,$10
  DEFB $36,$F7,$00,$00
Bg_Str71f8:
  DEFB $36,$05,$50,$0D,$47,$11,$3B,$5C
  DEFB $DD,$E3,$DF,$E5,$DE,$DC,$05,$4A
  DEFB $09,$49,$11,$3C,$47,$FE,$7C,$86
  DEFB $4A,$05,$E7,$1C,$07,$4A,$0B,$4B
  DEFB $10,$3D,$DD,$E5,$E9,$DE,$00,$00
Bg_Str7220:
  DEFB $DC,$05,$56,$12,$00,$10,$54,$E3
  DEFB $E3,$E2,$9A,$93,$C6,$10,$9A,$E3
  DEFB $E3,$DE,$D2,$06,$A0,$0F,$00,$10
  DEFB $53,$DD,$E3,$E2,$FB,$E2,$E3,$E2
  DEFB $E3,$00,$00
Bg_Str7243:
  DEFB $D4,$83,$22,$05,$FD,$4C,$04,$4A
  DEFB $08,$3B,$10,$65,$F7,$00,$00
Bg_Str7252:
  DEFB $D4,$83,$22,$05,$FD,$4C,$04,$4A
  DEFB $09,$02,$11,$2F,$48,$FE,$C4,$84
  DEFB $22,$05,$FD,$14,$85,$22,$05,$FD
  DEFB $8C,$05,$4A,$09,$04,$11,$1B,$5C
  DEFB $FE,$2C,$06,$4A,$0D,$06,$12,$2B
  DEFB $33,$14,$DD,$E8,$E5,$DE,$A4,$86
  DEFB $22,$05,$FD,$00,$00
Bg_Str7287:
  DEFB $D4,$03,$2E,$0F,$00,$10,$03,$DD
  DEFB $C6,$95,$10,$99,$E3,$E3,$DE,$00
  DEFB $00
Bg_Str7298:
  DEFB $BE,$84,$28,$08,$DD,$E3,$E5,$DE
  DEFB $14,$85,$22,$05,$FD,$8C,$05,$4A
  DEFB $09,$41,$11,$2D,$4E,$FE,$2C,$06
  DEFB $4A,$09,$43,$11,$2E,$48,$FE,$A4
  DEFB $86,$22,$05,$FD,$00,$00
Bg_Str72be:
  DEFB $DC,$05,$4A,$08,$04,$10,$07,$F7
  DEFB $00,$00
Bg_Str72c8:
  DEFB $14,$85,$22,$05,$FD,$64,$85,$22
  DEFB $05,$FD,$00,$00
Bg_Str72d4:
  DEFB $7C,$86,$4A,$05,$E7,$F4,$86,$22
  DEFB $05,$FD,$6C,$07,$4A,$0D,$29,$12
  DEFB $29,$44,$28,$DD,$E5,$EA,$DE,$00
  DEFB $00
Bg_Str72ed:
  DEFB $DC,$85,$56,$0F,$DD,$E3,$E5,$DE
  DEFB $90,$10,$90,$DD,$E5,$E3,$DE,$00
  DEFB $00
Bg_Str72fe:
  DEFB $14,$85,$22,$05,$FD,$8C,$85,$4A
  DEFB $0B,$DD,$E2,$8C,$10,$8C,$E3,$DE
  DEFB $00,$00
Bg_Str7310:
  DEFB $EE,$86,$28,$08,$DD,$E3,$E5,$DE
  DEFB $6C,$07,$4A,$08,$0E,$10,$3E,$F7
  DEFB $E4,$87,$22,$05,$FD,$00,$00
Bg_Str7327:
  DEFB $84,$83,$C2,$0B,$DD,$EB,$EB,$E4
  DEFB $EB,$EB,$DE,$00,$00
Bg_Str7334:
  DEFB $EC,$04,$4A,$09,$04,$11,$14,$60
  DEFB $FE,$8C,$05,$4A,$09,$02,$11,$16
  DEFB $69,$FE,$00,$00
Bg_Str7348:
  DEFB $66,$87,$50,$09,$DD,$E3,$E5,$E2
  DEFB $DE,$E4,$87,$22,$05,$FD,$5C,$08
  DEFB $4A,$09,$0F,$11,$31,$48,$FE,$00
  DEFB $00
Bg_Str7361:
  DEFB $74,$84,$22,$05,$FD,$EC,$04,$4A
  DEFB $09,$1B,$11,$18,$6A,$FE,$92,$05
  DEFB $50,$0F,$1D,$11,$1A,$46,$DD,$B8
  DEFB $DF,$E3,$B8,$E3,$DE,$00,$00
Bg_Str7380:
  DEFB $6C,$87,$4A,$05,$E7,$E4,$87,$22
  DEFB $05,$FD,$5C,$88,$4A,$05,$E7,$00
  DEFB $00
Bg_Str7391:
  DEFB $84,$03,$CE,$14,$00,$10,$02,$DD
  DEFB $E2,$E3,$E2,$E3,$9A,$93,$C6,$10
  DEFB $9A,$E2,$E2,$DE,$00,$00
Bg_Str73a7:
  DEFB $EC,$84,$4A,$05,$E7,$8C,$85,$4A
  DEFB $05,$E7,$00,$00
Bg_Str73b3:
  DEFB $CC,$06,$4A,$08,$15,$10,$5A,$F7
  DEFB $6C,$07,$4A,$08,$17,$10,$5B,$F7
  DEFB $E4,$87,$22,$05,$FD,$5C,$08,$4A
  DEFB $08,$19,$10,$5C,$F7,$00,$00
Bg_Str73d2:
  DEFB $EC,$84,$4A,$05,$E7,$8C,$05,$4A
  DEFB $09,$1E,$11,$30,$48,$FE,$2C,$06
  DEFB $4A,$08,$20,$10,$22,$F7,$CC,$06
  DEFB $4A,$09,$22,$11,$24,$5C,$FE,$EA
  DEFB $87,$C8,$0C,$DD,$E2,$E4,$E2,$EB
  DEFB $E3,$E2,$DE,$00,$00
Bg_Str73ff:
  DEFB $2A,$85,$94,$0A,$DD,$E2,$E2,$E3
  DEFB $EB,$E4,$70,$86,$B2,$0A,$EB,$EB
  DEFB $E3,$E2,$E2,$DE,$00,$00
Bg_Str7415:
  DEFB $52,$02,$3C,$0D,$00,$60,$6A,$6A
  DEFB $44,$6A,$6A,$6A,$F4,$00,$00
Bg_Str7424:
  DEFB $52,$02,$3C,$0D,$00,$60,$6A,$6A
  DEFB $45,$6A,$6A,$6A,$F4,$00,$00
Bg_Str7433:
  DEFB $52,$02,$3C,$0D,$00,$60,$6A,$6A
  DEFB $6A,$6A,$46,$6A,$F4,$00,$00
Bg_Str7442:
  DEFB $52,$02,$3C,$0D,$00,$60,$6A,$6A
  DEFB $6A,$6A,$47,$6A,$F4,$00,$00
Bg_Str7451:
  DEFB $52,$02,$3C,$0D,$00,$60,$6A,$6A
  DEFB $6A,$48,$6A,$6A,$F4,$00,$00
Bg_Str7460:
  DEFB $52,$02,$3C,$0D,$00,$60,$6A,$6A
  DEFB $6A,$49,$6A,$6A,$F4,$00,$00
Bg_Str746f:
  DEFB $52,$02,$3C,$0D,$00,$60,$6A,$6A
  DEFB $4A,$6A,$6A,$6A,$F4,$00,$00
Bg_Str747e:
  DEFB $52,$02,$3C,$0D,$00,$60,$6A,$4B
  DEFB $6A,$6A,$6A,$6A,$F4,$00,$00
Bg_Str748d:
  DEFB $24,$84,$7E,$0B,$DD,$E3,$EB,$E4
  DEFB $EB,$E3,$DE,$00,$00
Bg_Str749a:
  DEFB $D4,$83,$22,$05,$FD,$4C,$04,$4A
  DEFB $09,$01,$11,$13,$5C,$FE,$36,$85
  DEFB $94,$0A,$E2,$E2,$E3,$EB,$E4,$DE
  DEFB $4E,$86,$84,$08,$DD,$EB,$E2,$E2
  DEFB $00,$00
Bg_Str74bc:
  DEFB $D4,$83,$22,$05,$FD,$00,$00
Bg_Str74c3:
  DEFB $C4,$84,$22,$05,$FD,$14,$85,$22
  DEFB $09,$DD,$8B,$01,$E3,$DE,$8C,$05
  DEFB $4A,$08,$40,$10,$2C,$F7,$2C,$06
  DEFB $4A,$0D,$42,$12,$2B,$33,$14,$DD
  DEFB $E5,$E8,$DE,$A4,$86,$22,$05,$FD
  DEFB $00,$00
Bg_Str74ed:
  DEFB $DC,$85,$56,$0F,$DD,$E3,$E5,$DE
  DEFB $90,$10,$90,$DD,$E5,$E3,$DE,$00
  DEFB $00
Bg_Str74fe:
  DEFB $14,$85,$22,$05,$FD,$64,$85,$22
  DEFB $05,$FD,$00,$00
Bg_Str750a:
  DEFB $54,$86,$22,$05,$FD,$A4,$86,$22
  DEFB $05,$FD,$F4,$86,$22,$05,$FD,$6C
  DEFB $07,$4A,$08,$2A,$10,$28,$F7,$00
  DEFB $00
Bg_Str7523:
  DEFB $DC,$05,$4A,$0C,$02,$11,$05,$3D
  DEFB $DD,$E6,$E5,$DE,$00,$00
Bg_Str7531:
  DEFB $14,$85,$22,$05,$FD,$8C,$85,$4A
  DEFB $05,$E7,$00,$00
Bg_Str753d:
  DEFB $F4,$86,$22,$05,$FD,$6C,$07,$4A
  DEFB $0D,$0F,$12,$29,$44,$28,$DD,$E5
  DEFB $EA,$DE,$EA,$87,$28,$08,$DD,$E3
  DEFB $E5,$DE,$00,$00
Bg_Str7559:
  DEFB $84,$03,$CE,$13,$00,$10,$03,$DD
  DEFB $E2,$E3,$E2,$E2,$C6,$95,$10,$9A
  DEFB $E3,$E2,$DE,$00,$00
Bg_Str756e:
  DEFB $BE,$84,$28,$0A,$DD,$B8,$89,$B8
  DEFB $E5,$DE,$14,$85,$22,$05,$FD,$8C
  DEFB $05,$4A,$09,$01,$11,$15,$59,$FE
  DEFB $00,$00
Bg_Str7588:
  DEFB $6C,$07,$4A,$09,$0A,$11,$55,$62
  DEFB $FE,$E4,$87,$22,$05,$FD,$62,$88
  DEFB $50,$09,$DD,$E3,$E2,$E5,$DE,$00
  DEFB $00
Bg_Str75a1:
  DEFB $74,$84,$22,$05,$FD,$EC,$04,$4A
  DEFB $09,$1A,$11,$17,$71,$FE,$8C,$05
  DEFB $4A,$08,$1C,$10,$19,$F7,$00,$00
Bg_Str75b9:
  DEFB $66,$87,$50,$09,$DD,$E2,$E5,$E3
  DEFB $DE,$E4,$87,$22,$05,$FD,$5C,$88
  DEFB $4A,$05,$E7,$00,$00
Bg_Str75ce:
  DEFB $84,$83,$C2,$0B,$DD,$EB,$EB,$E4
  DEFB $EB,$EB,$DE,$00,$00
Bg_Str75db:
  DEFB $EC,$04,$4A,$08,$0C,$10,$50,$F7
  DEFB $92,$05,$50,$0D,$0E,$11,$51,$4C
  DEFB $DD,$E5,$DF,$E3,$DE,$00,$00
Bg_Str75f2:
  DEFB $C6,$86,$50,$09,$DD,$E5,$E2,$E3
  DEFB $DE,$6C,$07,$4A,$0D,$16,$12,$5D
  DEFB $15,$58,$DD,$E8,$E5,$DE,$E4,$87
  DEFB $22,$05,$FD,$5C,$08,$4A,$09,$18
  DEFB $11,$5E,$47,$FE,$00,$00
Bg_Str7618:
  DEFB $EC,$84,$4A,$05,$E7,$8C,$85,$4A
  DEFB $05,$E7,$2C,$06,$4A,$0C,$1F,$11
  DEFB $23,$3D,$DD,$E6,$E5,$DE,$CC,$06
  DEFB $4A,$08,$21,$10,$25,$F7,$6C,$07
  DEFB $4A,$0D,$23,$12,$26,$15,$37,$DD
  DEFB $E5,$E8,$DE,$E4,$87,$22,$05,$FD
  DEFB $5C,$08,$4A,$08,$25,$10,$27,$F7
  DEFB $00,$00
Bg_Str7652:
  DEFB $EC,$84,$4A,$05,$E7,$8C,$85,$4A
  DEFB $05,$E7,$2C,$86,$4A,$05,$E7,$CC
  DEFB $86,$4A,$05,$E7,$00,$00
Bg_Str7668:
  DEFB $52,$02,$3C,$08,$00,$10,$4C,$FC
  DEFB $00,$00

; Objects  Array of bitmap indices for the objects.
;
; Add 1 to index for value used in inventory.
Obj_IndexArray:
  DEFB $52                ; [00] Tokens
  DEFB $55                ; [01] Moleskin
  DEFB $5C                ; [02] Gold
  DEFB $53                ; [03] Barrel
  DEFB $5D                ; [04] Last
  DEFB $50                ; [05] Wine
  DEFB $5B                ; [06] Needle
  DEFB $5A                ; [07] Sting
  DEFB $54                ; [08] Broadaxe
  DEFB $56                ; [09] Swatch
  DEFB $5E                ; [0A] Pepper
  DEFB $50                ; [0B] Hemlock
  DEFB $5C                ; [0C] * unused *
  DEFB $5F                ; [0D] Arrow
  DEFB $60                ; [0E] Book 'verit ghoom'
  DEFB $61                ; [0F] Foil
  DEFB $62                ; [10] Adze
  DEFB $63                ; [11] Drysalt
  DEFB $64                ; [12] Razor
  DEFB $59                ; [13] License
  DEFB $66                ; [14] Hammer
  DEFB $67                ; [15] * unused *
  DEFB $68                ; [16] Hoe
  DEFB $69                ; [17] Telestone 'i offer a view'
  DEFB $6A                ; [18] Relic
  DEFB $6B                ; [19] Pile
  DEFB $6C                ; [1A] Rye
  DEFB $58                ; [1B] * unused *
  DEFB $6D                ; [1C] Lyre
  DEFB $51                ; [1D] Necklace
  DEFB $51                ; [1E] Bracelet
  DEFB $51                ; [1F] Brooch
  DEFB $51                ; [20] Earings
  DEFB $6E                ; [21] Shield 'midir'
  DEFB $6E                ; [22] Shield 'belinus'
  DEFB $6E                ; [23] Shield 'danu'
  DEFB $6E                ; [24] Shield 'parthol'
  DEFB $58                ; [25] M-key
  DEFB $58                ; [26] D-key
  DEFB $38                ; [27] Statue
  DEFB $59                ; [28] Map 'gold in ashes'
  DEFB $59                ; [29] Map 'galacia is far'
  DEFB $50                ; [2A] Philtre
  DEFB $60                ; [2B] book 'look for my rest'
  DEFB $59                ; [2C] scrip 'skars a pearl!'
  DEFB $59                ; [2D] scrip 'gods see all'
  DEFB $59                ; [2E] scrip 'rat are vain'
  DEFB $59                ; [2F] scrip 'art in order'
  DEFB $57                ; [30] Spell 'show the lady!'
  DEFB $69                ; [31] Pearl
  DEFB $59                ; [32] Scroll '2**25'
  DEFB $59                ; [33] Scrip 'eve'
  DEFB $59                ; [34] Scrip 'did'
  DEFB $59                ; [35] Scrip 'pop'
  DEFB $5C                ; [36] Platina
  DEFB $5C                ; [37] Lead
  DEFB $59                ; [38] Scrip '3 ks 4 keys, with love'
  DEFB $59                ; [39] Scrip 'call me to enter'
  DEFB $58                ; [3A] L-key
  DEFB $5C                ; [3B] pyrite

; Objects  List of strings representing object nouns.
Object_nouns:
  DEFB $5E
  DEFM "token"            ; [$00]
  DEFB $5E
  DEFM "moleskin"
  DEFB $5E
  DEFM "goldbar"
  DEFB $5E
  DEFM "barrel"
  DEFB $5E
  DEFM "last"
  DEFB $5E
  DEFM "wine"
  DEFB $5E
  DEFM "needle"
  DEFB $5E
  DEFM "sting"
  DEFB $5E
  DEFM "broadaxe"         ; [$08]
  DEFB $5E
  DEFM "swatch"
  DEFB $5E
  DEFM "pepper"
  DEFB $5E
  DEFM "hemlock"
  DEFB $5E
  DEFB $5E
  DEFM "arrow"
  DEFB $5E
  DEFM "book+verit ghoom"
  DEFB $5E
  DEFM "foil"
  DEFB $5E
  DEFM "adze"             ; [$10]
  DEFB $5E
  DEFM "drysalt"
  DEFB $5E
  DEFM "razor"
  DEFB $5E
  DEFM "licence"          ; [$14]
  DEFB $5E
  DEFM "hammer"
  DEFB $5E
  DEFB $5E
  DEFM "hoe"
  DEFB $5E
  DEFM "telestone+i offer a view" ; [$18]
  DEFB $5E
  DEFM "relic"
  DEFB $5E
  DEFM "pile"
  DEFB $5E
  DEFM "rue"
  DEFB $5E
  DEFB $5E
  DEFM "lyre"
  DEFB $5E
  DEFM "necklace"
  DEFB $5E
  DEFM "bracelet"
  DEFB $5E
  DEFM "brooch"           ; [$20]
  DEFB $5E
  DEFM "earing"
  DEFB $5E
  DEFM "shield+midir"
  DEFB $5E
  DEFM "shield+belinus"
  DEFB $5E
  DEFM "shield+danu"
  DEFB $5E
  DEFM "shield+parthol"
  DEFB $5E
  DEFM "m-key"
  DEFB $5E
  DEFM "d-key"
  DEFB $5E
  DEFM "statue"
  DEFB $5E
  DEFM "map+gold in ashes!"
  DEFB $5E
  DEFM "map+galicia is far"
  DEFB $5E
  DEFM "philtre"
  DEFB $5E
  DEFM "book+look for my rest"
  DEFB $5E
  DEFM "scrip+skars a pearl!"
  DEFB $5E
  DEFM "scrip+gods see all"
  DEFB $5E
  DEFM "scrip+rats are vain"
  DEFB $5E
  DEFM "scrip+art in order" ; [$30]
  DEFB $5E
  DEFM "spell+show the lady!"
  DEFB $5E
  DEFM "pearl"
  DEFB $5E
  DEFM "scroll+2**25"
  DEFB $5E
  DEFM "scrip+eve"
  DEFB $5E
  DEFM "scrip+did"
  DEFB $5E
  DEFM "scrip+pop"
  DEFB $5E
  DEFM "platina"
  DEFB $5E
  DEFM "lead"             ; [$38]
  DEFB $5E
  DEFM "scrip+3 ks 4 keys, with love"
  DEFB $5E
  DEFM "scrip+call me to enter"
  DEFB $5E
  DEFM "l-key"
  DEFB $5E
  DEFM "pyrite"
  DEFB $5E
  DEFB $00


; JP (HL)
;
; Used by the routines at BG_ScrollInDirection, Bg_DrawAll, Action_Enter and
; Room_Events.
JP_HL:
  JP (HL)

; Offscreen  Blits part of offscreen.
;
; Used by the routine at Offscreen_Blit. Input:  HL  Offscreen Ptr (+1 skipping
; first column) DE  DF Ptr A  Number of rows to blit. Left and right columns
; are not blitted to allow for edge hiding on screen when scrolling.
Offscreen_BlitBlock:
  PUSH DE
  LD BC,$0900
Offscreen_BlitBlock_0:
  PUSH DE
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  LDI
  INC HL
  INC HL
  POP DE
  INC D
  DJNZ Offscreen_BlitBlock_0
  POP DE
  EX DE,HL
  LD BC,$0020
  ADD HL,BC
  EX DE,HL
  DEC A
  JR NZ,Offscreen_BlitBlock
  RET

; Offscreen  Blits offscreen and colours.
;
; Used by the routines at _79b7 and Hero_DoorEntry.
Offscreen_Blit:
  DI
  LD DE,$4800
  LD HL,Offscreen_Third
  LD A,$08
  CALL Offscreen_BlitBlock
  LD DE,$40E0
  LD HL,Offscreen_Second
  LD A,$01
  CALL Offscreen_BlitBlock
  LD DE,$40C0
  LD HL,Offscreen_TopLine
  LD A,$01
  CALL Offscreen_BlitBlock
  LD DE,$58E0
  LD HL,Offscreen_Attr2
  LD BC,$0020
  LDIR
  EI
  RET

; Linked List  Create.
;
; Used by the routine at LinkList_bee4_setup. Input:  B  Number of links C
; Size of link in bytes. DE  Ptr to first link. Creates a linked list by
; storing the ptr to the next link in the first two bytes of the current link.
LinkedList_Create:
  DEC B
LinkedList_Create_0:
  LD L,C                  ; Create ptr to next link using link size.
  LD H,$00
  ADD HL,DE
  EX DE,HL
  LD (HL),E               ; Store ptr to next link in first 2 bytes of link.
  INC HL
  LD (HL),D
  DJNZ LinkedList_Create_0 ; Next link.
  EX DE,HL                ; Terminate list with zeroes in last link.
  XOR A
  LD (HL),A
  INC HL
  LD (HL),A
  RET

; Initialise _bee4 data.
;
; Used by the routines at _79b7 and Outside_DataRestore.
LinkList_bee4_setup:
  XOR A
  LD (Event_NumDoors),A
  LD HL,$0000
  LD (LinkList_Bg_Ptr),HL
  LD DE,LinkList_bee4
  LD (LinkList_Spare_Ptr),DE
  LD C,$0F
  LD B,$0A
  CALL LinkedList_Create
  RET

; Handles main number keys, blits screen, moves onto main loop.
;
; Used by the routine at Init.
_79b7:
  EI
_79b7_0:
  CALL Menu
  CALL Stage_Clear
  CALL LinkList_bee4_setup
  XOR A
  LD (Msg_CountDown),A
  LD HL,$0000
  LD (Actors_background),HL
  LD (GameTime_mins),HL   ; Frames
  CALL _7dcb
  LD A,(IY+$3E)           ; Frame counter
  LD (_frames),A
; Loop
_79b7_1:
  LD A,(_frames)
  CP (IY+$3E)
  JR Z,_79b7_1
  LD A,(Flag_DoorEntry)
  LD HL,(Hero_ArrestCount)
  OR L
  LD HL,(Offer_Count)
  OR L
  LD HL,(Skar_ShowCount)
  OR L
  JR NZ,_79b7_2
  LD BC,$EFFE             ; Row '6,7,8,9,0'
  IN A,(C)
  BIT 4,A                 ; '6' - Return to menu.
  JR Z,_79b7_0
_79b7_2:
  LD BC,$F7FE             ; Row '1,2,3,4,5'
  IN A,(C)
; Pause
  BIT 4,A                 ; Check for '5' (PAUSE)
  JR NZ,_79b7_6
  DI
_79b7_3:
  IN A,(C)                ; Wait for key up
  BIT 4,A
  JR Z,_79b7_3
_79b7_4:
  IN A,(C)                ; Paused, Wait for key down again.
  BIT 4,A
  JR NZ,_79b7_4
_79b7_5:
  IN A,(C)                ; Wait for key up to unpause.
  BIT 4,A
  JR Z,_79b7_5
  EI
; Demo mode.
_79b7_6:
  BIT 3,A                 ; Check for '4' (DEMO)
  JR NZ,_79b7_8
  LD A,(Mode_Demo)        ; Toggle demo mode on/off.
  XOR $02
  LD (Mode_Demo),A
  DI
_79b7_7:
  IN A,(C)                ; Wait for key up.
  BIT 3,A
  JR Z,_79b7_7
  EI
_79b7_8:
  LD A,(IY+$3E)
  LD HL,(_frames)
  SUB L
  CP $05
  JR C,_79b7_1
  LD A,(_frames)
  ADD A,$05
  LD (_frames),A
  CALL Offscreen_Blit
  CALL DF_UpdateBg
  CALL Game_Main
  JR _79b7_1

; People  Stores bit of background that requires redrawing for each actor.
Actors_background:
  DEFW $6E61              ; Address of offscreen, where to blit to.
  DEFB $74                ; Width in bytes.
  DEFB $69                ; Height in scans.
  DEFB $71,$75,$61,$72,$79,$61,$72,$63 ; Next actor...
  DEFB $68,$69,$76,$69,$73,$74,$63,$61
  DEFB $72,$70,$65,$6E,$74,$65,$72,$61
  DEFB $6C,$63,$68,$65,$6D,$69,$73,$74

; Data block at 7A6C
_7a6c:
  DEFB $69,$72,$6F,$6E,$6D,$6F,$6E,$67
  DEFB $65,$72,$61,$70,$6F,$74,$68,$65
  DEFB $63,$61,$72,$79,$67,$72,$61,$79
  DEFB $6D,$61,$72,$6B,$65,$74,$73,$77
  DEFB $6F,$72,$64,$73,$6D,$69,$74,$68
  DEFB $73,$74,$72,$6F,$6E,$67,$72,$6F
  DEFB $6F,$6D

; Main Initialisation
;
; Used by the routine at Outside_DataCopy. Input:  IY  $5c3a
Init:
  LD SP,Stack
  EI
  LD B,$20
  LD HL,TempStore
Init_0:
  LD (HL),$00
  INC HL
  DJNZ Init_0
  LD IX,Bitmap_PtrTable   ; Bitmaps : Create bitmap pointer table.
  LD B,$00
Init_1:
  LD L,(IX+$00)
  LD H,(IX+$01)
  LD DE,_bf8e
  ADD HL,DE
  LD (IX+$00),L
  LD (IX+$01),H
  LD DE,$0004
  ADD IX,DE
  DJNZ Init_1
  LD IX,Bitmap_HeroMaskPtr ; Correct masks.
  LD C,$09
Init_2:
  LD L,(IX+$00)
  LD H,(IX+$01)
  LD E,(IX+$02)
  RES 7,E
  LD B,(IX+$03)
  RES 7,B
  XOR A
Init_3:
  ADD A,E
  DJNZ Init_3
  ADD A,A
  JR Z,Init_5
  ADD A,A
  ADD A,A
  LD B,A
Init_4:
  LD A,(HL)
  CPL
  LD (HL),A
  INC HL
  DJNZ Init_4
Init_5:
  LD DE,$0004
  ADD IX,DE
  DEC C
  JR NZ,Init_2
  LD HL,BmpInfo82_PictureFrame ; Create table.
  LD DE,$BD98
  LD BC,$000C
  LDIR
  LD HL,Actors_background ; Create table.
  LD DE,Dictionary_w9
  LD BC,$0024
  LDIR
  LD HL,_7a6c
  LD DE,Dictionary_10w
  LD BC,$0032
  LDIR
  LD A,$01                ; Set print channel.
  CALL $1601
  CALL _79b7
  JP $0000                ; If anything goes wrong reset Spectrum.

; Data block at 7B23
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00

; Paths  Table of path offsets.
;
; Each offset is used for calculating the coordinate of a column at the edge of
; the screen in direction of travel. Offset when moving left.
Table_PathOffsets_Left:
  DEFW $FFDE              ; North
  DEFW $FFE0
  DEFW $FFDE              ; East
  DEFW $FFE0
  DEFW $0020              ; South
  DEFW $0022
  DEFW $0020              ; West
  DEFW $0022
; Offset for moving right.
Table_PathOffsets_Right:
  DEFW $0020              ; North
  DEFW $0022
  DEFW $0020              ; East
  DEFW $0022
  DEFW $FFDE              ; South
  DEFW $FFE0
  DEFW $FFDE              ; West
  DEFW $FFE0

; Move  jump vectors.
Coords_MoveVector:
  JR Coords_MoveEast
  JR Coords_MoveSouth
  JR Coords_MoveWest
  JR Coords_MoveNorth
  JR Coords_MoveWest
  JR Coords_MoveNorth
  JR Coords_MoveEast
  JR Coords_MoveSouth
; Move coords east.
Coords_MoveEast:
  LD HL,(Coords_EW)
  INC HL
  LD (Coords_EW),HL
  RET
; Move coords south.
Coords_MoveSouth:
  LD HL,(Coords_NS)
  INC HL
  LD (Coords_NS),HL
  RET
; Move coords west.
Coords_MoveWest:
  LD HL,(Coords_EW)
  DEC HL
  LD (Coords_EW),HL
  RET
; Move coords north.
Coords_MoveNorth:
  LD HL,(Coords_NS)
  DEC HL
  LD (Coords_NS),HL
  RET

; Offscren  Scroll the offscreen in the direction of the player.
;
; Used by the routine at Game_Main.
BG_ScrollInDirection:
  PUSH IX
  LD A,(Hero_LastDirection)
  CP $02
  JP Z,BG_ScrollInDirection_3
; Facing Right
  LD HL,(Coords_EW)       ; Get coordinates for axis based on camera compass.
  LD A,(Camera_Compass)
  AND $01
  JR Z,BG_ScrollInDirection_0
  LD HL,(Coords_NS)
BG_ScrollInDirection_0:
  PUSH HL
  BIT 0,L
  LD HL,$5E89             ; Area on the offscreen bitmap. Right hand column,
                          ; second scan down.
  LD IX,Table_PathOffsets_Right
  CALL Z,Bg_DrawColumn
  LD HL,(Camera_Compass)
  LD H,$00
  ADD HL,HL
  LD BC,Coords_MoveVector
  ADD HL,BC
  CALL JP_HL
  LD A,L
  AND $1E
  CP $1E
  CALL Z,Area_Check
  LD C,$02
  LD HL,$6907
BG_ScrollInDirection_1:
  LD B,$AA
BG_ScrollInDirection_2:
  RLD
  DEC HL
  RLD
  DEC HL
  RLD
  DEC HL
  RLD
  DEC HL
  RLD
  DEC HL
  RLD
  DEC HL
  RLD
  DEC HL
  RLD
  DEC HL
  DJNZ BG_ScrollInDirection_2
  DEC C
  JR NZ,BG_ScrollInDirection_1
  POP HL
  POP IX
  BIT 0,L
  RET Z
  LD HL,Offscreen_Attr2
  LD DE,Offscreen_Attr
  LD BC,$0043
  LDIR
  RET
; Facing Left
BG_ScrollInDirection_3:
  LD HL,(Coords_EW)
  LD A,(Camera_Compass)
  AND $01
  JR Z,BG_ScrollInDirection_4
  LD HL,(Coords_NS)
BG_ScrollInDirection_4:
  PUSH HL
  BIT 0,L
  LD HL,Offscreen_Bitmap
  LD IX,Table_PathOffsets_Left
  CALL Z,Bg_DrawColumn
  LD HL,(Camera_Compass)
  LD H,$00
  ADD HL,HL
  LD BC,$7CAC
  ADD HL,BC
  CALL JP_HL
  LD A,L
  AND $1E
  CP $1E
  CALL Z,Area_Check
  LD C,$02
  LD HL,Offscreen_Bitmap
BG_ScrollInDirection_5:
  LD B,$AA
BG_ScrollInDirection_6:
  RRD
  INC HL
  RRD
  INC HL
  RRD
  INC HL
  RRD
  INC HL
  RRD
  INC HL
  RRD
  INC HL
  RRD
  INC HL
  RRD
  INC HL
  DJNZ BG_ScrollInDirection_6
  DEC C
  JR NZ,BG_ScrollInDirection_5
  POP HL
  POP IX
  BIT 0,L
  RET NZ
  LD HL,$5E66
  LD DE,$5E67
  LD BC,$0043
  LDDR
  RET

; Room  Puts back info, which was stored when entering.
;
; Used by the routines at _7dcb, Skar_View and Room_Initialise. Input:  A
; Index of bank to copy from.
Outside_DataRestore:
  PUSH IX
  LD (Room_CurrentStore),A
  LD L,A
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  LD DE,Outside_DataCopy
  ADD HL,DE
  LD DE,Ptr_Path_EW
  LD BC,$0008
  LDIR
  CALL LinkList_bee4_setup
  CALL Area_Check
  CALL Inv_Update
  POP IX
  RET

; Routine at 7DCB
;
; Used by the routine at _79b7.
_7dcb:
  LD A,(Room_CurrentStore)
  CALL Outside_DataRestore
  JP Hero_DoorEntry

; Path  Find path that player is on.
;
; Used by the routines at Hero_DoorEntry and Skar_View.
Path_Find:
  XOR A
  LD (PathFound_IndexCount),A
; Get correct position based on compass.
  LD DE,(Coords_NS)
  LD HL,(Coords_EW)
  LD A,(Camera_Compass)   ; Check to E/W compass.
  AND $01
  JR NZ,Path_Find_0
  LD IX,(Ptr_Path_EW)     ; N/W facing.
  JR Path_Find_1
Path_Find_0:
  LD IX,(Ptr_Path_NS)     ; E/W facing, swap round coords.
  EX DE,HL
Path_Find_1:
  LD A,(Flag_DoorEntry)
  AND A
  JR Z,Path_Find_4
  LD A,(Camera_Compass)
  LD BC,$0006
  CP $02
  JR C,Path_Find_2
  LD BC,$FFFA
Path_Find_2:
  LD A,(Hero_LastDirection)
  CP $02
  JR Z,Path_Find_3
  ADD HL,BC
  JR Path_Find_4
Path_Find_3:
  AND A
  SBC HL,BC
; Find path player is on.
Path_Find_4:
  LD C,L
  LD B,H
Path_Find_5:
  PUSH DE
  LD L,(IX+$00)           ; Match path axis.
  LD H,(IX+$01)
  AND A
  SBC HL,DE
  JR NC,Path_Find_6       ; Move not next path is not same position.
  LD DE,$0004
  AND A
  ADC HL,DE
  JP M,Path_Find_8
  JR Path_Find_7
Path_Find_6:
  LD DE,$0004
  SCF
  SBC HL,DE
  JR NC,Path_Find_9
Path_Find_7:
  LD L,(IX+$02)           ; See if player is within the two ends of the path.
  LD H,(IX+$03)
  SCF
  SBC HL,BC
  JR NC,Path_Find_8
  LD L,(IX+$04)
  LD H,(IX+$05)
  AND A
  SBC HL,BC
  JR NC,Path_Find_11
; Next path.
Path_Find_8:
  LD HL,PathFound_IndexCount
  INC (HL)
  LD DE,$000C
  ADD IX,DE
  POP DE
  JR Path_Find_5
; Path found, running in and out of screen.
Path_Find_9:
  POP DE
  LD DE,(Coords_NS)
  LD HL,(Coords_EW)
  LD A,(Camera_Compass)
  BIT 0,A
  JR Z,Path_Find_10
  EX DE,HL
Path_Find_10:
  LD (PathFound_InOut_Axis),DE
  LD DE,$0004
  AND A
  SBC HL,DE
  LD (PathFound_InOut_Start),HL
  ADD HL,DE
  ADD HL,DE
  LD (PathFound_InOut_End),HL
  LD IX,PathFound_InOut_Axis
  LD (Hero_PathPtr),IX
  LD (PathFound_Compass),A
  JR Path_Find_13
; Path found, running left and right of screen.
Path_Find_11:
  POP DE
  LD (Hero_PathPtr),IX
  LD A,(Camera_Compass)
  LD (PathFound_Compass),A
  LD (PathFound_PathPtr),IX
  LD ($B16A),A
  LD A,(Camera_Compass)
  LD L,(IX+$00)
  LD H,(IX+$01)
  BIT 0,A
  JR Z,Path_Find_12
  LD (Coords_EW),HL
  JR Path_Find_13
Path_Find_12:
  LD (Coords_NS),HL
Path_Find_13:
  LD DE,$0022             ; Get the ends of the path and include a margin for
                          ; the width of the screen to allow for overruns when
                          ; drawing the screen.
  LD L,(IX+$02)
  LD H,(IX+$03)
  AND A
  SBC HL,DE
  SET 7,H
  LD (PathFound_StartMargin),HL
  LD L,(IX+$04)
  LD H,(IX+$05)
  ADD HL,DE
  SET 7,H
  LD (PathFound_EndMargin),HL
; Get background data.
  BIT 1,A                 ; Determine which background to use based on camera
                          ; direction.
  JR NZ,Path_Find_14
  LD L,(IX+$06)           ; North / East background.
  LD H,(IX+$07)
  JR Path_Find_15
Path_Find_14:
  LD L,(IX+$08)           ; South / West background.
  LD H,(IX+$09)
Path_Find_15:
  LD (PathFound_BackgroundPtr),HL
  RET

; ATTR  Fills stage to area's colour.
;
; Used by the routines at Hero_DoorEntry and Skar_View.
Stage_AreaColour:
  LD HL,$58C0
  LD DE,$58C1
  LD A,(AreaColour)
  LD (HL),A
  LD BC,$013F
  LDIR
  RET

; Background  Draw all of the background.
;
; Used by the routines at Hero_DoorEntry, Skar_View, Room_jvGambling, Room_jvC
; and Room_GalleryHandler. Draws all of the background, column by column. The
; routine re-uses the column draw sub-routines so the players values are used.
Bg_DrawAll:
  LD HL,(Coords_NS)       ; Set of positions based on direction.
  LD DE,(Coords_EW)
  RES 0,L                 ; Make even as there are two steps for each column.
  RES 0,E
  PUSH HL                 ; Store new values for reseting player.
  PUSH DE
  LD A,(Hero_LastDirection) ; Determine which coordinate is left to right on
                            ; the screen and shift to represent the left hand
                            ; column of the screen.
  PUSH AF
  LD A,$01
  LD (Hero_LastDirection),A
  LD A,(Camera_Compass)
  BIT 0,A                 ; North or South coordinates.
  JR NZ,Bg_DrawAll_0
  EX DE,HL                ; Work on East to West coordinates.
Bg_DrawAll_0:
  LD BC,$0042             ; Nort or East. Offset path postion by $42
  BIT 1,A
  JR NZ,Bg_DrawAll_1
  LD BC,$FFBE             ; South or West. Offset path position by -$42
Bg_DrawAll_1:
  ADD HL,BC
  BIT 0,A
  JR NZ,Bg_DrawAll_2
  EX DE,HL                ; North or South swap around coordinates again.
Bg_DrawAll_2:
  LD (Coords_NS),HL       ; Use the players coordinates to keep track of the
                          ; column to draw.
  LD (Coords_EW),DE
  LD HL,Offscreen_Bitmap
  LD B,$22                ; Number of columns to draw.
; Draw each column.
Bg_DrawAll_3:
  PUSH BC
  PUSH HL
  LD IX,Table_PathOffsets_Right
  CALL Bg_DrawColumn      ; Find and draw the item baed on the position of the
                          ; column.
  LD HL,(Camera_Compass)
  LD H,$00
  ADD HL,HL
  LD BC,Coords_MoveVector
  ADD HL,BC
  LD E,L
  LD D,H
  CALL JP_HL
  EX DE,HL
  CALL JP_HL
  POP HL
  INC HL
  POP BC
  DJNZ Bg_DrawAll_3
  POP AF
  LD (Hero_LastDirection),A
  POP DE
  POP HL
  LD (Coords_NS),HL       ; Put player position back.
  LD (Coords_EW),DE
  RET

; Compass text.
Msg_nesw:
  DEFM "neswnesw"
Msg_CompassPos:
  DEFB $10                ; Colour / position of compass bits.
  DEFB $08
  DEFB $11
  DEFB $08
  DEFB $16
  DEFB $01
  DEFB $02
  DEFB $16
  DEFB $02
  DEFB $03
  DEFB $16
  DEFB $03
  DEFB $02
  DEFB $16
  DEFB $02
  DEFB $01

; Data block at 7F6E
_7f6e:
  DEFB $00

; Handles door entry by hero.
;
; Used by the routines at _7dcb, Game_Main, Skar_View and Room_Initialise.
Hero_DoorEntry:
  DI
  LD A,$01
  LD (_7f6e),A
  CALL Block_ClearMem     ; Clear door cache.

; Data block at 7F78
  DEFW Door_cache
  DEFB $18

; Return address.
  CALL Path_Find
  CALL Bg_DrawAll
  LD DE,(Hero_Frame)
  LD A,(Flag_DoorEntry)
  AND A
  JR NZ,Hero_DoorEntry_0
  LD A,(Hero_CompassFacing)
  LD HL,(Camera_Compass)
  LD E,$12
  CP L
  JR Z,Hero_DoorEntry_0
  LD E,$13
  ADD A,$02
  AND $03
  CP L
  JR Z,Hero_DoorEntry_0
  LD E,$10
  LD A,(Hero_CompassFacing)
  SUB L
  AND $03
  LD (Hero_LastDirection),A
  CP $03
  JR NZ,Hero_DoorEntry_0
  LD A,$02
  LD (Hero_LastDirection),A
Hero_DoorEntry_0:
  LD D,$00
  LD (Hero_Frame),DE
  LD HL,$5800
  LD DE,$5801
  LD BC,$00BF
  LD A,(Msg_CountDown)
  AND A
  JR Z,Hero_DoorEntry_1
  LD BC,$00A5
Hero_DoorEntry_1:
  LD (HL),$00
  LDIR
  CALL Stage_AreaColour
  LD A,$02
  CALL $1601
  LD L,$D0                ; Draw vertical border ornament bitmap.
  LD BC,$00F8
  LD A,$03
  CALL Bmp_BlitAtCharPos
  LD L,$D1                ; Draw horizontal border ornament bitmap.
  LD BC,$0060
  LD A,$03
  CALL Bmp_BlitAtCharPos
  LD L,$C9                ; Draw compass ornament bitmap.
  LD BC,$0000
  LD A,$05
  CALL Bmp_BlitAtCharPos
; Draw compass.
  LD HL,(Camera_Compass)
  LD H,$00
  LD DE,Msg_nesw
  ADD HL,DE
  LD DE,Msg_CompassPos
  LD C,$04
  LD B,$07
Hero_DoorEntry_2:
  LD A,(DE)
  CALL Print_SelectChar
  INC DE
  DJNZ Hero_DoorEntry_2
  LD A,(HL)
  CALL Print_SelectChar
  INC HL
  LD B,$03
  DEC C
  JR NZ,Hero_DoorEntry_2
; Display room specific messages.
  CALL Print_StrFromStack

; Data block at 8019
  DEFB $16
  DEFB $01
  DEFB $06
  DEFB $10
  DEFB $06
  DEFB $11
  DEFB $00
  DEFB $13
  DEFB $01
  DEFB $5E

; Routine at 8023
  LD A,(Room_Type)
  CP $01
  JR NZ,Hero_DoorEntry_3
; Seller
  CALL Print_StrFromStack

; Data block at 802D
  DEFM "we sell:"
  DEFB $16
  DEFB $02
  DEFB $06

; Routine at 8038
  LD E,(HL)
  JR Hero_DoorEntry_4
; This entry point is used by the routine at 8023.
Hero_DoorEntry_3:
  CP $02
  JP NZ,Hero_DoorEntry_6
; Broker
  CALL Print_StrFromStack

; Data block at 8043
  DEFM "we buy:"
  DEFB $16
  DEFB $02
  DEFB $06
  DEFB $5E

; Routine at 804E
  LD IX,($B16E)           ; Print word at end of message.
  LD A,(IX+$06)
  CALL Dict_Print
  JR Hero_DoorEntry_5
; This entry point is used by the routine at 8038.
Hero_DoorEntry_4:
  CALL Print_StrFromStack

; Data block at 805D
  DEFB $16                ; PRINT AT 2,6;
  DEFB $02
  DEFB $06
  DEFB $5E

; Routine at 8061
  LD A,(Shop_ObjIndex)
  CALL Object_GetNounAddr
  CALL Print_String
; This entry point is used by the routine at 804E.
Hero_DoorEntry_5:
  CALL Print_StrFromStack

; Data block at 806D
  DEFM "s for "
  DEFB $5E

; Routine at 8074
  LD HL,Obj_Price
  CALL Display_DecimalValue.
  CALL Print_StrFromStack

; Data block at 807D
  DEFM "ir"

; Routine at 807F
  LD E,(HL)
  JP Hero_DoorEntry_11

; Data block at 8083
Str_Deposit:
  DEFM "deposit fee  50ir"
  DEFB $5E

; Routine at 8095
;
; Used by the routine at 8038.
Hero_DoorEntry_6:
  CP $03
  JP NZ,Hero_DoorEntry_7
; Deposit
  LD HL,Str_Deposit
  JR Hero_DoorEntry_8
Hero_DoorEntry_7:
  CP $08
  JR NZ,Hero_DoorEntry_9
; Castle
  LD IX,($B16E)
  LD L,(IX+$03)
  LD H,(IX+$04)
; This entry point is used by the routines at Hero_DoorEntry_9 and
; Hero_DoorEntry_10.
Hero_DoorEntry_8:
  CALL Object_StringExtraDisplay
  JR Hero_DoorEntry_11

; Data block at 80B2
Str_DepositRate:
  DEFM "min.deposit 1000+bank rate 1% per day"
  DEFB $5E

; Routine at 80D8
;
; Used by the routine at Hero_DoorEntry_6.
Hero_DoorEntry_9:
  CP $09
  JR NZ,Hero_DoorEntry_10
; Bank
  LD HL,Str_DepositRate
  JR Hero_DoorEntry_8

; Data block at 80E1
Str_PortationFee:
  DEFM "portation fee: 200"
  DEFB $5E

; Routine at 80F4
;
; Used by the routine at Hero_DoorEntry_9.
Hero_DoorEntry_10:
  CP $0A
  JR NZ,Hero_DoorEntry_11
; Portal
  CALL Area_HideName
  LD HL,$0000
  LD (_AreaNamePtr),HL
  LD HL,Str_PortationFee
  JR Hero_DoorEntry_8
; This entry point is used by the routines at 807F and Hero_DoorEntry_6.
Hero_DoorEntry_11:
  LD A,(Flag_DoorEntry)
  AND A
  JR Z,Hero_DoorEntry_12
  CALL Stage_Draw
  JR Hero_DoorEntry_13
Hero_DoorEntry_12:
  LD A,(Hero_Frame)
  CALL Stage_Draw_0
Hero_DoorEntry_13:
  JP Offscreen_Blit

; Data block at 811A
_811a:
  DEFB $04,$07,$0B,$0E,$10,$12,$13


; Main game routine.
;
; Used by the routine at _79b7. Check for new day
Game_Main:
  LD HL,Flag_dayNight
  BIT 5,(IY+$3F)          ; FRAMES + 1
  JR NZ,Game_Main_0
  LD A,(HL)
  AND A
  JR Z,Game_Main_1
  LD (HL),$00             ; Reset to nighttime.
  LD HL,BankAccountLow    ; Add 1% to bank account.
  LD DE,BankAccountMid
  CALL ValueAddAsBCDCarry
  CALL Search_NonZero     ; Look for digit that is not zero.

; Data for non-zero search, the address of which gets put onto stack in above
; call.
  DEFW BankAccountLow
  DEFB $04

; Above call returns to here.
  CALL NZ,Inv_Update      ; Display value if there is money in account.
  JR Game_Main_1
; This entry point is used by the routine at Game_Main.
Game_Main_0:
  LD (HL),$01             ; Reset to daytime.
; Message display countdown.
Game_Main_1:
  LD A,(Msg_CountDown)    ; See if a message is still on display.
  AND A
  JR Z,Game_Main_2
  DEC A                   ; Countdown and skip if not the end.
  LD (Msg_CountDown),A
  JR NZ,Game_Main_2
  CALL Block_ClearMem     ; Clear the message from the screen.

; Data block at 8155
  DEFW ATTR_Message       ; Parameters for block copy.
  DEFB $19

; Routine at 8158
;
; Used by the routine at 813F.
Game_Main_2:
  LD A,(Flag_DoorEntry)   ; See if player is going through a door.
  BIT 0,A
  JP NZ,Door_HandleEntry
  LD A,(Hero_ArrestCount) ; See if an arrest is in progress.
  AND A
  JP NZ,Hero_Arrest
  LD A,(Offer_Count)      ; See if an offer is in progress and handle it.
  AND A
  JP NZ,Offer_Handle
  LD A,(Skar_ShowCount)   ; See if Skar is being viewed on the Telestone.
  AND A
  JP NZ,Skar_View
  CALL Keyboard_Handle
; Enter
  LD A,(KeyCmd_Enter)
  AND A
  CALL NZ,Action_Enter
  LD A,(Hero_Frame)
  CP $10
  JR NZ,Game_Main_3
  LD A,(Mode_Demo)
  AND A
  JR Z,Game_Main_3
  OR $08
  LD (KeyCmd),A
Game_Main_3:
  LD A,(KeyCmd)
  AND $0C
  JR Z,Game_Main_6
  LD A,($BB2D)
  AND $0C
  JP NZ,Stage_Draw
  LD A,(KeyCmd)
  LD ($BB2D),A
  AND $0C
  CP $0C
  JP Z,Stage_Draw
; Rotate Camera
  BIT 2,A
  JR Z,Game_Main_4
  LD A,(Camera_Compass)
  INC A
  JR Game_Main_5
Game_Main_4:
  LD A,(Camera_Compass)
  DEC A
Game_Main_5:
  AND $03
  LD (Camera_Compass),A
  JP Hero_DoorEntry
; Actions
Game_Main_6:
  LD A,(KeyCmd)
  AND $F0
  JR Z,Game_Main_9
  LD A,($BB2D)
  AND $70
  JR NZ,Game_Main_9
  LD A,(KeyCmd)
  BIT 7,A
  JR Z,Game_Main_7
  LD A,($BB2D)
  BIT 7,A
  JR NZ,Game_Main_7
  CALL Inv_SelectNext
  JR Game_Main_9
Game_Main_7:
  LD A,(KeyCmd)
  LD ($BB2D),A
  BIT 4,A
  CALL NZ,Offer_Action
  LD A,(Offer_Count)
  AND A
  JP NZ,Game_Main_29
  LD A,(KeyCmd)
  AND $60
  CP $60
  JR Z,Game_Main_9
  BIT 5,A
  JR Z,Game_Main_8
  CALL Hero_PickUp
  JR Game_Main_9
Game_Main_8:
  BIT 6,A
  CALL NZ,Hero_Drop
Game_Main_9:
  LD A,(KeyCmd)
  LD ($BB2D),A
  LD A,(Hero_Frame)       ; Check for key frames
  LD HL,_811a
  LD BC,$0007
  CPIR
  JP NZ,Game_Main_25
  LD HL,(Coords_EW)       ; Get coords for axis of movement along with offset
                          ; for movement.
  LD DE,$0007
  LD A,(Camera_Compass)
  BIT 0,A
  JR Z,Game_Main_10
  LD HL,(Coords_NS)
Game_Main_10:
  BIT 1,A
  JR Z,Game_Main_11
  LD DE,$FFF9
Game_Main_11:
  LD A,(KeyCmd)           ; Mask out movement keys, Making sure only one key is
                          ; pressed.
  AND $03
  CP $03
  JR NZ,Game_Main_12
  XOR A
Game_Main_12:
  LD (TempAl),A
  LD A,(Hero_Frame)
  CP $04
  JP Z,Game_Main_20
  CP $0B
  JP Z,Game_Main_20
  CP $07
  JP Z,Game_Main_25
  CP $0E
  JP Z,Game_Main_25
  LD A,(TempAl)           ; Get movement key pressed.
  AND A
  JP Z,Game_Main_29       ; Skip all if not key pressed.
  LD BC,(Hero_LastDirection) ; Last direction is the same as last key pressed.
  CP C
  JR Z,Game_Main_13
; Change of direction.
  LD A,(Hero_Frame)       ; See if 'standing' frame.
  CP $10
  JR NZ,Game_Main_13
  LD A,$13                ; Set to 'facing' camera frame.
  LD (Hero_Frame),A
  LD A,(Camera_Compass)
  XOR $02
  LD (Hero_CompassFacing),A
  JP Game_Main_29
Game_Main_13:
  LD A,(TempAl)
  CP $02
  JR Z,Game_Main_14
  AND A
  ADC HL,DE
  JR Game_Main_15
Game_Main_14:
  SBC HL,DE
Game_Main_15:
  JP M,Game_Main_18
  JR Z,Game_Main_18
  LD E,L
  LD D,H
  LD IX,(Hero_PathPtr)
  LD L,(IX+$02)
  LD H,(IX+$03)
  SCF
  SBC HL,DE
  JP NC,Game_Main_16
  LD L,(IX+$04)
  LD H,(IX+$05)
  EX DE,HL
  SCF
  SBC HL,DE
  JP C,Game_Main_18
Game_Main_16:
  LD A,(TempAl)
  LD (Hero_LastDirection),A
  LD C,$01
  CP $01
  JR Z,Game_Main_17
  LD C,$FF
Game_Main_17:
  LD A,(Camera_Compass)
  ADD A,C
  AND $03
  LD (Hero_CompassFacing),A
  LD A,$10
  LD (Hero_Frame),A
  JP Game_Main_29
Game_Main_18:
  LD A,(TempAl)
  LD (Hero_LastDirection),A
  LD C,$01
  CP $01
  JR Z,Game_Main_19
  LD C,$FF
Game_Main_19:
  LD A,(Camera_Compass)
  ADD A,C
  AND $03
  LD (Hero_CompassFacing),A
  LD A,(Hero_LastStepFrame)
  ADD A,$02
  LD (Hero_Frame),A
  JR Game_Main_28
Game_Main_20:
  LD A,(Hero_Frame)
  LD (Hero_LastStepFrame),A
  LD A,(Hero_LastDirection)
  CP $02
  JR Z,Game_Main_21
  AND A
  ADC HL,DE
  JR Game_Main_22
Game_Main_21:
  SBC HL,DE
Game_Main_22:
  JP M,Game_Main_23
  JR Z,Game_Main_23
  LD E,L
  LD D,H
  LD IX,(Hero_PathPtr)
  LD L,(IX+$02)
  LD H,(IX+$03)
  AND A
  SBC HL,DE
  JR NC,Game_Main_24
  LD L,(IX+$04)
  LD H,(IX+$05)
  EX DE,HL
  AND A
  SBC HL,DE
  JR NC,Game_Main_24
Game_Main_23:
  LD A,(TempAl)
  LD HL,Hero_LastDirection
  CP (HL)
  JR Z,Game_Main_25
Game_Main_24:
  LD A,$10
  JR Game_Main_27
Game_Main_25:
  LD A,(Hero_Frame)
Game_Main_26:
  INC A
  CP $0F
  JR NZ,Game_Main_27
  LD A,$02
Game_Main_27:
  CP $01
  JR Z,Game_Main_26
  CP $08
  JR Z,Game_Main_26
  LD (Hero_Frame),A
Game_Main_28:
  CALL BG_ScrollInDirection
; This entry point is used by the routines at Door_HandleEntry and Hero_Arrest.
Game_Main_29:
  LD A,(Hero_Frame)
  JP Stage_Draw_0

; Start off the action 'offer'.
;
; Used by the routine at Game_Main.
Offer_Action:
  LD A,(Offer_Count)      ; See if an offer is already in place, if so do
                          ; nothing.
  AND A
  RET NZ
  LD HL,Hero_Frame        ; Set frame to 12 (Facing in).
  LD (HL),$12
  LD DE,(Bg_ItemIndexHero)
  LD A,E
  OR D
  BIT 4,A
  JR NZ,Offer_Action_0
  LD A,(Camera_Compass)
  BIT 1,A
  JR Z,Offer_Action_0
  INC (HL)                ; Change frame to facing front.
Offer_Action_0:
  LD A,$16                ; Start offer.
  LD (Offer_Count),A
  LD HL,$0000             ; Clear who we are offering to.
  LD (Offer_PersonPtr),HL
  LD HL,(Inv_Select)      ; Set the attribute of the offer character to
                          ; flashing.
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  LD DE,ATTR_5a81
  ADD HL,DE
  SET 7,(HL)
  LD A,(Inv_Select)       ; See if offering iridi
  AND A
  JR NZ,Offer_Action_1
  LD (Offer_ObjIndex),A
  CALL Message_Display

; Data block at 8397
  DEFM "iridi?"
  DEFB $5E

; Routine at 839E
  RET
; This entry point is used by the routine at Offer_Action.
Offer_Action_1:
  CALL Message_Display

; Data block at 83A2
  DEFB $5E

; Routine at 83A3
  LD HL,(Inv_Select)      ; Get selected object index.
  LD H,$00
  LD DE,_b14e
  ADD HL,DE
  LD A,(HL)
  LD (Offer_ObjIndex),A
  CP $18                  ; Is it the Telestone.
  JR NZ,Offer_Action_2
  LD A,$3C                ; Start searching for Skar...
  LD (Skar_ShowCount),A
  CALL Print_StrFromStack

; Data block at 83BC
  DEFM "searching..."
  DEFB $5E

; Routine at 83C9
  RET
; This entry point is used by the routine at 83A3.
Offer_Action_2:
  CALL Object_GetNounAddr ; Offer the object.
  CALL Print_String
  LD A,$3F                ; Add '?' to the end, making it a question.
  JP Print_SelectChar     ; Do the print, then return.

; Handle offer action if an offer is in place.
;
; Used by the routine at Game_Main.
Offer_Handle:
  LD HL,Offer_Count
  DEC (HL)
  JP NZ,Stage_Draw
  LD A,(Offer_ObjIndex)
  CP $18
  JP Z,Skar_View
  LD HL,(Bg_ItemIndexHero)
  LD A,L
  OR H
  BIT 4,A
  JR NZ,Offer_Handle_0
  LD HL,(Offer_PersonPtr)
  LD A,L
  OR H
  JP NZ,Offer_Handle_9
  CALL Message_DisplayAt

; Data block at 83F8
  DEFM "no answer!"
  DEFB $5E

; Routine at 8403
  JR Offer_Handle_1
; This entry point is used by the routine at Offer_Handle.
Offer_Handle_0:
  LD A,(Room_Type)
  CP $01
  JP NZ,Offer_Handle_7
  LD HL,Inv_Pocket1
  LD BC,$0003
  LD A,(Shop_ObjIndex)
  OR $80
  CPIR
  JR Z,Offer_Handle_2
  CALL Message_DisplayAt

; Data block at 841F
  DEFM "for what?"
  DEFB $5E

; This entry point is used by the routine at Hero_Arrest.
;
; Used by the routines at 8403, 844B, 846B, 849A, 8512, 8541 and 89F6.
Offer_Handle_1:
  CALL Inv_Update
  JP Stage_Draw
; This entry point is used by the routine at 8403.
Offer_Handle_2:
  LD A,(Inv_Select)
  AND A
  JR Z,Offer_Handle_4
; This entry point is used by the routines at Action_HandleOffer,
; Offer_HandleSkar, Offer_HandlePita and Offer_HandleBren.
Offer_DontWantMessage:
  LD A,(Inv_Select)
  AND A
  JR Z,Offer_Handle_3
  CALL Message_DisplayAt

; Data block at 843E
  DEFM "i dont want "
  DEFB $5E

; Routine at 844B
  LD A,(Offer_ObjIndex)
  CALL Object_GetNounAddr
  CALL Print_String
  LD A,$73
  CALL Print_SelectChar
  JR Offer_Handle_1
; This entry point is used by the routine at Offer_Handle_1.
Offer_Handle_3:
  CALL Message_DisplayAt

; Data block at 845E
  DEFM "no thank you"
  DEFB $5E

; Routine at 846B
  JR Offer_Handle_1
; This entry point is used by the routine at Offer_Handle_1.
Offer_Handle_4:
  LD HL,IridiValue
  LD DE,Obj_Price
  CALL BCD_Subtract
  JR NC,Offer_Handle_5
  CALL Exit_NotEnough
  JR Offer_Handle_1
Offer_Handle_5:
  LD HL,Inv_Pocket1
  LD BC,$0003
  LD A,(Shop_ObjIndex)
  OR $80
  CPIR
  DEC HL
  RES 7,(HL)
; This entry point is used by the routine at 849A.
Offer_Handle_6:
  CALL Message_DisplayAt

; Data block at 8490
  DEFM "thank you"
  DEFB $5E

; Routine at 849A
  JP Offer_Handle_1
; This entry point is used by the routine at 8403.
Offer_Handle_7:
  CP $02
  JP NZ,Offer_Handle_8
  LD A,(Inv_Select)
  AND A
  JP Z,Offer_DontWantMessage
  LD L,A
  LD H,$00
  LD DE,_b14e
  ADD HL,DE
  LD DE,(Shop_ObjIndex)
  LD A,(HL)
  AND $7F
  CP E
  JP NZ,Offer_DontWantMessage
  LD (HL),$00
  LD HL,IridiValue
  LD DE,Obj_Price
  CALL ValueAddAsBCDCarry
  JP Offer_Handle_6
Offer_Handle_8:
  JP Offer_Handle_6

; Offer Jump table.
  DEFW Offer_HandleSkar   ; Determines how each person reacts when being
                          ; offered an object.
  DEFW Offer_HandleRyde
  DEFW Offer_HandleKara
  DEFW Offer_HandleKeli
  DEFW Offer_HandleKahn
  DEFW Offer_HandleDain
  DEFW Offer_HandleMhor
  DEFW Offer_HandleTeth
  DEFW Offer_HandlePita
  DEFW Offer_HandleBren
  DEFW Offer_HandleLoeg

; To a person
;
; Used by the routine at Offer_Handle.
Offer_Handle_9:
  LD IX,(Offer_PersonPtr) ; Get the address of the person being offered to and
                          ; clear the pointer.
  LD HL,$0000
  LD (Offer_PersonPtr),HL
  BIT 4,(IX+$13)          ; Check for the rat.
  JR NZ,Offer_Handle_12
  LD A,(Inv_Select)
  AND A
  JR NZ,Offer_Handle_11
; Give Iridi...
  LD HL,$0000             ; Clear all your money.
  LD (IridiValue),HL
  LD ($B155),HL
; This entry point is used by the routine at Action_HandleOffer.
Offer_Handle_10:
  CALL Message_DisplayAt  ; }

; Data block at 8504
  DEFM "how generous!"
  DEFB $5E

; Routine at 8512
  JP Offer_Handle_1
; Offer an object...
Offer_Handle_11:
  LD L,A                  ; Workout which pocket being offered (1~3)
  LD H,$00
  LD DE,_b14e
  ADD HL,DE
  LD C,L
  LD B,H
  LD L,(IX+$0E)           ; See who is being offered to
  LD H,$00
  ADD HL,HL
  LD DE,$84CA             ; Use the jump table to see how to handle it...
  ADD HL,DE
  LD E,(HL)
  INC HL
  LD D,(HL)
  EX DE,HL
  JP (HL)
; To the rat.
Offer_Handle_12:
  CALL Message_DisplayAt

; Data block at 8530
  DEFM "i am only a rat!"
  DEFB $5E

; Routine at 8541
  JP Offer_Handle_1

; View Skar through the telestone.
;
; Used by the routines at Game_Main and Offer_Handle.
Skar_View:
  LD HL,Skar_ShowCount
  LD A,$3C
  CP (HL)
  JR NZ,Skar_View_0
  DEC (HL)
  LD HL,Room_CurrentStore
  LD DE,$BCB4
  LD BC,$0018
  LDIR
  LD HL,$B94A
  LD DE,Coords_NS
  LD BC,$0004
  LDIR
  LD A,$01
  CALL Outside_DataRestore
  LD A,($B95D)
  LD (Room_CurrentIndex),A
  LD A,($B947)
  XOR $01
  LD (Camera_Compass),A
  CALL Path_Find
  LD A,$08
  LD (AreaColour),A
  CALL Bg_DrawAll
  CALL Stage_AreaColour
  XOR A
  JP Stage_Draw_0
Skar_View_0:
  DEC (HL)
  JP NZ,Stage_Draw
  LD HL,$BCB4
  LD DE,Room_CurrentStore
  LD BC,$0018
  LDIR
  LD A,(Room_CurrentStore)
  CALL Outside_DataRestore
  JP Hero_DoorEntry

; Rooms  Table of datasizes for each type. Each room data has a type. Based on
; that type the data is made up of different sizes.
Room_DataSizes:
  DEFB $02
  DEFB $06
  DEFB $07
  DEFB $05
  DEFB $0C
  DEFB $06
  DEFB $0A
  DEFB $11
  DEFB $05
  DEFB $04
  DEFB $03
  DEFB $05
Exit_SimpleData:
  DEFB $12,$00            ; Simple exit for leaving a room that doesn't define
                          ; any other exits.

; Action  Handles the 'enter' action.
;
; Used by the routine at Game_Main.
Action_Enter:
  LD A,(Camera_Compass)
  BIT 0,A
  JR NZ,Action_Enter_0
  LD DE,(Coords_EW)
  JR Action_Enter_1
Action_Enter_0:
  LD DE,(Coords_NS)
Action_Enter_1:
  LD IX,Door_cache        ; Data on possible exits.
  LD A,$06                ; Number of possible exits.
  LD BC,$0004             ; Bytes in data structure.
Action_Enter_2:
  PUSH AF                 ; Get next exit and check distance from current
                          ; coords allowing for an error of 4 units.
  LD L,(IX+$00)
  LD H,(IX+$01)
  CALL sub_abs
  AND A
  SBC HL,BC
  JR C,Action_Enter_3
  ADD IX,BC
  POP AF
  DEC A
  JR NZ,Action_Enter_2
  RET
; Exit Found
Action_Enter_3:
  POP AF                  ; Store index of exit.
  PUSH IX                 ; Make a copy of the exit data.
  POP HL
  LD DE,ExitFound_Coords
  LDIR
  LD IX,Room_MainData     ; Get Room address based on room index held within
                          ; exit found data.
  LD A,(ExitFound_RoomIndex)
  AND A
  JR Z,Action_Enter_5
  LD B,A
  LD D,$00
Action_Enter_4:
  LD E,(IX+$00)
  ADD IX,DE
  DJNZ Action_Enter_4
Action_Enter_5:
  LD (Room_CurrentPtr),IX
  LD C,(IX+$01)           ; Get room's data flags.
  LD A,C                  ; Get room type.
  RRA
  RRA
  RRA
  RRA
  AND $0F
  LD L,A                  ; Get the size of the data based on the type number.
  LD H,$00
  LD DE,Room_DataSizes
  ADD HL,DE
  LD E,(HL)
  LD D,$00
  ADD IX,DE               ; Skip the data(T) for the exits.
  LD A,C                  ; Check the exit flags (lower half of data flags). If
                          ; zero (no exits) use special exit data.
  AND $0F
  JR NZ,Action_Enter_6
  LD IX,Exit_SimpleData
Action_Enter_6:
  LD (Ptr_CurrentExitData),IX ; Store the address for exit data.
  LD A,(Camera_Compass)   ; Flip the direction of the hero, to get the exit's
                          ; true direction within the room being entered.
  XOR $02
  JR Z,Action_Enter_10
  LD B,A                  ; Each bit (from the right) represents an exit. Shift
                          ; through flags using the exit required as a index.
Action_Enter_7:
  RRC C
  JR NC,Action_Enter_9
  LD DE,$0007             ; If the exit has its bit set, it tells us the next
                          ; piece of data if based on that exit. Skip that bit
                          ; of data, size is based on the exit type, stored
                          ; inthe first byte of exit data.
  LD A,(IX+$00)
  AND $0F
  JR Z,Action_Enter_8
  LD DE,$0003
  CP $01
  JR Z,Action_Enter_8
  LD DE,$0002
Action_Enter_8:
  ADD IX,DE
Action_Enter_9:
  DJNZ Action_Enter_7
Action_Enter_10:
  LD A,(IX+$01)           ; Does the door require a key?
  AND A
  JR Z,Action_Enter_11
  LD HL,Inv_Pocket1       ; See if 'key' is being carried.
  LD BC,$0003
  CPIR
  JR Z,Action_Enter_11
  CALL Message_Display    ; If not display 'locked' on message line.

; Data block at 8659
  DEFM "locked"
  DEFB $5E

; Routine at 8660
  RET
; Through door.
Action_Enter_11:
  LD (Room_CurrentDataPtr),IX
  LD HL,(JP_Vector)
  CALL JP_HL
  RET NZ
  CALL Event_CreateDoor
  RET Z
  LD A,$01
  LD (Flag_DoorEntry),A
  LD A,(Camera_Compass)
  LD (Hero_CompassFacing),A
  LD A,$12
  LD (Hero_Frame),A
  POP HL
  JP Stage_Draw_0

; Handles door entry by the player.
;
; Used by the routine at Game_Main.
Door_HandleEntry:
  LD HL,Flag_DoorEntry
  BIT 2,(HL)
  JP NZ,Room_Initialise
  BIT 1,(HL)
  JP Z,Game_Main_29
  XOR A
  JP Stage_Draw_0

; Data block at 8695
Ptr_OutsideMidData:
  DEFW Outside_SouthExitData
  DEFW $B1DE
  DEFW $B3D5
  DEFW $B5DB
_869d:
  DEFW $B20E              ; Current Room
  DEFW $B444
  DEFW $B5C6
  DEFW $B1F6
_86a5:
  DEFW $B4FD              ; Room Type 0
  DEFW $B5CD
_86a9:
  DEFW $B218
  DEFW $B455
  DEFW $B20E              ; Room Type 1
  DEFW $B444
  DEFW $B218
  DEFW $B455
  DEFW $B20E              ; Room Type 2
  DEFW $B444
  DEFW $B218
  DEFW $B455
  DEFW $B230              ; Room Type 3
  DEFW BgStr_b483
  DEFW $B23A
  DEFW BgStr_b40f
  DEFW $B252              ; Room Type 4
  DEFW $B51F
  DEFW $B25C
  DEFW $B4C8
  DEFW $B274              ; Room Type 5
  DEFW $B3FF
  DEFW $B23A
  DEFW BgStr_b40f
  DEFW $B28C              ; Room Type 6
  DEFW $B4F3
  DEFW $B25C
  DEFW $B4C8
  DEFW $B2A4              ; Room Type 7
  DEFW $B49E
  DEFW $B23A
  DEFW BgStr_b40f
  DEFW $B2BC              ; Room Type 8
  DEFW $B4BD
  DEFW $B25C
  DEFW $B4C8
  DEFW $B230              ; Room Type 9
  DEFW BgStr_b483
  DEFW $B218
  DEFW $B455
  DEFW $B2BC              ; Room Type A
  DEFW $B4BD
  DEFW $B25C
  DEFW $B4C8
  DEFW $B230              ; Room Type B
  DEFW BgStr_b483
  DEFW $B23A
  DEFW BgStr_b40f

; Positions used to locate person when goin through an exit, based on compass
; direction.
Exit_coords:
  DEFW $00C8              ; North exit position.
  DEFW $0073
  DEFW $00A5              ; East exit position.
  DEFW $0080
  DEFW $0068              ; South exit position.
  DEFW $0075
  DEFW $00B9              ; West exit position.
  DEFW $0080
; Each value marks a single exit and is used by rooms to create an exit for a
; room that doesn't have exits defined.
Exits_Predefined:
  DEFB $04,$08,$01,$02    ; North, east, south, west.
Temp_RoomType:
  DEFB $00

; Room  Initialise
;
; Used by the routine at Door_HandleEntry.
Room_Initialise:
  XOR A
  LD (Flag_DoorEntry),A
  LD (Hero_ArrestCount),A
  LD IX,(Room_CurrentPtr)
  LD A,(IX+$01)           ; Calculate room type.
  RRA
  RRA
  RRA
  RRA
  AND $0F
  LD (Temp_RoomType),A
  JP NZ,Room_Initialise_0
; Room Type 00 (Outside)
  LD IX,(Room_CurrentDataPtr) ; Get pointer to room info (midway pointer).
  LD HL,(Room_CurrentDataPtr) ; With same info, get the last position when hero
                              ; was outside, put back into hero's data.
  LD DE,$0003
  ADD HL,DE
  LD DE,Coords_NS
  LD BC,$0004
  LDIR
  LD A,(IX+$02)
  CALL Outside_DataRestore
  XOR A
  LD (Room_CurrentIndex),A
  LD A,$12
  LD (Hero_Frame),A
  JP Hero_DoorEntry
; Handle rooms.
Room_Initialise_0:
  LD BC,(ExitFound_RoomIndex)
  LD HL,PictureMatrix_Gallery
  LD B,$09
Room_Initialise_1:
  LD A,C
  ADD A,$6F
  LD C,A
  AND $0F
  CP $09
  JR C,Room_Initialise_2
  LD A,$03
Room_Initialise_2:
  ADD A,$58
  LD (HL),A
  INC HL
  RRC C
  DJNZ Room_Initialise_1
  LD HL,PictureMatrix_Gallery
  LD DE,PictureMatrix_Deposit
  LD BC,$001B
  LDIR
  LD HL,(Camera_Compass)  ; Based on the compass, get a predefined exit mask.
                          ; This will hold just a single exist from the
                          ; direction the player came from.
  LD H,$00
  LD DE,Exits_Predefined
  ADD HL,DE
  LD C,(HL)
  LD A,(IX+$01)           ; Get room exit mask.
  AND $0F                 ; If no exits are defined, then just create an exit
                          ; based on direction player entered the room.
  JR Z,Room_Initialise_3
  LD C,A                  ; Use defined exits.
Room_Initialise_3:
  PUSH BC
  LD HL,(Temp_RoomType)
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  LD DE,_86a5
  ADD HL,DE
  LD DE,_869d
  LD BC,$0004
  LDIR
  LD DE,_86a9
  LD BC,$0004
  LDIR
; Setup exits.
  LD HL,Ptr_OutsideMidData
  POP BC
  LD IX,(Ptr_CurrentExitData)
  LD B,$04
Room_Initialise_4:
  RRC C
  PUSH BC
  JR C,Room_Initialise_5
; No exit.
  LD DE,$0004
  ADD HL,DE
  LD A,$05
  LD BC,$0000             ; Clear number of bytes to skip, stays on same exit
                          ; data for next check.
  JR Room_Initialise_10
; Exit of some sort.
Room_Initialise_5:
  LD A,(IX+$00)           ; Get exit type.
  AND $0F
  JR NZ,Room_Initialise_6
; Exit Type 0
  LD E,(HL)
  INC HL
  LD D,(HL)
  INC HL
  PUSH HL
  PUSH IX
  POP HL
  LD BC,$0007             ; Size of exit data.
  LDIR                    ; Copy exit data across.
  POP HL
  XOR A
  LD BC,$0007
  JR Room_Initialise_9
; Check for exit type 2.
Room_Initialise_6:
  CP $01
  JR NZ,Room_Initialise_7
; Exit Type 1.
  INC HL
  INC HL
  LD BC,$0003             ; Size of exit data.
  LD A,(IX+$02)
  JR Room_Initialise_9
; Exit Type 2.
Room_Initialise_7:
  LD E,(HL)
  INC HL
  LD D,(HL)
  INC HL
  PUSH HL
  LD A,(IX+$01)
  PUSH DE
  EX (SP),IX              ; Get info required to put hero back outside.
  LD (IX+$01),A
  LD (IX+$00),$00
  LD A,(Room_CurrentStore)
  LD (IX+$02),A
  LD HL,(Hero_PathPtr)
  LD E,(HL)
  INC HL
  LD D,(HL)
  LD HL,(ExitFound_Coords)
  LD A,(Camera_Compass)
  BIT 0,A
  JR NZ,Room_Initialise_8
  EX DE,HL
; Setup exit leading to outside.
Room_Initialise_8:
  LD (IX+$03),L           ; Store info as exit data.
  LD (IX+$04),H
  LD (IX+$05),E
  LD (IX+$06),D
  POP IX
  POP HL
  LD BC,$0002             ; Size of exit data.
  XOR A
; _
Room_Initialise_9:
  LD E,(HL)
  INC HL
  LD D,(HL)
  INC HL
  LD (DE),A
  LD A,(IX+$00)
  RRCA
  RRCA
  RRCA
  RRCA
  AND $0F
  ADD A,$92
Room_Initialise_10:
  LD E,(HL)
  INC HL
  LD D,(HL)
  LD (DE),A
  INC HL
  ADD IX,BC               ; Move onto next exit data.
  POP BC                  ; Get exit count and count down.
  DEC B
  JP NZ,Room_Initialise_4
; _
  LD IX,(Room_CurrentPtr)
  LD A,(ExitFound_RoomIndex)
  LD (Room_CurrentIndex),A
  LD ($B16E),IX
  LD DE,Exit_coords       ; Copy exit coords into heros position.
  LD HL,(Camera_Compass)
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  ADD HL,DE
  LD DE,Coords_NS
  LD BC,$0004
  LDIR
  LD A,(Temp_RoomType)    ; Base on room type,
  INC A
  CALL Outside_DataRestore
  LD DE,$0007             ; Beep!
  LD HL,$0159
  CALL $03B5
  LD IX,(Room_CurrentPtr)
  LD A,(IX+$02)
  LD (AreaColour),A
; Handle room based on type.
  LD A,(Temp_RoomType)
  CP $01
  JR NZ,Room_Initialise_15
; Room Type 01 Seller
  LD A,(IX+$03)           ; Get object being sold and fill shelves with item.
  LD HL,Shop_Shelves
  LD B,$02                ; Number of shelves.
  OR $80                  ; Mark as stolen.
Room_Initialise_11:
  LD (HL),A               ; Put onto next shelf.
  INC HL
  DJNZ Room_Initialise_11
  LD (HL),B               ; Clear.
  INC HL
  LD (HL),B
; This entry point is used by the routine at 88E7.
Room_Initialise_12:
  LD HL,Shop_InfoData
  LD (Room_CurrentInfoDataPtr),HL
  LD A,(IX+$03)           ; Keep a copy of the object linked to room. (sold or
                          ; bought)
  LD (Shop_ObjIndex),A
  LD HL,$0000
  LD ($B0E6),HL
  LD L,(IX+$04)           ; Get price of object (sold or bought).
  LD H,(IX+$05)
  LD (Obj_Price),HL
  LD A,H
  AND A
  JP NZ,Hero_DoorEntry
  LD A,L
  AND $0F
  LD (Obj_Price),A
  LD A,L
  RRA
  RRA
  RRA
  RRA
  AND $0F
  LD C,A
Room_Initialise_13:
  LD B,$04
  LD HL,Obj_Price
  XOR A
Room_Initialise_14:
  RLD
  INC HL
  DJNZ Room_Initialise_14
  DEC C
  JR NZ,Room_Initialise_13
  JP Hero_DoorEntry
; Room Type 02 Broker
Room_Initialise_15:
  CP $02
  JR NZ,Room_Initialise_16
  CALL Block_ClearMem     ; Clear shelves.

; Data block at 88E4
  DEFW Shop_Shelves
  DEFB $05

; Routine at 88E7
  JR Room_Initialise_12
; This entry point is used by the routine at Room_Initialise.
Room_Initialise_16:
  CP $0B
  JR Z,Room_Initialise_17
  CP $03
  JR NZ,Room_Initialise_19
; Room Type 03 Deposit, 0B
Room_Initialise_17:
  LD A,(IX+$03)           ; Get index of bitmap to display in picture.
  AND A
  JR Z,Room_Initialise_18
  LD HL,PictureMatrix_Deposit ; Clear picture.
  LD DE,$B103
  LD BC,$0008
  LD (HL),$7C
  LDIR
  LD (PictureMatrix_Deposit_Image),A ; Store image index.
Room_Initialise_18:
  LD HL,(Room_CurrentPtr) ; Offset to info data in room data.
  LD DE,$0003
  JR Room_Initialise_21
; Room Type 04, 08 Castle, 09 Bank, 0A Portal, 05 Gambling
Room_Initialise_19:
  CP $04
  JR Z,Room_Initialise_20
  CP $08
  JR Z,Room_Initialise_20
  CP $09
  JR Z,Room_Initialise_20
  CP $0A
  JR Z,Room_Initialise_20
  CP $05
  JR NZ,Room_Initialise_22
; 05 Gambling Room.
  CALL Block_ClearMem     ; Clear gambling room variables and data.

; Data block at 8926
  DEFW Gamble_Counter
  DEFB $0C

; Routine at 8929
;
; Used by the routine at 88E7.
Room_Initialise_20:
  LD HL,(Room_CurrentPtr)
  LD DE,$0002
; Initialise and Exit.
Room_Initialise_21:
  ADD HL,DE               ; Offset to info data in room data and store it.
  LD (Room_CurrentInfoDataPtr),HL
  LD HL,Inv_Pocket1       ; Make a copy of items carried.
  LD DE,Shop_Shelves
  LD BC,$0003
  LDIR
  JP Hero_DoorEntry
; Check room type.
Room_Initialise_22:
  CP $06
  JR NZ,Room_Initialise_24
; Room Type 06 Shield room
  LD HL,PictureMatrix_Deposit ; Blank out the picture.
  LD DE,$B103
  LD BC,$0008
  LD (HL),$7C
  LDIR
  LD A,(IX+$05)           ; Index of bitmap to display in picture.
  LD (PictureMatrix_Deposit_Image),A
  AND A
  JR NZ,Room_Initialise_23
  LD HL,(Room_CurrentPtr) ; A zero means the shield has been placed, copy the
                          ; text of the reward from the room data.
  LD DE,$0007
  ADD HL,DE
  LD DE,$B105
  LD BC,$0003
  LDIR
Room_Initialise_23:
  JP Room_Initialise_20
; Room Type 07 Gallery
Room_Initialise_24:
  LD HL,PictureMatrix_Gallery ; Fill the Gallery's picture matrix with spaces.
  LD DE,$B0FA
  LD BC,$0023
  LD (HL),$7C
  LDIR
  LD HL,PictureMatrix_Gallery_Image1 ; Starting with the byte that represent
                                     ; the first picture image.
  LD B,$04                ; Repeat for 4 pictures.
Room_Initialise_25:
  LD A,(IX+$05)           ; Get the index of the image that represents the
                          ; object to find.
  AND A
  JR NZ,Room_Initialise_26
  LD A,(IX+$07)           ; If its a zero, then use the image that represents
                          ; the object has been found.
Room_Initialise_26:
  LD (HL),A               ; Store the correct index into the part of the matrix
                          ; that is the picture.
  LD DE,$0009             ; Move onto the next picture matrix.
  ADD HL,DE
  LD DE,$0003             ; Move onto next next item for the room.
  ADD IX,DE
  DJNZ Room_Initialise_25
  JP Room_Initialise_20

; Handle being caught by the yoeman for theft.
;
; Used by the routine at Game_Main.
Hero_Arrest:
  LD A,(Hero_ArrestCount)
  CP $01
  JR NZ,Hero_Arrest_1
  CALL Message_DisplayAt

; Data block at 89A1
  DEFM "halt for the yeoman!" ; Halt for the yoemen
  DEFB $5E

; Routine at 89B6
  LD HL,Hero_Frame
  LD (HL),$12
  LD A,(Camera_Compass)
  BIT 1,A
  JR Z,Hero_Arrest_0
  INC (HL)
Hero_Arrest_0:
  LD A,$01
; This entry point is used by the routine at Hero_Arrest.
Hero_Arrest_1:
  INC A
  LD (Hero_ArrestCount),A
  CP $0F
  JP C,Game_Main_29
  CALL Message_DisplayAt

; Data block at 89D1
  DEFM "thievery is costly.." ; Thievery is costly
  DEFB $5E

; Routine at 89E6
  XOR A
  LD (Hero_ArrestCount),A
  CALL Block_ClearMem     ; Clear all pockets.

; Data block at 89ED
  DEFW Inv_Pocket1
  DEFB $03

; Routine at 89F0
  CALL Block_ClearMem

; Data block at 89F3
  DEFW IridiValue
  DEFB $04

; Routine at 89F6
  JP Offer_Handle_1

; Selects pocket 1 if current selection is on iridi.
;
; Used by the routines at Exit_CheckInv, 8AC4 and Shop_ChkLock.
Inv_AutoSelect:
  LD HL,Inv_Select
  LD A,(HL)
  AND A
  JR NZ,Inv_AutoSelect_0
  LD (HL),$01
Inv_AutoSelect_0:
  XOR A
  RET

; Room  Checks inventory on exit.
Exit_CheckInv:
  LD HL,Inv_Pocket1
  LD BC,$0003
  LD A,(Shop_ObjIndex)
  OR $80
  CPIR
  JR NZ,Inv_AutoSelect
  CP $94                  ; Check for stolen license.
  JP Z,Shop_Locked
  CP $B7                  ; Check for stolen platina.
  JP Z,Shop_Locked
; Stop Thief.
  CALL Message_DisplayAt

; Data block at 8A20
Str_StopThief:
  DEFM "stop thief!"
  DEFB $5E

; Routine at 8A2C
  JR Inv_AutoSelect
; ?
_8a2e:
  LD DE,_bb3b
  LD HL,Shop_Shelves
  LD BC,$0003
  LDIR
  LD DE,Inv_Pocket1
  LD C,$03
Exit_CheckInv_0:
  LD HL,_bb3b
  LD B,$03
  LD A,(DE)
Exit_CheckInv_1:
  CP (HL)
  JR NZ,Exit_CheckInv_2
  LD (HL),$00
  LD B,$01
Exit_CheckInv_2:
  INC HL
  DJNZ Exit_CheckInv_1
  INC DE
  DEC C
  JR NZ,Exit_CheckInv_0
  LD HL,_bb3b
  LD B,$03
  XOR A
  LD C,A
Exit_CheckInv_3:
  CP (HL)
  JR Z,Exit_CheckInv_4
  INC C
Exit_CheckInv_4:
  INC HL
  DJNZ Exit_CheckInv_3
  LD A,C
  AND A
  JR Z,Inv_AutoSelect
  LD DE,$0050             ; Take away 50 iridi from cash.
  LD HL,IridiValue
  CALL BCD_SubDE
  JR NC,Exit_DepositTaken
; This entry point is used by the routines at Offer_Handle and 8AC4.
Exit_NotEnough:
  CALL Message_DisplayAt  ; Displays not enough.

; Data block at 8A72
  DEFM "not enough!"
  DEFB $5E

; Routine at 8A7E
  OR $01
  RET
; This entry point is used by the routine at 8A2C.
Exit_DepositTaken:
  CALL Message_DisplayAt

; Data block at 8A84
  DEFM "deposit taken 50ir" ; Deposit taken 50ir
  DEFB $5E

; Routine at 8A97
  JP Inv_AutoSelect
Exit_8a9a:
  LD A,(Camera_Compass)
  CP $01
  JP NZ,Inv_AutoSelect
  LD IX,($B16E)
  LD B,$03
Exit_CheckInv_5:
  LD A,(IX+$06)
  CP (IX+$09)
  JR NZ,Shop_Locked
  INC IX
  DJNZ Exit_CheckInv_5
  JP Inv_AutoSelect
; This entry point is used by the routine at Shop_ChkLock.
Shop_Locked:
  CALL Message_Display

; Data block at 8ABA
  DEFM "locked"           ; locked
  DEFB $5E

; Routine at 8AC1
  OR $01
  RET

; Takes 200 iridi from cash.
  LD A,(Camera_Compass)
  CP $01
  JP NZ,Inv_AutoSelect
  LD DE,$0200
  LD HL,IridiValue
  CALL BCD_SubDE
  JP C,Exit_NotEnough
  CALL Message_Display

; Data block at 8ADB
  DEFM "fee deducted 200ir" ; Fee deducted 200ir
  DEFB $5E

; Routine at 8AEE
  JP Inv_AutoSelect

; Room  Checks to see if hero can leave strong room.
Shop_ChkLock:
  LD HL,Inv_Pocket1       ; Check to see if carrying a Pearl.
  LD A,$32
  LD BC,$0003
  CPIR
  JP NZ,Inv_AutoSelect    ; If not then you can leave.
  LD HL,Inv_Pocket1       ; Check to see if carrying the thieves license.
  LD A,$14
  LD BC,$0003
  CPIR
  JP Z,Inv_AutoSelect     ; If so, then you can leave.
  JP Shop_Locked          ; If not then show room as locked.

; Action  Handle Offer
;
; Used by the routines at Offer_HandleSkar, Offer_HandleRyde, Offer_HandleKara,
; Offer_HandleKeli, Offer_HandleKahn, Offer_HandleDain, Offer_HandleMhor,
; Offer_HandleTeth, Offer_HandlePita, Offer_HandleBren and Offer_HandleLoeg.
; Input:  IX  Ptr to person being offered to. BC  Ptr to pocket holding object
; being offered. D  Index of object received if an exchange takes place. E
; Index to an expected object.
Action_HandleOffer:
  LD A,(BC)               ; Get object being offered.
  AND $7F
  CP E                    ; Is it the same as object expected.
  JR Z,Action_HandleOffer_0
  BIT 3,(IX+$13)
  JP Z,Offer_DontWantMessage ; "I don't want..."
  XOR A                   ; Clear pocket.
  LD (BC),A
  JP Offer_Handle_10      ; "How generous"
Action_HandleOffer_0:
  LD A,D                  ; If the object is expected, see if there is anything
                          ; in exchange.
  LD (BC),A
  RES 6,(IX+$13)          ; Clear flag.
  CALL Inv_Update         ; Update the screen.
  CALL Message_DisplayAt

; Data block at 8B2C
Msg_FairExchange:
  DEFM "a fair exchange!" ; A fair exchange
  DEFB $5E

; Routine at 8B3D
  JP Stage_Draw

; Person  Skar, handle an offer.
Offer_HandleSkar:
  LD E,$32                ; Offer 'Pearl'
  LD D,$33                ; Receive 'scroll' (2**25)
  BIT 0,(IX+$13)
  JR Z,Action_HandleOffer
  LD A,(BC)               ; Offer 'spell' (show the lady!)
  AND $7F
  XOR $31
  JP NZ,Offer_DontWantMessage
  LD (BC),A               ; Clear pocket.
  RES 0,(IX+$13)          ; Clear flag so that Skar is visible.
  LD (IX+$17),$01
  CALL Inv_Update
  CALL Message_DisplayAt

; Data block at 8B61
  DEFM "i am seen!"       ; I am seen
  DEFB $5E

; Routine at 8B6C
  JP Stage_Draw

; Person  Ryde, handle an offer.
Offer_HandleRyde:
  LD E,$2A                ; Offer 'Map' (galacia is far)
  LD D,$23                ; Receive 'Shield' (belinus)
  JP Action_HandleOffer

; Person  Kara, handle an offer.
Offer_HandleKara:
  LD E,$2B                ; Offer 'Philtre'
  LD D,$34                ; Receive 'scrip' (Eve)
  JP Action_HandleOffer

; Person  Keli, handle an offer.
Offer_HandleKeli:
  LD E,$2B                ; Offer 'Philtre'
  LD D,$35                ; Receive 'scrip' (Did)
  JP Action_HandleOffer

; Person  Kahn, handle an offer.
Offer_HandleKahn:
  LD E,$2B                ; Offer 'Philtre'
  LD D,$36                ; Receive 'scrip' (Pop)
  JP Action_HandleOffer

; Person  Dain, handle an offer.
Offer_HandleDain:
  LD E,$1D                ; Offer 'Lyre'
  LD D,$22                ; Receive 'Shield' (Midir)
  JP Action_HandleOffer

; Person  Mhor, handle an offer.
Offer_HandleMhor:
  LD E,$0F                ; Offer 'book' (Verit ghoom)
  LD D,$2C                ; Receive 'book' (Look for my rest)
  JP Action_HandleOffer

; Person  Teth, handle an offer.
Offer_HandleTeth:
  LD E,$28                ; Offer 'statue'
  LD D,$27                ; Receive 'd-key'
  JP Action_HandleOffer

; Person  Pita, handle an offer.
Offer_HandlePita:
  LD A,(BC)               ; Offering 'Necklace', 'Bracelet', 'Brooch' or
                          ; 'Earing' (1e ~ 22)
  CP $1E
  JP C,Offer_DontWantMessage
  CP $22
  JP NC,Offer_DontWantMessage
  LD E,A                  ; Set as object being offered.
  ADD A,$0F
  LD D,A                  ; Receive : 'Scrip'
  JP Action_HandleOffer

; Person  Bren, handle an offer.
Offer_HandleBren:
  LD A,(BC)               ; See which object Bren is looking for.
  BIT 5,(IX+$13)
  JR Z,Offer_HandleBren_0
  LD E,$02                ; Offer : 'moleskin'
  CP E
  JP NZ,Offer_DontWantMessage ; Refuse offer.
  LD D,$29                ; Receive : 'map' (gold in ashes)
  RES 5,(IX+$13)
  JP Action_HandleOffer
Offer_HandleBren_0:
  LD E,$37                ; Offer : 'platina'
  CP E
  JP NZ,Offer_DontWantMessage ; Refuse offer.
  LD D,$2A                ; Receive : 'map' (galacia is far)
  SET 5,(IX+$13)
  JP Action_HandleOffer

; Person  Loeg, handle an offer.
Offer_HandleLoeg:
  LD E,$3B                ; Offer : 'l-key'
  LD D,E                  ; Receive : 'l-key' back.
  JP Action_HandleOffer

; Rooms  Jump vector for each type. Called when entered.
Room_TypeJumpVector:
  DEFW Room_Null          ; [0] Outside
  DEFW Room_Null          ; [1] Seller
  DEFW Room_Null          ; [2] Broker
  DEFW Room_Null          ; [3] Deposit
  DEFW Room_CastleLock    ; [4] Castle, combination lock room.
  DEFW Room_jvGambling    ; [5] Iomain Ludum
  DEFW Room_jvC           ; [6] Shield Room
  DEFW Room_GalleryHandler ; [7] Gallery
  DEFW Room_jvNull2       ; [8] Castle
  DEFW Room_jvNull2       ; [9] Bank
  DEFW Room_jvNull2       ; [A] Portal
  DEFW Room_jvNull2       ; [B] Broker

; Room  Call all of the room events.
;
; Used by the routine at Stage_Draw.
Room_Events:
  LD HL,(Room_Type)       ; Get current room's special function and call it.
  LD H,$00
  ADD HL,HL
  LD DE,Room_TypeJumpVector
  ADD HL,DE
  LD E,(HL)
  INC HL
  LD H,(HL)
  LD L,E
  CALL JP_HL
  LD IX,LinkList_Bg_Ptr   ; Get ptr to link list.
Room_Events_0:
  LD L,(IX+$00)           ; Get address of next link.
  LD H,(IX+$01)
  LD A,L                  ; check for null ptr, end of list.
  OR H
  RET Z
  PUSH HL                 ; Put address of link into IX, putting the previous
                          ; address on the stack.
  EX (SP),IX
  LD A,(IX+$02)           ; Check for unsed link and remove it if required.
  AND A
  JR NZ,Room_Events_1
  CALL List_RemoveLink
  JR Room_Events_0        ; Next link.
Room_Events_1:
  LD L,(IX+$03)           ; Call store special function.
  LD H,(IX+$04)
  CALL JP_HL
  POP HL                  ; Remove old link address from stack.
  JR Room_Events_0        ; Next link.

; Create a door opening / closing event.
;
; Used by the routine at Action_Enter. Creates an event for opening the door
; which will be called.
Event_CreateDoor:
  CALL LinkList_CreateNewBg ; Set up some memory
  RET Z                   ; No memory left.
  LD HL,Event_NumDoors    ; Increase door event count
  INC (HL)
  LD HL,EventDoorOpenClose ; Store the function to use.
  LD (IX+$03),L
  LD (IX+$04),H
  LD A,(ExitFound_A)      ; Store the type of door.
  LD (IX+$02),A
  LD DE,(ExitFound_Coords) ; Set the coords based on position and camera.
  LD HL,(Coords_NS)
  LD A,(Camera_Compass)
  LD (IX+$0A),A
  BIT 0,A
  JR Z,Event_CreateDoor_0
  LD HL,(Coords_EW)
  EX DE,HL
Event_CreateDoor_0:
  LD (IX+$05),L
  LD (IX+$06),H
  LD (IX+$07),E
  LD (IX+$08),D
  LD (IX+$09),$10
  LD A,(Room_CurrentIndex) ; Store room (?)
  LD (IX+$0C),A
  OR $01                  ; Return (true)
  RET

; Create a door bitmap for opening / closing animation.
;
; Used by the routine at EventDoorOpenClose. Input:  A  Door animation frame
; index. IX  Door information Blits inner 'door' part of door image to memory.
; Memory image if shifted for 4 pixel animation.
Door_CreateBitmap:
  PUSH AF
  LD L,(IX+$02)           ; Calculate address of bitmap info from index.
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  LD DE,Bitmap_PtrTable
  ADD HL,DE
  LD E,(HL)               ; Get address of bitmap.
  INC HL
  LD D,(HL)
  LD HL,$0029             ; Offset to miss out the door frame part of image.
  ADD HL,DE
  LD DE,ScratchPad        ; Use spare memory for blitting to.
  CP $02
  JR NC,Door_CreateBitmap_1
; Door fully closed.
  LD C,$C0
Door_CreateBitmap_0:
  LDI                     ; Blit two columns
  LDI
  LDI
  INC HL                  ; Skip two columns (door frame)
  INC HL
  DEC C
  JR NZ,Door_CreateBitmap_0
  JR Door_CreateBitmap_6
Door_CreateBitmap_1:
  CP $04
  JR NC,Door_CreateBitmap_3
; Door one third open.
  LD C,$90
  LD A,$FF
Door_CreateBitmap_2:
  INC HL
  LDI                     ; Blit two columns
  LDI
  LD (DE),A               ; Blit blank column
  INC DE
  INC HL                  ; Skip two columns
  INC HL
  DEC C
  JR NZ,Door_CreateBitmap_2
  JR Door_CreateBitmap_6
Door_CreateBitmap_3:
  CP $06
  JR NC,Door_CreateBitmap_5
; Door two thirds open.
  LD C,$60
  LD A,$FF
Door_CreateBitmap_4:
  INC HL                  ; Skip two columns
  INC HL
  LDI                     ; Blit one column
  LD (DE),A               ; Blank two columns
  INC DE
  LD (DE),A
  INC DE
  INC HL                  ; Skip two columns
  INC HL
  DEC C
  JR NZ,Door_CreateBitmap_4
  JR Door_CreateBitmap_6
; Door fully open.
Door_CreateBitmap_5:
  LD HL,ScratchPad        ; Blank image.
  INC DE
  LD (HL),$FF
  LD BC,$008F
  LDIR
; Determine inbetween frame.
Door_CreateBitmap_6:
  POP AF                  ; Get back animation count
  BIT 0,A                 ; If the frame index is even, finish.
  RET Z
  LD HL,ScratchPad_DoorBottom ; If the frame index is odd, shift the image 4
                              ; pixels.
  LD B,$30
; Shift door by a nibble
Door_CreateBitmap_7:
  LD A,$FF
  RLD
  DEC HL
  RLD
  DEC HL
  RLD
  DEC HL
  DJNZ Door_CreateBitmap_7
Door_PreFrameTable:
  RET

; Door Table of animation frames for door.
Door_FrameTable:
  DEFB $00,$01,$02,$03,$04,$05,$06,$06
  DEFB $06,$06,$06,$05,$04,$03,$02,$01
  DEFB $00,$00,$00

; Routine at 8CFD
_8cfd:
  RST $38

; Event  Door opening or closing.
EventDoorOpenClose:
  INC (IX+$0D)            ; Door animation counter
  LD E,(IX+$0D)           ; Use counter as index to table for the next
                          ; animation frames.
  LD D,$00
  LD HL,Door_PreFrameTable
  ADD HL,DE
  LD A,(HL)               ; Get frame
  CP $FF
  JR NZ,EventDoorOpenClose_0
; Event Complete
  LD (IX+$02),$00         ; Mark event object as finished.
  LD HL,Event_NumDoors
  DEC (HL)
  LD A,(IX+$0E)
  AND A
  RET NZ
  LD HL,Flag_DoorEntry
  SET 2,(HL)
  RET
EventDoorOpenClose_0:
  CP $06
  JR NZ,EventDoorOpenClose_1
  LD A,(IX+$0E)           ; Door fully open...
  AND A
  JR NZ,EventDoorOpenClose_1
  LD A,(Flag_DoorEntry)
  SET 1,A
  LD (Flag_DoorEntry),A
EventDoorOpenClose_1:
  LD A,(Room_CurrentIndex)
  CP (IX+$0C)
  RET NZ
  LD A,(Camera_Compass)
  CP (IX+$0A)
  RET NZ
  LD C,L                  ; Keep a copy of the frame index table ptr.
  LD B,H
  BIT 0,A
  JR NZ,EventDoorOpenClose_2
  LD HL,(Coords_NS)
  LD E,(IX+$05)
  LD D,(IX+$06)
  AND A
  SBC HL,DE
  RET NZ
  LD HL,(Coords_EW)
  LD E,(IX+$07)
  LD D,(IX+$08)
  JR EventDoorOpenClose_3
EventDoorOpenClose_2:
  LD HL,(Coords_EW)
  LD E,(IX+$07)
  LD D,(IX+$08)
  AND A
  SBC HL,DE
  RET NZ
  LD HL,(Coords_NS)
  LD E,(IX+$05)
  LD D,(IX+$06)
EventDoorOpenClose_3:
  CALL sub_abs
  LD DE,$0023
  AND A
  SBC HL,DE
  RET NC
  LD A,(IX+$02)
  CP $94
  RET NC
  LD A,(BC)               ; Create bitmap based on animation count.
  CALL Door_CreateBitmap
  LD HL,ScratchPad        ; Create a bitmap info for an animated door.
  LD (Bitmap_PtrTable),HL
  LD A,$86
  LD (Bitmap_PtrTableOffHeight),A
  LD A,$03
  LD (Bitmap_PtrTableOffWidth),A
  LD A,$01                ; Blit image.
  JP ObjNode_BlitShft

; Sets up and blits the flame, if required. Input:  IX  Address of torch data.
Bg_TorchBlitFlame:
  LD A,(Camera_Compass)   ; Make sure the camera is facing the torch, if not
                          ; end routine.
  CP (IX+$0A)
  JR Z,Bg_TorchBlitFlame_1
Bg_TorchBlitFlame_0:
  LD (IX+$02),$00         ; End.
  RET
Bg_TorchBlitFlame_1:
  LD HL,(Coords_NS)       ; Get correct coords of camera, along the expected
                          ; axis (based on compass).
  BIT 0,A
  JR NZ,Bg_TorchBlitFlame_2
  LD HL,(Coords_EW)
Bg_TorchBlitFlame_2:
  LD E,(IX+$05)           ; Get coords of torch.
  LD D,(IX+$06)
  BIT 1,A
  JR NZ,Bg_TorchBlitFlame_3
  EX DE,HL
Bg_TorchBlitFlame_3:
  AND A                   ; Get difference between the two to see if torch is
                          ; on screen.
  SBC HL,DE
  LD DE,$0021
  AND A
  ADC HL,DE
  JR Z,Bg_TorchBlitFlame_0 ; Not visible.
  JP M,Bg_TorchBlitFlame_0
  LD DE,$0042
  AND A
  SBC HL,DE
  JR NC,Bg_TorchBlitFlame_0
  ADD HL,DE
  SRL H                   ; Start with attributes and colour red.
  RR L
  LD DE,Offscreen_Attr
  ADD HL,DE
  LD A,(HL)
  AND $F8
  OR $02
  LD (HL),A
  INC HL
  LD (HL),A
  LD A,(Room_Type)        ; Only outside, room 0, displays torches that toggle
                          ; for day and night. Indoors stay on all the time.
  AND A
  JR NZ,Bg_TorchBlitFlame_5
  LD A,(Flag_dayNight)    ; Check for night time.
  AND A
  JR NZ,Bg_TorchBlitFlame_4
  LD A,(IX+$0B)           ; Test for fire frame.
  CP $15
  JR NZ,Bg_TorchBlitFlame_5
  LD A,$A2                ; Set to fire bitmap index.
  JR Bg_TorchBlitFlame_6
Bg_TorchBlitFlame_4:
  LD A,$15                ; Blank, no fire.
  JR Bg_TorchBlitFlame_6
Bg_TorchBlitFlame_5:
  LD A,(IX+$0B)           ; Toggle fire frame
  XOR $01
Bg_TorchBlitFlame_6:
  LD (IX+$0B),A
  LD (IX+$09),$08
  LD A,$01                ; Set node data object type flag for blit function.
  JP ObjNode_BlitShft     ; Blit...

; Main text for the gambling room.
Msg_DiceStake:
  DEFM "dice, min.stake: 200+a:+b:"
  DEFB $16
  DEFB $02
  DEFB $09
  DEFB $5E

; Displays text required based on amount staked.
;
; Used by the routine at Room_jvGambling.
Gamble_DisplayStakes:
  LD HL,Msg_DiceStake     ; Display the main part of the text
  CALL Object_StringExtraDisplay
  LD HL,(Gamble_leftValue) ; See if there is any bets placed in 'A'.
  LD DE,($B0F0)
  AND A
  ADC HL,DE
  JR NZ,Gamble_DisplayStakes_0
  CALL Print_StrFromStack ; If no bets, display the winning values for 'A'.

; Data block at 8E47
  DEFM "2-1   2,3,4,10,11,12"
  DEFB $5E

; Routine at 8E5C
  JR Gamble_DisplayStakes_1
; This entry point is used by the routine at Gamble_DisplayStakes.
Gamble_DisplayStakes_0:
  LD HL,Gamble_leftValue  ; Else display how much has been placed on 'A'.
  CALL Display_DecimalValue.
  CALL Print_StrFromStack

; Data block at 8E67
  DEFM " bet"
  DEFB $5E

; Routine at 8E6C
;
; Used by the routine at 8E5C.
Gamble_DisplayStakes_1:
  CALL Print_StrFromStack

; Data block at 8E6F
  DEFB $16
  DEFB $03
  DEFB $09
  DEFB $5E

; Routine at 8E73
  LD HL,(Gamble_rightValue) ; See if anything has been placed onto 'B'
  LD DE,($B0F4)
  AND A
  ADC HL,DE
  JR NZ,Gamble_DisplayStakes_2
  CALL Print_StrFromStack ; If no bets, display the winning values for 'B'.

; Data block at 8E82
  DEFM "evens 5,6,8,9"
  DEFB $5E

; Routine at 8E90
  RET
; This entry point is used by the routine at 8E73.
Gamble_DisplayStakes_2:
  LD HL,Gamble_rightValue ; Else display amount.
  CALL Display_DecimalValue.
  CALL Print_StrFromStack

; Data block at 8E9A
  DEFM " bet"
  DEFB $5E

; Routine at 8E9F
  RET

; Blit a character offset in the vertical axis.
;
; Used by the routines at Room_CastleLock and Room_jvGambling. Input:  IX  Ptr
; to sprite info When offset, the blit continues onto the next character.
char_BlitScrolledVert:
  LD A,(Camera_Compass)   ; See if visible based on camera direction.
  CP $01
  RET NZ
  PUSH DE
  PUSH HL
  LD L,(IX+$00)           ; Get character to blit.
  LD H,$00                ; Convert into bitmap address.
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  LD E,(IX+$04)           ; Get scan offset
  LD D,$00
  ADD HL,DE
  LD DE,Charset_Start
  ADD HL,DE
  LD (Bitmap_PtrTable),HL ; Store in bitmap info scratchpad.
  LD E,(IX+$07)           ; Calculate position on screen and see if visible.
  LD D,(IX+$08)
  LD HL,(Coords_EW)
  AND A
  SBC HL,DE
  JR NZ,char_BlitScrolledVert_0
  LD E,(IX+$05)
  LD D,(IX+$06)
  LD HL,(Coords_NS)
  CALL sub_abs
  LD DE,$0021
  AND A
  SBC HL,DE
  JR NC,char_BlitScrolledVert_0
  LD A,$01                ; Store bitmap size into scatchpad.
  LD (Bitmap_PtrTableOffWidth),A
  LD (Bitmap_PtrTableOffHeight),A
  CALL ObjNode_BlitShft   ; Blit at correct position on screen.
char_BlitScrolledVert_0:
  POP HL
  POP DE
  RET

; Room handler, does nothing.
Room_Null:
  RET

; Room handler for the Castle combination lock room.
;
; This is the room with the rotating letters that act as a comination lock in
; the Castle.
Room_CastleLock:
  LD HL,($B16E)           ; Gets a pointer to the store holding the three
                          ; characters being displayed.
  LD DE,$0009
  ADD HL,DE
  LD DE,(Room_CurrentInfoDataPtr) ; Get a pointer to the current room info.
  LD IX,_bb3e             ; Data used to rotate and display the letters.
  LD B,$03                ; Three roating letter locks to handle.
Room_CastleLock_0:
  PUSH BC
  INC DE                  ; Move room pointer onto next object in the room.
  LD A,(IX+$03)           ; Get counter
  CP $0D
  JR NC,Room_CastleLock_1
  LD A,(DE)               ; See if an object has been placed on a locks plinth.
  AND A
  LD A,$00
  JR NZ,Room_CastleLock_4
; No object on plinth.
Room_CastleLock_1:
  LD A,(IX+$03)           ; Increase counter if there is no object to stop the
                          ; lock rotating.
  INC A
  CP $14
  JR C,Room_CastleLock_3  ; Less than $14,
  LD A,(HL)               ; Get the next letter to rotate to.
  INC A
  CP $7B                  ; check to see if we have reached 'Z'
  JR C,Room_CastleLock_2
  LD A,$61                ; Reset to 'A' if reached.
Room_CastleLock_2:
  LD (HL),A               ; and store new letter value.
  XOR A
  LD (IX+$04),A           ; Reset bitmap offset counter.
  JR Room_CastleLock_4
; Rotate letter image.
Room_CastleLock_3:
  CP $11                  ; Only rotate letter if the counter if $11 or more.
  JR C,Room_CastleLock_4
  INC (IX+$04)            ; Increase bitmap offset to rotate the letter image.
  INC (IX+$04)
Room_CastleLock_4:
  LD (IX+$03),A           ; Store new counter value.
  LD A,(HL)               ; Get current letter value, store in sprite info and
                          ; draw the letter.
  LD (IX+$00),A
  CALL char_BlitScrolledVert
  LD BC,$000C             ; Shift onto next lock information.
  ADD IX,BC
  INC HL
  POP BC
  DJNZ Room_CastleLock_0
  RET

; Handle the dice in the gambling room.
Room_jvGambling:
  LD HL,$0200
  LD (Account_Cost),HL
  LD IX,Gamble_Dice1
  LD HL,Gamble_Counter
  LD A,(HL)
  AND A
  JR NZ,Room_jvGambling_5
; Restart the game cycle.
  LD (Room_Flags),A
  LD HL,$BB7A
  LD (HL),$FF
  LD DE,$BB7B
  LD BC,$0007
  LDIR
  CALL Message_Display

; Data block at 8F67
  DEFM "place your bets"
  DEFB $5E

; Update state counter.
;
; Used by the routines at 8FC9, 9094, 90D6 and 9106.
Room_jvGambling_0:
  LD HL,Gamble_Counter
  INC (HL)
; Draw dice.
Room_jvGambling_1:
  LD IX,Gamble_Dice1
  LD B,$02
Room_jvGambling_2:
  PUSH BC
  CALL char_BlitScrolledVert
  LD BC,$000C
  ADD IX,BC
  POP BC
  DJNZ Room_jvGambling_2
  LD HL,Gamble_leftValue
  LD DE,$BB7A
  LD BC,$0008
  LD A,(_7f6e)
  AND A
  JR NZ,Room_jvGambling_4
Room_jvGambling_3:
  LD A,(DE)
  CP (HL)
  JP NZ,Room_jvGambling_4
  INC HL
  INC DE
  DEC C
  JR NZ,Room_jvGambling_3
  RET
Room_jvGambling_4:
  LDIR
  XOR A
  LD (_7f6e),A
  JP Gamble_DisplayStakes
; Game cycle.
Room_jvGambling_5:
  CP $50
  JR C,Room_jvGambling_0  ; < $50, "place bets" mode, just update.
  JR NZ,Room_jvGambling_6 ; > $50,other modes
  LD (Room_Flags),A
; No more bets mode.
  CALL Message_Display

; Data block at 8FBC
  DEFM "no more bets"
  DEFB $5E

; Routine at 8FC9
  LD A,(_b11e)            ; Put random value into role countdown for both dice.
  ADD A,(IY+$3E)
  LD B,A
  AND $0F
  ADD A,$12
  LD (IX+$03),A
  LD A,B
  RRA
  RRA
  RRA
  RRA
  AND $0F
  ADD A,$12
  LD (IX+$0F),A
  JP Room_jvGambling_0
; This entry point is used by the routine at Room_jvGambling_0.
Room_jvGambling_6:
  CP $53
  JR NC,Room_jvGambling_12
  PUSH IX
  LD B,$02                ; Two dice.
Room_jvGambling_7:
  LD A,(IX+$03)           ; Check countdown for dice.
  AND A
  JR Z,Room_jvGambling_11 ; Skip if hit zero.
  LD A,(IX+$04)           ; Increase offset by 2
  ADD A,$02
  CP $08                  ; Until it gets to 8, move onto the next character.
  JR C,Room_jvGambling_10
  LD A,(IX+$00)
  INC A
  CP (IX+$02)             ; Check to see if the current character is out of
                          ; bounds and reset back to the first.
  JR C,Room_jvGambling_8
  LD A,(IX+$01)
Room_jvGambling_8:
  LD (IX+$00),A           ; Update current character.
  DEC (IX+$03)            ; Count down.
  JR NZ,Room_jvGambling_9
  INC (HL)                ; Increase current mode to show this dice has
                          ; stopped.
Room_jvGambling_9:
  XOR A                   ; Reset bitmap offset so that full dice face is
                          ; shown.
Room_jvGambling_10:
  LD (IX+$04),A
Room_jvGambling_11:
  LD DE,$000C             ; Move onto next dice.
  ADD IX,DE
  DJNZ Room_jvGambling_7
  POP IX                  ; Get first dice info address.
  JP Room_jvGambling_1
Room_jvGambling_12:
  CP $5A
  JP NZ,Room_jvGambling_0
; Display results
  XOR A
  LD (Room_Flags),A
  LD (HL),$D7             ; Clear message line.
  CALL Message_Display

; Data block at 9030
  DEFB $5E

; Routine at 9031
  LD A,(IX+$00)
  ADD A,(IX+$0C)
  SUB $A0
  PUSH AF                 ; Display the value.
  LD C,A
  LD B,$00
  CALL $1A1B
  CALL Print_StrFromStack

; Data block at 9043
  DEFM ": "
  DEFB $5E

; Routine at 9046
  POP AF
  CP $07
  JP Z,Room_Gambling_HouseWins
  CP $05
  JR C,Room_Gambling_CheckA
  CP $0A
  JR NC,Room_Gambling_CheckA
  JP Room_Gambling_CheckB
; Check for 'A' winning.
Room_Gambling_CheckA:
  CALL Search_NonZero     ; See if stake 'A' holds any money.

; Data block at 905A
  DEFW Gamble_leftValue
  DEFB $04

; Routine at 905D
  JP Z,Room_Gambling_HouseWins
  LD HL,Gamble_leftValue  ; '2:1' Add double the amount staked into winnings.
  LD DE,TempAl
  LD BC,$0004
  LDIR
  LD HL,TempAl
  LD DE,TempAl
  CALL ValueAddAsBCDCarry
  LD HL,Gamble_leftValue
  LD DE,TempAl
  CALL ValueAddAsBCDCarry
  CALL Print_StrFromStack ; Display message.

; Data block at 9080
  DEFM "a wins "
  DEFB $5E

; Routine at 9088
  LD HL,TempAl            ; Along with the new amount.
  CALL Display_DecimalValue.
  CALL Block_ClearMem     ; Clear stake 'B'

; Data block at 9091
  DEFW Gamble_rightValue
  DEFB $04

; Routine at 9094
  LD HL,(Room_CurrentInfoDataPtr) ; Update the background.
  INC HL
  INC HL
  LD A,(HL)
  LD (HL),$00
  AND A
  CALL NZ,Bg_DrawAll
  JP Room_jvGambling_0
; Check for 'B' winning.
Room_Gambling_CheckB:
  CALL Search_NonZero     ; See if stake 'B' is zero.

; Data block at 90A6
  DEFW Gamble_rightValue  ; Ptr to stake 'B'
  DEFB $04                ; number ofbytes to test.

; Routine at 90A9
  JR Z,Room_Gambling_HouseWins
  LD HL,Gamble_rightValue ; 'evens' : Double the amount in the stake.
  LD DE,TempAl
  LD BC,$0004
  LDIR
  LD HL,Gamble_rightValue
  LD DE,TempAl
  CALL ValueAddAsBCDCarry
  CALL Print_StrFromStack ; Display message.

; Data block at 90C2
  DEFM "b wins "
  DEFB $5E

; Routine at 90CA
  LD HL,TempAl
  CALL Display_DecimalValue. ; Display updated stake.
  CALL Block_ClearMem     ; Clear stake 'A'.

; Data block at 90D3
  DEFW Gamble_leftValue
  DEFB $04

; Routine at 90D6
  LD HL,(Room_CurrentInfoDataPtr) ; Update the background.
  INC HL
  LD A,(HL)
  LD (HL),$00
  AND A
  CALL NZ,Bg_DrawAll
  JP Room_jvGambling_0
; House Wins
Room_Gambling_HouseWins:
  CALL Block_ClearMem     ; Clear all stakes.

; Data block at 90E7
  DEFW Gamble_leftValue   ; Ptr to stake that lost.
  DEFB $08

; Routine at 90EA
  LD HL,(Room_CurrentInfoDataPtr) ; Redraw the background.
  INC HL
  LD A,(HL)
  LD (HL),$00
  INC HL
  OR (HL)
  LD (HL),$00
  CALL NZ,Bg_DrawAll
  CALL Print_StrFromStack ; Display the message.

; Data block at 90FB
  DEFM "house wins"
  DEFB $5E

; Routine at 9106
  JP Room_jvGambling_0

; Room jump vector,
Room_jvC:
  LD IX,(Room_CurrentInfoDataPtr)
  LD A,(IX+$01)
  AND $7F
  RET Z
  XOR (IX+$04)
  RET NZ
  LD (IX+$03),A
  LD A,(IX+$02)
  LD (IX+$01),A
  LD HL,($B16E)
  LD DE,$0007
  ADD HL,DE
  LD DE,$B105
  LD BC,$0003
  LDIR
  JP Bg_DrawAll

; Room handler for Galleries.
Room_GalleryHandler:
  LD IX,(Room_CurrentInfoDataPtr) ; Get data for current room.
  LD A,(IX+$01)           ; See if there is an object on the one object
                          ; placement plinth.
  AND $7F                 ; Do nothing if not.
  RET Z
  LD B,$04
  LD HL,PictureMatrix_Gallery_Image1 ; Address of pictures character matrix.
Room_GalleryHandler_0:
  CP (IX+$04)             ; See if object on the plinth matches a picture's
                          ; object.
  JR Z,Room_GalleryHandler_1
  LD DE,$0003
  ADD IX,DE
  LD DE,$0009
  ADD HL,DE
  DJNZ Room_GalleryHandler_0
  RET                     ; Object not found in pictures, ignore it.
; Object found.
Room_GalleryHandler_1:
  LD A,(IX+$05)           ; Replace character being displayed.
  LD (HL),A
  LD (IX+$03),$00         ; Reset character displayed in room data to show
                          ; correct object has been placed.
  LD IX,(Room_CurrentInfoDataPtr)
  LD (IX+$01),$00         ; Clear object on plinth
  LD A,(IX+$03)           ; See if all objects have been placed.
  OR (IX+$06)
  OR (IX+$09)
  OR (IX+$0C)
  JP NZ,Bg_DrawAll
  LD A,(IX+$02)           ; Get index of reward object and place on plinth.
  LD (IX+$01),A
  JP Bg_DrawAll

; Room jump vector, NULL
Room_jvNull2:
  RET

; Background  Draw a single column of a furniture bitmap.
;
; Used by the routine at Bg_DrawColumn.
Bg_DrawItemColumn:
  LD (Bitmap_temp),HL
  LD L,(IX+$02)
  CALL Bitmap_CopyFrame
  LD HL,(Bitmap_temp)
  LD A,(Bitmap_InfoCache_Height)
  AND $7F
  RLA
  RLA
  RLA
  LD E,A
  LD D,$00
  ADD HL,DE
  EX DE,HL
  LD HL,$0050
  AND A
  SBC HL,DE
  RET C
  ADD HL,HL
  LD E,L
  LD D,H
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  ADD HL,DE
  LD DE,(Ptr_Offscreen)
  ADD HL,DE
  LD (Temp_BlitTo),HL
  LD E,(IX+$00)
  LD D,(IX+$01)
  LD HL,(Coords_EW)
  LD A,(Camera_Compass)
  BIT 0,A
  JR Z,Bg_DrawItemColumn_0
  LD HL,(Coords_NS)
Bg_DrawItemColumn_0:
  CALL sub_abs
  EX DE,HL
  LD A,(Bitmap_InfoCache_Width)
  AND $7F
  LD L,A
  LD H,$00
  LD A,(Hero_LastDirection)
  CP $02
  JR Z,Bg_DrawItemColumn_1
; Moving left.
  EX DE,HL                ; Calculate which bit of bitmap if visible.
  AND A
  SBC HL,DE
  EX DE,HL
  LD HL,$0020
  SBC HL,DE
  JR Bg_DrawItemColumn_2
; Moving right.
Bg_DrawItemColumn_1:
  ADD HL,DE               ; Calculate which bit of bitmap if visible.
  LD DE,$0022
  AND A
  SBC HL,DE
Bg_DrawItemColumn_2:
  SRL H
  RR L
  EX DE,HL
; Blit a single 8 pixel column of a bitmap, held in the bitmap info cache.
; +----+-------------------------------------------------------+
; | DE | Byte / Column offset of bitmap pixels, to start from. |
; +----+-------------------------------------------------------+
Bitmap_DrawColumn:
  LD BC,(Bitmap_InfoCache) ; Get the address of the bitmap and offset to the
                           ; correct column for blitting.
  EX DE,HL
  ADD HL,BC
  PUSH HL
  EX (SP),IX
  LD HL,(Temp_BlitTo)     ; Get the address of where to blit too.
  LD A,(Bitmap_InfoCache_Height)
  AND $7F
  EX AF,AF'               ; Calculate number of bytes to skip for each bitmap
                          ; row.
  LD A,(Bitmap_InfoCache_Width)
  AND $7F
  LD C,A
  LD B,$00
  LD DE,$0022             ; Width of offscreen.
  EX AF,AF'               ; Calculate height in pixels.
  AND A
  RLA
  RLA
  RLA
Bg_DrawItemColumn_3:
  EX AF,AF'
  LD A,(IX+$00)           ; Get byte and mask out shape from background.
  XOR (HL)
  LD (HL),A
  ADD HL,DE               ; Next line down.
  ADD IX,BC               ; Skip rest of bitmap for that row.
  EX AF,AF'
  DEC A                   ; Next row.
  JR NZ,Bg_DrawItemColumn_3
  POP IX
  RET

; Routine at 921B
;
; Used by the routine at Bg_DrawColumn.
  LD C,A
  LD B,$00
  LD L,(IX+$00)
  LD H,(IX+$01)
  RES 7,H
  SBC HL,BC
  LD E,L
  LD D,H
  ADD HL,BC
  ADD HL,BC
  LD C,L
  LD B,H
  LD HL,(_9689_coordsA)
  SBC HL,BC
  JR NC,$923E
  LD HL,(_968b_coordsB)
  SCF
  SBC HL,DE
  RET C
  AND A
  RET
  SCF
  RET

; Draws a pair of digits onto a door.
;
; Each bitmap holds two digits. Input:  A  Door number. L  Index of bitmap to
; blit digit too.
Door_DrawDigits:
  PUSH IX
  PUSH BC
  PUSH HL
; Calculate 'unit' and 'tens' value of digit.
  LD B,$FF
Door_DrawDigits_0:
  INC B
  SUB $0A
  JR NC,Door_DrawDigits_0
  ADD A,$0A
  LD C,A
  LD HL,(BmpPtr_DigitSet)
  LD E,C
  LD D,$00
  SRL E
  ADD HL,DE
; Copy left hand digit into memory.
  LD IX,Bitmap_temp
  LD DE,$0005
  PUSH BC
  LD B,$08                ; Number of scans to copy.
Door_DrawDigits_1:
  LD A,(HL)               ; Get next scan in bitmap
  BIT 0,C                 ; Odd character or even digit.
  JR NZ,Door_DrawDigits_2
  RRA                     ; Even characters need shift to the right half of
                          ; character cell.
  RRA
  RRA
  RRA
Door_DrawDigits_2:
  AND $0F                 ; Only need right hand nibble of bitmap.
  LD (IX+$00),A           ; Store result into memory
  ADD HL,DE               ; Next scan down.
  INC IX
  DJNZ Door_DrawDigits_1
; Work out 'tens' digit.
  POP BC
  LD A,B
  AND A
  JR Z,Door_DrawDigits_5
  LD C,B
  LD E,B
  LD HL,(BmpPtr_DigitSet)
  LD D,$00
  SRL E
  ADD HL,DE
  LD IX,Bitmap_temp       ; Copy right hand digit.
  LD DE,$0005
  LD B,$08
Door_DrawDigits_3:
  LD A,(HL)               ; Get next bitmap scan.
  BIT 0,C                 ; Check or odd or even digit.
  JR Z,Door_DrawDigits_4
  RLA                     ; Shift od digits to left hand column.
  RLA
  RLA
  RLA
Door_DrawDigits_4:
  AND $F0                 ; Only need left hand nibble.
  RLA                     ; Adjust and merge with previous digit.
  OR (IX+$00)
  LD (IX+$00),A
  ADD HL,DE               ; Next scan.
  INC IX
  DJNZ Door_DrawDigits_3
  JR Door_DrawDigits_7
Door_DrawDigits_5:
  LD B,$08
  LD HL,Bitmap_temp
Door_DrawDigits_6:
  LD A,(HL)
  RLCA
  RLCA
  LD (HL),A
  INC HL
  DJNZ Door_DrawDigits_6
; Copy digit to offset area of bitmap.
Door_DrawDigits_7:
  POP HL
  CALL Bitmap_CopyFrame
  LD HL,(Bitmap_InfoCache)
  LD DE,$0052             ; Offset of bitmap, where to place the digits.
  ADD HL,DE
  LD DE,$0005
  LD IX,Bitmap_temp
  LD B,$08
Door_DrawDigits_8:
  LD A,(IX+$00)
  LD (HL),A
  INC IX
  ADD HL,DE
  DJNZ Door_DrawDigits_8
  POP BC
  POP IX
  RET

; Data block at 92D2
Data_Stack:
  DEFW $0000              ; Temp store for SP (stack).
Bg_DoorNumber:
  DEFB $00                ; Next door number.
  DEFB $00
Bg_ColumnsLeft:
  DEFW $0000              ; Number of columns left when running through
                          ; background data. 1 columns = 8 pixels of an object.
_92d8_ReverseBit:
  DEFB $00
  DEFW $0000
  DEFB $00,$00
_NextBlock:
  DEFW $0000              ; Address of the extra data block for background data
                          ; type '0'.
_NextSignText:
  DEFW $0000              ; Address of the next index for sign text.
  DEFW $0000
  DEFW $0000

; BG Draw correct part of a background item at a given column.
;
; Used by the routine at Bg_DrawColumn. Input:  IX  5 byte data struct ptr.
; Prepares and Draws the background furniture by walking through the
; description string until it finds the correct item in the expected column.
; Any objects that require preperation is handle here, such as adding the
; street name to a sign.
Bg_CalcAndDraw:
  LD (Data_Stack),SP
  BIT 7,(IX+$01)
  JR NZ,Bg_CalcAndDraw_1
  LD A,(IX+$04)
  LD B,$02
  AND A
  JP P,Bg_CalcAndDraw_0
  LD B,$00
  JR Z,Bg_CalcAndDraw_0
  NEG
  LD B,$FE
Bg_CalcAndDraw_0:
  SUB B
  LD (Bg_DoorNumber),A
  LD A,B
  LD ($92D5),A
  PUSH IX                 ; Get start of next block.
  POP HL
  LD DE,$0005
  ADD HL,DE
  LD (_NextBlock),HL
  LD A,(IX+$05)
  RRA
  RRA
  RRA
  RRA
  AND $0F
  LD E,A
  LD D,$00
  ADD HL,DE
  LD (_NextSignText),HL
Bg_CalcAndDraw_1:
  LD E,(IX+$00)           ; Get map position of path.
  LD D,(IX+$01)
  RES 7,D
  LD A,(Camera_Compass)   ; Based on compass get position for correct axis.
  BIT 0,A
  JR Z,Bg_CalcAndDraw_2
  LD HL,(Coords_NS)
  JR Bg_CalcAndDraw_3
Bg_CalcAndDraw_2:
  LD HL,(Coords_EW)
Bg_CalcAndDraw_3:
  BIT 1,A                 ; Workout difference between hero and path start.
                          ; Camera and direction set calculations.
  JR Z,Bg_CalcAndDraw_4
  EX DE,HL
Bg_CalcAndDraw_4:
  LD A,(Hero_LastDirection)
  CP $02
  JR Z,Bg_CalcAndDraw_5
  EX DE,HL
Bg_CalcAndDraw_5:
  AND A
  SBC HL,DE
  LD E,(IX+$02)           ; Length?
  LD D,$00
  CP $02
  JR Z,Bg_CalcAndDraw_6
  AND A
  SBC HL,DE
  EX DE,HL
  LD HL,$0020
  AND A
  SBC HL,DE
  JR Bg_CalcAndDraw_7
Bg_CalcAndDraw_6:
  ADD HL,DE
  LD DE,$0022
  AND A
  SBC HL,DE
Bg_CalcAndDraw_7:
  SRL H                   ; Half the length to match 1 column of an item.
  RR L
  LD (Bg_ColumnsLeft),HL
  XOR A
  LD (_92d8_ReverseBit),A
  LD A,(IX+$03)
  BIT 7,(IX+$01)
  JR Z,Bg_CalcAndDraw_8
  SUB $04                 ; Calculate number of items to scan through.
  LD C,A
  LD DE,$0004
  JR Bg_CalcAndDraw_9
Bg_CalcAndDraw_8:
  SUB $06                 ; Calculate number of items to scan through.
  LD C,A
  LD A,(IX+$05)           ; Calculate start of description string.
  RRA
  RRA
  RRA
  RRA
  AND $0F
  LD E,A
  LD D,$00
  LD A,(IX+$05)
  AND $0F
  LD L,A
  LD H,D
  ADD HL,DE
  LD DE,$0006
  ADD HL,DE
  EX DE,HL
Bg_CalcAndDraw_9:
  ADD IX,DE               ; Offset IX to start of description string.
  LD B,$01                ; Set loop to draw 1 column.
  JR Bg_CalcAndDraw_11
; _
Bg_CalcAndDraw_10:
  LD IX,($92D9)
  LD A,($92DB)
  LD C,A
; Walk description string.
Bg_CalcAndDraw_11:
  PUSH BC                 ; Get index of object to draw and run a function
                          ; based on upper bit and value.
  LD A,(IX+$00)
  BIT 7,A                 ; Handle if a control code.
  JP Z,Bg_StrCtrlCodes
  CP $FF
  JP Z,Bg_DrawEmptyCol
  CP $DD                  ; Handle sub-string code.
  JP NC,Bg_UseInnerStr
  CP $82
  JP C,Bg_NextSignText
  CP $92
  JR C,Bg_CalcAndDraw_12
  CP $96
  JP C,Bg_NextDoorNumber
; This entry point is used by the routines at Bg_NextDoorNumber and
; Bg_NextSignText.
Bg_CalcAndDraw_12:
  LD L,(IX+$00)           ; Get item index and calculate address for bitmap's
                          ; width.
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  LD DE,Bitmap_PtrTableOffWidth
  ADD HL,DE
  LD A,(HL)               ; Get width and store.
  LD E,A
  RES 7,E                 ; Remove flag bit.
  LD D,$00                ; Convert into 16bit.
  LD HL,(Bg_ColumnsLeft)  ; Decrease object width from columns left.
  AND A
  SBC HL,DE
  JR C,Bg_CalcAndDraw_16
; This entry point is used by the routines at Bg_DrawEmptyCol and
; Bg_StrCtrlCodes.
Bg_CalcAndDraw_13:
  LD (Bg_ColumnsLeft),HL
  POP BC
; This entry point is used by the routines at Bg_StrCtrlCodes and
; Bg_UseInnerStr.
Bg_CalcAndDraw_14:
  DJNZ Bg_CalcAndDraw_10
; Entry point used by sub-string draw.
; +-------+---------------------+
; | ENTRY |                     |
; +-------+---------------------+
; | C     | Bytes in sub string |
; | IX    | Ptr to sub-string   |
; +-------+---------------------+
Bg_CalcAndDraw_15:
  LD B,$01
  XOR A                   ; Clear the reverse draw flag.
  LD (_92d8_ReverseBit),A
  DEC C                   ; Decrease the number of bytes left in string, ending
                          ; if done.
  RET Z
  INC IX                  ; Move onto next byte in string.
  JR Bg_CalcAndDraw_11
; __
Bg_CalcAndDraw_16:
  LD D,A
  LD A,(_92d8_ReverseBit) ; See if bit needs reversing.
  XOR D
  BIT 7,A
  JR Z,Bg_CalcAndDraw_17
  LD L,(IX+$00)
  CALL Bitmap_Reverse
Bg_CalcAndDraw_17:
  LD A,(IX+$00)
  CP $82                  ; Shop window with a sign.
  JP C,Bg_BlitOneWord
  CP $86                  ; Picture frame.
  JP C,Gallery_DrawPicture
  CP $8F                  ; Street sign.
  JP Z,Bg_BlitTwoWord
  CP $92                  ; Basic object.
  JR C,Bg_BlitItemColumn
  CP $96                  ; Door.
  JP C,Bg_BlitDoor
  CP $9E                  ; Shop-keeper.
  JP Z,BgTable_StoreShopKeeper
  CP $C6                  ; Torch.
  JP Z,Bg_TorchAdd
  CP $A4
  JR C,Bg_BlitItemColumn
  CP $A6                  ; Shop counter.
  JP C,BgTable_Store

; Blits a column of a background bitmap based on its index value.
;
; Used by the routines at Bg_CalcAndDraw, Gallery_DrawPicture, Bg_BlitDoor,
; Bg_BlitWordIntoBitmap, Bg_TorchAdd and BgTable_Store. Input:  IX  Points to
; address of next item in background description string.
Bg_BlitItemColumn:
  LD A,(IX+$00)           ; Based on index, calculate position in offcreen to
                          ; blit object.
  LD DE,$0AA0
  CP $9B
  JR Z,Bg_BlitItemColumn_0
  LD DE,$0660
  CP $8F
  JR C,Bg_BlitItemColumn_0
  LD DE,$0220
  CP $92
  JR C,Bg_BlitItemColumn_0
  LD DE,$0880
  CP $C1
  JR C,Bg_BlitItemColumn_0
  LD DE,$0440
  CP $C9
  JR C,Bg_BlitItemColumn_0
  LD DE,$0880
Bg_BlitItemColumn_0:
  LD L,A                  ; Using bitmap index, calculate address of data,
                          ; pointing to dimensions of bitmap.
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  LD BC,Bitmap_PtrTableOffHeight
  ADD HL,BC
  LD B,(HL)               ; Get height in char cells.
  RES 7,B
  EX DE,HL
  LD DE,$0110
Bg_BlitItemColumn_1:
  AND A
  SBC HL,DE
  DJNZ Bg_BlitItemColumn_1
  LD DE,(Ptr_Offscreen)
  ADD HL,DE
  LD (Temp_BlitTo),HL
  LD L,(IX+$00)           ; Get index of bitmap and copy info into memory.
  CALL Bitmap_CopyFrame
  LD DE,(Bg_ColumnsLeft)  ; Get which column, of bitmap, to blit.
  CALL Bitmap_DrawColumn
; This entry point is used by the routines at Bg_DrawEmptyCol and
; Bg_StrCtrlCodes.
Bg_BlitItemEnd:
  LD SP,(Data_Stack)
  RET

; Draw an empty black column.
;
; Used by the routine at Bg_CalcAndDraw.
Bg_DrawEmptyCol:
  LD HL,(Bg_ColumnsLeft)  ; Only draw if outside of path range.
  LD DE,$001C
  AND A
  SBC HL,DE
  JP NC,Bg_CalcAndDraw_13
  LD HL,(Ptr_Offscreen)   ; Fill in column.
  LD DE,$0022
  LD A,$FF
  LD B,$50
Bg_DrawEmptyCol_0:
  LD (HL),A
  ADD HL,DE
  DJNZ Bg_DrawEmptyCol_0
  JR Bg_BlitItemEnd

; Handle description string control values.
;
; Used by the routine at Bg_CalcAndDraw. The follow are control codes that can
; exist within a description string.
Bg_StrCtrlCodes:
  LD A,(IX+$00)           ; check for 'skip' value, if not check for other
                          ; values.
  AND $F0
  CP $00
  JR NZ,Bg_StrCtrlCodes_0
  XOR (IX+$00)            ; String value means skip by the number of column
                          ; units.
  LD E,A
  LD D,$00
  LD HL,(Bg_ColumnsLeft)
  SBC HL,DE
  JR C,Bg_BlitItemEnd
  JP Bg_CalcAndDraw_13
Bg_StrCtrlCodes_0:
  CP $10                  ; Reverse image value.
  JR NZ,Bg_StrCtrlCodes_1
  LD A,$80
  LD (_92d8_ReverseBit),A
  INC IX
  POP BC
  DEC C
  JP NZ,Bg_CalcAndDraw_11
  RET
Bg_StrCtrlCodes_1:
  CP $20
  JR NZ,Bg_StrCtrlCodes_2
  POP BC
  XOR (IX+$00)
  LD B,A
  DEC C
  RET Z
  INC IX
  LD ($92D9),IX
  LD ($92DB),BC
  JP Bg_CalcAndDraw_11
Bg_StrCtrlCodes_2:
  CP $60
  JR NZ,Bg_StrCtrlCodes_3
  XOR (IX+$00)
  LD ($92E1),A
  LD HL,(Bg_ColumnsLeft)
  LD ($92E3),HL
  JP Bg_CalcAndDraw_14
Bg_StrCtrlCodes_3:
  JP Bg_BlitItemEnd       ; Ignore any unknown codes by ending the walking of
                          ; string.

; Point to and draw description's sub-string.
;
; Used by the routine at Bg_CalcAndDraw. A description string can contain a
; reference to another inner sub-string. The draw engine will use this inner
; string until complete before returning to the original string.
Bg_UseInnerStr:
  SUB $DD                 ; Offset reference value to true string index.
  LD L,A                  ; convert into address within table.
  LD H,$00
  ADD HL,HL
  LD DE,PtrTble_BgStr
  ADD HL,DE
  LD E,(HL)               ; Get pointer, to string, from table.
  INC HL
  LD D,(HL)
  PUSH IX
  PUSH DE
  POP IX
  LD HL,($92D9)
  PUSH HL
  LD HL,($92DB)
  PUSH HL
  LD C,(IX+$00)
  CALL Bg_CalcAndDraw_15
  POP HL
  LD ($92DB),HL
  POP HL
  LD ($92D9),HL
  POP IX
  POP BC
  JP Bg_CalcAndDraw_14

; Draws the picture for a gallery.
;
; Used by the routine at Bg_CalcAndDraw.
Gallery_DrawPicture:
  LD A,(Bg_ColumnsLeft)
  AND A
  JP Z,Bg_BlitItemColumn
  CP $04
  JP Z,Bg_BlitItemColumn
; Blit characters into picture frame.
  LD A,(IX+$00)           ; Calculate address of array that holds the block
                          ; images indicies.
  SUB $82
  LD B,A
  ADD A,A
  ADD A,A
  ADD A,A
  ADD A,B
  LD E,A
  LD D,$00
  LD HL,PictureMatrix_Gallery
  ADD HL,DE
  EX DE,HL
  LD HL,(BmpInfo82_PictureFrame) ; Get start position within picture frame.
                                 ; This is where the first char will be drawn
                                 ; to.
  LD BC,$0029
  ADD HL,BC
  LD A,$03                ; Number of chars down.
Gallery_DrawPicture_0:
  PUSH AF
  EX DE,HL
  LD B,$03                ; Number of chars across.
Gallery_DrawPicture_1:
  PUSH BC
  PUSH HL
  PUSH DE
  LD L,(HL)               ; Get index of next image and convert into address of
                          ; bitmap.
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  LD BC,Charset_Start
  ADD HL,BC
; Draw one char block.
  LD BC,$0809             ; 8 scans, copying the image.
Gallery_DrawPicture_2:
  LDI
  LD A,E                  ; Next scan down within bitmap.
  ADD A,$04
  LD E,A
  LD A,D
  ADC A,$00
  LD D,A
  DJNZ Gallery_DrawPicture_2
; Next block along.
  POP DE
  INC DE
  POP HL
  INC HL
  POP BC
  DJNZ Gallery_DrawPicture_1
; Next block down.
  LD BC,$0025
  EX DE,HL
  ADD HL,BC
  POP AF
  DEC A
  JR NZ,Gallery_DrawPicture_0
  JP Bg_BlitItemColumn

; Background  Next door number.
;
; Used by the routine at Bg_CalcAndDraw. Calculates the next door number and
; next block address.
Bg_NextDoorNumber:
  EX DE,HL
  LD HL,(Bg_DoorNumber)
  LD A,L
  ADD A,H
  LD (Bg_DoorNumber),A
  LD HL,(_NextBlock)
  INC HL
  LD (_NextBlock),HL
  EX DE,HL
  JP Bg_CalcAndDraw_12

; Background  Next sign text
;
; Used by the routine at Bg_CalcAndDraw. Calculates the address of the next
; shop sign text within the background data.
Bg_NextSignText:
  LD DE,(_NextSignText)
  INC DE
  LD (_NextSignText),DE
  JP Bg_CalcAndDraw_12

; Set up and blit a door.
;
; Used by the routine at Bg_CalcAndDraw. Input:  IX  Ptr current background
; door data.
Bg_BlitDoor:
  LD A,(Bg_ColumnsLeft)
  CP $02
  JP NZ,Bg_BlitItemColumn
  LD A,(IX+$00)           ; Only door type $92 has a number, skip for rest.
  CP $92
  JR NZ,Bg_BlitDoor_0
  LD A,(Bg_DoorNumber)
  AND A
  JR Z,Bg_BlitDoor_0
  LD HL,$0092             ; Blit next door number to bitmap $92.
  CALL Door_DrawDigits
Bg_BlitDoor_0:
  LD DE,(_9689_coordsA)
  INC DE
  LD HL,Door_cache        ; See if door already exists in list for current
                          ; background.
  LD B,$06
Bg_BlitDoor_1:
  LD A,(HL)
  INC HL
  CP E
  JR NZ,Bg_BlitDoor_2
  LD A,(HL)
  CP D
  JP Z,Bg_BlitItemColumn
Bg_BlitDoor_2:
  INC HL
  INC HL
  INC HL
  DJNZ Bg_BlitDoor_1
  LD BC,$0014
  LD A,(Hero_LastDirection) ; Is player facing left?
  CP $02
  JR NZ,Bg_BlitDoor_3
  LD DE,$B199             ; Shift existing doors down the list. New door will
                          ; be added to the start of list.
  LD HL,$B195
  LDDR
  LD HL,Door_cache
  JR Bg_BlitDoor_4
Bg_BlitDoor_3:
  LD HL,$B186             ; Shift existing doors up the list. New door will be
                          ; added to the end of the list.
  LD DE,Door_cache
  LDIR
  LD HL,$B196
Bg_BlitDoor_4:
  LD DE,(_9689_coordsA)   ; Store position and door type into slot.
  INC DE
  LD (HL),E
  INC HL
  LD (HL),D
  INC HL
  LD A,(IX+$00)
  LD (HL),A
  INC HL
  LD DE,(_NextBlock)
  LD A,(DE)
  LD (HL),A
  JP Bg_BlitItemColumn

; Blit a single word into a bitmap.
;
; Used by the routine at Bg_CalcAndDraw. Input:  IX  Ptr to data holding next
; item index.
Bg_BlitOneWord:
  LD HL,(_NextSignText)
  LD B,$01
  JR Bg_BlitWordIntoBitmap

; Routine at 961C
;
; Used by the routine at Bg_CalcAndDraw.
Bg_BlitTwoWord:
  LD HL,(PathFound_PathPtr) ; Get ptr to text index string. (Words to draw).
  LD DE,$000A
  ADD HL,DE
  LD B,$02                ; Length of string / number of words.

; Blit string.
;
; Used by the routine at Bg_BlitOneWord. Input:  HL  Ptr to string. B  Number
; of words.
Bg_BlitWordIntoBitmap:
  LD A,(IX+$00)           ; Get index of bitmap to draw string into (sign or a
                          ; window etc).
  CALL Draw_StringIntoOther ; Draw string into the bitmap.
  LD A,(Bg_ColumnsLeft)
  CP $07
  JP Z,Bg_BlitItemColumn
  LD HL,(Ptr_Offscreen)
  LD DE,$0044
  AND A
  SBC HL,DE
  LD (HL),$38
  JP Bg_BlitItemColumn

; Adds a torch to the current background.
;
; Used by the routine at Bg_CalcAndDraw.
Bg_TorchAdd:
  PUSH IX
  CALL LinkList_CreateNewBg ; Create a new data node in IX, copying torch info
                            ; into it.
  JR Z,Bg_TorchAdd_0      ; End if no more nodes left.
  LD HL,(_9689_coordsA)   ; Store some coords.
  INC HL
  LD (IX+$05),L
  LD (IX+$06),H
  LD (IX+$07),L
  LD (IX+$08),H
  LD HL,Bg_TorchBlitFlame ; Store address of related function to object being
                          ; stored in node. In this case the blitting of the
                          ; flame.
  LD (IX+$03),L
  LD (IX+$04),H
  LD A,$A2                ; Index for fire bitmap.
  LD (IX+$02),A
  LD (IX+$0B),A
  LD A,(Camera_Compass)   ; Store compass in object.
  LD (IX+$0A),A
Bg_TorchAdd_0:
  POP IX
  JP Bg_BlitItemColumn    ; Blit the actual torch.

; Store item index number into background index table.
;
; Used by the routine at Bg_CalcAndDraw. The background index table holds
; values to easily tell which column holds which special items. Special items
; are things you can interact with. The Offscreen pointer holds the current
; column on the offscreen (top row) for which to store for. The table column
; will be matched.
BgTable_Store:
  LD A,($92E1)
; Store value of A into table.
BgTable_StoreA:
  LD HL,(Ptr_Offscreen)   ; Table is offset just before the offscreen.
  LD DE,$0022
  AND A
  SBC HL,DE
  OR (HL)
  LD (HL),A
  JP Bg_BlitItemColumn

; Store the value for a shopkeeper at current column
;
; Used by the routine at Bg_CalcAndDraw.
BgTable_StoreShopKeeper:
  LD A,$10                ; Value for a shopkeeper.
  JR BgTable_StoreA

; Data block at 9689
_9689_coordsA:
  DEFW $0000
_968b_coordsB:
  DEFW $0000
Ptr_Offscreen:
  DEFW $0000              ; Points to an offscreen row.
Temp_BlitTo:
  DEFW $0000
  DEFB $00
_9692:
  DEFB $00,$00
_9694:
  DEFB $00,$00
Bmp_IndexJunction:
  DEFB $00,$00,$00
  DEFB $00

; Background  Draws a single column, including paths.
;
; Used by the routines at BG_ScrollInDirection and Bg_DrawAll. Input:  HL  Ptr
; to offscreen IX  Ptr to table of path offsets
Bg_DrawColumn:
  LD (Ptr_Offscreen),HL
  LD DE,$0022             ; Clear column of offscreen starting at supplied
                          ; address in HL.
  AND A
  SBC HL,DE
  LD B,$51
  XOR A
Bg_DrawColumn_0:
  LD (HL),A
  ADD HL,DE
  DJNZ Bg_DrawColumn_0
  LD HL,(Ptr_Offscreen)
  LD DE,$0044
  AND A
  SBC HL,DE
  LD A,(AreaColour)
  LD (HL),A
  LD A,(Camera_Compass)   ; Get offset based on camera compass value.
  AND A
  RLA
  RLA
  LD C,A
  LD B,$00
  ADD IX,BC
  LD DE,(Coords_EW)       ; Calculate which coordinate we need to work on.
  LD HL,(Coords_NS)
  LD A,(Camera_Compass)
  BIT 0,A
  JR NZ,Bg_DrawColumn_1
  EX DE,HL
Bg_DrawColumn_1:
  PUSH HL                 ; Calculate correct position based on camera position
                          ; offset to the correct end column of the stage.
  LD E,(IX+$00)
  LD D,(IX+$01)
  ADD HL,DE
  LD (_9689_coordsA),HL
  POP HL
  LD E,(IX+$02)
  LD D,(IX+$03)
  ADD HL,DE
  LD (_968b_coordsB),HL

; Search for junctions.
_969a_data:
  DEFW $0000              ; This bit gets modified by code later on...
_969a_VectorMargin:
  DEFW $0000              ; Size of the margin when checking if the man is on a
                          ; path's vector.
  DEFW $0000

; Routine at 96ED
  XOR A
  LD (_9692),A
  LD A,$CA                ; Set junction to draw bitmap index 'leading in'.
  LD (Bmp_IndexJunction),A
  LD HL,$0004             ; Set values to search for paths connecting from
                          ; above current path.
  LD DE,$0002
  LD BC,$0010
  LD A,$02
Bg_DrawColumn_2:
  PUSH AF
  LD (_969a_data),HL
  LD (_969a_VectorMargin),DE
  LD ($96EB),BC
  LD A,(_9692)
  LD ($9691),A
  XOR A
  LD (_9692),A
  LD A,(Camera_Compass)   ; Get correct path information based on camera
                          ; compass.
  BIT 0,A
  JR Z,Bg_DrawColumn_3
  LD IX,(Ptr_Path_EW)     ; Information for E/W path.
  LD BC,(_9689_coordsA)
  LD DE,(Coords_EW)
  JR Bg_DrawColumn_4
Bg_DrawColumn_3:
  LD IX,(Ptr_Path_NS)     ; Information for N/S path.
  LD BC,(_9689_coordsA)
  LD DE,(Coords_NS)
Bg_DrawColumn_4:
  INC BC
  INC BC
  LD HL,(_969a_data)
  CP $01                  ; Check camera compass.
  JR Z,Bg_DrawColumn_5
  CP $02
  JR Z,Bg_DrawColumn_5
  EX DE,HL                ; Offset position.
  AND A
  SBC HL,DE
  JR Bg_DrawColumn_6
Bg_DrawColumn_5:
  ADD HL,DE
Bg_DrawColumn_6:
  EX DE,HL
; Find path crossing position.
Bg_DrawColumn_7:
  PUSH BC
  PUSH DE
  LD L,(IX+$00)           ; Get coordinate of path's axis.
  LD H,(IX+$01)
  AND A                   ; See if person is on the same vector within a
                          ; margin.
  SBC HL,BC
  LD BC,(_969a_VectorMargin)
  JR NC,Bg_DrawColumn_8
  AND A                   ; Path is to the left of position, see if within
                          ; margin.
  ADC HL,BC
  JP M,Bg_DrawColumn_10
  JR Bg_DrawColumn_9      ; Path is within position and its margin.
; Path found?
Bg_DrawColumn_8:
  AND A                   ; Path is either same position or further on.
  SBC HL,BC               ; Check to see if further on...
  JR NC,Bg_DrawColumn_11
Bg_DrawColumn_9:
  LD L,(IX+$02)           ; Get coordinates of right hand end of path and see
                          ; if camera is within range.
  LD H,(IX+$03)
  AND A
  SBC HL,DE
  JR NC,Bg_DrawColumn_10
  LD L,(IX+$04)
  LD H,(IX+$05)
  SCF
  SBC HL,DE
  JR C,Bg_DrawColumn_10
; Found path crossing position.
  LD L,(IX+$00)
  LD H,(IX+$01)
  LD (_9694),HL
  LD A,$01
  LD (_9692),A
  LD IX,_9694
  LD HL,($96EB)
  CALL Bg_DrawItemColumn  ; Draw junction bitmap.
  JR Bg_DrawColumn_11
; Next Path
Bg_DrawColumn_10:
  LD BC,$000C
  ADD IX,BC
  POP DE
  POP BC
  JR Bg_DrawColumn_7
; Search for junctions below path.
Bg_DrawColumn_11:
  POP DE
  POP BC
  LD A,$CC                ; Set junction bitmap index to 'leading out'
  LD (Bmp_IndexJunction),A
  LD HL,$FFFC             ; Set values in order to seach paths conneting just
                          ; below the current path.
  LD DE,$0004
  LD BC,$0000
  POP AF
  DEC A
  JP NZ,Bg_DrawColumn_2
  LD A,(Camera_Compass)
  BIT 0,A
  JR NZ,Bg_DrawColumn_12
  LD DE,(Coords_NS)
  LD IX,(Hero_PathPtr)
  JR Bg_DrawColumn_13
Bg_DrawColumn_12:
  LD DE,(Coords_EW)
  LD IX,(Hero_PathPtr)
Bg_DrawColumn_13:
  LD L,(IX+$00)
  LD H,(IX+$01)
  AND A
  SBC HL,DE
  JR Z,Bg_DrawColumn_15
  JP NC,Bg_DrawColumn_19
Bg_DrawColumn_14:
  LD BC,$000C
  ADD IX,BC
  JR Bg_DrawColumn_13
; Draw bottom road edge.
Bg_DrawColumn_15:
  LD BC,(_9689_coordsA)
  INC BC
  LD L,(IX+$02)
  LD H,(IX+$03)
  AND A
  SBC HL,BC
  JR NC,Bg_DrawColumn_14
  LD A,L                  ; ABS(hl)
  CPL
  LD L,A
  LD A,H
  CPL
  LD H,A
  INC HL
  LD (TempAl),HL
  LD L,(IX+$04)
  LD H,(IX+$05)
  AND A
  SBC HL,BC
  JR C,Bg_DrawColumn_14
  LD (TempBl),HL
  LD A,C                  ; Using odd/even of the offset, decide which column
                          ; of the path image is drawn.
  RRA
  AND $01
  LD C,A
  LD B,$00
  LD A,(_9692)
  AND A
  JR NZ,Bg_DrawColumn_17
  PUSH BC
  LD HL,(BmpPtr_RoadEdgeBottom) ; Get the ptr to the bitmap of the road edge.
  ADD HL,BC               ; Offset to correct column to draw.
  EX DE,HL
  LD HL,(Ptr_Offscreen)
  LD BC,$0990
  ADD HL,BC
  LD BC,$0022
  LD A,$08
Bg_DrawColumn_16:
  EX AF,AF'
  LD A,(DE)
  XOR (HL)
  LD (HL),A
  ADD HL,BC
  INC DE
  INC DE
  EX AF,AF'
  DEC A
  JR NZ,Bg_DrawColumn_16
  POP BC
Bg_DrawColumn_17:
  LD A,($9691)
  AND A
  JR NZ,Bg_DrawColumn_20
  LD HL,(TempBl)
  LD DE,$0002
  SBC HL,DE
  JR C,Bg_DrawColumn_20
  LD HL,(TempAl)
  SBC HL,DE
  JR C,Bg_DrawColumn_20
; Draw top road edge.
  LD HL,(BmpPtr_RoadEdgeTop)
  ADD HL,BC
  EX DE,HL
  LD HL,(Ptr_Offscreen)
  LD BC,$0770
  ADD HL,BC
  LD BC,$0022
  LD A,$08
Bg_DrawColumn_18:
  EX AF,AF'
  LD A,(DE)
  XOR (HL)
  LD (HL),A
  ADD HL,BC
  INC DE
  INC DE
  EX AF,AF'
  DEC A
  JR NZ,Bg_DrawColumn_18
  JR Bg_DrawColumn_20
Bg_DrawColumn_19:
  LD A,(_9692)
  AND A
  JR NZ,Bg_DrawColumn_23
  LD A,($9691)
  AND A
  JR NZ,Bg_DrawColumn_23
  JR Bg_DrawColumn_24
; Draw the road leading in and out of screen.
Bg_DrawColumn_20:
  LD HL,(TempBl)
  LD DE,$0004
  AND A
  SBC HL,DE
  JR C,Bg_DrawColumn_21
  LD DE,(TempAl)
  LD HL,$0004
  SBC HL,DE
  JR C,Bg_DrawColumn_24
Bg_DrawColumn_21:
  LD DE,(_9689_coordsA)
  LD BC,(Coords_NS)
  LD A,(Camera_Compass)
  BIT 0,A
  JR Z,Bg_DrawColumn_22
  LD DE,(_9689_coordsA)
  LD BC,(Coords_EW)
Bg_DrawColumn_22:
  INC DE
  ADD HL,DE
  LD (_9694),HL
Bg_DrawColumn_23:
  LD IX,_9694
  LD (IX+$02),$CB         ; Bitmap index for road leading in.
  LD HL,$0008
  CALL Bg_DrawItemColumn
Bg_DrawColumn_24:
  LD IX,(PathFound_BackgroundPtr)
Bg_DrawColumn_25:
  LD A,(IX+$00)
  OR (IX+$01)
  JR Z,Bg_DrawColumn_26
  LD A,(IX+$02)
  CALL $921B
  JR NC,Bg_DrawColumn_27
  LD E,(IX+$03)
  LD D,$00
  ADD IX,DE
  JR Bg_DrawColumn_25
Bg_DrawColumn_26:
  LD IX,PathFound_StartMargin
  LD A,(IX+$02)
  CALL $921B
  JR NC,Bg_DrawColumn_27
  LD IX,PathFound_EndMargin
  LD A,(IX+$02)
  CALL $921B
  JR NC,Bg_DrawColumn_27
  JR Bg_DrawColumn_28
Bg_DrawColumn_27:
  CALL Bg_CalcAndDraw
; Draw object.
Bg_DrawColumn_28:
  LD HL,(Ptr_Offscreen)   ; Get row above.
  LD DE,$0022
  AND A
  SBC HL,DE
  LD A,(HL)
  AND $0F
  RET Z
  LD E,A
  LD D,$00
  LD HL,(Room_CurrentInfoDataPtr)
  ADD HL,DE
  LD A,(HL)
  AND A
  RET Z
  CALL Obj_GetBmpIndex
  LD A,(HL)
  LD ($92E1),A
  LD L,A
  CALL Bitmap_CopyFrame
  LD A,(HL)
  AND $7F
  LD C,A
  NEG
  ADD A,$05
  SRL A
  NEG
  LD HL,($92E3)
  ADD A,L
  CP C
  RET NC
  LD (Bg_ColumnsLeft),A
  LD A,(Bitmap_InfoCache_Height)
  AND $7F
  LD B,A
  LD HL,$0550
  LD DE,$0110
Bg_DrawColumn_29:
  AND A
  SBC HL,DE
  DJNZ Bg_DrawColumn_29
  LD DE,(Ptr_Offscreen)
  ADD HL,DE
  LD (Temp_BlitTo),HL
  LD DE,(Bg_ColumnsLeft)
  LD D,$00
  LD HL,($92E1)
  LD H,D
  JP Bitmap_DrawColumn
  RET

; Reverses the image of a bitmap.
;
; Used by the routines at Bg_CalcAndDraw, Stage_Draw and People_Main. Input:  L
; Bitmap index.
Bitmap_Reverse:
  LD H,$00                ; Convert index into bitmap info address.
  ADD HL,HL
  ADD HL,HL
  LD DE,Bitmap_PtrTable
  ADD HL,DE
  LD E,(HL)               ; Get bitmap address.
  INC HL
  LD D,(HL)
  INC HL
  LD A,(HL)               ; Bitmap height.
  AND $7F
  LD C,A
  INC HL
  LD A,(HL)               ; Bitmap width, toggling reverse bit.
  XOR $80
  LD (HL),A
  AND $7F
  LD L,A
  LD H,$00
  LD (Bitmap_temp),HL
  SRL A                   ; Store parity of width.
  ADC A,$00
  LD ($5BE2),A
Bitmap_Reverse_0:
  LD B,$08
Bitmap_Reverse_1:
  PUSH BC
  LD HL,(Bitmap_temp)
  ADD HL,DE
  PUSH HL
  LD A,($5BE2)
  LD B,A
  AND A
Bitmap_Reverse_2:
  DEC HL
  LD A,(DE)
  LD C,(HL)
  RLA
  RR C
  RLA
  RR C
  RLA
  RR C
  RLA
  RR C
  RLA
  RR C
  RLA
  RR C
  RLA
  RR C
  RLA
  RR C
  RLA
  LD (DE),A
  LD (HL),C
  INC DE
  DJNZ Bitmap_Reverse_2
  POP DE
  POP BC
  DJNZ Bitmap_Reverse_1
  DEC C
  JR NZ,Bitmap_Reverse_0
  RET

; Test for keyboard and store results.
;
; Used by the routine at Keyboard_Handle.
Keyboard_Test:
  LD HL,KeyStoreN
  LD E,$80
  LD BC,$7FFE             ; Bottom keyboard row, B ~ SPACE.
Keyboard_Test_0:
  IN D,(C)
  LD (HL),D
  AND A
  RR E
  RET Z
  DEC HL
  LD A,B
  ADD A,E
  LD B,A
  JR Keyboard_Test_0

; Tests keyboard and convert presses into command bit flag.
;
; Used by the routine at Game_Main.
Keyboard_Handle:
  LD A,(Mode_Demo)
  AND A
  JP NZ,Keyboard_Handle_8
  CALL Keyboard_Test
  LD B,$00
  LD IX,KeyStore
  LD A,(IX+$01)
  AND $15
  LD C,A
  LD A,(IX+$06)
  AND $0A
  OR C
  XOR $1F
  JR Z,Keyboard_Handle_0
  SET 2,B
Keyboard_Handle_0:
  LD A,(IX+$01)
  AND $0A
  LD C,A
  LD A,(IX+$06)
  SET 0,A
  AND $15
  OR C
  XOR $1F
  JR Z,Keyboard_Handle_1
  SET 3,B
Keyboard_Handle_1:
  LD A,(IX+$00)
  AND $0A
  LD C,A
  LD A,(IX+$07)
  AND $14
  OR C
  XOR $1E
  JR Z,Keyboard_Handle_2
  SET 1,B
Keyboard_Handle_2:
  LD A,(IX+$00)
  AND $14
  LD C,A
  LD A,(IX+$07)
  AND $0A
  OR C
  XOR $1E
  JR Z,Keyboard_Handle_3
  SET 0,B
Keyboard_Handle_3:
  LD A,(IX+$02)
  AND $0A
  LD C,A
  LD A,(IX+$05)
  AND $15
  OR C
  XOR $1F
  JR Z,Keyboard_Handle_4
  SET 6,B
Keyboard_Handle_4:
  LD A,(IX+$02)
  AND $15
  LD C,A
  LD A,(IX+$05)
  AND $0A
  OR C
  XOR $1F
  JR Z,Keyboard_Handle_5
  SET 5,B
Keyboard_Handle_5:
  LD A,(IX+$03)
  XOR (IX+$04)
  AND $1E
  JR Z,Keyboard_Handle_6
  SET 7,B
Keyboard_Handle_6:
  LD A,(IX+$00)
  AND (IX+$07)
  AND (IX+$03)
  AND (IX+$04)
  AND $01
  JR NZ,Keyboard_Handle_7
  SET 4,B
Keyboard_Handle_7:
  LD A,B
  LD (KeyCmd),A
  LD A,(_b11e)
  ADD A,B
  LD (_b11e),A
  LD A,(IX+$06)
  AND $01
  XOR $01
  LD (KeyCmd_Enter),A
  RET
Keyboard_Handle_8:
  LD (KeyCmd),A
  XOR A
  LD (KeyCmd_Enter),A
  RET

; Redraws an object, on stage. If the object is already there then it is Xor'd
; out.
;
; Used by the routine at Obj_DrawOrClearByIndex. The bitmap info cache holds
; info based on bitmap to draw.
Obj_DrawOrClear:
  LD HL,Bitmap_InfoCache_Width
  RES 7,(HL)
  DEC HL
  LD A,(HL)
  RLA
  RLA
  RLA
  AND $F8
  LD (HL),A
  LD L,B
  LD H,$00
  ADD HL,HL
  LD E,L
  LD D,H
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  ADD HL,DE
  LD E,C
  SRL E
  SRL E
  SRL E
  LD D,$00
  ADD HL,DE
  LD DE,Offscreen_TopLine
  ADD HL,DE
  LD DE,(Bitmap_InfoCache)
  BIT 2,C
  JR NZ,Obj_DrawOrClear_2
  LD BC,(Bitmap_InfoCache_Height) ; B = width, C = height
Obj_DrawOrClear_0:
  PUSH BC
  PUSH HL
; Blit mask
Obj_DrawOrClear_1:
  LD A,(DE)
  XOR (HL)
  LD (HL),A
  INC DE
  INC HL
  DJNZ Obj_DrawOrClear_1
  POP HL
  LD BC,$0022
  ADD HL,BC
  POP BC
  DEC C
  JR NZ,Obj_DrawOrClear_0
  RET
Obj_DrawOrClear_2:
  LD BC,(Bitmap_InfoCache_Height)
Obj_DrawOrClear_3:
  PUSH BC
  PUSH HL
  EX DE,HL
  XOR A
Obj_DrawOrClear_4:
  RRD
  LD C,A
  LD A,(DE)
  XOR (HL)
  LD (DE),A
  LD A,C
  RLD
  LD A,C
  INC HL
  INC DE
  DJNZ Obj_DrawOrClear_4
  RLA
  RLA
  RLA
  RLA
  AND $F0
  LD C,A
  LD A,(DE)
  XOR C
  LD (DE),A
  POP DE
  EX DE,HL
  LD BC,$0022
  ADD HL,BC
  POP BC
  DEC C
  JR NZ,Obj_DrawOrClear_3
  RET

; Decode a word index string into a readable string.
;
; Used by the routine at Draw_StringIntoOther. Input:  HL  Address of word
; index string. B  Number of bytes in string. EXIT: ScratchPad Holds string. A
; word index string holds a string of indices, each representing a string from
; the dictionary. Resulting string [Len, "string"] 0x7B is used as a space.
Str_Decode:
  LD DE,ScratchPad        ; Temp memory for storing expanded string.
  XOR A                   ; First byte holds the length, so clear.
Str_Decode_0:
  LD (DE),A
  INC DE                  ; Start of string content.
  PUSH BC
  PUSH HL                 ; Get next word index.
  LD A,(HL)
  BIT 7,A                 ; Bit 7 set means we use the index as an ascii code
  JR Z,Str_Decode_1
  AND $7F                 ; which is stored directly into the string.
  LD (DE),A
  INC DE
  LD HL,ScratchPad        ; Increase string length by one.
  INC (HL)
  LD A,(HL)
  JR Str_Decode_2
Str_Decode_1:
  PUSH DE                 ; Get address and length of word using the index.
  CALL Dict_GetWord
  LD A,(ScratchPad)       ; Increase overall string count by the length of the
                          ; current word.
  ADD A,C
  LD (ScratchPad),A
  POP DE
  LDIR                    ; Append word to string.
Str_Decode_2:
  POP HL
  INC HL
  POP BC
  DEC B                   ; Next word.
  RET Z
  INC A                   ; Insert a gap betweens words using 0x7b char.
  LD (ScratchPad),A
  LD A,$7B
  JR Str_Decode_0

; Draws a string, as a bitmap, into another bitmap, such as a sign.
;
; Used by the routine at Bg_BlitWordIntoBitmap. Input:  A  Bitmap to draw
; string into. HL  Ptr to text index string. B  Length of text index string,
; number of words to draw.
Draw_StringIntoOther:
  PUSH IX
  PUSH AF
  CALL Str_Decode         ; Convert data into a string.
  LD HL,ScratchPad
  LD DE,$5B0C
  LD A,(HL)               ; Get string length
  SRL A
  NEG
  ADD A,$05
  JR Z,Draw_StringIntoOther_1
  LD B,A
  LD A,$7B
Draw_StringIntoOther_0:
  LD (DE),A
  INC DE
  DJNZ Draw_StringIntoOther_0
Draw_StringIntoOther_1:
  LD C,(HL)               ; String length.
  LD A,C
  AND A
  JR Z,Draw_StringIntoOther_2
  LD B,$00
  INC HL                  ; Start of string.
  LDIR                    ; Copy string.
Draw_StringIntoOther_2:
  LD B,$07                ; Add seven 0x7B chars to end of string copy.
  LD A,$7B
Draw_StringIntoOther_3:
  LD (DE),A
  INC DE
  DJNZ Draw_StringIntoOther_3
  POP AF                  ; Get index of bitmap to write string to.
  LD L,A
  CALL Bitmap_CopyFrame   ; Cache the info on the bitmap.
  LD HL,(Bitmap_InfoCache) ; Offset bitmap address to start of area to draw
                           ; string to.
  LD DE,$0009
  ADD HL,DE
  EX DE,HL
  LD IX,$5B0C             ; Start of string to draw as a bitmap.
  LD B,$0C
Draw_StringIntoOther_4:
  PUSH BC
  PUSH DE
  LD A,(IX+$00)           ; Get next character in sting and convert into
                          ; bitmap.
  SUB $61
  AND $FE
  LD L,A
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  LD BC,(BmpPtr_LettersThin)
  ADD HL,BC
  EX DE,HL
  LD B,$06                ; Height if character bitmap.
Draw_StringIntoOther_5:
  INC DE                  ; Get scan if bitmap.
  LD A,(DE)
  BIT 0,(IX+$00)          ; Each bitmap holds two lefts (left / right), so
                          ; check if the left or right image is required.
  JR Z,Draw_StringIntoOther_6
  RRCA                    ; Shift bits in order to left hand half of image.
  RRCA
  RRCA
  RRCA
Draw_StringIntoOther_6:
  RLD
  LD A,L
  ADD A,$08
  LD L,A
  LD A,H
  ADC A,$00
  LD H,A
  DJNZ Draw_StringIntoOther_5
  INC IX
  POP DE
  POP BC
  BIT 0,B
  JR Z,Draw_StringIntoOther_7
  INC DE
Draw_StringIntoOther_7:
  DJNZ Draw_StringIntoOther_4
  POP IX
  RET

; Blits an character bitmap to memory.
;
; Used by the routine at People_Main. Input:  HL  Address of bitmap to draw to.
; DE  Number of bytes offset within bitmap to draw to. BC  Number of bytes to
; skip after each scan line blit. A  Character index of letter to blit. The
; letters are either upper case ROM bitmap or lower case game defined bitmap.
; The memory is normally another bitmap and the letter is blitted to an offset.
Char_BlitToMemory:
  ADD HL,DE               ; Offset bitmap address by given number of bytes.
  LD DE,$3C00             ; Use the ROM character set for upper case.
  CP $60
  JR C,Char_BlitToMemory_0
  LD DE,Charset_Start     ; Use the defined character set for lower case
                          ; letters.
Char_BlitToMemory_0:
  PUSH HL
  LD L,A                  ; Convert letter index into bitmap address.
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  ADD HL,DE
  EX DE,HL
  POP HL
  DEC BC
  LD A,$08                ; Number of scans for a letter.
Char_BlitToMemory_1:
  EX AF,AF'
  LD A,(DE)               ; Blit letter bitmap into memory by shifting its bits
                          ; so that the left of the letter appears in the left
                          ; part of the badge and the right part of the letter
                          ; in the right.
  RRD
  RRA
  RRA
  RRA
  RRA
  RLD
  INC HL
  RLD
  LD A,(HL)
  RRD
  ADD HL,BC               ; Move onto the next scan down within the memory
                          ; bitmap.
  INC DE                  ; Next scan for letter.
  EX AF,AF'
  DEC A
  JR NZ,Char_BlitToMemory_1
  RET

; Data block at 9BCD
Temp_blit_attr:
  DEFB $00

; Blit bitmap, at (Y,X), aligning to nearest character position.
;
; Used by the routines at Hero_DoorEntry and People_Main. Input:  L  Index of
; bitmap. A  Attribute colour. B  Y position, in pixels. C  X position, in
; pixels.
Bmp_BlitAtCharPos:
  PUSH IX
  LD ( Temp_blit_attr),A  ; Store colour.
  LD A,B                  ; Store Y position.
  LD (TempAl),A
  LD A,C                  ; Store X position.
  LD (TempAh),A
  CALL Bitmap_CopyFrame   ; Cache info on bitmap being blitted.
  LD A,(HL)               ; Store the width.
  AND $7F
  LD (TempBh),A
  DEC HL
  LD A,(HL)               ; Store the height.
  AND $7F
  LD (TempBl),A
  LD HL,(Bitmap_InfoCache)
  LD IX,TempAl
  LD B,(IX+$02)           ; Height of bitmap in chars.
Bmp_BlitAtCharPos_0:
  PUSH BC
  PUSH HL
  CALL YX_toAddr          ; Get DF / ATTR address based on X/Y coords.
  EX (SP),HL              ; Swap stack content (holds bitmap address) with DF.
  LD A,( Temp_blit_attr)  ; See if any colour is required.
  AND A
  JR Z,Bmp_BlitAtCharPos_2
  LD B,(IX+$03)           ; Width.
Bmp_BlitAtCharPos_1:
  LD (DE),A               ; Colour a single line, width of sprite in chars.
  INC DE
  DJNZ Bmp_BlitAtCharPos_1
Bmp_BlitAtCharPos_2:
  LD A,$08                ; 8 scans per one char.
  POP DE                  ; Get DF address.
Bmp_BlitAtCharPos_3:
  PUSH DE
  LD C,(IX+$03)           ; Width.
  LD B,$00
  LDIR                    ; Blit next scan of bitmap.
  POP DE                  ; Next scan down.
  INC D
  DEC A
  JR NZ,Bmp_BlitAtCharPos_3
  LD A,$08
  ADD A,(IX+$00)          ; Next character row down.
  LD (IX+$00),A
  POP BC                  ; Next character row.
  DJNZ Bmp_BlitAtCharPos_0
  POP IX
  RET

; Clears the stage.
;
; Used by the routine at _79b7.
Stage_Clear:
  XOR A
  OUT ($FE),A
  LD HL,$5000
  LD (HL),$00
  LD E,L
  LD D,H
  INC DE
  LD BC,$07FF
  LDIR
  LD HL,$5A00
  LD (HL),$07
  LD E,L
  LD D,H
  INC DE
  LD BC,$00FF
  LDIR
  RET

; Holds the address of any extra string of the selected object.
ObjectStringPtr:
  DEFW $0000

; Updates the whole inventory text.
;
; Used by the routines at Outside_DataRestore, Game_Main, Offer_Handle,
; Action_HandleOffer, Offer_HandleSkar, Obj_DrawOrClearByIndex, Hero_Drop,
; Inv_SelectNext and Thief_TryToSteal.
Inv_Update:
  LD HL,$0000             ; Clear any extra object string.
  LD (ObjectStringPtr),HL
  LD A,$01                ; Print #1
  CALL $1601
  LD C,$01
  LD HL,Inv_Pocket1
  LD E,L
  LD D,H
  LD B,$03
Inv_Update_0:
  LD A,(DE)
  AND A
  JR Z,Inv_Update_1
  LD (HL),A
  INC HL
  INC C
Inv_Update_1:
  INC DE
  DJNZ Inv_Update_0
  LD A,$04
  SUB C
  JR Z,Inv_Update_3
  LD B,A
Inv_Update_2:
  LD (HL),$00
  INC HL
  DJNZ Inv_Update_2
Inv_Update_3:
  LD A,(HL)
  CP C
  JR C,Inv_Update_4
  LD (HL),$00
Inv_Update_4:
  LD DE,$5A60
  LD A,$05
Inv_Update_5:
  LD HL,TempStore
  LD BC,$0013
  LDIR
  EX DE,HL
  LD BC,$000D
  ADD HL,BC
  EX DE,HL
  DEC A
  JR NZ,Inv_Update_5
; Display bank account.
  CALL Print_StrFromStack

; Data block at 9C8E
  DEFB $10                ; INK $06, PAPER $00, BRIGHT $01
  DEFB $06
  DEFB $11
  DEFB $00
  DEFB $13
  DEFB $01
  DEFB $5E

; Routine at 9C95
  CALL Search_NonZero

; Data block at 9C98
  DEFW BankAccountLow
  DEFB $04

; Routine at 9C9B
  JR Z,Inv_Update_6
  CALL Print_StrFromStack

; Data block at 9CA0
  DEFB $16
  DEFB $03
  DEFB $00
  DEFM "bank: "
  DEFB $5E

; Routine at 9CAA
  LD HL,BankAccountLow
  CALL Display_DecimalValue.
  CALL Print_StrFromStack

; Data block at 9CB3
  DEFM " ir"
  DEFB $5E

; Routine at 9CB7
;
; Used by the routine at 9C9B.
Inv_Update_6:
  LD A,(Room_Type)
  CP $05
  JR Z,Inv_Update_7
  CP $09
  JR NZ,Inv_Update_8
Inv_Update_7:
  XOR A                   ; Select iridi.
  LD (Inv_Select),A
  CALL Print_StrFromStack

; Data block at 9CC9
  DEFB $10                ; INK $03
  DEFB $03
  DEFB $5E

; Display number of iridi tokens held.
;
; Used by the routine at Inv_Update_6.
Inv_Update_8:
  CALL Print_StrFromStack

; Data block at 9CCF
  DEFB $16                ; AT 4,1
  DEFB $04
  DEFB $01
  DEFB $5E

; Routine at 9CD3
  LD B,$2A                ; '*'
  LD A,(Inv_Select)       ; Check to see if iridi token are selected.
  AND A
  JR Z,Inv_Update_9
  LD B,$20                ; If not just display a space character.
Inv_Update_9:
  LD A,B
  CALL Print_SelectChar
  LD HL,IridiValue
  CALL Display_DecimalValue.
  LD A,(Room_Type)
  CP $09                  ; Check for Bank or Ludum (gambling house).
  JR Z,Inv_Update_10
  CP $05
  JR NZ,Inv_Update_11
Inv_Update_10:
  CALL Print_StrFromStack ; Bank and Ludum display 'tokens' for the money...

; Data block at 9CF5
  DEFM " tokens"
  DEFB $5E

; Routine at 9CFD
  JR Inv_Update_12
; This entry point is used by the routine at 9CD3.
Inv_Update_11:
  CALL Print_StrFromStack ; Other places display 'iridi'

; Data block at 9D02
  DEFM " iridi"
  DEFB $10
  DEFB $03
  DEFB $5E

; Display objects in pockets.
;
; Used by the routine at 9CFD.
Inv_Update_12:
  LD DE,(Inv_Pocket3)
  LD E,$04
  LD IX,_b14e             ; Point to address just before pockets.
; This entry point is used by the routine at 9D42.
Inv_Update_13:
  INC IX                  ; Next pocket.
  LD A,E
  CP $07
  JP NC,Inv_Update_18
  LD A,(IX+$00)           ; Get object held in pocket.
  AND A                   ; Zero means nothing carried in pocket. Skip.
  JP Z,Inv_Update_18
  PUSH DE
  CALL Object_GetNounAddr
  POP DE
  INC E
  LD A,$16                ; PRINT AT e,0;
  RST $10
  LD A,E
  RST $10
  XOR A
  RST $10
  PUSH HL
  PUSH DE
  BIT 7,(IX+$00)          ; MSB of pocket value, flags as a stolen object.
  JR Z,Inv_Update_14
  CALL Print_StrFromStack

; Data block at 9D3C
  DEFB $12                ; PRINT FLASH 1;"s"; FLASH 0;
  DEFB $01
  DEFM "s"
  DEFB $12
  DEFB $00
  DEFB $5E

; Routine at 9D42
  JR Inv_Update_15
; This entry point is used by the routine at Inv_Update_12.
Inv_Update_14:
  LD A,$20                ; If not stolen the just display a space.
  CALL Print_SelectChar
Inv_Update_15:
  POP DE
  POP HL
  DEC D                   ; See if object is selected...
  JR NZ,Inv_Update_16
  LD A,$2A                ; print '*' for selected.
  CALL Print_SelectChar
  JR Inv_Update_17
Inv_Update_16:
  LD A,$20                ; print ' ' if not.
  CALL Print_SelectChar
Inv_Update_17:
  CALL Print_String       ; Print object's noun.
  CP $5E                  ; Make sure sting has terminated and not stopped at a
                          ; '+' character which means second line of info.
  JR Z,Inv_Update_13
  LD A,D                  ; If the object is selected, store the address of the
                          ; extra string.
  AND A
  JR NZ,Inv_Update_13
  LD (ObjectStringPtr),HL
  JR Inv_Update_13
; Display object's extra string. (If any).
Inv_Update_18:
  LD HL,(ObjectStringPtr)
  LD A,L
  OR H
  JP NZ,Object_StringExtraDisplay
  RET

; Redraws an object, on stage. If the object is already there then it is Xor'd
; out.
;
; Used by the routines at Hero_PickUp and Hero_Drop. Input:  A  Object index
Obj_DrawOrClearByIndex:
  CALL Obj_GetBmpIndex    ; Get the bitmap index for object[A]
  LD L,(HL)
  CALL Bitmap_CopyFrame   ; Copy details of bitmap into cache.
  LD HL,$5E55
  LD C,$0F
Obj_DrawOrClearByIndex_0:
  LD A,(HL)               ; Find an empty slot
  AND $0F
  JR Z,Obj_DrawOrClearByIndex_1
  DEC C
  DEC HL
  JR Obj_DrawOrClearByIndex_0
Obj_DrawOrClearByIndex_1:
  LD A,(Bitmap_InfoCache_Width)
  AND $7F
  RRA
  NEG
  ADD A,$02
  ADD A,C
  RLA
  RLA
  RLA
  AND $F8
  LD C,A
  LD HL,Coords_NS
  LD A,(Camera_Compass)
  BIT 0,A
  JR NZ,Obj_DrawOrClearByIndex_2
  INC HL
  INC HL
Obj_DrawOrClearByIndex_2:
  BIT 0,(HL)
  JR Z,Obj_DrawOrClearByIndex_3
  LD A,C
  SUB $04
  LD C,A
Obj_DrawOrClearByIndex_3:
  LD A,(Bitmap_InfoCache_Height)
  AND $7F
  RLA
  RLA
  RLA
  NEG
  ADD A,$28
  LD B,A
  CALL Obj_DrawOrClear
  JP Inv_Update

; Data block at 9DC0
_9dc0:
  DEFB $01

; Hero; Handle pick up an object / money.
;
; Used by the routine at Game_Main.
Hero_PickUp:
  LD HL,(Bg_ItemIndexHero) ; Get the index of the two interactive items behind
                           ; player.
  LD A,L                  ; Both must be of the same type to be a surface and
                          ; be in range of 01 ~ 0F.
  AND H
  AND $0F
  RET Z
  LD E,A                  ; Using the interaction index, check to see if an
                          ; object is being held in that slot.
  LD D,$00
  LD HL,(Room_CurrentInfoDataPtr)
  ADD HL,DE
  LD A,(HL)
  AND A                   ; A zero being held, means no object on the surface.
  RET Z
  LD A,(Room_Type)        ; Bank
  CP $09
  JR NZ,Hero_PickUp_0
  LD DE,BankAccountLow
  JR Hero_PickUp_1
Hero_PickUp_0:
  CP $05                  ; Gambling
  JR NZ,Hero_PickUp_2
  LD A,(Room_Flags)
  AND A
  RET NZ
  EX DE,HL
  ADD HL,HL
  ADD HL,HL
  LD BC,Event_NumDoors
  ADD HL,BC
  EX DE,HL
Hero_PickUp_1:
  PUSH HL
  PUSH DE
  LD HL,IridiValue
  CALL ValueAddAsBCDCarry
  POP DE
  LD HL,TempStore
  LD BC,$0004
  LDIR
  POP HL
  LD A,(HL)
  LD (HL),$00
  PUSH AF
  JP Hero_PickUp_5
Hero_PickUp_2:
  LD A,(Inv_Pocket3)      ; Check for carrying three objects.
  AND A
  JP Z,Hero_PickUp_3
  CALL Message_Display

; Data block at 9E13
Str_HandsFull:
  DEFB $16
  DEFB $05
  DEFB $0A
  DEFM "your hands are full"
  DEFB $5E

; Routine at 9E2A
  RET
; This entry point is used by the routine at Hero_PickUp.
Hero_PickUp_3:
  LD A,(HL)               ; Place object into pocket.
  PUSH AF
  LD (HL),$00
  LD HL,(Inv_Pocket1)
  LD (Inv_Pocket2),HL
  LD (Inv_Pocket1),A
  LD A,(Room_Type)
  XOR $01
  JR Z,Hero_PickUp_4
  LD A,$01
Hero_PickUp_4:
  LD (Inv_Select),A
; This entry point is used by the routine at Hero_PickUp.
Hero_PickUp_5:
  LD DE,$0005
  LD HL,$02EE
  CALL $03B5
  POP AF
  JP Obj_DrawOrClearByIndex

; Hero; Handle dropping an object / money.
;
; Used by the routine at Game_Main.
Hero_Drop:
  LD HL,$1000             ; Standard amount when adding to account.
  LD A,(Room_Type)
  CP $09                  ; Bank
  JR Z,Hero_Drop_0
  CP $05                  ; Gambling
  JR NZ,Hero_Drop_2
; Gambling
  LD A,(Room_Flags)
  AND A
  RET NZ
  LD HL,(Account_Cost)    ; Get the cost of the object / amount per bet.
; Bank / Gambling.
Hero_Drop_0:
  LD (Account_Cost),HL    ; Store amount of money to shift onto account.
  LD HL,(Bg_ItemIndexHero) ; Check that we have something behind the hero to
                           ; put the object onto.
  LD A,L
  AND H
  AND $0F
  RET Z
  LD DE,(Account_Cost)    ; Get difference between amount carried and the
                          ; amount to put down.
  LD HL,IridiValue
  CALL BCD_SubDE
  RET C                   ; Not enough carried, do nothing.
  LD HL,BankAccountLow    ; Deal wit the bank account if in a bank.
  LD A,(Room_Type)
  CP $09
  JR Z,Hero_Drop_1
  LD A,(Bg_ItemIndexHero) ; Workout which plinth the hero next to.
  AND $0F
  LD L,A
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  LD DE,Event_NumDoors
  ADD HL,DE
Hero_Drop_1:
  LD DE,(Account_Cost)    ; Add amount to plinth.
  CALL BCD_AddDE
  LD HL,_9dc0
  LD (HL),$01
  JR Hero_Drop_3
; Other type of room.
Hero_Drop_2:
  LD A,(Inv_Select)       ; Check for money selected.
  AND A
  RET Z
  LD (HL),$01
  LD L,A                  ; Offset select index to pocket address.
  LD H,$00
  LD DE,_b14e
  ADD HL,DE
  LD A,(HL)               ; Get index of object being carried and check is
                          ; valid.
  AND A
  RET Z
Hero_Drop_3:
  EX DE,HL
  LD HL,(Bg_ItemIndexHero) ; Calculate which plinth hero is near
  LD A,L
  AND H
  AND $0F                 ; End if not near one.
  RET Z
  LD C,A                  ; Get address of plinth within room data.
  LD B,$00
  LD HL,(Room_CurrentInfoDataPtr)
  ADD HL,BC
  LD A,(HL)               ; See if plinth is empty.
  AND A
  JR Z,Hero_Drop_5
  LD A,(Room_Type)        ; If not check for bank / gambling which can have
                          ; money already on plinth.
  CP $09
  JR Z,Hero_Drop_4
  CP $05
  RET NZ                  ; Any other type of room, just do nothing.
; Money drop.
Hero_Drop_4:
  LD DE,$0005             ; Beep.
  LD HL,$0190
  CALL $03B5
  JP Inv_Update
; Object drop.
Hero_Drop_5:
  EX DE,HL
  LD A,(HL)               ; Move the object (index value) from pocket onto
                          ; plinth.
  LD (DE),A
  LD (HL),$00
  PUSH AF
  LD A,$01                ; Reset select to first object.
  LD (Inv_Select),A
  LD DE,$0005             ; Beep.
  LD HL,$0190
  CALL $03B5
  POP AF
  JP Obj_DrawOrClearByIndex

; Inventory  Select next pocket.
;
; Used by the routine at Game_Main.
Inv_SelectNext:
  LD HL,Inv_Select
  INC (HL)
  JP Inv_Update

; Indices to bitmap data for the hero's masks.
Bmp_HeroMaskIndices:
  DEFB $00,$1F,$20,$21,$22,$23,$24,$25
  DEFB $1F,$20,$21,$22,$23,$24,$25,$26
  DEFB $26,$26,$27,$27,$28
Bmp_IndexTemp:
  DEFB $00                ; Stores the index of which mask to use when drawing.

; Stage Draw everyone including Cuchulain and everything on stage.
;
; Used by the routines at Hero_DoorEntry, Game_Main, Offer_Handle, Skar_View,
; Action_HandleOffer and Offer_HandleSkar.
Stage_Draw:
  LD A,(Hero_FrameCount)  ; This entry uses the current frame.
; This entry point is used by the routines at Hero_DoorEntry, Game_Main,
; Skar_View, Action_Enter and Door_HandleEntry.
Stage_Draw_0:
  LD (Hero_FrameCount),A  ; This entry uses a given frame in A.
  CALL Room_Events        ; Make sure all of the background things are updated.
  LD A,(Camera_Compass)   ; For South and West directions, draw people in
                          ; front.
  BIT 1,A
  JR NZ,Stage_Draw_1
  CALL People_Main
Stage_Draw_1:
  LD A,(Hero_FrameCount)
  AND A
  JP Z,Stage_Draw_8
  LD DE,ScratchPad
  LD A,(Hero_FrameCount)
  LD (Hero_FrameCount),A
  LD HL,_60db
  LD A,$38
Stage_Draw_2:
  LDI
  LDI
  LDI
  LDI
  LD BC,$001E
  ADD HL,BC
  DEC A
  JR NZ,Stage_Draw_2
  LD HL,(Hero_FrameCount) ; Workout which mask to use.
  LD H,$00
  LD DE,Bmp_HeroMaskIndices
  ADD HL,DE
  LD A,(HL)
  LD (Bmp_IndexTemp),A
  LD A,(Hero_FrameCount)  ; See if mask needs reversing.
  CP $12                  ; Ignore these to bitmaps.
  JR Z,Stage_Draw_4
  CP $13
  JR Z,Stage_Draw_4
  LD L,A
  CALL Bitmap_CopyFrame
  LD A,(Hero_LastDirection) ; See if current graphic needs reversing.
  RRCA
  RRCA
  XOR (HL)
  JP P,Stage_Draw_3
  LD HL,(Hero_FrameCount)
  CALL Bitmap_Reverse
Stage_Draw_3:
  LD HL,(Bmp_IndexTemp)
  CALL Bitmap_CopyFrame
  LD A,(Hero_LastDirection)
  RRCA
  RRCA
  XOR (HL)
  JP P,Stage_Draw_4
  LD HL,(Bmp_IndexTemp)
  CALL Bitmap_Reverse
Stage_Draw_4:
  LD HL,(Hero_FrameCount)
  CALL Bitmap_CopyFrame
  LD HL,(Bitmap_InfoCache)
  LD (TempAl),HL
  LD HL,(Bmp_IndexTemp)
  CALL Bitmap_CopyFrame
  LD A,(Bitmap_InfoCache_Height)
  AND $7F
  RLA
  RLA
  RLA
  LD (TempBl),A
  LD A,(Bitmap_InfoCache_Width)
  AND $7F
  LD (TempBh),A
  LD DE,(Bitmap_InfoCache)
  LD HL,_60db
  LD A,(TempBh)
  CP $02
  JR NZ,Stage_Draw_5
  INC HL
Stage_Draw_5:
  LD IX,(TempAl)
  LD BC,(TempBl)
Stage_Draw_6:
  PUSH BC
  PUSH HL
Stage_Draw_7:
  LD A,(DE)
  AND (HL)
  OR (IX+$00)
  LD (HL),A
  INC HL
  INC DE
  INC IX
  DJNZ Stage_Draw_7
  POP HL
  LD BC,$0022
  ADD HL,BC
  POP BC
  DEC C
  JR NZ,Stage_Draw_6
Stage_Draw_8:
  LD A,(Camera_Compass)
  BIT 1,A
  RET Z
  JP People_Main

; Update the backgrounds of actors / hero.
;
; Used by the routine at _79b7.
DF_UpdateBg:
  LD A,(Camera_Compass)   ; Test for South / West facing.
  BIT 1,A
  CALL NZ,Actor_UpdateBg  ; Update actors backgrounds first if so.
  LD HL,ScratchPad        ; Update hero's background.
  LD A,(Hero_FrameCount)
  AND A
  JP Z,DF_UpdateBg_1
  LD DE,_60db
  LD A,$38
DF_UpdateBg_0:
  LDI
  LDI
  LDI
  LDI
  LD BC,$001E
  EX DE,HL
  ADD HL,BC
  EX DE,HL
  DEC A
  JR NZ,DF_UpdateBg_0
DF_UpdateBg_1:
  LD A,(Camera_Compass)   ; Test for North / East.
  BIT 1,A
  RET NZ
  JP Actor_UpdateBg       ; Update backgrounds if so.

; Paths  Finds a path based on a given coordinates (Axis, Vector).
;
; Used by the routines at Action_f, Action_a3d0 and _a53d. Input:  IX  Path
; data DE  Axis position to test. BC  Vector position to test. (A19E)
; Determines if test required when path found. EXIT  'C' flag : Set if failed
; to find path. EXIT  IX Points to path found. Both N/S and E/W paths can be
; tested. Coordinates should be switched to match the axis and vector for the
; paths required.
Path_FindByCoord:
  LD (TempAl),BC
  LD HL,$FFFC
  ADD HL,DE
  EX DE,HL
Path_FindByCoord_0:
  LD L,(IX+$00)           ; Get axis of path.
  LD H,(IX+$01)
  AND A                   ; Get difference to coord.
  SBC HL,DE
  JR NC,Path_FindByCoord_2
; Next path.
Path_FindByCoord_1:
  LD BC,$000C             ; Move onto next road
  ADD IX,BC
  JR Path_FindByCoord_0
Path_FindByCoord_2:
  LD BC,$0009             ; Check value is within margin
  SBC HL,BC
  JR C,Path_FindByCoord_3
; Path not found.
  SCF                     ; IF greater than margin, just end.
  RET
Path_FindByCoord_3:
  LD BC,(TempAl)
  LD L,(IX+$02)           ; Get end A of road.
  LD H,(IX+$03)
  SCF                     ; Difference
  SBC HL,BC
  JR NC,Path_FindByCoord_1
  LD L,(IX+$04)           ; Get end B of road.
  LD H,(IX+$05)
  AND A                   ; Get difference
  SBC HL,BC
  JR C,Path_FindByCoord_1
; Path found.
  LD A,(_a19e)            ; Simply return with the result.
  AND A
  RET NZ
; Search through table.
  PUSH IX
  POP DE
  LD HL,$B137
  LD B,$0C                ; Loop
  LD C,$00                ; Number of matches.
; _
Path_FindByCoord_4:
  LD A,E
  CP (HL)
  INC HL
  JR NZ,Path_FindByCoord_5
  LD A,D
  CP (HL)
  JR NZ,Path_FindByCoord_5
  INC C                   ; Found, increase match counter.
Path_FindByCoord_5:
  INC HL
  DJNZ Path_FindByCoord_4
  LD A,C                  ; See if two or more have been found.
  CP $02
  CCF                     ; If the result if less, return carry to indicate
                          ; failed to find path.
  RET

; Data block at A076
DistanceA:
  DEFW $0000
DistanceB:
  DEFW $0000

; Actor  Check distance of nearest junctions.
;
; Finds nearest junctions, both sides of actor, and calculates the distance.
; Input:  ($a195)  Address of actor Actor_CurrentPtr. A  Direction actor is
; facing. IX  Address of path actor is on.
Actor_NearestJunctions:
  PUSH IX                 ; Copy path axis / vector into temporary memory.
  POP HL
  LD DE,TempBl
  LD BC,$0006
  LDIR
  LD IX,(Actor_CurrentPtr) ; Get address of current actor.
  BIT 0,A                 ; Check compass
  JR NZ,Actor_NearestJunctions_0
; Compass N/S
  LD L,(IX+$07)           ; Get actors E/W coord.
  LD H,(IX+$08)
  LD IX,(_5be8_PathNS)    ; Check for paths running N/S.
  JR Actor_NearestJunctions_1
; Compass E/W
Actor_NearestJunctions_0:
  LD L,(IX+$05)           ; Get actors N/W coord.
  LD H,(IX+$06)
  LD IX,(_5be6_PathEW)    ; Check for paths running E/W.
Actor_NearestJunctions_1:
  LD DE,$0004             ; Offset actors coords.
  AND A
  SBC HL,DE
  LD (TempAl),HL
  LD HL,$0000
  LD (DistanceA),HL
  LD (DistanceB),HL
  LD DE,(Bitmap_PtrTableOffHeight) ; Get end of path (A) being tested.
; See if a path's axis intersects the actors path.
Actor_NearestJunctions_2:
  LD BC,(Bitmap_PtrTable) ; Get start of path (A) being tested.
  LD L,(IX+$00)           ; Get next path (B) axis to test with.
  LD H,(IX+$01)
  AND A                   ; See if axis is greater than path A start.
  SBC HL,BC
  JR C,Actor_NearestJunctions_3 ; No; move onto next path in list.
  ADD HL,BC               ; See if axis is less than path A end.
  SCF
  SBC HL,DE               ; If not then all further paths will also be greater
                          ; than path A's end.
  RET NC
  LD BC,(TempBl)          ; See if path (A) axis intersects with path (B) start
                          ; and end.
  LD L,(IX+$02)
  LD H,(IX+$03)
  SCF
  SBC HL,BC
  JR NC,Actor_NearestJunctions_3
  LD L,(IX+$04)
  LD H,(IX+$05)
  AND A
  SBC HL,BC
  JR NC,Actor_NearestJunctions_4 ; Paths intersect...
; Next path.
Actor_NearestJunctions_3:
  LD BC,$000C             ; Move onto next path in list.
  ADD IX,BC
  JR Actor_NearestJunctions_2
; Path found.
Actor_NearestJunctions_4:
  LD BC,(TempAl)          ; Get actors coords in direction of travel.
  LD L,(IX+$00)           ; Get axis for intersecting path.
  LD H,(IX+$01)
  AND A                   ; Calculate difference and position.
  SBC HL,BC
  JR NC,Actor_NearestJunctions_5
; Path before actor.
  LD C,L
  LD B,H
  LD HL,$0004
  AND A
  SBC HL,BC
  LD (DistanceA),HL
  JR Actor_NearestJunctions_3
; Path after actor.
Actor_NearestJunctions_5:
  LD BC,$0009
  AND A
  SBC HL,BC
  JR C,Actor_NearestJunctions_3
  LD BC,$0005
  ADD HL,BC
  LD (DistanceB),HL
  RET

; People  Get coordinate (Axis, Vector) for testing against paths.
;
; Used by the routines at Action_a3d0 and _a53d. Input:  IX  Person being
; handled. A  Direction.
Person_GetCoordsForTesting:
  BIT 0,A
  JR Z,Person_GetCoordsForTesting_0
; Direction E/W
  LD E,(IX+$07)           ; Axis; Get E/W coord
  LD D,(IX+$08)
  LD C,(IX+$05)           ; Vector; Get N/S coord
  LD B,(IX+$06)
  LD IX,(_5be8_PathNS)    ; Get road (N/S map).
  RET
; Direction N/S
Person_GetCoordsForTesting_0:
  LD E,(IX+$05)           ; Axis; Get N/S coord
  LD D,(IX+$06)
  LD C,(IX+$07)           ; Vectir; Get E/W coord
  LD B,(IX+$08)
  LD IX,(_5be6_PathEW)    ; Get road (E/W map).
  RET

; Routine at A140
;
; Used by the routines at Action_a, Action_b, Action_c, Action_e, Action_f and
; Action_g. Input:  IX  Ptr to person being handled.
_a140:
  LD L,(IX+$10)           ; (IX[$10] * 6) + 13 + ($a195) => 5bf6(x6)
  LD H,$00
  ADD HL,HL
  LD E,L
  LD D,H
  ADD HL,HL
  ADD HL,DE
  LD DE,$0013
  ADD HL,DE
  LD DE,(Actor_CurrentPtr)
  ADD HL,DE
  LD DE,People_TempCoordNS
  LD BC,$0006
  LDIR
  RET

; Actor  Create a door event for a person.
;
; Used by the routine at Action_b.
Actor_CreateDoorEvent:
  CALL LinkList_CreateNewBg ; Create data node for object.
  RET Z                   ; No more nodes left.
  LD HL,Event_NumDoors
  INC (HL)
  LD HL,EventDoorOpenClose ; Store object handling function.
  LD (IX+$03),L
  LD (IX+$04),H
  LD (IX+$02),$92
  LD DE,(People_TempCoordEW)
  LD HL,(People_TempCoordNS)
  LD A,(Temp_DirCompass)
  LD (IX+$0A),A
  LD (IX+$05),L
  LD (IX+$06),H
  LD (IX+$07),E
  LD (IX+$08),D
  LD (IX+$09),$10
  LD (IX+$0E),$01
  RET

; Data block at A193
_a193:
  DEFB $00
_a194:
  DEFB $00
Actor_CurrentPtr:
  DEFW $0000              ; Pointer to the current actor being handled.
_a197:
  DEFW $0000
  DEFW $006E
  DEFW $0080

; Data block at A19D
  DEFB $01

; Data block at A19E
_a19e:
  DEFB $00

; Move a character forward by one step.
;
; Used by the routine at People_Main.
Person_MoveForward:
  LD IX,(Actor_CurrentPtr) ; Get address of character data node.
  BIT 6,(IX+$13)          ; Is character enabled?
  RET NZ
; This entry point is used by the routine at _a4ff_People.
Person_MoveForward_0:
  LD A,(IX+$0A)           ; Action count down.
  AND A
  JP Z,People_DecideAction
  DEC (IX+$0A)
  JR NZ,Person_MoveForward_1
  LD A,(IX+$0D)           ; See if character is standing still.
  AND A
  JR Z,Person_MoveForward_1
  LD A,(IX+$04)           ; If so then use the last frame, which is always the
                          ; standing still frame.
  JR Person_MoveForward_2
Person_MoveForward_1:
  LD A,(IX+$0B)           ; Get current frame and increase it.
  INC A
  CP (IX+$04)             ; See if the last frame has been hit and reset it if
                          ; it has.
  JR C,Person_MoveForward_2
  LD A,(IX+$03)
Person_MoveForward_2:
  LD (IX+$0B),A
  LD A,(IX+$02)           ; Get direction.
  BIT 0,A
  JR Z,Person_MoveForward_3
  LD E,(IX+$07)           ; Get E/W coords
  LD D,(IX+$08)
  JR Person_MoveForward_4
Person_MoveForward_3:
  LD E,(IX+$05)           ; Get N/S coords
  LD D,(IX+$06)
Person_MoveForward_4:
  CP $00                  ; Facing north?
  JR Z,Person_MoveForward_5
  CP $03                  ; Facing west?
  JR Z,Person_MoveForward_5
  INC DE                  ; Move south or east by one step.
  JR Person_MoveForward_6
Person_MoveForward_5:
  DEC DE                  ; Move north or west by one step.
Person_MoveForward_6:
  BIT 0,A                 ; Put back in correct axis based on direction.
  JR Z,Person_MoveForward_7
  LD (IX+$07),E
  LD (IX+$08),D
  JR Person_MoveForward_8
Person_MoveForward_7:
  LD (IX+$05),E
  LD (IX+$06),D
Person_MoveForward_8:
  RET

; People action call table. Table of function pointers for people actions.
People_ActionTable:
  DEFW Action_a
  DEFW Action_a
  DEFW Action_b
  DEFW Action_c
  DEFW Action_d
  DEFW Action_e
  DEFW Action_f
  DEFW Action_g
  DEFW $0000
  DEFW $0000
  DEFW Action_i
  DEFW Action_j
  DEFW Action_k
  DEFW Action_l
  DEFW Action_m
  DEFW Action_n

; People  Determine persons next action.
;
; Used by the routine at Person_MoveForward. Input:  IX  Ptr to current person.
People_DecideAction:
  LD A,(IX+$0D)           ; See if person is still waiting.
  AND A
  JR Z,People_DecideAction_0 ; Waiting over, do next action.
  DEC (IX+$0D)            ; Wait.
  RET
; Get next action.
People_DecideAction_0:
  LD L,(IX+$14)
  LD H,(IX+$15)
  LD A,L
  OR H
  JP NZ,_a4ff_People
  XOR A
  LD (_a19e),A
  LD L,(IX+$16)           ; Get index of current action.
  LD H,$00                ; Work out address of function.
  ADD HL,HL
  LD DE,People_ActionTable
  ADD HL,DE
  LD E,(HL)               ; Get address and jump to it.
  INC HL
  LD D,(HL)
  EX DE,HL
  JP (HL)

; Action
;
; Used by the routines at Action_g and Action_j. Input:  IX  Ptr to person.
Action_a:
  LD A,(IX+$0E)           ; If the person is Ryde
  CP $02
  JP Z,Action_h
; For anyone else.
Action_a_0:
  LD (IX+$16),$01         ; Make next action be [01]
  CALL _a140
  JP Action_a3d0

; Action
;
; Used by the routine at Action_f.
Action_b:
  LD IX,(Actor_CurrentPtr)
  CALL _a140
  LD A,($5BFB)
  AND A
  JP Z,Action_g_0
  LD A,(Flag_DoorEntry)
  AND A
  RET NZ
  LD A,(Event_NumDoors)
  AND A
  RET NZ
  BIT 1,(IX+$13)
  JR NZ,Action_b_0
  CALL Actor_CreateDoorEvent
  XOR A
  LD (IX+$0C),A
  LD A,(Temp_DirCompass)
  LD L,A
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  LD DE,Exit_coords
  ADD HL,DE
  LD DE,People_TempCoordNS
  LD BC,$0004
  LDIR
  XOR $02
  LD (Temp_DirCompass),A
  CALL Actor_CreateDoorEvent
  LD (IX+$02),$93
  LD A,($5BFB)
  LD (IX+$0C),A
  LD IX,(Actor_CurrentPtr)
Action_b_0:
  INC (IX+$16)
  LD (IX+$0D),$08
  RET

; Action
Action_c:
  CALL _a140
  LD A,($5BFB)
  LD (IX+$18),A
  LD HL,(Actor_CurrentPtr)
  LD DE,$0005
  ADD HL,DE
  EX DE,HL
  LD HL,(Temp_DirCompass)
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  LD BC,Exit_coords
  ADD HL,BC
  LD BC,$0004
  LDIR
  INC (IX+$16)
  LD B,(IX+$18)
  LD HL,Room_MainData
  LD D,$00
Action_c_0:
  LD E,(HL)
  ADD HL,DE
  DJNZ Action_c_0
  INC HL
  LD A,(HL)
  RRA
  RRA
  RRA
  RRA
  AND $0F
  INC A
  LD (IX+$0F),A

; Action
Action_d:
  LD HL,$A199
  LD DE,People_TempCoordNS
  LD BC,$0005
  LDIR
  JP Action_a3d0

; Action
Action_e:
  CALL _a140
  LD HL,(Temp_DirCompass)
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  LD DE,Exit_coords
  ADD HL,DE
  LD DE,People_TempCoordNS
  LD BC,$0004
  LDIR
  LD A,(Temp_DirCompass)
  XOR $02
  LD (Temp_DirCompass),A
  JP Action_a3d0

; Action
Action_f:
  CALL _a140
  XOR A
  LD (_a19e),A
  LD A,(Temp_DirCompass)
  BIT 0,A
  JR Z,Action_f_0
  LD DE,(People_TempCoordEW)
  LD BC,(People_TempCoordNS)
  LD IX,(Room_outside_pathNS)
  CALL Path_FindByCoord
  RET C
  JP Action_b
Action_f_0:
  LD DE,(People_TempCoordNS)
  LD BC,(People_TempCoordEW)
  LD IX,(Room_outside_pathEW)
  CALL Path_FindByCoord
  RET C
  JP Action_b

; Action
Action_g:
  CALL _a140
  LD HL,(Actor_CurrentPtr) ; Copy current map coordinates.
  LD DE,$0005
  ADD HL,DE
  EX DE,HL
  LD HL,People_TempCoordNS
  LD BC,$0004
  LDIR
; This entry point is used by the routine at Action_b.
Action_g_0:
  LD (IX+$18),$00
  LD (IX+$16),$01
  LD (IX+$0F),$01
  INC (IX+$10)
  LD A,(IX+$10)
  CP $03
  JP C,Action_a
  LD (IX+$10),$01
  BIT 2,(IX+$13)
  JR NZ,Action_i
  JP Action_a             ; }

; Routine at A389
;
; Used by the routine at Action_a.
Action_h:
  LD HL,(Inv_Pocket1)     ; See if hero is carrying anthing marked as stolen.
  LD A,(Inv_Pocket3)
  OR L
  OR H
  JP P,Action_a_0
; This entry point is used by the routine at Action_g.
Action_i:
  LD A,(Room_CurrentStore) ; Action:
  CP $01
  JP NZ,Action_a_0
  LD (IX+$16),$0A
; This entry point is used by the routines at Action_k and Action_m.
Action_h_0:
  LD HL,Coords_NS
  LD DE,People_TempCoordNS
  LD BC,$0004
  LDIR
  LD A,($B16A)
  LD (Temp_DirCompass),A
  JR Action_a3d0          ; }

; Action
Action_j:
  JP Action_a

; Action
Action_k:
  JR Action_h_0

; Action
Action_l:
  LD B,$01
; This entry point is used by the routine at Action_n.
Action_l_0:
  LD A,(Offer_Count)
  AND A
  RET NZ
  LD A,(Hero_ArrestCount)
  AND A
  RET NZ
  LD (IX+$16),B
  JP People_DecideAction_0

; Action
Action_m:
  JR Action_h_0

; Action
Action_n:
  LD B,$04
  JR Action_l_0

; Action
;
; Used by the routines at Action_a, Action_d, Action_e and Action_h.
Action_a3d0:
  LD A,(IX+$18)
  LD (_a19e),A
  LD L,(IX+$0F)
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  LD DE,Outside_DataCopy
  ADD HL,DE
  LD DE,_5be6_PathEW
  LD BC,$0004
  LDIR
  LD L,(IX+$0E)           ; value[Person type]
  LD H,$00
  ADD HL,HL
  LD DE,Ptr_PersonLinkList
  ADD HL,DE
  LD (_a197),HL
  XOR A
  LD (HL),A
  INC HL
  LD (HL),A
  LD A,(Temp_DirCompass)  ; Get the address of the path person is on.
  CALL Person_GetCoordsForTesting
  LD HL,$0000
  LD (Temp_PathPtr),HL
  CALL Path_FindByCoord
  JP C,_a53d
  LD (Temp_PathPtr),IX    ; Store address if path found.
  LD C,(IX+$00)           ; Get axis of path
  LD B,(IX+$01)
  LD HL,(People_TempCoordNS) ; Stored coordinates.
  LD DE,(People_TempCoordEW)
  LD A,(Temp_DirCompass)  ; Get direction
  BIT 0,A
  JR Z,Action_a3d0_0
  EX DE,HL                ; Swap axis and vector for E/W
Action_a3d0_0:
  AND A
  SBC HL,BC
  JP NZ,_a53d
  LD L,(IX+$02)           ; Check vector is between end 'A' of path...
  LD H,(IX+$03)
  SCF
  SBC HL,DE
  JP NC,_a53d
  LD L,(IX+$04)           ; ...and end 'B' of path.
  LD H,(IX+$05)
  AND A
  SBC HL,DE
  JP C,_a53d
  LD IX,(Actor_CurrentPtr)
  BIT 0,A
  JR NZ,Action_a3d0_1
  LD L,(IX+$07)
  LD H,(IX+$08)
  JR Action_a3d0_2
Action_a3d0_1:
  LD L,(IX+$05)
  LD H,(IX+$06)
Action_a3d0_2:
  CALL sub_abs
  JP Z,_a53d
  LD (IX+$0D),$01
  INC (IX+$16)
  LD A,(IX+$16)
  CP $0D
  JR Z,Action_a3d0_3
  CP $0F
  JR NZ,Action_a3d0_4
Action_a3d0_3:
  LD HL,$0002
Action_a3d0_4:
  LD IX,(Temp_PathPtr)
  LD A,(Temp_DirCompass)
  LD B,$00
  LD C,$03
; This entry point is used by the routine at _a53d.
Action_a3d0_5:
  LD (DistanceB),HL
  LD L,(IX+$00)
  LD H,(IX+$01)
  PUSH IX                 ; Store path address.
  POP DE
  LD IX,(_a197)
  LD (IX+$00),E
  LD (IX+$01),D
  LD IX,(Actor_CurrentPtr) ; Store for current player as well.
  LD (IX+$11),E
  LD (IX+$12),D
  LD E,A
  LD A,(IX+$11)           ; Return if no path found.
  OR D
  RET Z
  LD A,E                  ; Check person's camera / compass.
  BIT 0,A
  JR Z,Action_a3d0_6
; N/S facing.
  LD (IX+$07),L           ; Store as E/W coord.
  LD (IX+$08),H
  LD E,(IX+$05)           ; Get N/S coord.
  LD D,(IX+$06)
  LD HL,(People_TempCoordNS)
  LD A,B
  JR Action_a3d0_7
; E/W facing.
Action_a3d0_6:
  LD (IX+$05),L           ; Store as N/S coord.
  LD (IX+$06),H
  LD E,(IX+$07)           ; Get E/W coord.
  LD D,(IX+$08)
  LD HL,(People_TempCoordEW)
  LD A,C
; Difference...
Action_a3d0_7:
  AND A                   ; Passed the target?
  SBC HL,DE
  JR C,Action_a3d0_8
  XOR $02                 ; Yes, reverse direction.
Action_a3d0_8:
  LD H,(IX+$02)
  LD (IX+$02),A
  LD L,(IX+$13)           ; Clear flags (7) ?????
  RES 7,L
  XOR $02                 ; Was previous temp direction same as current
                          ; direction...
  CP H
  JR NZ,Action_a3d0_9
  LD A,(IX+$16)           ; And current action is (1)..
  CP $01
  JR NZ,Action_a3d0_9
  SET 7,L                 ; Then set flag (7).
  LD A,L
  CP (IX+$13)             ; If the same as current flags...
  JR NZ,Action_a3d0_9
  LD (IX+$16),$0A         ; Set next action as (A)
  RES 7,L                 ; and reset flag (7)
Action_a3d0_9:
  LD (IX+$13),L           ; Store new flags value.
  LD HL,(DistanceB)

; Routine at A4FF
;
; Used by the routine at People_DecideAction. Input:  IX  Pointer to current
; person. HL
_a4ff_People:
  LD A,(IX+$16)           ; Get action index
  CP $02
  JR Z,_a4ff_People_0
  CP $06
  JR NZ,_a4ff_People_1
_a4ff_People_0:
  LD (IX+$0D),$01         ; Wait for one cycle.
_a4ff_People_1:
  LD A,(IY+$3E)           ; Use time for random number.
  AND $7F
  ADD A,$0A
  CP L                    ; If new value is less than existing, use it.
  JR C,_a4ff_People_2
  LD A,L                  ; If existing is not zero, use that instead.
_a4ff_People_2:
  AND A
  JR NZ,_a4ff_People_3
  LD A,$20                ; Else default to $20
_a4ff_People_3:
  LD (IX+$0A),A           ; Set as action countdown.
  LD E,A
  LD D,$00
  AND A
  SBC HL,DE
  JR Z,_a4ff_People_4
  LD A,(IX+$16)           ; If using action other than $0a, set waiting time.
  CP $0A
  JR Z,_a4ff_People_4
  LD (IX+$0D),$1E
_a4ff_People_4:
  LD (IX+$14),L
  LD (IX+$15),H
  JP Person_MoveForward_0

; Routine at A53D
;
; Used by the routine at Action_a3d0.
_a53d:
  LD IX,(Actor_CurrentPtr)
  LD HL,(People_TempCoordNS)
  LD E,(IX+$05)
  LD D,(IX+$06)
  LD C,$00
  AND A
  SBC HL,DE
  JR C,_a53d_0
  LD C,$02
_a53d_0:
  LD HL,(People_TempCoordEW)
  LD E,(IX+$07)
  LD D,(IX+$08)
  LD B,$03
  AND A
  SBC HL,DE
  JR C,_a53d_1
  LD B,$01
_a53d_1:
  LD A,(Temp_DirCompass)
  BIT 0,A
  JR Z,_a53d_2
  LD A,C
  LD C,B
  LD B,A
_a53d_2:
  LD (_a193),BC
  LD A,(Temp_DirCompass)
  XOR $01
  CALL Person_GetCoordsForTesting ; See if coordinats is on a path.
  LD HL,$0000
  LD ($5BF0),HL
  CALL Path_FindByCoord
  JR C,_a53d_4            ; Skip if test failed.
  LD ($5BF0),IX           ; Store address of path found.
; Get the distance of the junctions either side.
  LD A,(Temp_DirCompass)  ; Convert camera compass into direction.
  XOR $01
  CALL Actor_NearestJunctions ; Calculate distances of junctions.
  LD HL,(DistanceA)
  LD DE,(DistanceB)
  LD A,(_a193)
  CP $00
  JR Z,_a53d_3
  CP $03
  JR Z,_a53d_3
  EX DE,HL
_a53d_3:
  LD ($5BF2),HL
  LD ($5BF4),DE
  LD A,L
  OR H
  JR Z,_a53d_4
  LD IX,($5BF0)
  LD A,(Temp_DirCompass)
  XOR $01
  LD B,$00
  LD C,$03
  JP Action_a3d0_5
_a53d_4:
  LD HL,(Temp_PathPtr)
  LD A,L
  OR H
  JR Z,_a53d_7
; Calculate distant of junctions.
  LD IX,(Temp_PathPtr)
  LD A,(Temp_DirCompass)
  CALL Actor_NearestJunctions
  LD HL,(DistanceA)
  LD DE,(DistanceB)
  LD A,(_a194)
  CP $00
  JR Z,_a53d_5
  CP $03
  JR Z,_a53d_5
  EX DE,HL
_a53d_5:
  LD (Temp_DistanceA),HL
  LD (Temp_DistanceB),DE
  LD A,L
  OR H
  JR Z,_a53d_6
  LD IX,(Temp_PathPtr)
  LD A,(Temp_DirCompass)
  LD B,$00
  LD C,$03
  JP Action_a3d0_5
_a53d_6:
  EX DE,HL
  LD A,L
  OR H
  JR Z,_a53d_7
  LD IX,(Temp_PathPtr)
  LD A,(Temp_DirCompass)
  LD B,$02
  LD C,$01
  JP Action_a3d0_5
_a53d_7:
  LD IX,($5BF0)
  LD HL,($5BF4)
  LD A,(Temp_DirCompass)
  XOR $01
  LD B,$02
  LD C,$01
  JP Action_a3d0_5

; Data block at A623
  DEFB $20,$21,$22,$23,$24,$25,$20,$21
  DEFB $22,$23,$24,$25,$26

; Data block at A630
  DEFB $00,$01,$02,$0A,$0B

; Data block at A635
  DEFB $04,$05,$00

; Data block at A638
_a638:
  DEFB $00,$00,$00,$00

; Pointers to the characters currently visible on screen.
CharPtr_Current:
  DEFW $0000

; Data block at A63E
  DEFB $00

; Table of attributes values to use when colouring an identity badge.
Table_BadgeCols:
  DEFB $00,$20,$10,$30,$30,$30,$10,$20
  DEFB $10,$20,$10,$38

; Handle all actors.
;
; Used by the routine at Stage_Draw.
People_Main:
  XOR A
  LD ($A637),A
  LD IX,Ptr_PersonLinkList ; Get address to the start of person data link list.
People_Main_0:
  LD L,(IX+$00)           ; Get address of next node in list.
  LD H,(IX+$01)
  LD A,L                  ; Check for end of list.
  OR H
  JP Z,People_Main_19
  LD (Actor_CurrentPtr),HL ; Store address and..
  CALL Person_MoveForward
  LD IX,(Actor_CurrentPtr) ; Get node address back.
  LD HL,(Hero_PathPtr)    ; Check to see on the same path as the player.
  LD E,(IX+$11)
  LD D,(IX+$12)
  AND A
  SBC HL,DE
  JR Z,People_Main_2
; Next person.
People_Main_1:
  LD (IX+$17),$00         ; Not near enough, clear action flag.
  JR People_Main_0
People_Main_2:
  LD A,(Room_CurrentIndex)
  CP (IX+$18)
  JR NZ,People_Main_1
  LD A,(Camera_Compass)   ; Based on compass, get the coords of both player and
                          ; person along the path axis.
  BIT 0,A
  JR NZ,People_Main_3
  LD HL,(Coords_EW)
  LD E,(IX+$07)
  LD D,(IX+$08)
  JR People_Main_4
People_Main_3:
  LD HL,(Coords_NS)
  LD E,(IX+$05)
  LD D,(IX+$06)
People_Main_4:
  BIT 1,A
  JR NZ,People_Main_5
  EX DE,HL
People_Main_5:
  LD (TempAl),HL          ; Store players position.
  CALL sub_abs            ; Get difference between the two.
  LD A,H                  ; If difference is larger than $FF, go onto next
                          ; person in list.
  AND A
  JR NZ,People_Main_1
  LD C,$22
  BIT 4,(IX+$13)
  JR NZ,People_Main_6
  LD A,(IX+$0B)
  CP (IX+$04)
  JR Z,People_Main_6
  LD C,$24
People_Main_6:
  LD A,L
  CP C
  JR NC,People_Main_1
  LD A,(Skar_ShowCount)
  AND A
  JP NZ,People_Main_11
  LD A,L
  CP $0C
  JP NC,People_Main_10
  LD (TempBl),A
  LD A,(IX+$0E)
  CP $02
  JR NZ,People_Main_7
  LD HL,(Inv_Pocket1)
  LD A,(Inv_Pocket3)
  OR L
  OR H
  JP P,People_Main_7
  LD A,(IX+$16)
  LD HL,$A630
  LD BC,$0005
  CPIR
  JR NZ,People_Main_7
  LD A,$01
  LD (Hero_ArrestCount),A
  LD A,$0C
  JR People_Main_8
People_Main_7:
  CALL Person_Greet
  LD A,(Offer_Count)
  AND A
  JR Z,People_Main_9
  LD HL,(Bg_ItemIndexHero)
  LD A,H
  OR L
  BIT 4,A
  JR NZ,People_Main_10
  LD HL,(Offer_PersonPtr)
  LD A,L
  OR H
  JR NZ,People_Main_10
  LD A,(IX+$16)
  LD HL,$A630
  LD BC,$0007
  CPIR
  JR NZ,People_Main_10
  LD (Offer_PersonPtr),IX
  BIT 6,(IX+$13)
  JR NZ,People_Main_10
  LD BC,$0002
  LD HL,$A635
  CPIR
  LD A,$0E
  JR Z,People_Main_8
  LD A,$0C
People_Main_8:
  LD (IX+$16),A
  XOR A
  LD (IX+$0A),A
  LD (IX+$15),A
  LD (IX+$14),A
  LD (IX+$0D),A
  JR People_Main_10
People_Main_9:
  BIT 3,(IX+$13)
  CALL NZ,Thief_TryToSteal
People_Main_10:
  BIT 0,(IX+$13)
  JP NZ,People_Main_0
People_Main_11:
  LD A,$39
  BIT 4,(IX+$13)
  JP NZ,People_Main_14
  LD HL,(TempAl)
  AND A
  SBC HL,DE
  LD DE,$001E
  AND A
  ADC HL,DE
  JP M,People_Main_12
  RES 0,L
  LD DE,$003D
  AND A
  SBC HL,DE
  JR NC,People_Main_12
  ADD HL,DE
  ADD HL,HL
  ADD HL,HL
  LD C,L
  LD B,$80
  PUSH IX
  PUSH BC
  LD HL,$A637
  INC (HL)
People_Main_12:
  LD A,(IX+$0B)
  CP $3C
  JR C,People_Main_13
  SUB $14
People_Main_13:
  LD E,A
  LD D,$00
  LD HL,$A5FA
  ADD HL,DE
  LD A,(HL)
People_Main_14:
  LD (IX+$0C),A
  LD A,(Camera_Compass)
  SUB (IX+$02)
  BIT 0,A
  JR Z,People_Main_16
  RRCA
  RRCA
  PUSH AF
  LD L,(IX+$0B)
  CALL Bitmap_CopyFrame
  POP AF
  PUSH AF
  XOR (HL)
  JP M,People_Main_15
  LD L,(IX+$0B)
  CALL Bitmap_Reverse
People_Main_15:
  LD L,(IX+$0C)
  CALL Bitmap_CopyFrame
  POP AF
  XOR (HL)
  JP M,People_Main_16
  LD L,(IX+$0C)
  CALL Bitmap_Reverse
People_Main_16:
  LD A,$11
  LD HL,Camera_Compass
  BIT 1,(HL)
  JR Z,People_Main_17
  LD A,$13
People_Main_17:
  BIT 4,(IX+$13)
  JR Z,People_Main_18
  ADD A,$28
People_Main_18:
  LD (IX+$09),A
  XOR A
  CALL ObjNode_BlitShft
  JP People_Main_0
People_Main_19:
  LD HL,CharPtr_Current
  LD DE,_a638
  LD BC,$0004
  LDIR
  LD HL,TempStore
  LD BC,$0004
  LDIR
  LD HL,$5A00
  LD DE,$5A01
  LD BC,$003F
  LD (HL),$00
  LDIR
  LD A,($A637)
People_Main_20:
  AND A
  JR Z,People_Main_21
  POP BC
  LD HL,($A63E)
  LD (CharPtr_Current),HL
  POP IX
  LD ($A63E),IX
  PUSH AF
  PUSH BC
; Draw a symbol
  LD A,(IX+$25)           ; Get the first letter in the character's name.
  AND $DF                 ; Make sure it is within the range of the ASCII
                          ; letters.
  LD HL,($BEDC)           ; Get the address of the bitmap for the badge sprite
                          ; from its bitmap information.
  LD DE,$0008             ; Create an offset, this is within the bitmap and is
                          ; where the letter is drawn to.
  LD BC,$0002
  CALL Char_BlitToMemory  ; Blit the letter into the middle of the badge.
  POP BC
; Draw identity badge for character.
  LD E,(IX+$0E)           ; Get index for person type.
  LD D,$00                ; Use as an offset to get the colour to use from the
                          ; badge colour table.
  LD HL,Table_BadgeCols
  ADD HL,DE
  LD A,(HL)
  LD L,$D4                ; Index for the information on the badge.
  CALL Bmp_BlitAtCharPos
  POP AF
  DEC A
  JR People_Main_20
People_Main_21:
  LD B,$04
  LD IX,_a638
People_Main_22:
  LD A,(IX+$00)
  CP (IX+$04)
  JR NZ,People_Main_23
  INC IX
  DJNZ People_Main_22
  RET
; Print names of characters visible on screen.
People_Main_23:
  LD A,$01                ; Set channel 1 for output stream.
  CALL $1601
  LD DE,$5A76             ; Colour name displayed on screen using the values in
                          ; the temporary store.
  LD HL,TempStore
  LD BC,$0004
  LDIR
  LD DE,$5A96             ; Do same for next line down.
  LD BC,$0004
  LDIR
  CALL Print_StrFromStack ; PRINT PAPER BLACK, INK WHITE, BRIGHT ON

; Data block at A872
  DEFB $11
  DEFB $00
  DEFB $10
  DEFB $07
  DEFB $13
  DEFB $01
  DEFB $5E

; Routine at A879
  LD IX,CharPtr_Current   ; Table of pointers to characters on screen.
  LD B,$02                ; Limited to two other characters on screen.
People_Main_24:
  PUSH BC
  LD L,(IX+$00)           ; Get address of character
  LD H,(IX+$01)
  LD A,L
  OR H
  JR Z,People_Main_26
  LD A,$16                ; PRINT AT (B+2), 16
  RST $10
  LD A,B
  ADD A,$02
  RST $10
  LD A,$16
  RST $10
  LD DE,$0025             ; Get address of name from character's data and
                          ; display it.
  ADD HL,DE
  LD B,$04
People_Main_25:
  LD A,(HL)
  CALL Print_SelectChar
  INC HL
  DJNZ People_Main_25
People_Main_26:
  POP BC
  INC IX
  INC IX
  DJNZ People_Main_24
  RET

; Replies from people.
Msg_GoodEvening:
  DEFM "good evening"
  DEFB $5E
Msg_GoodDay:
  DEFM "good day"
  DEFB $5E
Msg_MapForFur:
  DEFM "a map for a fur"
  DEFB $5E
Msg_MapForPlatinum:
  DEFM "a map for platinum"
  DEFB $5E

; Decides if a visible person should greet the player.
;
; Used by the routine at People_Main. Input:  IX  Pre to person data.
Person_Greet:
  BIT 4,(IX+$13)
  RET NZ
  LD A,(IX+$17)           ; If set the person has already done an action.
  AND A
  RET NZ
  BIT 0,(IX+$13)
  RET NZ
  LD (IX+$17),$01         ; Set person, so no other action occurs.
  LD A,(Offer_Count)
  AND A
  RET NZ
  LD A,(Hero_ArrestCount) ; Do not display any messages if player has just been
                          ; arrested.
  AND A
  RET NZ
  PUSH DE
  CALL Message_Display    ; Set up printed area. (AT $05, $0a )

; Data block at A903
  DEFB $16
  DEFB $05
  DEFB $0A
  DEFB $5E

; Routine at A907
  LD A,(IX+$0E)
  CP $0A
  JR Z,Person_Greet_1
  LD HL,Msg_GoodDay       ; Decide on morning or evening.
  LD A,(Flag_dayNight)
  AND A
  JR NZ,Person_Greet_0
  LD HL,Msg_GoodEvening
Person_Greet_0:
  CALL Print_String       ; print the message chosen.
  POP DE
  RET
; Bren's messages.
Person_Greet_1:
  LD HL,Msg_MapForFur     ; Set up for the map message.
  BIT 5,(IX+$13)          ; But check for the platinum message flag.
  JR NZ,Person_Greet_0
  LD HL,Msg_MapForPlatinum
  JR Person_Greet_0

; Indices to objects that cannot be stolen.
Obj_NotStealIndicies:
  DEFB $14                ; Thiefs License.
  DEFB $18                ; Telestone.
  DEFB $2B                ; Philtre.
  DEFB $34                ; Scrip "eve".
  DEFB $35                ; Scrip "did".
  DEFB $36                ; Scrip "pop".
  DEFB $3B                ; L-Key.

; Check to see if thief can steal from player.
;
; Used by the routine at People_Main.
Thief_TryToSteal:
  LD A,(IX+$17)           ; See if thief has bumped into player.
  CP $01
  JR Z,Thief_TryToSteal_0
  RET C
  DEC (IX+$17)
  RET
Thief_TryToSteal_0:
  LD A,(TempBl)
  CP $02
  RET NC
  PUSH IX
  PUSH DE
  LD (IX+$17),$05
  LD A,(Inv_Select)       ; See if money is selected.
  AND A                   ; If not check to see what is.
  JR NZ,Thief_TryToSteal_3
  CALL Block_ClearMem     ; Clear any money being carried.

; Data block at A956
  DEFW IridiValue
  DEFB $04

; Routine at A959
;
; Used by the routine at A968.
Thief_TryToSteal_1:
  CALL Message_Display    ; Display the message to let the player know they
                          ; have been robbed.

; Data block at A95C
Msg_YourPardon:
  DEFM "your pardon"
  DEFB $5E

; Routine at A968
  CALL Inv_Update         ; Update the inventory screen.
Thief_TryToSteal_2:
  POP DE
  POP IX
  RET
; This entry point is used by the routine at Thief_TryToSteal.
Thief_TryToSteal_3:
  LD L,A                  ; Offset selected index to the address of the pocket
                          ; it represents.
  LD H,$00
  LD BC,_b14e
  ADD HL,BC
  PUSH HL
  LD A,(HL)               ; Get index of the object selected.
  AND $7F
  LD HL,Obj_NotStealIndicies ; Compare to the table of objects that cannot be
                             ; stolen.
  LD BC,$0007
  CPIR
  POP HL
  JR Z,Thief_TryToSteal_2 ; Done if found.
  LD (HL),$00             ; Make object stolen by clearing pocket.
  LD A,$01                ; Select money.
  LD (Inv_Select),A
  JR Thief_TryToSteal_1

; Blit Shift data.
_a98e:
  DEFW $0000
  DEFB $00
ObjNode_BlitType:
  DEFB $00                ; Type of object / blit required for method.

; Blit an object (from object data node), correctly on screen adjusting for
; compass and position.
;
; Used by the routines at EventDoorOpenClose, Bg_TorchBlitFlame,
; char_BlitScrolledVert and People_Main. Input:  IX  Address of object data
; node
ObjNode_BlitShft:
  PUSH IX
  LD (ObjNode_BlitType),A
  CP $01
  JR Z,ObjNode_BlitShft_0
  LD L,(IX+$0C)
  CALL Bitmap_CopyFrame
  LD HL,(Bitmap_InfoCache)
  LD (TempAl),HL
ObjNode_BlitShft_0:
  LD L,(IX+$0B)           ; Cache the bitmap info
  CALL Bitmap_CopyFrame
  LD A,(HL)               ; Get the width
  AND $7F
  LD (TempBh),A
  LD E,A
  LD D,$00
  LD (_a98e),DE
  DEC HL                  ; Get the height in pixels and convert into cells.
  LD A,(HL)
  AND $7F
  RLA
  RLA
  RLA
  LD (TempBl),A
  LD HL,(Bitmap_InfoCache) ; Get the bitmap address.
  PUSH HL
; Calculate position on screen.
  LD A,(Camera_Compass)
  BIT 0,A                 ; Test for E/W facing camera.
  JR Z,ObjNode_BlitShft_1
  LD HL,(Coords_NS)       ; Based on players position N/S
  LD E,(IX+$05)
  LD D,(IX+$06)
  JR ObjNode_BlitShft_2
ObjNode_BlitShft_1:
  LD HL,(Coords_EW)       ; Based on players position E/W
  LD E,(IX+$07)
  LD D,(IX+$08)
ObjNode_BlitShft_2:
  BIT 1,A                 ; Test for E/S facing camera.
  JR NZ,ObjNode_BlitShft_3
  EX DE,HL                ; Swap around values for calculating difference.
ObjNode_BlitShft_3:
  AND A
  SBC HL,DE               ; Difference will give offset, left or right, of
                          ; camera.
  LD DE,$0020
  ADD HL,DE
  LD DE,(_a98e)
  AND A
  SBC HL,DE
  JP P,ObjNode_BlitShft_4
  LD A,$01
  LD ($A990),A
  LD E,L
  LD D,H
  LD A,L
  CPL
  LD C,A
  LD A,H
  CPL
  LD B,A
  INC BC
  INC BC
  SRA B
  RR C
  LD HL,(TempAl)
  ADD HL,BC
  LD (TempAl),HL
  POP HL
  ADD HL,BC
  PUSH HL
  LD A,(TempBh)
  SUB C
  LD (TempBh),A
  XOR A
  JR ObjNode_BlitShft_6
ObjNode_BlitShft_4:
  XOR A
  LD ($A990),A
  LD E,L
  LD D,H
  SRA H
  RR L
  LD BC,$0020
  AND A
  SBC HL,BC
  LD BC,(_a98e)
  AND A
  ADC HL,BC
  JP M,ObjNode_BlitShft_5
  LD A,(TempBh)
  SUB L
  LD (TempBh),A
  LD A,$02
  LD ($A990),A
ObjNode_BlitShft_5:
  LD A,E
  AND $FE
  RRA
ObjNode_BlitShft_6:
  LD L,(IX+$09)
  LD H,$00
  ADD HL,HL
  LD C,L
  LD B,H
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  ADD HL,BC
  LD C,A
  LD B,$00
  ADD HL,BC
  LD BC,Offscreen_TopLine
  ADD HL,BC
  LD A,(ObjNode_BlitType)
  AND A
  JR NZ,ObjNode_BlitShft_12
  PUSH DE
  PUSH HL
  LD A,(TempBh)
  LD C,A
  BIT 0,E
  JR Z,ObjNode_BlitShft_7
  LD A,($A990)
  BIT 1,A
  JR NZ,ObjNode_BlitShft_7
  INC C
ObjNode_BlitShft_7:
  PUSH IX
  LD IX,Actors_background
ObjNode_BlitShft_8:
  LD A,(IX+$00)
  OR (IX+$01)
  JR Z,ObjNode_BlitShft_10
  LD E,(IX+$03)
  LD D,$00
  LD B,(IX+$02)
ObjNode_BlitShft_9:
  ADD IX,DE
  DJNZ ObjNode_BlitShft_9
  LD DE,$0004
  ADD IX,DE
  JR ObjNode_BlitShft_8
ObjNode_BlitShft_10:
  LD (IX+$00),L
  LD (IX+$01),H
  LD (IX+$02),C
  LD A,(TempBl)
  LD (IX+$03),A
  LD DE,$0004
  ADD IX,DE
  PUSH IX
  POP DE
  LD B,$00
ObjNode_BlitShft_11:
  PUSH BC
  PUSH HL
  LDIR
  POP HL
  LD BC,$0022
  ADD HL,BC
  POP BC
  DEC A
  JR NZ,ObjNode_BlitShft_11
  LD (DE),A
  INC DE
  LD (DE),A
  POP IX
  POP HL
  POP DE
ObjNode_BlitShft_12:
  BIT 0,E
  JR NZ,ObjNode_BlitShft_13
  LD A,(ObjNode_BlitType)
  AND A
  JR Z,ObjNode_BlitShft_14
  CP $01
  JP Z,ObjNode_BlitShft_23
  CP $02
  JP Z,ObjNode_BlitShft_30
  POP IX
  RET
ObjNode_BlitShft_13:
  LD A,(ObjNode_BlitType)
  AND A
  JR Z,ObjNode_BlitShft_17
  CP $01
  JP Z,ObjNode_BlitShft_25
  CP $02
  JP Z,ObjNode_BlitShft_30
  POP IX
  RET
ObjNode_BlitShft_14:
  LD BC,(TempBl)
  LD DE,(TempAl)
  POP IX
ObjNode_BlitShft_15:
  PUSH BC
  PUSH HL
  PUSH DE
  PUSH IX
ObjNode_BlitShft_16:
  LD A,(DE)
  AND (HL)
  OR (IX+$00)
  LD (HL),A
  INC DE
  INC HL
  INC IX
  DJNZ ObjNode_BlitShft_16
  LD DE,(_a98e)
  POP IX
  ADD IX,DE
  POP HL
  ADD HL,DE
  EX DE,HL
  POP HL
  LD BC,$0022
  ADD HL,BC
  POP BC
  DEC C
  JR NZ,ObjNode_BlitShft_15
  POP IX
  RET
ObjNode_BlitShft_17:
  LD BC,(TempBl)
  EX DE,HL
  EXX
  POP HL
  EXX
  LD HL,(TempAl)
ObjNode_BlitShft_18:
  PUSH BC
  PUSH HL
  PUSH DE
  LD A,($A990)
  AND $01
  EXX
  PUSH HL
  LD C,$00
  JR Z,ObjNode_BlitShft_19
  DEC HL
  LD C,(HL)
  INC HL
ObjNode_BlitShft_19:
  EXX
  LD C,$0F
  JR Z,ObjNode_BlitShft_20
  DEC HL
  LD C,(HL)
  INC HL
  LD A,B
  AND A
  JR Z,ObjNode_BlitShft_21
ObjNode_BlitShft_20:
  LD A,C
  RRD
  LD C,A
  LD A,(DE)
  AND (HL)
  EX AF,AF'
  LD A,C
  RLD
  INC HL
  EXX
  LD A,C
  RRD
  LD C,A
  EX AF,AF'
  OR (HL)
  EX AF,AF'
  RLD
  INC HL
  EXX
  EX AF,AF'
  LD (DE),A
  INC DE
  DJNZ ObjNode_BlitShft_20
  LD A,($A990)
  BIT 1,A
  JR NZ,ObjNode_BlitShft_22
ObjNode_BlitShft_21:
  LD A,C
  RLA
  RLA
  RLA
  RLA
  OR $0F
  LD C,A
  LD A,(DE)
  AND C
  EXX
  SLA C
  SLA C
  SLA C
  SLA C
  OR C
  EXX
  LD (DE),A
ObjNode_BlitShft_22:
  EXX
  POP HL
  LD BC,(_a98e)
  ADD HL,BC
  EXX
  POP DE
  LD HL,$0022
  ADD HL,DE
  EX DE,HL
  POP BC
  LD HL,(_a98e)
  ADD HL,BC
  POP BC
  DEC C
  JR NZ,ObjNode_BlitShft_18
  POP IX
  RET
ObjNode_BlitShft_23:
  LD A,(TempBh)
  LD C,A
  LD A,(TempBl)
  LD B,A
  POP DE
  EX DE,HL
ObjNode_BlitShft_24:
  PUSH BC
  PUSH HL
  PUSH DE
  LD B,$00
  LDIR
  POP DE
  LD HL,$0022
  ADD HL,DE
  EX DE,HL
  POP BC
  LD HL,(_a98e)
  ADD HL,BC
  POP BC
  DJNZ ObjNode_BlitShft_24
  POP IX
  RET
ObjNode_BlitShft_25:
  LD BC,(TempBl)
  EX DE,HL
  POP HL
ObjNode_BlitShft_26:
  PUSH BC
  PUSH HL
  PUSH DE
  LD A,(DE)
  RRA
  RRA
  RRA
  RRA
  AND $0F
  LD C,A
  LD A,($A990)
  AND $01
  JR Z,ObjNode_BlitShft_27
  DEC HL
  LD C,(HL)
  INC HL
  LD A,B
  AND A
  JR Z,ObjNode_BlitShft_28
ObjNode_BlitShft_27:
  LD A,C
  RRD
  LD C,A
  LD A,(HL)
  LD (DE),A
  LD A,C
  RLD
  INC HL
  INC DE
  DJNZ ObjNode_BlitShft_27
  LD A,($A990)
  BIT 1,A
  JR NZ,ObjNode_BlitShft_29
ObjNode_BlitShft_28:
  LD A,C
  RLA
  RLA
  RLA
  RLA
  AND $F0
  LD C,A
  LD A,(DE)
  AND $0F
  OR C
  LD (DE),A
ObjNode_BlitShft_29:
  POP DE
  LD HL,$0022
  ADD HL,DE
  EX DE,HL
  POP BC
  LD HL,(_a98e)
  ADD HL,BC
  POP BC
  DEC C
  JR NZ,ObjNode_BlitShft_26
  POP IX
  RET
ObjNode_BlitShft_30:
  POP IX
  RET

; Blits a block of data onto the offscreen.
;
; Used by the routine at Actor_UpdateBg.
Background_Blit:
  LD E,(HL)               ; Offscreen address.
  INC HL
  LD D,(HL)
  INC HL
  LD C,(HL)               ; Width in characters
  INC HL
  LD A,(HL)               ; Height in scans.
  INC HL
  LD B,$00
Background_Blit_0:
  PUSH BC                 ; Blit.
  PUSH DE
  LDIR
  POP DE
  EX DE,HL
  LD BC,$0022
  ADD HL,BC
  EX DE,HL
  POP BC
  DEC A
  JR NZ,Background_Blit_0
  RET

; Replaces the background for a moving (onscreen) actor.
;
; Used by the routine at DF_UpdateBg.
Actor_UpdateBg:
  LD HL,Actors_background
  LD C,$00                ; Counts number of blocks to blit.
Actor_UpdateBg_0:
  LD A,(HL)               ; Add address of offscreen, where stored background
                          ; is blitted.
  INC HL
  OR (HL)                 ; If set to zero, end of data.
  JR Z,Actor_UpdateBg_2
  PUSH HL                 ; Put start of data on stack.
  INC HL                  ; Get width, height.
  LD B,(HL)
  INC HL
  LD E,(HL)
  INC HL
  LD D,$00
Actor_UpdateBg_1:
  ADD HL,DE               ; Calculate address of next block of background data.
  DJNZ Actor_UpdateBg_1
  INC C
  JR Actor_UpdateBg_0
; Blit eaach block onto DF screen.
Actor_UpdateBg_2:
  LD A,C
Actor_UpdateBg_3:
  AND A
  JR Z,Actor_UpdateBg_4
  POP HL                  ; Get address of next background data.
  DEC HL
  PUSH AF
  CALL Background_Blit    ; Blit.
  POP AF                  ; Next.
  DEC A
  JR Actor_UpdateBg_3
Actor_UpdateBg_4:
  LD HL,$0000             ; Clear store data.
  LD (Actors_background),HL
  RET

; ABS(hl-de)
;
; Used by the routines at Action_Enter, EventDoorOpenClose,
; char_BlitScrolledVert, Bg_DrawItemColumn, Action_a3d0 and People_Main.
sub_abs:
  AND A
  SBC HL,DE
  RET P
  LD A,L
  CPL
  LD L,A
  LD A,H
  CPL
  LD H,A
  INC HL
  RET

; Translate stored x,y position into screen and attribute address.
;
; Used by the routine at Bmp_BlitAtCharPos. Input:  IX  Data Ptr {Y, X, ...}
; EXIT  HL DF(y,x) EXIT  DE ATTR(y,x) X,Y is aligned to nearest character
; position.
YX_toAddr:
  LD A,(IX+$01)           ; Get x position in pixels and convert into columns /
                          ; bytes.
  RRA
  RRA
  RRA
  AND $1F
  LD L,A
  LD A,(IX+$00)           ; Get y position and translate into character rows,
                          ; scans etc to create address.
  RLCA
  RLCA
  LD H,A
  AND $E0
  OR L
  LD L,A
  LD E,A
  LD A,H
  AND $03
  LD H,A
  RLA
  RLA
  RLA
  LD D,A
  LD A,(IX+$00)
  AND $07
  OR D
  LD D,A
  LD BC,$5800             ; Offset for attribute address.
  ADD HL,BC
  EX DE,HL
  LD BC,$4000             ; Offset for screen adress.
  ADD HL,BC
  RET

; Creates a new node, copies the content of 'TempStore' into it and adds to Bg
; Link List.
;
; Used by the routines at Event_CreateDoor, Bg_TorchAdd and
; Actor_CreateDoorEvent. Input:  TempStore  Holds data to be copied into new
; list. EXIT  IX = address of new node. Returns with Z set if no more nodes.
LinkList_CreateNewBg:
  LD A,($B12C)            ; If high byte of link list ptr is zero, then ignore.
  AND A
  RET Z
  LD IX,(LinkList_Spare_Ptr) ; Get address of first spare node.
  LD DE,(LinkList_Spare_Ptr)
  LD L,(IX+$00)           ; Detach from list
  LD H,(IX+$01)
  LD (LinkList_Spare_Ptr),HL
  LD HL,TempStore         ; Copy required data into new node.
  LD BC,$000F
  LDIR
  OR H
  LD HL,(LinkList_Bg_Ptr) ; Add node to background link list.
  LD (IX+$00),L
  LD (IX+$01),H
  LD (LinkList_Bg_Ptr),IX
  RET

; Remove a link from a link list.
;
; Used by the routine at Room_Events. Input:  IX  Address of link to remove
; stack  Holds address of previous link to the one being removed.
List_RemoveLink:
  LD E,(IX+$00)           ; Get ptr the next link in list.
  LD D,(IX+$01)
  LD HL,(LinkList_Spare_Ptr) ; Get ptr to first of the empty links.
  LD (IX+$00),L           ; Move removed link to top of empty link list.
  LD (IX+$01),H
  LD (LinkList_Spare_Ptr),IX
  POP HL                  ; Get return address.
  POP IX                  ; Get addres of previous link in main list.
  LD (IX+$00),E           ; Connect existing links together.
  LD (IX+$01),D
  JP (HL)                 ; Jump to return address found on stack.

; Copies bitmap info into cache.
;
; Used by the routines at Bg_DrawItemColumn, Door_DrawDigits,
; Bg_BlitItemColumn, Bg_DrawColumn, Draw_StringIntoOther, Bmp_BlitAtCharPos,
; Obj_DrawOrClearByIndex, Stage_Draw, People_Main and ObjNode_BlitShft. Input:
; L  Bitmap frame index.
Bitmap_CopyFrame:
  LD H,$00                ; Convert of address of bitmap table.
  ADD HL,HL
  ADD HL,HL
  LD DE,Bitmap_PtrTable
  ADD HL,DE
  LD DE,Bitmap_InfoCache  ; Copy data into cache.
  LDI
  LDI
  LDI
  LD A,(HL)
  LD (DE),A
  RET

; Retrieves the bitmap index of an object.
;
; Used by the routines at Bg_DrawColumn and Obj_DrawOrClearByIndex. Input:  A
; object index EXIT  HL Ptr array holding bitmap index.
Obj_GetBmpIndex:
  DEC A
  AND $7F
  LD L,A
  LD H,$00
  LD DE,Obj_IndexArray
  ADD HL,DE
  RET

; Searches for start of object noun string.
;
; Used by the routines at Hero_DoorEntry, Offer_Action, Offer_Handle and
; Inv_Update. Input:  A  Object index. EXIT  HL = Noun address. Limited to 0x7F
; objects.
Object_GetNounAddr:
  AND $7F
  LD E,A
  LD HL,Object_nouns
  LD BC,$0000
  LD A,$5E
Object_GetNounAddr_0:
  CPIR
  DEC E
  JR NZ,Object_GetNounAddr_0
  RET

; Prints a string.
;
; Used by the routines at Hero_DoorEntry, Offer_Action, Offer_Handle,
; Inv_Update, Person_Greet and Print_StrFromStack. Input:  HL  String Ptr
Print_String:
  LD A,(HL)               ; Get next character.
  INC HL
  CP $5E                  ; End of string.
  RET Z
  CP $2B                  ; End of string.
  RET Z
  CALL Print_SelectChar
  JR Print_String

; Prints a string taking ptr from the stack.
;
; Used by the routines at Hero_DoorEntry, Offer_Action, Gamble_DisplayStakes,
; Room_jvGambling, Inv_Update, People_Main, Message_Display, Message_DisplayAt,
; Object_StringExtraDisplay, Area_Check, Menu and IO_GetLetter. Input:  Stack
; Holds ptr to string.
Print_StrFromStack:
  POP HL                  ; Take return address off from stack, this points to
                          ; text directly after prevous function.
  CALL Print_String
  JP (HL)

; Displays message above stage.
;
; Used by the routines at Offer_Action, Action_Enter, Exit_CheckInv, 8AC4,
; Room_jvGambling, Hero_PickUp, Person_Greet, Thief_TryToSteal and
; Message_DisplayAt.
Message_Display:
  PUSH IX
  CALL Block_ClearMem     ; Blank out message, by colouring black.

; Data for copy routine.
  DEFW ATTR_Message       ; ATTR for message line.
  DEFB $19                ; Number of bytes to copy.

; Return address from copy routine.
  LD DE,$0005             ; Beeper
  LD HL,$02BC
  CALL $03B5
  LD A,$32
  LD (Msg_CountDown),A
  LD A,$02
  CALL $1601
  CALL Print_StrFromStack

; Data block at AD3D
  DEFB $16                ; PRINT AT 5,6; PAPER 0; INK 7; BRIGHT 1;
  DEFB $05
  DEFB $06
  DEFB $11
  DEFB $00
  DEFB $10
  DEFB $07
  DEFB $13
  DEFB $01
  DEFB $5E

; Routine at AD47
  POP IX
  JR Print_StrFromStack   ; Print text pointed to by return address.

; Prints message above stage at (5,10)
;
; Used by the routines at Offer_Handle, Hero_Arrest, Exit_CheckInv,
; Action_HandleOffer and Offer_HandleSkar. Overrides the base call which prints
; at (5,6)
Message_DisplayAt:
  CALL Message_Display

; Data block at AD4E
  DEFB $16                ; PRINT AT 5,10; (Used by above routine.)
  DEFB $05
  DEFB $0A
  DEFB $5E

; Routine at AD52
  JR Print_StrFromStack

; Displays object extra string in correct place.
;
; Used by the routines at Hero_DoorEntry, Gamble_DisplayStakes and Inv_Update.
; Input:  HL  Ptr to string. String can be multi lined by putting + in place of
; newline.
Object_StringExtraDisplay:
  PUSH IX
  PUSH DE
  PUSH HL
  LD A,$02                ; PRINT #2
  CALL $1601
  LD A,$03
  LD DE,$5826
Object_StringExtraDisplay_0:
  LD HL,TempStore
  LD BC,$0019
  LDIR
  LD HL,$0007
  ADD HL,DE
  EX DE,HL
  DEC A
  JR NZ,Object_StringExtraDisplay_0
  CALL Print_StrFromStack

; Data block at AD75
  DEFB $10                ; PRINT INK 6; PAPER 0; BRIGHT 1;
  DEFB $06
  DEFB $11
  DEFB $00
  DEFB $13
  DEFB $01
  DEFB $5E

; Routine at AD7C
  POP HL                  ; String ptr.
  LD E,$01
Object_StringExtraDisplay_1:
  LD A,$16                ; PRINT AT e,6;
  RST $10
  LD A,E
  RST $10
  LD A,$06
  RST $10
  INC E                   ; Increase line count.
Object_StringExtraDisplay_2:
  LD A,(HL)               ; Next character.
  INC HL
  CP $2B                  ; Newline.
  JR Z,Object_StringExtraDisplay_1
  CP $5E                  ; End of string.
  JR Z,Object_StringExtraDisplay_3
  CALL Print_SelectChar
  JR Object_StringExtraDisplay_2
Object_StringExtraDisplay_3:
  POP DE
  POP IX
  RET

; Prints a character with char. set selection.
;
; Used by the routines at Hero_DoorEntry, Offer_Action, Offer_Handle,
; Inv_Update, People_Main, Print_String, Object_StringExtraDisplay,
; Display_DecimalValue., Dict_Print and Area_Check.
Print_SelectChar:
  PUSH HL                 ; Preserve 'next character' pointer.
  CP $61                  ; Select character set.
  JR NC,Print_SelectChar_0
  LD HL,$3C00
  JR Print_SelectChar_1
Print_SelectChar_0:
  LD HL,Charset_Start
Print_SelectChar_1:
  LD ($5C36),HL
  RST $10                 ; Print character.
  POP HL
  RET

; Add two values together and adjust for BCD.
;
; Used by the routines at ValueAddAsBCDCarry and BCD_Subtract. Input:  HL  8
; digit BCD value to add to. DE  8 digit BCD value to add.
ValueAddAsBCD:
  LD B,$04
  AND A
ValueAddAsBCD_0:
  LD A,(DE)
  ADC A,(HL)
  DAA
  LD (HL),A
  INC HL
  INC DE
  DJNZ ValueAddAsBCD_0
  RET

; Add to values together, with carry, and adjust to BCD.
;
; Used by the routines at Game_Main, Offer_Handle, Room_jvGambling, Hero_PickUp
; and BCD_AddDE. Input:  HL  8 digit BCD value to add to. DE  8 digit BCD value
; to add.
ValueAddAsBCDCarry:
  CALL ValueAddAsBCD
  RET NC
  LD A,$99
  LD B,$04
ValueAddAsBCDCarry_0:
  DEC HL
  LD (HL),A
  DJNZ ValueAddAsBCDCarry_0
  RET

; BCD Subtract (hl,4) from (de,4).
;
; Used by the routines at Offer_Handle and BCD_SubDE. Input:  HL  Points to 4
; byte BCD number. DE  Points to 4 byte BCD number to subtract. Sets carry flag
; if difference is greater than value.
BCD_Subtract:
  PUSH HL
  PUSH DE
  EX DE,HL
  LD B,$04
  AND A
BCD_Subtract_0:
  LD A,(DE)
  SBC A,(HL)
  DAA
  LD (DE),A
  INC HL
  INC DE
  DJNZ BCD_Subtract_0
  POP DE
  POP HL
  RET NC
  CALL ValueAddAsBCD
  SCF
  RET

; Data block at ADDD
BCD_diff.:
  DEFB $00,$00,$00,$00    ; Temp store for BCD number.

; BCD adds DE from (HL)
;
; Used by the routine at Hero_Drop. Input:  Points  to HL BCD number. DE  BCD
; number to add.
BCD_AddDE:
  LD (BCD_diff.),DE
  LD DE,BCD_diff.
  JR ValueAddAsBCDCarry

; BCD Subtracts DE from (HL)
;
; Used by the routines at Exit_CheckInv, 8AC4 and Hero_Drop. Input:  Points  to
; HL BCD number. DE  BCD number to subtract.
BCD_SubDE:
  LD (BCD_diff.),DE
  LD DE,BCD_diff.
  JR BCD_Subtract

; Data block at ADF3
_adf3:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Prints a decimal BCD string onto screen.
;
; Used by the routines at Hero_DoorEntry, Gamble_DisplayStakes,
; Room_jvGambling, Inv_Update and Display_DecimalFromDE. Input:  HL  Ptr to BCD
; number.
Display_DecimalValue.:
  LD B,$04                ; Number of bytes that make up decimnal value.
  XOR A
  LD DE,$0003             ; Start with the most significant digit.
  ADD HL,DE
  LD DE,_adf3
Display_DecimalValue._0:
  LD C,(HL)               ; Copy BCD value for each digit in overall number.
  RLD
  LD (DE),A
  INC DE
  RLD
  LD (DE),A
  INC DE
  LD (HL),C
  DEC HL
  DJNZ Display_DecimalValue._0
  LD HL,_adf3
  LD B,$07
  LD C,$00                ; Set C so that leading zero check is used. Once C is
                          ; set, check will stop.
Display_DecimalValue._1:
  LD A,(HL)               ; Get decimal value.
  OR C                    ; Skip leading zeros.
  JR Z,Display_DecimalValue._2
  LD C,$30                ; Convert into ascii equivalent and print.
  OR C
  CALL Print_SelectChar
Display_DecimalValue._2:
  INC HL                  ; Next digit.
  DJNZ Display_DecimalValue._1
  LD A,(HL)               ; Print final zero.
  OR $30
  JP Print_SelectChar

; Displays a decimal held in DE as BCD.
Display_DecimalFromDE:
  LD (BCD_diff.),DE
  LD HL,BCD_diff.
  JP Display_DecimalValue.

; Clears a block of memory, ptr held in data {ptr, len}, by copying from $5c92.
;
; Used by the routines at Hero_DoorEntry, Game_Main, Room_Initialise,
; Hero_Arrest, Room_jvGambling, Thief_TryToSteal, Message_Display and
; Area_HideName. Ptr to data is stored directly after call (return address on
; stack).
Block_ClearMem:
  POP HL                  ; Get address of data.
  LD E,(HL)               ; Get pointer to copy to.
  INC HL
  LD D,(HL)
  INC HL
  LD C,(HL)               ; Number of bytes to copy.
  INC HL
  PUSH HL                 ; Store address after data as return address.
  LD B,$00
  LD HL,TempStore         ; Address to copy from.
  LDIR
  RET

; Search through data looking for first non zero byte.
;
; Used by the routines at Game_Main, Room_jvGambling and Inv_Update. Input:
; STACK  Ptr to data [Ptr to Data, size]
Search_NonZero:
  POP HL                  ; Get return address from stack. This holds data.
  LD E,(HL)               ; Get pointer.
  INC HL
  LD D,(HL)
  INC HL
  LD B,(HL)               ; Get Byte count.
  INC HL
  PUSH HL
  EX DE,HL
  XOR A                   ; Look for the first byte that is not zero.
Search_NonZero_0:
  CP (HL)
  RET NZ
  INC HL
  DJNZ Search_NonZero_0
  RET

; Finds the address of a word using an index.
;
; Used by the routines at Str_Decode and Dict_Print. Input:  A  Index of word.
; EXIT  HL holds ptr to word text. EXIT  C Word length. Words are grouped into
; letter length, in order starting from one.
Dict_GetWord:
  LD HL,Dict_Groups       ; Start with address of 1 letter word.
  LD DE,$0003             ; Number of bytes in the group data structure.
  LD C,D                  ; Index of group.
  LD B,D
Dict_GetWord_0:
  CP (HL)                 ; See if index is within the current word group.
  JR C,Dict_GetWord_1
  ADD HL,DE               ; if not move onto next group.
  INC C                   ; Increase the number of letters for group.
  JR Dict_GetWord_0
Dict_GetWord_1:
  AND A
  SBC HL,DE               ; Get difference between index and start of group
                          ; index.
  SUB (HL)
  INC HL
  LD E,(HL)               ; Get start address of words in group.
  INC HL
  LD D,(HL)
  EX DE,HL
  RET Z                   ; If first word in list, just return as we have the
                          ; correct address.
Dict_GetWord_2:
  ADD HL,BC               ; Offset address by words size until correct word is
                          ; found using original index.
  DEC A
  JR NZ,Dict_GetWord_2
  RET

; Prints dictionary word
;
; Used by the routines at Hero_DoorEntry and Area_Check. Input:  A  Word index.
Dict_Print:
  CALL Dict_GetWord
Dict_Print_0:
  LD A,(HL)
  CALL Print_SelectChar
  INC HL
  DEC C
  JR NZ,Dict_Print_0
  RET

; Hide area name text.
;
; Used by the routines at Hero_DoorEntry and Area_Check.
Area_HideName:
  CALL Block_ClearMem

; Data block at AE83
  DEFW ATTR_AreaName1
  DEFB $0D

; Routine at AE86
  CALL Block_ClearMem

; Data block at AE89
  DEFW ATTR_AreaName2
  DEFB $0D

; Routine at AE8C
  RET

; Checks for area and displays name.
;
; Used by the routines at BG_ScrollInDirection and Outside_DataRestore.
Area_Check:
  LD A,(Room_CurrentStore)
  DEC A
  RET NZ
  LD IX,Area_Data
  LD DE,(Coords_NS)
Area_Check_0:
  LD L,(IX+$00)
  LD H,(IX+$01)
  AND A
  SBC HL,DE
  JR C,Area_Check_2
Area_Check_1:
  LD BC,$000C
  ADD IX,BC
  JR Area_Check_0
Area_Check_2:
  LD L,(IX+$04)
  LD H,(IX+$05)
  AND A
  SBC HL,DE
  JR C,Area_Check_1
  LD BC,(Coords_EW)
  LD L,(IX+$02)
  LD H,(IX+$03)
  AND A
  SBC HL,BC
  JR NC,Area_Check_1
  LD L,(IX+$06)
  LD H,(IX+$07)
  AND A
  SBC HL,BC
  JR C,Area_Check_1
  LD BC,$0008
  ADD IX,BC
  PUSH IX
  POP DE
  LD HL,(_AreaNamePtr)
  AND A
  SBC HL,DE
  RET Z
; Display area name.
  LD (_AreaNamePtr),DE
  CALL Area_HideName
  LD A,$01
  CALL $1601
  CALL Print_StrFromStack

; Data block at AEEF
  DEFB $16                ; AT 6,19; PAPER $00; INK $04; BRIGHT $01
  DEFB $06
  DEFB $13
  DEFB $11
  DEFB $00
  DEFB $10
  DEFB $04
  DEFB $13
  DEFB $01
  DEFB $5E

; Return address from print.
  LD HL,(_AreaNamePtr)
  LD B,$02                ; Number of lines.
Area_Check_3:
  PUSH BC
  LD A,(HL)
  INC HL
  PUSH HL
  CALL Dict_Print
  LD A,$20                ; Print space.
  CALL Print_SelectChar
  POP HL                  ; next word
  LD A,(HL)
  INC HL
  PUSH HL
  CALL Dict_Print
  LD A,$16                ; PRINT AT 7,19;
  RST $10
  LD A,$07
  RST $10
  LD A,$13
  RST $10
  POP HL
  POP BC
  DJNZ Area_Check_3
  LD DE,$0007             ; Beep (Loop, Delay)
  LD HL,$015E
  JP $03B5

; Save / Load file data.
IO_StartAddr:
  DEFW Flag_dayNight      ; Start address of IO file.
IO_Length:
  DEFW $0064              ; Number of bytes in IO file.
; IO lead / header data.
IO_Lead:
  DEFB $03                ; File Type
  DEFM "dun"              ; File name
IO_Letter:
  DEFM "x"                ; ASCII value of load/save letter chosen.
  DEFM "      "           ; Padding for filename.
  DEFW $0000              ; Length of data block.
  DEFW $0000              ; Parameters.
  DEFW $0000

; Menu, display and handle.
;
; Used by the routine at _79b7.
Menu:
  XOR A
  LD (Mode_Demo),A
  LD HL,$BB82
  LD DE,Flag_dayNight
  AND A
  SBC HL,DE
  LD (IO_Length),HL
  LD (IY+$31),$18
  LD A,$01
  CALL $1601
  LD HL,$4000             ; Clear DF
  LD DE,$4001
  LD BC,$1AFF
  LD (HL),$00
  LDIR
  LD (IY+$0E),$07
  XOR A                   ; Black border.
  OUT ($FE),A
  CALL Print_StrFromStack ; Return address will hold menu string.

; Menu Text.
Text_Menu:
  DEFB $10                ; menu.
  DEFB $03
  DEFB $11
  DEFB $00
  DEFB $16
  DEFB $01
  DEFB $0B
  DEFM "options"
  DEFB $16
  DEFB $05
  DEFB $05
  DEFM "1. enter dun darach"
  DEFB $16
  DEFB $07
  DEFB $05
  DEFM "2. save game"
  DEFB $16
  DEFB $09
  DEFB $05
  DEFM "3. restore game"
  DEFB $16
  DEFB $0B
  DEFB $05
  DEFM "4. demo mode"
  DEFB $5E

; Return from print.
Menu_0:
  LD (IY-$32),$00         ; Clear LAST_K (last key pressed.)
Menu_1:
  LD A,(IY-$32)           ; Check LAST_K, wait for a key.
  AND A
  JR Z,Menu_1
  CP $31                  ; '1'
  JR Z,_Menu_Enter
  CP $32                  ; '2'
  JR Z,_Menu_Save
  CP $33                  ; '3'
  JR Z,Menu_Restore
  CP $34                  ; '4'
  JR NZ,Menu_0            ; Ignore any other key.
  LD A,$02                ; Set for demo mode.
  LD (Mode_Demo),A
; Enter Dun Darach
_Menu_Enter:
  LD (IY+$31),$08
  RET
; Save.
_Menu_Save:
  CALL IO_GetLetter
  CALL Print_StrFromStack

; Data block at AFEB
  DEFB $16
  DEFB $0E
  DEFB $02
  DEFM "start tape then press a key"
  DEFB $5E

; Routine at B00A
  LD (IY-$32),$00
Menu_2:
  LD A,(IY-$32)
  AND A
  JR Z,Menu_2
  LD IX,IO_Lead
  LD DE,$0011
  XOR A
  CALL Menu_6
  CALL NC,Menu_Abort
  LD B,$28
Menu_3:
  HALT
  DJNZ Menu_3
  LD IX,(IO_StartAddr)
  LD DE,(IO_Length)
  LD A,$FF
  CALL Menu_6
  CALL NC,Menu_Abort
  JP Menu
; Restore
Menu_Restore:
  CALL IO_GetLetter
Menu_4:
  LD IX,Offscreen_Bitmap
  LD DE,$0011
  XOR A
  CALL Menu_7
  JR NC,Menu_4
  LD DE,Offscreen_Bitmap
  LD HL,IO_Lead
  LD B,$11
Menu_5:
  LD A,(DE)
  CP (HL)
  JR NZ,Menu_4
  INC DE
  INC HL
  DJNZ Menu_5
  LD IX,(IO_StartAddr)
  LD DE,(IO_Length)
  LD A,$FF
  CALL Menu_7
  CALL NC,Menu_Abort
  JP Menu
Menu_6:
  CALL $04C6
  JR Menu_8
Menu_7:
  SCF
  INC D
  EX AF,AF'
  DEC D
  DI
  LD A,$0F
  OUT ($FE),A
  CALL $0562
Menu_8:
  PUSH AF
  XOR A
  OUT ($FE),A
  EI
  LD A,$7F
  IN A,($FE)
  RRA
  JR NC,Menu_9
  POP AF
  RET
Menu_9:
  POP AF
; Abort
Menu_Abort:
  CALL Print_StrFromStack

; Data block at B090
  DEFB $16
  DEFB $12
  DEFB $05
  DEFM "abandoned"
  DEFB $5E

; Routine at B09D
  LD B,$FA
Menu_10:
  HALT
  DJNZ Menu_10
  POP HL
  JP Menu

; Asks save / load letter from user.
;
; Used by the routine at Menu.
IO_GetLetter:
  CALL Print_StrFromStack

; Data block at B0A9
  DEFB $16
  DEFB $0E
  DEFB $05
  DEFM "enter version letter"
  DEFB $5E

; Routine at B0C1
  LD (IY-$32),$00
IO_GetLetter_0:
  LD A,(IY-$32)
  AND $DF
  CP $41                  ; From 'A'
  JR C,IO_GetLetter_0
  CP $5B                  ; To 'Z'
  JR NC,IO_GetLetter_0
  LD (IO_Letter),A
  RET

; Main stats and variables.
Flag_dayNight:
  DEFB $00                ; 0 = night, 1 = day.
BankAccountLow:
  DEFB $00                ; Units and Tens of bank account (BCD)
BankAccountMid:
  DEFB $00                ; Hundreds and Thousands of bank account (BCD)
BankAccountHigh:
  DEFB $00                ; Upper values of bank account (BCD)
  DEFB $00,$00
Offer_Count:
  DEFB $00
Offer_ObjIndex:
  DEFB $00                ; Index of object offered during offer action.
Shop_ObjIndex:
  DEFB $00,$00,$00,$00    ; Index of object's noun (in shop).
Offer_PersonPtr:
  DEFW $0000              ; Pointer to person hero is currently offering to.
Obj_Price:
  DEFB $00,$00            ; Cost of an object (in shop) in BCD.
  DEFW $0000
Hero_ArrestCount:
  DEFB $00
Skar_ShowCount:
  DEFB $00                ; Runs through the revealing Skar routine when set.
                          ; Starts from $c3 and counts down.
Event_NumDoors:
  DEFB $00                ; Gets increased whenever a door event occurs.
Gamble_Counter:
  DEFB $00                ; Counter for the gambling room. Runs as follows:
                          ; Value State 0 Place your bets. $01 ~ $50 Wait to
                          ; start $51 Place your bets, roll both dice $52 Right
                          ; hand dice stopped $53 ~ $FF Display result and wait
Account_Cost:
  DEFB $00,$00            ; Holds the amount dropped when adding to an account
                          ; or the cost of a bet.
Gamble_leftValue:
  DEFB $00,$00,$00,$00    ; Holds the amount of money on plinth A for the
                          ; gambling.
Gamble_rightValue:
  DEFB $00,$00,$00,$00    ; Holds the amount of money on plinth B for the
                          ; gambling.
  DEFB $00,$00,$00
PictureMatrix_Gallery:
  DEFB $00,$00,$00,$00    ; Holds an array of indices representing the char
                          ; bitmaps drawn within a gallery's picture frame.
PictureMatrix_Gallery_Image1:
  DEFB $00
  DEFB $00,$00,$00,$00
PictureMatrix_Deposit:
  DEFB $00,$00,$00,$00    ; Picture matrix start for a deposit room. The
                          ; picture is stored as a matrix of character indices.
PictureMatrix_Deposit_Image:
  DEFB $00                ; This byte represents the index used for the
                          ; pictures clue.
  DEFB $00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00
Room_Flags:
  DEFB $00                ; Set to $50 when 'no more bets' is on, $00 hero can
                          ; place bets.
_b11e:
  DEFB $00
_frames:
  DEFB $00                ; Frames counter.
Mode_Demo:
  DEFB $00                ; 2 = Demo mode.
KeyStore:
  DEFB $00,$00,$00,$00,$00,$00,$00 ; Bytes holding last key press.
KeyStoreN:
  DEFB $00
KeyCmd:
  DEFB $00                ; Holds bit flags representing which commands to act
                          ; on due to a key press. Bit Description 0 Right 1
                          ; Left 2 Rotate CW 3 Rotate CCW 4 Offer 5 Pick up 6
                          ; Drop
KeyCmd_Enter:
  DEFB $00                ; Bit 1 is set when ENTER is pressed.
LinkList_Spare_Ptr:
  DEFW $0000              ; Ptr to spare node link list.
; Cache of bitmap data
Bitmap_InfoCache:
  DEFW $0000              ; Address
Bitmap_InfoCache_Height:
  DEFB $00                ; Height
Bitmap_InfoCache_Width:
  DEFB $00                ; Width
Hero_FrameCount:
  DEFB $00                ; Some sort of frame count
  DEFB $00
LinkList_Bg_Ptr:
  DEFW $0000              ; Ptr to background link list.
Ptr_PersonLinkList:
  DEFW People_Skar        ; Pointer to the start of the person link list.
  DEFW $0000
  DEFW $0000
  DEFW $0000
  DEFW $0000
  DEFW $0000
  DEFW $0000
  DEFW $0000
  DEFW $0000
  DEFW $0000
  DEFW $0000
  DEFW $0000
  DEFB $00
_b14e:
  DEFB $00
Inv_Pocket1:
  DEFB $00                ; Pocket 1, holds index to object being carried.
Inv_Pocket2:
  DEFB $00                ; Pocket 2, holds index to object being carried.
Inv_Pocket3:
  DEFB $00                ; Pocket 3, holds index to object being carried.
Inv_Select:
  DEFB $00                ; Index value of item selected (0 = iridi tokens).
IridiValue:
  DEFB $00,$20,$00,$00    ; Number of tokens held as a BCD string.
PathFound_IndexCount:
  DEFB $00                ; Paths counted during a path found search.
Room_CurrentStore:
  DEFB $01                ; Room type (+1) for which to store saved info when
                          ; entering / leaving.
  DEFB $00
Coords_NS:
  DEFW $058C
Coords_EW:
  DEFW $0474
Hero_Frame:
  DEFB $13,$00            ; Current bitmap frame of hero.
Camera_Compass:
  DEFB $00,$00            ; Direction compass, camera is facing. [0 North, 1
                          ; East, 2 South, 3 West]
Hero_LastDirection:
  DEFB $01                ; Last direction of travel. 1 Right 2 Left
Hero_CompassFacing:
  DEFB $02,$00            ; Compass direction that hero is facing.
Hero_PathPtr:
  DEFW $0000              ; Pointer to path data.
PathFound_Compass:
  DEFB $00                ; The compass when a path is found.
PathFound_PathPtr:
  DEFW $0000              ; Pointer to a path when found.
  DEFB $00,$00,$00
Room_CurrentIndex:
  DEFB $00                ; Index of current room (0 - outside)
  DEFW $0000
Room_CurrentInfoDataPtr:
  DEFW $7906              ; Stored ptr to room main data chunk. differs for
                          ; each room type.
PathFound_BackgroundPtr:
  DEFW $0000              ; Pointer to the background description of a path
                          ; found.
; Next 8 bytes... Copied from _6903 + (a * 8), see _7da8
Ptr_Path_EW:
  DEFW Path_Data_EW       ; Pointer to E/W path data.
Ptr_Path_NS:
  DEFW Path_Data_NS       ; Pointer to N/S path data.
Room_Type:
  DEFB $01                ; Type of room hero is in. 0 outside 1 Seller 2
                          ; Broker 3 Deposit 5 Iomain Ludum 7 Gallery 8 Castle
                          ; 9 Bank A Portal B String Room
JP_Vector:
  DEFW $0000              ; Holds vector address for JP (HL).
AreaColour:
  DEFB $28                ; Colour of area used to draw stage.
_AreaNamePtr:
  DEFW $0000              ; Points to address holding place name sentence.
ExitFound_Coords:
  DEFW $0000              ; Copy of exit that was found when entering.
ExitFound_A:
  DEFB $00
ExitFound_RoomIndex:
  DEFB $00                ; Index of room hero would like to enter (0 -
                          ; Outside).
; Holds info on doorways. Added as more road is revealed.
Door_cache:
  DEFW $0000              ; Coords along road's axis. This is used for
                          ; positioning when entering and drawing doors.
  DEFB $00,$00
  DEFW $0000
  DEFB $00,$00
  DEFW $0000
  DEFB $00,$00
  DEFW $0000
  DEFB $00,$00
  DEFW $0000
  DEFB $00,$00
  DEFW $0000
  DEFB $00,$00
Flag_DoorEntry:
  DEFB $00                ; 0 None 1 Door entry 3 Door closing
Msg_CountDown:
  DEFB $00                ; Counts down when a message is being displayed on
                          ; screen. The message is cleared when the counter
                          ; hits zero.
PathFound_InOut_Axis:
  DEFW $0000              ; Data for path leading in/out of screen.
PathFound_InOut_Start:
  DEFW $0000              ; Start of path found.
PathFound_InOut_End:
  DEFW $0000              ; End of path found.
  DEFW Path_InOutDescr
  DEFW Path_InOutDescr
  DEFB $01,$01
Path_InOutDescr:
  DEFB $00,$00            ; Description for path leading in / out of screen.
PathFound_StartMargin:
  DEFW $8020              ; Value used to calculate any part of the screen the
                          ; path isn't on.
  DEFB $20
  DEFB $08,$10,$9B,$FF,$9B,$00

; Paths  Paths and descriptions for rooms.
;
; Data for the rooms.
Path_InsideEW:
  DEFB $00
PathFound_EndMargin:
  DEFW $8020              ; Value used to calculate any part of the screen the
                          ; path isn't on.
  DEFB $20,$08,$10,$9B,$FF,$9B,$00,$00
; Path
_b1be_path:
  DEFW $0068
  DEFW $0064
  DEFW $0084
  DEFW _b1d8_descr
  DEFW _b1e2_descr
  DEFB $00,$00
_b1ca_path:
  DEFW $00C8
  DEFW $0064
  DEFW $0084
  DEFW _b1e9_descr
  DEFW _b1f8_descr
  DEFB $00,$00
  DEFW $FFFF
_b1d8_descr:
  DEFB $74,$00,$12,$08,$00,$10,$00,$EC
  DEFB $00,$00
_b1e2_descr:
  DEFB $6E,$80,$0C,$05,$ED,$00,$00
_b1e9_descr:
  DEFB $6E,$80,$0C,$05,$ED,$00,$00
_b1f8_descr:
  DEFB $74,$00,$12,$08,$00,$10,$00,$F9
  DEFB $00,$00
; Path
_b1fa_path:
  DEFW $0080
  DEFW $0064
  DEFW $00CC
  DEFW _b208_descr
  DEFW _b212_descr
  DEFW $0000
  DEFW $FFFF
_b208_descr:
  DEFB $98,$00,$36,$08,$00,$10,$00,$F0
  DEFB $00,$00
_b212_descr:
  DEFB $98,$00,$2A,$08,$00,$10,$00,$F1
  DEFB $00,$00
; Path
_b21c_path:
  DEFW $0080
  DEFW $0064
  DEFW $00CC
  DEFW _b22a_descr
  DEFW _b234_descr
  DEFB $00,$00
  DEFB $FF,$FF
_b22a_descr:
  DEFB $98,$00,$36,$08,$00,$10,$00,$F2
  DEFB $00,$00
_b234_descr:
  DEFB $98,$00,$2A,$08,$00,$10,$00,$EF
  DEFB $00,$00
; Path
_b234_path:
  DEFW $0080
  DEFW $0064
  DEFW $00CC
  DEFW _b24c_descr
  DEFW _b256_descr
  DEFB $00,$00
  DEFB $FF,$FF
_b24c_descr:
  DEFB $98,$00,$36,$08,$00,$10,$00,$FA
  DEFB $00,$00
_b256_descr:
  DEFB $98,$00,$2A,$08,$00,$10,$00,$F6
  DEFB $00,$00
; Path
_b260_path:
  DEFW $0080
  DEFW $0064
  DEFW $00CC
  DEFW _b26e_descr
  DEFW _b234_descr
  DEFB $00,$00
  DEFW $FFFF
_b26e_descr:
  DEFB $98,$00,$36,$08,$00,$10,$00,$EE
  DEFB $00,$00
_b278_path:
  DEFW $0080
  DEFW $0064
  DEFW $00CC
  DEFW _b286_descr
  DEFW _b256_descr
  DEFW $0000
  DEFW $FFFF
_b286_descr:
  DEFB $98,$00,$36,$08,$00,$10,$00,$F8
  DEFB $00,$00
; Path
_b290_path:
  DEFW $0080
  DEFW $0064
  DEFW $00CC
  DEFW _b29e_descr
  DEFW _b234_descr
  DEFB $00,$00
  DEFW $FFFF
_b29e_descr:
  DEFB $98,$00,$36,$08,$00,$10,$00,$F3
  DEFB $00,$00
; Path
_b2a8_path:
  DEFW $0080
  DEFW $0064
  DEFW $00CC
  DEFW _b2b6_descr
  DEFW _b256_descr
  DEFB $00,$00
  DEFW $FFFF
_b2b6_descr:
  DEFB $98,$00,$36,$08,$00,$10,$00,$F5
  DEFB $00,$00
; Path
_b2c0_path:
  DEFW $0080
  DEFW $0064
  DEFW $00CC
  DEFW _b22a_descr
  DEFW _b212_descr
  DEFB $00,$00
  DEFW $FFFF

; Table of pointers to all of the background description strings. Each string
; describes the furniture displayed in the background.
PtrTble_BgStr:
  DEFW BgStr_b312
  DEFW BgStr_b317
  DEFW BgStr_b31d
  DEFW BgStr_b32b
  DEFW BgStr_b33e
  DEFW BgStr_b350
  DEFW BgStr_b364
  DEFW BgStr_b368
  DEFW BgStr_b36e
  DEFW BgStr_b374
  DEFW BgStr_b385
  DEFW BgStr_b38a
  DEFW BgStr_b39a
  DEFW BgStr_b3ab
  DEFW BgStr_b3be
  DEFW BgStr_b3d0
  DEFW BgStr_b3dc
  DEFW BgStr_b3e5
  DEFW BgStr_b405
  DEFW BgStr_b41f
  DEFW BgStr_b44a
  DEFW BgStr_b46a
  DEFW BgStr_b489
  DEFW BgStr_b4a4
  DEFW BgStr_b4ad
  DEFW BgStr_b4c3
  DEFW BgStr_b4d7
  DEFW BgStr_b4dc
  DEFW BgStr_d4f8
  DEFW BgStr_b504
  DEFW BgStr_b524
  DEFW BgStr_b52a
  DEFW BgStr_b534
  DEFW BgStr_b538

; Background description strings
BgStr_b312:
  DEFB $05,$9A,$01,$8F,$01 ; [No. of bytes (incl.), item, item, item]
BgStr_b317:
  DEFB $06,$01,$8F,$01,$10,$9A
BgStr_b31d:
  DEFB $0E,$C8,$05,$B8,$80,$01,$92,$02
  DEFB $87,$B4,$C6,$05,$8B,$02
BgStr_b32b:
  DEFB $13,$C8,$B8,$01,$86,$B4,$81,$01
  DEFB $A0,$10,$A0,$92,$A0,$10,$A0,$01
  DEFB $81,$86,$B8
BgStr_b33e:
  DEFB $12,$B8,$06,$C6,$01,$8A,$10,$8A
  DEFB $01,$B8,$92,$B8,$01,$87,$8B,$B4
  DEFB $8B,$03
BgStr_b350:
  DEFB $14,$98,$C1,$C6,$01,$C1,$87,$98
  DEFB $C6,$C8,$10,$C1,$B4,$87,$01,$C6
  DEFB $10,$98,$01,$C8
BgStr_b364:
  DEFB $04,$98,$C6,$01
BgStr_b368:
  DEFB $06,$9A,$87,$C1,$10,$9A
BgStr_b36e:
  DEFB $06,$8B,$01,$C6,$01,$C1
BgStr_b374:
  DEFB $11,$C8,$C6,$07,$8C,$10,$8C,$01
  DEFB $C7,$01,$C8,$92,$87,$80,$02,$C6
  DEFB $02
BgStr_b385:
  DEFB $05,$DD,$E5,$E2,$DE
BgStr_b38a:
  DEFB $10,$87,$89,$B8,$89,$B4,$01,$81
  DEFB $01,$92,$01,$81,$01,$89,$87,$01
BgStr_b39a:
  DEFB $11,$C1,$98,$8D,$8D,$87,$8D,$10
  DEFB $C1,$92,$C8,$8D,$87,$C6,$98,$B4
  DEFB $C8
BgStr_b3ab:
  DEFB $13,$8C,$10,$8C,$8C,$10,$8C,$B4
  DEFB $81,$C6,$01,$92,$01,$81,$01,$8C
  DEFB $10,$8C,$01
BgStr_b3be:
  DEFB $12,$98,$89,$C6,$01,$C1,$89,$10
  DEFB $C1,$87,$C6,$98,$89,$C8,$89,$C1
  DEFB $C6,$98
BgStr_b3d0:
  DEFB $0C,$9A,$01,$C8,$B4,$93,$10,$C8
  DEFB $10,$B4,$10,$9A
BgStr_b3dc:
  DEFB $09,$9A,$02,$C6,$B4,$C8,$01,$10
  DEFB $9A
BgStr_b3e5:
  DEFB $20,$9A,$03,$C6,$87,$61,$A4,$A5
  DEFB $10,$A4,$BC,$B4,$62,$A4,$A5,$10
  DEFB $A4,$BD,$02,$C2,$C2,$02,$B2,$B4
  DEFB $B2,$01,$93,$C6,$B4,$03,$10,$9A
BgStr_b405:
  DEFB $1A,$9A,$02,$A6,$A7,$10,$A6,$01
  DEFB $C6,$01
BgStr_b40f:
  DEFB $93,$B4,$B2,$87,$01,$A6,$A7,$10
  DEFB $A6,$B4,$B2,$02,$C6,$02,$10,$9A
BgStr_b41f:
  DEFB $2B,$9A,$02,$B4,$C4,$C5,$C3,$C3
  DEFB $10,$C4,$C8,$61,$A4,$A5,$10,$A4
  DEFB $01,$62,$A4,$A5,$10,$A4,$C6,$01
  DEFB $63,$A4,$23,$A5,$9E,$10,$9E,$64
  DEFB $23,$A5,$10,$A4,$01,$93,$01,$C8
  DEFB $03,$10,$9A
BgStr_b44a:
  DEFB $20,$9A,$01,$C4,$C5,$C3,$10,$C4
  DEFB $02,$C6,$02,$93,$01,$C4,$25,$C5
  DEFB $10,$C4,$02,$C8,$C6,$87,$C4,$C5
  DEFB $C3,$C5,$C5,$10,$C4,$02,$10,$9A
BgStr_b46a:
  DEFB $1F,$9A,$B4,$C6,$C8,$B2,$B4,$01
  DEFB $82,$01,$61,$A4,$A5,$10,$A4,$01
  DEFB $83,$01,$A6,$A7,$10,$A6,$87,$C6
  DEFB $C8
BgStr_b483:
  DEFB $93,$87,$B4,$02,$10,$9A
BgStr_b489:
  DEFB $1B,$9A,$B4,$C6,$C8,$82,$01,$83
  DEFB $01,$61,$A4,$A5,$10,$A4,$01,$84
  DEFB $01,$85,$87,$C6,$C8,$93,$87,$B4
  DEFB $02,$10,$9A
BgStr_b4a4:
  DEFB $09,$DD,$C6,$02,$26,$95,$02,$C6
  DEFB $DE
BgStr_b4ad:
  DEFB $16,$9A,$B4,$C6,$98,$C1,$C1,$C8
  DEFB $87,$98,$C6,$C8,$C1,$01,$98,$C1
  DEFB $95,$98,$C6,$01,$10,$9A
BgStr_b4c3:
  DEFB $14,$9A,$C1,$C8,$98,$95,$C6,$01
  DEFB $B4,$C1,$C6,$87,$10,$C1,$87,$10
  DEFB $98,$B4,$10,$9A
BgStr_b4d7:
  DEFB $05,$DD,$E5,$E1,$DE
BgStr_b4dc:
  DEFB $1C
  DEFB $9A,$B4,$01,$98,$C1,$C1,$A0,$10
  DEFB $A0,$61,$A4,$A5,$10,$A4,$A0,$10
  DEFB $A0,$01,$83,$C6,$98,$C1,$95,$98
  DEFB $02,$10,$9A
BgStr_d4f8:
  DEFB $0C,$9A,$01,$C8,$B4,$93,$10,$C8
  DEFB $10,$B4,$10,$9A
BgStr_b504:
  DEFB $20,$9A,$98,$B4,$87,$C1,$61,$A4
  DEFB $A5,$10,$A4,$C2,$01,$62,$A4,$A5
  DEFB $10,$A4,$C2,$01,$63,$A4,$A5,$10
  DEFB $A4,$C2,$01,$93,$C1,$B4,$10,$9A
BgStr_b524:
  DEFB $06,$01,$C6,$94,$C6,$C8
BgStr_b52a:
  DEFB $0A,$DD,$E5,$E3,$C6,$95,$10,$99
  DEFB $E5,$DE
BgStr_b534:
  DEFB $04,$DD,$E5,$DE
BgStr_b538:
  DEFB $05,$DD,$DF,$E5,$DE

; Data block at B53D
  DEFB $74,$65,$74,$68,$20,$69,$73,$20
  DEFB $6A,$61,$69,$6C,$65,$72,$5E,$66
  DEFB $6F,$72,$62,$69,$64,$64,$65,$6E
  DEFB $21,$5E,$5E,$38,$20,$72,$6F,$77
  DEFB $73,$20,$61,$6E,$64,$20,$62,$61
  DEFB $72,$2B,$66,$6F,$72,$20,$6B,$65
  DEFB $79,$20,$66,$69,$6E,$64,$20,$73
  DEFB $6B,$61,$72,$5E,$66,$72,$65,$65
  DEFB $21,$20,$73,$68,$6F,$77,$20,$6D
  DEFB $65,$20,$74,$68,$65,$20,$6B,$65
  DEFB $79,$2B,$77,$65,$27,$6C,$6C,$20
  DEFB $6C,$65,$61,$76,$65,$5E,$64,$61
  DEFB $72,$61,$63,$68,$20,$64,$6F,$77
  DEFB $6E,$5E,$6E,$6F,$20,$65,$78,$69
  DEFB $74,$5E,$74,$68,$65,$20,$65,$6E
  DEFB $64,$21,$20,$74,$61,$20,$66,$72
  DEFB $6F,$6D,$20,$67,$67,$21,$5E

; Rooms  Main Data. See also Room_TypeJumpVector and Room_DataSizes Outside
; info.
Room_MainData:
  DEFB $1E                ; Size of data in bytes (including this one).
  DEFB $0F                ; [Room type (0), Exit mask (F)]
  DEFB $00,$00,$01,$00,$00,$00,$00 ; North exit [, type (0) (7 bytes)]
  DEFB $00,$00,$01,$00,$00,$00,$00
Outside_SouthExitData:
  DEFB $00,$00,$01        ; South exit [, type (0)]
  DEFW $0000              ; Position of hero when last outside.
  DEFW $0000
  DEFB $00,$00,$01,$00,$00,$00,$00
; Room [1, Castle]
  DEFB $0F                ; Size of data in bytes.
  DEFB $85                ; [Room type, Exits ( _ S _ N )]
  DEFB $30
  DEFB $3D
  DEFB $B5
  DEFB $10                ; North Exit [ , type 0 (7 bytes) ]
  DEFB $00,$01,$BC,$02,$05,$06
  DEFB $11                ; South Exit [ , type 1 (3 bytes) ]
  DEFB $27                ; Object index for key [D Key]
  DEFB $4E
; Room [2. ]
  DEFB $05,$80,$08,$A7,$B5 ; [02]
  DEFB $10,$0A,$00,$00,$01,$C5,$03,$5C ; [03]
  DEFB $03,$00,$00,$01,$37,$03,$3C,$05
  DEFB $05,$30,$30,$62,$00 ; [04]
  DEFB $07,$20,$18,$19,$50,$07,$5E ; [05]
  DEFB $05,$30,$30,$00,$00 ; [06]
  DEFB $05,$30,$30,$6C,$00 ; [07]
; Broker, 1 Long Lane.
  DEFB $07,$20,$18,$0A,$00,$02,$39 ; [08]
; Deposit, 3 Long Lane.
  DEFB $05,$30,$30,$00,$00 ; [09]
  DEFB $06,$10,$20,$09,$00,$04 ; [0A]
  DEFB $06,$10,$20,$04,$00,$03 ; [0B]
  DEFB $05,$30,$30,$63,$00 ; [0C]
  DEFB $06,$10,$20,$05,$00,$02 ; [0D]
  DEFB $06,$10,$20,$07,$00,$01 ; [0E]
  DEFB $07,$20,$18,$06,$00,$02,$3A ; [0F]
  DEFB $06,$10,$20,$02,$00,$15 ; [10]
  DEFB $06,$10,$20,$0B,$50,$01 ; [11]
  DEFB $06,$10,$20,$0C,$00,$04 ; [12]
; Room [13, Gallery, Herne Hill] 1 Herne Hill.
  DEFB $11                ; Number of bytes in data.
  DEFB $70                ; Room type (7)
  DEFB $38                ; White background.
  DEFB $00                ; Plinth, Where to place the object for matching.
  DEFB $20                ; Index of reward object (Brooch)
  DEFB $44                ; Arrow character displayed in picture.
  DEFB $0E                ; Object (Arrow) required.
  DEFB $7D                ; 'tick' character used when correct object placed.
  DEFB $43                ; '+z' character.
  DEFB $11                ; Object (Adze) required.
  DEFB $7D
  DEFB $42                ; 'o' character.
  DEFB $17                ; Object (Hoe) required.
  DEFB $7D
  DEFB $41                ; 'eye' character.
  DEFB $07                ; Object (needle) required.
  DEFB $7D
; Room [14]
  DEFB $06,$10,$38,$0E,$50,$01 ; [14]
  DEFB $06,$10,$38,$06,$50,$01 ; [15]
  DEFB $06,$10,$30,$0F,$00,$07
  DEFB $06,$10,$30,$10,$00,$05
  DEFB $06,$10,$20,$11,$00,$03
  DEFB $05,$30,$18,$73,$00
  DEFB $06,$10,$20,$12,$50,$01
; 4 Herne Hill
  DEFB $11,$70,$38,$00,$21,$40,$38,$7D
  DEFB $3F,$05,$7D,$3E,$08,$7D,$3D,$0C
  DEFB $7D
  DEFB $05,$30,$30,$79,$00
  DEFB $06,$10,$18,$17,$50,$02
  DEFB $06,$10,$20,$0A,$50,$01
  DEFB $06,$10,$18,$1B,$00,$01
  DEFB $06,$10,$38,$15,$00,$02
  DEFB $07,$20,$18,$03,$00,$08,$38
  DEFB $05,$30,$20,$63,$00
  DEFB $07,$20,$30,$0B,$00,$02,$3B
  DEFB $11,$70,$38,$00,$1E,$50,$1B,$7D
  DEFB $4F,$1A,$7D,$4E,$13,$7D,$4D,$10
  DEFB $7D
  DEFB $05,$30,$30,$6F,$00
; Room [  ]
  DEFB $0A,$60,$20,$00,$26,$4C,$22,$6B
  DEFB $65,$79
  DEFB $05,$30,$18,$75,$00
  DEFB $05,$30,$30,$74,$00
  DEFB $22,$5F,$30,$00,$00,$00,$10,$00
  DEFB $01,$1C,$07,$A1,$04,$10,$00,$01
  DEFB $5D,$07,$EC,$04,$10,$00,$01,$BC
  DEFB $07,$AB,$04,$10,$00,$01,$7B,$07
  DEFB $4C,$04,$06,$10,$20,$03,$00,$06
; Argot Bank.
  DEFB $20,$9F,$30,$00,$10,$00,$01,$DC
  DEFB $05,$FD,$02,$10,$00,$01,$1D,$06
  DEFB $5C,$03,$10,$00,$01,$7C,$06,$1B
  DEFB $03,$10,$00,$01,$27,$06,$BC,$02
  DEFB $05,$30,$20,$69,$00,$06,$10,$38
  DEFB $1A,$00,$02,$0D,$AA,$20,$31,$00
  DEFB $2F,$10,$00,$01,$27,$06,$5C,$03
; Portal, 2 Herne Hill
  DEFB $0D,$AA,$38,$31,$00,$30,$10,$00
  DEFB $01,$43,$04,$BC,$02,$0D,$AA,$18
  DEFB $31,$00,$31,$10,$00,$01,$87,$05
  DEFB $6C,$07,$0D,$AA,$30,$31,$00,$2E
  DEFB $10,$00,$01,$57,$08,$8C,$05,$05
  DEFB $30,$30,$65,$00,$10,$16,$38,$38
  DEFB $00,$04,$21,$37,$68,$10,$00,$01
  DEFB $BC,$07,$D3,$05,$0A,$60,$30,$00
  DEFB $00,$4B,$23,$7C,$7E,$7C,$06,$10
  DEFB $18,$19,$00,$05,$05,$30,$38,$74
  DEFB $00,$07,$31,$20,$00,$18,$12,$26
  DEFB $05,$30,$18,$61,$00
; Room [ , Ladyos]
  DEFB $07,$84,$10,$4C,$B5
  DEFB $12
  DEFB $31                ; Key $31 (spell "show the lady")
  DEFB $05,$30,$38,$73,$00,$11,$70,$30
  DEFB $00,$1F,$48,$15,$7D,$47,$04,$7D
  DEFB $46,$12,$7D,$45,$09,$7D,$06,$10
  DEFB $20,$2B,$00,$20,$05,$30,$18,$00
  DEFB $00,$05,$30,$38,$65,$00,$07,$34
  DEFB $20,$00,$24,$12,$2C,$05,$30,$18
  DEFB $00,$00
; Room [ ,Thieves Guild]
  DEFB $06,$10,$30,$14,$41,$00
  DEFB $06,$10,$38,$37,$41,$00,$09,$08
  DEFB $30,$00,$01,$70,$03,$CC,$06,$09
  DEFB $08,$30,$00,$01,$30,$02,$AC,$08
  DEFB $09,$08,$30,$00,$01,$30,$02,$FC
  DEFB $08,$09,$08,$30,$00,$01,$30,$02
  DEFB $4C,$09,$09,$08,$30,$00,$01,$30
  DEFB $02,$9C,$09,$09,$08,$30,$00,$01
  DEFB $30,$02,$EC,$09,$09,$08,$30,$00
  DEFB $01,$30,$02,$3C,$0A,$09,$08,$30
  DEFB $00,$01,$30,$02,$8C,$0A,$0B,$8C
  DEFB $30,$57,$B5,$11,$33,$4D,$11,$00
  DEFB $4C,$0F,$8A,$30,$58,$B5,$10,$00
  DEFB $01,$30,$02,$5C,$08,$11,$00,$4E
  DEFB $12,$43,$30,$00,$3A,$3B,$6F,$61
  DEFB $6B,$61,$74,$78,$11,$33,$4B,$11
  DEFB $00,$4F,$15,$47,$20,$00,$39,$00
  DEFB $64,$70,$65,$61,$74,$78,$11,$27
  DEFB $01,$11,$00,$4C,$31,$00,$69,$0F
  DEFB $8C,$20,$79,$B5,$10,$3B,$01,$4C
  DEFB $04,$40,$06,$11,$00,$4D,$05,$30
  DEFB $20,$68,$00,$06,$10,$38,$13,$50
  DEFB $01,$05,$30,$38,$6B,$00,$05,$80
  DEFB $08,$9B,$B5,$07,$81,$00,$AF,$B5
  DEFB $12,$3B,$06,$10,$20,$1D,$00,$10
  DEFB $05,$30,$18,$6E,$00,$05,$30,$30
  DEFB $00,$00,$06,$10,$30,$08,$00,$01
  DEFB $05,$30,$20,$72,$00,$07,$38,$20
  DEFB $00,$3C,$12,$29,$05,$30,$38,$6D
  DEFB $00,$05,$30,$18,$69,$00,$0A,$60
  DEFB $30,$00,$00,$49,$25,$7C,$3C,$7C
  DEFB $06,$10,$20,$31,$00,$10
; Secret room, Park Row.
  DEFB $05                ; Size
  DEFB $80                ; [Type (8), no exit data]
  DEFB $20,$57,$B5        ; 3 bytes of data.
; 28 Park Row
  DEFB $05
  DEFB $30                ; [Type 3, no exit data]
  DEFB $30,$74,$00
; Strong room, north wall.
  DEFB $05                ; Size
  DEFB $B0                ; [Type (8), no exit data]
  DEFB $20,$00,$32        ; 3 bytes of data.
; Gallery, north wall.
  DEFB $06                ; Size
  DEFB $10                ; [Type (1), blank exit mask]
  DEFB $18,$28,$00,$06
; 85 Leaf lane.
  DEFB $05,$30,$30,$65,$00
; 86 Leaf Lane.
  DEFB $05,$30,$38,$79,$00
; 59 West Wall
  DEFB $05
  DEFB $30,$20,$70,$00,$05,$30,$18,$00
  DEFB $00,$0A,$60,$20,$00,$00,$4A,$24
  DEFB $7C,$50,$7C,$08,$38,$10,$00,$25
  DEFB $11,$37,$33,$0B,$33,$18,$00,$00
  DEFB $31,$00,$4E,$31,$00,$6A,$08,$38
  DEFB $10,$00,$00,$31,$00,$69,$00,$00

; People Data, Skar
People_Skar:
  DEFW People_Ryde        ; [00] Ptr to next person in list.
  DEFB $00                ; [02] Compass.
  DEFB $29                ; [03] Start frame.
  DEFB $35                ; [04] End frame.
  DEFW $080C              ; [05] N/S coord.
  DEFW $06A8              ; [07] E/W coord.
  DEFB $12                ; [09]
  DEFB $00                ; [0A] Current action countdown.
  DEFB $29                ; [0B] Current bitmap frame index.
  DEFB $00                ; [0C]
  DEFB $00                ; [0D] Waiting for next action countdown.
  DEFB $01                ; [0E] Identifier
  DEFB $01                ; [0F]
  DEFB $01                ; [10]
  DEFB $00                ; [11] Current path ptr.
  DEFB $00                ; [12]
  DEFB $03                ; [13] Bit flags
  DEFB $00                ; [14]
  DEFB $00                ; [15]
  DEFB $00                ; [16] Subroutine index. See People_ActionTable
  DEFB $00                ; [17] Action flags
  DEFB $00                ; [18]
  DEFW $03D4
  DEFW $02BC
  DEFB $03,$00
  DEFW $080C
  DEFW $06A8
  DEFB $00,$00
  DEFM "skar"

; People Data, Ryde
People_Ryde:
  DEFW People_Kara
  DEFB $00,$3D,$49,$93,$05,$5C,$03,$12
  DEFB $00,$3D,$00,$00,$02,$01,$01,$00
  DEFB $00,$04,$00,$00,$00,$00,$00,$3C
  DEFB $05,$C9,$07,$00,$0C,$7F,$05,$5C
  DEFB $03,$03,$2C
  DEFM "ryde"

; People Data, Kara
People_Kara:
  DEFW People_Keli
  DEFB $00,$29,$35,$39,$06,$6C,$07,$12
  DEFB $00,$29,$00,$00,$03,$01,$01,$00
  DEFB $00,$0C,$00,$00,$00,$00,$00,$9C
  DEFB $04,$7F,$05,$02,$1C,$39,$06,$6C
  DEFB $07,$01,$22
  DEFM "kara"

; People Data, Keli
People_Keli:
  DEFW People_Kahn
  DEFB $00,$29,$35,$1C,$07,$4F,$05,$12
  DEFB $00,$29,$00,$00,$04,$01,$01,$00
  DEFB $00,$0C,$00,$00,$00,$00,$00,$7C
  DEFB $06,$05,$04,$02,$42,$1C,$07,$2F
  DEFB $05,$02,$00
  DEFM "keli"

; People Data, Kahn
People_Kahn:
  DEFW People_Dain
  DEFB $00,$3D,$49,$69,$08,$CC,$06,$12
  DEFB $00,$3D,$00,$00,$05,$01,$01,$00
  DEFB $00,$08,$00,$00,$00,$00,$00,$7C
  DEFB $06,$B4,$07,$00,$00,$69,$08,$CC
  DEFB $06,$01,$5C
  DEFM "kahn"

; People Data, Dain
People_Dain:
  DEFW People_Mhor
  DEFB $02,$3D,$49,$78,$00,$80,$00,$12
  DEFB $00,$49,$00,$00,$06,$09,$02,$A8
  DEFB $B2,$46,$00,$00,$05,$00,$5F,$CC
  DEFB $06,$95,$04,$00,$00,$FC,$03,$33
  DEFB $03,$00,$00
  DEFM "dain"

; People Data, Mhor
People_Mhor:
  DEFW People_Teth
  DEFB $00,$29,$35,$83,$05,$3C,$05,$12
  DEFB $00,$29,$00,$00,$07,$01,$01,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$FC
  DEFB $03,$33,$03,$00,$5F,$CC,$06,$0C
  DEFB $03,$00,$00
  DEFM "mhor"

; People Data, Teth
People_Teth:
  DEFW People_Pita
  DEFB $00,$3D,$49,$78,$00,$80,$00,$12
  DEFB $00,$49,$00,$00,$08,$09,$02,$A8
  DEFB $B2,$44,$00,$00,$05,$00,$53,$BC
  DEFB $02,$05,$06,$02,$00,$AC,$08,$F5
  DEFB $06,$02,$00
  DEFM "teth"

; People Data, Pita
People_Pita:
  DEFW People_Bren
  DEFB $00,$29,$35,$8C,$05,$3F,$04,$12
  DEFB $00,$29,$00,$00,$09,$01,$01,$00
  DEFB $00,$04,$00,$00,$00,$00,$00,$DC
  DEFB $05,$41,$05,$02,$12,$8C,$05,$3F
  DEFB $04,$02,$04
  DEFM "pita"

; People Data, Bren
People_Bren:
  DEFW People_Loeg
  DEFB $00,$3D,$49,$E9,$05,$FC,$03,$12
  DEFB $00,$3D,$00,$00,$0A,$01,$01,$00
  DEFB $00,$24,$00,$00,$00,$00,$00,$BC
  DEFB $07,$D3,$05,$00,$33,$E9,$05,$FC
  DEFB $03,$01,$07
  DEFM "bren"

; People Data, Loeg
People_Loeg:
  DEFW People_rat
  DEFB $00,$3D,$49,$78,$00,$80,$00,$12
  DEFB $00,$49,$00,$00,$0B,$09,$02,$A8
  DEFB $B2,$40,$00,$00,$05,$00,$4F,$AC
  DEFB $08,$C1,$05,$02,$00,$4C,$04,$40
  DEFB $06,$00,$00
  DEFM "loeg"

; People Data, rat
People_rat:
  DEFW $0000              ; End of link
  DEFB $00                ; Compass
  DEFB $36                ; Start frame
  DEFB $38                ; End frame
  DEFW $08AC              ; Coords N/S
  DEFW $06F5              ; Coords E/W
  DEFB $00,$00,$36,$00,$00,$0C,$01,$01
  DEFB $00,$00,$12,$00,$00,$00,$00,$00
  DEFB $BC,$07,$52,$05,$00,$00,$AC,$08
  DEFB $F5,$06,$02,$53,$00
Hero_LastStepFrame:
  DEFB $04                ; Keeps track of which frame was used when a full
                          ; step was taken.

; Data block at BB2F
Room_CurrentPtr:
  DEFW $0000              ; Pointer to current room.
Ptr_CurrentExitData:
  DEFW $0000              ; Address of new room's exit data / Basic exit at
                          ; $85AC
Room_CurrentDataPtr:
  DEFW $0000              ; Points to data within the current room data.
  DEFW $0000
Shop_InfoData:
  DEFB $00                ; Used by shop as info data, see
                          ; sRoom_CurrentInfoDataPtr
Shop_Shelves:
  DEFB $00,$00            ; Holds index of items on shop shelves.
  DEFB $00
_bb3b:
  DEFB $00,$00,$00

; Data block at BB3E
_bb3e:
  DEFB $00                ; [0]
  DEFB $00                ; [1]
  DEFB $00                ; [2]
  DEFB $00                ; [3]
  DEFB $00                ; [4]
  DEFB $8B,$00,$80,$00,$10,$00,$00,$00
  DEFB $00,$00,$05,$00,$9D,$00,$80,$00
  DEFB $10,$00,$00,$00,$00,$00,$0C,$00
  DEFB $AF,$00,$80,$00,$10,$00,$00

; Information for each of the dice.
Gamble_Dice1:
  DEFB $51                ; [0] Character index to blit.
  DEFB $51                ; [1] First charater index.
  DEFB $57                ; [2] End character index. (Not inclusive)
  DEFB $00                ; [3] Count down to end of roll.
  DEFB $00                ; [4] Start offset for when blitting character.
  DEFW $0095              ; [5] E/W coordinate.
  DEFW $0080              ; [7] N/S coordinate.
  DEFB $10,$00,$00,$53,$51,$57,$00,$00
  DEFB $9B,$00,$80,$00,$10,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$01
  DEFB $00,$00,$00,$00,$00

; Data block at BB88
TempAl:
  DEFB $70
TempAh:
  DEFB $C0
TempBl:
  DEFB $87
TempBh:
  DEFB $01

; Table of pointers for bitmaps. All dimensions are in 8x8 character cells.
Bitmap_PtrTable:
  DEFW $0000              ; [Address]
Bitmap_PtrTableOffHeight:
  DEFB $81                ; [Height]
Bitmap_PtrTableOffWidth:
  DEFB $01                ; [Width]
  DEFW $0008
  DEFB $00,$00
  DEFW $0008
  DEFB $87,$04
  DEFW $00E8
  DEFB $87,$04
  DEFW $01C8
  DEFB $87,$04
  DEFW $02A8
  DEFB $87,$04
  DEFW $0388
  DEFB $87,$04
  DEFW $0468
  DEFB $87,$04
  DEFW $0548
  DEFB $00,$00
  DEFW $0548
  DEFB $87,$04
  DEFW $0628
  DEFB $87,$04
  DEFW $0708
  DEFB $87,$04
  DEFW $07E8
  DEFB $87,$04
  DEFW $08C8
  DEFB $87,$04
  DEFW $09A8
  DEFB $87,$04
  DEFW $0A88
  DEFB $00,$00
  DEFW $0A88
  DEFB $87,$02
  DEFW $0AF8
_bbd2:
  DEFB $00,$00
  DEFW $0AF8
  DEFB $87,$04
  DEFW $0BD8
  DEFB $87,$04
  DEFW $0CB8
  DEFB $00,$00
  DEFW $0CB8
  DEFB $81,$01
  DEFW $0CC0
  DEFB $00,$00
  DEFW $0CC0
  DEFB $00,$00
  DEFW $0CC0
  DEFB $00,$00
  DEFW $0CC0
  DEFB $00,$00
  DEFW $0CC0
  DEFB $00,$00
  DEFW $0CC0
  DEFB $00,$00
  DEFW $0CC0
  DEFB $00,$00
  DEFW $0CC0
  DEFB $00,$00
  DEFW $0CC0
  DEFB $00,$00
Bitmap_HeroMaskPtr:
  DEFW $0CC0
  DEFB $00,$00
  DEFW $0CC0
  DEFB $87,$04
  DEFW $0DA0
  DEFB $87,$04
  DEFW $0E80
  DEFB $87,$04
  DEFW $0F60
  DEFB $87,$04
  DEFW $1040
  DEFB $87,$04
  DEFW $1120
  DEFB $87,$04
  DEFW $1200
  DEFB $87,$02
  DEFW $1270
  DEFB $87,$04
BmpInfo29_Woman:
  DEFW $1350
  DEFB $00,$00
  DEFW $1350
  DEFB $87,$04
  DEFW $1430
  DEFB $87,$04
  DEFW $1510
  DEFB $87,$04
  DEFW $15F0
  DEFB $87,$04
  DEFW $16D0
  DEFB $87,$04
  DEFW $17B0
  DEFB $87,$04
  DEFW $1890
  DEFB $87,$04
  DEFW $1970
  DEFB $87,$04
  DEFW $1A50
  DEFB $87,$04
  DEFW $1B30
  DEFB $87,$04
  DEFW $1C10
  DEFB $87,$04
  DEFW $1CF0
  DEFB $87,$04
BmpInfo35_Woman:
  DEFW $1DD0
  DEFB $87,$02
  DEFW $1E40
  DEFB $82,$02
  DEFW $1E60
  DEFB $82,$02
  DEFW $1E80
  DEFB $82,$02
  DEFW $1EA0
  DEFB $82,$02
  DEFW $1EC0
  DEFB $00,$00
  DEFW $1EC0
  DEFB $00,$00
  DEFW $1EC0
  DEFB $00,$00
  DEFW $1EC0
  DEFB $87,$04
  DEFW $1FA0
  DEFB $87,$04
  DEFW $2080
  DEFB $87,$04
  DEFW $2160
  DEFB $87,$04
  DEFW $2240
  DEFB $87,$04
  DEFW $2320
  DEFB $87,$04
  DEFW $2400
  DEFB $87,$04
  DEFW $24E0
  DEFB $87,$04
  DEFW $25C0
  DEFB $87,$04
  DEFW $26A0
  DEFB $87,$04
  DEFW $2780
  DEFB $87,$04
  DEFW $2860
  DEFB $87,$04
  DEFW $2940
  DEFB $87,$02
  DEFW $29B0
  DEFB $00,$00
  DEFW $29B0
  DEFB $00,$00
  DEFW $29B0
  DEFB $00,$00
  DEFW $29B0
  DEFB $00,$00
  DEFW $29B0
  DEFB $00,$00
BmpPtr_Objects:
  DEFW $29B0
  DEFB $00,$00
  DEFW $29B0
  DEFB $82,$01
  DEFW $29C0
  DEFB $82,$02
  DEFW $29E0
  DEFB $81,$01
  DEFW $29E8
  DEFB $83,$03
  DEFW $2A30
  DEFB $83,$02
  DEFW $2A60
  DEFB $83,$03
  DEFW $2AA8
  DEFB $82,$02
  DEFW $2AC8
  DEFB $81,$01
  DEFW $2AD0
  DEFB $82,$01
  DEFW $2AE0
  DEFB $82,$02
  DEFW $2B00
  DEFB $82,$01
  DEFW $2B10
  DEFB $82,$01
  DEFW $2B20
  DEFB $81,$02
  DEFW $2B30
  DEFB $82,$02
  DEFW $2B50
  DEFB $82,$02
  DEFW $2B70
  DEFB $82,$01
  DEFW $2B80
  DEFB $82,$01
  DEFW $2B90
  DEFB $83,$01
  DEFW $2BA8
  DEFB $82,$02
  DEFW $2BC8
  DEFB $82,$02
  DEFW $2BE8
  DEFB $82,$02
  DEFW $2C08
  DEFB $81,$01
  DEFW $2C10
  DEFB $82,$02
  DEFW $2C30
  DEFB $82,$02
  DEFW $2C50
  DEFB $83,$01
  DEFW $2C68
  DEFB $82,$02
  DEFW $2C88
  DEFB $82,$01
  DEFW $2C98
  DEFB $82,$02
  DEFW $2CB8
  DEFB $82,$02
  DEFW $2CD8
  DEFB $82,$02
  DEFW $2CF8
  DEFB $82,$02

; Message at BD48
Dictionary_10w:
  DEFM $18,"-",$00,$00,$18,"-",$00,$00,$18,"-"
  DEFM $00,$00,$18,"-",$00,$00,$18,"-",$00,$00
  DEFM $18,"-",$00,$00,$18,"-",$00,$00,$18,"-"
  DEFM $00,$00,$18,"-",$00,$00,$18,"-",$00,$00
  DEFM $18,"-",$00,$00,$18,"-",$00,$00,$18,"-"

; Furniture bitmap table of pointers.
BmpPtr_FurnitureA:
  DEFB $00,$00
  DEFW $2D18
  DEFB $00,$00
  DEFW $2D18
  DEFB $00,$00
  DEFW $2D18
  DEFB $00,$00
  DEFW $2D18
  DEFB $00,$00
  DEFW $2D18
  DEFB $85,$08
  DEFW $2E58
  DEFB $85,$08
BmpInfo82_PictureFrame:
  DEFW $2F98
  DEFB $85,$05
  DEFW $3060
  DEFB $81,$01
  DEFW $3068
  DEFB $81,$01
  DEFW $3070
  DEFB $81,$01
  DEFW $3078
  DEFB $84,$02
  DEFW $30B8
  DEFB $82,$02
  DEFW $30D8
  DEFB $81,$01
  DEFW $30E0
  DEFB $84,$02
  DEFW $3120
  DEFB $84,$03
  DEFW $3180
  DEFB $84,$03
  DEFW $31E0
  DEFB $84,$02
  DEFW $3220
  DEFB $84,$02
  DEFW $3320
  DEFB $00,$00
BmpInfo8F_Sign:
  DEFW $3260
  DEFB $81,$08
BmpInfo90_Arch:
  DEFW $32A0
  DEFB $82,$03
BmpInfo91_:
  DEFW $33C0
  DEFB $00,$00
BmpInfo92_DoorNumbered:
  DEFW $32D0
  DEFB $87,$05
BmpInfo93_DoorInner:
  DEFW $33E8
  DEFB $87,$05
BmpInfo94:
  DEFW $3500
  DEFB $81,$05
  DEFW $3528
  DEFB $87,$05
  DEFW $3730
  DEFB $00,$00
  DEFW $3730
  DEFB $00,$00
  DEFW $3640
  DEFB $84,$04
  DEFW $37B0
  DEFB $00,$00
  DEFW $36C0
  DEFB $88,$02
  DEFW $3740
  DEFB $8A,$02
  DEFW $38D0
  DEFB $00,$00
  DEFW $38D0
  DEFB $00,$00
BmpInfo9E_ShopKeeper:
  DEFW $37E0
  DEFB $86,$02
  DEFW $3990
  DEFB $00,$00
  DEFW $3840
  DEFB $87,$01
  DEFW $3A00
  DEFB $00,$00
  DEFW $3878
  DEFB $81,$01
  DEFW $3880
  DEFB $81,$01
BmpInfoA4_CounterLeft:
  DEFW $3888
  DEFB $83,$02
BmpInfoA5_CounterCentre:
  DEFW $38B8
  DEFB $83,$01
BmpInfoA6_CounterRight:
  DEFW $38D0
  DEFB $83,$02
  DEFW $3900
  DEFB $83,$01

; Data block at BE2C
Dictionary_w9:
  DEFM $A0,":",$00,$00,$A0,":",$00,$00,$A0
  DEFM ":",$00,$00,$A0,":",$00,$00,$A0,":"
  DEFM $00,$00,$A0,":",$00,$00,$A0,":",$00
  DEFM $00,$A0,":",$00,$00,$A0,":",$00,$00

; Furniture bitmap table of pointers.
BmpPtr_FurnitureB:
  DEFW $3AA0              ; [Address]
  DEFB $00,$00            ; [Height (0x7F only), Width]
  DEFW $3918              ; [Address]
  DEFB $85,$03            ; [Height (0x7F only), Width]
  DEFW $3990              ; [Address]
  DEFB $81,$01            ; [Height (0x7F only), Width]
  DEFW $3998              ; [Address]
  DEFB $82,$02            ; [Height (0x7F only), Width]
  DEFW $3B40              ; [Address]
  DEFB $00,$00            ; [Height (0x7F only), Width]
  DEFW $3B40              ; [Address]
  DEFB $00,$00            ; [Height (0x7F only), Width]
  DEFW $3B40              ; [Address]
  DEFB $00,$00            ; [Height (0x7F only), Width]
  DEFW $39B8              ; [Address]
  DEFB $85,$02            ; [Height (0x7F only), Width]
  DEFW $3B90              ; [Address]
  DEFB $00,$00            ; [Height (0x7F only), Width]
  DEFW $3B90              ; [Address]
  DEFB $00,$00            ; [Height (0x7F only), Width]
  DEFW $3A08              ; [Address]
  DEFB $81,$01            ; [Height (0x7F only), Width]
  DEFW $3A10              ; [Address]
  DEFB $85,$01            ; [Height (0x7F only), Width]
  DEFW $3A38              ; [Address]
  DEFB $85,$01            ; [Height (0x7F only), Width]
  DEFW $3BE8              ; [Address]
  DEFB $00,$00            ; [Height (0x7F only), Width]
  DEFW $3BE8              ; [Address]
  DEFB $00,$00            ; [Height (0x7F only), Width]
  DEFW $3BE8              ; [Address]
  DEFB $00,$00            ; [Height (0x7F only), Width]
  DEFW $3A60              ; [Address]
  DEFB $84,$04            ; [Height (0x7F only), Width]
  DEFW $3AE0              ; [Address]
  DEFB $83,$03            ; [Height (0x7F only), Width]
  DEFW $3B28              ; [Address]
  DEFB $81,$01            ; [Height (0x7F only), Width]
  DEFW $3B30              ; [Address]
  DEFB $81,$01            ; [Height (0x7F only), Width]
  DEFW $3B38              ; [Address]
  DEFB $82,$01            ; [Height (0x7F only), Width]
BmpInfoC6_Torch:
  DEFW $3B48              ; [Address]
  DEFB $82,$01            ; [Height (0x7F only), Width]
  DEFW $3B58              ; [Address]
  DEFB $82,$02            ; [Height (0x7F only), Width]
  DEFW $3B78              ; [Address]
  DEFB $82,$02            ; [Height (0x7F only), Width]
  DEFW $3B98              ; [Address]
  DEFB $85,$05            ; [Height (0x7F only), Width]
  DEFW $3C60              ; [Address]
  DEFB $81,$02            ; [Height (0x7F only), Width]
BmpPtr_RoadLeadingIn:
  DEFW $3C70              ; [Address]
  DEFB $81,$04            ; [Height (0x7F only), Width]
  DEFW $3C90              ; [Address]
  DEFB $81,$04            ; [Height (0x7F only), Width]
BmpPtr_RoadEdgeTop:
  DEFW $3CB0              ; [Address]
  DEFB $81,$02            ; [Height (0x7F only), Width]
BmpPtr_RoadEdgeBottom:
  DEFW $3CC0              ; [Address]
  DEFB $81,$02            ; [Height (0x7F only), Width]
  DEFW $3E58              ; [Address]
  DEFB $00,$00            ; [Height (0x7F only), Width]
  DEFW $3CD0              ; [Address]
  DEFB $86,$01            ; [Height (0x7F only), Width]
  DEFW $3D00              ; [Address]
  DEFB $81,$13            ; [Height (0x7F only), Width]
  DEFW $3F20              ; [Address]
  DEFB $00,$00            ; [Height (0x7F only), Width]
BmpPtr_DigitSet:
  DEFW $3D98              ; [Address]
  DEFB $81,$05            ; [Height (0x7F only), Width]
  DEFW $3DC0              ; [Address]
  DEFB $82,$02            ; [Height (0x7F only), Width]
BmpPtr_LettersThin:
  DEFW $3DE0              ; [Address]
  DEFB $8E,$01            ; [Height (0x7F only), Width]

; Link List
;
; Start of link list. $0A links of $0F bytes.
LinkList_bee4:
  DEFW $41E8
  DEFB $00,$00,$E8,$41,$00,$00,$E8,$41
  DEFB $00,$00,$E8,$41,$00
  DEFW $E800
  DEFB $41,$00,$00,$E8,$41,$00,$00,$E8
  DEFB $41,$00,$00,$E8,$41
  DEFW $0000
  DEFB $E8,$41,$00,$00,$E8,$41,$00,$00
  DEFB $E8,$41,$00,$00,$E8
  DEFW $0041
  DEFB $00,$E8,$41,$00,$00,$E8,$41,$00
  DEFB $00,$E8,$41,$00,$00
  DEFW $41E8
  DEFB $00,$00,$E8,$41,$00,$00,$E8,$41
  DEFB $00,$00,$E8,$41,$00
  DEFW $E800
  DEFB $41,$00,$00,$E8,$41,$00,$00,$E8
  DEFB $41,$00,$00,$E8,$41
  DEFW $0000
  DEFB $E8,$41,$00,$00,$E8,$41,$00,$00
  DEFB $E8,$41,$00,$00,$E8
  DEFW $0041
  DEFB $00,$00,$00,$00,$00,$E8,$41,$00
  DEFB $00,$E8,$41,$00,$00
  DEFW $41E8
  DEFB $00,$00,$E8,$41,$00,$00,$E8,$41
  DEFB $00,$00,$E8,$41,$00
  DEFW $0000
  DEFB $00,$00,$00,$00,$00,$00,$00,$58
  DEFB $42,$00,$00,$58,$42
  DEFB $00,$00,$58,$42,$00,$00,$58,$42
  DEFB $00,$00,$58,$42,$00,$00,$58,$42
  DEFB $00,$00,$50,$3E

; Bitmap scratchpad.
_bf8e:
  DEFB $3E,$20,$20,$38,$20,$20,$3E,$00

; Hero's bitmaps.
Bmp_Hero1:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$03,$F0
  DEFB $00,$01,$C7,$78,$00,$00,$7E,$C4
  DEFB $00,$01,$F6,$84,$00,$00,$7F,$94
  DEFB $00,$00,$7F,$84,$00,$00,$3D,$84
  DEFB $00,$00,$72,$08,$00,$00,$F8,$70
  DEFB $00,$01,$FC,$80,$00,$01,$3B,$80
  DEFB $00,$02,$1C,$80,$00,$04,$3F,$80
  DEFB $00,$04,$7F,$80,$00,$08,$FF,$80
  DEFB $00,$11,$FF,$00,$00,$11,$FF,$00
  DEFB $00,$23,$FE,$00,$00,$23,$FE,$00
  DEFB $00,$25,$FE,$00,$00,$47,$3D,$00
  DEFB $00,$4F,$C8,$80,$00,$4F,$F4,$80
  DEFB $00,$9F,$FA,$60,$01,$1F,$F9,$10
  DEFB $01,$1B,$F9,$10,$01,$3B,$F8,$A0
  DEFB $00,$DB,$F0,$C0,$00,$1D,$F8,$00
  DEFB $00,$1D,$FC,$00,$00,$1E,$FE,$00
  DEFB $00,$1E,$FE,$00,$00,$3E,$FE,$00
  DEFB $00,$3F,$7F,$00,$00,$3F,$FF,$00
  DEFB $00,$7F,$3F,$80,$01,$FF,$1F,$80
  DEFB $02,$FE,$1F,$80,$04,$7E,$0F,$80
  DEFB $04,$3C,$0F,$C0,$0E,$10,$08,$40
  DEFB $11,$60,$08,$40,$61,$80,$0F,$C0
  DEFB $82,$00,$04,$80,$84,$00,$04,$80
  DEFB $44,$00,$08,$80,$43,$00,$04,$40
  DEFB $20,$80,$04,$38,$1F,$00,$04,$04
  DEFB $00,$00,$02,$04,$00,$00,$03,$F8
Bmp_Hero2:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$40,$00
  DEFB $00,$00,$23,$F0,$00,$01,$DF,$78
  DEFB $00,$00,$7E,$C4,$00,$00,$76,$84
  DEFB $00,$00,$3F,$94,$00,$00,$1F,$84
  DEFB $00,$00,$3D,$84,$00,$00,$72,$08
  DEFB $00,$00,$F8,$70,$00,$01,$3C,$80
  DEFB $00,$01,$1B,$80,$00,$01,$1C,$80
  DEFB $00,$02,$3F,$80,$00,$02,$3F,$80
  DEFB $00,$02,$7F,$80,$00,$04,$7F,$00
  DEFB $00,$04,$7F,$00,$00,$04,$FE,$00
  DEFB $00,$0C,$FE,$00,$00,$0C,$FE,$00
  DEFB $00,$0C,$BC,$00,$00,$0C,$D8,$00
  DEFB $00,$1C,$F4,$00,$00,$1C,$FB,$00
  DEFB $00,$1E,$78,$80,$00,$1C,$7C,$80
  DEFB $00,$1E,$74,$80,$00,$1B,$FB,$00
  DEFB $00,$1D,$FC,$00,$00,$1D,$FE,$00
  DEFB $00,$0E,$FE,$00,$00,$0E,$FF,$00
  DEFB $00,$0F,$7F,$00,$00,$0F,$FF,$80
  DEFB $00,$1F,$DF,$C0,$00,$7F,$CF,$C0
  DEFB $03,$FF,$87,$E0,$04,$3F,$8F,$E0
  DEFB $06,$1F,$0F,$E0,$19,$1C,$09,$C0
  DEFB $21,$10,$10,$40,$21,$E0,$1C,$20
  DEFB $22,$00,$13,$40,$44,$00,$21,$80
  DEFB $44,$00,$42,$00,$44,$00,$4C,$00
  DEFB $24,$00,$87,$00,$18,$00,$80,$80
  DEFB $00,$00,$80,$80,$00,$00,$7F,$00
Bmp_Hero3:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$03,$F0,$00,$00,$3F,$78
  DEFB $00,$00,$7E,$C4,$00,$00,$B6,$84
  DEFB $00,$00,$7F,$94,$00,$00,$9F,$84
  DEFB $00,$00,$3D,$84,$00,$00,$72,$08
  DEFB $00,$00,$F8,$70,$00,$00,$BC,$80
  DEFB $00,$01,$1B,$80,$00,$01,$1C,$80
  DEFB $00,$01,$3F,$80,$00,$02,$3F,$80
  DEFB $00,$02,$7F,$80,$00,$02,$7F,$00
  DEFB $00,$02,$7F,$00,$00,$02,$7E,$00
  DEFB $00,$02,$7E,$00,$00,$06,$7E,$00
  DEFB $00,$0A,$7C,$00,$00,$0E,$78,$00
  DEFB $00,$1E,$48,$00,$00,$1E,$7C,$00
  DEFB $00,$1F,$3A,$00,$00,$1F,$1A,$00
  DEFB $00,$0F,$1E,$00,$00,$0B,$B8,$00
  DEFB $00,$05,$FC,$00,$00,$05,$FC,$00
  DEFB $00,$02,$FC,$00,$00,$02,$FC,$00
  DEFB $00,$03,$7C,$00,$00,$03,$3E,$00
  DEFB $00,$03,$BE,$00,$00,$07,$BE,$00
  DEFB $00,$1F,$BE,$00,$00,$FF,$BE,$00
  DEFB $01,$0F,$FE,$00,$01,$87,$7C,$00
  DEFB $06,$47,$7C,$00,$08,$44,$98,$00
  DEFB $08,$79,$08,$00,$08,$81,$84,$00
  DEFB $11,$01,$4C,$00,$11,$02,$38,$00
  DEFB $11,$02,$20,$00,$09,$02,$40,$00
  DEFB $06,$04,$38,$00,$00,$04,$04,$00
  DEFB $00,$04,$04,$00,$00,$03,$F8,$00
Bmp_Hero4:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$03,$F0,$00,$00,$0F,$78
  DEFB $00,$00,$1E,$C4,$00,$00,$16,$84
  DEFB $00,$00,$7F,$94,$00,$00,$BF,$84
  DEFB $00,$00,$7D,$84,$00,$00,$B2,$08
  DEFB $00,$00,$78,$70,$00,$00,$FC,$80
  DEFB $00,$01,$CE,$80,$00,$03,$87,$80
  DEFB $00,$05,$84,$80,$00,$0B,$8F,$80
  DEFB $00,$13,$8F,$80,$00,$13,$8F,$00
  DEFB $00,$13,$8F,$00,$00,$13,$CE,$00
  DEFB $00,$0B,$CE,$00,$00,$0B,$CE,$00
  DEFB $00,$07,$C4,$00,$00,$06,$C4,$00
  DEFB $00,$0F,$A4,$00,$00,$1F,$E4,$00
  DEFB $00,$1F,$F3,$00,$00,$1F,$F0,$80
  DEFB $00,$0F,$E8,$80,$00,$0F,$EC,$80
  DEFB $00,$0F,$EF,$00,$00,$07,$EC,$00
  DEFB $00,$07,$EE,$00,$00,$07,$DE,$00
  DEFB $00,$07,$DF,$00,$00,$07,$DF,$00
  DEFB $00,$07,$DF,$80,$00,$07,$DF,$80
  DEFB $00,$0F,$DF,$80,$00,$0F,$DF,$00
  DEFB $00,$0F,$DF,$00,$00,$7F,$BC,$00
  DEFB $00,$9F,$70,$00,$00,$9F,$60,$00
  DEFB $00,$BF,$C0,$00,$00,$A1,$00,$00
  DEFB $00,$A0,$80,$00,$00,$58,$80,$00
  DEFB $00,$57,$00,$00,$00,$31,$00,$00
  DEFB $00,$12,$00,$00,$00,$0A,$00,$00
  DEFB $00,$11,$C0,$00,$00,$10,$30,$00
  DEFB $00,$10,$10,$00,$00,$0F,$E0,$00
Bmp_Hero5:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$03,$F0
  DEFB $00,$00,$07,$78,$00,$00,$1E,$C4
  DEFB $00,$00,$36,$84,$00,$00,$7F,$94
  DEFB $00,$01,$FF,$84,$00,$00,$7D,$84
  DEFB $00,$00,$B2,$08,$00,$00,$78,$70
  DEFB $00,$00,$FC,$80,$00,$01,$EF,$80
  DEFB $00,$03,$C4,$80,$00,$07,$C7,$80
  DEFB $00,$0B,$C7,$80,$00,$13,$C7,$80
  DEFB $00,$27,$C7,$00,$00,$27,$C7,$00
  DEFB $00,$27,$C6,$00,$00,$47,$C6,$00
  DEFB $00,$4F,$C6,$00,$00,$4C,$C4,$00
  DEFB $00,$4E,$22,$00,$00,$4F,$F1,$00
  DEFB $00,$9F,$F8,$80,$00,$9F,$FC,$60
  DEFB $00,$9F,$F7,$10,$00,$7F,$F5,$10
  DEFB $00,$1F,$F7,$E0,$00,$0F,$F6,$00
  DEFB $00,$0F,$EF,$80,$00,$07,$EF,$C0
  DEFB $00,$07,$EF,$E0,$00,$07,$FF,$E0
  DEFB $00,$0F,$E7,$E0,$00,$0F,$C7,$C0
  DEFB $00,$0F,$CF,$C0,$00,$1F,$CF,$C0
  DEFB $00,$1F,$90,$80,$00,$1F,$90,$40
  DEFB $00,$3F,$9C,$80,$00,$7F,$27,$00
  DEFB $00,$CE,$24,$00,$00,$82,$44,$00
  DEFB $00,$82,$44,$00,$00,$F6,$43,$00
  DEFB $00,$4C,$30,$80,$00,$4C,$08,$80
  DEFB $00,$48,$07,$00,$00,$48,$00,$00
  DEFB $00,$87,$00,$00,$00,$80,$80,$00
  DEFB $00,$80,$80,$00,$00,$7F,$00,$00
Bmp_Hero6:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$03,$F0,$00,$00,$07,$78
  DEFB $00,$00,$3E,$C4,$00,$01,$F6,$84
  DEFB $00,$00,$7F,$94,$00,$00,$FF,$84
  DEFB $00,$00,$1D,$84,$00,$00,$32,$08
  DEFB $00,$00,$78,$70,$00,$00,$FC,$80
  DEFB $00,$01,$EF,$80,$00,$03,$C4,$80
  DEFB $00,$05,$C7,$80,$00,$0B,$C7,$80
  DEFB $00,$13,$C7,$80,$00,$17,$C7,$00
  DEFB $00,$27,$C7,$00,$00,$27,$C6,$00
  DEFB $00,$47,$C6,$00,$00,$4F,$C6,$00
  DEFB $00,$97,$E4,$00,$00,$97,$E2,$00
  DEFB $00,$AC,$F1,$C0,$01,$2F,$38,$20
  DEFB $02,$2F,$DE,$20,$02,$2F,$F5,$20
  DEFB $01,$DF,$F4,$C0,$00,$1F,$F6,$00
  DEFB $00,$1F,$DE,$00,$00,$0F,$DF,$00
  DEFB $00,$0F,$DF,$00,$00,$0F,$DF,$80
  DEFB $00,$1F,$FF,$80,$00,$1F,$BF,$C0
  DEFB $00,$1F,$9F,$C0,$00,$3F,$8F,$C0
  DEFB $00,$7F,$0F,$E0,$00,$7F,$0F,$C0
  DEFB $00,$FE,$07,$E0,$01,$FC,$0E,$20
  DEFB $03,$38,$08,$20,$02,$08,$04,$E0
  DEFB $03,$08,$07,$A0,$03,$C8,$02,$2E
  DEFB $02,$30,$01,$11,$04,$20,$01,$01
  DEFB $08,$40,$01,$06,$08,$40,$01,$18
  DEFB $08,$30,$00,$E0,$06,$08,$00,$00
  DEFB $01,$08,$00,$00,$00,$F0,$00,$00
Bmp_Hero7:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$03,$F0
  DEFB $00,$01,$C7,$78,$00,$00,$7E,$C4
  DEFB $00,$01,$F6,$84,$00,$00,$7F,$94
  DEFB $00,$00,$7F,$84,$00,$00,$3D,$84
  DEFB $00,$00,$72,$08,$00,$00,$F0,$70
  DEFB $00,$01,$F8,$80,$00,$01,$FF,$80
  DEFB $00,$02,$EC,$80,$00,$05,$C7,$80
  DEFB $00,$05,$C7,$80,$00,$09,$C7,$80
  DEFB $00,$11,$C7,$00,$00,$11,$C7,$00
  DEFB $00,$23,$C2,$00,$00,$23,$C2,$00
  DEFB $00,$27,$E2,$00,$00,$47,$61,$00
  DEFB $00,$4F,$D8,$80,$00,$CF,$F4,$40
  DEFB $01,$1F,$FA,$20,$01,$3F,$F9,$10
  DEFB $00,$DF,$E9,$10,$00,$1F,$E8,$90
  DEFB $00,$1F,$E8,$E0,$00,$1F,$D8,$00
  DEFB $00,$1F,$DC,$00,$00,$1F,$DE,$00
  DEFB $00,$1F,$BE,$00,$00,$3F,$BE,$00
  DEFB $00,$3F,$BF,$00,$00,$3F,$FF,$00
  DEFB $00,$7F,$3F,$80,$01,$FF,$1F,$80
  DEFB $02,$FE,$1F,$80,$04,$7E,$0F,$80
  DEFB $04,$3C,$0F,$C0,$0E,$10,$08,$40
  DEFB $11,$60,$08,$40,$61,$80,$0F,$C0
  DEFB $42,$00,$04,$80,$42,$00,$04,$80
  DEFB $42,$00,$08,$60,$33,$00,$04,$3C
  DEFB $10,$80,$04,$02,$08,$40,$04,$02
  DEFB $04,$40,$03,$FC,$03,$80,$00,$00
Bmp_Hero8:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$40,$00
  DEFB $00,$00,$23,$F0,$00,$01,$DF,$78
  DEFB $00,$00,$7E,$C4,$00,$00,$76,$84
  DEFB $00,$00,$3F,$94,$00,$00,$1F,$84
  DEFB $00,$00,$3D,$84,$00,$00,$7A,$08
  DEFB $00,$00,$D8,$70,$00,$01,$8C,$80
  DEFB $00,$03,$8C,$80,$00,$03,$0F,$80
  DEFB $00,$07,$1C,$80,$00,$07,$1F,$80
  DEFB $00,$07,$1F,$80,$00,$07,$1F,$00
  DEFB $00,$07,$1F,$00,$00,$07,$1E,$00
  DEFB $00,$0F,$0E,$00,$00,$0B,$8C,$00
  DEFB $00,$0E,$8C,$00,$00,$0F,$C8,$00
  DEFB $00,$1F,$E4,$00,$00,$1F,$F3,$00
  DEFB $00,$1F,$F8,$80,$00,$1F,$FC,$80
  DEFB $00,$1F,$EC,$80,$00,$0F,$EF,$00
  DEFB $00,$0F,$EE,$00,$00,$0F,$EF,$00
  DEFB $00,$0F,$EF,$00,$00,$0F,$EF,$80
  DEFB $00,$0F,$CF,$C0,$00,$1F,$DF,$C0
  DEFB $00,$1F,$1F,$E0,$00,$1F,$E7,$E0
  DEFB $00,$7F,$C7,$E0,$03,$FF,$8F,$C0
  DEFB $04,$3E,$09,$40,$06,$1E,$10,$20
  DEFB $19,$1C,$1C,$40,$21,$10,$13,$80
  DEFB $21,$E0,$21,$00,$22,$00,$42,$00
  DEFB $44,$00,$4C,$00,$44,$00,$87,$80
  DEFB $44,$00,$80,$80,$24,$00,$80,$00
  DEFB $18,$00,$7F,$00,$00,$00,$00,$00
Bmp_Hero9:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$03,$F0,$00,$00,$3F,$78
  DEFB $00,$00,$7E,$C4,$00,$00,$B6,$84
  DEFB $00,$00,$7F,$94,$00,$00,$9F,$84
  DEFB $00,$00,$3D,$84,$00,$00,$72,$08
  DEFB $00,$00,$F8,$70,$00,$00,$CC,$80
  DEFB $00,$01,$8E,$80,$00,$01,$8F,$80
  DEFB $00,$01,$9C,$80,$00,$03,$1F,$80
  DEFB $00,$03,$1F,$80,$00,$03,$1F,$00
  DEFB $00,$03,$1F,$00,$00,$03,$1E,$00
  DEFB $00,$03,$1E,$00,$00,$06,$9E,$00
  DEFB $00,$0F,$9C,$00,$00,$0F,$CE,$00
  DEFB $00,$1F,$C4,$00,$00,$1F,$E6,$00
  DEFB $00,$1F,$F1,$00,$00,$1F,$F1,$00
  DEFB $00,$0F,$FE,$00,$00,$0F,$F8,$00
  DEFB $00,$07,$FC,$00,$00,$07,$F4,$00
  DEFB $00,$07,$F4,$00,$00,$03,$F4,$00
  DEFB $00,$03,$F4,$00,$00,$03,$EE,$00
  DEFB $00,$03,$EE,$00,$00,$03,$EE,$00
  DEFB $00,$07,$EE,$00,$00,$1F,$EE,$00
  DEFB $00,$FF,$DC,$00,$01,$0F,$BC,$00
  DEFB $01,$87,$FC,$00,$06,$46,$9C,$00
  DEFB $08,$45,$04,$00,$08,$78,$88,$00
  DEFB $08,$81,$70,$00,$11,$01,$10,$00
  DEFB $11,$02,$20,$00,$11,$01,$3C,$00
  DEFB $09,$01,$02,$00,$06,$01,$02,$00
  DEFB $00,$00,$FC,$00,$00,$00,$00,$00
Bmp_Hero10:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$03,$F0,$00,$00,$0F,$78
  DEFB $00,$00,$1E,$C4,$00,$00,$76,$84
  DEFB $00,$00,$FF,$94,$00,$01,$7F,$84
  DEFB $00,$00,$FD,$84,$00,$01,$72,$08
  DEFB $00,$00,$F0,$70,$00,$01,$F8,$80
  DEFB $00,$01,$3C,$80,$00,$01,$1B,$80
  DEFB $00,$02,$3C,$80,$00,$02,$3F,$80
  DEFB $00,$02,$7F,$80,$00,$04,$7F,$00
  DEFB $00,$04,$7F,$00,$00,$04,$FE,$00
  DEFB $00,$0C,$FE,$00,$00,$0C,$FE,$00
  DEFB $00,$0C,$BC,$00,$00,$0C,$D8,$00
  DEFB $00,$1C,$F4,$00,$00,$1C,$FB,$00
  DEFB $00,$3E,$78,$80,$00,$3C,$7C,$80
  DEFB $00,$1E,$7B,$00,$00,$1B,$F8,$00
  DEFB $00,$0B,$F8,$00,$00,$0D,$F8,$00
  DEFB $00,$0D,$FC,$00,$00,$0D,$FC,$00
  DEFB $00,$0E,$FE,$00,$00,$07,$7E,$00
  DEFB $00,$07,$7F,$00,$00,$07,$7F,$00
  DEFB $00,$0F,$7F,$00,$00,$0C,$FE,$00
  DEFB $00,$3F,$FE,$00,$00,$43,$F8,$00
  DEFB $00,$61,$E0,$00,$01,$91,$C0,$00
  DEFB $02,$13,$80,$00,$02,$1E,$00,$00
  DEFB $02,$21,$00,$00,$04,$61,$00,$00
  DEFB $04,$5F,$00,$00,$04,$52,$00,$00
  DEFB $02,$52,$00,$00,$01,$A1,$C0,$00
  DEFB $00,$10,$30,$00,$00,$10,$10,$00
  DEFB $00,$0F,$E0,$00,$00,$00,$00,$00
Bmp_Hero11:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$03,$F0
  DEFB $00,$00,$07,$78,$00,$00,$1E,$C4
  DEFB $00,$00,$76,$84,$00,$01,$FF,$94
  DEFB $00,$01,$7F,$84,$00,$00,$BD,$84
  DEFB $00,$00,$62,$08,$00,$00,$F0,$70
  DEFB $00,$01,$38,$80,$00,$01,$1C,$80
  DEFB $00,$02,$1B,$80,$00,$04,$3C,$80
  DEFB $00,$04,$7F,$80,$00,$08,$FF,$80
  DEFB $00,$11,$FF,$00,$00,$11,$FF,$00
  DEFB $00,$23,$FE,$00,$00,$23,$FE,$00
  DEFB $00,$27,$FE,$00,$00,$47,$FD,$00
  DEFB $00,$4D,$F8,$80,$00,$4F,$74,$80
  DEFB $00,$9F,$9A,$60,$01,$1F,$F9,$10
  DEFB $01,$17,$F9,$10,$00,$B7,$F8,$A0
  DEFB $00,$7B,$F0,$00,$00,$3B,$FC,$00
  DEFB $00,$3B,$FE,$00,$00,$1C,$FF,$00
  DEFB $00,$1F,$7F,$80,$00,$1F,$FF,$80
  DEFB $00,$3F,$9F,$80,$00,$3F,$1F,$00
  DEFB $00,$3F,$3F,$00,$00,$7F,$3F,$00
  DEFB $00,$7E,$42,$00,$00,$7E,$41,$00
  DEFB $00,$FE,$72,$00,$01,$FC,$9C,$00
  DEFB $03,$38,$90,$00,$02,$09,$10,$00
  DEFB $02,$09,$10,$00,$03,$D9,$0C,$00
  DEFB $01,$30,$82,$00,$01,$20,$22,$00
  DEFB $01,$20,$1C,$00,$02,$1C,$00,$00
  DEFB $02,$02,$00,$00,$02,$02,$00,$00
  DEFB $01,$FC,$00,$00,$00,$00,$00,$00
Bmp_Hero12:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$01,$F0,$00,$00,$07,$78
  DEFB $00,$00,$3E,$C4,$00,$01,$F6,$84
  DEFB $00,$00,$7F,$94,$00,$00,$FF,$84
  DEFB $00,$00,$3D,$84,$00,$00,$72,$08
  DEFB $00,$00,$F8,$70,$00,$03,$1C,$80
  DEFB $00,$04,$1B,$80,$00,$08,$3C,$80
  DEFB $00,$08,$FF,$80,$00,$11,$FF,$80
  DEFB $00,$22,$FF,$80,$00,$23,$FF,$00
  DEFB $00,$25,$FF,$00,$00,$4B,$FE,$00
  DEFB $00,$4B,$FE,$00,$00,$93,$FD,$00
  DEFB $00,$97,$3D,$00,$00,$A7,$CC,$C0
  DEFB $00,$AD,$FA,$20,$01,$1B,$F9,$20
  DEFB $01,$1B,$F8,$A0,$00,$FB,$F8,$40
  DEFB $00,$1B,$F0,$00,$00,$1B,$F8,$00
  DEFB $00,$1D,$FC,$00,$00,$1E,$FE,$00
  DEFB $00,$1E,$FE,$00,$00,$1F,$7F,$00
  DEFB $00,$3F,$FF,$00,$00,$3F,$7F,$80
  DEFB $00,$3F,$3F,$80,$00,$7F,$1F,$80
  DEFB $00,$FE,$1F,$80,$01,$FC,$1F,$80
  DEFB $03,$F8,$1F,$80,$06,$70,$0F,$C0
  DEFB $04,$10,$1C,$40,$06,$10,$10,$40
  DEFB $07,$90,$09,$C0,$04,$60,$0F,$40
  DEFB $08,$40,$04,$5C,$10,$80,$02,$22
  DEFB $10,$80,$02,$02,$10,$60,$02,$0C
  DEFB $0C,$10,$02,$30,$02,$10,$01,$C0
  DEFB $01,$E0,$00,$00,$00,$00,$00,$00
Bmp_HeroSide:
  DEFB $00,$00,$00,$FC,$01,$DE,$03,$B1
  DEFB $01,$A1,$07,$E5,$07,$E1,$0F,$E1
  DEFB $0F,$82,$06,$1C,$07,$10,$0F,$88
  DEFB $09,$FC,$08,$C4,$08,$FC,$08,$FC
  DEFB $08,$FC,$08,$FC,$08,$FC,$08,$FC
  DEFB $08,$FC,$08,$FC,$0C,$FC,$0C,$78
  DEFB $0C,$76,$0E,$32,$1F,$1E,$1F,$83
  DEFB $1F,$E1,$1F,$F2,$0F,$FC,$0F,$F8
  DEFB $0F,$F8,$05,$F8,$05,$FC,$06,$FC
  DEFB $06,$7C,$07,$7C,$07,$7C,$07,$7C
  DEFB $03,$7C,$07,$7C,$0F,$7C,$0B,$78
  DEFB $09,$F8,$09,$08,$06,$04,$06,$04
  DEFB $07,$E4,$05,$18,$0D,$10,$09,$20
  DEFB $0A,$1C,$06,$02,$02,$02,$01,$FC
Bmp_HeroBack:
  DEFB $00,$00,$00,$00,$00,$03,$E0,$00
  DEFB $00,$07,$F0,$00,$00,$07,$F0,$00
  DEFB $00,$0E,$D8,$00,$00,$0E,$D8,$00
  DEFB $00,$0D,$F8,$00,$00,$0D,$F8,$00
  DEFB $00,$1F,$F8,$00,$00,$7F,$FE,$00
  DEFB $00,$BF,$FD,$00,$00,$B7,$ED,$00
  DEFB $01,$3B,$4C,$80,$01,$3A,$1C,$80
  DEFB $02,$7A,$1E,$40,$02,$7C,$3E,$40
  DEFB $02,$7F,$FE,$40,$02,$7F,$FE,$40
  DEFB $02,$7F,$7E,$40,$04,$BF,$7D,$20
  DEFB $04,$BF,$FD,$20,$04,$BF,$FD,$20
  DEFB $04,$BF,$7D,$20,$05,$3F,$FC,$A0
  DEFB $05,$18,$18,$A0,$05,$18,$18,$A0
  DEFB $09,$BF,$FD,$90,$08,$BF,$FF,$10
  DEFB $08,$BF,$FF,$10,$07,$7F,$FE,$E0
  DEFB $00,$7F,$FF,$00,$00,$FB,$DF,$00
  DEFB $00,$FD,$FF,$00,$01,$FF,$BF,$80
  DEFB $01,$FE,$7F,$80,$01,$FE,$7F,$80
  DEFB $03,$FC,$3F,$C0,$03,$FC,$3F,$C0
  DEFB $01,$F8,$1F,$80,$03,$F8,$1F,$C0
  DEFB $03,$F0,$0F,$C0,$03,$F0,$0F,$C0
  DEFB $07,$F0,$0F,$E0,$08,$10,$08,$10
  DEFB $08,$08,$10,$10,$08,$18,$10,$10
  DEFB $07,$70,$0E,$E0,$04,$40,$02,$20
  DEFB $04,$40,$02,$20,$04,$40,$02,$20
  DEFB $06,$80,$01,$60,$07,$80,$01,$E0
  DEFB $08,$C0,$03,$10,$08,$40,$02,$10
  DEFB $08,$40,$02,$10,$07,$C0,$03,$E0
Bmp_HeroFwd:
  DEFB $00,$00,$00,$00,$00,$03,$E0,$00
  DEFB $00,$07,$F0,$00,$00,$04,$10,$00
  DEFB $00,$0C,$18,$00,$00,$0D,$58,$00
  DEFB $00,$0C,$18,$00,$00,$0E,$38,$00
  DEFB $00,$0C,$18,$00,$00,$72,$36,$00
  DEFB $00,$91,$C5,$00,$00,$98,$0D,$00
  DEFB $01,$1C,$1C,$80,$01,$1B,$EC,$80
  DEFB $02,$3D,$DC,$40,$02,$3F,$7C,$40
  DEFB $02,$7F,$FE,$40,$02,$7F,$FE,$40
  DEFB $02,$7E,$FE,$40,$04,$B9,$CD,$20
  DEFB $04,$BF,$FD,$20,$04,$BF,$FD,$20
  DEFB $04,$BF,$FD,$20,$05,$3F,$FC,$A0
  DEFB $05,$18,$98,$A0,$05,$18,$98,$A0
  DEFB $09,$BF,$FD,$90,$08,$BF,$FF,$10
  DEFB $08,$BF,$FF,$10,$07,$7F,$FE,$E0
  DEFB $00,$7F,$FF,$00,$00,$FB,$DF,$00
  DEFB $00,$FD,$FF,$00,$01,$FF,$BF,$80
  DEFB $01,$FE,$7F,$80,$01,$FE,$7F,$80
  DEFB $03,$FC,$3F,$C0,$03,$FC,$3F,$C0
  DEFB $01,$F8,$1F,$80,$03,$F8,$1F,$C0
  DEFB $03,$F0,$0F,$C0,$03,$F0,$0F,$C0
  DEFB $07,$F0,$0F,$E0,$08,$10,$08,$10
  DEFB $08,$08,$10,$10,$08,$18,$10,$10
  DEFB $07,$70,$0E,$E0,$04,$40,$02,$20
  DEFB $04,$40,$02,$20,$04,$40,$02,$20
  DEFB $06,$80,$01,$60,$07,$80,$01,$E0
  DEFB $08,$C0,$03,$10,$08,$40,$02,$10
  DEFB $08,$40,$02,$10,$07,$C0,$03,$E0
Bmp_BlankTile:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Hero's mask.
Bmp_HeroMask1:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$03,$F0
  DEFB $00,$01,$C7,$F8,$00,$00,$7F,$F8
  DEFB $00,$01,$FF,$F8,$00,$00,$7F,$F8
  DEFB $00,$00,$7F,$F8,$00,$00,$3F,$F8
  DEFB $00,$00,$7F,$F0,$00,$00,$FF,$E0
  DEFB $00,$01,$FF,$80,$00,$01,$FF,$80
  DEFB $00,$03,$FF,$80,$00,$07,$FF,$80
  DEFB $00,$07,$FF,$80,$00,$0F,$FF,$80
  DEFB $00,$1F,$FF,$00,$00,$1F,$FF,$00
  DEFB $00,$3F,$FE,$00,$00,$3F,$FE,$00
  DEFB $00,$3F,$FE,$00,$00,$7F,$FF,$00
  DEFB $00,$7F,$FF,$80,$00,$7F,$F7,$80
  DEFB $00,$FF,$FB,$E0,$01,$FF,$F9,$F0
  DEFB $01,$FF,$F9,$F0,$01,$FF,$F8,$E0
  DEFB $00,$DF,$F0,$C0,$00,$1F,$F8,$00
  DEFB $00,$1F,$FC,$00,$00,$1F,$FE,$00
  DEFB $00,$1F,$FE,$00,$00,$3F,$FE,$00
  DEFB $00,$3F,$FF,$00,$00,$3F,$FF,$00
  DEFB $00,$7F,$3F,$80,$01,$FF,$1F,$80
  DEFB $03,$FE,$1F,$80,$07,$FE,$0F,$80
  DEFB $07,$FC,$0F,$C0,$0F,$F0,$0F,$C0
  DEFB $1F,$E0,$0F,$C0,$7F,$80,$0F,$C0
  DEFB $FE,$00,$07,$80,$FC,$00,$07,$80
  DEFB $7C,$00,$0F,$80,$7F,$00,$07,$C0
  DEFB $3F,$80,$07,$F8,$1F,$00,$07,$FC
  DEFB $00,$00,$03,$FC,$00,$00,$03,$F8
Bmp_HeroMask2:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$40,$00
  DEFB $00,$00,$23,$F0,$00,$01,$DF,$F8
  DEFB $00,$00,$7F,$F8,$00,$00,$7F,$F8
  DEFB $00,$00,$3F,$F8,$00,$00,$1F,$F8
  DEFB $00,$00,$3F,$F8,$00,$00,$7F,$F0
  DEFB $00,$00,$FF,$E0,$00,$01,$FF,$80
  DEFB $00,$01,$FF,$80,$00,$01,$FF,$80
  DEFB $00,$03,$FF,$80,$00,$03,$FF,$80
  DEFB $00,$03,$FF,$80,$00,$07,$FF,$00
  DEFB $00,$07,$FF,$00,$00,$07,$FE,$00
  DEFB $00,$0F,$FE,$00,$00,$0F,$FE,$00
  DEFB $00,$0F,$FC,$00,$00,$0F,$F8,$00
  DEFB $00,$1F,$FC,$00,$00,$1F,$FF,$00
  DEFB $00,$1F,$FF,$80,$00,$1F,$FF,$80
  DEFB $00,$1F,$F7,$80,$00,$1F,$FB,$00
  DEFB $00,$1F,$F8,$00,$00,$1F,$FC,$00
  DEFB $00,$0F,$FE,$00,$00,$0F,$FE,$00
  DEFB $00,$0F,$FF,$00,$00,$0F,$FF,$80
  DEFB $00,$1F,$DF,$C0,$00,$7F,$CF,$C0
  DEFB $03,$FF,$87,$E0,$07,$FF,$8F,$E0
  DEFB $07,$FF,$0F,$E0,$1F,$FC,$0F,$C0
  DEFB $3F,$F0,$1F,$C0,$3F,$E0,$1F,$E0
  DEFB $3E,$00,$1F,$C0,$7C,$00,$3F,$80
  DEFB $7C,$00,$7E,$00,$7C,$00,$7C,$00
  DEFB $3C,$00,$FF,$00,$18,$00,$FF,$80
  DEFB $00,$00,$FF,$80,$00,$00,$7F,$00
Bmp_HeroMask3:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$03,$F0,$00,$00,$3F,$F8
  DEFB $00,$00,$7F,$F8,$00,$00,$BF,$F8
  DEFB $00,$00,$7F,$F8,$00,$00,$9F,$F8
  DEFB $00,$00,$3F,$F8,$00,$00,$7F,$F0
  DEFB $00,$00,$FF,$E0,$00,$00,$FF,$80
  DEFB $00,$01,$FF,$80,$00,$01,$FF,$80
  DEFB $00,$01,$FF,$80,$00,$03,$FF,$80
  DEFB $00,$03,$FF,$80,$00,$03,$FF,$00
  DEFB $00,$03,$FF,$00,$00,$03,$FE,$00
  DEFB $00,$03,$FE,$00,$00,$07,$FE,$00
  DEFB $00,$0F,$FC,$00,$00,$0F,$F8,$00
  DEFB $00,$1F,$F8,$00,$00,$1F,$FC,$00
  DEFB $00,$1F,$FE,$00,$00,$1F,$FE,$00
  DEFB $00,$0F,$FE,$00,$00,$0F,$F8,$00
  DEFB $00,$07,$FC,$00,$00,$07,$FC,$00
  DEFB $00,$03,$FC,$00,$00,$03,$FC,$00
  DEFB $00,$03,$FC,$00,$00,$03,$FE,$00
  DEFB $00,$03,$FE,$00,$00,$07,$FE,$00
  DEFB $00,$1F,$FE,$00,$00,$FF,$FE,$00
  DEFB $01,$FF,$FE,$00,$01,$FF,$7C,$00
  DEFB $07,$FF,$7C,$00,$0F,$FC,$F8,$00
  DEFB $0F,$F9,$F8,$00,$0F,$81,$FC,$00
  DEFB $1F,$01,$FC,$00,$1F,$03,$F8,$00
  DEFB $1F,$03,$E0,$00,$0F,$03,$C0,$00
  DEFB $06,$07,$F8,$00,$00,$07,$FC,$00
  DEFB $00,$07,$FC,$00,$00,$03,$F8,$00
Bmp_HeroMask4:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$03,$F0,$00,$00,$0F,$F8
  DEFB $00,$00,$1F,$F8,$00,$00,$1F,$F8
  DEFB $00,$00,$7F,$F8,$00,$00,$BF,$F8
  DEFB $00,$00,$7F,$F8,$00,$00,$BF,$F0
  DEFB $00,$00,$7F,$E0,$00,$00,$FF,$80
  DEFB $00,$01,$FF,$80,$00,$03,$FF,$80
  DEFB $00,$07,$FF,$80,$00,$0F,$FF,$80
  DEFB $00,$1F,$FF,$80,$00,$1F,$FF,$00
  DEFB $00,$1F,$FF,$00,$00,$1F,$FE,$00
  DEFB $00,$0F,$FE,$00,$00,$0F,$FE,$00
  DEFB $00,$07,$FC,$00,$00,$07,$FC,$00
  DEFB $00,$0F,$FC,$00,$00,$1F,$FC,$00
  DEFB $00,$1F,$FF,$00,$00,$1F,$FF,$80
  DEFB $00,$0F,$FF,$80,$00,$0F,$FF,$80
  DEFB $00,$0F,$FF,$00,$00,$07,$FC,$00
  DEFB $00,$07,$FE,$00,$00,$07,$FE,$00
  DEFB $00,$07,$FF,$00,$00,$07,$FF,$00
  DEFB $00,$07,$FF,$80,$00,$07,$FF,$80
  DEFB $00,$0F,$FF,$80,$00,$0F,$FF,$00
  DEFB $00,$1F,$FF,$00,$00,$3F,$FC,$00
  DEFB $00,$3F,$F0,$00,$00,$FF,$E0,$00
  DEFB $01,$FF,$C0,$00,$01,$FF,$00,$00
  DEFB $03,$FF,$80,$00,$03,$FF,$80,$00
  DEFB $03,$EF,$80,$00,$03,$EF,$00,$00
  DEFB $01,$EF,$00,$00,$00,$DF,$E0,$00
  DEFB $00,$0F,$F8,$00,$00,$0F,$F8,$00
  DEFB $00,$07,$F0,$00,$00,$00,$00,$00
Bmp_HeroMask5:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$03,$F0
  DEFB $00,$00,$07,$F8,$00,$00,$1F,$F8
  DEFB $00,$00,$3F,$F8,$00,$00,$7F,$F8
  DEFB $00,$01,$FF,$F8,$00,$00,$7F,$F8
  DEFB $00,$00,$BF,$F0,$00,$00,$7F,$E0
  DEFB $00,$00,$FF,$80,$00,$01,$FF,$80
  DEFB $00,$03,$FF,$80,$00,$03,$FF,$80
  DEFB $00,$07,$FF,$80,$00,$07,$FF,$80
  DEFB $00,$0F,$FF,$00,$00,$0F,$FF,$00
  DEFB $00,$1F,$FE,$00,$00,$1F,$FE,$00
  DEFB $00,$3F,$FE,$00,$00,$3F,$FC,$00
  DEFB $00,$7F,$FE,$00,$00,$7F,$FF,$00
  DEFB $00,$FF,$FF,$80,$00,$FF,$FF,$E0
  DEFB $00,$FF,$FD,$F0,$00,$7F,$FE,$F0
  DEFB $00,$1F,$FE,$70,$00,$0F,$FC,$00
  DEFB $00,$0F,$FE,$00,$00,$07,$FF,$00
  DEFB $00,$07,$FF,$80,$00,$07,$FF,$80
  DEFB $00,$0F,$E7,$C0,$00,$0F,$C7,$C0
  DEFB $00,$0F,$CF,$C0,$00,$1F,$CF,$C0
  DEFB $00,$1F,$9F,$80,$00,$1F,$9F,$00
  DEFB $00,$3F,$9F,$00,$00,$7F,$3E,$00
  DEFB $00,$FE,$3C,$00,$00,$FE,$7C,$00
  DEFB $00,$FE,$7C,$00,$00,$FE,$7F,$00
  DEFB $00,$7C,$3F,$80,$00,$7C,$1F,$80
  DEFB $00,$78,$07,$00,$00,$78,$00,$00
  DEFB $00,$FF,$00,$00,$00,$FF,$80,$00
  DEFB $00,$FF,$80,$00,$00,$7F,$00,$00
Bmp_HeroMask6:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$03,$F0,$00,$00,$07,$F8
  DEFB $00,$00,$3F,$F8,$00,$01,$FF,$F8
  DEFB $00,$00,$7F,$F8,$00,$00,$FF,$F8
  DEFB $00,$00,$1F,$F8,$00,$00,$3F,$F0
  DEFB $00,$00,$7F,$E0,$00,$00,$FF,$80
  DEFB $00,$01,$FF,$80,$00,$03,$FF,$80
  DEFB $00,$07,$FF,$80,$00,$0F,$FF,$80
  DEFB $00,$3F,$FF,$80,$00,$3F,$FF,$00
  DEFB $00,$3F,$FF,$00,$00,$3F,$FE,$00
  DEFB $00,$7F,$FE,$00,$00,$7F,$FE,$00
  DEFB $00,$FF,$FC,$00,$00,$FF,$FE,$00
  DEFB $00,$FF,$FF,$C0,$01,$FF,$FF,$E0
  DEFB $03,$FF,$FF,$E0,$03,$FF,$FD,$E0
  DEFB $01,$DF,$FC,$C0,$00,$1F,$FE,$00
  DEFB $00,$1F,$FE,$00,$00,$0F,$FF,$00
  DEFB $00,$0F,$FF,$00,$00,$0F,$FF,$80
  DEFB $00,$1F,$FF,$80,$00,$1F,$BF,$C0
  DEFB $00,$1F,$9F,$C0,$00,$3F,$8F,$C0
  DEFB $00,$7F,$0F,$E0,$00,$7F,$0F,$C0
  DEFB $00,$FE,$07,$E0,$01,$FC,$0F,$E0
  DEFB $03,$F8,$1F,$E0,$03,$F8,$07,$E0
  DEFB $03,$F8,$07,$E0,$03,$F8,$03,$EE
  DEFB $03,$F0,$01,$FF,$07,$E0,$01,$FF
  DEFB $0F,$C0,$01,$FE,$0F,$C0,$01,$F8
  DEFB $0F,$F0,$00,$E0,$07,$F8,$00,$00
  DEFB $01,$F8,$00,$00,$00,$F0,$00,$00
Bmp_HeroMaskSide:
  DEFB $00,$00,$00,$00,$00,$78,$00,$FC
  DEFB $01,$FE,$03,$FE,$03,$FE,$03,$FE
  DEFB $07,$FE,$07,$FE,$03,$F0,$07,$F0
  DEFB $0F,$F8,$0F,$F8,$0F,$F8,$0F,$F8
  DEFB $0F,$F8,$0F,$F8,$0F,$F8,$0F,$F8
  DEFB $0F,$F8,$0F,$F8,$07,$F8,$0F,$F8
  DEFB $0F,$F8,$0F,$F8,$1F,$FE,$1F,$FE
  DEFB $1F,$FE,$1F,$FC,$0F,$F8,$07,$F8
  DEFB $07,$F8,$07,$F8,$07,$F8,$03,$F8
  DEFB $03,$F8,$03,$F8,$03,$F8,$03,$F8
  DEFB $03,$F8,$07,$F8,$07,$F8,$07,$F8
  DEFB $07,$F8,$07
  DEFB $F8,$03,$FC,$07,$FC,$07,$FC,$07
  DEFB $F8,$0F,$F0,$0F,$E0,$0F,$FC,$07
  DEFB $FE,$03,$FE,$01,$FC
Bmp_HeroMaskFacing:
  DEFB $00,$00,$00,$00,$00,$03,$E0,$00
  DEFB $00,$07,$F0,$00,$00,$07,$F0,$00
  DEFB $00,$0F,$F8,$00,$00,$0F,$F8,$00
  DEFB $00,$0F,$F8,$00,$00,$0F,$F8,$00
  DEFB $00,$1F,$F8,$00,$00,$7F,$FE,$00
  DEFB $00,$FF,$FF,$00,$00,$FF,$FF,$00
  DEFB $01,$FF,$FF,$80,$01,$FF,$FF,$80
  DEFB $03,$FF,$FF,$C0,$03,$FF,$FF,$C0
  DEFB $03,$FF,$FF,$C0,$03,$FF,$FF,$C0
  DEFB $03,$FF,$FF,$C0,$07,$BF,$FD,$E0
  DEFB $07,$BF,$FD,$E0,$07,$BF,$FD,$E0
  DEFB $07,$BF,$FD,$E0,$07,$3F,$FC,$E0
  DEFB $07,$1F,$F8,$E0,$07,$1F,$F8,$E0
  DEFB $0F,$BF,$FD,$F0,$0F,$BF,$FF,$F0
  DEFB $0F,$BF,$FF,$F0,$07,$7F,$FE,$E0
  DEFB $00,$7F,$FF,$00,$00,$FF,$FF,$00
  DEFB $00,$FF,$FF,$00,$01,$FF,$FF,$80
  DEFB $01,$FE,$7F,$80,$01,$FE,$7F,$80
  DEFB $03,$FC,$3F,$C0,$03,$FC,$3F,$C0
  DEFB $01,$F8,$1F,$80,$03,$F8,$1F,$C0
  DEFB $03,$F0,$0F,$C0,$03,$F0,$0F,$C0
  DEFB $07,$F0,$0F,$E0,$0F,$F0,$0F,$F0
  DEFB $0F,$F8,$1F,$F0,$0F,$F8,$1F,$F0
  DEFB $07,$F0,$0F,$E0,$07,$C0,$03,$E0
  DEFB $07,$C0,$03,$E0,$07,$C0,$03,$E0
  DEFB $07,$80,$01,$E0,$07,$80,$01,$E0
  DEFB $0F,$C0,$03,$F0,$0F,$C0,$03,$F0
  DEFB $0F,$C0,$03,$F0,$07,$C0,$03,$E0

; Women bitmap
Bmp_Woman1:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$08,$1F,$80
  DEFB $00,$06,$7F,$E0,$00,$07,$FB,$E0
  DEFB $00,$DD,$FE,$20,$00,$6F,$5E,$20
  DEFB $0A,$FE,$F0,$60,$07,$FF,$E0,$20
  DEFB $13,$FF,$E4,$20,$0F,$DD,$C8,$40
  DEFB $07,$EF,$C2,$80,$01,$7F,$E4,$00
  DEFB $01,$F7,$E4,$00,$06,$0D,$FC,$00
  DEFB $00,$10,$FC,$00,$00,$20,$FE,$00
  DEFB $00,$20,$FE,$00,$00,$43,$FF,$00
  DEFB $00,$87,$BE,$00,$00,$8F,$EE,$00
  DEFB $01,$17,$FC,$00,$01,$17,$FC,$00
  DEFB $01,$2F,$FC,$00,$02,$4B,$FA,$00
  DEFB $04,$5E,$B9,$80,$04,$9F,$FC,$40
  DEFB $08,$BF,$F2,$20,$09,$3F,$FA,$40
  DEFB $09,$37,$F9,$80,$0D,$37,$F8,$00
  DEFB $07,$3B,$F8,$00,$00,$1B,$FC,$00
  DEFB $00,$0D,$E4,$00,$00,$1E,$C2,$00
  DEFB $00,$13,$C2,$00,$00,$10,$82,$00
  DEFB $00,$20,$C1,$00,$00,$61,$21,$00
  DEFB $01,$82,$30,$80,$03,$C2,$10,$80
  DEFB $07,$E4,$18,$80,$07,$F8,$08,$80
  DEFB $0F,$F0,$0F,$C0,$11,$E0,$1F,$E0
  DEFB $61,$80,$1F,$E0,$42,$00,$0F,$C0
  DEFB $42,$00,$04,$80,$42,$00,$04,$80
  DEFB $33,$00,$08,$60,$10,$80,$04,$3C
  DEFB $08,$40,$04,$02,$04,$40,$04,$02
  DEFB $03,$80,$03,$FC,$00,$00,$00,$00
Bmp_Woman2:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$08,$9F,$80,$00,$07,$FF,$E0
  DEFB $00,$07,$FB,$E0,$00,$1D,$FE,$20
  DEFB $00,$7F,$5E,$20,$00,$3E,$F0,$60
  DEFB $01,$2F,$E0,$20,$00,$EF,$E4,$20
  DEFB $06,$9D,$C8,$40,$03,$EF,$C2,$80
  DEFB $0B,$7F,$E4,$00,$07,$B7,$FC,$00
  DEFB $01,$EC,$FC,$00,$07,$E8,$7E,$00
  DEFB $03,$48,$7E,$00,$00,$10,$7F,$00
  DEFB $00,$10,$DE,$00,$00,$11,$EC,$00
  DEFB $00,$11,$FC,$00,$00,$23,$F8,$00
  DEFB $00,$23,$F8,$00,$00,$23,$F8,$00
  DEFB $00,$23,$98,$00,$00,$13,$EC,$00
  DEFB $00,$13,$FB,$00,$00,$13,$F8,$80
  DEFB $00,$13,$FC,$80,$00,$11,$FD,$80
  DEFB $00,$11,$FF,$00,$00,$0D,$FB,$00
  DEFB $00,$0F,$F1,$80,$00,$0F,$70,$80
  DEFB $00,$09,$E0,$40,$00,$08,$30,$40
  DEFB $00,$08,$48,$20,$00,$10,$44,$20
  DEFB $00,$10,$82,$20,$00,$60,$82,$20
  DEFB $03,$E1,$04,$40,$07,$F2,$0C,$40
  DEFB $07,$F4,$1F,$C0,$19,$F8,$1F,$C0
  DEFB $21,$F0,$1F,$C0,$21,$E0,$13,$80
  DEFB $22,$00,$21,$00,$44,$00,$42,$00
  DEFB $44,$00,$4C,$00,$44,$00,$87,$80
  DEFB $24,$00,$80,$80,$18,$00,$80,$80
  DEFB $00,$00,$7F,$00,$00,$00,$00,$00
Bmp_Woman3:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$1F,$80
  DEFB $00,$00,$3F,$E0,$00,$03,$FB,$E0
  DEFB $00,$8D,$FE,$20,$00,$7F,$5E,$20
  DEFB $00,$3E,$F0,$60,$00,$2F,$E0,$20
  DEFB $00,$EF,$E4,$20,$06,$9D,$C8,$40
  DEFB $03,$EF,$C2,$80,$03,$7F,$E4,$00
  DEFB $01,$BF,$FC,$00,$01,$FE,$7C,$00
  DEFB $07,$EE,$7E,$00,$03,$6C,$7E,$00
  DEFB $00,$6C,$7F,$00,$00,$CC,$7E,$00
  DEFB $00,$0C,$4C,$00,$00,$0C,$FC,$00
  DEFB $00,$0C,$F8,$00,$00,$04,$D8,$00
  DEFB $00,$04,$68,$00,$00,$0E,$38,$00
  DEFB $00,$1F,$18,$00,$00,$1F,$8C,$00
  DEFB $00,$1F,$C6,$00,$00,$1F,$E2,$00
  DEFB $00,$1F,$E2,$00,$00,$1F,$FC,$00
  DEFB $00,$0B,$FC,$00,$00,$05,$FC,$00
  DEFB $00,$05,$FC,$00,$00,$03,$0C,$00
  DEFB $00,$03,$04,$00,$00,$03,$04,$00
  DEFB $00,$03,$84,$00,$00,$03,$84,$00
  DEFB $00,$07,$84,$00,$00,$19,$88,$00
  DEFB $00,$F8,$88,$00,$01,$FC,$88,$00
  DEFB $01,$FD,$F8,$00,$06,$7F,$FC,$00
  DEFB $08,$7D,$FC,$00,$08,$79,$F8,$00
  DEFB $08,$81,$78,$00,$11,$01,$10,$00
  DEFB $11,$02,$20,$00,$11,$01,$3C,$00
  DEFB $09,$01,$02,$00,$06,$01,$02,$00
  DEFB $00,$00,$FC,$00,$00,$00,$00,$00
Bmp_Woman4:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$1F,$80,$00,$00,$3F,$E0
  DEFB $00,$00,$FB,$E0,$00,$01,$EE,$20
  DEFB $00,$07,$DE,$20,$00,$06,$F0,$60
  DEFB $00,$0D,$E0,$20,$00,$0F,$E4,$20
  DEFB $00,$1D,$C8,$40,$00,$6F,$C2,$80
  DEFB $00,$7F,$E4,$00,$00,$B7,$FC,$00
  DEFB $00,$EF,$7C,$00,$00,$EE,$3E,$00
  DEFB $00,$FE,$3E,$00,$00,$6E,$3F,$00
  DEFB $00,$EE,$3E,$00,$00,$3E,$34,$00
  DEFB $00,$1E,$3C,$00,$00,$1E,$38,$00
  DEFB $00,$1E,$38,$00,$00,$0E,$50,$00
  DEFB $00,$0E,$38,$00,$00,$1F,$18,$00
  DEFB $00,$1F,$88,$00,$00,$1F,$C4,$00
  DEFB $00,$0F,$E3,$00,$00,$0F,$F0,$80
  DEFB $00,$07,$F8,$80,$00,$07,$FF,$00
  DEFB $00,$07,$F6,$00,$00,$07,$F6,$00
  DEFB $00,$07,$F7,$00,$00,$02,$FD,$00
  DEFB $00,$02,$09,$80,$00,$02,$10,$80
  DEFB $00,$06,$10,$80,$00,$04,$11,$00
  DEFB $00,$1C,$13,$00,$00,$3C,$2C,$00
  DEFB $00,$3C,$30,$00,$00,$CC,$20,$00
  DEFB $01,$0C,$40,$00,$01,$0F,$40,$00
  DEFB $01,$1F,$C0,$00,$02,$3F,$C0,$00
  DEFB $02,$2F,$80,$00,$02,$29,$00,$00
  DEFB $01,$29,$00,$00,$00,$D0,$E0,$00
  DEFB $00,$08,$18,$00,$00,$08,$08,$00
  DEFB $00,$07,$F0,$00,$00,$00,$00,$00
Bmp_Woman5:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$1F,$80
  DEFB $00,$00,$3F,$E0,$00,$00,$FB,$E0
  DEFB $00,$01,$F6,$20,$00,$0F,$DE,$20
  DEFB $00,$7E,$F0,$60,$02,$FD,$E0,$20
  DEFB $01,$DF,$E4,$20,$00,$7D,$C8,$40
  DEFB $00,$6F,$C2,$80,$00,$FF,$E4,$00
  DEFB $01,$B7,$FC,$00,$01,$EF,$FC,$00
  DEFB $00,$EF,$7E,$00,$01,$FE,$3E,$00
  DEFB $00,$7E,$3F,$00,$00,$D6,$36,$00
  DEFB $00,$1E,$3C,$00,$00,$2E,$3C,$00
  DEFB $00,$2E,$38,$00,$00,$4E,$30,$00
  DEFB $00,$4F,$1C,$00,$00,$9F,$03,$00
  DEFB $00,$9F,$C0,$C0,$00,$9F,$FC,$20
  DEFB $00,$9F,$FF,$20,$01,$2F,$F6,$C0
  DEFB $01,$2F,$F6,$00,$00,$CF,$EF,$00
  DEFB $00,$0F,$EC,$80,$00,$07,$EC,$40
  DEFB $00,$06,$18,$20,$00,$04,$2C,$20
  DEFB $00,$0C,$24,$20,$00,$08,$44,$40
  DEFB $00,$08,$48,$40,$00,$18,$4E,$C0
  DEFB $00,$10,$9F,$80,$00,$10,$9F,$C0
  DEFB $00,$31,$1F,$80,$00,$79,$27,$00
  DEFB $00,$FE,$24,$00,$00,$FE,$44,$00
  DEFB $00,$FE,$44,$00,$00,$7E,$43,$00
  DEFB $00,$4C,$20,$80,$00,$48,$08,$80
  DEFB $00,$48,$07,$00,$00,$87,$00,$00
  DEFB $00,$80,$80,$00,$00,$80,$80,$00
  DEFB $00,$7F,$00,$00,$00,$00,$00,$00
Bmp_Woman6:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$1F,$80
  DEFB $00,$80,$EF,$E0,$00,$78,$DB,$E0
  DEFB $09,$AF,$F6,$20,$06,$F3,$DE,$20
  DEFB $09,$DE,$F0,$60,$07,$E5,$E0,$20
  DEFB $09,$DF,$E4,$20,$1F,$FD,$C8,$40
  DEFB $0F,$EF,$C2,$80,$09,$FF,$E4,$00
  DEFB $03,$B6,$FC,$00,$00,$EF,$7E,$00
  DEFB $00,$0E,$3E,$00,$00,$0E,$3F,$00
  DEFB $00,$1E,$37,$80,$00,$1E,$3F,$00
  DEFB $00,$2E,$3E,$00,$00,$2E,$3E,$00
  DEFB $00,$4E,$3C,$00,$00,$8B,$18,$00
  DEFB $01,$1D,$07,$00,$01,$2F,$C0,$E0
  DEFB $02,$2F,$FC,$10,$02,$5F,$FF,$10
  DEFB $02,$5F,$F4,$E0,$01,$9F,$F4,$00
  DEFB $00,$1F,$F6,$00,$00,$1F,$F6,$00
  DEFB $00,$1F,$F6,$00,$00,$0F,$F7,$00
  DEFB $00,$0F,$ED,$00,$00,$11,$F8,$80
  DEFB $00,$10,$70,$80,$00,$10,$50,$40
  DEFB $00,$20,$98,$40,$00,$20,$88,$40
  DEFB $00,$41,$08,$40,$00,$82,$08,$40
  DEFB $01,$84,$08,$40,$03,$E8,$05,$E0
Bmp_Woman7:
  DEFB $03,$F8,$0F,$E0,$03,$F8,$0F,$E0
  DEFB $03,$F8,$07,$E0,$02,$30,$07,$A0
  DEFB $04,$20,$02,$2E,$08,$40,$01,$11
  DEFB $08,$40,$01,$01,$08,$30,$01,$06
  DEFB $06,$08,$01,$18,$01,$08,$00,$E0
  DEFB $00,$F0,$00,$00,$00,$00,$00,$00
Bmp_Woman8:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$08,$1F,$80
  DEFB $00,$06,$7F,$E0,$00,$07,$FB,$E0
  DEFB $00,$DD,$FE,$20,$00,$6F,$5E,$20
  DEFB $0A,$FE,$F0,$60,$07,$FF,$E0,$20
  DEFB $13,$FF,$E4,$20,$0F,$DD,$C8,$40
  DEFB $07,$EF,$C2,$80,$01,$7F,$E4,$00
  DEFB $01,$F7,$E4,$00,$06,$0F,$FC,$00
  DEFB $00,$1F,$7C,$00,$00,$2E,$3E,$00
  DEFB $00,$2E,$3E,$00,$00,$4E,$3F,$00
  DEFB $00,$8E,$3E,$00,$00,$8E,$2E,$00
  DEFB $01,$16,$3C,$00,$01,$17,$3C,$00
  DEFB $01,$2F,$18,$00,$02,$4B,$8C,$00
  DEFB $02,$5E,$C4,$00,$06,$9F,$E2,$00
  DEFB $08,$BF,$F1,$00,$09,$3F,$F8,$80
  DEFB $06,$3F,$F8,$80,$00,$3F,$EC,$80
  DEFB $00,$3F,$EB,$80,$00,$1F,$EC,$00
  DEFB $00,$11,$DC,$00,$00,$10,$FA,$00
  DEFB $00,$10,$62,$00,$00,$10,$42,$00
  DEFB $00,$20,$C1,$00,$00,$21,$21,$00
  DEFB $00,$61,$30,$80,$01,$82,$10,$80
  DEFB $03,$C2,$18,$80,$07,$E4,$08,$80
  DEFB $07,$F8,$0F,$C0,$0F,$F0,$1F,$E0
  DEFB $11,$E0,$1F,$E0,$61,$80,$0F,$C0
  DEFB $42,$00,$04,$80,$42,$00,$04,$80
  DEFB $42,$00,$08,$60,$33,$00,$04,$3C
  DEFB $10,$80,$04,$02,$08,$40,$04,$02
  DEFB $04,$40,$03,$FC,$03,$80,$00,$00
Bmp_Woman9:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$08,$9F,$80,$00,$07,$FF,$E0
  DEFB $00,$07,$FB,$E0,$00,$1D,$FE,$20
  DEFB $00,$7F,$5E,$20,$00,$3E,$F0,$60
  DEFB $01,$2F,$E0,$20,$00,$EF,$E4,$20
  DEFB $06,$9D,$C8,$40,$03,$EF,$C2,$80
  DEFB $0B,$7F,$E4,$00,$07,$B7,$FC,$00
  DEFB $01,$EC,$FC,$00,$07,$EC,$FE,$00
  DEFB $03,$4C,$7E,$00,$00,$0C,$7F,$00
  DEFB $00,$0C,$7E,$00,$00,$0C,$4C,$00
  DEFB $00,$0C,$7C,$00,$00,$0C,$78,$00
  DEFB $00,$06,$68,$00,$00,$06,$3C,$00
  DEFB $00,$07,$0E,$00,$00,$0F,$C1,$00
  DEFB $00,$1F,$F1,$00,$00,$1F,$F9,$00
  DEFB $00,$1F,$EE,$00,$00,$1F,$EC,$00
  DEFB $00,$1F,$EE,$00,$00,$0F,$EF,$00
  DEFB $00,$0F,$DD,$80,$00,$08,$D8,$80
  DEFB $00,$08,$70,$40,$00,$08,$30,$40
  DEFB $00,$08,$48,$20,$00,$10,$44,$20
  DEFB $00,$10,$42,$20,$00,$10,$42,$20
  DEFB $00,$60,$84,$40,$03,$E1,$8C,$40
  DEFB $07,$F2,$1F,$C0,$07,$F6,$1F,$C0
  DEFB $19,$FC,$1F,$C0,$21,$F0,$13,$80
  DEFB $21,$E0,$21,$00,$22,$00,$42,$00
  DEFB $44,$00,$4C,$00,$44,$00,$87,$80
  DEFB $44,$00,$80,$80,$24,$00,$80,$80
  DEFB $18,$00,$7F,$00,$00,$00,$00,$00
Bmp_Woman10:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$1F,$80
  DEFB $00,$00,$3F,$E0,$00,$03,$FB,$E0
  DEFB $00,$8D,$FE,$20,$00,$7F,$5E,$20
  DEFB $00,$3E,$F0,$60,$00,$2F,$E0,$20
  DEFB $00,$EF,$E4,$20,$06,$9D,$C8,$40
  DEFB $03,$EF,$C2,$80,$03,$7F,$E4,$00
  DEFB $01,$BF,$FC,$00,$01,$FE,$7C,$00
  DEFB $07,$EE,$7E,$00,$03,$6C,$7E,$00
  DEFB $00,$6C,$7F,$00,$00,$CC,$7E,$00
  DEFB $00,$0C,$4C,$00,$00,$0C,$FC,$00
  DEFB $00,$04,$F8,$00,$00,$04,$E8,$00
  DEFB $00,$0C,$78,$00,$00,$0E,$38,$00
  DEFB $00,$1F,$18,$00,$00,$1F,$8C,$00
  DEFB $00,$1F,$C6,$00,$00,$1F,$E2,$00
  DEFB $00,$0F,$E2,$00,$00,$0F,$FC,$00
  DEFB $00,$07,$EC,$00,$00,$07,$FC,$00
  DEFB $00,$06,$14,$00,$00,$02,$14,$00
  DEFB $00,$02,$12,$00,$00,$03,$12,$00
  DEFB $00,$03,$12,$00,$00,$03,$12,$00
  DEFB $00,$06,$12,$00,$00,$18,$22,$00
  DEFB $00,$F8,$44,$00,$01,$FC,$8C,$00
  DEFB $01,$FD,$F8,$00,$06,$7F,$FC,$00
  DEFB $08,$7D,$FC,$00,$08,$79,$F8,$00
  DEFB $08,$81,$78,$00,$11,$01,$10,$00
  DEFB $11,$02,$20,$00,$11,$01,$3C,$00
  DEFB $09,$01,$02,$00,$06,$01,$02,$00
  DEFB $00,$00,$FC,$00,$00,$00,$00,$00
Bmp_Woman11:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$1F,$80,$00,$00,$3F,$E0
  DEFB $00,$00,$FB,$E0,$00,$01,$EE,$20
  DEFB $00,$07,$DE,$20,$00,$06,$F0,$60
  DEFB $00,$0D,$E0,$20,$00,$0F,$E4,$20
  DEFB $00,$1D,$C8,$40,$00,$6F,$C2,$80
  DEFB $00,$7F,$E4,$00,$00,$B6,$FC,$00
  DEFB $00,$EE,$7C,$00,$00,$EC,$7E,$00
  DEFB $00,$FC,$7E,$00,$00,$78,$FF,$00
  DEFB $00,$F1,$FE,$00,$00,$31,$CC,$00
  DEFB $00,$13,$FC,$00,$00,$13,$F8,$00
  DEFB $00,$11,$38,$00,$00,$09,$D4,$00
  DEFB $00,$0C,$FA,$00,$00,$1C,$F9,$80
  DEFB $00,$1C,$7C,$40,$00,$1E,$7A,$40
  DEFB $00,$0E,$7D,$80,$00,$0E,$7C,$00
  DEFB $00,$07,$FC,$00,$00,$07,$FC,$00
  DEFB $00,$05,$FE,$00,$00,$06,$F6,$00
  DEFB $00,$07,$E3,$00,$00,$02,$41,$00
  DEFB $00,$02,$21,$80,$00,$02,$30,$80
  DEFB $00,$06,$30,$80,$00,$04,$C1,$00
  DEFB $00,$1F,$03,$00,$00,$3F,$0C,$00
  DEFB $00,$3F,$B0,$00,$00,$CF,$A0,$00
  DEFB $01,$0F,$C0,$00,$01,$0F,$00,$00
  DEFB $01,$1F,$80,$00,$02,$3F,$80,$00
  DEFB $02,$2F,$80,$00,$02,$29,$00,$00
  DEFB $01,$29,$00,$00,$00,$D0,$E0,$00
  DEFB $00,$08,$18,$00,$00,$08,$08,$00
  DEFB $00,$07,$F0,$00,$00,$00,$00,$00
Bmp_Woman12:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$1F,$80
  DEFB $00,$00,$3F,$E0,$00,$00,$FB,$E0
  DEFB $00,$01,$F6,$20,$00,$0F,$DE,$20
  DEFB $00,$7E,$F0,$60,$02,$FD,$E0,$20
  DEFB $01,$DF,$E4,$20,$00,$7D,$C8,$40
  DEFB $00,$6F,$C2,$80,$00,$FF,$E4,$00
  DEFB $01,$B6,$FC,$00,$01,$EE,$7C,$00
  DEFB $00,$EC,$7E,$00,$01,$FC,$7E,$00
  DEFB $00,$78,$FF,$00,$00,$D1,$FE,$00
  DEFB $00,$11,$CC,$00,$00,$23,$FC,$00
  DEFB $00,$23,$FA,$00,$00,$46,$71,$00
  DEFB $00,$47,$D1,$00,$00,$4F,$F8,$80
  DEFB $00,$8F,$FC,$60,$00,$9F,$FE,$10
  DEFB $00,$8D,$FD,$10,$00,$8D,$FE,$E0
  DEFB $00,$9E,$FE,$00,$00,$EE,$FD,$00
  DEFB $00,$0E,$F8,$80,$00,$07,$30,$40
  DEFB $00,$07,$D8,$20,$00,$04,$2C,$20
  DEFB $00,$0C,$24,$20,$00,$08,$44,$40
  DEFB $00,$08,$48,$40,$00,$18,$4E,$C0
  DEFB $00,$10,$9F,$80,$00,$10,$9F,$C0
  DEFB $00,$31,$1F,$80,$00,$79,$27,$00
  DEFB $00,$FE,$24,$00,$00,$FE,$44,$00
  DEFB $00,$FE,$44,$00,$00,$7E,$43,$00
  DEFB $00,$4C,$20,$80,$00,$48,$08,$80
  DEFB $00,$48,$07,$00,$00,$87,$00,$00
  DEFB $00,$80,$80,$00,$00,$80,$80,$00
  DEFB $00,$7F,$00,$00,$00,$00,$00,$00
Bmp_woman13:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$1F,$80
  DEFB $00,$80,$EF,$E0,$00,$78,$DB,$E0
  DEFB $09,$AF,$F6,$20,$06,$F3,$DE,$20
  DEFB $09,$DE,$F0,$60,$07,$E5,$E0,$20
  DEFB $09,$DF,$E4,$20,$1F,$FD,$C8,$40
  DEFB $0F,$EF,$C2,$80,$09,$FF,$E4,$00
  DEFB $03,$B6,$FC,$00,$0C,$EC,$7C,$00
  DEFB $00,$A8,$7E,$00,$00,$18,$7E,$00
  DEFB $00,$30,$FF,$00,$00,$21,$FE,$00
  DEFB $00,$41,$CC,$00,$00,$C7,$FC,$00
  DEFB $00,$8F,$F2,$00,$00,$8E,$61,$00
  DEFB $00,$9F,$61,$00,$00,$9F,$F0,$C0
  DEFB $01,$1F,$F4,$30,$01,$1F,$FA,$10
  DEFB $02,$3D,$FD,$10,$02,$3D,$FC,$E0
  DEFB $02,$3E,$FE,$00,$00,$3E,$7E,$00
  DEFB $01,$DF,$7F,$00,$00,$0F,$B9,$80
  DEFB $00,$0F,$B0,$80,$00,$08,$F0,$40
  DEFB $00,$08,$60,$40,$00,$08,$38,$20
  DEFB $00,$10,$4C,$20,$00,$10,$C4,$20
  DEFB $00,$20,$84,$20,$00,$41,$04,$20
  DEFB $00,$C2,$04,$20,$01,$F4,$02,$F0
  DEFB $01,$FC,$07,$F0,$01,$FC,$07,$F0
  DEFB $01,$FC,$03,$F0,$01,$18,$03,$D0
  DEFB $02,$10,$01,$16,$04,$20,$00,$89
  DEFB $04,$20,$00,$81,$04,$18,$00,$83
  DEFB $03,$04,$00,$8C,$00,$84,$00,$70
  DEFB $00,$78,$00,$00,$00,$00,$00,$00
Bmp_WomanStanding:
  DEFB $00,$00,$00,$00,$00,$FC,$01,$FF
  DEFB $03,$DF,$07,$71,$1F,$F1,$1F,$83
  DEFB $2F,$01,$3F,$21,$2E,$42,$3F,$1C
  DEFB $DF,$D0,$B6,$F0,$EC,$78,$E8,$F8
  DEFB $78,$FC,$58,$FE,$F1,$FE,$B1,$CC
  DEFB $D3,$FC,$73,$F8,$51,$30,$09,$D0
  DEFB $0C,$F8,$1C,$F8,$1C,$7C,$1E,$78
  DEFB $0E,$7C,$0E,$7C,$07,$FC,$07,$FC
  DEFB $0F,$F8,$06,$18,$04,$18,$06,$08
  DEFB $05,$08,$05,$08,$02,$88,$02,$88
  DEFB $03,$08,$05,$08,$05,$10,$07,$10
  DEFB $0F,$F8,$0F,$F8,$07,$F0,$05,$F8
  DEFB $05,$F0,$05,$10,$0D,$10,$09,$20
  DEFB $0A,$1C,$06,$02,$02,$02,$01,$FC

; [36] Rat
Bmp_Rat1:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$40,$00
  DEFB $80,$00,$8F,$80,$DF,$E6,$7F,$FF
  DEFB $3F,$FF,$1F,$FD,$0E,$18,$03,$10
; [37]
Bmp_Rat2:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$80,$00
  DEFB $80,$00,$80,$00,$CF,$80,$7F,$E6
  DEFB $7F,$FF,$3F,$FF,$1F,$FD,$0E,$0C
; [38]
Bmp_Rat3:
  DEFB $00,$00,$00,$00,$00,$00,$00,$80
  DEFB $00,$E0,$00,$F0,$01,$E0,$01,$E0
  DEFB $01,$F0,$05,$F8,$09,$E0,$0B,$E0
  DEFB $0B,$E0,$0F,$E0,$0F,$F0,$07,$F0

; Block
Bmp_Block:
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

; Man bitmap
Bmp_Man1:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$07,$C0,$00,$00,$0F,$E0
  DEFB $00,$00,$3F,$90,$00,$00,$3F,$08
  DEFB $00,$00,$7D,$30,$00,$00,$7F,$08
  DEFB $00,$00,$79,$10,$00,$00,$E0,$90
  DEFB $00,$01,$F1,$E0,$00,$03,$3A,$00
  DEFB $00,$02,$19,$00,$00,$04,$19,$00
  DEFB $00,$08,$39,$00,$00,$08,$7D,$00
  DEFB $00,$10,$F9,$00,$00,$21,$F1,$00
  DEFB $00,$23,$E2,$00,$00,$47,$E2,$00
  DEFB $00,$45,$C6,$00,$00,$46,$8D,$00
  DEFB $00,$4F,$C8,$80,$00,$4F,$FC,$40
  DEFB $00,$9F,$FA,$20,$01,$1F,$F9,$10
  DEFB $01,$1B,$F9,$10,$01,$3B,$F0,$B0
  DEFB $00,$DB,$F8,$E0,$00,$1D,$FC,$00
  DEFB $00,$1D,$FC,$00,$00,$1E,$FE,$00
  DEFB $00,$1E,$FE,$00,$00,$3E,$FE,$00
  DEFB $00,$3F,$7F,$00,$00,$3F,$FF,$00
  DEFB $00,$7F,$3F,$80,$01,$FF,$1F,$80
  DEFB $02,$FE,$1F,$80,$04,$7E,$0F,$80
  DEFB $04,$3C,$0F,$C0,$0E,$10,$08,$40
  DEFB $11,$60,$08,$40,$61,$80,$0F,$C0
  DEFB $82,$00,$04,$80,$84,$00,$04,$80
  DEFB $44,$00,$08,$80,$43,$00,$04,$40
  DEFB $20,$80,$04,$38,$1F,$00,$04,$04
  DEFB $00,$00,$02,$04,$00,$00,$03,$F8
Bmp_Man2:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$07,$C0
  DEFB $00,$00,$0F,$E0,$00,$00,$3F,$90
  DEFB $00,$00,$3F,$08,$00,$00,$7D,$30
  DEFB $00,$00,$7F,$08,$00,$00,$79,$10
  DEFB $00,$00,$E0,$90,$00,$01,$F1,$E0
  DEFB $00,$03,$3A,$00,$00,$03,$19,$00
  DEFB $00,$04,$19,$00,$00,$04,$39,$00
  DEFB $00,$08,$7D,$00,$00,$08,$79,$00
  DEFB $00,$18,$71,$00,$00,$18,$F2,$00
  DEFB $00,$18,$E2,$00,$00,$18,$E2,$00
  DEFB $00,$18,$AC,$00,$00,$1C,$C8,$00
  DEFB $00,$1C,$FC,$00,$00,$3C,$FB,$00
  DEFB $00,$3C,$78,$80,$00,$3C,$7C,$80
  DEFB $00,$3E,$74,$80,$00,$1B,$FB,$00
  DEFB $00,$1D,$F8,$00,$00,$1D,$FC,$00
  DEFB $00,$0E,$FE,$00,$00,$0E,$FE,$00
  DEFB $00,$0F,$7F,$00,$00,$0F,$FF,$80
  DEFB $00,$1F,$DF,$C0,$00,$7F,$CF,$C0
  DEFB $03,$FF,$87,$E0,$04,$3F,$8F,$E0
  DEFB $06,$1F,$0F,$E0,$19,$1C,$09,$C0
  DEFB $21,$10,$10,$40,$21,$E0,$1C,$20
  DEFB $22,$00,$13,$40,$44,$00,$21,$80
  DEFB $44,$00,$42,$00,$44,$00,$4C,$00
  DEFB $24,$00,$87,$00,$18,$00,$80,$80
  DEFB $00,$00,$80,$80,$00,$00,$7F,$00
Bmp_Man3:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$07,$C0
  DEFB $00,$00,$0F,$E0,$00,$00,$3F,$90
  DEFB $00,$00,$3F,$08,$00,$00,$7D,$30
  DEFB $00,$00,$7F,$08,$00,$00,$79,$10
  DEFB $00,$00,$E0,$90,$00,$01,$F1,$E0
  DEFB $00,$03,$3A,$00,$00,$03,$19,$00
  DEFB $00,$04,$19,$00,$00,$04,$39,$00
  DEFB $00,$08,$7D,$00,$00,$08,$79,$00
  DEFB $00,$08,$71,$00,$00,$08,$F2,$00
  DEFB $00,$18,$E2,$00,$00,$18,$E2,$00
  DEFB $00,$18,$C4,$00,$00,$18,$84,$00
  DEFB $00,$18,$EC,$00,$00,$3C,$FB,$00
  DEFB $00,$3C,$78,$80,$00,$3E,$7C,$80
  DEFB $00,$1E,$3B,$00,$00,$1B,$18,$00
  DEFB $00,$05,$9C,$00,$00,$05,$FC,$00
  DEFB $00,$02,$FC,$00,$00,$02,$FC,$00
  DEFB $00,$03,$7C,$00,$00,$03,$3E,$00
  DEFB $00,$03,$BE,$00,$00,$07,$BE,$00
  DEFB $00,$1F,$BE,$00,$00,$FF,$BE,$00
  DEFB $01,$0F,$FE,$00,$01,$87,$7C,$00
  DEFB $06,$47,$7C,$00,$08,$44,$98,$00
  DEFB $08,$79,$08,$00,$08,$81,$84,$00
  DEFB $11,$01,$4C,$00,$11,$02,$38,$00
  DEFB $11,$02,$20,$00,$09,$02,$40,$00
  DEFB $06,$04,$38,$00,$00,$04,$04,$00
  DEFB $00,$04,$04,$00,$00,$03,$F8,$00
Bmp_man4:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$07,$C0
  DEFB $00,$00,$0F,$E0,$00,$00,$3F,$90
  DEFB $00,$00,$3F,$08,$00,$00,$7D,$30
  DEFB $00,$00,$7F,$08,$00,$00,$79,$10
  DEFB $00,$00,$E0,$90,$00,$01,$F1,$E0
  DEFB $00,$03,$3A,$00,$00,$03,$19,$00
  DEFB $00,$06,$1D,$00,$00,$0E,$1C,$80
  DEFB $00,$16,$1C,$80,$00,$26,$1A,$80
  DEFB $00,$26,$18,$80,$00,$26,$19,$00
  DEFB $00,$27,$19,$00,$00,$27,$0A,$00
  DEFB $00,$2F,$0A,$00,$00,$2E,$8E,$00
  DEFB $00,$1F,$C4,$00,$00,$1F,$E4,$00
  DEFB $00,$1F,$F3,$00,$00,$1F,$F0,$80
  DEFB $00,$0F,$E8,$80,$00,$0F,$EC,$80
  DEFB $00,$0F,$EF,$00,$00,$07,$EC,$00
  DEFB $00,$07,$EE,$00,$00,$07,$DE,$00
  DEFB $00,$07,$DF,$00,$00,$07,$DF,$00
  DEFB $00,$07,$DF,$80,$00,$07,$DF,$80
  DEFB $00,$0F,$DF,$80,$00,$0F,$DF,$00
  DEFB $00,$0F,$DF,$00,$00,$7F,$BC,$00
  DEFB $00,$9F,$70,$00,$00,$9F,$60,$00
  DEFB $00,$BF,$C0,$00,$00,$A1,$00,$00
  DEFB $00,$A0,$80,$00,$00,$58,$80,$00
  DEFB $00,$57,$00,$00,$00,$31,$00,$00
  DEFB $00,$12,$00,$00,$00,$0A,$00,$00
  DEFB $00,$11,$C0,$00,$00,$10,$30,$00
  DEFB $00,$10,$10,$00,$00,$0F,$E0,$00
Bmp_Man5:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$07,$C0,$00,$00,$0F,$E0
  DEFB $00,$00,$3F,$90,$00,$00,$3F,$08
  DEFB $00,$00,$7D,$30,$00,$00,$7F,$08
  DEFB $00,$00,$79,$10,$00,$00,$E0,$90
  DEFB $00,$01,$F1,$E0,$00,$03,$3A,$00
  DEFB $00,$03,$19,$00,$00,$06,$19,$00
  DEFB $00,$0E,$18,$80,$00,$16,$1C,$80
  DEFB $00,$26,$1E,$80,$00,$4E,$1C,$80
  DEFB $00,$4E,$1D,$00,$00,$4E,$1D,$00
  DEFB $00,$4E,$3A,$00,$00,$5F,$1A,$00
  DEFB $00,$4D,$06,$00,$00,$4F,$81,$00
  DEFB $00,$9F,$E0,$80,$00,$9F,$F8,$60
  DEFB $00,$9F,$F6,$10,$00,$7F,$F7,$10
  DEFB $00,$1F,$F6,$E0,$00,$0F,$F7,$00
  DEFB $00,$0F,$EF,$80,$00,$07,$EF,$C0
  DEFB $00,$07,$EF,$E0,$00,$07,$FF,$E0
  DEFB $00,$0F,$E7,$E0,$00,$0F,$C7,$C0
  DEFB $00,$0F,$CF,$C0,$00,$1F,$CF,$C0
  DEFB $00,$1F,$90,$80,$00,$1F,$90,$40
  DEFB $00,$3F,$9C,$80,$00,$7F,$27,$00
  DEFB $00,$CE,$24,$00,$00,$82,$44,$00
  DEFB $00,$82,$44,$00,$00,$F6,$43,$00
  DEFB $00,$4C,$20,$80,$00,$4C,$08,$80
  DEFB $00,$48,$07,$00,$00,$48,$00,$00
  DEFB $00,$87,$00,$00,$00,$80,$80,$00
  DEFB $00,$80,$80,$00,$00,$7F,$00,$00
Bmp_Man6:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$07,$C0
  DEFB $00,$00,$0F,$E0,$00,$00,$3F,$90
  DEFB $00,$00,$3F,$08,$00,$00,$7D,$30
  DEFB $00,$00,$7F,$08,$00,$00,$79,$10
  DEFB $00,$00,$E0,$90,$00,$01,$F1,$E0
  DEFB $00,$03,$3A,$00,$00,$07,$19,$00
  DEFB $00,$0E,$19,$00,$00,$16,$18,$80
  DEFB $00,$16,$18,$80,$00,$26,$1A,$80
  DEFB $00,$46,$18,$80,$00,$47,$11,$00
  DEFB $00,$4F,$19,$00,$00,$93,$0A,$00
  DEFB $00,$97,$86,$00,$00,$97,$C2,$00
  DEFB $00,$AD,$F1,$C0,$01,$2F,$38,$20
  DEFB $02,$2F,$FE,$20,$02,$2F,$F5,$20
  DEFB $01,$DF,$F4,$C0,$00,$1F,$F6,$00
  DEFB $00,$1F,$DE,$00,$00,$0F,$DF,$00
  DEFB $00,$0F,$DF,$00,$00,$0F,$DF,$80
  DEFB $00,$1F,$FF,$80,$00,$1F,$BF,$C0
  DEFB $00,$1F,$9F,$C0,$00,$3F,$8F,$C0
  DEFB $00,$7F,$0F,$C0,$00,$7F,$0F,$E0
  DEFB $00,$FE,$07,$E0,$01,$FC,$0E,$20
  DEFB $03,$38,$08,$20,$02,$08,$04,$E0
  DEFB $03,$08,$07,$A0,$03,$C8,$02,$2E
  DEFB $02,$30,$01,$11,$04,$20,$01,$01
  DEFB $08,$40,$01,$06,$08,$40,$01,$18
  DEFB $08,$30,$00,$E0,$06,$08,$00,$00
  DEFB $01,$08,$00,$00,$00,$F0,$00,$00
Bmp_Man7:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$07,$C0,$00,$00,$0F,$E0
  DEFB $00,$00,$3F,$90,$00,$00,$3F,$08
  DEFB $00,$00,$7D,$30,$00,$00,$7F,$08
  DEFB $00,$00,$79,$10,$00,$00,$E0,$90
  DEFB $00,$01,$F1,$E0,$00,$03,$3A,$00
  DEFB $00,$03,$19,$00,$00,$06,$19,$00
  DEFB $00,$0E,$18,$80,$00,$16,$18,$80
  DEFB $00,$26,$1A,$80,$00,$46,$18,$80
  DEFB $00,$4F,$11,$00,$00,$4F,$0D,$00
  DEFB $00,$4B,$82,$00,$00,$8D,$C1,$00
  DEFB $00,$9F,$70,$80,$00,$9F,$F8,$40
  DEFB $01,$1F,$FE,$20,$01,$1F,$F9,$10
  DEFB $01,$BF,$E9,$10,$00,$DF,$EC,$90
  DEFB $00,$1F,$EC,$E0,$00,$1F,$DC,$00
  DEFB $00,$1F,$DC,$00,$00,$1F,$DE,$00
  DEFB $00,$1F,$BE,$00,$00,$3F,$BE,$00
  DEFB $00,$3F,$BF,$00,$00,$3F,$FF,$00
  DEFB $00,$7F,$3F,$80,$01,$FF,$1F,$80
  DEFB $02,$FE,$1F,$80,$04,$7E,$0F,$80
  DEFB $04,$3C,$0F,$C0,$0E,$10,$08,$40
  DEFB $11,$60,$08,$40,$61,$80,$0F,$C0
  DEFB $42,$00,$04,$80,$42,$00,$04,$80
  DEFB $42,$00,$08,$60,$33,$00,$04,$3C
  DEFB $10,$80,$04,$02,$08,$40,$04,$02
  DEFB $04,$40,$03,$FC,$03,$80,$00,$00
Bmp_Man8:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$07,$C0,$00,$00,$0F,$E0
  DEFB $00,$00,$3F,$90,$00,$00,$3F,$08
  DEFB $00,$00,$7D,$30,$00,$00,$7F,$08
  DEFB $00,$00,$79,$10,$00,$00,$E0,$90
  DEFB $00,$01,$F1,$E0,$00,$03,$3A,$00
  DEFB $00,$03,$19,$00,$00,$06,$1D,$00
  DEFB $00,$06,$1C,$80,$00,$06,$1C,$80
  DEFB $00,$06,$1A,$80,$00,$06,$18,$80
  DEFB $00,$06,$19,$00,$00,$0F,$19,$00
  DEFB $00,$0F,$1A,$00,$00,$0B,$8A,$00
  DEFB $00,$0E,$8A,$00,$00,$0F,$C4,$00
  DEFB $00,$1F,$E2,$00,$00,$1F,$F1,$00
  DEFB $00,$1F,$F8,$80,$00,$1F,$FC,$80
  DEFB $00,$1F,$EC,$80,$00,$0F,$EB,$00
  DEFB $00,$0F,$EC,$00,$00,$0F,$EE,$00
  DEFB $00,$0F,$EF,$00,$00,$0F,$EF,$80
  DEFB $00,$0F,$CF,$80,$00,$1F,$DF,$C0
  DEFB $00,$1F,$7F,$E0,$00,$1F,$F7,$E0
  DEFB $00,$7F,$C7,$E0,$03,$FF,$8F,$E0
  DEFB $04,$3E,$09,$C0,$06,$1E,$10,$40
  DEFB $19,$1C,$1C,$20,$21,$10,$13,$40
  DEFB $21,$E0,$21,$80,$22,$00,$42,$00
  DEFB $44,$00,$4C,$00,$44,$00,$87,$00
  DEFB $44,$00,$80,$80,$24,$00,$80,$80
  DEFB $18,$00,$7F,$00,$00,$00,$00,$00
Bmp_Man9:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$07,$C0
  DEFB $00,$00,$0F,$E0,$00,$00,$3F,$90
  DEFB $00,$00,$3F,$08,$00,$00,$7D,$30
  DEFB $00,$00,$7F,$08,$00,$00,$79,$10
  DEFB $00,$00,$E0,$90,$00,$01,$F1,$E0
  DEFB $00,$03,$3A,$00,$00,$03,$19,$00
  DEFB $00,$06,$19,$00,$00,$06,$39,$00
  DEFB $00,$0C,$3D,$00,$00,$0C,$39,$00
  DEFB $00,$0C,$31,$00,$00,$0C,$32,$00
  DEFB $00,$0C,$62,$00,$00,$06,$22,$00
  DEFB $00,$0E,$14,$00,$00,$0F,$0C,$00
  DEFB $00,$1F,$C4,$00,$00,$1F,$E2,$00
  DEFB $00,$1F,$F1,$00,$00,$1F,$F1,$00
  DEFB $00,$0F,$FE,$00,$00,$0F,$F8,$00
  DEFB $00,$07,$FC,$00,$00,$07,$F4,$00
  DEFB $00,$07,$F6,$00,$00,$03,$F6,$00
  DEFB $00,$03,$F6,$00,$00,$03,$EE,$00
  DEFB $00,$03,$EE,$00,$00,$03,$EE,$00
  DEFB $00,$07,$EE,$00,$00,$1F,$EE,$00
  DEFB $00,$FF,$DC,$00,$01,$0F,$BC,$00
  DEFB $01,$87,$FC,$00,$06,$46,$9C,$00
  DEFB $08,$45,$04,$00,$08,$78,$88,$00
  DEFB $08,$81,$70,$00,$11,$01,$10,$00
  DEFB $11,$02,$20,$00,$11,$01,$3C,$00
  DEFB $09,$01,$02,$00,$06,$01,$02,$00
  DEFB $00,$00,$FC,$00,$00,$00,$00,$00
Bmp_Man10:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$07,$C0
  DEFB $00,$00,$0F,$E0,$00,$00,$3F,$90
  DEFB $00,$00,$3F,$08,$00,$00,$7D,$30
  DEFB $00,$00,$7F,$08,$00,$00,$79,$10
  DEFB $00,$00,$E0,$90,$00,$01,$F1,$E0
  DEFB $00,$03,$3A,$00,$00,$03,$19,$00
  DEFB $00,$04,$19,$00,$00,$04,$39,$00
  DEFB $00,$08,$7D,$00,$00,$08,$79,$00
  DEFB $00,$08,$71,$00,$00,$08,$F2,$00
  DEFB $00,$08,$E2,$00,$00,$08,$E2,$00
  DEFB $00,$08,$84,$00,$00,$0C,$84,$00
  DEFB $00,$1C,$EC,$00,$00,$1C,$FB,$00
  DEFB $00,$3C,$78,$80,$00,$3C,$3C,$80
  DEFB $00,$1E,$3B,$00,$00,$1B,$F8,$00
  DEFB $00,$0B,$F8,$00,$00,$0D,$F8,$00
  DEFB $00,$0D,$FC,$00,$00,$0D,$FC,$00
  DEFB $00,$0E,$FE,$00,$00,$07,$7E,$00
  DEFB $00,$07,$7F,$00,$00,$07,$7F,$00
  DEFB $00,$0F,$7F,$00,$00,$0C,$FE,$00
  DEFB $00,$3F,$FE,$00,$00,$43,$F8,$00
  DEFB $00,$61,$E0,$00,$01,$91,$C0,$00
  DEFB $02,$13,$80,$00,$02,$1E,$00,$00
  DEFB $02,$21,$00,$00,$04,$61,$00,$00
  DEFB $04,$5F,$00,$00,$04,$52,$00,$00
  DEFB $02,$52,$00,$00,$01,$A1,$C0,$00
  DEFB $00,$10,$30,$00,$00,$10,$10,$00
  DEFB $00,$0F,$E0,$00,$00,$00,$00,$00
Bmp_Man11:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$07,$C0,$00,$00,$0F,$E0
  DEFB $00,$00,$3F,$90,$00,$00,$3F,$08
  DEFB $00,$00,$7D,$30,$00,$00,$7F,$08
  DEFB $00,$00,$79,$10,$00,$00,$E0,$90
  DEFB $00,$01,$F1,$E0,$00,$03,$3A,$00
  DEFB $00,$02,$19,$00,$00,$04,$19,$00
  DEFB $00,$08,$39,$00,$00,$08,$7D,$00
  DEFB $00,$10,$F9,$00,$00,$21,$F1,$00
  DEFB $00,$23,$E2,$00,$00,$47,$E2,$00
  DEFB $00,$45,$C6,$00,$00,$46,$8D,$00
  DEFB $00,$4F,$C8,$80,$00,$4F,$FC,$40
  DEFB $00,$9F,$FA,$20,$01,$1F,$F9,$10
  DEFB $01,$1B,$F9,$10,$01,$3B,$F0,$B0
  DEFB $00,$FB,$F8,$40,$00,$3B,$FC,$00
  DEFB $00,$3B,$FE,$00,$00,$1C,$FF,$00
  DEFB $00,$1F,$7F,$80,$00,$1F,$FF,$80
  DEFB $00,$3F,$9F,$80,$00,$3F,$1F,$00
  DEFB $00,$3F,$3F,$00,$00,$7F,$3F,$00
  DEFB $00,$7E,$42,$00,$00,$7E,$41,$00
  DEFB $00,$FE,$72,$00,$01,$FC,$9C,$00
  DEFB $03,$38,$90,$00,$02,$09,$10,$00
  DEFB $02,$09,$10,$00,$03,$D9,$0C,$00
  DEFB $01,$30,$82,$00,$01,$20,$22,$00
  DEFB $01,$20,$1C,$00,$02,$1C,$00,$00
  DEFB $02,$02,$00,$00,$02,$02,$00,$00
  DEFB $01,$FC,$00,$00,$00,$00,$00,$00
Bmp_Man12:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$07,$C0
  DEFB $00,$00,$0F,$E0,$00,$00,$3F,$90
  DEFB $00,$00,$3F,$08,$00,$00,$7D,$30
  DEFB $00,$00,$7F,$08,$00,$00,$79,$10
  DEFB $00,$00,$E0,$90,$00,$01,$F1,$E0
  DEFB $00,$03,$3A,$00,$00,$02,$19,$00
  DEFB $00,$04,$19,$00,$00,$08,$39,$00
  DEFB $00,$08,$3D,$00,$00,$10,$71,$00
  DEFB $00,$20,$E1,$00,$00,$23,$E2,$00
  DEFB $00,$47,$E2,$00,$00,$4B,$C6,$00
  DEFB $00,$97,$45,$00,$00,$A7,$CC,$C0
  DEFB $00,$AD,$FA,$20,$01,$1B,$F9,$20
  DEFB $01,$1B,$F8,$A0,$00,$FB,$F8,$C0
  DEFB $00,$1B,$F0,$00,$00,$1B,$F0,$00
  DEFB $00,$1D,$FC,$00,$00,$1E,$FE,$00
  DEFB $00,$1E,$FE,$00,$00,$1F,$7F,$00
  DEFB $00,$3F,$FF,$00,$00,$3F,$7F,$80
  DEFB $00,$3F,$3F,$80,$00,$7F,$1F,$80
  DEFB $00,$FE,$1F,$C0,$01,$FC,$1F,$C0
  DEFB $03,$F8,$1F,$80,$06,$70,$0F,$C0
  DEFB $04,$10,$1C,$40,$06,$10,$10,$40
  DEFB $07,$90,$09,$C0,$04,$60,$0F,$40
  DEFB $08,$40,$04,$5C,$10,$80,$02,$22
  DEFB $10,$80,$02,$02,$10,$60,$02,$0C
  DEFB $0C,$10,$02,$30,$02,$10,$01,$C0
  DEFB $01,$E0,$00,$00,$00,$00,$00,$00
Bmp_ManStanding:
  DEFB $00,$00,$00,$00,$00,$F8,$01,$FC
  DEFB $03,$F2,$07,$E1,$07,$A6,$0F,$E1
  DEFB $07,$A2,$0D,$12,$07,$0C,$0F,$D0
  DEFB $0C,$E8,$18,$64,$18,$E4,$18,$F4
  DEFB $11,$E4,$11,$E4,$11,$E4,$11,$C8
  DEFB $11,$C8,$11,$88,$19,$98,$09,$98
  DEFB $18,$D4,$3C,$F2,$3C,$72,$3C,$3C
  DEFB $1E,$38,$1B,$F8,$0B,$F8,$0D,$F8
  DEFB $0F,$F8,$05,$F8,$05,$FC,$06,$FC
  DEFB $06,$7C,$07,$7C,$07,$7C,$07,$7C
  DEFB $03,$7C,$07,$7C,$0F,$7C,$0B,$78
  DEFB $09,$F8,$09,$08,$06,$04,$06,$04
  DEFB $07,$E4,$05,$18,$0D,$10,$09,$20
  DEFB $0A,$1C,$06,$02,$02,$02,$01,$FC

; Object bitmaps
Bmp_Bottle:
  DEFB $18,$18,$18,$3C,$3C,$3C,$3C,$2C
  DEFB $2C,$2C,$2C,$2C,$3C,$3C,$3C,$18
Bmp_Brooch:
  DEFB $07,$E0,$1F,$F8,$3C,$3C,$70,$0E
  DEFB $67,$F6,$7B,$DE,$34,$2C,$28,$14
  DEFB $31,$0C,$32,$0C,$32,$0C,$31,$8C
  DEFB $28,$14,$14,$28,$0B,$D0,$07,$E0
Bmp_Tokens:
  DEFB $00,$00,$18,$24,$66,$99,$99,$66
Bmp_Barrel:
  DEFB $00,$00,$00,$07,$FF,$C0,$07,$6D
  DEFB $C0,$07,$7D,$C0,$07,$7D,$C0,$0F
  DEFB $7D,$E0,$0E,$FE,$E0,$0E,$EE,$E0
  DEFB $0E,$EE,$E0,$0E,$FE,$F0,$1E,$FE
  DEFB $F0,$1D,$EF,$70,$1D,$EF,$70,$1D
  DEFB $EF,$70,$1E,$FE,$F0,$1E,$FE,$E0
  DEFB $0E,$EE,$E0,$0E,$EE,$E0,$0E,$FE
  DEFB $E0,$0F,$7D,$C0,$07,$7D,$C0,$07
  DEFB $7D,$C0,$07,$6D,$C0,$07,$FF,$C0
Bmp_Axe:
  DEFB $01,$80,$01,$80,$E0,$87,$B1,$8D
  DEFB $A8,$95,$A7,$E5,$A1,$85,$A7,$E5
  DEFB $A9,$95,$B0,$8D,$E1,$87,$01,$80
  DEFB $01,$80,$00,$80,$00,$80,$01,$80
  DEFB $01,$80,$01,$80,$01,$80,$00,$80
  DEFB $01,$80,$01,$80,$01,$80,$01,$80
Bmp_Moleskin:
  DEFB $00,$18,$00,$00,$18,$00,$00,$3C
  DEFB $00,$00,$7E,$00,$10,$7E,$08,$53
  DEFB $FF,$CA,$3F,$FF,$FC,$1F,$FF,$F8
  DEFB $07,$FF,$E0,$01,$FF,$80,$01,$FF
  DEFB $80,$01,$FF,$80,$01,$FF,$80,$01
  DEFB $FF,$80,$01,$FF,$80,$03,$FF,$C0
  DEFB $03,$FF,$C0,$03,$FF,$C0,$07,$FF
  DEFB $E0,$3F,$FF,$FC,$1F,$FF,$F8,$38
  DEFB $3C,$1C,$00,$18,$00,$00,$18,$00
Bmp_Swatch:
  DEFB $3F,$80,$40,$C0,$61,$C0,$83,$E0
  DEFB $83,$E0,$85,$A0,$85,$A0,$85,$20
  DEFB $85,$90,$84,$90,$84,$90,$84,$90
  DEFB $84,$50,$A4,$90,$A4,$90,$FC,$F0
Bmp_Token:
  DEFB $00,$00,$18,$24,$66,$99,$99,$66
Bmp_Key:
  DEFB $18,$1E,$1C,$1F,$18,$18,$18,$18
  DEFB $3C,$66,$C3,$C3,$C3,$C3,$66,$3C
Bmp_Script:
  DEFB $00,$00,$00,$00,$00,$00,$03,$FE
  DEFB $02,$03,$02,$01,$01,$21,$02,$49
  DEFB $02,$29,$02,$01,$02,$59,$02,$01
  DEFB $07,$FF,$04,$03,$04,$02,$07,$FF
Bmp_Thing:
  DEFB $10,$18,$14,$1C,$14,$12,$12,$12
  DEFB $22,$25,$3F,$37,$3F,$35,$3B,$1E
Bmp_Needle:
  DEFB $08,$14,$14,$14,$14,$08,$08,$08
  DEFB $08,$08,$08,$08,$08,$08,$08,$08
Bmp_Bullion:
  DEFB $00,$00,$3F,$FC,$56,$02,$AB,$01
  DEFB $D5,$FF,$AB,$01,$D5,$01,$FF,$FF
Bmp_Last:
  DEFB $03,$C0,$02,$E0,$03,$70,$03,$B8
  DEFB $03,$80,$03,$80,$03,$80,$03,$80
  DEFB $33,$86,$33,$86,$33,$C6,$37,$E6
  DEFB $37,$F6,$36,$76,$34,$36,$38,$1E
Bmp_Pepper:
  DEFB $03,$F0,$04,$A8,$08,$04,$0F,$FC
  DEFB $04,$08,$04,$E8,$04,$A8,$04,$E8
  DEFB $04,$88,$04,$88,$04,$88,$04,$08
  DEFB $07,$B8,$08,$04,$04,$08,$07,$F8
Bmp_Arrow:
  DEFB $54,$38,$54,$38,$10,$10,$10,$10
  DEFB $10,$10,$10,$10,$10,$10,$38,$10
Bmp_Book:
  DEFB $7E,$7E,$7E,$C3,$7E,$7E,$7E,$7E
  DEFB $7E,$7E,$7E,$C3,$7E,$C3,$7E,$7E
Bmp_Foil:
  DEFB $08,$08,$18,$08,$7F,$67,$3E,$1C
  DEFB $08,$08,$08,$08,$08,$08,$08,$08
  DEFB $08,$08,$08,$08,$08,$08,$08,$08
Bmp_Adze:
  DEFB $00,$08,$00,$1C,$00,$FE,$07,$01
  DEFB $18,$01,$20,$FE,$21,$1C,$41,$1C
  DEFB $42,$1C,$22,$1C,$14,$1C,$08,$14
  DEFB $00,$1C,$00,$14,$00,$1C,$00,$1C
Bmp_Salt:
  DEFB $03,$F0,$04,$A8,$08,$04,$0F,$FC
  DEFB $04,$08,$04,$E8,$04,$88,$04,$E8
  DEFB $04,$28,$04,$28,$04,$E8,$04,$08
  DEFB $07,$B8,$08,$04,$04,$08,$07,$F8
Bmp_Razor:
  DEFB $00,$00,$30,$00,$30,$00,$3F,$FC
  DEFB $40,$0C,$3F,$F8,$18,$00,$18,$00
  DEFB $1C,$00,$0C,$00,$0E,$00,$06,$00
  DEFB $07,$00,$03,$80,$03,$80,$01,$80
Bmp_BlankA:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
Bmp_Hammer:
  DEFB $73,$90,$4E,$E8,$40,$08,$4E,$E8
  DEFB $72,$90,$03,$80,$03,$80,$03,$80
  DEFB $03,$80,$03,$80,$03,$80,$03,$80
  DEFB $03,$80,$03,$80,$03,$80,$03,$80
Bmp_Q:
  DEFB $00,$00,$07,$E0,$0F,$F0,$1E,$F8
  DEFB $1A,$B8,$1A,$B8,$3A,$BC,$3A,$BC
  DEFB $3B,$BC,$3F,$FC,$1F,$F8,$3F,$FC
  DEFB $77,$EE,$38,$1C,$1F,$F8,$07,$E0
Bmp_Hoe:
  DEFB $7F,$7F,$63,$77,$3E,$1C,$14,$14
  DEFB $14,$14,$14,$14,$14,$14,$14,$14
  DEFB $14,$14,$14,$14,$14,$1C,$14,$1C
Bmp_Stone:
  DEFB $07,$E0,$1F,$F8,$3F,$FC,$7F,$FC
  DEFB $7D,$FE,$F9,$FE,$FB,$FF,$F3,$FF
  DEFB $F3,$FF,$F3,$FF,$7B,$FF,$7D,$FE
  DEFB $3F,$FE,$3F,$FC,$1F,$F0,$07,$C0
Bmp_Relic:
  DEFB $66,$99,$81,$95,$76,$14,$14,$14
  DEFB $14,$14,$14,$76,$95,$81,$99,$66
Bmp_Shield:
  DEFB $1F,$F8,$60,$06,$8F,$F1,$86,$61
  DEFB $93,$C9,$B9,$9D,$80,$01,$FF,$FF
  DEFB $FC,$3F,$FE,$7F,$C3,$C3,$6B,$D6
  DEFB $33,$CC,$1B,$D8,$0F,$F0,$03,$C0
Bmp_Rue:
  DEFB $03,$F0,$04,$A8,$08,$04,$0F,$FC
  DEFB $04,$08,$04,$E8,$04,$A8,$04,$C8
  DEFB $04,$A8,$04,$A8,$04,$A8,$04,$08
  DEFB $07,$B8,$08,$04,$04,$08,$07,$F8
Bmp_Lyre:
  DEFB $00,$00,$00,$00,$78,$1E,$DC,$3B
  DEFB $18,$18,$3F,$FC,$3A,$5C,$3A,$5C
  DEFB $3A,$5C,$3A,$5C,$3A,$5C,$3A,$5C
  DEFB $3E,$7C,$1D,$B8,$06,$60,$03,$C0
Bmp_L:
  DEFB $FF,$FF,$83,$C1,$93,$C9,$BB,$DD
  DEFB $93,$C9,$83,$C1,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$80,$01,$95,$A9,$86,$61
  DEFB $8F,$F1,$86,$61,$60,$06,$1F,$F8

; Bitmap of the shop window with sign.
Bmp_WindowWithSign:
  DEFB $7F,$FF,$FF,$FF,$FF,$FF,$FF,$E0
  DEFB $FC,$77,$77,$57,$77,$75,$03,$F0
  DEFB $F8,$55,$52,$54,$45,$55,$01,$F0
  DEFB $E0,$77,$52,$77,$47,$67,$00,$70
  DEFB $E0,$54,$52,$54,$45,$52,$20,$70
  DEFB $F8,$54,$52,$54,$45,$52,$01,$F0
  DEFB $FC,$54,$72,$57,$75,$52,$03,$F0
  DEFB $7F,$FF,$FF,$FF,$FF,$FF,$FF,$E0
  DEFB $1F,$FF,$FF,$FF,$FF,$FF,$FF,$00
  DEFB $10,$00,$00,$00,$00,$00,$01,$00
  DEFB $17,$FF,$FF,$FF,$FF,$FF,$FD,$00
  DEFB $17,$FF,$BF,$FB,$FF,$BF,$FD,$00
  DEFB $16,$52,$AB,$1A,$98,$AE,$8D,$00
  DEFB $16,$A1,$B5,$CB,$3D,$B7,$0D,$00
  DEFB $17,$5A,$AB,$AA,$BE,$AF,$8D,$00
  DEFB $16,$A8,$B6,$EB,$3D,$B7,$5D,$00
  DEFB $17,$4A,$AB,$EA,$BE,$AA,$ED,$00
  DEFB $16,$9C,$B7,$DB,$7F,$BD,$ED,$00
  DEFB $17,$D6,$AB,$EA,$DF,$B6,$FD,$00
  DEFB $17,$FF,$BF,$FB,$FF,$BF,$FD,$00
  DEFB $14,$00,$00,$00,$00,$00,$05,$00
  DEFB $17,$FF,$BF,$FB,$FF,$BF,$FD,$00
  DEFB $16,$DD,$AA,$AA,$AA,$AD,$ED,$00
  DEFB $17,$55,$B5,$5B,$51,$BF,$FD,$00
  DEFB $17,$FF,$B9,$FB,$BF,$AD,$FD,$00
  DEFB $17,$FF,$BF,$FB,$FF,$B8,$BD,$00
  DEFB $16,$50,$B0,$AB,$4A,$BC,$BD,$00
  DEFB $16,$76,$AF,$4A,$EE,$BE,$FD,$00
  DEFB $17,$06,$AA,$AB,$14,$BF,$FD,$00
  DEFB $17,$FC,$AF,$5A,$EB,$BF,$FD,$00
  DEFB $16,$F6,$AE,$AA,$E7,$B6,$CD,$00
  DEFB $16,$FA,$AF,$CA,$AA,$B6,$DD,$00
  DEFB $16,$F6,$AD,$AA,$E6,$AB,$AD,$00
  DEFB $16,$7C,$AF,$8A,$EB,$B5,$5D,$00
  DEFB $17,$FF,$BF,$FB,$FF,$BF,$FD,$00
  DEFB $17,$FF,$FF,$FF,$FF,$FF,$FD,$00
  DEFB $14,$00,$00,$00,$00,$00,$05,$00
  DEFB $17,$FF,$FF,$FF,$FF,$FF,$FD,$00
  DEFB $10,$00,$00,$00,$00,$00,$01,$00
  DEFB $1F,$FF,$FF,$FF,$FF,$FF,$FF,$00

; Bitmap of the shop triple window with sign.
BmpTripleWindowWithSign:
  DEFB $7F,$FF,$FF,$FF,$FF,$FF,$FF,$E0
  DEFB $FC,$00,$00,$00,$00,$00,$03,$F0
  DEFB $F8,$00,$00,$00,$00,$00,$01,$F0
  DEFB $E0,$00,$00,$00,$00,$00,$00,$70
  DEFB $E0,$00,$00,$00,$00,$00,$00,$70
  DEFB $F8,$00,$00,$00,$00,$00,$01,$F0
  DEFB $FC,$00,$00,$00,$00,$00,$03,$F0
  DEFB $7F,$FF,$FF,$FF,$FF,$FF,$FF,$E0
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $0F,$FE,$00,$7F,$F0,$03,$FF,$80
  DEFB $30,$01,$81,$80,$0C,$0C,$00,$60
  DEFB $2F,$BE,$81,$7D,$F4,$0B,$EF,$A0
  DEFB $28,$A2,$81,$45,$14,$0A,$28,$A0
  DEFB $28,$A2,$81,$45,$14,$0A,$28,$A0
  DEFB $2D,$B6,$81,$6D,$B4,$0B,$6D,$A0
  DEFB $2F,$BE,$81,$7D,$F4,$0B,$EF,$A0
  DEFB $20,$00,$81,$00,$04,$08,$00,$20
  DEFB $2F,$BE,$81,$7D,$F4,$0B,$EF,$A0
  DEFB $2D,$B6,$81,$6D,$B4,$0B,$6D,$A0
  DEFB $28,$A2,$81,$45,$14,$0A,$28,$A0
  DEFB $28,$A2,$81,$45,$14,$0A,$28,$A0
  DEFB $28,$A2,$81,$45,$14,$0A,$28,$A0
  DEFB $28,$A2,$81,$45,$14,$0A,$28,$A0
  DEFB $28,$A2,$81,$45,$14,$0A,$28,$A0
  DEFB $28,$A2,$81,$45,$14,$0A,$28,$A0
  DEFB $28,$A2,$81,$45,$14,$0A,$28,$A0
  DEFB $28,$A2,$81,$45,$14,$0A,$28,$A0
  DEFB $2D,$B6,$81,$6D,$B4,$0B,$6D,$A0
  DEFB $2F,$BE,$81,$7D,$F4,$0B,$EF,$A0
  DEFB $30,$01,$81,$80,$0C,$0C,$00,$60
  DEFB $0F,$FE,$00,$7F,$F0,$03,$FF,$80
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Bitmap of the picture frames found in galleries.
Bmp_PictureFrame:
  DEFB $00,$00,$00,$00,$00,$00,$00,$18
  DEFB $00,$00,$00,$00,$66,$00,$00,$0E
  DEFB $00,$81,$00,$70,$11,$18,$81,$18
  DEFB $88,$10,$E7,$00,$E7,$08,$10,$00
  DEFB $00,$00,$08,$09,$FF,$FF,$FF,$90
  DEFB $05,$5D,$BA,$55,$A0,$05,$BE,$5D
  DEFB $FE,$A0,$05,$75,$3A,$7F,$A0,$09
  DEFB $EE,$5C,$BA,$90,$09,$7C,$B8,$5D
  DEFB $90,$05,$E8,$5C,$3E,$A0,$05,$71
  DEFB $B8,$77,$A0,$05,$BB,$F5,$BA,$A0
  DEFB $19,$BA,$5D,$AA,$98,$21,$59,$8E
  DEFB $55,$84,$21,$B8,$0C,$BE,$84,$41
  DEFB $5D,$BA,$5D,$82,$41,$BA,$5D,$FF
  DEFB $82,$21,$75,$FA,$55,$84,$21,$BA
  DEFB $F5,$AA,$84,$19,$FF,$EA,$1D,$98
  DEFB $05,$75,$A8,$1D,$A0,$05,$BA,$5D
  DEFB $AA,$A0,$05,$7F,$BA,$1D,$A0,$09
  DEFB $A2,$5D,$BE,$90,$09,$63,$FE,$77
  DEFB $90,$05,$A2,$7F,$AA,$A0,$05,$7F
  DEFB $BA,$7F,$A0,$05,$AA,$5D,$BA,$A0
  DEFB $09,$FF,$FF,$FF,$90,$10,$00,$00
  DEFB $00,$08,$10,$E7,$00,$E7,$08,$11
  DEFB $18,$81,$18,$88,$0E,$00,$81,$00
  DEFB $70,$00,$00,$66,$00,$00,$00,$00
  DEFB $18,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Skinny window
Bmp_WindowSkinny:
  DEFB $0F,$E0,$10,$10,$26,$C8,$4E,$E4
  DEFB $92,$92,$F2,$9E,$A2,$8A,$A2,$8A
  DEFB $A2,$8A,$A2,$8A,$A2,$8A,$A2,$8A
  DEFB $B6,$DA,$BE,$FA,$80,$02,$BE,$FA
  DEFB $B6,$DA,$A2,$8A,$A2,$8A,$A2,$8A
  DEFB $A2,$8A,$A2,$8A,$A2,$8A,$A2,$8A
  DEFB $A2,$8A,$A2,$8A,$A2,$8A,$A2,$8A
  DEFB $B6,$DA,$BE,$FA,$C0,$06,$FF,$FE

; Brick
Bmp_Brick1:
  DEFB $00,$00,$7F,$38,$80,$C4,$80,$C4
  DEFB $80,$C4,$80,$44,$80,$44,$7F,$F8
  DEFB $1F,$F0,$20,$08,$20,$08,$30,$08
  DEFB $18,$08,$10,$08,$1F,$F0,$00,$00

; Edging
Bmp_Edging:
  DEFB $FF,$00,$00,$FF,$00,$00,$00,$00

; Secure Grid Window
Bmp_WindowGrid:
  DEFB $7C,$3E,$87,$E1,$84,$21,$82,$41
  DEFB $7E,$7E,$FF,$FF,$80,$01,$BF,$FD
  DEFB $BD,$BD,$B2,$4D,$B2,$4D,$AF,$F5
  DEFB $B2,$4D,$B2,$4D,$AF,$F5,$B2,$4D
  DEFB $B2,$4D,$AF,$F5,$B2,$4D,$B2,$4D
  DEFB $AF,$F5,$B2,$4D,$B2,$4D,$AF,$F5
  DEFB $B2,$4D,$B2,$4D,$BD,$BD,$BF,$FD
  DEFB $A0,$05,$BF,$FD,$80,$01,$FF,$FF

; Left hand of large window
Bmp_WindowLeftLarge:
  DEFB $3F,$FF,$FF,$20,$00,$00,$2F,$FF
  DEFB $FF,$2F,$F7,$F7,$2C,$08,$08,$2C
  DEFB $08,$08,$2C,$88,$08,$2D,$48,$08
  DEFB $2C,$88,$08,$2C,$08,$08,$2B,$F7
  DEFB $F7,$2C,$08,$08,$2C,$08,$08,$2C
  DEFB $08,$08,$2C,$08,$08,$2C,$08,$08
  DEFB $2C,$08,$08,$2C,$08,$08,$2B,$F7
  DEFB $F7,$2C,$08,$08,$2C,$08,$08,$2C
  DEFB $08,$88,$2C,$09,$48,$2C,$08,$88
  DEFB $2C,$08,$08,$2C,$08,$08,$2F,$F7
  DEFB $F7,$2F,$FF,$FF,$28,$00,$00,$2F
  DEFB $FF,$FF,$20,$00,$00,$3F,$FF,$FF

; Left hand of medium window
Bmp_WindowLeftMid:
  DEFB $FF,$FF,$F8,$80,$00,$08,$BF,$FF
  DEFB $E8,$BF,$DF,$E8,$B0,$20,$68,$B0
  DEFB $20,$68,$B0,$20,$68,$B0,$20,$68
  DEFB $B0,$20,$68,$B0,$20,$68,$AF,$DF
  DEFB $A8,$B0,$20,$68,$B0,$20,$68,$B2
  DEFB $20,$68,$B5,$20,$68,$B2,$20,$68
  DEFB $B0,$20,$68,$B0,$20,$68,$AF,$DF
  DEFB $A8,$B0,$20,$68,$B0,$20,$68,$B0
  DEFB $24,$68,$B0,$2A,$68,$B0,$24,$68
  DEFB $B0,$20,$68,$B0,$20,$68,$BF,$DF
  DEFB $E8,$BF,$FF,$E8,$A0,$00,$28,$BF
  DEFB $FF,$E8,$80,$00,$08,$FF,$FF,$F8

; Half of roundel
Bmp_Roundel:
  DEFB $00,$00,$00,$0E,$00,$31,$00,$C1
  DEFB $01,$01,$01,$01,$06,$01,$09,$06
  DEFB $08,$99,$10,$75,$10,$69,$20,$55
  DEFB $20,$69,$20,$D5,$20,$A9,$1F,$55
  DEFB $20,$FE,$20,$D5,$20,$A9,$20,$55
  DEFB $10,$69,$10,$75,$08,$8E,$09,$03
  DEFB $06,$01,$02,$01,$01,$01,$00,$C1
  DEFB $00,$31,$00,$0E,$00,$00,$00,$00

; Patterned glass window
Bmp_WindowGlass:
  DEFB $7F,$FE,$92,$49,$92,$49,$92,$49
  DEFB $7F,$FE,$FF,$FF,$80,$01,$BF,$FD
  DEFB $BF,$FD,$B1,$8D,$B1,$8D,$B5,$8D
  DEFB $B1,$8D,$BF,$FD,$B1,$8D,$B5,$AD
  DEFB $B1,$8D,$BF,$FD,$B1,$8D,$B1,$AD
  DEFB $B1,$8D,$BF,$FD,$B1,$8D,$B1,$8D
  DEFB $B1,$AD,$B1,$8D,$BF,$FD,$BF,$FD
  DEFB $A0,$05,$BF,$FD,$80,$01,$FF,$FF

; Bitmap of sign.
Bmp_Sign:
  DEFB $7F,$FF,$FF,$FF,$FF,$FF,$FF,$E0
  DEFB $F0,$07,$77,$77,$01,$DC,$00,$F0
  DEFB $F0,$04,$54,$52,$01,$54,$00,$F0
  DEFB $E0,$05,$67,$72,$01,$94,$00,$70
  DEFB $E0,$05,$54,$52,$01,$54,$00,$70
  DEFB $F0,$05,$54,$52,$01,$54,$00,$F0
  DEFB $F0,$07,$57,$52,$01,$5C,$00,$F0
  DEFB $7F,$FF,$FF,$FF,$FF,$FF,$FF,$E0

; Left hand side of Arch.
Bmp_ArchLeft:
  DEFB $81,$B0,$60,$81,$90,$61,$00,$88
  DEFB $72,$00,$89,$93,$80,$86,$12,$C1
  DEFB $1A,$09,$7F,$22,$08,$87,$C2,$08
  DEFB $85,$E1,$1F,$81,$A1,$70,$81,$93
  DEFB $80,$80,$8C,$00,$01,$98,$00,$00
  DEFB $A0,$00,$C1,$C0,$00,$7F,$80,$00

; Numbered door
Bmp_DoorNumbered:
  DEFB $00,$01,$FF,$80,$00,$7C,$FF,$00
  DEFB $FF,$7E,$87,$03,$00,$C0,$81,$80
  DEFB $01,$FF,$80,$01,$80,$00,$C3,$00
  DEFB $01,$FF,$FF,$E7,$FF,$FF,$9F,$FF
  DEFB $FF,$FF,$F9,$8B,$00,$00,$00,$C1
  DEFB $86,$77,$7B,$EE,$61,$86,$88,$84
  DEFB $11,$61,$86,$88,$84,$11,$61,$FA
  DEFB $88,$84,$11,$5F,$86,$88,$84,$11
  DEFB $61,$86,$88,$84,$11,$61,$86,$88
  DEFB $84,$11,$61,$86,$8B,$FF,$D1,$61
  DEFB $FA,$8A,$00,$51,$61,$86,$8A,$E7
  DEFB $51,$5F,$86,$8A,$85,$51,$61,$86
  DEFB $8A,$85,$51,$61,$86,$8A,$E7,$51
  DEFB $61,$86,$8A,$A5,$51,$5F,$FA,$8A
  DEFB $A5,$51,$61,$86,$8A,$E7,$51,$61
  DEFB $86,$8A,$00,$51,$61,$86,$8B,$FF
  DEFB $D1,$61,$86,$88,$84,$11,$61,$FA
  DEFB $88,$84,$11,$61,$86,$88,$84,$11
  DEFB $5F,$86,$88,$84,$11,$61,$86,$88
  DEFB $84,$11,$61,$86,$88,$84,$11,$61
  DEFB $86,$88,$84,$11,$61,$86,$88,$BE
  DEFB $11,$61,$86,$88,$B6,$11,$5F,$FA
  DEFB $88,$BE,$11,$61,$86,$88,$84,$11
  DEFB $61,$86,$88,$84,$11,$61,$86,$88
  DEFB $84,$11,$61,$86,$88,$84,$11,$61
  DEFB $86,$88,$84,$11,$5F,$FA,$88,$84
  DEFB $11,$61,$86,$88,$84,$11,$61,$86
  DEFB $88,$84,$11,$61,$86,$88,$84,$11
  DEFB $61,$86,$88,$84,$11,$61,$86,$88
  DEFB $84,$11,$61,$86,$88,$84,$11,$5F
Bmp_DoorNumberPanel:
  DEFB $86,$88,$84,$11,$61,$FA,$88,$84 ; Door panel that holds number.
  DEFB $11,$61,$86,$88,$84,$11,$61,$86
  DEFB $88,$84,$11,$61,$86,$88,$84,$11
  DEFB $61,$86,$88,$84,$11,$61,$86,$F7
  DEFB $7B,$EF,$61,$FB,$00,$00,$00,$DF

; Inner Door
Bmp_DoorInner:
  DEFB $7F,$F8,$FE,$3F,$FE,$80,$07,$83
  DEFB $C0,$01,$80,$00,$92,$00,$01,$80
  DEFB $00,$92,$00,$01,$80,$00,$BA,$00
  DEFB $01,$80,$00,$92,$00,$01,$83,$FF
  DEFB $83,$FF,$81,$7F,$FF,$FF,$FF,$FE
  DEFB $83,$77,$7B,$EE,$81,$83,$88,$84
  DEFB $11,$C1,$47,$88,$84,$11,$E3,$7F
  DEFB $88,$84,$11,$BE,$45,$88,$84,$11
  DEFB $E2,$83,$88,$84,$11,$C1,$83,$88
  DEFB $84,$11,$C1,$83,$8B,$FF,$D1,$C1
  DEFB $83,$8A,$00,$51,$C3,$43,$8A,$FF
  DEFB $51,$C2,$7F,$8A,$FF,$51,$FE,$45
  DEFB $8A,$FF,$51,$A2,$83,$8A,$00,$51
  DEFB $C1,$83,$8A,$FF,$51,$C1,$83,$8A
  DEFB $FF,$51,$C1,$83,$8A,$FF,$51,$C1
  DEFB $43,$8A,$00,$51,$C1,$43,$8B,$FF
  DEFB $D1,$C1,$C3,$88,$84,$11,$A1,$87
  DEFB $88,$84,$11,$BE,$FD,$88,$84,$11
  DEFB $A2,$87,$88,$84,$11,$C2,$83,$88
  DEFB $84,$11,$C3,$83,$88,$84,$11,$C1
  DEFB $43,$88,$84,$11,$C1,$45,$88,$84
  DEFB $11,$C1,$7D,$88,$84,$11,$C2,$C5
  DEFB $88,$84,$11,$E6,$83,$88,$84,$11
  DEFB $BA,$83,$88,$84,$11,$C1,$83,$88
  DEFB $84,$11,$C1,$83,$88,$84,$11,$C1
  DEFB $43,$88,$84,$11,$C1,$7D,$88,$84
  DEFB $11,$C1,$47,$88,$84,$11,$C1,$83
  DEFB $88,$84,$11,$E2,$83,$88,$84,$11
  DEFB $BE,$47,$88,$84,$11,$E2,$7D,$88
  DEFB $84,$11,$C1,$45,$88,$84,$11,$C1
  DEFB $C3,$88,$84,$11,$C1,$83,$88,$84
  DEFB $11,$C7,$8F,$88,$84,$11,$C1,$93
  DEFB $88,$84,$11,$B1,$83,$88,$84,$11
  DEFB $C1,$83,$88,$84,$11,$C1,$83,$F7
  DEFB $7B,$EF,$C7,$FE,$00,$00,$00,$7F

; Secret Door
Bmp_SecretDoor:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Portal
Bmp_DoorPortal:
  DEFB $00,$7C,$FE,$1E,$00,$7C,$83,$01
  DEFB $F1,$BE,$87,$02,$00,$30,$D1,$85
  DEFB $02,$00,$20,$51,$83,$02,$00,$20
  DEFB $81,$E1,$87,$00,$71,$81,$81,$FF
  DEFB $FF,$FF,$01,$81,$80,$00,$03,$87
  DEFB $81,$8F,$FF,$F1,$C1,$83,$3F,$FF
  DEFB $FC,$C1,$C7,$7F,$FF,$FE,$62,$7C
  DEFB $7F,$FF,$FE,$7E,$46,$FF,$FF,$FF
  DEFB $22,$82,$FF,$FF,$FF,$41,$82,$FF
  DEFB $FF,$FF,$41,$82,$FF,$FF,$FF,$41
  DEFB $C2,$FF,$81,$FF,$41,$42,$FF,$00
  DEFB $FF,$42,$7E,$FF,$00,$FF,$7E,$44
  DEFB $FE,$00,$7F,$22,$82,$FE,$00,$7F
  DEFB $41,$82,$FE,$00,$7F,$41,$82,$FE
  DEFB $00,$7F,$41,$82,$FE,$00,$7F,$41
  DEFB $82,$FE,$00,$7F,$42,$82,$FE,$00
  DEFB $7F,$42,$84,$FE,$00,$7F,$43,$7C
  DEFB $FE,$00,$7F,$61,$44,$FE,$00,$7F
  DEFB $3F,$42,$FE,$00,$7F,$61,$C2,$FE
  DEFB $00,$7F,$41,$82,$FE,$00,$7F,$41
  DEFB $82,$FE,$00,$7F,$42,$82,$FE,$00
  DEFB $7F,$22,$42,$FE,$00,$7F,$3E,$66
  DEFB $FE,$00,$7F,$23,$5C,$FE,$00,$7F
  DEFB $41,$82,$FF,$FF,$FF,$41,$82,$FF
  DEFB $FF,$FF,$41,$82,$FF,$FF,$FF,$41
  DEFB $82,$FF,$FF,$FF,$42,$82,$FF,$FF
  DEFB $FF,$3E,$82,$FF,$FF,$FF,$62,$46
  DEFB $FF,$FF,$FF,$41,$7C,$FF,$FF,$FF
  DEFB $41,$46,$FF,$FF,$FF,$62,$82,$FF
  DEFB $FF,$FF,$3E,$82,$FF,$FF,$FF,$22
  DEFB $82,$FA,$30,$1F,$43,$E2,$FF,$FF
  DEFB $FF,$41,$82,$E0,$06,$0F,$71,$8C
  DEFB $FF,$FF,$FF,$49,$82,$C0,$00,$07
  DEFB $41,$82,$F8,$00,$3F,$41,$E3,$80
  DEFB $00,$01,$C1,$FE,$00,$00,$00,$7F

; Data block at F5CE
  DEFB $00,$00,$00,$00,$00,$07,$BF,$80
  DEFB $00,$08,$40,$40,$00,$08,$40,$40
  DEFB $00,$08,$40,$60,$00,$08,$40,$20
  DEFB $00,$08,$40,$20,$00,$07,$BF,$C0
  DEFB $00,$3F,$87,$FC,$00,$40,$68,$02
  DEFB $00,$40,$18,$02,$00,$40,$18,$02
  DEFB $00,$40,$18,$02,$00,$40,$18,$02
  DEFB $00,$3F,$F7,$FC,$00,$00,$00,$00
  DEFB $00,$03,$F8,$00,$0F,$FA,$06,$7F
  DEFB $10,$06,$02,$81,$10,$06,$02,$81
  DEFB $10,$06,$05,$81,$10,$06,$05,$01
  DEFB $10,$05,$05,$01,$0F,$F9,$F8,$FF
  DEFB $0F,$FF,$0F,$F8,$11,$00,$90,$04
  DEFB $11,$00,$90,$04,$11,$80,$90,$04
  DEFB $11,$80,$90,$04,$11,$80,$90,$04
  DEFB $0E,$7F,$0F,$F8,$00,$00,$00,$00

; Left hand edge of wall.
Bmp_WallEdgeLeft:
  DEFB $FE,$80,$81,$80,$81,$80,$81,$C0
  DEFB $81,$80,$83,$80,$7E,$E0,$83,$F0
  DEFB $80,$08,$80,$0C,$80,$0C,$80,$08
  DEFB $80,$08,$80,$0C,$80,$0C,$80,$08
  DEFB $9B,$F0,$6F,$C0,$90,$20,$80,$30
  DEFB $80,$30,$80,$30,$80,$20,$80,$20
  DEFB $7F,$C0,$83,$00,$83,$80,$83,$00
  DEFB $83,$00,$82,$00,$7C,$00,$8E,$00
  DEFB $86,$00,$86,$00,$8F,$00,$7F,$80
  DEFB $83,$00,$81,$80,$81,$80,$81,$80
  DEFB $81,$80,$81,$80,$83,$80,$7F,$00
  DEFB $8F,$00,$87,$00,$86,$00,$87,$80
  DEFB $8F,$E0,$7F,$F0,$80,$30,$80,$30
  DEFB $80,$30,$80,$30,$80,$20,$80,$20

; Data block at F6BE
  DEFB $80,$30,$7F,$F0,$83,$E0,$81,$C0
  DEFB $81,$C0,$81,$C0,$83,$C0,$7F,$80

; Left hand edge of wall when looking in.
Bmp_WallAngledLeft:
  DEFB $FF,$81,$FF,$01,$FE,$01,$FE,$01
  DEFB $FF,$01,$CB,$0F,$C1,$9E,$81,$F9
  DEFB $81,$81,$83,$01,$C7,$01,$FF,$03
  DEFB $FE,$0E,$FF,$BE,$FF,$C3,$FF,$81
  DEFB $FF,$81,$FF,$81,$FF,$81,$FF,$C1
  DEFB $FF,$C3,$FF,$E2,$FF,$FD,$FF,$E1
  DEFB $FF,$01,$F9,$81,$C1,$81,$C1,$81
  DEFB $C0,$81,$E3,$C1,$C0,$81,$C0,$87
  DEFB $E0,$8E,$C1,$F9,$C7,$C1,$FF,$81
  DEFB $FF,$81,$FF,$01,$FF,$01,$FF,$03
  DEFB $FF,$06,$FF,$1D,$FF,$B1,$FF,$C1
  DEFB $FF,$01,$FF,$01,$FF,$01,$FF,$01
  DEFB $FF,$03,$FF,$06,$FF,$0F,$FF,$B9
  DEFB $FF,$F1,$FF,$81,$FF,$01,$FF,$01
  DEFB $FF,$03,$F1,$17,$C5,$1D,$C1,$19
  DEFB $C1,$31,$C3,$C1,$E3,$03,$C7,$83
  DEFB $FD,$06,$F9,$04,$E1,$88,$A1,$90
  DEFB $83,$A0,$C1,$C0,$C1,$00,$C3,$00
  DEFB $8E,$00,$CC,$00,$98,$00,$B0,$00
  DEFB $E0,$00,$C0,$00,$80,$00,$00,$00

; [9E] Left Half of shopkeeper.
Bmp_ShopKeeperHalf:
  DEFB $00,$00,$00,$07,$00,$0F,$00,$0C
  DEFB $00,$18,$00,$1E,$00,$18,$00,$1D
  DEFB $00,$3E,$00,$E4,$01,$23,$01,$30
  DEFB $02,$30,$02,$30,$04,$78,$06,$6E
  DEFB $09,$4B,$08,$EA,$10,$EA,$13,$6A
  DEFB $16,$6A,$24,$6A,$E4,$EA,$88,$CA
  DEFB $FF,$FF,$00,$00,$00,$00,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$00,$00
  DEFB $FF,$FF,$00,$00,$C3,$C3,$E7,$E7
  DEFB $5E,$5E,$3C,$3C,$7A,$7A,$E7,$E7
  DEFB $C3,$C3,$00,$00,$FF,$FF,$00,$00
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$80,$80,$FF,$40,$7F,$2A,$2A
  DEFB $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
  DEFB $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
  DEFB $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
  DEFB $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
  DEFB $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
  DEFB $2A,$7F,$40,$40,$FF,$80,$80,$FF

; Data block at F806
_Bmp_Fire1:
  DEFB $0C,$2C,$3D,$7D,$77,$FF,$DD,$F7
_Bmp_Fire2:
  DEFB $30,$34,$AC,$AE,$FE,$BB,$EF,$FF

; [A4] Left handside of counter.
Bmp_CounterLeft:
  DEFB $FF,$FF,$80,$00,$80,$00,$FF,$FF
  DEFB $1F,$FF,$0F,$FF,$0F,$7F,$03,$E0
  DEFB $03,$CF,$03,$D8,$03,$D3,$03,$D7
  DEFB $03,$D6,$03,$D6,$03,$D6,$03,$D7
  DEFB $03,$D3,$03,$D8,$03,$CF,$03,$E0
  DEFB $07,$7F,$07,$FF,$0F,$FF,$0F,$FF

; [A5] Centre of counter.
Bmp_CounterCentre:
  DEFB $FF,$00,$00,$FF,$FF,$FF,$FF,$00
  DEFB $FF,$00,$C3,$E7,$5E,$3C,$7A,$E7
  DEFB $C3,$00,$FF,$00,$FF,$FF,$FF,$FF

; [A6] Left hand of Shelf.
Bmp_ShelfLeft:
  DEFB $FF,$FF,$80,$00,$80,$00,$FF,$FF
  DEFB $1F,$FF,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $FF,$00,$00,$FF,$FF,$FB,$7E,$34
  DEFB $3C,$34,$34,$3C,$18,$18,$3C,$18
  DEFB $3C,$34,$34,$3C,$7E,$E7,$E7,$C3

; Bitmap of chair.
Bmp_Chair1:
  DEFB $00,$18,$00,$00,$2C,$00,$18,$18
  DEFB $18,$34,$7E,$2C,$3C,$81,$3C,$19
  DEFB $00,$98,$1A,$3C,$58,$1C,$6A,$38
  DEFB $18,$D5,$18,$19,$AA,$98,$19,$55
  DEFB $98,$19,$AA,$98,$19,$55,$98,$19
  DEFB $AA,$98,$19,$55,$98,$19,$AA,$98
  DEFB $19,$55,$98,$3C,$EB,$3C,$7E,$34
  DEFB $7E,$7E,$3C,$7E,$7E,$00,$7E,$7B
  DEFB $E7,$DE,$7E,$BA,$FE,$35,$55,$2C
  DEFB $3F,$FF,$FC,$34,$00,$2C,$37,$FF
  DEFB $EC,$3F,$FF,$FC,$18,$00,$18,$18
  DEFB $00,$18,$3C,$00,$3C,$18,$00,$18
  DEFB $3C,$00,$3C,$37,$FF,$EC,$36,$00
  DEFB $6C,$3F,$FF,$FC,$3C,$00,$3C,$3C
  DEFB $00,$3C,$18,$00,$18,$18,$00,$18

; Data block at F91E
Bmp_Blank:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Data block at F926
Bmp_BrickSingle:
  DEFB $00,$00,$00,$FE,$01,$01,$01,$01
  DEFB $03,$01,$02,$01,$02,$01,$01,$FE
  DEFB $1F,$F0,$20,$08,$20,$08,$20,$08
  DEFB $20,$08,$20,$08,$1F,$F0,$00,$00

; Data block at F946
Bmp_Shrub:
  DEFB $08,$00,$22,$00,$4A,$80,$B4,$00
  DEFB $28,$00,$68,$40,$09,$A8,$1B,$AC
  DEFB $0D,$50,$07,$B8,$06,$90,$2A,$44
  DEFB $51,$A2,$AC,$48,$2D,$70,$6B,$B4
  DEFB $0D,$50,$07,$B8,$06,$90,$2A,$44
  DEFB $51,$A2,$AC,$48,$2D,$70,$6B,$B4
  DEFB $35,$68,$08,$D4,$29,$D0,$14,$40
  DEFB $19,$28,$2B,$70,$0D,$20,$0E,$54
  DEFB $54,$A4,$81,$88,$15,$C0,$4B,$90
  DEFB $07,$C0,$05,$E0,$03,$80,$01,$00

; Data block at F996
Bmp_BlankAgain:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Data block at F99E
Bmp_FlagA:
  DEFB $FF,$81,$BD,$A5,$BD,$A5,$A5,$81
  DEFB $FF,$80,$80,$80,$80,$80,$80,$80
  DEFB $80,$80,$80,$80,$80,$80,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $FF,$81,$BD,$A5,$BD,$A5,$BD,$81
  DEFB $FF,$80,$80,$80,$80,$80,$80,$80
  DEFB $80,$80,$80,$80,$80,$80,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Data block at F9EE
Bmp_Brick:
  DEFB $00,$00,$00,$00,$7F,$00,$3F,$E0
  DEFB $80,$80,$40,$10,$80,$80,$40,$10
  DEFB $80,$C0,$40,$10,$80,$40,$40,$10
  DEFB $80,$40,$40,$10,$7F,$80,$3F,$E0
  DEFB $0F,$F8,$3F,$FC,$10,$04,$44,$02
  DEFB $10,$04,$44,$02,$10,$04,$46,$02
  DEFB $10,$04,$46,$02,$10,$04,$46,$02
  DEFB $0F,$F8,$39,$FC,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$01,$FD,$FC,$E0
  DEFB $02,$02,$03,$10,$02,$02,$03,$10
  DEFB $06,$02,$03,$10,$04,$02,$01,$10
  DEFB $04,$02,$01,$10,$03,$FD,$FF,$E0
  DEFB $3F,$E0,$7F,$C0,$40,$10,$80,$20
  DEFB $40,$10,$80,$20,$40,$10,$C0,$20
  DEFB $40,$10,$60,$20,$40,$10,$40,$20
  DEFB $3F,$E0,$7F,$C0,$00,$00,$00,$00
  DEFB $FF,$FF,$FF,$BF,$FF,$FD,$DF,$FF
  DEFB $FB,$EF,$FF,$F7,$F7,$FF,$EF,$FB
  DEFB $FF,$DF,$FF,$FF,$FF,$FE,$00,$7F
  DEFB $FE,$00,$7F,$FE,$00,$7F,$FE,$00
  DEFB $7F,$FE,$00,$7F,$FE,$00,$7F,$FE
  DEFB $00,$7F,$FE,$00,$7F,$FE,$00,$7F
  DEFB $FE,$00,$7F,$FF,$FF,$FF,$FD,$55
  DEFB $5F,$FA,$AA,$AF,$F5,$55,$57,$EA
  DEFB $AA,$AB,$D5,$55,$55,$FF,$FF,$FF
  DEFB $FF,$00,$00,$FF,$00,$00,$00,$00
  DEFB $FF,$80,$80,$FF,$11,$1F,$0A,$0E
  DEFB $00,$20,$23,$71,$53,$73,$7F,$7D
  DEFB $FF,$00,$00,$FF,$00,$00,$00,$00

; [C6] Torch.
Bmp_Torch:
  DEFB $FF,$FF,$FD,$FD,$FB,$7E,$3C,$3C
  DEFB $3C,$3C,$3C,$38,$3C,$1C,$1C,$18
  DEFB $38,$38,$6D,$6C,$C2,$86,$82,$82
  DEFB $82,$82,$82,$82,$45,$44,$39,$38
  DEFB $03,$80,$04,$40,$08,$20,$08,$20
  DEFB $08,$20,$08,$20,$04,$40,$03,$80
  DEFB $00,$00,$0F,$F8,$10,$04,$10,$04
  DEFB $10,$04,$10,$04,$10,$04,$0F,$F8
  DEFB $7F,$F8,$80,$44,$80,$44,$80,$C4
  DEFB $80,$C4,$80,$C4,$7F,$38,$00,$00

; (C9) Bitmap of compass
Bmp_Compass:
  DEFB $00,$00,$18,$00,$00,$00,$00,$3C
  DEFB $00,$00,$00,$00,$3C,$00,$00,$00
  DEFB $00,$18,$00,$00,$00,$00,$18,$00
  DEFB $00,$00,$00,$7E,$00,$00,$03,$80
  DEFB $FF,$01,$C0,$03,$80,$7F,$01,$C0
  DEFB $03,$80,$00,$01,$C0,$00,$40,$00
  DEFB $02,$00,$00,$20,$3C,$04,$00,$00
  DEFB $10,$22,$08,$00,$00,$08,$22,$10
  DEFB $00,$00,$04,$22,$20,$00,$00,$00
  DEFB $22,$00,$00,$00,$00,$00,$00,$00
  DEFB $03,$00,$00,$00,$C0,$07,$00,$08
  DEFB $00,$E0,$67,$22,$1C,$1C,$E6,$FF
  DEFB $2A,$3E,$22,$FF,$FF,$2A,$08,$3C
  DEFB $FF,$27,$2A,$08,$20,$E4,$07,$14
  DEFB $08,$1E,$E0,$03,$00,$08,$00,$C0
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$04,$1C,$20,$00,$00
  DEFB $08,$20,$10,$00,$00,$10,$1C,$08
  DEFB $00,$00,$20,$02,$04,$00,$00,$40
  DEFB $3C,$02,$00,$03,$80,$00,$01,$C0
  DEFB $03,$80,$FF,$01,$C0,$03,$80,$FF
  DEFB $01,$C0,$00,$00,$7E,$00,$00,$00
  DEFB $00,$18,$00,$00,$00,$00,$18,$00
  DEFB $00,$00,$00,$3C,$00,$00,$00,$00
  DEFB $3C,$00,$00,$00,$00,$18,$00,$00

; Bitmap of road leading into screen.
Bmp_JunctionIn:
  DEFB $00,$00,$00,$00,$00,$00,$08,$10
  DEFB $30,$0C,$50,$0A,$60,$06,$C0,$03

; Bitmap of road leading into screen.
Bmp_RoadIn:
  DEFB $00,$40
Charset_Start:
  DEFB $02,$00,$01,$80,$01,$80,$05,$00 ; No bitmaps here, but start address is
                                       ; here to allow for char($20) onwards.
  DEFB $00,$A0,$03,$00,$00,$C0,$12,$00
  DEFB $00,$48,$14,$00,$00,$28,$0C,$00
  DEFB $00,$30,$08,$00,$00,$10

; Bitmap of road leading out of screen.
BMP_JunctionOut:
  DEFB $00,$00,$00,$00,$08,$00,$00,$10
  DEFB $D0,$00,$00,$0B,$A0,$00,$00,$05
  DEFB $20,$00,$00,$04,$60,$00,$00,$06
  DEFB $80,$00,$00,$01,$80,$00,$00,$01

; Bitmap of road edge.
BMP_RoadEdgeTop:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$AA,$49,$47,$6E

; Bitmap of road edge.
BMP_RoadEdgeBottom:
  DEFB $00,$00,$00,$00,$00,$00,$AA,$49
  DEFB $47,$6E,$00,$00,$00,$00,$00,$00

; (D0) Vertical border ornament
Bmp_BorderOrnamentV:
  DEFB $1C,$22,$49,$5D,$49,$22,$1C,$00
  DEFB $00,$61,$B3,$A7,$8B,$73,$07,$07
  DEFB $0F,$1B,$33,$63,$63,$63,$63,$63
  DEFB $63,$77,$3A,$1C,$1C,$3A,$77,$63
  DEFB $63,$63,$63,$63,$63,$33,$1B,$0F
  DEFB $07,$07,$73,$8B,$A7,$B3,$61,$01

; (D1) Horizontal border ornament
BmpBorderOrnamentH:
  DEFB $FF,$FF,$F0,$FC,$3F,$F0,$FC,$3F
  DEFB $F0,$FC,$3F,$F0,$FC,$3F,$F0,$FC
  DEFB $1F,$FF,$FE,$7F,$FF,$F9,$FE,$7F
  DEFB $F9,$FE,$7F,$F9,$FE,$7F,$F9,$FE
  DEFB $7F,$F9,$FE,$7F,$FF,$FC,$21,$E0
  DEFB $17,$85,$E0,$17,$85,$E0,$17,$85
  DEFB $E0,$17,$85,$E0,$17,$85,$F0,$0F
  DEFB $08,$10,$70,$0F,$03,$C0,$0F,$03
  DEFB $C0,$0F,$03,$C0,$0F,$03,$C0,$0F
  DEFB $03,$E0,$1C,$10,$48,$38,$1E,$87
  DEFB $A0,$1E,$87,$A0,$1E,$87,$A0,$1E
  DEFB $87,$A0,$1E,$87,$D0,$38,$24,$C8
  DEFB $1F,$F9,$FE,$7F,$F9,$FE,$7F,$F9
  DEFB $FE,$7F,$F9,$FE,$7F,$F9,$FF,$3F
  DEFB $F0,$26,$F8,$0F,$F0,$FC,$3F,$F0
  DEFB $FC,$3F,$F0,$FC,$3F,$F0,$FC,$3F
  DEFB $F0,$FC,$1F,$E0,$3E,$70,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$1C

; Digit character set.
;
; Each digit takes up a nibble and requires copying and shifting when bein
; used.
Bmp_DigitSet:
  DEFB $00,$00,$00,$00,$00,$72,$77,$47
  DEFB $77,$77,$56,$51,$44,$45,$55,$52
  DEFB $11,$54,$41,$55,$52,$77,$57,$71
  DEFB $77,$52,$41,$71,$51,$51,$52,$41
  DEFB $15,$51,$51,$77,$77,$17,$71,$77

; Identifier used for people
Bmp_PersonLabel:
  DEFB $FF,$FF,$FF,$FF,$DE,$7B,$E0,$07
  DEFB $E0,$07,$E3,$C7,$E2,$07,$C2,$03
  DEFB $C3,$83,$E2,$07,$E2,$07,$E3,$C7
  DEFB $E0,$07,$DE,$7B,$FF,$FF,$FF,$FF

; Bitmaps  8x8 bitmaps and letters.
Bmp_LettersThin:
  DEFB $00,$77,$55,$77,$55,$55,$57,$00
  DEFB $00,$77,$45,$45,$45,$45,$77,$00
  DEFB $00,$77,$44,$77,$44,$44,$74,$00
  DEFB $00,$75,$45,$57,$55,$55,$75,$00
  DEFB $00,$77,$21,$21,$25,$25,$77,$00
  DEFB $00,$54,$74,$64,$74,$54,$57,$00
  DEFB $00,$75,$77,$57,$57,$55,$55,$00
  DEFB $00,$77,$55,$57,$54,$54,$74,$00
  DEFB $00,$77,$55,$56,$55,$75,$75,$00
  DEFB $00,$77,$42,$72,$12,$12,$72,$00
  DEFB $00,$55,$55,$55,$55,$57,$72,$00
  DEFB $00,$55,$55,$52,$55,$75,$75,$00
  DEFB $00,$57,$51,$77,$24,$24,$27,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $31,$D4
  DEFB $00,$00,$08,$08,$3E,$08,$08,$08
  DEFB $1C,$5D,$6B,$36,$1C,$1C,$36,$63
  DEFB $BA,$44,$7C,$82,$FE,$82,$7C,$38
  DEFB $00,$00,$1C,$22,$22,$36,$77,$00
  DEFB $00,$E0,$AC,$A4,$E7,$85,$85,$87
  DEFB $00,$00,$1C,$22,$C9,$22,$1C,$00
  DEFB $00,$00,$1C,$22,$22,$22,$1C,$00
  DEFB $00,$00,$4F,$E2,$44,$0F,$00,$00
  DEFB $00,$08,$1C,$2A,$08,$08,$08,$00
  DEFB $00,$00,$E7,$18,$18,$E7,$00,$00
  DEFB $E7,$84,$87,$E0,$20,$24,$24,$E7
  DEFB $00,$3F,$00,$00,$08,$08,$08,$0F
  DEFB $00,$A7,$E5,$E6,$A5,$A5,$A5,$00
  DEFB $FF,$BD,$A5,$BD,$A1,$A1,$42,$3C
  DEFB $FF,$B9,$A5,$A5,$A5,$B9,$42,$3C
  DEFB $FF,$BD,$A5,$BD,$A5,$BD,$42,$3C
  DEFB $FF,$A5,$BD,$BD,$A5,$A5,$42,$3C
  DEFB $00,$8E,$84,$84,$A4,$E4,$24,$00
  DEFB $24,$24,$FF,$24,$24,$FF,$24,$24
  DEFB $08,$18,$28,$48,$88,$48,$28,$18
  DEFB $E7,$82,$82,$E2,$22,$22,$22,$E2
  DEFB $00,$00,$00,$18,$18,$00,$00,$00
  DEFB $C0,$C0,$00,$00,$00,$00,$03,$03
  DEFB $C0,$C0,$00,$18,$18,$00,$03,$03
  DEFB $C3,$C3,$00,$00,$00,$00,$C3,$C3
  DEFB $C3,$C3,$00,$18,$18,$00,$C3,$C3
  DEFB $C3,$C3,$00,$C3,$C3,$00,$C3,$C3
  DEFB $00,$00,$00,$18,$18,$00,$00,$00
  DEFB $BA,$1D,$BB,$1F,$BA,$19,$B8,$F5
  DEFB $AA,$55,$BE,$5D,$FF,$54,$A0,$5D
  DEFB $FF,$B0,$75,$B8,$5C,$B8,$5C,$BA
  DEFB $59,$BA,$74,$EE,$71,$FA,$71,$BB
  DEFB $5D,$A8,$01,$BE,$77,$A2,$7F,$BA
  DEFB $75,$FA,$7F,$A2,$77,$A2,$7F,$AA
  DEFB $55,$FE,$7F,$B8,$5D,$BE,$77,$BA
  DEFB $A8,$59,$BA,$1D,$FF,$7F,$BA,$5D
  DEFB $4D,$9E,$5F,$B8,$5D,$F8,$F5,$EA
  DEFB $00,$00,$18,$24,$3C,$44,$3C,$00
  DEFB $00,$60,$20,$3C,$22,$22,$3C,$00
  DEFB $00,$00,$18,$24,$60,$24,$18,$00
  DEFB $00,$06,$04,$3C,$44,$44,$3C,$00
  DEFB $00,$00,$38,$44,$FC,$40,$38,$00
  DEFB $00,$0C,$10,$18,$10,$10,$10,$00
  DEFB $00,$00,$38,$46,$44,$3C,$44,$38
  DEFB $60,$40,$40,$78,$44,$44,$4C,$00
  DEFB $10,$20,$00,$30,$10,$10,$10,$10
  DEFB $00,$00,$0C,$04,$04,$0C,$24,$18
  DEFB $60,$20,$28,$30,$30,$28,$24,$00
  DEFB $00,$10,$10,$30,$10,$10,$1C,$00
  DEFB $00,$00,$E8,$54,$54,$54,$56,$00
  DEFB $00,$00,$F8,$44,$44,$4C,$48,$00
  DEFB $00,$00,$38,$44,$C6,$44,$38,$00
  DEFB $00,$00,$78,$44,$64,$78,$40,$60
  DEFB $00,$00,$3C,$46,$44,$3C,$04,$0E
  DEFB $00,$00,$1C,$64,$24,$38,$24,$00
  DEFB $00,$04,$3C,$40,$7C,$04,$78,$00
  DEFB $3C,$08,$10,$20,$20,$20,$18,$00
  DEFB $00,$00,$64,$24,$44,$44,$38,$00
  DEFB $00,$00,$4C,$44,$28,$38,$10,$00
  DEFB $00,$00,$C4,$54,$54,$54,$68,$00
  DEFB $00,$00,$44,$38,$10,$38,$44,$00
  DEFB $00,$00,$44,$46,$44,$3C,$44,$38
  DEFB $00,$40,$7C,$08,$10,$30,$7C,$00
  DEFB $00,$00,$18,$24,$3C,$44,$3C,$00
; [7C]
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $FF,$FD,$F9,$B3,$C7,$EF,$FF,$FF
  DEFB $00,$E4,$84,$E5,$25,$27,$E1,$00
  DEFB $3C,$42,$99,$A1,$A1,$99,$42,$3C

    SAVESNA "main.sna", main