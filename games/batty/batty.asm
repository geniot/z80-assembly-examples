  ORG $4000

; Data block at 4000
L4000:
  DEFB $00,$00,$00,$00,$06,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$01,$FF,$D0,$1F,$00,$00
  DEFB $00,$00,$00,$00,$01,$C0,$00,$00
  DEFB $00,$00,$00,$E0,$00,$00,$00,$E0
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$01,$E0,$C0,$C0,$1F,$00
  DEFB $00,$00,$00,$01,$C1,$C0,$00,$00
  DEFB $00,$00,$E0,$20,$00,$00,$E0,$20
  DEFB $1C,$80,$00,$00,$00,$0C,$80,$00
  DEFB $00,$00,$01,$E0,$C1,$80,$03,$C0
  DEFB $00,$00,$01,$C0,$01,$C0,$00,$00
  DEFB $00,$E0,$01,$C0,$00,$E0,$01,$C0
  DEFB $40,$80,$00,$00,$0C,$00,$80,$00
  DEFB $00,$00,$01,$FF,$FF,$FF,$C0,$00
  DEFB $00,$01,$FF,$FC,$FF,$C0,$00,$00
  DEFB $FF,$FF,$C0,$00,$FF,$FF,$C0,$00
  DEFB $7F,$FE,$00,$0F,$FF,$F8,$00,$00
  DEFB $00,$00,$01,$FF,$FF,$CF,$FF,$F8
  DEFB $01,$FF,$FE,$00,$FF,$C0,$00,$FF
  DEFB $FF,$D8,$00,$FF,$FF,$D8,$00,$D0
  DEFB $01,$FF,$FF,$FF,$F8,$00,$00,$00
  DEFB $00,$00,$01,$FF,$C0,$1F,$FC,$01
  DEFB $FF,$FF,$FF,$FF,$FF,$C0,$7F,$FF
  DEFB $C7,$F8,$7F,$FF,$C7,$F8,$02,$C0
  DEFB $00,$07,$FF,$F8,$00,$00,$00,$00
  DEFB $00,$00,$01,$FF,$FF,$FE,$00,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$C0,$FF,$C0
  DEFB $07,$F8,$FF,$C0,$07,$F8,$10,$00
  DEFB $07,$FF,$F8,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$07,$80,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$01,$E0,$D0,$0F,$80,$00
  DEFB $00,$00,$00,$00,$03,$C0,$00,$00
  DEFB $00,$00,$01,$E0,$00,$00,$01,$E0
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00

; Routine at 4142
L4142:
  LD BC,$C0E0
  LD H,B
  RRCA
  ADD A,B
  NOP
  NOP
  NOP
  INC BC
  ADD A,C
  RET NZ
  NOP
  NOP
  NOP
  LD BC,$20C0
  NOP
  LD BC,$20C0
  JR C,$40DA
  NOP
  NOP
  NOP
  JR $40DF

; Data block at 415F
L415F:
  DEFB $00,$00,$00,$01,$E0,$C3,$00,$07
  DEFB $80,$00,$00,$03,$80,$01,$C0,$00
  DEFB $00,$01,$C0,$03,$80,$01,$C0,$03
  DEFB $80,$40

; Routine at 4179
L4179:
  ADD A,B
  NOP
  NOP
  JR L417E

; Data block at 417E
;
; Used by the routine at L4179.
L417E:
  DEFB $80,$00,$00,$00,$01,$FF,$FF,$FF
  DEFB $80,$00,$00,$03,$FF,$F8,$FF,$C0
  DEFB $00,$01,$FF,$FF,$80,$01,$FF,$FF
  DEFB $80,$00,$7F,$FF,$00,$1F,$FF,$F0
  DEFB $00,$00,$00,$00,$01,$FF,$FF,$9F
  DEFB $FF,$F8,$03,$FF,$FC,$00,$FF,$C0
  DEFB $01,$FF,$FF,$B8,$01,$FF,$FF,$B8
  DEFB $01,$E8,$00,$FF,$FF,$FF,$F0,$00
  DEFB $00,$00,$00,$00,$01,$FF,$C0,$1F
  DEFB $F8,$03,$FF,$FF,$FF,$FF,$FF,$C0
  DEFB $FF,$FF,$87,$F8,$FF,$FF,$87,$F8
  DEFB $02,$80,$00,$0F,$FF,$F0,$00,$00
  DEFB $00,$00,$00,$00,$01,$FF,$FF,$FC
  DEFB $00,$FF,$E0,$00,$00,$00,$7F,$C0
  DEFB $FF,$80,$07,$F8,$FF,$80,$07,$F8
  DEFB $10,$00,$0F,$FF,$F0,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$0B,$C0
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$01,$E0,$D0,$07
  DEFB $C0,$00,$00,$00,$00,$00,$07,$C0
  DEFB $00,$00,$00,$00,$03,$A0,$00,$00
  DEFB $03,$A0,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$01,$E0,$C0,$30
  DEFB $07,$C0,$00,$00,$00,$07,$01,$C0
  DEFB $00,$00,$00,$03,$80,$20,$00,$03
  DEFB $80,$20,$70,$80,$00,$00,$00,$30
  DEFB $80,$00,$00,$00,$01,$E0,$C6,$00
  DEFB $0F,$00,$00,$00,$07,$00,$01,$C0
  DEFB $00,$00,$03,$80,$07,$00,$03,$80
  DEFB $07,$00,$40,$80,$00,$00,$30,$00
  DEFB $80,$00,$00,$00,$01,$FF,$FF,$FF
  DEFB $3C,$00,$00,$07,$FF,$F0,$FF,$C0
  DEFB $00,$03,$FF,$FF,$00,$03,$FF,$FF
  DEFB $00,$00,$7F,$FF,$80,$3F,$FF,$E0
  DEFB $00,$00,$00,$00,$01,$FF,$FF,$3F
  DEFB $FF,$F0,$07,$FF,$F8,$00,$FF,$C0
  DEFB $03,$FF,$FF,$78,$03,$FF,$FF,$78
  DEFB $01,$E8,$00,$7F,$FF,$FF,$E0,$00
  DEFB $00,$00,$00,$00,$01,$FF,$C0,$3F
  DEFB $F8,$07,$FF,$FF,$FF,$FF,$FF,$C0
  DEFB $FF,$FF,$07,$F8,$FF,$FF,$07,$F8
  DEFB $05,$00,$00,$1F,$FF,$E0,$00,$00
  DEFB $00,$00,$00,$00,$01,$FF,$FF,$F8
  DEFB $00,$7F,$F0,$00,$00,$00,$7F,$C0
  DEFB $FF,$00,$07,$F8,$FF,$00,$07,$F8
  DEFB $20,$00,$1F,$FF,$E0,$00,$06,$30
  DEFB $78,$00,$00,$00,$00,$00,$09,$E0
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$01,$E0,$D8,$03
  DEFB $E0,$00,$00,$00,$00,$00,$0F,$C0
  DEFB $00,$00,$00,$00,$07,$20,$00,$00
  DEFB $07,$20,$00,$80,$00,$00,$00,$00
  DEFB $00,$00,$00,$00

; Routine at 4342
L4342:
  LD BC,$C0E0
  JR $434A

; Data block at 4347
L4347:
  DEFB $E0,$00,$00,$00,$0E,$01,$C0,$00
  DEFB $00,$00,$07,$00,$20,$00,$07,$00
  DEFB $20,$60,$80,$00,$00,$00,$60,$80
  DEFB $00,$00,$00,$01,$E0,$CC,$00,$1E
  DEFB $00,$00,$00,$0E,$00,$01,$C0,$00
  DEFB $00,$07,$00,$0E,$00,$07,$00,$0E
  DEFB $00,$40,$C0,$00,$00,$60,$00,$80
  DEFB $00,$00,$00,$01,$FF,$FF,$FE,$7F
  DEFB $00,$00,$0F,$FF,$F0,$FF,$C0,$00
  DEFB $07,$FF,$FE,$00,$07,$FF,$FE,$00
  DEFB $00,$3F,$FF,$C0,$7F,$FF,$C0,$00
  DEFB $00,$00,$00,$01,$FF,$FE,$7F,$FF
  DEFB $E0,$0F,$FF,$F0,$00,$FF,$C0,$07
  DEFB $FF,$FE,$F8,$07,$FF,$FE,$F8,$00
  DEFB $F0,$00,$3F,$FF,$FF,$C0,$00,$00
  DEFB $00,$00,$00,$01,$FF,$C0,$7F,$F0
  DEFB $0F,$FF,$FF,$FF,$FF,$FF,$C0,$FF
  DEFB $FE,$07,$F8,$FF,$FE,$07,$F8,$05
  DEFB $00,$00,$3F,$FF,$C0,$00,$00,$00
  DEFB $00,$00,$00,$01,$FF,$FF,$F0,$00
  DEFB $3F,$F8,$00,$00,$00,$7F,$C0,$FE
  DEFB $00,$07,$F8,$FE,$00,$07,$F8,$20
  DEFB $00,$1F,$FF,$C0,$00,$0E,$38,$E0
  DEFB $00,$00,$00,$00,$00,$19,$F0,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$01,$E0,$CC,$01,$F0
  DEFB $00,$00,$00,$00,$00,$1F,$C0,$00
  DEFB $00,$00,$00,$0E,$20,$00,$00,$0E
  DEFB $20,$01,$80,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$01,$E0,$C0,$10,$01
  DEFB $F0,$00,$00,$00,$1C,$01,$C0,$00
  DEFB $00,$00,$0E,$00,$20,$00,$0E,$00
  DEFB $20,$40,$80,$00,$00,$00,$C0,$80
  DEFB $00,$00,$00,$01,$E0,$D8,$00,$3C
  DEFB $00,$00,$00,$1C,$00,$01,$C0,$00
  DEFB $00,$0E,$00,$1C,$00,$0E,$00,$1C
  DEFB $00,$40,$60,$00,$00,$C0,$00,$80
  DEFB $00,$00,$00,$01,$FF,$FF,$FC,$FF
  DEFB $80,$00,$1F,$FF,$E0,$FF,$C0,$00
  DEFB $0F,$FF,$FC,$00,$0F,$FF,$FC,$00
  DEFB $00,$1F,$FF,$E0,$FF,$FF,$80,$00
  DEFB $00,$00,$00,$01,$FF,$FC,$FF,$FF
  DEFB $C0,$1F,$FF,$E0,$00,$FF,$C0,$0F
  DEFB $FF,$FD,$F8,$0F,$FF,$FD,$F8,$00
  DEFB $60,$00,$1F,$FF,$FF,$80,$00,$00
  DEFB $00,$00,$00,$01,$FF,$C0,$FF,$E0
  DEFB $1F,$FF,$FF,$FF,$FF,$FF,$C0,$FF
  DEFB $FC,$07,$F8,$FF,$FC,$07,$F8,$06
  DEFB $00,$00,$7F,$FF,$80,$00,$00,$00
  DEFB $00,$00,$00,$01,$FF,$FF,$E0,$00
  DEFB $1F,$FC,$00,$00,$00,$7F,$C0,$FC
  DEFB $00,$07,$F8,$FC,$00,$07,$F8,$00
  DEFB $00,$1F,$FF,$80,$00,$0D,$59,$80
  DEFB $00,$00,$00,$00,$00,$10,$F8,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$01,$E0,$C6,$00,$F8
  DEFB $00,$00,$00,$00,$00,$39,$C0,$00
  DEFB $00,$00,$00,$1C,$20,$00,$00,$1C
  DEFB $20,$03,$80,$00,$00,$00,$03,$80
  DEFB $00,$00,$00,$01,$E0,$C0,$30,$00
  DEFB $F0,$00,$00,$00,$38,$01,$C0,$00
  DEFB $00,$00,$1C,$00,$20,$00,$1C,$00
  DEFB $20,$40,$80,$00,$00,$01,$80,$80
  DEFB $00,$00,$00,$01,$E0,$F0,$00,$78
  DEFB $00,$00,$00,$38,$00,$81,$C0,$00
  DEFB $00,$1C,$00,$38,$00,$1C,$00,$38
  DEFB $00,$40,$10,$00,$01,$80,$01,$00
  DEFB $00,$00,$00,$01,$FF,$FF,$F9,$FF
  DEFB $C0,$00,$3F,$FF,$C0,$FF,$C0,$00
  DEFB $1F,$FF,$F8,$00,$1F,$FF,$F8,$00
  DEFB $00,$0F,$FF,$F1,$FF,$FF,$00,$00
  DEFB $00,$00,$00,$01,$FF,$F8,$FF,$FF
  DEFB $80,$3F,$FF,$C0,$00,$FF,$C0,$1F
  DEFB $FF,$FB,$F8,$1F,$FF,$FB,$F8,$01
  DEFB $00,$00,$0F,$FF,$FF,$00,$00,$00
  DEFB $00,$00,$00,$01,$FF,$C1,$FF,$C0
  DEFB $3F,$FF,$FF,$FF,$FF,$FF,$C0,$FF
  DEFB $F8,$07,$F8,$FF,$F8,$07,$F8,$08
  DEFB $00,$00,$FF,$FF,$00,$00,$00,$00
  DEFB $00,$00,$00,$01,$FF,$FF,$C0,$00
  DEFB $0F,$FE,$00,$00,$00,$7F,$C0,$F8
  DEFB $00,$07,$F8,$F8,$00,$07,$F8,$00
  DEFB $00,$1F,$FF,$00,$00,$0C,$99,$80
  DEFB $00,$00,$00,$00,$00,$10,$7C,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$01,$E0,$C3,$00,$7C
  DEFB $00,$00,$00,$00,$00,$71,$C0,$00
  DEFB $00,$00,$00,$38,$20,$00,$00,$38
  DEFB $20,$07,$80,$00,$00,$00,$03,$80
  DEFB $00,$00,$00,$01,$E0,$C0,$60,$00
  DEFB $F0,$00,$00,$00,$70,$01,$C0,$00
  DEFB $00,$00,$38,$00,$60,$00,$38,$00
  DEFB $60,$40,$80,$00,$00,$03,$00,$80
  DEFB $00,$00,$00,$01,$E0,$E0,$00,$F0
  DEFB $00,$00,$00,$70,$01,$81,$C0,$00
  DEFB $00,$38,$00,$70,$00,$38,$00,$70
  DEFB $00,$40,$08,$00,$03,$00,$02,$00
  DEFB $00,$00,$00,$01,$FF,$FF,$F3,$FF
  DEFB $E0,$00,$7F,$FF,$80,$FF,$C0,$00
  DEFB $3F,$FF,$F8,$00,$3F,$FF,$F8,$00
  DEFB $00,$07,$FF,$FF,$FF,$FE,$00,$00
  DEFB $00,$00,$00,$01,$FF,$F1,$FF,$FF
  DEFB $00,$7F,$FF,$80,$00,$FF,$C0,$3F
  DEFB $FF,$F7,$F8,$3F,$FF,$F7,$F8,$01
  DEFB $90,$00,$07,$FF,$FE,$00,$00,$00
  DEFB $00,$00,$00,$01,$FF,$C7,$FF,$80
  DEFB $7F,$FF,$FF,$FF,$FF,$FF,$C0,$FF
  DEFB $F0,$07,$F8,$FF,$F0,$07,$F8,$08
  DEFB $00,$01,$FF,$FE,$00,$00,$00,$00
  DEFB $00,$00,$00,$01,$FF,$FF,$80,$00
  DEFB $07,$FF,$00,$00,$00,$7F,$C0,$F0
  DEFB $00,$07,$F8,$F0,$00,$07,$F8,$40
  DEFB $00,$1F,$FE,$00,$00,$0C,$19,$80
  DEFB $00,$00,$00,$00,$00,$10,$3E,$00
  DEFB $00,$00,$00,$00,$00,$00,$C0,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$01,$E0,$C1,$80,$3E
  DEFB $00,$00,$00,$00,$00,$E1,$C0,$00
  DEFB $00,$00,$00,$70,$20,$00,$00,$70
  DEFB $20,$0E,$80,$00,$00,$00,$06,$80
  DEFB $00,$00,$00,$01,$E0,$C0,$C0,$01
  DEFB $E0,$00,$00,$00,$E0,$01,$C0,$00
  DEFB $00,$00,$70,$00,$E0,$00,$70,$00
  DEFB $E0,$40,$80,$00,$00,$06,$00,$80
  DEFB $00,$00,$00,$01,$E0,$40,$01,$E0
  DEFB $00,$00,$00,$E0,$02,$81,$C0,$00
  DEFB $00,$70,$00,$E0,$00,$70,$00,$E0
  DEFB $00,$40,$04,$00,$06,$00,$04,$00
  DEFB $00,$00,$00,$01,$FF,$FF,$E7,$FF
  DEFB $F0,$00,$FF,$FF,$00,$FF,$C0,$00
  DEFB $7F,$FF,$E8,$00,$7F,$FF,$E8,$00
  DEFB $60,$03,$FF,$FF,$FF,$FC,$00,$00
  DEFB $00,$00,$00,$01,$FF,$E1,$3F,$FE
  DEFB $00,$FF,$FF,$FF,$FF,$FF,$C0,$7F
  DEFB $FF,$E7,$F8,$7F,$FF,$E7,$F8,$01
  DEFB $60,$00,$03,$FF,$FC,$00,$00,$00
  DEFB $00,$00,$00,$01,$FF,$DF,$FF,$00
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$C0,$FF
  DEFB $E0,$07,$F8,$FF,$E0,$07,$F8,$10
  DEFB $00,$03,$FF,$FC,$00,$00,$00,$00
  DEFB $00,$00,$00,$01,$FF,$FF,$00,$00
  DEFB $03,$FF,$80,$00,$00,$7F,$C0,$60
  DEFB $00,$07,$F8,$60,$00,$07,$F8,$00
  DEFB $00,$1F,$FC,$00,$00,$08,$09,$80
  DEFB $00,$00,$00,$01,$FF,$FE,$00,$00
  DEFB $01,$FF,$80,$00,$00,$7F,$C0,$40
  DEFB $00,$07,$F8,$40,$00,$07,$F8,$80
  DEFB $00,$1F,$F8,$00,$00,$08,$09,$80
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$FF,$FF,$FF,$FF,$F7,$D0,$00
  DEFB $BF,$FF,$D0,$00,$BF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$E8,$00
  DEFB $5F,$FE,$80,$05,$77,$FF,$FF,$FF
  DEFB $F8,$1F,$FF,$FF,$FF,$F7,$D0,$00
  DEFB $BF,$FF,$D0,$00,$AF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$A8,$00
  DEFB $57,$FA,$80,$05,$F7,$FF,$FF,$FF
  DEFB $C1,$8F,$FF,$FF,$FF,$E0,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00

; Routine at 489B
L489B:
  RST $30
  RST $38
  RST $38
  RST $38
  ADD A,A
  JP $FFFF

; Data block at 48A3
L48A3:
  DEFB $F0,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$1F,$FF,$FF,$87,$C7,$FF,$F0
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00

; Routine at 48DD
L48DD:
  RRA
  RST $38
  JP $F01F

; Data block at 48E2
L48E2:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$1F,$E1,$00,$00
  DEFB $01,$FF,$FC,$00,$00,$00,$FF,$00
  DEFB $00,$00,$7F,$C0,$00,$00,$07,$F0
  DEFB $00,$00,$07,$F0,$00,$00,$1F,$F0
  DEFB $00,$00,$08,$09,$80,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$FF,$FF
  DEFB $FF,$FF,$F7,$D0,$00,$BF,$FF,$D0
  DEFB $00,$BF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF,$E8,$00,$5F,$FE,$80
  DEFB $05,$F7,$FF,$FF,$FF,$F0,$1F,$FE
  DEFB $FF,$FF,$F7,$50,$00,$AF,$FF,$50
  DEFB $00,$BF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF

; Routine at 4975
L4975:
  RET PE
  NOP
  LD E,A
  CP $80
  DEC B
  LD (HL),A
  RST $38
  RST $38
  RST $38
  JP $FF8F

; Data block at 4982
L4982:
  DEFB $FF,$FF,$E0,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$0B,$FF,$FF,$FF,$87,$E3,$FF
  DEFB $FF,$E0,$00,$00,$7F,$F7,$FD,$FF
  DEFB $DF,$FB,$FF,$BF,$EF,$FE,$FF,$EF
  DEFB $FE,$FF,$BF,$FD,$FF,$F7,$FD,$FF
  DEFB $C0,$00,$0F,$FF,$FF,$87,$87,$FF
  DEFB $E0,$00,$00,$FF,$EF,$FB,$FF,$F7
  DEFB $FF,$7F,$F7,$FF,$BF,$FE,$FF

; Routine at 49D1
L49D1:
  DEFB $FD
  RST $38
  RST $28
  CP $FF
  RST $28
  RST $38
  RST $18
  RST $30
  RST $38
  NOP
  NOP
  RRCA
  RST $38
  JP $E01F

; Data block at 49E2
L49E2:
  DEFB $00,$00,$FF,$EF,$FE,$FF,$FD,$FF
  DEFB $DF,$FF,$7F,$FE,$FF,$FE,$FF,$FF
  DEFB $BF,$FF,$7F,$FD,$FF,$DF,$FF,$BF
  DEFB $F7,$FF,$00,$00,$0F,$F0,$00,$00
  DEFB $01,$FF,$F8,$00,$00,$00,$7E,$00
  DEFB $00,$00,$7F,$C0,$00,$00,$07,$E0
  DEFB $00,$00,$07,$E0,$00,$00,$1F,$E0
  DEFB $00,$00,$08,$09,$80,$00,$00,$00
  DEFB $01,$E0,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$7F,$FF
  DEFB $FF,$FF,$F7,$50,$00,$AF,$FF,$50
  DEFB $00,$AF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF,$A8,$00,$57,$FA,$80
  DEFB $05,$F7,$FF,$FF,$FF,$F0,$1F,$DD
  DEFB $FF,$FF,$F7,$D0,$00,$BF,$FF,$D0
  DEFB $00,$BF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF

; Routine at 4A75
L4A75:
  RET PE
  NOP
  LD E,A
  CP $80
  DEC B
  RST $30
  RST $38
  RST $38
  RST $38
  JP $FFC7

; Data block at 4A82
L4A82:
  DEFB $FF,$FF,$C0,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$03,$FF,$FF,$FF,$87,$E3,$FF
  DEFB $FF,$C0,$00,$00,$FF,$EF,$FB,$FF
  DEFB $BF,$F7,$FF,$7F,$DF,$FE,$FF,$EF
  DEFB $FF,$7F,$DF,$FE,$FF,$FB,$FE,$FF
  DEFB $E0,$00,$07,$FF,$FF,$87,$8F,$FF
  DEFB $C0,$00,$01,$FF,$DF,$F7,$FF,$EF
  DEFB $FE,$FF,$EF,$FF,$7F,$FE,$FF,$FE
  DEFB $FF,$F7,$FF,$7F

; Routine at 4AD6
L4AD6:
  RST $30
  RST $38
  RST $28
  EI
  RST $38
  ADD A,B
  NOP
  RLCA
  RST $38
  JP $C01F

; Data block at 4AE2
L4AE2:
  DEFB $00,$01,$FF,$DF,$FD,$FF,$FB,$FF
  DEFB $BF,$FE,$FF,$FD,$FF,$FE,$FF,$FF
  DEFB $BF,$FF,$7F,$FD,$FF,$DF,$FF,$BF
  DEFB $FB,$FF,$80,$00,$07,$F0,$00,$00
  DEFB $01,$FF,$E0,$00,$00,$00,$3C,$00
  DEFB $00,$00,$7F,$C0,$00,$00,$07,$C0
  DEFB $00,$00,$07,$C0,$00,$00,$1F,$C0
  DEFB $00,$00,$08,$09,$88,$00,$00,$00
  DEFB $FF,$FF,$DF,$A8,$00,$5F,$FF,$E8
  DEFB $00,$5F,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF,$D4,$00,$2F,$FF,$00
  DEFB $00,$FD,$FE,$00,$00,$00,$7F,$FF
  DEFB $FF,$FF,$F7,$D0,$00,$BF,$FF,$D0
  DEFB $00,$BF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF,$E8,$00,$5F,$FE,$80
  DEFB $05,$77,$FF,$FF,$FF,$F0,$0F,$FA
  DEFB $FF,$FF,$F7,$D0,$00,$BF,$FF,$D0
  DEFB $00,$AF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF

; Routine at 4B75
L4B75:
  XOR B
  NOP
  LD D,A
  JP M,$0580
  RST $30
  RST $38
  RST $38
  RST $38
  JP $FFC7

; Data block at 4B82
L4B82:
  DEFB $FF,$FF,$80,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$03,$FF,$FF,$FF,$87,$C7,$FF
  DEFB $FF,$80,$00,$01,$FF,$DF,$F7,$FF
  DEFB $7F,$F7,$FF,$7F,$DF,$FE,$FF,$F7
  DEFB $FF,$BF,$EF,$FF,$7F,$FD,$FF,$7F
  DEFB $F0,$00,$03,$FF,$FF,$87,$8F,$FF
  DEFB $80,$00,$03,$FF,$BF,$EF,$FF,$DF
  DEFB $FD,$FF,$DF,$FF,$7F,$FE,$FF,$FE
  DEFB $FF

; Routine at 4BD3
L4BD3:
  EI
  RST $38
  CP A
  EI
  RST $38
  RST $30
  DEFB $FD
  RST $38
  RET NZ
  NOP
  INC BC
  RST $38
  JP $801F

; Data block at 4BE2
L4BE2:
  DEFB $00,$03,$FF,$BF,$FB,$FF,$F7,$FF
  DEFB $7F,$FD,$FF,$FB,$FF,$FE,$FF,$FF
  DEFB $DF,$FF,$BF,$FE,$FF,$EF,$FF,$DF
  DEFB $FD,$FF,$C0,$00,$03,$F0,$00,$00
  DEFB $00,$00,$00,$00,$00,$00

; Routine at 4C08
L4C08:
  JR L4C0A

; Data block at 4C0A
;
; Used by the routine at L4C08.
L4C0A:
  DEFB $00,$00,$7F,$C0,$00,$00,$07,$80
  DEFB $00,$00,$07,$80,$00,$00,$1F,$80
  DEFB $00,$00,$08,$08

; Routine at 4C1E
L4C1E:
  RET M
  NOP
  NOP
  CCF
  RST $38
  RST $38
  RST $28
  RET

; Data block at 4C26
L4C26:
  DEFB $FE,$57,$FF,$49,$FE,$57,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$E4
  DEFB $FF,$2F,$FB,$40,$02,$FB,$FF,$FF
  DEFB $80,$00,$3F,$FF,$FF,$FF,$F7,$D0
  DEFB $00,$BF,$FF,$D0,$00,$BF,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$E8
  DEFB $00,$5F,$FE,$80,$05,$F7,$FF,$FF
  DEFB $FF,$E0,$8F,$F5,$FF,$FF,$F7,$53
  DEFB $FC,$AF,$FF,$53,$FC,$BF,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF

; Routine at 4C75
L4C75:
  JP (HL)

; Data block at 4C76
L4C76:
  DEFB $FE,$5F,$FE,$80

; Routine at 4C7A
L4C7A:
  DEC B
  LD (HL),A
  RST $38
  RST $38
  RST $38
  JP $FFC7

; Data block at 4C82
L4C82:
  DEFB $FF,$FF,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$01,$FF,$FF,$FF,$87,$C7,$FF
  DEFB $FF,$00,$00,$03,$FF,$BF,$EF,$FE
  DEFB $FF,$EF,$FE,$FF,$DF,$FE,$FF,$F7
  DEFB $FF,$BF,$F7,$FF,$BF,$FE,$FF,$BF
  DEFB $F8,$00,$01,$FF,$FF,$87,$8F,$FF
  DEFB $00,$00,$07,$FF,$7F,$DF,$FF,$BF
  DEFB $FB,$FF,$DF,$FF,$7F,$FE,$FF,$FE
  DEFB $FF,$FB,$FF,$DF,$FD,$FF,$FB,$FE
  DEFB $FF,$E0,$00,$01,$FF,$E1,$1F,$00
  DEFB $00,$07,$FF,$7F,$F7,$FF,$EF,$FE
  DEFB $FF,$FB,$FF,$FB,$FF,$FE,$FF,$FF
  DEFB $DF,$FF,$DF,$FF,$7F,$F7,$FF,$EF
  DEFB $FE,$FF,$E0,$00,$01,$F8,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$06,$00
  DEFB $00,$00,$06,$00,$00,$00,$1F,$00
  DEFB $00,$00,$08,$0A,$72,$00,$0F,$FF
  DEFB $FF,$FF,$F7,$D3,$FC,$BF,$FF,$D3
  DEFB $FC,$BF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF

; Routine at 4D35
L4D35:
  JP (HL)

; Data block at 4D36
L4D36:
  DEFB $FE,$5B,$FE,$4F,$F2,$B7,$FF,$FF
  DEFB $F8,$00,$3F,$FF,$FF,$FF,$F7,$50
  DEFB $00,$BF,$FF,$D0,$00,$AF,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$A8
  DEFB $00,$57,$FA,$80,$05,$F7,$FF,$FF
  DEFB $FF,$E0,$8F,$F8,$FF,$FF,$F7,$D3
  DEFB $FC,$BF,$FF,$D3,$FC,$BF,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF

; Routine at 4D75
L4D75:
  JP (HL)

; Data block at 4D76
L4D76:
  DEFB $FE,$5F,$FE,$9F

; Routine at 4D7A
L4D7A:
  PUSH HL
  RST $30
  RST $38
  RST $38
  RST $38
  JP $FFC7

; Data block at 4D82
L4D82:
  DEFB $FF,$FE,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$FF,$FF,$FF,$0F,$C7,$FF
  DEFB $FE,$00,$00,$07,$FF,$7F,$DF,$FD
  DEFB $FF,$DF,$FE,$FF,$DF,$FE,$FF,$F7
  DEFB $FF,$DF,$FB,$FF,$DF,$FF,$7F,$DF
  DEFB $F8,$00,$00,$FF,$FF,$87,$8F,$FE
  DEFB $00,$00,$0F,$FE,$FF,$BF,$FF,$7F
  DEFB $F7,$FF,$DF,$FE,$FF,$FE,$FF,$FF
  DEFB $7F,$FB,$FF,$EF,$FE,$FF,$FD,$FF
  DEFB $7F,$F0,$00,$00,$FF,$E1,$3E,$00
  DEFB $00,$0F,$FE,$FF,$EF,$FF,$DF,$FD
  DEFB $FF,$FB,$FF,$FB,$FF,$FE,$FF,$FF
  DEFB $DF,$FF,$DF,$FF,$BF,$FB,$FF,$F7
  DEFB $FF,$7F,$F0,$00,$00,$F8,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$1E,$00
  DEFB $00,$00,$00,$00,$00,$00,$FF,$FF
  DEFB $FF,$FF,$F7,$D3,$FC,$BF,$FF,$D3
  DEFB $FC,$BF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF

; Routine at 4E35
L4E35:
  JP (HL)

; Data block at 4E36
L4E36:
  DEFB $FE,$5F,$FE,$9F,$E5,$F7,$FF,$FF
  DEFB $FF,$C0,$3F,$FF,$FF,$FF,$F7,$D0
  DEFB $00,$AF,$FF,$50,$00,$BF,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF

; Routine at 4E55
L4E55:
  RET PE
  NOP
  LD E,A
  CP $80
  DEC B
  LD (HL),A
  RST $38
  RST $38
  RST $38
  POP HL
  ADC A,A
  RLA
  RST $38
  RST $38
  RST $30
  RET

; Data block at 4E66
L4E66:
  DEFB $FE,$57,$FF,$49,$FE,$57,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF

; Routine at 4E75
L4E75:
  CALL PO,$2BFF
  JP M,$E59F
  RST $30
  RST $38
  RST $38
  RST $38
  JP $FFC7

; Data block at 4E82
L4E82:
  DEFB $FF,$FC,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$7F,$FF,$FF,$0F,$C7,$FF
  DEFB $FC,$00,$00,$0F,$FE,$FF,$BF,$FB
  DEFB $FF,$BF,$FD,$FF,$BF,$FE,$FF,$FB
  DEFB $FF,$EF,$FD,$FF,$EF,$FF,$BF,$EF
  DEFB $FC,$00,$00,$7F,$FF,$87,$8F,$FC
  DEFB $00,$00,$1F,$FD,$FF,$7F,$FE,$FF
  DEFB $EF,$FF,$BF,$FE,$FF,$FE,$FF,$FF
  DEFB $7F,$FD,$FF,$F7,$FF,$7F,$FE,$FF
  DEFB $BF,$F8,$00,$00,$7F,$E1,$3C,$00
  DEFB $00,$1F,$FD,$FF,$DF,$FF,$BF,$FB
  DEFB $FF,$F7,$FF,$F7,$FF,$FE,$FF,$FF
  DEFB $EF,$FF,$EF,$FF,$DF,$FD,$FF,$FB
  DEFB $FF,$BF,$F8,$00,$00,$78,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00

; Routine at 4F18
L4F18:
  JR L4F1A

; Data block at 4F1A
;
; Used by the routine at L4F18.
L4F1A:
  DEFB $00,$00,$00,$00,$00,$00,$FF,$FF
  DEFB $FF,$FF,$F7,$50,$00,$AF,$FF,$50
  DEFB $00,$AF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF,$A8,$00,$57,$FA,$9F
  DEFB $E5,$F7,$FF,$FF,$FF,$F8,$1F,$FF
  DEFB $FF,$FF,$F7,$D0,$00,$BF,$FF,$D0
  DEFB $00,$BF,$FF,$FF,$FD,$FF,$FF,$FF
  DEFB $FF,$FF,$FF,$E8,$00,$5F,$FE,$80
  DEFB $05,$F7,$FF,$FF,$FF,$E1,$8F,$0F
  DEFB $FF,$FF,$EF,$A8,$00,$5F,$FF,$E8
  DEFB $00,$5F,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF,$D4,$00,$2F,$FE,$4F
  DEFB $F2,$B7,$FF,$FF,$FF,$87,$C7,$FF
  DEFB $FF,$F8,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$3F,$FF,$FF,$0F,$C7,$FF
  DEFB $F8,$00,$00,$1F,$FD,$FF,$7F,$F7
  DEFB $FF,$7F,$FB,$FF,$7F

; Routine at 4FAF
L4FAF:
  CP $FF
  DEFB $FD
  RST $38
  RST $30
  CP $FF
  RST $30
  RST $38
  RST $18
  RST $30
  CP $00
  NOP
  CCF
  RST $38
  JP $F88F

; Data block at 4FC2
L4FC2:
  DEFB $00,$00,$3F,$FB,$FE,$FF,$FD,$FF
  DEFB $DF,$FF,$7F,$FD,$FF,$FE,$FF,$FF
  DEFB $7F,$FD,$FF,$FB,$FF,$BF,$FF,$7F
  DEFB $DF,$FC,$00,$00,$3F,$E1,$38,$00
  DEFB $00,$3F,$FB,$FF,$BF,$FF,$7F,$F7
  DEFB $FF,$EF,$FF,$F7,$FF,$FE,$FF,$FF
  DEFB $EF,$FF,$F7,$FF,$EF,$FE,$FF,$FD
  DEFB $FF,$DF,$FC,$00,$00,$3C,$70,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$1C,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$EE,$00,$7F,$FE,$00,$7F
  DEFB $C0,$00,$00,$00,$00,$ED,$C0,$00
  DEFB $00,$00,$01,$FF,$00,$3F,$FF,$00
  DEFB $3B,$80,$00,$00,$00,$00,$00,$00
  DEFB $00,$03,$FC,$00,$FF,$FC,$00,$79
  DEFB $E0,$00,$00,$00,$00,$ED,$D5,$50
  DEFB $00,$00,$03,$01,$00,$1F,$FF,$80
  DEFB $1F,$E0,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$37,$00,$1E,$FB,$80,$07
  DEFB $0A,$A0,$00,$00,$00,$ED,$D5,$50
  DEFB $00,$00,$00,$70,$00,$EF,$BC,$00
  DEFB $76,$0A,$AA,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$0A,$AA,$AA,$AA,$AA
  DEFB $AA,$80,$00,$00,$00,$00,$09,$20
  DEFB $00,$00,$00,$00,$00,$AA,$AA,$AA
  DEFB $AA,$AA,$A0,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$60,$00
  DEFB $00,$2A,$B5,$55,$AA,$AA,$AA,$B5

; Message at 510A
L510A:
  DEFM "UmUUUVj"

; Data block at 5111
L5111:
  DEFB $AA,$AA,$AA,$B6,$AA,$AD

; Message at 5117
L5117:
  DEFM "UUU"

; Data block at 511A
L511A:
  DEFB $AA,$AD,$54,$00,$00,$0E,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$DC,$00,$FF,$FC,$00,$7F
  DEFB $C0,$00,$00,$00,$00,$ED,$C0,$00
  DEFB $00,$00,$01,$FF,$00,$1F,$FF,$80
  DEFB $1D,$80,$00,$00,$00,$00,$00,$00
  DEFB $00,$01,$FC,$00,$FF,$FC,$00,$79
  DEFB $C0,$00,$00,$00,$00,$ED,$CA,$A0
  DEFB $00,$00,$01,$23,$00,$1F,$FF,$80
  DEFB $1F,$C0,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$1D,$FF,$EB,$DF,$FF,$FE
  DEFB $15,$50,$00,$00,$00,$ED,$CA,$A0
  DEFB $00,$00,$00,$3F,$FF,$FD,$EB,$FF
  DEFB $DC,$15,$54,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$05

; Message at 51C6
L51C6:
  DEFM "UUUUU"

; Data block at 51CB
L51CB:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00

; Message at 51D7
L51D7:
  DEFM "UUUUU"

; Data block at 51DC
L51DC:
  DEFB $40,$00,$00,$00,$00,$00,$00,$00
  DEFB $00

; Message at 51E5
L51E5:
  DEFM ">??!>"

; Data block at 51EA
L51EA:
  DEFB $1F,$3E,$42,$7F,$00,$21,$1F,$7F
  DEFB $00,$3E,$1E,$22,$00,$0C,$1E,$1E
  DEFB $3E,$00,$00,$00,$00,$00,$C0,$00
  DEFB $00,$35,$56,$A8,$B5,$56,$D5,$56
  DEFB $AA,$AA,$AA,$B6,$AA,$AA

; Message at 5210
L5210:
  DEFM "UUmUUUj"

; Data block at 5217
L5217:
  DEFB $AB,$6A,$AD,$15,$6A,$AC,$00,$00
  DEFB $06,$00,$00,$00,$00,$02,$AA,$AA
  DEFB $AA

; Message at 5228
L5228:
  DEFM "UUUUUUUUZ"

; Data block at 5231
L5231:
  DEFB $AA,$AA,$AA,$AA,$AA,$B5

; Message at 5237
L5237:
  DEFM "UUj"

; Data block at 523A
L523A:
  DEFB $AA,$D5,$55,$40,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$01,$FC,$00,$FF,$FC,$00,$79
  DEFB $C0,$00,$00,$00,$00,$ED,$C0,$00
  DEFB $00,$00,$01,$CF,$00,$1F,$FF,$80
  DEFB $1F,$C0,$00,$00,$00,$00,$00,$00
  DEFB $00,$01,$FC,$00,$FF,$FC,$00,$79
  DEFB $40,$00,$00,$00,$00,$80,$55,$50
  DEFB $00,$00,$01,$3F,$00,$1F,$FF,$80
  DEFB $1F,$C0,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $2A,$A0,$00,$00,$00,$5E,$95,$50
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$2A,$AA,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$02,$AA,$AA,$AA,$AA
  DEFB $AA,$00,$00,$00,$00,$00,$02,$80
  DEFB $00,$00,$00,$00,$00,$2A,$AA,$AA
  DEFB $AA,$AA,$80,$00,$00,$00,$00,$00
  DEFB $00,$00,$00

; Message at 52E5
L52E5:
  DEFM " !!!!"

; Data block at 52EA
L52EA:
  DEFB $04,$20,$42,$08,$00,$21,$04,$08
  DEFB $00

; Message at 52F3
L52F3:
  DEFM "!!$"

; Data block at 52F6
L52F6:
  DEFB $00,$14,$21,$21,$00,$00,$00,$00
  DEFB $00,$00,$80,$00,$00,$2A,$B5,$55
  DEFB $AA,$AA,$AA,$B5

; Message at 530A
L530A:
  DEFM "UmUUUVj"

; Data block at 5311
L5311:
  DEFB $AA,$AA,$AA,$B6,$AA,$AD

; Message at 5317
L5317:
  DEFM "UUU"

; Data block at 531A
L531A:
  DEFB $AA,$AD,$54,$00,$00,$00,$00,$00
  DEFB $00,$00,$01

; Message at 5325
L5325:
  DEFM "UUT"

; Data block at 5328
L5328:
  DEFB $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
  DEFB $AD

; Message at 5331
L5331:
  DEFM "UUUUUJ"

; Data block at 5337
L5337:
  DEFB $AA,$AA,$95,$55,$2A,$AA,$A0,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$01,$FC,$00,$FF
  DEFB $FC,$00,$71,$C0,$00,$00,$00,$00
  DEFB $80,$40,$00,$00,$00,$01,$C7,$00
  DEFB $1F,$FF,$80,$1F,$C0,$00,$00,$00
  DEFB $00,$00,$00,$00,$01,$74,$00,$DD
  DEFB $FC,$00,$78,$40,$00,$00,$00,$00
  DEFB $6D,$8A,$A0,$00,$00,$01,$9F,$00
  DEFB $1F,$DD,$80,$17,$41,$50,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$55,$40,$00,$00,$00
  DEFB $3F,$0A,$A0,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$55,$54,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00

; Message at 53E5
L53E5:
  DEFM " !!!!"

; Data block at 53EA
L53EA:
  DEFB $04,$20,$7E,$08,$00,$3F,$04,$08
  DEFB $00

; Message at 53F3
L53F3:
  DEFM "!!8"

; Data block at 53F6
L53F6:
  DEFB $00,$04,$21,$1E,$02,$00,$00,$00
  DEFB $00,$00,$80,$00,$00,$35,$56,$AA
  DEFB $B5,$56,$D5,$56,$AA,$AA,$AA,$B6
  DEFB $AA,$AA

; Message at 5410
L5410:
  DEFM "UUmUUUj"

; Data block at 5417
L5417:
  DEFB $AB,$6A,$AD,$55,$6A,$AC,$00,$00
  DEFB $00,$00,$00,$00,$00,$0A,$AA,$AA
  DEFB $AA

; Message at 5428
L5428:
  DEFM "UUUUUUUUR"

; Data block at 5431
L5431:
  DEFB $AA,$AA,$AA,$AA,$AA,$B5

; Message at 5437
L5437:
  DEFM "UUj"

; Data block at 543A
L543A:
  DEFB $AA,$95,$55,$50,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$01,$FC,$00,$FF,$FC,$00,$71
  DEFB $C0,$00,$00,$00,$00,$6D,$80,$00
  DEFB $00,$00,$01,$E3,$00,$1F,$FF,$80
  DEFB $1F,$C0,$00,$00,$00,$00,$00,$00
  DEFB $00,$01,$D4,$00,$F7,$B4,$00,$38
  DEFB $C2,$80,$00,$00,$00,$ED,$D5,$50
  DEFB $00,$00,$01,$9E,$00,$16,$F7,$80
  DEFB $15,$C2,$A8,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$2A,$AA,$AA,$AA,$AA
  DEFB $AA,$A0,$00,$00,$00,$1E,$15,$50
  DEFB $00,$00,$00,$00,$02,$AA,$AA,$AA
  DEFB $AA,$AA,$A8,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00

; Message at 54E5
L54E5:
  DEFM " !??>"

; Data block at 54EA
L54EA:
  DEFB $04,$2E,$42,$08,$00,$21,$04,$08
  DEFB $00

; Message at 54F3
L54F3:
  DEFM ">?$"

; Data block at 54F6
L54F6:
  DEFB $00,$04,$1F,$21,$04,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$2A,$B5,$55
  DEFB $AA,$AA,$AA,$B5

; Message at 550A
L550A:
  DEFM "UmUUUVj"

; Data block at 5511
L5511:
  DEFB $AA,$AA,$AA,$B6,$AA,$AD

; Message at 5517
L5517:
  DEFM "UUU"

; Data block at 551A
L551A:
  DEFB $AA,$AD,$54,$00,$00,$00,$00,$00
  DEFB $00,$00,$05

; Message at 5525
L5525:
  DEFM "UUT"

; Data block at 5528
L5528:
  DEFB $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
  DEFB $AD

; Message at 5531
L5531:
  DEFM "UUUUUJ"

; Data block at 5537
L5537:
  DEFB $AA,$AA,$95,$55,$6A,$AA,$A8,$00
  DEFB $00,$00,$00,$00,$00,$1F,$FF,$FF
  DEFB $FF,$FF,$FE,$00,$00,$00,$00,$00
  DEFB $1E,$00,$00,$00,$00,$00,$3F,$FF
  DEFB $FF,$FF,$FF,$FC,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$03,$FC,$00,$FF
  DEFB $FC,$00,$69,$C0,$00,$00,$00,$00
  DEFB $ED,$C2,$80,$00,$00,$01,$F9,$00
  DEFB $1F,$FF,$80,$1F,$E0,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$B8,$00,$DF
  DEFB $FC,$00,$39,$C5,$40,$00,$00,$00
  DEFB $ED,$CA,$A0,$00,$00,$01,$C6,$00
  DEFB $1F,$FD,$80,$0E,$85,$50,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$15

; Message at 55A6
L55A6:
  DEFM "UUUUU"

; Data block at 55AB
L55AB:
  DEFB $40,$00,$00,$00,$0C,$0A,$A0,$00
  DEFB $00,$00,$00,$01

; Message at 55B7
L55B7:
  DEFM "UUUUUT"

; Data block at 55BD
L55BD:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Message at 55E5
L55E5:
  DEFM " ! "

; Data block at 55E8
L55E8:
  DEFB $01,$22,$04,$22,$42,$08,$00,$21
  DEFB $04,$08,$00

; Message at 55F3
L55F3:
  DEFM " !\""

; Data block at 55F6
L55F6:
  DEFB $00,$04,$01,$21,$08,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$35,$56,$AA
  DEFB $B5,$56,$D5,$56,$AA,$AA,$AA,$B6
  DEFB $AA,$AA

; Message at 5610
L5610:
  DEFM "UUmUUUj"

; Data block at 5617
L5617:
  DEFB $AB,$6A,$AD,$55,$6A,$AC,$00,$00
  DEFB $00,$00,$00,$00,$00,$2A,$AA,$AA
  DEFB $AA

; Message at 5628
L5628:
  DEFM "UUUUUUUUZ"

; Data block at 5631
L5631:
  DEFB $AA,$AA,$AA,$AA,$AA,$A5

; Message at 5637
L5637:
  DEFM "UUj"

; Data block at 563A
L563A:
  DEFB $AA,$95,$55,$54,$00,$00,$00,$00
  DEFB $00,$00,$38,$80,$10,$01,$80,$1F
  DEFB $00,$00,$00,$00,$00,$3F,$00,$00
  DEFB $00,$00,$00,$7C,$00,$C0,$04,$00
  DEFB $8E,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$03,$FC,$00,$FF,$FC,$00,$79
  DEFB $C0,$00,$00,$00,$00,$ED,$C5,$40
  DEFB $00,$00,$01,$B9,$00,$1F,$FF,$80
  DEFB $1F,$E0,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$EC,$00,$7D,$EE,$00,$33
  DEFB $C2,$A0,$00,$00,$00,$ED,$D5,$50
  DEFB $00,$00,$00,$E6,$00,$3B,$DF,$00
  DEFB $1B,$8A,$A8,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$2A,$AA,$AA,$AA,$AA
  DEFB $AA,$A0,$00,$00,$00,$00,$15,$50
  DEFB $00,$00,$00,$00,$02,$AA,$AA,$AA
  DEFB $AA,$AA,$A8,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00

; Message at 56E5
L56E5:
  DEFM ">? ?!"

; Data block at 56EA
L56EA:
  DEFB $1F,$3E,$42,$08,$00,$21,$1F,$08
  DEFB $00

; Message at 56F3
L56F3:
  DEFM " !!"

; Data block at 56F6
L56F6:
  DEFB $00,$1F,$1E,$1E,$08,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$3F,$F7,$FF
  DEFB $BF,$FE,$FF,$F7,$FF,$EF,$FF,$F7
  DEFB $FF,$FE,$7F,$FF,$EF,$FF,$F7,$FF
  DEFB $EF,$FF,$7F,$FD,$FF,$EF,$FC,$00
  DEFB $00,$00,$00,$00,$00,$00

; Message at 5724
L5724:
  DEFM "UUUT"

; Data block at 5728
L5728:
  DEFB $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
  DEFB $B5

; Message at 5731
L5731:
  DEFM "UUUUUZ"

; Data block at 5737
L5737:
  DEFB $AA,$AA,$B5,$55,$6A,$AA,$AA,$00
  DEFB $00,$00,$00,$00,$00,$77,$00,$3F
  DEFB $FF,$00,$3F,$80,$00,$00,$00,$00
  DEFB $DE,$C0,$00,$00,$00,$00,$FE,$00
  DEFB $7F,$FE,$00,$77,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$03,$FC,$00,$FF
  DEFB $FC,$00,$79,$E0,$00,$00,$00,$00
  DEFB $ED,$CA,$A0,$00,$00,$03,$99,$00
  DEFB $1F,$FF,$80,$1F,$E0,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$5A,$00,$2B
  DEFB $7F,$00,$1B,$85,$50,$00,$00,$00
  DEFB $ED,$CA,$A0,$00,$00,$00,$FC,$00
  DEFB $7F,$6A,$00,$2D,$05,$54,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$15

; Message at 57A6
L57A6:
  DEFM "UUUUU"

; Data block at 57AB
L57AB:
  DEFB $40,$00,$00,$00,$00,$02,$80,$00
  DEFB $00,$00,$00,$01

; Message at 57B7
L57B7:
  DEFM "UUUUUP"

; Data block at 57BD
L57BD:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$05,$05,$05,$07,$47
  DEFB $45,$05,$05,$02,$02,$02,$02,$07
  DEFB $47,$05,$02,$02,$02,$02,$02,$06
  DEFB $06,$06,$06,$06,$06,$02,$02,$02
  DEFB $02,$02,$02,$05,$05

; Message at 5822
L5822:
  DEFM "GEGEE"

; Data block at 5827
L5827:
  DEFB $05,$02,$02,$03,$07,$47,$45,$05
  DEFB $02,$02,$06,$47,$47,$06,$06

; Message at 5836
L5836:
  DEFM "GEGE"

; Data block at 583A
L583A:
  DEFB $02,$02,$02,$47,$45,$02,$05,$05

; Message at 5842
L5842:
  DEFM "GEEEEE"

; Data block at 5848
L5848:
  DEFB $02,$02,$07

; Message at 584B
L584B:
  DEFM "GGE"

; Data block at 584E
L584E:
  DEFB $05,$05,$06

; Message at 5851
L5851:
  DEFM "GGGGGGEGE"

; Data block at 585A
L585A:
  DEFB $02,$02

; Message at 585C
L585C:
  DEFM "GGE"

; Data block at 585F
L585F:
  DEFB $02,$05,$05

; Message at 5862
L5862:
  DEFM "GEEEEE"

; Data block at 5868
L5868:
  DEFB $02,$05

; Message at 586A
L586A:
  DEFM "GGEE"

; Data block at 586E
L586E:
  DEFB $05,$06

; Message at 5870
L5870:
  DEFM "GGEEGGEEEE"

; Data block at 587A
L587A:
  DEFB $02

; Message at 587B
L587B:
  DEFM "GGEE"

; Data block at 587F
L587F:
  DEFB $02,$05,$05

; Message at 5882
L5882:
  DEFM "GCCCCC"

; Data block at 5888
L5888:
  DEFB $05

; Message at 5889
L5889:
  DEFM "CCCCC"

; Data block at 588E
L588E:
  DEFB $07

; Message at 588F
L588F:
  DEFM "CCCCCCCGGCCCCCC"

; Data block at 589E
L589E:
  DEFB $05,$02,$05,$05

; Message at 58A2
L58A2:
  DEFM "GBBBBBBBBBBBBBBBBBBBGG"

; Data block at 58B8
L58B8:
  DEFB $02

; Message at 58B9
L58B9:
  DEFM "BBBB"

; Data block at 58BD
L58BD:
  DEFB $05,$02,$02,$05,$05

; Message at 58C2
L58C2:
  DEFM "GBBBBBBBBBBBBBBBBBBBGGBBBB"

; Data block at 58DC
L58DC:
  DEFB $05,$02,$02,$02,$05,$05

; Message at 58E2
L58E2:
  DEFM "FFFF"

; Data block at 58E6
L58E6:
  DEFB $05

; Message at 58E7
L58E7:
  DEFM "FFFFFFFFFFFFFFFG"

; Data block at 58F7
L58F7:
  DEFB $06

; Message at 58F8
L58F8:
  DEFM "FFF"

; Data block at 58FB
L58FB:
  DEFB $05

; Message at 58FC
L58FC:
  DEFM "GGG"

; Data block at 58FF
L58FF:
  DEFB $02,$05,$05

; Message at 5902
L5902:
  DEFM "FFF"

; Data block at 5905
L5905:
  DEFB $05,$05

; Message at 5907
L5907:
  DEFM "FFF"

; Data block at 590A
L590A:
  DEFB $02,$06

; Message at 590C
L590C:
  DEFM "FFF"

; Data block at 590F
L590F:
  DEFB $06

; Message at 5910
L5910:
  DEFM "FFF"

; Data block at 5913
L5913:
  DEFB $02

; Message at 5914
L5914:
  DEFM "FFG"

; Data block at 5917
L5917:
  DEFB $06,$46,$46,$05,$02

; Message at 591C
L591C:
  DEFM "GGG"

; Data block at 591F
L591F:
  DEFB $02,$07,$07,$07,$07,$07,$05,$05
  DEFB $07,$07,$05,$05,$07,$07,$07,$07
  DEFB $07,$07,$07,$07,$07,$07,$05,$05
  DEFB $07,$07,$05,$05,$07,$07,$07,$07
  DEFB $07,$07,$07,$07,$07,$07,$05,$07
  DEFB $07,$07,$05,$07,$07,$07,$07,$3F
  DEFB $07,$07,$07,$07,$07,$07,$05,$07
  DEFB $07,$07,$07,$05,$07,$07,$07,$07
  DEFB $07,$07,$3F,$07,$07,$07,$05,$05
  DEFB $07,$07,$05,$05,$07,$07,$07,$07
  DEFB $07,$07,$07,$07,$07,$07,$05,$05
  DEFB $07,$07,$05,$05,$07,$07,$07,$07
  DEFB $07,$07,$07,$07,$07,$07

; Message at 5985
L5985:
  DEFM "GGG"

; Data block at 5988
L5988:
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $07,$07,$07,$07

; Message at 59A4
L59A4:
  DEFM "BFFFFFFFFFFFFFFFFFFFFFF"

; Data block at 59BB
L59BB:
  DEFB $05,$07,$07,$07,$07,$07,$07,$07
  DEFB $07

; Message at 59C4
L59C4:
  DEFM "BBBBBBBBBBBBBBBBBBBBBBBB"

; Data block at 59DC
L59DC:
  DEFB $05,$07,$07,$07,$07,$07

; Message at 59E2
L59E2:
  DEFM "FDDDDDDDDDDDDDDDDDDDDDDDDDD"

; Data block at 59FD
L59FD:
  DEFB $05,$05,$07,$07,$44,$44,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$07,$07

; Message at 5A21
L5A21:
  DEFM "DDD"

; Data block at 5A24
L5A24:
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$04,$04,$04,$04,$04
  DEFB $04,$04,$04,$05,$05

; Message at 5A41
L5A41:
  DEFM "DDDFFFFFFFF"

; Data block at 5A4C
L5A4C:
  DEFB $06,$06,$46,$47,$07

; Message at 5A51
L5A51:
  DEFM "FFFFFFFFFFDDFF"

; Data block at 5A5F
L5A5F:
  DEFB $07,$05

; Message at 5A61
L5A61:
  DEFM "DDFNNFNNGGC"

; Data block at 5A6C
L5A6C:
  DEFB $06,$06,$43,$47,$07,$07

; Message at 5A72
L5A72:
  DEFM "FCGGNNFNNFDFF"

; Data block at 5A7F
L5A7F:
  DEFB $05,$05,$44,$44,$06,$0E,$0E,$0E
  DEFB $0E,$4E,$07,$07,$06,$06,$06,$43
  DEFB $47,$07,$07,$46,$43,$07,$07,$0E
  DEFB $0E,$06,$0E,$0E,$06,$06,$46,$46
  DEFB $07,$05,$05,$05,$05,$06,$06,$06
  DEFB $06,$06,$06,$06,$06,$06,$06,$05
  DEFB $47,$07,$07,$46,$05,$07,$07,$06
  DEFB $06,$06,$06,$06,$06,$06,$06,$46
  DEFB $05,$05,$05,$05,$05,$05,$06,$06
  DEFB $06,$06,$06,$06,$06,$05,$05,$07
  DEFB $05,$07,$07,$07,$05,$05,$05,$05
  DEFB $06,$06,$06,$06,$06,$06,$06,$05
  DEFB $05,$05,$05,$05,$05,$05

; Message at 5AE5
L5AE5:
  DEFM "FFFFFFFFF"

; Data block at 5AEE
L5AEE:
  DEFB $07

; Message at 5AEF
L5AEF:
  DEFM "CCC"

; Data block at 5AF2
L5AF2:
  DEFB $07

; Message at 5AF3
L5AF3:
  DEFM "CCC"

; Data block at 5AF6
L5AF6:
  DEFB $07

; Message at 5AF7
L5AF7:
  DEFM "FFFF"

; Routine at 5AFB
L5AFB:
  RLCA
  RLCA
  DEC B
  DEC B
  DEC B
  DI
  LD SP,$6000
  XOR A
  OUT ($FE),A
  LD HL,$F200
  LD B,$01
L5AFB_0:
  LD C,$00
L5AFB_1:
  LD D,C
  LD E,B
  XOR A
L5AFB_2:
  SRL D
  RRA
  DEC E
  JR NZ,L5AFB_2
  INC H
  LD (HL),A
  DEC H
  LD (HL),D
  INC HL
  INC C
  JR NZ,L5AFB_1
  INC H
  INC B
  BIT 3,B
  JR Z,L5AFB_0
  CALL $6853
  LD IX,$7796
L5AFB_3:
  LD L,(IX+$00)
  LD H,(IX+$01)
  LD A,L
  OR H
  JR Z,L5B4B
  INC IX
  INC IX
  LD C,(HL)
  INC HL
  LD E,(HL)
  INC HL
L5AFB_4:
  LD B,C
L5AFB_5:
  LD A,(HL)
  INC HL
  XOR (HL)
  LD (HL),A
  INC HL
  DJNZ L5AFB_5
  DEC E
  JR NZ,L5AFB_4
  JR L5AFB_3

; Routine at 5B4B
;
; Used by the routine at L5AFB.
L5B4B:
  LD A,$0C
  LD ($891D),A
  JP $B9B1

; Routine at 5B53
L5B53:
  LD IX,$68D7
; This entry point is used by the routine at L5B84.
L5B53_0:
  LD L,(IX+$00)
  LD H,(IX+$01)
  LD A,H
  OR L
  RET Z
  LD C,(IX+$02)
  SRL C
  LD E,(IX+$03)
  LD D,(IX+$04)
  LD A,$01
  LD ($68A5),A
L5B53_1:
  SRL C
  PUSH BC
  CALL C,$688B
  POP BC
  LD A,C
  AND A
  JR Z,L5B84
  LD A,($68A5)
  INC A
  LD ($68A5),A
  JR L5B53_1

; Routine at 5B84
;
; Used by the routine at L5B53.
L5B84:
  LD DE,$0005
  ADD IX,DE
  JR L5B53_0

; Routine at 5B8B
L5B8B:
  PUSH HL
  LD A,(HL)
  LD ($689A),A
  INC A
  LD (DE),A
  INC HL
  INC DE
  LD A,(HL)
  LD (DE),A
  INC HL
  INC DE
L5B8B_0:
  EX AF,AF'
  LD B,$00
L5B8B_1:
  PUSH BC
  PUSH DE
  LD A,(HL)
  INC HL
  LD E,(HL)
  INC HL
  LD D,$00
  LD C,D
  LD B,$00
L5B8B_2:
  SRL E
  RR D
  SRL A
  RR C
  DJNZ L5B8B_2
  LD B,A
  LD A,D
  LD ($68C9),A
  LD A,E
  LD ($68C0),A
  POP DE
  LD A,(DE)
  OR B
  LD (DE),A
  INC DE
  LD A,(DE)
  OR $00
  LD (DE),A
  INC DE
  LD A,(DE)
  OR C
  LD (DE),A
  INC DE
  LD A,(DE)
  OR $00
  LD (DE),A
  DEC DE
  POP BC
  DJNZ L5B8B_1
  INC DE
  INC DE
  EX AF,AF'
  DEC A
  JR NZ,L5B8B_0
  POP HL
  RET

; Data block at 5BD7
L5BD7:
  DEFB $16,$7B,$FF,$48,$7B,$38,$7E,$10
  DEFB $4E,$7D,$42,$7F

; Routine at 5BE3
L5BE3:
  DJNZ $5B6F
  ADD A,D
  ADC A,B
  ADD A,C
  DJNZ $5BDC
  ADD A,C
  NOP
  NOP
  INC BC
  EX AF,AF'
  INC A
  NOP
  CP $00
  CALL M,$7C00
L5BE3_0:
  JR L5BE3_0

; Data block at 5BF8
L5BF8:
  DEFB $6C,$FF,$7C,$7C

; Routine at 5BFC
L5BFC:
  JR C,L5BFC
  LD L,H
  RST $38
  LD H,(HL)
  LD A,H
L5BFC_0:
  JR L5BFC_0

; Routine at 5C04
L5C04:
  LD L,H
  RST $38
  LD H,(HL)
  INC A
L5C04_0:
  JR L5C04_0

; Data block at 5C0A
L5C0A:
  DEFB $6C,$FF,$7C,$7E

; Routine at 5C0E
L5C0E:
  JR L5C0E

; Data block at 5C10
L5C10:
  DEFB $7C,$FE,$60,$7E,$3C,$FE,$38,$F0
  DEFB $60,$7E,$00,$7C,$00,$F0,$00,$03
  DEFB $08,$7C,$00,$FE,$00,$FE,$00,$FE
  DEFB $38,$FE,$6C,$FF,$7C,$FE,$7C,$FE
  DEFB $6C,$FF,$66,$FE,$6C,$FE,$6C,$FF
  DEFB $66,$FE,$18,$FE,$6C,$FF,$7C,$FE
  DEFB $30,$FE,$7C,$FE,$60,$FE,$7C,$FE
  DEFB $38,$F0,$60,$FE,$00,$7C,$00,$F0
  DEFB $00,$02,$08,$7F,$00,$BC,$00,$7F

; Routine at 5C58
L5C58:
  INC SP
  CP H
  JR $5CDB

; Routine at 5C5C
L5C5C:
  INC SP
  CP H
  JR $5CDF

; Routine at 5C60
L5C60:
  CCF
  CP H
  JR $5CE3

; Routine at 5C64
L5C64:
  CCF
  CP H
  JR $5CE7

; Routine at 5C68
L5C68:
  INC SP
  CP H
  JR $5CEB

; Routine at 5C6C
L5C6C:
  INC SP
  CP H
  JR $5CEF

; Data block at 5C70
L5C70:
  DEFB $00,$BC,$00,$0A,$08,$7C,$00,$FE
  DEFB $38,$FE,$6C,$FE,$6C,$FE,$6C,$FE
  DEFB $6C,$FE,$38

; Routine at 5C83
L5C83:
  LD A,H
  NOP
  INC A
  NOP
  LD A,H
  JR $5D06

; Routine at 5C8A
L5C8A:
  JR C,$5D08
  JR L5CBA_0

; Routine at 5C8E
L5C8E:
  JR $5D0E

; Routine at 5C90
L5C90:
  JR L5D0F_0

; Data block at 5C92
L5C92:
  DEFB $3C,$7E,$00,$7C,$00,$FE,$38,$FE
  DEFB $7C,$FE,$6C,$FE,$18,$FE,$30,$FE
  DEFB $7C,$FE,$00,$7C,$00,$FE,$38,$FE
  DEFB $6C,$FE,$18,$FE,$18,$FE,$6C,$FE
  DEFB $38

; Routine at 5CB3
L5CB3:
  LD A,H
  NOP
  INC A
  NOP
  LD A,H
  JR $5D36

; Data block at 5CBA
L5CBA:
  DEFB $38,$FC,$28,$FE,$68,$FE,$7C,$FE
  DEFB $18,$3C,$00,$FE,$00,$FE,$7C,$FE
L5CBA_0:
  DEFB $60,$FE,$78,$FE,$0C,$FE,$6C,$FE
  DEFB $38

; Routine at 5CD3
L5CD3:
  LD A,H
  NOP
  INC A
L5CD3_0:
  NOP
  LD A,H
  JR L5CD3_0

; Data block at 5CDA
L5CDA:
  DEFB $30,$FE,$78,$FE,$6C,$FE,$6C,$FE
  DEFB $38,$7C,$00,$FE,$00,$FE,$7C,$FE
  DEFB $7C,$FE,$18,$7C,$38,$7C

; Message at 5CF0
L5CF0:
  DEFM "0x0x"

; Data block at 5CF4
L5CF4:
  DEFB $00,$7C,$00,$FE,$38,$FE,$6C,$FE
  DEFB $38,$FE,$6C,$FE,$6C,$FE,$38,$7C
  DEFB $00,$7C,$00,$FE,$38,$FE,$6C,$FE
  DEFB $6C,$FE,$3C

; Routine at 5D0F
L5D0F:
  LD A,(HL)
; This entry point is used by the routine at L5C90.
L5D0F_0:
  JR $5D8E

; Routine at 5D12
L5D12:
  JR NC,$5D8C
  NOP
  LD A,H
  AND $D2
  JP Z,$7CE6
  JR L5D45_0

; Routine at 5D1D
L5D1D:
  JR $5D37

; Routine at 5D1F
L5D1F:
  JR L5D45_1

; Data block at 5D21
L5D21:
  DEFB $7C,$FE,$C6,$1C,$70,$FE,$7C,$C6
  DEFB $1E,$1E,$C6,$7C,$0C,$1C,$34,$64
  DEFB $FE,$04,$FE,$C0

; Routine at 5D35
L5D35:
  CALL M,LB56E_6
  LD A,H
  LD C,$38
  LD L,H
  ADD A,$C6
  LD A,H
  CP $FE
  INC C
  INC C
  JR L5D45_1

; Data block at 5D45
L5D45:
  DEFB $7C,$C6,$7C,$C6,$C6,$7C,$7C,$C6
  DEFB $C6,$7E,$06,$06,$7C,$FE,$C6,$FE
L5D45_0:
  DEFB $C6,$C6,$F8,$CC,$F8,$CC,$CC,$F8
L5D45_1:
  DEFB $7C,$E6,$C0,$C0,$E6,$7C,$FC,$C6
  DEFB $C6,$C6,$C6,$FC,$FE,$C0,$F8,$F8
  DEFB $C0,$FE,$FE,$C0,$F8,$F8,$C0,$C0
  DEFB $7C,$E6,$C0,$CE,$E6,$7C,$C6,$C6
  DEFB $FE,$FE,$C6,$C6

; Message at 5D81
L5D81:
  DEFM "000000"

; Data block at 5D87
L5D87:
  DEFB $7C,$7C

; Routine at 5D89
L5D89:
  JR L5D8B_0

; Data block at 5D8B
L5D8B:
  DEFB $D8,$70,$C6,$DC,$F8,$F8,$CC,$C6
  DEFB $C0,$C0,$C0,$C0,$FE,$FE,$7C,$FE
  DEFB $D6,$D6,$D6,$D6,$FC,$FE,$C6,$C6
L5D8B_0:
  DEFB $C6,$C6,$7C,$FE,$C6,$C6,$FE,$7C
  DEFB $FC,$C6,$C6,$FC,$C0,$C0,$7C,$FE
  DEFB $C6,$C2,$F4,$7A,$FC,$C6,$C6,$F8
  DEFB $CC,$C6,$7E,$C0,$7C,$06,$FE,$FC
  DEFB $FC,$FC

; Message at 5DC5
L5DC5:
  DEFM "0000"

; Data block at 5DC9
L5DC9:
  DEFB $C6,$C6,$C6,$C6,$FE,$7E,$C6,$C6

; Message at 5DD1
L5DD1:
  DEFM "ll88"

; Data block at 5DD5
L5DD5:
  DEFB $D6,$D6,$D6,$D6,$FE,$7C,$C6

; Message at 5DDC
L5DDC:
  DEFM "l88l"

; Data block at 5DE0
L5DE0:
  DEFB $C6,$C6,$C6,$FE

; Message at 5DE4
L5DE4:
  DEFM "888"

; Data block at 5DE7
L5DE7:
  DEFB $FE

; Routine at 5DE8
L5DE8:
  CALL M,$3018
  LD A,(HL)
  CP $00
  NOP
  NOP
  NOP
  JR $5E0B

; Unused
L5DF3:
  DEFS $03

; Routine at 5DF6
L5DF6:
  JR L5E10

; Data block at 5DF8
L5DF8:
  DEFB $30,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$7E,$7E,$00,$00,$00,$00,$00
  DEFB $00,$00,$FF,$FE

; Message at 5E0C
L5E0C:
  DEFM "llll"

; Data block at 5E10
;
; Used by the routine at L5DF6.
L5E10:
  DEFB $FE,$00,$00,$FF,$00,$00,$FF,$01
  DEFB $20,$9F,$00,$00,$00,$00,$CF,$6E
  DEFB $3C,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$3C,$6E,$CF,$00,$00,$00,$00
  DEFB $9F,$01,$04

; Message at 5E3B
L5E3B:
  DEFM "EGGE"

; Data block at 5E3F
L5E3F:
  DEFB $01

; Message at 5E40
L5E40:
  DEFM " <n"

; Data block at 5E43
L5E43:
  DEFB $CF,$9F,$9F,$9F,$9F,$60,$9F,$9F
  DEFB $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
  DEFB $9F,$9F,$9F,$9F,$9F,$9F,$60,$9F
  DEFB $9F,$9F,$9F,$CF,$6E,$3C,$01,$04
  DEFB $45,$05,$05,$45,$01

; Message at 5E68
L5E68:
  DEFM " <v"

; Data block at 5E6B
L5E6B:
  DEFB $F3,$F9,$F9,$F9,$F9,$06,$F9,$F9
  DEFB $F9,$F9,$F9,$F9,$F9,$F9,$F9,$F9
  DEFB $F9,$F9,$F9,$F9,$F9,$F9,$06,$F9
  DEFB $F9,$F9,$F9,$F3,$76,$3C,$01,$04
  DEFB $45,$05,$05,$45,$01,$18,$00

; Message at 5E92
L5E92:
  DEFM "<<<<<<<"

; Data block at 5E99
L5E99:
  DEFB $00,$5E,$5E,$5E,$5E,$5E,$5E,$00

; Message at 5EA1
L5EA1:
  DEFM "<<<<<<<"

; Data block at 5EA8
L5EA8:
  DEFB $00,$01,$03,$07,$47,$07,$01,$18
  DEFB $00

; Message at 5EB1
L5EB1:
  DEFM "<<<<<<<"

; Data block at 5EB8
L5EB8:
  DEFB $00

; Message at 5EB9
L5EB9:
  DEFM "zzzzzz"

; Data block at 5EBF
L5EBF:
  DEFB $00

; Message at 5EC0
L5EC0:
  DEFM "<<<<<<<"

; Data block at 5EC7
L5EC7:
  DEFB $00,$01,$03,$07,$47,$07,$04,$08
  DEFB $9E,$FF,$FF,$6C,$9D,$FF,$FF,$6E
  DEFB $9B,$FF,$FF,$6F,$97,$FF,$FF,$6F
  DEFB $AF,$FF,$FF,$69,$D0,$00,$00,$93
  DEFB $A0,$00,$00,$96,$7F,$FF,$FF,$6C
  DEFB $04,$01,$05,$05,$05,$45,$04,$08
  DEFB $00,$00,$00,$3E,$00,$7E,$00,$7E
  DEFB $7F,$7E,$FE,$FE,$7F,$7E,$FE,$FE
  DEFB $7F,$7E,$FE,$9E,$7F,$00,$FE,$C1
  DEFB $00,$7E,$00,$61,$00,$00,$00,$3E
  DEFB $04,$01,$07,$47,$07,$45,$04,$08
  DEFB $FF,$FF,$FF,$7C,$FF,$FF,$FF,$7E
  DEFB $FF,$FF,$FF,$7F,$FF,$FF,$FF,$7F
  DEFB $FF,$FF,$FF,$79,$00,$00,$00,$83
  DEFB $00,$00,$00,$86,$FF,$FF,$FF,$7C
  DEFB $04,$01,$05,$05,$05,$45,$04,$08
  DEFB $7C,$00,$00,$00,$7E,$00,$7E,$00
  DEFB $7F,$7F,$7E,$FE,$7F,$7F,$7E,$FE
  DEFB $79,$7F,$7E,$FE,$83,$7F,$00

; Routine at 5F5E
L5F5E:
  CP $86
  NOP
  LD A,(HL)
  NOP
  LD A,H
  NOP
  NOP
  NOP
  INC B
  LD BC,$0745
  LD B,A
  RLCA
  INC B
  EX AF,AF'
  LD A,$FF
  RST $38
  RST $38
  LD A,(HL)
  RST $38
  RST $38
  RST $38
  CP $FF
  RST $38
  RST $38
  CP $FF
  RST $38
  RST $38
  SBC A,(HL)
  RST $38
  RST $38
  RST $38
  POP BC
  NOP
  NOP
  NOP
  LD H,C
  NOP
  NOP
  NOP
  LD A,$FF
  RST $38
  RST $38
  INC B
  LD BC,$0545
  DEC B
  DEC B
  INC B
  EX AF,AF'
  LD (HL),$FF
  RST $38
  LD A,C
  HALT
  RST $38
  RST $38
  CP C
  OR $FF
  RST $38
  EXX
  OR $FF
  RST $38
  JP (HL)

; Routine at 5FA7
L5FA7:
  SUB (HL)
  RST $38
  RST $38
  PUSH AF
  RET

; Data block at 5FAC
L5FAC:
  DEFB $00,$00,$0B,$69,$00,$00,$05,$36
  DEFB $FF,$FF,$FE,$04,$01,$45,$05,$05
  DEFB $05,$DB,$6C,$8F

; Message at 5FC0
L5FC0:
  DEFM "mCn"

; Data block at 5FC3
L5FC3:
  DEFB $F7,$6E,$AB,$6F,$5F,$70,$13,$71
  DEFB $C7,$71,$7B

; Message at 5FCE
L5FCE:
  DEFM "r/s"

; Data block at 5FD1
L5FD1:
  DEFB $E3,$73,$97

; Message at 5FD4
L5FD4:
  DEFM "tKu"

; Data block at 5FD7
L5FD7:
  DEFB $FF,$75,$B3,$76,$C0,$C0,$C0,$07
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $C0,$C0,$C0,$C0,$C0,$13,$12,$12
  DEFB $12,$12,$12,$12,$12,$12,$12,$13
  DEFB $C0,$C0,$C0,$13,$13,$13,$12,$12
  DEFB $12,$12,$12,$12,$12,$13,$13,$13
  DEFB $C0,$13,$13,$07,$13,$13,$14,$14
  DEFB $14,$14,$14,$13,$13,$07,$13,$13
  DEFB $12,$13,$13,$13,$15,$15,$15,$15
  DEFB $15,$15,$15,$13,$13,$13,$12,$12
  DEFB $12,$13,$15,$15,$15,$15,$15,$15
  DEFB $15,$15,$15,$13,$12,$12,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$06,$06,$06,$06,$06,$06
  DEFB $06,$06,$06,$06,$06,$C0,$C0,$C0
  DEFB $06,$06,$15,$13,$13,$C0,$C0,$C0
  DEFB $13,$13,$15,$06,$06,$C0,$06,$06
  DEFB $15,$15,$13,$13,$C0,$C0,$C0,$13
  DEFB $13,$15,$15,$06,$06,$06,$12,$15
  DEFB $15,$13,$13,$C0,$C0,$C0,$13,$13
  DEFB $15,$15,$12,$06,$12,$12,$15,$15
  DEFB $13,$13,$C0,$C0,$C0,$13,$13,$15
  DEFB $15,$12,$12,$12,$12,$15,$06,$06
  DEFB $06,$06,$06,$06,$06,$06,$06,$15
  DEFB $12,$12,$12,$12,$06,$06,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$06,$06,$12
  DEFB $12,$12,$06,$06,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$06,$06,$12
  DEFB $06,$06,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$06,$06,$06
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$06,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$06,$06,$06,$06,$06
  DEFB $2C,$C0,$C0,$C0,$2C,$06,$06,$06
  DEFB $06,$06,$C0,$C0,$C0,$C0,$C0,$2C
  DEFB $C0,$C0,$C0,$2C,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$2C,$C0
  DEFB $C0,$C0,$2C,$C0,$C0,$C0,$C0,$C0
  DEFB $C0

; Message at 6180
L6180:
  DEFM ",,,,,"

; Data block at 6185
L6185:
  DEFB $C0,$13,$C0

; Message at 6188
L6188:
  DEFM ",,,,,"

; Data block at 618D
L618D:
  DEFB $C0,$C0,$2C,$15,$C0,$C0,$C0,$13
  DEFB $13,$13,$C0,$C0,$C0,$15,$2C,$C0
  DEFB $C0,$2C,$15,$C0,$C0,$C0,$13,$13
  DEFB $13,$C0,$C0,$C0,$15,$2C,$C0,$C0

; Message at 61AD
L61AD:
  DEFM ",,,,,"

; Data block at 61B2
L61B2:
  DEFB $C0,$13,$C0

; Message at 61B5
L61B5:
  DEFM ",,,,,"

; Data block at 61BA
L61BA:
  DEFB $C0,$C0,$C0,$C0,$C0,$12,$2C,$C0
  DEFB $C0,$C0,$2C,$12,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$12,$2C,$C0,$C0
  DEFB $C0,$2C,$12,$C0,$C0,$C0,$C0

; Message at 61D9
L61D9:
  DEFM ",,,,,,"

; Data block at 61DF
L61DF:
  DEFB $C0,$C0,$C0

; Message at 61E2
L61E2:
  DEFM ",,,,,,"

; Data block at 61E8
L61E8:
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$14,$14,$13,$13,$C0,$C0,$C0
  DEFB $13,$13,$14,$14,$C0,$C0,$C0,$14
  DEFB $14,$13,$13,$06,$11,$C0,$11,$06
  DEFB $13,$13,$14,$14,$C0,$C0,$14,$13
  DEFB $13,$06,$11,$11,$C0,$11,$11,$06
  DEFB $13,$13,$14,$C0,$C0,$13,$13,$06
  DEFB $11,$11,$15,$C0,$15,$11,$11,$06
  DEFB $13,$13,$C0,$C0,$13,$06,$11,$11
  DEFB $15,$12,$C0,$12,$15,$11,$11,$06
  DEFB $13,$C0,$C0,$06,$11,$C0,$C0,$12
  DEFB $12,$C0,$12,$12,$C0,$C0,$11,$06
  DEFB $C0,$C0,$11,$11,$C0,$C0,$12,$06
  DEFB $C0,$06,$12,$C0,$C0,$11,$11,$C0
  DEFB $C0,$11,$15,$12,$12,$06,$13,$C0
  DEFB $13,$06,$12,$12,$15,$11,$C0,$C0
  DEFB $15,$12,$12,$06,$13,$13,$C0,$13
  DEFB $13,$06,$12,$12,$15,$C0,$C0,$12
  DEFB $12,$06,$13,$13,$14,$C0,$14,$13
  DEFB $13,$06,$12,$12,$C0,$C0,$12,$06
  DEFB $13,$13,$14,$14,$C0,$14,$14,$13
  DEFB $13,$06,$12,$C0,$C0,$C0,$13,$13
  DEFB $14,$14,$C0,$C0,$C0,$14,$14,$13
  DEFB $13,$C0,$C0

; Message at 62AB
L62AB:
  DEFM "...."

; Data block at 62AF
L62AF:
  DEFB $C0,$C0

; Message at 62B1
L62B1:
  DEFM "..."

; Data block at 62B4
L62B4:
  DEFB $C0,$C0

; Message at 62B6
L62B6:
  DEFM "..................."

; Data block at 62C9
L62C9:
  DEFB $C0,$C0,$C0,$C0,$2E,$C0,$C0,$C0
  DEFB $C0,$C0,$2E,$C0,$C0,$C0,$2E,$C0
  DEFB $C0,$C0,$C0,$2E,$C0,$C0,$C0,$C0
  DEFB $C0,$2E,$C0,$C0,$C0,$2E,$C0,$2E
  DEFB $11,$C0,$2E,$C0,$12,$2E,$14,$C0
  DEFB $2E,$C0,$2E,$C0,$2E,$C0,$2E,$C0
  DEFB $C0,$2E,$C0,$C0,$2E,$C0,$C0,$2E
  DEFB $15,$2E,$15,$2E,$C0,$2E,$C0,$C0
  DEFB $2E,$C0,$C0,$2E,$C0,$C0,$2E,$C0
  DEFB $2E,$C0,$2E,$C0,$2E,$C0,$11,$2E
  DEFB $12,$C0,$2E,$C0,$14,$2E,$C0,$2E
  DEFB $C0,$2E,$C0,$2E,$C0,$C0,$C0,$C0
  DEFB $C0,$2E,$C0,$C0,$C0,$C0,$2E,$C0
  DEFB $2E,$C0,$2E,$C0,$C0,$C0,$C0,$C0
  DEFB $2E,$C0,$C0,$C0,$C0,$2E,$15,$2E
  DEFB $C0

; Message at 6342
L6342:
  DEFM ".............."

; Data block at 6350
L6350:
  DEFB $C0

; Message at 6351
L6351:
  DEFM ".............."

; Data block at 635F
L635F:
  DEFB $C0,$C0,$07,$07,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$07,$07,$C0,$C0,$C0
  DEFB $07,$07,$07,$07,$07,$C0,$C0,$C0
  DEFB $07,$07,$07,$07,$07,$C0,$C0,$07
  DEFB $06,$06,$07,$07,$07,$C0,$07,$07
  DEFB $07,$06,$06,$07,$C0,$C0,$07,$06
  DEFB $15,$06,$07,$07,$C0,$07,$07,$06
  DEFB $15,$06,$07,$C0,$C0,$07,$07,$06
  DEFB $06,$07,$07,$07,$07,$07,$06,$06
  DEFB $07,$07,$C0,$C0,$C0,$07,$07,$07
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $C0,$C0,$C0,$C0,$C0,$07,$07,$07
  DEFB $07,$07,$07,$07,$07,$07,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$07,$07,$15
  DEFB $07,$15,$07,$07,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$07,$07,$07,$07,$15,$C0
  DEFB $15,$07,$07,$07,$07,$C0,$C0,$C0
  DEFB $07,$07,$07,$07,$C0,$15,$C0,$15
  DEFB $C0,$07,$07,$07,$07,$C0,$07,$07
  DEFB $07,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$07,$07,$07,$07,$07,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$07,$07,$C0,$2B,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$2B,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$2B,$C0,$C0,$C0,$C0
  DEFB $C0,$11,$11,$11,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$2B,$C0,$C0,$C0,$11,$11
  DEFB $11,$15,$11,$11,$11,$C0,$C0,$C0
  DEFB $C0,$2B,$C0,$C0,$11,$11,$15,$15
  DEFB $09,$15,$15,$11,$11,$C0,$C0,$C0
  DEFB $2B,$C0,$11,$11,$15,$15,$09,$09
  DEFB $09,$15,$15,$11,$11,$C0,$C0,$2B
  DEFB $C0,$C0,$11,$11,$15,$15,$09,$15
  DEFB $15,$11,$11,$C0,$C0,$C0,$2B,$C0
  DEFB $C0,$C0,$11,$11,$11,$15,$11,$11
  DEFB $11,$C0,$C0,$C0,$C0,$2B,$C0,$C0
  DEFB $C0,$C0,$C0,$11,$11,$11,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$2B,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$2B,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0

; Message at 64B9
L64B9:
  DEFM "++++++++++++++"

; Data block at 64C7
L64C7:
  DEFB $C0,$2B,$C0,$2B,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$2B,$C0,$2B,$C0,$C0
  DEFB $2B,$15,$2B,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$2B,$15,$2B,$C0,$C0,$2B
  DEFB $14,$2B,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$2B,$14,$2B,$C0,$C0

; Message at 64F5
L64F5:
  DEFM "+++"

; Data block at 64F8
L64F8:
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0

; Message at 64FF
L64FF:
  DEFM "+++"

; Data block at 6502
L6502:
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$08
  DEFB $08,$08,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$08,$08,$14,$14
  DEFB $14,$08,$08,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$08,$08,$14,$14,$15,$15,$15
  DEFB $14,$14,$08,$08,$C0,$C0,$C0,$C0
  DEFB $08,$08,$14,$14,$15,$15,$15,$14
  DEFB $14,$08,$08,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$08,$08,$14,$14,$14,$08,$08
  DEFB $C0,$C0,$C0,$C0,$09,$C0,$C0,$C0
  DEFB $C0,$C0,$08,$08,$08,$C0,$C0,$C0
  DEFB $C0,$C0,$09,$C0,$09,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $09,$C0,$C0,$C0,$09,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$09,$C0
  DEFB $C0,$C0,$C0,$2C,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$2C,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$2C
  DEFB $C0,$06,$C0,$2C,$C0,$C0,$C0,$C0
  DEFB $C0,$2C,$C0,$06,$C0,$2C,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$2C
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$2C,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$2D,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$08,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$2D,$C0,$C0,$C0,$2D
  DEFB $08,$06,$08,$2D,$C0,$C0,$C0,$2D
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $08,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$2D,$C0,$C0,$C0,$2D
  DEFB $C0,$C0,$C0,$2D,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $15,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $15,$C0,$C0,$C0,$C0,$C0,$15,$14
  DEFB $15,$C0,$C0,$C0,$C0,$C0,$15,$14
  DEFB $15,$C0,$C0,$C0,$15,$14,$09,$14
  DEFB $15,$C0,$C0,$C0,$15,$14,$09,$14
  DEFB $15,$C0,$15,$14,$09,$08,$09,$14
  DEFB $15,$C0,$15,$14,$09,$08,$09,$14
  DEFB $15,$C0,$15,$14,$09,$14,$15,$C0
  DEFB $C0,$C0,$15,$14,$09,$14,$15,$C0
  DEFB $C0,$C0,$15,$14,$15,$C0,$C0,$C0
  DEFB $C0,$C0,$15,$14,$15,$C0,$C0,$C0
  DEFB $C0,$C0,$15,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$15,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$2B,$2B,$C0

; Message at 66AA
L66AA:
  DEFM "+++++++++"

; Data block at 66B3
L66B3:
  DEFB $C0,$2B,$2B,$C0,$C0,$C0,$2B,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$2B,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$2B,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$2B,$C0,$C0
  DEFB $C0,$C0

; Message at 66D5
L66D5:
  DEFM "+++"

; Data block at 66D8
L66D8:
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0

; Message at 66DF
L66DF:
  DEFM "+++"

; Data block at 66E2
L66E2:
  DEFB $C0,$C0,$07,$07,$07,$07,$07,$07
  DEFB $07,$07,$07,$07,$07,$07,$07,$C0
  DEFB $C0,$07,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$07,$C0,$C0
  DEFB $07,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$07,$C0,$C0,$07
  DEFB $C0,$09,$09,$09,$09,$09,$09,$09
  DEFB $09,$09,$C0,$07,$C0,$C0,$07,$C0
  DEFB $09,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $09,$C0,$07,$C0,$C0,$07,$C0,$09
  DEFB $C0,$08,$08,$08,$08,$08,$C0,$09
  DEFB $C0,$07,$C0,$C0,$07,$C0,$09,$C0
  DEFB $08,$08,$08,$08,$08,$C0,$09,$C0
  DEFB $07,$C0,$C0,$07,$C0,$09,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$09,$C0,$07
  DEFB $C0,$C0,$07,$C0,$09,$09,$09,$09
  DEFB $09,$09,$09,$09,$09,$C0,$07,$C0
  DEFB $C0,$07,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$07,$C0,$C0
  DEFB $07,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$07,$C0,$C0,$07
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $07,$07,$07,$07,$C0,$C0,$C0,$2B
  DEFB $09,$07,$14,$C0,$C0,$C0,$14,$07
  DEFB $09,$2B,$C0,$C0,$C0,$C0,$2B,$15
  DEFB $09,$07,$14,$C0,$14,$07,$09,$15
  DEFB $2B,$C0,$C0,$C0,$C0,$C0,$2B,$15
  DEFB $09,$07,$14,$07,$09,$15,$2B,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$2B,$15
  DEFB $09,$07,$09,$15,$2B,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$2B,$15
  DEFB $09,$15,$2B,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$2B,$15,$09
  DEFB $15,$2B,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$2B,$15,$09,$15
  DEFB $2B,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$2B,$15,$09,$15,$2B
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$2B,$15,$09,$15,$2B,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$2B,$15,$09,$15,$2B,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $2B,$15,$15,$15,$2B,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0

; Message at 6841
L6841:
  DEFM "+++++"

; Data block at 6846
L6846:
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$15,$C0,$C0,$C0,$15,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$15,$C0,$15,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$14,$14,$14,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$12,$12,$12
  DEFB $12,$12,$12,$12,$12,$12,$C0,$C0
  DEFB $C0,$C0,$C0,$12,$12,$12,$12,$12
  DEFB $12,$12,$12,$12,$12,$12,$C0,$C0
  DEFB $C0,$06,$06,$13,$06,$06,$06,$13
  DEFB $06,$06,$06,$13,$06,$06,$C0,$C0
  DEFB $06,$06,$13,$06,$06,$06,$13,$06
  DEFB $06,$06,$13,$06,$06,$C0,$C0,$C0
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $07,$07,$07,$C0,$C0,$C0,$C0,$C0
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $07,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $07,$07,$07,$07,$07,$07,$07,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $07,$07,$07,$07,$07,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$15,$15,$15,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $15,$15,$15,$15,$15,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$15
  DEFB $15,$07,$15,$15,$15,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$15,$15,$15
  DEFB $07,$15,$15,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$15,$15,$15,$15
  DEFB $15,$C0,$C0,$09,$C0,$09,$C0,$09
  DEFB $C0,$09,$C0,$15,$15,$15,$15,$C0
  DEFB $C0,$C0,$09,$C0,$09,$C0,$09,$C0
  DEFB $09,$C0,$15,$15,$15,$15,$15,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$15,$15,$15,$15,$15,$15,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$15,$15,$15,$15,$15,$15,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $15,$15,$15,$15,$15,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
  DEFB $15,$15,$15,$C0,$C0,$C0,$C0,$C0
  DEFB $C0,$C0,$C0,$C0,$C0,$09,$09,$09
  DEFB $C0,$07,$C0,$C0,$08,$C0,$07,$07
  DEFB $07,$C0,$09,$09,$09,$09,$09,$C0
  DEFB $07,$C0,$C0,$08,$C0,$07,$07,$07
  DEFB $C0,$09,$09,$09,$C0,$C0,$C0,$07
  DEFB $C0,$C0,$08,$C0,$C0,$07,$C0,$C0
  DEFB $09,$C0,$09,$C0,$C0,$C0,$07,$C0
  DEFB $C0,$08,$C0,$C0,$07,$C0,$C0,$09
  DEFB $C0,$09,$C0,$C0,$C0,$07,$C0,$C0
  DEFB $08,$C0,$C0,$07,$C0,$C0,$09,$C0
  DEFB $09,$09,$09,$C0,$07,$C0,$C0,$08
  DEFB $C0,$C0,$07,$C0,$C0,$09,$09,$09
  DEFB $09,$09,$C0,$07,$C0,$C0,$08,$C0
  DEFB $C0,$07,$C0,$C0,$09,$09,$09,$C0
  DEFB $C0,$C0,$07,$C0,$C0,$08,$C0,$C0
  DEFB $07,$C0,$C0,$09,$C0,$09,$C0,$C0
  DEFB $C0,$07,$C0,$C0,$08,$C0,$C0,$07
  DEFB $C0,$C0,$09,$C0,$09,$C0,$C0,$C0
  DEFB $07,$C0,$C0,$08,$C0,$C0,$07,$C0
  DEFB $C0,$09,$C0,$09,$09,$09,$C0,$07
  DEFB $07,$C0,$08,$C0,$C0,$07,$C0,$C0
  DEFB $09,$09,$09,$09,$09,$C0,$07,$07
  DEFB $C0,$08,$C0,$C0,$07,$C0,$C0

; Routine at 6A65
L6A65:
  ADD HL,BC
  ADD HL,BC
  LD HL,$777E
  LD E,(IX+$00)
  SLA E
  LD D,$00
  ADD HL,DE
  LD A,(HL)
  INC HL
  LD H,(HL)
  LD L,A
  LD E,(IX+$01)
  SLA E
  ADD HL,DE
  LD E,(HL)
  INC HL
  LD D,(HL)
  RET

; Data block at 6A80
L6A80:
  DEFB $96,$77,$BE

; Message at 6A83
L6A83:
  DEFM "w.x"

; Data block at 6A86
L6A86:
  DEFB $D0,$77,$E6,$77,$F2,$77,$F8

; Message at 6A8D
L6A8D:
  DEFM "wVx"

; Data block at 6A90
L6A90:
  DEFB $0E

; Message at 6A91
L6A91:
  DEFM "xBx>x8"

; Data block at 6A97
L6A97:
  DEFB $7E,$4E,$7D,$F2,$7E,$A2,$7E,$42
  DEFB $7F,$8A,$82,$E0,$7F,$4A,$80,$B4
  DEFB $80,$1E,$81,$88,$81,$F2,$81,$1E
  DEFB $81,$B4,$80,$4A,$80,$E0,$7F,$E0
  DEFB $7F,$4A,$80,$B4,$80,$1E,$81,$16
  DEFB $7B,$48,$7B,$92,$7B,$DC,$7B,$26
  DEFB $7C,$70,$7C,$BA,$7C,$04,$7D,$8C
  DEFB $7A,$6C,$8B,$0C,$8C,$EA,$8C,$22
  DEFB $8B,$B0,$8B,$44,$8C,$1C,$89,$6A
  DEFB $8A,$94,$8C,$C6,$8A,$6A,$78,$D2
  DEFB $7D,$E4,$7D,$F6,$7D,$04,$7E,$14
  DEFB $7E,$26,$7E,$1C,$89,$C0,$89,$1C
  DEFB $89,$42,$83,$70,$83,$86,$83,$98
  DEFB $83,$A6,$83,$B0,$83,$06,$84,$62
  DEFB $84,$C4,$84,$2C,$85,$9A,$85,$0E
  DEFB $86,$6A,$86,$C6,$86,$22,$87,$C6
  DEFB $86,$6A,$86,$0E,$86,$78,$87,$0E
  DEFB $86,$6A,$86,$C6,$86,$E6,$87,$1C
  DEFB $88,$52,$88,$8C,$88,$CE,$88,$FC
  DEFB $7A,$ED,$68,$1F

; Message at 6B33
L6B33:
  DEFM "iQisi*z8y"

; Data block at 6B3C
L6B3C:
  DEFB $AC,$78,$BE,$7A,$00,$00,$E6,$87
  DEFB $1C,$88,$52,$88,$8C,$88,$CE,$88
  DEFB $8C,$88,$52,$88,$1C,$88,$E6,$87
  DEFB $E6,$87,$B0,$83,$06,$84,$62,$84
  DEFB $C4,$84,$2C,$85,$9A,$85,$2C,$85
  DEFB $C4,$84,$62,$84,$06,$84,$02,$10
  DEFB $7C,$00,$00,$00,$FE,$5C,$00,$00
  DEFB $7C,$38,$00,$00,$38,$00,$00,$00
  DEFB $7C,$38,$00,$00,$FE,$5C,$00,$00
  DEFB $FE,$5C,$00,$00,$FE,$5C,$F8,$00
  DEFB $FE,$5C,$70,$00,$7C,$38,$00,$00
  DEFB $38,$00,$70,$00,$00,$00,$F8,$00
  DEFB $00,$00,$F8,$00,$00,$00,$F8,$00
  DEFB $00,$00,$F8,$00,$00,$00,$70,$00
  DEFB $03,$17,$00,$00,$FF,$00,$80,$00
  DEFB $07,$00,$FF,$7F

; Routine at 6BB8
L6BB8:
  RET P
  NOP
  RRA
  INC BC
  RST $38
  POP BC
  CALL M,$3FE0
  LD C,$FF
  INC E
  CP $38
  CCF
  JR $6BC8

; Data block at 6BC9
L6BC9:
  DEFB $10,$FE,$0C,$7F,$11,$FF,$18,$FF
  DEFB $44,$7F,$32,$FF,$90,$FF,$A6,$7F
  DEFB $24,$FF,$41,$FF,$52,$FF,$22,$FF
  DEFB $9C,$FF,$02,$FF,$61,$FF,$26,$FF
  DEFB $03,$FF,$40,$FF,$4F,$FF,$01,$FF
  DEFB $4C,$FF,$5F,$FF,$19,$FF,$4C,$FF
  DEFB $5F,$FF,$19,$FF,$40,$FF,$7F,$FF
  DEFB $01,$FF,$60,$FF,$3E,$FF,$03,$FF
  DEFB $21,$FF,$1C,$FF,$42,$7F,$22,$FF
  DEFB $80,$FF,$82,$7F,$34,$FF,$5D,$FF
  DEFB $46,$7F

; Routine at 6C1B
L6C1B:
  LD (DE),A
  RST $38
  SUB B
  RST $38
  ADD A,H
  CCF
  ADD HL,DE
  RST $38
  JR $6C24

; Data block at 6C25
L6C25:
  DEFB $4C,$3F,$0E,$FF,$10,$FF,$38,$1F
  DEFB $03,$FF,$C1,$FE,$E0,$07,$00,$FF
  DEFB $7F,$F5,$00,$04,$1E,$00,$00,$FF
  DEFB $00,$80,$00,$00,$00,$07,$00,$FF
  DEFB $7F,$F0,$00,$00,$00,$1F,$03,$FF
  DEFB $F7,$FC,$E0,$00,$00,$3F,$0F,$FF
  DEFB $F7,$FE,$F8,$00,$00,$3F,$1F,$FF
  DEFB $F7,$FE,$FC,$00,$00,$7F,$1F,$FF
  DEFB $F7,$FF,$FC,$00,$00,$7F,$27,$FF
  DEFB $C1,$FF,$F2,$00,$00,$7F,$39,$FF
  DEFB $E3,$FF,$CE,$00,$00,$FF,$3E,$FF
  DEFB $B6,$FF,$BE,$80,$00,$FF,$7F,$FF
  DEFB $3E,$FF,$7F,$80,$00,$FF,$7E,$FF
  DEFB $3E,$FF,$3F,$C0,$00,$FF,$7F,$FF
  DEFB $FF,$FF,$FF,$A0,$00,$FF,$7F,$FF
  DEFB $FF,$FF,$FF,$D0,$00,$FF,$7E,$FF
  DEFB $3E,$FF,$3F,$A8,$00,$FF,$7F,$FF
  DEFB $3E,$FF,$7F,$D0,$00,$FF,$3E,$FF
  DEFB $B6,$FF,$BE,$A8,$00,$7F,$39,$FF
  DEFB $E3,$FF,$CE,$54,$00,$7F,$27,$FF
  DEFB $C1,$FF,$F2,$A8,$00,$7F,$1F,$FF
  DEFB $F7,$FF,$FC,$54,$00,$3F,$1F,$FF
  DEFB $F7,$FF,$FC,$A8,$00,$3F,$0F,$FF
  DEFB $F7,$FF,$F8,$54,$00,$1F,$03,$FF
  DEFB $F7,$FE,$E0,$A8,$00,$07,$00,$FF
  DEFB $7F,$F5,$00,$50,$00,$00,$00,$FF
  DEFB $00,$AA,$00,$A8,$00,$00,$00,$55
  DEFB $00,$55,$00,$50,$00,$00,$00,$AA
  DEFB $00,$AA,$00,$A0,$00,$00,$00,$55
  DEFB $00,$55,$00,$50,$00,$00,$00,$2A
  DEFB $00,$AA,$00,$A0,$00,$00,$00,$05
  DEFB $00,$55,$00,$40,$00,$00,$00,$00
  DEFB $00

; Routine at 6D26
L6D26:
  XOR D
  NOP
  NOP
  NOP
  LD (BC),A
  JR L6D2D_0

; Data block at 6D2D
L6D2D:
  DEFB $00,$00,$00,$78,$30,$00,$00,$FC
  DEFB $58,$00,$00,$FC,$58,$00,$00,$FC
  DEFB $58,$00,$00,$FC,$00,$00,$00,$FC
  DEFB $58,$00,$00,$FC,$58,$00,$00,$FC
  DEFB $58,$00,$00,$FC,$58,$60,$00,$FC
  DEFB $58,$F0,$00,$FC,$00,$F0,$00,$FC
L6D2D_0:
  DEFB $58,$F0,$00,$FC,$58,$F0,$00,$FC
  DEFB $58,$F0,$00,$78,$30,$F0,$00,$30
  DEFB $00,$F0,$00,$00,$00,$F0,$00,$00
  DEFB $00,$F0,$00,$00,$00,$F0,$00,$00
  DEFB $00,$F0,$00,$00,$00,$F0,$00,$00
  DEFB $00,$F0,$00,$00,$00,$60,$00,$02
  DEFB $0C,$1C,$00,$00,$00,$3E,$1C,$00
  DEFB $00,$7F,$26,$00,$00,$FF,$4F,$80
  DEFB $00,$FF,$5F,$80,$00,$FF,$7F,$F0
  DEFB $00,$7F,$3E,$F8,$00,$3F,$1C,$FC
  DEFB $00,$1D,$00,$FC,$00,$00,$00,$FC
  DEFB $00,$00,$00,$F8,$00,$00,$00,$70
  DEFB $00,$03,$0A,$30,$00,$7E,$00,$FC
  DEFB $00,$78,$30,$FF,$7E,$FE,$FC,$7E
  DEFB $30,$FF,$7E,$FE,$FC,$7F,$36,$FF
  DEFB $66,$FE,$CC,$7F,$36,$FF,$66,$FE
  DEFB $CC,$7F,$3F,$FF,$7E,$FE,$FC,$7F
  DEFB $3F,$FF,$7E,$FE,$FC,$3F,$06,$7E
  DEFB $00,$FC,$00,$0F,$06,$00,$00,$00
  DEFB $00,$06,$00,$00,$00,$00,$00,$02
  DEFB $06,$1F,$00,$FE,$00,$3F,$0B,$FF
  DEFB $F4,$3F,$1B,$FF,$F6,$3F,$1B,$FF
  DEFB $F6,$3F,$0B,$FF,$F4,$1F,$00,$FE
  DEFB $00,$02,$0C,$38,$00,$00,$00,$7C
  DEFB $38,$00,$00,$FE,$4C,$00,$00,$FE
  DEFB $5C,$00,$00,$FE,$7C,$00,$00,$7C
  DEFB $38,$00,$00,$38,$00,$00,$00,$00
  DEFB $00,$E0,$00,$01,$00,$F0,$00,$01
  DEFB $00,$F0,$00,$01,$00,$F0,$00,$00
  DEFB $00,$E0,$00,$00,$00,$00,$00,$00
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
  DEFB $00,$00,$00,$00,$00,$01,$08,$60
  DEFB $00,$F0,$40,$F0,$40,$F0,$40,$60
  DEFB $00,$F0,$A0,$F0,$A0,$F0,$A0,$01
  DEFB $08,$60,$00,$F0,$40,$F0,$40,$F0
  DEFB $40

; Routine at 70EE
L70EE:
  LD H,B
  NOP
  RET P
  LD D,B
  RET P
  LD D,B
  RET P
  LD D,B
  LD BC,$0006
  NOP
  NOP
  NOP
  JR L70FE

; Routine at 70FE
;
; Used by the routine at L70EE.
L70FE:
  INC A
  JR $713D

; Routine at 7101
L7101:
  JR L7114_0

; Unused
L7103:
  DEFS $01

; Routine at 7104
L7104:
  LD BC,$0007
  NOP
  JR L710A

; Routine at 710A
;
; Used by the routine at L7104.
L710A:
  INC A
  JR $718B

; Routine at 710D
L710D:
  INC H
  LD A,(HL)
  INC H
  INC A
  JR $712B

; Unused
L7113:
  DEFS $01

; Routine at 7114
L7114:
  LD BC,$2408
  NOP
  LD A,(HL)
  INC H
  RST $20
; This entry point is used by the routine at L7101.
L7114_0:
  LD B,D
  JP PO,$4740
  LD (BC),A
  RST $20
  LD B,D
  LD A,(HL)
  INC H
  INC H
  NOP
  LD BC,$6608
  NOP
  JP $8900

; Unused
L712D:
  DEFS $01

; Routine at 712E
L712E:
  JR NZ,L712E_0
L712E_0:
  NOP
  NOP
  ADC A,C
  NOP
  JP $6600

; Data block at 7137
L7137:
  DEFB $00,$04,$0D,$3F,$00,$FF,$00,$FF
  DEFB $00,$C0,$00,$7F,$1B,$FF,$7F,$FF
  DEFB $ED,$E0,$80,$FF,$34,$FF,$80,$FF
  DEFB $12,$F0,$C0,$FF,$64,$FF,$80,$FF
  DEFB $12,$F0,$60,$FF,$4B,$FF,$7F,$FF
  DEFB $ED,$F8,$20,$FF,$7B,$FF,$7F,$FF
  DEFB $ED,$F4,$E0,$FF,$7B,$FF,$7F,$FF
  DEFB $ED,$FA,$E0,$FF,$3B,$FF,$7F,$FF
  DEFB $ED,$F5,$C0,$7F,$1B,$FF,$7F,$FF
  DEFB $ED,$EA,$80,$3F,$00,$FF,$00,$FF
  DEFB $00,$D5,$00,$0A,$00,$AA,$00,$AA
  DEFB $00,$AA,$00,$05,$00,$55,$00,$55
  DEFB $00,$54,$00,$02,$00,$AA,$00,$AA
  DEFB $00,$A8,$00,$03,$0D,$FF,$00,$FF
  DEFB $00,$C0,$00,$7F,$7F,$FF,$ED,$E0
  DEFB $80,$7F,$00,$FF,$12,$F0,$C0,$7F
  DEFB $00,$FF,$12,$F0,$60,$7F,$7F,$FF
  DEFB $ED,$F8,$20,$7F,$7F,$FF,$ED,$F4
  DEFB $E0,$7F,$7F,$FF,$ED,$FA,$E0,$7F
  DEFB $7F,$FF,$ED,$F5,$C0,$7F,$7F,$FF
  DEFB $ED,$EA,$80,$FF,$00,$FF,$00,$D5
  DEFB $00,$AA,$00,$AA,$00,$AA,$00,$55
  DEFB $00,$55,$00,$54,$00,$AA,$00,$AA
  DEFB $00,$A8,$00,$03,$0D,$3F,$00,$FF
  DEFB $00,$FF,$00,$7F,$1B,$FF,$7F,$FF
  DEFB $FF,$FF,$34,$FF,$80,$FF,$00,$FF
  DEFB $64,$FF,$80,$FF,$00,$FF,$4B,$FF
  DEFB $7F,$FF,$FF,$FF,$7B,$FF,$7F,$FF
  DEFB $FF,$FF,$7B,$FF,$7F,$FF,$FF,$FF
  DEFB $3B,$FF,$7F,$FF,$FF,$7F,$1B,$FF
  DEFB $7F,$FF,$FF,$3F,$00,$FF,$00,$FF
  DEFB $00,$0A,$00,$AA,$00,$AA,$00,$05
  DEFB $00,$55,$00,$55,$00,$02,$00,$AA
  DEFB $00,$AA,$00,$06,$0D,$3F,$00,$FF
  DEFB $00,$FF,$00,$FF,$00,$FF,$00,$C0
  DEFB $00,$7F,$1B,$FF,$7F,$FF,$FF,$FF
  DEFB $FF,$FF,$ED,$E0,$80,$FF,$34,$FF
  DEFB $80,$FF,$00,$FF,$00,$FF,$12,$F0
  DEFB $C0,$FF,$64,$FF,$80,$FF,$00,$FF
  DEFB $00,$FF,$12,$F0,$60,$FF,$4B,$FF
  DEFB $7F,$FF,$FF,$FF,$FF,$FF,$ED,$F8
  DEFB $20,$FF,$7B,$FF,$7F,$FF,$FF,$FF
  DEFB $FF,$FF,$ED,$F4,$E0,$FF,$7B,$FF
  DEFB $7F,$FF,$FF,$FF,$FF,$FF,$ED,$FA
  DEFB $E0,$FF,$3B,$FF,$7F,$FF,$FF,$FF
  DEFB $FF,$FF,$ED,$F5,$C0,$7F,$1B,$FF
  DEFB $7F,$FF,$FF,$FF,$FF,$FF,$ED,$EA
  DEFB $80,$3F,$00,$FF,$00,$FF,$00,$FF
  DEFB $00,$FF,$00,$D5,$00,$0A,$00,$AA
  DEFB $00,$AA,$00,$AA,$00,$AA,$00,$AA
  DEFB $00,$05,$00,$55,$00,$55,$00,$55
  DEFB $00,$55,$00,$54,$00,$02,$00,$AA
  DEFB $00,$AA,$00,$AA,$00,$AA,$00,$A8
  DEFB $00,$04,$0D,$1F,$00,$FF,$00,$FF
  DEFB $00,$80,$00,$3F,$0D,$FF,$FF,$FF
  DEFB $FB,$C0,$00,$7F,$1A,$FF,$00,$FF
  DEFB $05,$E0,$80,$7F,$32,$FF,$00,$FF
  DEFB $04,$F0,$C0,$7F,$25,$FF,$FF,$FF
  DEFB $FA,$E8,$40,$7F,$3D,$FF,$FF,$FF
  DEFB $FB,$F4,$C0,$7F,$3D,$FF,$FF,$FF
  DEFB $FB,$FA,$C0,$7F,$1D,$FF,$FF,$FF
  DEFB $FB,$F4,$80,$3F,$0D,$FF,$FF,$FF
  DEFB $FB,$EA,$00,$1F,$00,$FF,$00,$FF
  DEFB $00,$D4,$00,$02,$00,$AA,$00,$AA
  DEFB $00,$AA,$00,$01,$00,$55,$00,$55
  DEFB $00,$54,$00,$00,$00,$AA,$00,$AA
  DEFB $00,$A8,$00,$04,$0D,$1F,$00,$FF
  DEFB $00,$FF,$00,$80,$00,$3F,$0D,$FF
  DEFB $FF,$FF,$FB,$C0,$00,$7F,$1A,$FF
  DEFB $00,$FF,$05,$E0,$80,$7F,$32,$FF
  DEFB $0B,$FF,$04,$F0,$C0,$7F,$25,$FF
  DEFB $F0,$FF,$FA,$E8,$40,$7F,$3D,$FF
  DEFB $FF,$FF,$FB,$F4,$C0,$7F,$3E,$FF
  DEFB $FF,$FF,$F7,$FA,$C0,$7F,$1E,$FF
  DEFB $FF,$FF,$F7,$F4,$40,$3F,$0E,$FF
  DEFB $FF,$FF,$F7,$EA,$00,$1F,$00,$FF
  DEFB $00,$FF,$00,$D4,$00,$02,$00,$AA
  DEFB $00,$AA,$00,$AA,$00,$01,$00,$55
  DEFB $00,$55,$00,$54,$00,$00,$00,$AA
  DEFB $00,$AA,$00,$A8,$00,$04,$0D,$3F
  DEFB $00,$FF,$00,$FF,$00,$C0,$00,$7F
  DEFB $1B,$FF,$F0,$FF,$FD,$E0,$80,$FF
  DEFB $34,$FF,$0B,$FF,$02,$F0,$C0,$FF
  DEFB $64,$FF,$13,$FF,$82,$F0,$60,$FF
  DEFB $4B,$FF,$E0,$FF,$7D,$F8,$20,$FF
  DEFB $7B,$FF,$FF,$FF,$FD,$F4,$E0,$FF
  DEFB $7D,$FF,$FF,$FF,$FB,$FA,$E0,$FF
  DEFB $3D,$FF,$FF,$FF,$FB,$F5,$C0,$7F
  DEFB $1E,$FF,$FF,$FF,$F7,$EA,$80,$3F
  DEFB $00,$FF,$00,$FF,$00,$D5,$00,$0A
  DEFB $00,$AA,$00,$AA,$00,$AA,$00,$05
  DEFB $00,$55,$00,$55,$00,$54,$00,$02
  DEFB $00,$AA,$00,$AA,$00,$A8,$00,$04
  DEFB $0D,$3F,$00,$FF,$00,$FF,$00,$C0
  DEFB $00,$7F,$1B,$FF,$EB,$FF,$7D,$E0
  DEFB $80,$FF,$34,$FF,$13,$FF,$82,$F0
  DEFB $C0,$FF,$64,$FF,$27,$FF,$C2,$F0
  DEFB $60,$FF,$4B,$FF,$C0,$FF,$3D,$F8
  DEFB $20,$FF,$7B,$FF,$FF,$FF,$FD,$F4
  DEFB $E0,$FF,$7D,$FF,$FF,$FF,$FB,$FA
  DEFB $E0,$FF,$3E,$FF,$FF,$FF,$F7,$F5
  DEFB $C0,$7F,$1F,$FF,$7F,$FF,$EF,$EA
  DEFB $80,$3F,$00,$FF,$00,$FF,$00,$D5
  DEFB $00,$0A,$00,$AA,$00,$AA,$00,$AA
  DEFB $00,$05,$00,$55,$00,$55,$00,$54
  DEFB $00,$02,$00,$AA,$00,$AA,$00,$A8
  DEFB $00,$04,$0D,$00,$00,$1F,$00,$80
  DEFB $00,$00,$00,$7F,$00,$FF,$0B,$FF
  DEFB $00,$E0,$00,$FF,$3B,$FF,$D3,$FF
  DEFB $BD,$F0,$C0,$FF,$64,$FF,$27,$FF
  DEFB $C2,$F0,$60,$FF,$44,$FF,$0F,$FF
  DEFB $02,$F8,$20,$FF,$7B,$FF,$F0,$FF
  DEFB $FD,$F4,$E0,$FF,$7D,$FF,$FF,$FF
  DEFB $FB,$FA,$E0,$FF,$3E,$FF,$FF,$FF
  DEFB $F7,$F5,$C0,$7F,$0F,$FF,$7F,$FF
  DEFB $EF,$EA,$00,$1F,$00,$FF,$3F,$FF
  DEFB $C0,$D5,$00,$0A,$00,$FF,$00,$EA
  DEFB $00,$AA,$00,$05,$00,$55,$00,$55
  DEFB $00,$54,$00,$02,$00,$AA,$00,$AA
  DEFB $00,$A8,$00,$00,$00,$00,$00,$00
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
  DEFB $00,$00,$00,$02,$0B,$10,$00,$00
  DEFB $00,$38,$10,$00,$00,$7C,$10,$00
  DEFB $00,$FE,$7C,$00,$00,$7C,$10,$00
  DEFB $00,$38,$10,$00,$00,$10,$00,$80
  DEFB $00,$00,$00,$80,$00,$03,$00,$E0
  DEFB $00,$00,$00,$80,$00,$00,$00,$80
  DEFB $00,$01,$0A,$20,$00

; Message at 7674
L7674:
  DEFM "p p "

; Data block at 7678
L7678:
  DEFB $F8

; Message at 7679
L7679:
  DEFM "pp r \""

; Data block at 767F
L767F:
  DEFB $00,$07,$00,$02,$00,$02,$00,$01
  DEFB $08,$20,$00,$70,$20,$F8

; Message at 768D
L768D:
  DEFM "pp  "

; Data block at 7691
L7691:
  DEFB $00,$02,$00,$07,$00,$02,$00,$01
  DEFB $06,$40,$00,$E0,$40,$E0,$40,$40
  DEFB $00,$08,$00,$08,$00,$01,$04,$40
  DEFB $00,$E0,$40,$40,$00,$10,$00,$03
  DEFB $0E,$00,$00,$7E,$00,$00,$00,$03
  DEFB $00,$FF,$5E,$C0,$00,$0F,$03,$FF
  DEFB $9F,$F0,$C0,$3F,$0E,$FF,$3F,$FC
  DEFB $F0,$7F,$38,$FF,$7F,$FE,$FC,$FF
  DEFB $70,$FF,$FF,$FF,$FE,$FF,$61,$FF
  DEFB $FF,$FF,$FE,$7F,$00,$FF,$00,$FE
  DEFB $00,$FF,$79,$FF,$E7,$FF,$9E,$FF
  DEFB $79,$FF,$E7,$FF,$9E,$FF,$79,$FF
  DEFB $E7,$FF,$9E,$7F,$00,$FF,$00,$FE
  DEFB $00,$FF,$7F,$FF,$DF,$FF,$FE,$7F
  DEFB $00,$FF,$00,$FE,$00,$03,$0F,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$7E
  DEFB $00,$00,$00,$03,$00,$FF,$3E,$C0
  DEFB $00,$0F,$03,$FF,$3F,$F0,$C0,$3F
  DEFB $0E,$FF,$7F,$FC,$F0,$7F,$38,$FF
  DEFB $7F,$FE,$FC,$FF,$70,$FF,$FF,$FF
  DEFB $FE,$7F,$00,$FF,$00,$FE,$00,$7F
  DEFB $3C,$FF,$F3,$FF,$CE,$7F,$3C,$FF
  DEFB $F3,$FF,$CE,$7F,$3C,$FF,$F3,$FF
  DEFB $CE,$7F,$00,$FF,$00,$FE,$00,$FF
  DEFB $7E,$FF,$7F,$FF,$FE,$7F,$0F,$FF
  DEFB $3F,$FE,$E0,$07,$00,$FF,$00,$E0
  DEFB $00,$03,$10,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$7E,$00,$00,$00,$03,$00,$FF
  DEFB $3E,$C0,$00,$1F,$03,$FF,$3F,$F8
  DEFB $C0,$7F,$1E,$FF,$3F,$FE,$F8,$FF
  DEFB $78,$FF,$7F,$FF,$FE,$7F,$00,$FF
  DEFB $00,$FE,$00,$7F,$1E,$FF,$79,$FF
  DEFB $E6,$7F,$1E,$FF,$79,$FF,$E6,$7F
  DEFB $1E,$FF,$79,$FF,$E6,$7F,$00,$FF
  DEFB $00,$FE,$00,$FF,$7C,$FF,$FF,$FF
  DEFB $FE,$7F,$1E,$FF,$7F,$FE,$F8,$1F
  DEFB $01,$FF,$7F,$F8,$80,$01,$00,$FF
  DEFB $00,$80,$00,$03,$11,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$01
  DEFB $00,$FF,$00,$80,$00,$1F,$01,$FF
  DEFB $7F,$F8,$80,$7F,$1E,$FF,$7F,$FE
  DEFB $F8,$FF,$7C,$FF,$FF,$FF,$FE,$7F
  DEFB $00,$FF,$00,$FE,$00,$FF,$4F,$FF
  DEFB $3C,$FF,$F2,$FF,$4F,$FF,$3C,$FF
  DEFB $F2,$FF,$4F,$FF,$3C,$FF,$F2,$7F
  DEFB $00,$FF,$00,$FE,$00,$FF,$78,$FF
  DEFB $7F,$FF,$FE,$7F,$1E,$FF,$3F,$FE
  DEFB $F8,$1F,$03,$FF,$3F,$F8,$C0,$03
  DEFB $00,$FF,$3F,$C0,$00,$00,$00,$7E
  DEFB $00,$00,$00,$03,$12,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$07,$00,$FF
  DEFB $00,$E0,$00,$7F,$07,$FF,$3F,$FE
  DEFB $E0,$FF,$7E,$FF,$7F,$FF,$FE,$7F
  DEFB $00,$FF,$00,$FE,$00,$FF,$67,$FF
  DEFB $9E,$FE,$78,$FF,$67,$FF,$9E,$FE
  DEFB $78,$FF,$67,$FF,$9E,$FE,$78,$7F
  DEFB $00,$FF,$00,$FE,$00,$FF,$70,$FF
  DEFB $FF,$FF,$FE,$7F,$38,$FF,$7F,$FE
  DEFB $FC,$3F,$0E,$FF,$7F,$FC,$F0,$0F
  DEFB $03,$FF,$3F,$F0,$C0,$03,$00,$FF
  DEFB $3E,$C0,$00,$00,$00,$7E,$00,$00
  DEFB $00,$03,$13,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$7F,$00,$FF,$00,$FE,$00,$FF
  DEFB $7F,$FF,$DF,$FF,$FE,$7F,$00,$FF
  DEFB $00,$FE,$00,$FF,$73,$FF,$CF,$FE
  DEFB $3C,$FF,$73,$FF,$CF,$FE,$3C,$FF
  DEFB $73,$FF,$CF,$FE,$3C,$7F,$00,$FF
  DEFB $00,$FE,$00,$FF,$61,$FF,$FF,$FF
  DEFB $FE,$FF,$70,$FF,$FF,$FF,$FE,$7F
  DEFB $38,$FF,$7F

; Routine at 78F4
L78F4:
  CP $FC
  CCF
  LD C,$FF
  CCF
  CALL M,$0FF0
  INC BC
  RST $38
  SBC A,A
  RET P
  RET NZ
  INC BC
  NOP
  RST $38
  LD E,(HL)
  RET NZ
  NOP
  NOP
  NOP
  LD A,(HL)
  NOP
  NOP
  NOP
  INC BC
  RRCA
  RET P
  NOP
  JR L7914

; Routine at 7914
;
; Used by the routine at L78F4.
L7914:
  LD C,$00
  CP $70
  INC A
  JR $799A

; Data block at 791B
L791B:
  DEFB $0E,$7F,$3E,$7E,$3C,$FE,$7C,$3F
  DEFB $1F,$FF,$5A,$FC,$F8,$1F,$07,$FF
  DEFB $66,$F8,$E0,$07,$01,$FF,$99,$E1
  DEFB $80,$29,$00,$FF,$5A,$8A,$00,$15
  DEFB $00,$FF,$99,$94,$00,$09,$00,$FF
  DEFB $91,$A8,$00,$03,$01,$95,$00,$D0
  DEFB $80,$01,$00,$2A,$00,$A0,$00,$00
  DEFB $00,$15,$00,$50,$00,$00,$00,$08
  DEFB $00,$08,$00,$00,$00,$10,$00,$10
  DEFB $00,$00,$00

; Routine at 7966
L7966:
  EX AF,AF'
  NOP
  EX AF,AF'
  NOP
  INC BC
  RRCA
  NOP
  NOP
  JR L7970

; Unused
;
; Used by the routine at L7966.
L7970:
  DEFS $04

; Routine at 7974
L7974:
  INC A
  JR L7977

; Data block at 7977
;
; Used by the routine at L7974.
L7977:
  DEFB $00,$00,$00,$7E,$3C,$00,$00,$01
  DEFB $00,$FF,$5A,$80,$00,$1F,$01,$FF
  DEFB $7E,$F8,$80,$3F,$1F,$FF,$A5,$FC
  DEFB $F8,$7F,$3F,$FF,$5A,$FE,$FC,$FF
  DEFB $60,$FF,$5A,$FF,$06,$64,$00,$FF
  DEFB $4A,$56,$00,$0B,$00,$CB,$81,$AA
  DEFB $00,$14,$00,$95,$00,$55,$00,$02
  DEFB $00,$AA,$00,$4A,$00,$01,$00,$11
  DEFB $00,$20,$00,$00,$00,$00,$00,$40
  DEFB $00,$00,$00

; Routine at 79C2
L79C2:
  DJNZ L79C2_0
L79C2_0:
  JR NZ,L79C2_1
L79C2_1:
  INC BC
  RRCA
  NOP
  NOP
  JR L79CC

; Unused
;
; Used by the routines at L79C2 and L79FF.
L79CC:
  DEFS $04

; Routine at 79D0
L79D0:
  INC A
  JR L79D3

; Unused
;
; Used by the routine at L79D0.
L79D3:
  DEFS $03

; Routine at 79D6
L79D6:
  LD A,(HL)
  INC A
  NOP
  NOP
  LD BC,$FF00
  LD E,D
  ADD A,B
  NOP
  RLCA
  LD BC,$7EFF
  RET PO
  ADD A,B
  RRCA
  RLCA
  RST $38
L79D6_0:
  AND L
  RET P
  RET PO
  RRA
  RRCA
  RST $38
; This entry point is used by the routine at L7A2A.
L79D6_1:
  JR L79D6_0

; Routine at 79F1
L79F1:
  RET P
  CCF
  INC E
  RST $38
  LD E,D
  CALL M,$3C38
  JR $79FA

; Routine at 79FB
L79FB:
  LD C,D
  CP H
  JR L7A78

; Routine at 79FF
L79FF:
  JR NC,L79CC
  ADD A,C
  SBC A,(HL)
  INC C
  INC (HL)
  NOP
  SUB L
  NOP
  LD C,H
  NOP
  LD A,(BC)
  NOP
  XOR D
  NOP
  XOR D
  NOP
  DEC D
  NOP
  LD D,L
  NOP
  LD D,L
  NOP
  NOP
  NOP
  JR NZ,L79FF_0
L79FF_0:
  ADD A,B
  NOP
  NOP
  NOP
  JR NZ,L79FF_1
L79FF_1:
  ADD A,B
  NOP
  INC BC
  RRCA
  NOP
  NOP
  JR L7A28

; Unused
;
; Used by the routine at L79FF.
L7A28:
  DEFS $02

; Routine at 7A2A
;
; Used by the routine at L7A52.
L7A2A:
  INC BC
  NOP
  INC A
  JR L79D6_1

; Unused
L7A2F:
  DEFS $01

; Routine at 7A30
L7A30:
  RLCA
  INC BC
  RST $38
  INC A
  RET PO
  RET NZ
  RRCA
  RLCA
  RST $38
  LD E,D
  RET P
  RET PO
  RRA
  LD C,$FF
  AND L
  JP M,$1E70
  INC C
  RST $38
  JR $7AC0

; Data block at 7A47
L7A47:
  DEFB $30,$1E,$0C,$FF

; Message at 7A4B
L7A4B:
  DEFM "Zz0>"

; Data block at 7A4F
L7A4F:
  DEFB $1C,$FF,$52

; Routine at 7A52
L7A52:
  LD A,L
  JR C,$7A92
  JR L7A2A

; Routine at 7A57
L7A57:
  ADD A,C
  CP (HL)
  JR L7A90_0

; Data block at 7A5B
L7A5B:
  DEFB $10,$95,$00,$5D,$08,$15,$00,$2A
  DEFB $00,$AA,$00,$0A,$00,$45,$00,$51
  DEFB $00,$04,$00,$20,$00,$20,$00,$00
  DEFB $00,$10,$00,$40,$00

; Routine at 7A78
;
; Used by the routine at L79FB.
L7A78:
  INC BC
  LD (DE),A
  JR NC,L7A78_0
L7A78_0:
  NOP
  NOP
  INC C
  NOP
  LD A,B
  JR NC,L7A78_1
L7A78_1:
  NOP
  LD E,$0C
  INC A
  JR L7A89

; Unused
;
; Used by the routine at L7A78.
L7A89:
  DEFS $01

; Routine at 7A8A
L7A8A:
  INC A
  JR L7A97_0

; Routine at 7A8D
L7A8D:
  INC C
  JR L7A90

; Routine at 7A90
;
; Used by the routine at L7A8D.
L7A90:
  LD A,B
  JR NC,L7A97_1
  LD C,$3C
; This entry point is used by the routine at L7A57.
L7A90_0:
  JR L7A90

; Routine at 7A97
L7A97:
  LD (HL),B
  CPL
  RLCA
  RST $38
  INC A
  JP P,$17E0
  INC BC
  RST $38
  LD E,D
  PUSH HL
  RET NZ
  CPL
  INC BC
  RST $38
  LD A,(HL)
  JP PE,$13C0
; This entry point is used by the routine at L7A8A.
L7A97_0:
  LD BC,LA559_7
  CALL NC,$0980
  NOP
; This entry point is used by the routine at L7A90.
L7A97_1:
  RST $38
  LD E,D
  XOR B
  NOP
  DEC B
  NOP
  LD A,(HL)
  JR L7ABB_0

; Data block at 7ABB
L7ABB:
  DEFB $00,$02,$00,$FF,$52,$28,$00,$01
  DEFB $00,$D3,$81,$D0,$00,$01,$00,$D7
  DEFB $81,$A0,$00,$00,$00,$A9,$00,$40
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$20,$00,$40,$00,$00,$00,$10
  DEFB $00,$20,$00,$02,$0D,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$02,$00,$40,$00,$0C,$00,$E8
  DEFB $40,$1F,$0C,$E0,$C0,$1F,$0F,$F0
  DEFB $C0,$0F,$07,$F8,$70,$17,$02,$FC
L7ABB_0:
  DEFB $38,$0F,$07,$F8,$E0,$1F,$0E,$F0
  DEFB $C0,$0E,$00,$E0,$40,$01,$00,$40
  DEFB $00,$02,$0D,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$02,$00,$40,$00

; Routine at 7B2A
L7B2A:
  JR L7B2C

; Data block at 7B2C
;
; Used by the routine at L7B2A.
L7B2C:
  DEFB $E8,$40

; Routine at 7B2E
L7B2E:
  CCF
  JR $7B11

; Data block at 7B31
L7B31:
  DEFB $C0,$3F,$1E,$FC,$E0,$1F,$0F,$FE
  DEFB $BC,$0F,$06,$FC,$38,$27,$03,$F8
  DEFB $70,$0F,$07,$F4,$E0,$0F,$07,$F8
  DEFB $70,$1F,$0C,$78,$30,$0C,$00,$B0
  DEFB $00,$02,$0E,$00,$00,$20,$00,$08
  DEFB $00,$70,$20,$00,$00,$F4,$60,$1F
  DEFB $00,$F0,$E0,$3F,$1F,$F2,$E0,$1F
  DEFB $0F,$FC,$30,$0F,$06,$FE,$5C,$17
  DEFB $02,$FC,$38,$0F,$07,$F8,$A0,$5F
  DEFB $0F,$F4,$E0,$1F,$0E,$F8,$70,$3E
  DEFB $18,$7A,$30,$19,$00,$38,$10,$00
  DEFB $00,$10,$00,$02,$10,$00,$00,$80
  DEFB $00,$49,$00,$D2,$80,$03,$01,$E4
  DEFB $C0,$7F,$03,$E0,$C0,$FF,$7B,$FE
  DEFB $60,$7F,$3E,$FF,$7E,$7F,$38,$FE
  DEFB $9C,$3F,$15,$FC,$38,$BF,$1A,$F8
  DEFB $70,$1F,$0C,$FA,$B0,$5F,$0D,$FC
  DEFB $B8,$3F,$1F,$FC,$F8,$3F,$1E,$FE
  DEFB $FC,$7E,$3C,$FE,$3C,$7D,$30,$3E
  DEFB $0C,$30,$00,$0C,$00,$02,$13,$40
  DEFB $00,$40,$00,$00,$00,$E4,$40,$11
  DEFB $00,$E1,$C0,$43,$01,$F4,$E0,$13
  DEFB $01,$F0,$E0,$7F,$03,$F8,$60,$FF
  DEFB $7F,$FE,$78,$FF,$7E,$FF,$7E,$7F
  DEFB $32,$FE,$8C,$7F,$39,$FC,$58,$3F
  DEFB $1E,$FD,$B8,$9F,$0D,$FA,$70,$1F
  DEFB $0A,$FC,$B8,$3F,$1B,$FC,$D8,$7F
  DEFB $3F,$FE,$7C,$7F,$3E,$7F,$3E,$FE
  DEFB $78,$3F,$0E,$F9,$60,$4F,$02,$60
  DEFB $00,$02,$00,$03,$1B,$0C,$00,$01
  DEFB $00,$80,$00,$1E,$04,$FB,$00,$C0
  DEFB $80,$3F,$16,$FF,$FA,$E0,$C0,$7F
  DEFB $27,$FF,$74,$F0,$E0,$7F,$27,$FF
  DEFB $04,$F0,$E0,$FF,$47,$DF,$88,$F8
  DEFB $F0,$FF,$4F,$FF,$89,$F8,$F0,$FF
  DEFB $4F,$FF,$A9,$F8,$F0,$7F,$30,$FF
  DEFB $26,$F0,$00,$FF,$4F,$FF,$89,$F8
  DEFB $F0,$FF,$4F,$DF,$89,$F8,$F0,$7F
  DEFB $00,$8F,$00,$F0,$00,$1C,$00,$01
  DEFB $00,$80,$00,$3E,$1C,$03,$01,$C0
  DEFB $80,$7F,$1E,$03,$01,$E0,$40,$7F
  DEFB $36,$07,$02,$E0,$80,$7F,$2B,$87
  DEFB $00,$F0,$20,$FF,$53,$87,$02,$E0
  DEFB $80,$7F,$09,$83,$00,$E0,$40,$7F
  DEFB $22,$83,$01,$C0,$00,$7F,$10,$81
  DEFB $00,$C0,$80,$7F,$29,$81,$00,$C0
  DEFB $00,$3F,$00,$81,$00,$C0,$80,$3F
  DEFB $15,$80,$00,$80,$00,$1F,$00,$00
  DEFB $00,$00,$00,$1F,$04,$00,$00,$00
  DEFB $00,$0E,$00,$00,$00,$00,$00,$03
  DEFB $1C,$0C,$00,$01,$00,$80,$00,$1E
  DEFB $04,$FB,$00,$C0,$80,$3F,$16,$FF
  DEFB $FA,$E0,$C0,$7F,$27,$FF,$74,$F0
  DEFB $E0,$7F,$27,$FF,$04,$F0,$E0,$FF
  DEFB $47,$DF,$88,$F8,$F0,$FF,$4F,$FF
  DEFB $89,$F8,$F0,$FF,$4F,$FF,$A9,$F8
  DEFB $F0,$7F,$30,$FF,$26,$F0,$00,$FF
  DEFB $4F,$FF,$89,$F8,$F0,$FF,$4F,$DF
  DEFB $89,$F8,$F0,$7F,$00,$8F,$00,$F0
  DEFB $00,$0C,$00,$01,$00,$C0,$00,$1E
  DEFB $0C,$03,$01,$E0,$C0,$3E,$14,$07
  DEFB $02,$F0,$A0,$3F,$0A,$07,$01,$F8
  DEFB $70,$7F,$20,$0F,$06,$F8,$A0,$7F
  DEFB $0A,$0F,$02,$F8,$80,$3E,$10,$0F
  DEFB $04,$F8,$50,$3E,$04,$0F,$01,$F0
  DEFB $00,$1C,$08,$0F,$04,$F0,$40,$1C
  DEFB $00,$0F,$00,$F0,$A0,$1C,$08,$07
  DEFB $01,$E0,$00,$08,$00,$07,$00,$E0
  DEFB $40,$00,$00,$03,$01,$E0,$00,$00
  DEFB $00,$03,$00,$C0,$00,$00,$00,$01
  DEFB $00,$C0,$80,$00,$00,$00,$00,$80
  DEFB $00,$03,$0F,$00,$00,$00,$00,$70
  DEFB $00,$38,$00,$20,$00,$F8,$70,$7C

; Message at 7D79
L7D79:
  DEFM "8q "

; Data block at 7D7C
L7D7C:
  DEFB $FC,$98,$FF,$4C,$FB,$31,$FE,$3C
  DEFB $FF,$5D,$FF,$F9,$FE,$7C,$FF,$7C
  DEFB $FB,$31,$FE,$FC,$7C

; Message at 7D91
L7D91:
  DEFM "8q "

; Data block at 7D94
L7D94:
  DEFB $FC,$F8,$38,$00,$20,$00,$F8,$70
  DEFB $7F,$00,$DD,$00,$FC,$00,$FF,$77
  DEFB $FF,$DD,$FE,$D4,$FF,$45,$FF,$55
  DEFB $FE,$14,$FF,$75,$FF,$5D,$FE,$DC
  DEFB $7F,$15,$FF,$54,$FE,$54,$FF,$74
  DEFB $FF,$55,$FE,$D4,$74,$00,$55,$00
  DEFB $D4,$00,$03,$0F,$0F,$00,$FF,$00
  DEFB $F0,$00,$1F,$0F,$FF,$FF,$F8,$F0
  DEFB $1F,$0D,$FF,$AB,$F8,$70,$3F,$1D
  DEFB $FF,$6B,$FC,$78,$3F,$1C,$FF,$EB
  DEFB $FC,$78,$7F,$3D,$FF,$6B,$FE,$7C
  DEFB $7F,$3D,$FF,$A9,$FE,$3C,$FF,$7F
  DEFB $FF,$FF,$FF,$FE,$FF,$45,$FF,$A2
  DEFB $FF,$22,$FF,$55,$FF,$AE,$FF,$AE
  DEFB $FF,$45,$FF,$A2,$FF,$A2,$FF,$55
  DEFB $FF,$AE,$FF,$BA,$FF,$54,$FF,$A2
  DEFB $FF,$A2,$FF,$7F,$FF,$FF,$FF,$FE
  DEFB $7F,$00,$FF,$00,$FE,$00,$03,$0C
  DEFB $00,$00,$00,$00,$60,$00,$00,$00
  DEFB $30,$00,$F0,$60,$00,$00,$F9,$30
  DEFB $F8,$70,$03,$00,$FF,$F1,$FC,$B8
  DEFB $07,$03,$FF,$E6,$FC,$D8,$7F,$07
  DEFB $FF,$83,$FC,$58,$FF,$6F,$FF,$FC
  DEFB $FC,$38,$FF,$0F,$FF,$FF,$F8,$F0
  DEFB $FF,$6F,$FF,$FF,$F0,$E0,$FF,$6F
  DEFB $FF,$FF,$E0,$C0,$FF,$6F,$FF,$FE
  DEFB $C0,$00,$6F,$00,$FE,$00,$00,$00
  DEFB $03,$0B,$3F,$00,$FF,$00,$F0,$00
  DEFB $7F,$37,$FF,$FF,$F8,$B0,$FF,$48
  DEFB $FF,$00,$FC,$48,$FF,$48,$FF,$00
  DEFB $FC,$48,$7F,$17,$FF,$FF,$F8,$A0
  DEFB $7F,$30,$FF,$FC,$F8,$30,$FF,$7F
  DEFB $FF,$7B,$FC,$F8,$7F,$30,$FF,$FC
  DEFB $F8,$30,$3F,$17,$FF,$FF,$F0,$A0
  DEFB $1F,$0F,$FF,$FF,$E0,$C0,$0F,$00
  DEFB $FF,$00,$C0,$00,$03,$0F,$1C,$00
  DEFB $00,$00,$00,$00,$3E,$1C,$00,$00
  DEFB $00,$00,$7F,$22,$08,$00,$00,$00
  DEFB $FF,$4F,$9C,$08,$00,$00,$FF,$5F
  DEFB $9C,$08,$80,$00,$FF,$5F,$9D,$08
  DEFB $C0,$80,$7F,$3E,$39,$10,$C8,$80
  DEFB $3E,$1C,$39,$10,$DC,$88,$3C,$00
  DEFB $13,$01,$9C,$08,$7F,$3C,$01,$00
  DEFB $38,$10,$7F,$21,$9C,$00,$10,$00
  DEFB $7F,$3D,$BF,$1C,$F0,$00,$3F,$05
  DEFB $FF,$15,$F8,$50,$7F,$3D,$FF,$DD
  DEFB $F8,$F0,$3F,$00,$FF,$00,$F0,$00
  DEFB $03,$09,$3F,$00,$FF,$00,$C0,$00
  DEFB $7F,$3E,$FF,$B7,$E0,$C0,$FF,$41
  DEFB $FF,$38,$F0,$20,$FF,$42,$FF,$7C
  DEFB $F0,$20,$7F,$3C,$FF,$03,$E0,$C0
  DEFB $7F,$3F,$FF,$FF,$E0,$C0,$3F,$1F
  DEFB $FF,$FF,$C0,$80,$1F,$0F,$FF,$FF
  DEFB $80,$00,$0F,$00,$FF,$00,$00,$00
  DEFB $03,$0D,$3F,$00,$FF,$00,$80,$00
  DEFB $7F,$37,$FF,$FD,$C0,$80,$FF,$40
  DEFB $FF,$01,$E0,$C0,$FF,$37,$FF,$FD
  DEFB $E0,$C0,$FF,$77,$FF,$FD,$E0,$C0
  DEFB $7F,$37,$FF,$FD,$C0,$80,$3F,$00
  DEFB $FF,$00,$80,$00,$02,$00,$1C,$08
  DEFB $00,$00,$07,$02,$3E,$18,$00,$00
  DEFB $0F,$07,$9C,$08,$00,$00,$07,$02
  DEFB $1C,$08,$00,$00,$02,$00,$3E,$1C
  DEFB $00,$00,$00,$00,$1C,$00,$00,$00
  DEFB $03,$0E,$7F,$00,$FF,$00,$FC,$00
  DEFB $FF,$7F,$FF,$FF,$FE,$FC,$FF,$42
  DEFB $FF,$10,$FE,$84,$FF,$5E,$FF,$D6
  DEFB $FE,$B4,$FF,$42,$FF,$D6,$FE,$B4
  DEFB $FF,$7A,$FF,$D6,$FE,$B4,$FF,$42
  DEFB $FF,$10,$FE,$84,$FF,$7F,$FF,$FF
  DEFB $FE,$FC,$7F,$1F,$FF,$FF,$FC,$F0
  DEFB $1F,$07,$FF,$FF,$F0,$C0,$07,$01
  DEFB $FF,$FF,$C0,$00,$01,$00,$FF,$7C
  DEFB $00,$00,$00,$00,$7C,$10,$00,$00
  DEFB $00,$00,$10,$00,$00,$00,$03,$0F
  DEFB $00,$00,$20,$00,$00,$00,$00,$00
  DEFB $70,$20,$00,$00,$1F,$00,$FF,$70
  DEFB $C0,$00,$3F,$1E,$FF,$FB,$E0,$C0
  DEFB $3F,$1C,$FF,$21,$E0,$C0,$3F,$1C
  DEFB $FF,$21,$E0,$C0,$3F,$12,$FF,$22
  DEFB $E0,$40,$1B,$01,$FE,$04,$40,$00
  DEFB $01,$00,$FC,$00,$00,$00,$00,$00
  DEFB $F8,$70,$00,$00,$01,$00,$FC,$98
  DEFB $00,$00,$01,$00,$FC,$B8,$00,$00
  DEFB $01,$00,$FC,$B8,$00,$00,$00,$00
  DEFB $F8,$70,$00,$00,$00,$00,$70,$00
  DEFB $00,$00,$00,$00

; Routine at 8048
L8048:
  RLA
  ADC A,(HL)
  NOP
  ADD A,B
  LD A,$1E
  LD ($7939),A
  LD A,($B7EA)
  ADD A,A
  LD HL,$8E06
  CALL $B5BB
  LD E,(HL)
  INC HL
  LD D,(HL)
  PUSH DE
  POP IY
  LD A,(IY+$00)
  LD ($8DB7),A
  AND A
  RET Z
  LD IX,$8DB8
L8048_0:
  PUSH AF
  LD (IX+$01),$06
  LD L,(IY+$01)
  LD H,(IY+$02)
  INC IY
  INC IY
  LD (IX+$02),L
  LD (IX+$04),H
  CALL $B684
  CALL $9910
  LD A,(IX+$04)
  ADD A,$05
  LD (IX+$04),A
  CALL L8EA4_0
  LD A,($8D48)
  RRA
  JR C,L8048_1
  LD (IX+$01),$07
  CALL $9910
L8048_1:
  LD A,(IX+$02)
  ADD A,$05
  LD (IX+$02),A
  LD DE,$0010
  ADD IX,DE
  POP AF
  DEC A
  JR NZ,L8048_0
  LD A,$17
  LD ($7939),A
  RET

; Data block at 80B7
L80B7:
  DEFB $00,$03,$06,$00,$00,$00,$00,$00
  DEFB $00,$04,$1E,$00,$00,$0F,$0E,$00
  DEFB $00,$03,$06,$00,$00,$00,$00,$00
  DEFB $00,$04,$1E,$00,$00,$0F,$0E,$00
  DEFB $00,$03,$06,$00,$00,$00,$00,$00
  DEFB $00,$04,$1E,$00,$00,$0F,$0E,$00
  DEFB $00,$03,$06,$00,$00,$00,$00,$00
  DEFB $00,$04,$1E,$00,$00,$0F,$0E,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$6C
  DEFB $8E,$6D,$8E,$6C,$8E,$69,$8E,$68
  DEFB $8E,$61,$8E,$5C,$8E,$55,$8E,$4C
  DEFB $8E,$49,$8E,$44,$8E,$3D,$8E,$34
  DEFB $8E,$2B,$8E,$26,$8E,$26,$8E,$02
  DEFB $4C,$82,$9C,$82,$04,$8C,$24,$C4
  DEFB $24,$8C,$64,$C4,$64,$04,$10,$20
  DEFB $D8,$20,$18,$6C,$D0,$6C,$03,$74
  DEFB $08,$20,$44,$C8,$44,$02,$5C,$84
  DEFB $8C,$84,$01,$74,$44,$04,$40

; Routine at 814E
L814E:
  INC A
  XOR B
  INC A
  LD D,H
  LD L,H
  SUB H
  LD L,H
  INC BC
  LD (HL),H
  JR $81A5

; Routine at 8159
L8159:
  LD (HL),H
  SBC A,H
  LD (HL),H
  LD (BC),A
  JR NC,L81B4_0
  RET C
  LD E,H
  INC BC
  LD (HL),H
  DJNZ L8159_2
  LD (HL),E
  AND B
  LD (HL),E
  NOP
  LD BC,$7C74
  NOP
  LD BC,$2C74
  NOP
  NOP
  LD A,($8DB7)
  AND A
  RET Z
  DEC A
  LD B,A
L8159_0:
  PUSH BC
  CALL L8EA4_0
  LD A,($8D48)
  AND $03
  POP BC
  CP B
  JR Z,L8159_1
  JR NC,L8159_0
L8159_1:
  ADD A,A
  ADD A,A
  ADD A,A
  ADD A,A
  LD HL,$8DB8
  CALL $B5BB
  LD ($8E70),HL
  PUSH HL
  POP IX
  LD A,(IX+$01)
  XOR $01
  LD (IX+$01),A
  LD A,(IX+$02)
  PUSH AF
  SUB $05
  LD (IX+$02),A
  CALL $9910
  POP AF
L8159_2:
  LD (IX+$02),A
  CALL $C151
  RET

; Routine at 81B4
L81B4:
  LD DE,($8D48)
  LD HL,($8D4A)
; This entry point is used by the routine at L8159.
L81B4_0:
  LD A,(HL)
  ADD A,$05
  LD B,A
  LD A,($8ED9)
  ADD A,B
  ADD A,E
  LD E,A
  LD A,(HL)
  CPL
  ADD A,$16
  ADD A,D
  ADD A,L
  LD D,A
  LD ($8D48),DE
  INC HL
  LD A,H
  AND $9F
  LD H,A
  LD ($8D4A),HL
  RET

; Routine at 81D9
L81D9:
  LD B,$36
  NOP
  INC HL
  DJNZ $81DA
  RET

; Data block at 81E0
L81E0:
  DEFB $15,$C0,$E8,$8E,$10,$8F,$38,$8F
  DEFB $02,$10,$00,$00,$FF,$FE,$BB,$BA
  DEFB $FF,$FE,$FF,$FE,$BF,$FA,$FB,$FE
  DEFB $FB,$FE,$BB,$FA,$FB,$FE,$F8,$3E
  DEFB $BF,$FA,$FF,$FE,$FF,$FE,$BB,$BA
  DEFB $FF,$FE,$02,$02

; Message at 820C
L820C:
  DEFM "DDDD"

; Data block at 8210
L8210:
  DEFB $02,$10,$F7,$F7,$F7,$F7,$EF,$FB
  DEFB $EF,$FB,$DF,$FD,$DF,$FD,$BF,$FE
  DEFB $7F,$FF,$BF,$FE,$DF,$FD,$DF,$FD
  DEFB $EF,$FB,$EF,$FB,$F7,$F7,$F7,$F7
  DEFB $F8,$0F,$02,$02

; Message at 8234
L8234:
  DEFM "EEEE"

; Data block at 8238
L8238:
  DEFB $02,$10,$D7,$D7,$BB,$BB,$7D,$7D
  DEFB $FE,$FE,$7F,$FD,$BF,$FB,$DF,$F7
  DEFB $EF,$EF,$DF,$F7,$BF,$FB,$7F,$FD
  DEFB $FE,$FE,$7D,$7D,$BB,$BB,$D7,$D7
  DEFB $EF,$EF,$02,$02

; Message at 825C
L825C:
  DEFM "GGGG"

; Routine at 8260
L8260:
  LD HL,$A458
  CALL $B57D
  LD C,$20
L8260_0:
  LD B,$0A
  PUSH HL
L8260_1:
  LD (HL),$00
  INC L
  DJNZ L8260_1
  POP HL
  CALL LB56E
  DEC C
  JR NZ,L8260_0
  LD A,($B7EB)
  INC A
  LD B,A
  XOR A
L8260_2:
  ADD A,$01
  DAA
  DJNZ L8260_2
  LD B,A
  RRA
  RRA
  RRA
  RRA
  AND $0F
  LD ($8FC3),A
  LD A,B
  AND $0F
  LD ($8FC4),A
  LD A,($B7E6)
  INC A
  LD ($8FB8),A
  LD DE,$8FAD
  LD B,$02
  CALL LB56E_0
  LD A,($B7E5)
  CP $02
  RET NZ
  LD DE,$8FC5
  JP LB4CF_1

; Data block at 82AD
L82AD:
  DEFB $60,$8F,$47,$08,$19,$15,$0A,$22
  DEFB $0E,$1B,$26,$00,$60

; Routine at 82BA
L82BA:
  SBC A,(HL)
  LD B,A
  EX AF,AF'
  DEC DE
  JR $82DE

; Routine at 82C0
L82C0:
  RLA
  DEC C
  LD H,$00
  NOP
  LD H,B
  ADC A,A
  LD B,A
  EX AF,AF'
  DJNZ $82D5
  LD D,$0E
  LD H,$26
  JR L82E8

; Message at 82D1
L82D1:
  DEFM "8&G"

; Data block at 82D4
L82D4:
  DEFB $02,$01

; Message at 82D6
L82D6:
  DEFM "$86G"

; Data block at 82DA
L82DA:
  DEFB $02,$02

; Message at 82DC
L82DC:
  DEFM "$8FF"

; Data block at 82E0
L82E0:
  DEFB $02,$03

; Message at 82E2
L82E2:
  DEFM "$8VF"

; Data block at 82E6
L82E6:
  DEFB $02,$04

; Message at 82E8
;
; Used by the routine at L82C0.
L82E8:
  DEFM "$8fE"

; Data block at 82EC
L82EC:
  DEFB $02,$05

; Message at 82EE
L82EE:
  DEFM "$8vE"

; Data block at 82F2
L82F2:
  DEFB $02,$06,$24,$38,$86,$44,$02,$07
  DEFB $24,$38,$96,$44,$02,$08,$24,$38
  DEFB $A6,$43,$02,$09,$24,$30,$B6,$43
  DEFB $03,$01,$00

; Message at 830D
L830D:
  DEFM "$X&G"

; Data block at 8311
L8311:
  DEFB $0E,$01,$00,$00,$00,$00,$00

; Message at 8318
L8318:
  DEFM "&&&"

; Data block at 831B
L831B:
  DEFB $11,$26,$12,$26,$1D,$58,$36,$07
  DEFB $0E,$00,$09,$00,$00,$00,$00

; Message at 832A
L832A:
  DEFM "&&&"

; Data block at 832D
L832D:
  DEFB $19,$26,$0A,$26,$14

; Message at 8332
L8332:
  DEFM "XFF"

; Data block at 8335
L8335:
  DEFB $0E,$00,$08,$00,$00,$00,$00

; Message at 833C
L833C:
  DEFM "&&&"

; Data block at 833F
L833F:
  DEFB $11,$26,$12,$26,$1D,$58,$56,$06
  DEFB $0E,$00,$07,$00,$00,$00,$00

; Message at 834E
L834E:
  DEFM "&&&"

; Data block at 8351
L8351:
  DEFB $19,$26,$0A,$26,$14

; Message at 8356
L8356:
  DEFM "XfE"

; Data block at 8359
L8359:
  DEFB $0E,$00,$06,$00,$00,$00,$00

; Message at 8360
L8360:
  DEFM "&&&"

; Data block at 8363
L8363:
  DEFB $11,$26,$12,$26,$1D,$58,$76,$05
  DEFB $0E,$00,$05,$00,$00,$00,$00

; Message at 8372
L8372:
  DEFM "&&&"

; Data block at 8375
L8375:
  DEFB $19,$26,$0A,$26,$14,$58,$86,$44
  DEFB $0E,$00,$04,$00,$00,$00,$00

; Message at 8384
L8384:
  DEFM "&&&"

; Data block at 8387
L8387:
  DEFB $11,$26,$12,$26,$1D,$58,$96,$04
  DEFB $0E,$00,$03,$00,$00,$00,$00

; Message at 8396
L8396:
  DEFM "&&&"

; Data block at 8399
L8399:
  DEFB $19,$26,$0A,$26,$14,$58,$A6,$43
  DEFB $0E,$00,$02,$00,$00,$00,$00

; Message at 83A8
L83A8:
  DEFM "&&&"

; Data block at 83AB
L83AB:
  DEFB $11,$26,$12,$26,$1D,$58,$B6,$03
  DEFB $0E,$00,$01,$00,$00,$00,$00

; Message at 83BA
L83BA:
  DEFM "&&&"

; Data block at 83BD
L83BD:
  DEFB $19,$26,$0A,$26,$14,$50,$0F,$47
  DEFB $0C,$11,$12,$10,$11,$26,$26

; Routine at 83CC
L83CC:
  INC E
  INC C
  JR $83EB

; Data block at 83D0
L83D0:
  DEFB $0E,$1C,$50,$16,$46,$0C

; Message at 83D6
L83D6:
  DEFM "************"

; Data block at 83E2
L83E2:
  DEFB $00,$00,$00,$00,$00,$00,$50,$0F
  DEFB $47,$0C,$26,$26,$19,$15,$0A,$22
  DEFB $0E,$1B,$26,$00,$26,$26,$40

; Routine at 83F9
L83F9:
  RLA
  LD B,A
  DJNZ L8405_0
  RLA
  DEC E
  LD C,$1B
  LD H,$22
  JR L8405_2

; Routine at 8405
L8405:
  DEC DE
  LD H,$17
  LD A,(BC)
  LD D,$0E
; This entry point is used by the routine at L83F9.
L8405_0:
  INC H
  DI
  LD IX,$90B4
  LD HL,$B7EE
  LD DE,$90E2
  LD B,$03
L8405_1:
  LD A,(HL)
  RRA
  RRA
  RRA
  RRA
  AND $0F
  LD (DE),A
  INC DE
  LD A,(HL)
; This entry point is used by the routine at L83F9.
L8405_2:
  AND $0F
  LD (DE),A
  INC DE
  DEC HL
  DJNZ L8405_1
  LD IY,$90E2
  LD D,$0B
; This entry point is used by the routine at L8450.
L8405_3:
  LD B,$06
  PUSH IY
  PUSH IX
L8405_4:
  LD A,(IX+$00)
  CP (IY+$00)
  JR C,L8450
  JR NZ,L8405_5
  INC IX
  INC IY
  DJNZ L8405_4
L8405_5:
  POP IX
  POP IY
  LD A,D
  CP $0B
  RET Z
  JR L8450_0

; Routine at 8450
;
; Used by the routine at L8405.
L8450:
  DEC D
  POP IX
  POP IY
  LD BC,$FFEE
  ADD IX,BC
  LD A,D
  DEC A
  JR NZ,L8405_3
; This entry point is used by the routine at L8405.
L8450_0:
  LD A,$0A
  SUB D
  JR Z,L8450_2
  LD DE,$90C1
  LD HL,$90AF
L8450_1:
  LD BC,$000E
  LDDR
  DEC HL
  DEC HL
  DEC HL
  DEC HL
  DEC DE
  DEC DE
  DEC DE
  DEC DE
  DEC A
  JR NZ,L8450_1
L8450_2:
  LD DE,$0012
  ADD IX,DE
  PUSH IX
  POP DE
  LD HL,$90E2
  LD BC,$0006
  LDIR
  LD C,$26
  LD (IX+$09),$0A
  LD (IX+$0A),C
  LD (IX+$0B),C
  LD (IX+$0C),C
  LD (IX+$0D),C
  CALL L9741_4
  CALL $97BC
  CALL L9264_0
  LD A,($B7E6)
  INC A
  LD ($90F5),A
  LD DE,$90E8
  CALL LB4CF_1
  CALL LB4CF_1
  PUSH IX
  POP HL
  DEC HL
  DEC HL
  DEC HL
  DEC HL
  LD ($9229),HL
  LD B,$05
; This entry point is used by the routine at L84FF.
L8450_3:
  LD C,$0A
  PUSH BC
; This entry point is used by the routine at L84E3.
L8450_4:
  CALL LA182_5
  LD A,($8ED9)
  AND $13
  JR Z,L8450_4
  BIT 4,A
  JR NZ,L84FF
  CP $03
  JR Z,L8450_4
  POP BC
  RRA
  JR NC,L84E3
  INC C
  LD A,C
  CP $28
  JR NZ,L84E3_0
  LD C,$00
  JR L84E3_0

; Routine at 84E3
;
; Used by the routine at L8450.
L84E3:
  DEC C
  BIT 7,C
  JR Z,L84E3_0
  LD C,$27
; This entry point is used by the routine at L8450.
L84E3_0:
  LD (IX+$09),C
  PUSH BC
  LD DE,($9229)
  CALL LB4CF_1
  CALL $C159
  LD D,$20
  CALL $97D3
  JR L8450_4

; Routine at 84FF
;
; Used by the routine at L8450.
L84FF:
  CALL $C168
  POP BC
  DEC B
  JR Z,L8521
  INC IX
  LD (IX+$09),$0A
  PUSH BC
  LD DE,($9229)
  CALL LB4CF_1
L84FF_0:
  CALL LA182_5
  LD A,($8ED9)
  AND $10
  JR NZ,L84FF_0
  POP BC
  JR L8450_3

; Routine at 8521
;
; Used by the routine at L84FF.
L8521:
  CALL L9264_0
  LD B,$0A
  JP $B7DC

; Unused
L8529:
  DEFS $02

; Routine at 852B
L852B:
  JR NZ,L852B_0
  LD B,E
  JR NZ,$8548
  LD B,D
  LD HL,$0000
  LD ($8D46),HL
  CALL L9741_4
  CALL $97BC
  LD HL,$57E0
  LD DE,$57FF
  LD B,$C0
L852B_0:
  LD (HL),$C0
  LD A,$03
  LD (DE),A
  CALL LB56E
  EX DE,HL
  CALL LB56E
  EX DE,HL
  DJNZ L852B_0
  LD HL,$56E0
  LD DE,L4000
  LD B,$20
  LD A,$FF
L852B_1:
  LD (HL),A
  INC H
  LD (HL),A
  DEC H
  LD (DE),A
  INC D
  LD (DE),A
  DEC D
  INC L
  INC E
  DJNZ L852B_1
  RET

; Routine at 856B
L856B:
  CALL $9231
  LD HL,$BF00
  LD DE,$922E
  CALL $B61C
  LD DE,$8FD1
  LD B,$16
  JP LB56E_0

; Routine at 857F
L857F:
  CALL L9264_0
L857F_0:
  LD A,$EF
  CALL $97A7
  RRA
  RET C
  XOR A
  CALL $97A7
  JP NZ,L93E1_0
  LD A,$80
L857F_1:
  DEC A
  JR NZ,L857F_1
  LD HL,($8D46)
  INC HL
  LD ($8D46),HL
  BIT 6,H
  JP NZ,L93E1_0
  JR L857F_0

; Routine at 85A3
L85A3:
  LD B,$03
L85A3_0:
  LD A,(HL)
  RRA
  RRA
  RRA
  RRA
  AND $0F
  LD (DE),A
  INC DE
  LD A,(HL)
  AND $0F
  LD (DE),A
  INC DE
  DEC HL
  DJNZ L85A3_0
  RET

; Data block at 85B7
L85B7:
  DEFB $04,$03,$47,$04,$03,$00,$28,$6C
  DEFB $B8,$6C,$04,$10,$07,$FF,$F8,$00
  DEFB $1E,$03,$E7,$00,$3D,$FD,$DF,$C0
  DEFB $3D,$FD,$BF,$E0,$7E,$73,$BC,$20
  DEFB $7F,$77,$7B,$C0,$FF,$77,$77,$F8
  DEFB $FF,$77,$6B,$FF,$CF,$77,$69,$C7
  DEFB $CE

; Message at 85E8
L85E8:
  DEFM "wt8E"

; Data block at 85EC
L85EC:
  DEFB $F7,$7B,$C0,$65,$F7,$BC,$20,$22
  DEFB $F7,$BF,$E0,$30,$70,$5F,$C0,$1C
  DEFB $00,$27,$00,$07,$FF,$F8,$00,$04
  DEFB $10,$00,$1F,$FF,$E0,$00,$E7,$C0
  DEFB $38,$03,$FB,$BF,$DC,$07,$FD,$BF
  DEFB $DC,$04,$3D,$BC,$3E,$03,$DE,$DE
  DEFB $FE,$1F,$EE,$EF,$7F,$FF,$F6,$F7
  DEFB $BF,$E3,$F6,$CB,$DF,$1C,$2E,$B5
  DEFB $DF,$03,$DE,$B9,$DE,$04,$3D,$BF
  DEFB $D6,$07,$FD,$DF,$84,$03,$FA,$0F
  DEFB $0C,$00,$E4,$00,$38,$00,$1F,$FF
  DEFB $E0,$04,$10,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$1E,$16,$47,$00,$00
  DEFB $04,$0D,$00,$00,$80,$00,$00,$01
  DEFB $C0,$00,$00,$03,$E0,$00,$00,$01
  DEFB $C0,$00,$00,$01,$C0,$00,$00,$01
  DEFB $C0,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$08,$AE,$EE,$28,$08,$A8
  DEFB $22,$28,$0E,$CE,$EE,$38,$0A,$A8
  DEFB $88,$28,$0E,$EE,$EE,$38,$04,$0D
  DEFB $00,$00,$80,$00,$00,$01,$C0,$00
  DEFB $00,$03,$E0,$00,$00,$01,$C0,$00
  DEFB $00,$01,$C0,$00,$00,$01,$C0,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Routine at 86E4
L86E4:
  EX AF,AF'
  XOR (HL)
  XOR $38
  EX AF,AF'
  XOR B
  LD ($0E28),HL
  ADC A,$EE
  JR C,L86E4_0
  XOR B
  ADC A,B
  JR Z,$8703
  XOR $EE
  JR C,$871A
  NOP
  NOP
L86E4_0:
  LD ($938A),HL
  CALL $9231
  LD HL,$BF00
  LD DE,$922B
  CALL $B61C
  LD HL,$B708
  LD DE,$9387
  CALL $B61C
  LD HL,$4718
  LD DE,$938C
  CALL $B5F8
  LD HL,$47C8
  LD DE,$93C2
  CALL $B5F8
  LD HL,$B7EE
  LD DE,$9561
  CALL $92A3
  LD HL,$B7F6
  LD DE,L9538_2
  CALL $92A3
  LD DE,$954D
  LD B,$0F
  CALL LB56E_0
  LD HL,($92BD)
  LD DE,$92C1
  CALL $B5F8
  LD HL,($92BF)
  LD DE,$9303
  CALL $B5F8
  LD HL,($8D46)
  INC HL
  LD ($8D46),HL
  BIT 6,H
  JP NZ,$927F
  CALL L8EA4_0
  LD DE,($B7E5)
  LD A,$F7
  CALL $97A7
  BIT 0,A
  JR Z,L8778
  LD A,E
  AND A
  JR Z,L8788_1
  LD E,$00
  LD HL,$9571
  JR L8788_0

; Routine at 8778
;
; Used by the routine at L86E4.
L8778:
  BIT 2,A
  JR Z,L8788
  LD A,E
  CP $02
  JR Z,L8788_1
  LD E,$02
  LD HL,$9592
  JR L8788_0

; Routine at 8788
;
; Used by the routine at L8778.
L8788:
  BIT 1,A
  JR Z,L8788_1
  DEC E
  JR Z,L8788_1
  LD E,$01
  LD HL,$9581
; This entry point is used by the routines at L86E4 and L8778.
L8788_0:
  LD A,E
  LD ($B7E5),A
  ADD A,A
  ADD A,A
  ADD A,A
  ADD A,A
  ADD A,$2F
  LD E,A
  LD D,$00
  LD ($9618),DE
  PUSH HL
  LD DE,($9614)
  CALL LB4CF_1
  POP HL
  LD ($9614),HL
; This entry point is used by the routines at L86E4 and L8778.
L8788_1:
  LD A,($938A)
  AND A
  JR Z,L87BD
  DEC A
  LD ($938A),A
  JR L87BD_1

; Routine at 87BD
;
; Used by the routine at L8788.
L87BD:
  LD A,$FD
  CALL $97A7
  RRA
  JR NC,L87BD_1
  LD A,($B7EF)
  INC A
  AND $03
  LD ($B7EF),A
  LD HL,($92BD)
  LD DE,$9345
  CALL $B5F8
  LD A,($92BE)
  ADD A,$10
  CP $A0
  JR C,L87BD_0
  LD A,$6C
L87BD_0:
  LD ($92BE),A
  LD HL,($92BD)
  LD DE,$92C1
  CALL $B5F8
  LD A,$FF
  LD ($938A),A
  CALL $C143
; This entry point is used by the routine at L8788.
L87BD_1:
  LD A,($938B)
  AND A
  JR Z,L8802
  DEC A
  LD ($938B),A
  JR L8802_1

; Routine at 8802
;
; Used by the routine at L87BD.
L8802:
  LD A,$7F
  CALL $97A7
  AND $10
  JR Z,L8802_1
  LD A,($B7F7)
  INC A
  AND $03
  LD ($B7F7),A
  LD HL,($92BF)
  LD DE,$9345
  CALL $B5F8
  LD A,($92C0)
  ADD A,$10
  CP $A0
  JR C,L8802_0
  LD A,$6C
L8802_0:
  LD ($92C0),A
  LD HL,($92BF)
  LD DE,$9303
  CALL $B5F8
  LD A,$FF
  LD ($938B),A
  CALL $C143
; This entry point is used by the routine at L87BD.
L8802_1:
  LD DE,$9618
  CALL L9619_0
  LD A,$EF
  CALL $97A7
  AND $01
  RET NZ
  JP $9451

; Routine at 884D
L884D:
  JR $885E

; Data block at 884F
L884F:
  DEFB $07,$04,$01,$26,$1E,$19,$C8,$0F
  DEFB $07,$04,$02,$26,$1E,$19,$10,$17
  DEFB $07,$06,$00,$00,$00,$00,$00,$00
  DEFB $C0,$17,$07,$06,$00,$00,$00,$00
  DEFB $00,$00

; Message at 8871
L8871:
  DEFM "P/D"

; Data block at 8874
L8874:
  DEFB $0C,$01

; Message at 8876
L8876:
  DEFM "&'&"

; Data block at 8879
L8879:
  DEFB $01,$26,$19,$15,$0A,$22,$0E,$1B

; Message at 8881
L8881:
  DEFM "P?D"

; Data block at 8884
L8884:
  DEFB $0D,$02

; Message at 8886
L8886:
  DEFM "&'&"

; Data block at 8889
L8889:
  DEFB $02,$26,$19,$15,$0A,$22,$0E,$1B
  DEFB $1C

; Message at 8892
L8892:
  DEFM "POD"

; Data block at 8895
L8895:
  DEFB $0F,$03

; Message at 8897
L8897:
  DEFM "&'&"

; Data block at 889A
L889A:
  DEFB $0D

; Routine at 889B
L889B:
  JR L88B9_0

; Data block at 889D
L889D:
  DEFB $0B,$15,$0E,$26,$19,$15,$0A,$22
  DEFB $50,$A7,$44,$0E,$00

; Message at 88AA
L88AA:
  DEFM "&'&"

; Data block at 88AD
L88AD:
  DEFB $1C,$1D,$0A,$1B,$1D,$26,$10,$0A
  DEFB $16,$0E,$60,$67

; Routine at 88B9
L88B9:
  LD B,L
  EX AF,AF'
; This entry point is used by the routine at L889B.
L88B9_0:
  INC D
  LD C,$22
  DEC BC
  JR L88C1_0

; Routine at 88C1
L88C1:
  DEC DE
  DEC C
  LD H,B
  LD (HL),A
  LD B,L
  EX AF,AF'
  INC D
  LD C,$16
  ADD HL,DE
; This entry point is used by the routine at L88B9.
L88C1_0:
  INC E
  DEC E
  JR $88E6

; Data block at 88CF
L88CF:
  DEFB $68,$87,$45,$06,$0C

; Routine at 88D4
L88D4:
  LD E,$1B
  INC E
  JR $88F4

; Routine at 88D9
L88D9:
  LD E,B
  SUB A
  LD B,L
  DEC BC
  LD (DE),A
  RLA
  DEC E
  LD C,$1B
  RRCA
  LD A,(BC)
  INC C
  LD C,$26
  ADD HL,HL
  JR Z,$88A1
  LD B,A
  LD D,$0C
  JR $8908

; Data block at 88EF
L88EF:
  DEFB $22,$1B,$12,$10,$11,$1D,$26,$11
  DEFB $12,$1D,$26,$19,$0A,$14,$26,$01
  DEFB $09,$08,$07,$70,$0F,$47,$05,$0B
  DEFB $0A,$1D,$1D,$22,$70,$16,$46,$05

; Message at 890F
L890F:
  DEFM "*****q"

; Routine at 8915
L8915:
  SUB L
  OR A
  SUB L
  CPL
  NOP
  LD H,A
  EX AF,AF'
  LD A,(DE)
  LD H,A
  LD L,$70
  CALL $B5A4
  INC DE
  LD A,(DE)
  PUSH HL
  LD HL,$9643
  CALL $B5BB
  LD A,(HL)
  POP HL
  INC DE
  LD B,$0B
L8915_0:
  LD (HL),A
  INC L
  DJNZ L8915_0
  LD A,($8D46)
  AND $1F
  RET NZ
  DEC DE
  LD A,(DE)
  INC A
  AND $0F
  LD (DE),A
  INC DE
  RET

; Data block at 8943
L8943:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Message at 894B
L894B:
  DEFM "GGGGGGGG"

; Data block at 8953
L8953:
  DEFB $00

; Routine at 8954
L8954:
  INC BC
  LD B,$10
  DEC D
  JR NZ,$897F
  LD D,B
  LD (HL),L
  RST $38
  LD A,($B7E5)
  CP $02
  JR NZ,L899B
  LD A,($9653)
  AND A
  JR Z,L899B
  PUSH BC
  LD HL,$B7A6
  LD DE,$B7C8
  LD B,$0A
  CALL $BE02
  LD HL,$B7EC
  LD DE,$B7F4
  LD B,$03
  CALL $BE02
  POP BC
  CALL $969B
  LD HL,$B7A6
  LD DE,$B7C8
  LD B,$0A
  CALL $BE02
  LD HL,$B7EC
  LD DE,$B7F4
  LD B,$03
  JP $BE02

; Routine at 899B
;
; Used by the routine at L8954.
L899B:
  LD HL,$9654
  LD A,($B7EE)
L899B_0:
  CP (HL)
  JR C,L89A7
  INC HL
  JR L899B_0

; Routine at 89A7
;
; Used by the routine at L899B.
L89A7:
  LD E,(HL)
  LD HL,$B7EC
  LD A,C
  ADD A,(HL)
  DAA
  LD (HL),A
  INC HL
  LD A,B
  ADC A,(HL)
  DAA
  LD (HL),A
  INC HL
  LD A,$00
  ADC A,(HL)
  DAA
  LD (HL),A
  CP E
  JR C,L89A7_1
  PUSH HL
  PUSH IX
  LD IX,$9BC2
  CALL $B684
  CALL $9910
  CALL $9C25
  LD (IX+$11),$00
  LD A,(IX+$02)
  ADD A,$10
  CP $E9
  JR NC,L89A7_0
  LD (IX+$02),A
L89A7_0:
  LD A,($B7E8)
  INC A
  LD ($B7E8),A
  CALL $C064
  LD (IX+$00),$07
  LD (IX+$01),$20
  POP IX
  POP HL
L89A7_1:
  LD HL,($B7A6)
  EXX
  LD HL,$B7EE
  LD A,$01
  LD ($5CDD),A
  LD B,$03
L89A7_2:
  LD A,(HL)
  AND $F0
  CALL L96CE_2
  LD A,(HL)
  ADD A,A
  ADD A,A
  ADD A,A
  ADD A,A
  CALL L96CE_2
  DEC HL
  DJNZ L89A7_2
  RET

; Routine at 8A12
L8A12:
  LD DE,$6975
  ADD A,E
  LD E,A
  JR NC,L8A12_0
  INC D
L8A12_0:
  LD ($972E),DE
  EXX
  LD ($9742),HL
  EX DE,HL
  LD HL,$1200
  ADD HL,DE
  LD A,$08
  LD ($9746),SP
  LD SP,$0000
L8A12_1:
  EX AF,AF'
  POP BC
  LD A,C
  OR (HL)
  XOR B
  LD (DE),A
  LD BC,$0020
  ADD HL,BC
  EX DE,HL
  ADD HL,BC
  EX DE,HL
  EX AF,AF'
  DEC A
  JR NZ,L8A12_1
  LD HL,$0000
  INC L
  LD SP,$0000
  EXX
  RET

; Routine at 8A4A
L8A4A:
  XOR A
  LD ($5CDD),A
  LD BC,$0608
  LD A,($B7E5)
  CP $02
  JR NZ,L8A67
  LD HL,$1510
  CALL $9CF4
  LD BC,$0608
  LD HL,$15C0
  JP $9CF4

; Routine at 8A67
;
; Used by the routine at L8A4A.
L8A67:
  LD HL,$1510
  LD A,($B7E6)
  AND A
  JP Z,$9CF4
  LD L,$C0
  JP $9CF4

; Routine at 8A76
L8A76:
  LD A,($B7EA)
  LD HL,$6CBD
  ADD A,A
  LD E,A
  LD D,$00
  ADD HL,DE
  LD E,(HL)
  INC HL
  LD D,(HL)
  EX DE,HL
  LD ($9789),HL
  RET

; Unused
L8A89:
  DEFS $02

; Routine at 8A8B
L8A8B:
  CALL $979F
  RET Z
L8A8B_0:
  CALL $979F
  JR NZ,L8A8B_0
L8A8B_1:
  CALL $979F
  JR Z,L8A8B_1
L8A8B_2:
  CALL $979F
  JR NZ,L8A8B_2
  RET

; Routine at 8A9F
L8A9F:
  LD A,$F7
  CALL $97A7
  AND $0F
  RET

; Routine at 8AA7
L8AA7:
  IN A,($FE)
  CPL
  AND $1F
  RET

; Routine at 8AAD
L8AAD:
  LD ($97D0),SP
  LD SP,$5B00
  LD BC,$8002
  LD DE,$0000
  JR L8ABC_0

; Routine at 8ABC
L8ABC:
  LD ($97D0),SP
  LD SP,$5800
  LD BC,$000C
  LD DE,$0000
; This entry point is used by the routine at L8AAD.
L8ABC_0:
  PUSH DE
  DJNZ L8ABC_0
  DEC C
  JR NZ,L8ABC_0
  LD SP,$0000
  RET

; Routine at 8AD3
L8AD3:
  LD E,$FF
L8AD3_0:
  DEC E
  JR NZ,L8AD3_0
  DEC D
  JR NZ,L8AD3
  RET

; Unused
L8ADC:
  DEFS $02

; Routine at 8ADE
L8ADE:
  LD IX,$9AD0
  LD B,$0B
  XOR A
  LD ($D000),A
  LD HL,$D001
L8ADE_0:
  PUSH BC
  LD A,(IX+$00)
  AND A
  CALL NZ,L97CF_0
  POP BC
  LD DE,$0016
  ADD IX,DE
  DJNZ L8ADE_0
  LD ($97FF),HL
  RET

; Unused
L8AFF:
  DEFS $02

; Routine at 8B01
L8B01:
  LD A,(IX+$04)
  CP $C0
  JR C,L8B01_0
  SET 7,(IX+$00)
L8B01_0:
  BIT 7,(IX+$00)
  RET NZ
  LD A,($D000)
  INC A
  LD ($D000),A
  LD C,(IX+$08)
  LD A,(IX+$02)
  AND $07
  JR Z,L8B01_1
  INC C
L8B01_1:
  LD A,C
  ADD A,A
  ADD A,A
  ADD A,A
  ADD A,(IX+$02)
  JR NC,L8B01_2
  LD A,$FF
  SUB (IX+$02)
  SRL A
  SRL A
  SRL A
  INC A
  LD C,A
L8B01_2:
  LD D,(IX+$0A)
  LD E,(IX+$0B)
  LD (HL),E
  INC HL
  LD (HL),D
  INC HL
  SLA C
  LD A,$F6
  SUB C
  LD (HL),A
  INC HL
  LD ($9877),A
  LD B,(IX+$09)
  INC B
  LD (HL),B
  INC HL
  EX DE,HL
  LD A,L
  LD C,$FF
  JP $9876

; Routine at 8B5A
L8B5A:
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
  DEC HL
  ADD A,$20
  LD L,A
  JP NC,$9876
  INC H
L8B5A_0:
  DJNZ L8B5A_0
  EX DE,HL
  RET

; Routine at 8B7A
L8B7A:
  LD A,($8E71)
  AND A
  JR Z,L8B7A_0
  LD IX,($8E70)
  LD A,(IX+$02)
  SUB $05
  LD L,A
  LD A,(IX+$04)
  SUB $05
  LD H,A
  LD BC,$0417
  CALL $9CF4
  XOR A
  LD ($8E71),A
L8B7A_0:
  LD A,($D000)
  AND A
  RET Z
  LD HL,$D001
; This entry point is used by the routine at L8BB4.
L8B7A_1:
  EX AF,AF'
  LD E,(HL)
  INC HL
  LD D,(HL)
  INC HL
  LD A,(HL)
  LD ($98D6),A
  INC HL
  LD B,(HL)
  INC HL
  LD C,$FF
  LD A,E
  JP $98D5

; Routine at 8BB4
L8BB4:
  EX AF,AF'
  DEC A
  JR NZ,L8B7A_1
  RET

; Routine at 8BB9
L8BB9:
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
  DEC DE
  ADD A,$20
  LD E,A
  JP NC,$98D5
  INC D
L8BB9_0:
  DJNZ L8BB9_0
  JP $98B4

; Data block at 8BDA
L8BDA:
  DEFB $15,$9A,$0F,$9A,$09,$9A,$03,$9A
  DEFB $FD,$99,$F7,$99,$F1,$99,$EB,$99
  DEFB $9A,$9A,$8C,$9A,$7E,$9A,$70,$9A
  DEFB $62,$9A,$54,$9A,$46,$9A,$38,$9A
  DEFB $08,$0A,$04,$06,$00,$00,$06,$00
  DEFB $02,$02

; Routine at 8C04
L8C04:
  INC B
  INC B
  NOP
  NOP
  ADD HL,BC
  DJNZ $8C11
  INC C
  INC B
  ADD HL,BC
  DEC B
  RLCA
  LD A,(IX+$00)
  BIT 7,A
  RET NZ
  CP $02
  JR NZ,L8C04_3
  LD A,($9B68)
  CP $07
  JR Z,L8C04_0
  LD A,($9B52)
  CP $07
  JR NZ,L8C04_2
L8C04_0:
  LD (IX+$01),$08
  RES 7,(IX+$15)
  LD A,($8D46)
  RRA
  JR C,L8C04_2
  LD A,($A65A)
  INC A
  LD ($A65A),A
  CP $F8
  JR C,L8C04_2
  LD A,($9B68)
  CP $07
  JR NZ,L8C04_1
  LD A,$FF
  LD ($9B68),A
L8C04_1:
  LD A,($9B52)
  CP $07
  JR NZ,L8C04_2
  LD A,$FF
  LD ($9B52),A
L8C04_2:
  LD A,(IX+$00)
L8C04_3:
  LD HL,$98F8
  ADD A,A
  CALL $B5BB
  LD A,(IX+$02)
  AND $07
  JR Z,L8C04_4
  INC HL
L8C04_4:
  LD A,($5CD8)
  ADD A,(HL)
  LD ($5CD8),A
  CALL $7767
  LD HL,$98D8
  LD A,(IX+$04)
  CP $C0
  RET NC
  ADD A,(IX+$09)
  CP $20
  LD ($97DC),SP
  BIT 7,(IX+$15)
  LD A,$00
  JR NZ,L8C04_5
  LD A,(IX+$02)
L8C04_5:
  AND $07
  LD C,A
  LD A,(DE)
  LD B,A
  JR Z,L8C04_6
  ADD A,$08
  INC B
L8C04_6:
  ADD A,A
  CALL $B5BB
  LD A,(HL)
  INC HL
  LD H,(HL)
  LD L,A
  LD ($9A20),HL
  LD ($9AB4),HL
  LD ($9AB9),HL
  LD ($99E3),HL
  INC DE
  LD A,$21
  SUB B
  LD ($9AB0),A
  LD ($9A1B),A
  LD H,(IX+$0A)
  LD L,(IX+$0B)
  EX DE,HL
  LD A,(HL)
  LD B,A
  EX AF,AF'
  INC HL
  LD SP,HL
  LD A,(IX+$04)
  ADD A,B
  CP $C1
  JR C,L8C04_7
  LD A,$C0
  SUB (IX+$04)
  LD B,A
  EX AF,AF'
L8C04_7:
  LD A,C
  AND A
  JR Z,L8CE5
  ADD A,A
  ADD A,$F0
  LD H,A
  LD ($9AC2),DE
  LD A,(DE)
; This entry point is used by the routine at L8CE5.
L8C04_8:
  JP L99A9_1

; Routine at 8CE5
;
; Used by the routine at L8C04.
L8CE5:
  EX DE,HL
  LD ($9A28),HL
  JR L8C04_8

; Routine at 8CEB
L8CEB:
  POP DE
  LD A,E
  OR (HL)
  XOR D
  LD (HL),A
  INC L
  POP DE
  LD A,E
  OR (HL)
  XOR D
  LD (HL),A
  INC L
  POP DE
  LD A,E
  OR (HL)
  XOR D
  LD (HL),A
  INC L
  POP DE
  LD A,E
  OR (HL)
  XOR D
  LD (HL),A
  INC L
  POP DE
  LD A,E
  OR (HL)
  XOR D
  LD (HL),A
  INC L
  POP DE
  LD A,E
  OR (HL)
  XOR D
  LD (HL),A
  INC L
  POP DE
  LD A,E
  OR (HL)
  XOR D
  LD (HL),A
  INC L
  POP DE
  LD A,E
  OR (HL)
  XOR D
  LD (HL),A
  LD DE,$0000
  ADD HL,DE
  DEC B
  JP NZ,$9A1F
  LD SP,($97DC)
  RET

; Routine at 8D27
L8D27:
  LD HL,$0000
  LD DE,$0020
  ADD HL,DE
  LD ($9A28),HL
  DEC B
  JP NZ,L9A9A_1
  JP L99A9_4

; Routine at 8D38
L8D38:
  POP BC
  LD L,C
  OR (HL)
  LD L,B
  XOR (HL)
  LD (DE),A
  INC E
  INC H
  LD L,C
  LD A,(DE)
  OR (HL)
  LD L,B
  XOR (HL)
  DEC H
  POP BC
  LD L,C
  OR (HL)
  LD L,B
  XOR (HL)
  LD (DE),A
; This entry point is used by the routine at LB18B.
L8D38_0:
  INC E
  INC H
  LD L,C
  LD A,(DE)
  OR (HL)
  LD L,B
  XOR (HL)
  DEC H
  POP BC
  LD L,C
  OR (HL)
  LD L,B
  XOR (HL)
  LD (DE),A
  INC E
  INC H
  LD L,C
  LD A,(DE)
  OR (HL)
  LD L,B
  XOR (HL)
  DEC H
  POP BC
  LD L,C
  OR (HL)
  LD L,B
  XOR (HL)
  LD (DE),A
  INC E
  INC H
  LD L,C
  LD A,(DE)
  OR (HL)
  LD L,B
  XOR (HL)
  DEC H
  POP BC
  LD L,C
  OR (HL)
  LD L,B
  XOR (HL)
  LD (DE),A
  INC E
  INC H
  LD L,C
  LD A,(DE)
  OR (HL)
  LD L,B
  XOR (HL)
  DEC H
  POP BC
  LD L,C
  OR (HL)
  LD L,B
  XOR (HL)
  LD (DE),A
  INC E
  INC H
  LD L,C
  LD A,(DE)
  OR (HL)
  LD L,B
  XOR (HL)
  DEC H
  POP BC
  LD L,C
  OR (HL)
  LD L,B
  XOR (HL)
  LD (DE),A
  INC E
  INC H
  LD L,C
  LD A,(DE)
  OR (HL)
  LD L,B
  XOR (HL)
  DEC H
  POP BC
  LD L,C
  OR (HL)
  LD L,B
  XOR (HL)
  LD (DE),A
  INC E
  INC H
  LD L,C
  LD A,(DE)
  OR (HL)
  LD L,B
  XOR (HL)
  DEC H
  LD (DE),A
  EX AF,AF'
  DEC A
  JR Z,L8DBB
  EX AF,AF'
  LD A,E
  ADD A,$00
  LD E,A
  LD A,(DE)
  JP NC,L9A9A_0
  INC D
  LD A,(DE)
  JP L9A9A_1

; Routine at 8DBB
;
; Used by the routine at L8D38.
L8DBB:
  LD SP,($97DC)
  RET

; Routine at 8DC0
L8DC0:
  LD A,H
  LD HL,$0000
  LD DE,$0020
  ADD HL,DE
  LD ($9AC2),HL
  EX DE,HL
  LD H,A
  JP $9AB7

; Data block at 8DD0
L8DD0:
  DEFB $02,$00,$84,$00,$A0,$00,$38,$02
  DEFB $02,$0C,$00,$00,$08,$07,$00,$00
  DEFB $00,$00,$00,$00,$00,$80,$00,$00
  DEFB $84,$00,$A0,$00,$38,$02,$02,$0C
  DEFB $00,$00,$08,$07,$00,$00,$00,$00
  DEFB $00,$00,$00,$80,$00,$00,$84,$00
  DEFB $A0,$00,$38,$02,$02,$0C,$00,$00
  DEFB $08,$07,$00,$00,$00,$00,$00,$00
  DEFB $00,$80,$00,$00,$84,$00,$A0,$00
  DEFB $30,$01,$01,$08,$00,$00,$04,$08
  DEFB $00,$00,$00,$00,$00,$00,$00,$80
  DEFB $00,$00,$84,$00,$A0,$00,$30,$01
  DEFB $01,$08,$00,$00,$04,$08,$00,$00
  DEFB $00,$00,$00,$00,$00,$80,$00,$00
  DEFB $74,$00,$AD,$00,$00,$00,$04,$0D
  DEFB $00,$00,$1C,$0A,$00,$00,$00,$00
  DEFB $F0,$00,$FF,$80,$01,$00,$74,$00
  DEFB $AD,$00,$00,$00,$04,$0D,$00,$00
  DEFB $1C,$0A,$00,$00,$00,$00,$F0,$00
  DEFB $00,$80,$00,$03,$84,$00,$AD,$00
  DEFB $00,$00,$03,$0D,$00,$00,$1B,$0A
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$28,$00,$9F,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00

; Routine at 8E92
L8E92:
  RET P
  LD H,B
  NOP
  NOP
  NOP
  LD BC,$0078
  ADC A,B
  NOP
  NOP
  NOP
  INC BC
  JR L8EA1

; Unused
;
; Used by the routine at L8E92.
L8EA1:
  DEFS $01

; Routine at 8EA2
L8EA2:
  JR L8EA4_1

; Data block at 8EA4
L8EA4:
  DEFB $00,$00,$00,$00,$50,$44,$00,$00
  DEFB $00,$00,$F8,$00,$A8,$00,$00,$00
L8EA4_0:
  DEFB $03,$1C,$00,$00,$00,$00,$00,$00
L8EA4_1:
  DEFB $00,$00,$00,$00,$00,$00,$03,$00
  DEFB $10,$00,$B9,$00,$00,$00,$02,$06
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $03,$00,$00,$00,$0C,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$03,$05,$7D,$00,$A9,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00

; Routine at 8F25
L8F25:
  LD A,(IX+$00)
  RLA
  JR NC,L8F25_0
  LD (IX+$00),$00
L8F25_0:
  LD L,(IX+$02)
  LD A,(IX+$11)
  AND A
  JR NZ,L8F49
  LD H,(IX+$04)
  LD A,(IX+$08)
  ADD A,A
  ADD A,A
  ADD A,A
  ADD A,L
  LD B,A
  LD C,(IX+$09)
  JP $9C88

; Routine at 8F49
;
; Used by the routine at L8F25.
L8F49:
  LD E,L
  LD A,(IX+$0E)
  LD D,A
  CP L
  JR NC,L8F49_0
  LD L,A
L8F49_0:
  LD B,(IX+$08)
  SLA B
  SLA B
  SLA B
  LD C,(IX+$10)
  SLA C
; This entry point is used by the routine at LACA9.
L8F49_1:
  SLA C
  SLA C
  LD A,E
  ADD A,B
  LD B,A
  LD A,D
  ADD A,C
  CP B
  JR C,L8F49_2
  LD B,A
L8F49_2:
  LD H,(IX+$04)
  LD D,H
  LD A,(IX+$0F)
  LD E,A
  CP H
  JR NC,L8F49_3
  LD H,A
L8F49_3:
  LD A,D
  ADD A,(IX+$09)
  LD D,A
  LD A,E
  ADD A,(IX+$11)
  CP D
  JR NC,L8F49_4
  LD A,D
L8F49_4:
  SUB H
  LD C,A
  LD A,L
  AND $F8
  LD L,A
  CP $F8
  RET NC
  CP B
  JR C,L8F49_5
  LD B,$FF
L8F49_5:
  LD E,L
  BIT 7,A
  JR Z,L8F49_6
  RES 7,L
  RES 7,B
L8F49_6:
  LD A,B
  ADD A,$07
  AND $F8
  SUB L
  SRL A
  SRL A
  SRL A
  LD B,A
  LD L,E
  LD A,(IX+$02)
  LD (IX+$0E),A
  LD A,(IX+$04)
  LD (IX+$0F),A
  LD A,(IX+$08)
  LD (IX+$10),A
  LD A,(IX+$09)
  LD (IX+$11),A
  LD A,H
  ADD A,C
  CP $C0
  JR C,L8F49_7
  LD A,$C0
  SUB H
  LD C,A
L8F49_7:
  BIT 7,L
  JR Z,L8F49_9
  RES 7,L
  LD A,B
  ADD A,A
  ADD A,A
  ADD A,A
  ADD A,L
  SUB $78
  JR C,L8F49_8
  SRL A
  SRL A
  SRL A
  NEG
  ADD A,B
  LD B,A
L8F49_8:
  SET 7,L
L8F49_9:
  LD A,H
  SUB $08
  JR NC,L8F49_10
  ADD A,C
  LD C,A
  DEC A
  RLA
  RET C
  LD H,$08
L8F49_10:
  PUSH BC
  PUSH HL
  CALL $C03D
  EX DE,HL
  POP HL
  CALL $B57D
  EX DE,HL
  POP BC
  LD A,B
  EXX
  LD C,A
  LD A,$20
  SUB C
  LD ($9D3B),A
  SLA C
  LD B,$00
  LD HL,$9D3A
  SBC HL,BC
  LD ($9D55),HL
  EXX
  LD B,C
  PUSH DE
  LD C,$FE
  INC C
  JP L9D44_2

; Routine at 901E
L901E:
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
  LD DE,$0000
  ADD HL,DE
  POP DE
  LD A,D
  INC D
  CPL
  AND $07
  JP NZ,L9D44_1
  LD A,E
  ADD A,$20
  LD E,A
  JP C,L9D44_1
  LD A,D
  SUB $08
  LD D,A
  PUSH DE
  DEC B
  JP NZ,L9D44_2
  POP DE
  RET

; Unused
L9059:
  DEFS $01

; Routine at 905A
L905A:
  LD A,($9B80)
  AND A
  RET NZ
  LD A,($B7E5)
  CP $02
  JR NZ,L905A_0
  LD A,($B290)
  CP $78
  RET Z
L905A_0:
  PUSH IY
  EXX
  LD IX,$9B80
  LD (IX+$00),$04
  LD HL,$0000
  LD ($A557),HL
  LD HL,($B290)
  LD (IX+$02),L
  LD (IX+$04),H
  LD A,($9B68)
  LD ($9D59),A
  LD A,($B7E5)
  CP $02
  JR NZ,L905A_1
  LD A,L
  CP $80
  JR C,L905A_1
  LD A,($9B52)
  LD ($9D59),A
L905A_1:
  LD (IX+$12),$F0
  LD (IX+$13),$60
  LD (IX+$11),$00
  LD (IX+$0C),$10
  LD (IX+$0D),$08
; This entry point is used by the routines at L90F4 and L9100.
L905A_2:
  CALL L8EA4_0
  LD A,($8D49)
  AND $0F
  LD HL,$9E4A
  CALL $B5BB
  LD A,($9D59)
  CP (HL)
  JR Z,L905A_2
  LD A,(HL)
  CP $04
  JR NZ,L90F4
  LD A,($9AD0)
  AND A
  JR Z,L905A_3
  LD A,($9AD7)
  CP $02
  JR Z,L905A_2
L905A_3:
  LD A,($9AE6)
  AND A
  JR Z,L905A_4
  LD A,($9AED)
  CP $02
  JR Z,L905A_2
L905A_4:
  LD A,($9AFC)
  AND A
  JR Z,L905A_5
  LD A,($9B03)
  CP $02
  JR Z,L905A_2
L905A_5:
  JR L9100_0

; Routine at 90F4
;
; Used by the routine at L905A.
L90F4:
  CP $02
  JR NZ,L9100
  LD A,($5CD9)
  DEC A
  JR NZ,L905A_2
  JR L9100_0

; Routine at 9100
;
; Used by the routine at L90F4.
L9100:
  CP $05
  JR NZ,L9100_0
  LD A,($A899)
  AND A
  JR NZ,L905A_2
; This entry point is used by the routines at L905A and L90F4.
L9100_0:
  LD A,(HL)
  CP $06
  JR NZ,L9100_1
  LD A,($9BAC)
  AND A
  JR NZ,L905A_2
  LD A,($B7EB)
  CP $06
  JR C,L9100_1
  LD A,($8D48)
  AND $C0
  JR NZ,L905A_2
L9100_1:
  LD A,(HL)
  DEC A
  JR NZ,L9100_2
  LD A,($B7E5)
  CP $02
  JR NZ,L9100_2
  LD A,($9B68)
  DEC A
  JP Z,$9DB2
  LD A,($9B52)
  DEC A
  JP Z,$9DB2
L9100_2:
  LD A,(HL)
  LD (IX+$14),A
  LD (IX+$01),A
  CALL $AB06
  EXX
  POP IY
  RET

; Data block at 914A
L914A:
  DEFB $00,$01,$02,$03,$04,$05,$06,$07
  DEFB $08,$09,$00,$04,$00,$03,$01,$02
  DEFB $00,$01,$02,$03,$04,$05,$06,$02
  DEFB $01,$03,$00,$04,$00,$03,$01,$02
  DEFB $00,$01,$02,$03,$04,$05,$06,$07
  DEFB $08,$09,$00,$04,$00,$03,$01,$02
  DEFB $00,$01,$02,$03,$04,$05,$06,$02
  DEFB $01,$03,$00,$04,$00,$03,$01,$02
  DEFB $00,$01,$02,$03,$02,$00,$06,$07
  DEFB $08,$09,$00,$03,$00,$02,$01,$03
  DEFB $00,$01,$02,$03

; Routine at 919E
L919E:
  LD (BC),A
  NOP
  LD B,$02
  LD BC,$0003
  INC BC
  NOP
  LD (BC),A
  LD BC,$3A03
  JP PE,LFEB6_0
  INC B
  RET Z
  LD A,($9B68)
  CP $09
  RET Z
  LD A,($9B52)
  CP $09
  RET Z
  LD A,($B7E9)
  CP $2C
  RET NC
  LD A,($9B96)
  AND A
  RET NZ
  LD HL,$9B96
  CALL $9F37
  LD IX,$9B96
  LD HL,$9F2B
  LD A,($B7EB)
  RRA
  JR NC,L919E_0
  LD HL,$9F31
L919E_0:
  LD A,(HL)
  LD (IX+$00),A
  LD (IX+$11),$00
  INC HL
  LD A,(HL)
  LD (IX+$12),A
  INC HL
  LD A,(HL)
  LD (IX+$13),A
  INC HL
  LD A,(HL)
  LD (IX+$0C),A
  INC HL
  LD A,(HL)
  LD (IX+$0D),A
  INC HL
  LD A,(HL)
  LD (IX+$07),A
  LD (IX+$01),$00
  LD (IX+$04),$00
  LD A,($8D48)
  LD HL,$9F27
  AND $03
  CALL $B5BB
  LD A,(HL)
  LD (IX+$02),A
  LD (IX+$06),$10
  LD (IX+$14),$10
  LD HL,$0000
  LD ($AA7B),HL
  CALL $AB06
  RET

; Data block at 9227
L9227:
  DEFB $40,$A8,$40

; Routine at 922A
L922A:
  XOR B
  ADD HL,BC
  RET P
  LD (HL),B
  JR $923C

; Routine at 9230
L9230:
  LD BC,$6008
  SUB B
  JR L923E_0

; Routine at 9236
L9236:
  LD BC,$1601
  NOP
  LD B,C
  JP $8EDA

; Routine at 923E
L923E:
  LD H,E
  SBC A,A
  LD A,(HL)
  AND D
  LD A,(HL)
  AND D
  LD E,D
  AND L
; This entry point is used by the routine at L9230.
L923E_0:
  AND E
  AND L
  SBC A,D
  XOR B
  JP NC,$02A8
  XOR C
  CP H
  XOR C
  JR NC,$91FC
  ADC A,L
  AND L
  LD HL,$9F3C
  LD A,(IX+$00)
  ADD A,A
  CALL $B5BB
  LD A,(HL)
  INC HL
  LD H,(HL)
  LD L,A
  JP (HL)

; Routine at 9263
L9263:
  RET

; Routine at 9264
L9264:
  LD A,($9B70)
  CP $1C
  LD A,$00
; This entry point is used by the routines at L8450, L8521 and L857F.
L9264_0:
  JR Z,L9264_1
  LD A,$05
L9264_1:
  LD ($5CD8),A
  LD A,(IX+$02)
  AND $80
  LD ($9653),A
  LD BC,($8ED9)
  BIT 1,C
  LD A,(IX+$02)
  JR Z,L9264_2
  SUB $04
L9264_2:
  BIT 0,C
  JR Z,L9264_3
  ADD A,$04
L9264_3:
  LD (IX+$02),A
  CALL $A4CF
  LD A,(IX+$15)
  CP $41
  JP Z,LA058_0
  CP $61
  JP Z,LA058_0
  AND $C1
  CP $80
  JP Z,LA058_0
  CP $81
  JP Z,LA058_0
  LD B,A
  AND $40
  JR NZ,L9264_4
  LD A,($A85F)
  RLA
  JP C,LA058_0
L9264_4:
  LD (IX+$01),$02
  LD (IX+$08),$03
  LD A,$01
  LD ($9B6A),A
  LD A,($8D46)
  LD E,A
  LD A,B
  AND $40
  JR NZ,L9306
  BIT 0,E
  JR Z,L9264_5
  DEC (IX+$02)
L9264_5:
  CALL LAC6A_0
  LD A,(IX+$15)
  LD B,A
  AND $1E
  ADD A,(IX+$02)
  ADD A,$08
  LD ($9B6C),A
  RR E
  RET C
  INC (IX+$0C)
  INC (IX+$0C)
  LD A,B
  ADD A,$02
  OR $20
  CP $30
  JR Z,L92FC
  LD (IX+$15),A
  RET

; Routine at 92FC
;
; Used by the routine at L9264.
L92FC:
  LD (IX+$15),$81
  LD (IX+$0C),$2C
  JR L9332_0

; Routine at 9306
;
; Used by the routine at L9264.
L9306:
  BIT 0,E
  JR Z,L9306_0
  INC (IX+$02)
L9306_0:
  CALL LAC6A_0
  LD A,(IX+$15)
  AND $3E
  LD B,A
  ADD A,(IX+$02)
  ADD A,$08
  LD ($9B6C),A
  RR E
  RET C
  DEC (IX+$0C)
  DEC (IX+$0C)
  LD A,B
  SUB $02
  JR C,L9332
  OR $40
  LD (IX+$15),A
  RET

; Routine at 9332
;
; Used by the routine at L9306.
L9332:
  LD (IX+$0C),$1C
  LD (IX+$15),$80
; This entry point is used by the routine at L92FC.
L9332_0:
  LD A,($9B6A)
  OR $80
  LD ($9B6A),A
  LD A,(IX+$02)
  INC A
  AND $FC
  LD (IX+$02),A
  RRA
  RRA
  AND $01
  LD B,A
  LD A,(IX+$15)
  AND $01
  ADD A,A
  LD C,A
  ADD A,A
  ADD A,B
  LD (IX+$01),A
  LD A,$04
  ADD A,C
  LD (IX+$08),A
  RET

; Routine at 9363
L9363:
  CALL $ACA2
  CALL $ACBC
  LD A,($A85F)
  AND A
  JP Z,LA0E1
  EX AF,AF'
  CALL $ACBC
  EX AF,AF'
  BIT 6,A
  JR Z,L93B2
  LD A,($8D46)
  RRA
  CALL C,LAAD2
  LD IY,($B793)
  LD DE,$01C8
  CALL $C25C
  DI
  LD A,($A85F)
  RLA
  LD A,(IX+$01)
  JR NC,L9398
  AND A
  RET NZ
  JR L9398_0

; Routine at 9398
;
; Used by the routine at L9363.
L9398:
  SUB $0A
  RET NZ
; This entry point is used by the routine at L9363.
L9398_0:
  BIT 5,(IX+$15)
  JR Z,L93A9
  LD ($A85F),A
  LD (IX+$15),$22
  RET

; Routine at 93A9
;
; Used by the routine at L9398.
L93A9:
  LD (IX+$15),$80
  LD ($A85F),A
  JR L93E1

; Routine at 93B2
;
; Used by the routine at L9363.
L93B2:
  RES 7,(IX+$15)
  SET 0,(IX+$15)
  RES 1,(IX+$15)
  SET 6,(IX+$15)
  RLA
  JR NC,L93D3
  LD (IX+$01),$0C
  LD (IX+$13),$F0
  LD A,$C0
  LD ($A85F),A
  RET

; Routine at 93D3
;
; Used by the routine at L93B2.
L93D3:
  LD (IX+$13),$AA
  LD (IX+$01),$06
  LD A,$41
  LD ($A85F),A
  RET

; Routine at 93E1
;
; Used by the routine at L93A9.
L93E1:
  LD A,(IX+$02)
  RRA
  RRA
  AND $01
  LD B,A
  LD A,(IX+$15)
  AND $01
  ADD A,A
  ADD A,A
  ADD A,B
  LD (IX+$01),A
  LD A,(IX+$14)
  DEC A
; This entry point is used by the routines at L857F and LACA9.
L93E1_0:
  RET NZ
  LD A,(IX+$01)
  ADD A,$0A
  LD (IX+$01),A
  LD A,(LA160)
  SUB $02
  JR C,L940C
  LD (LA160),A
  RET

; Routine at 940C
;
; Used by the routine at L93E1.
L940C:
  LD A,($8ED9)
  AND $10
  RET Z
  LD IY,$9B12
  LD A,($9B12)
  AND A
  JR Z,L940C_0
  LD IY,$9B28
  LD A,($9B28)
  AND A
  RET NZ
L940C_0:
  LD (IY+$00),$05
  LD (IY+$01),$00
  LD (IY+$09),$08
  LD A,(IX+$02)
  ADD A,$0C
  LD (IY+$02),A
  LD (IY+$04),$AC
  LD (IY+$11),$00
  LD (IY+$15),$00
  LD A,(LA160)
  CPL
  AND $01
  ADD A,$16
  LD (LA160),A
  PUSH IX
  CALL $C064
  LD (IX+$00),$0B
  LD (IX+$01),$02
  POP IX
  RET

; Unused
L9460:
  DEFS $01

; Routine at 9461
L9461:
  LD A,($B7E5)
  CP $02
  JP NZ,LA182_5
  LD A,($B7EF)
  AND A
  JP NZ,LA182_5
  LD A,($B7F7)
  AND A
  JP NZ,LA182_5
  LD C,A
  LD A,$FD
  IN A,($FE)
  CPL
  AND $0A
  JR Z,L9461_0
  SET 0,C
L9461_0:
  LD A,$FD
  IN A,($FE)
  CPL
  AND $05
  JR Z,L9461_1
  SET 1,C
L9461_1:
  LD A,$FA
  IN A,($FE)
  CPL
  AND $1F
  JR Z,L9461_2
  SET 4,C
L9461_2:
  LD A,C
  LD ($8ED9),A
  RET

; Routine at 949E
L949E:
  AND A
  JR NZ,L94DB_0
  LD A,($B7E5)
  CP $02
  LD A,($B7F7)
  JR NZ,L94DB_0
  LD A,($B7EF)
  AND A
  LD A,($B7F7)
  JR NZ,L94DB_0
  LD C,A
  LD A,$BF
  IN A,($FE)
  CPL
  AND $05
  JR Z,L949E_0
  SET 0,C
L949E_0:
  LD A,$BF
  IN A,($FE)
  CPL
  AND $0A
  JR Z,L949E_1
  SET 1,C
L949E_1:
  LD A,$5F
  IN A,($FE)
  CPL
  AND $1F
  JR Z,L949E_2
  SET 4,C
L949E_2:
  LD A,C
  LD ($8ED9),A
  RET

; Routine at 94DB
L94DB:
  LD A,($B7EF)
; This entry point is used by the routine at L949E.
L94DB_0:
  AND A
  JP Z,$A238
  DEC A
  JP Z,LA1EC
  DEC A
  JP Z,$A210
  JR L94F4

; Routine at 94EC
L94EC:
  IN A,($1F)
  AND $1F
  LD C,A
  JP $A26B

; Routine at 94F4
;
; Used by the routine at L94DB.
L94F4:
  LD A,$EF
  IN A,($FE)
  LD B,$FF
  RRA
  RL B
  RRA
  RL B
  RRA
  RL B
  RRA
  RRA
  RL B
  RLA
  RL B
  LD A,B
  CPL
  LD C,A
  JP $A26B

; Routine at 9510
L9510:
  LD A,$EF
  IN A,($FE)
  OR $E0
  LD B,A
  AND $08
  LD C,A
  LD A,B
  RRCA
  RRCA
  LD B,A
  AND $05
  OR C
  LD C,A
  LD A,B
  RRA
  RRA
  AND $10
  OR C
  LD C,A
  LD A,$F7
  IN A,($FE)
  RRA
  RRA
  RRA
  AND $02
  OR C
  CPL
  LD C,A
  JP $A26B

; Routine at 9538
L9538:
  LD C,$00
  LD A,$FD
  IN A,($FE)
  AND $0A
  LD B,A
  LD A,$BF
  IN A,($FE)
  AND $15
  OR B
  XOR $1F
  JR Z,L9538_0
  SET 0,C
L9538_0:
  LD A,$FD
  IN A,($FE)
  AND $15
  LD B,A
  LD A,$BF
  IN A,($FE)
  AND $0A
  OR B
  XOR $1F
  JR Z,L9538_1
  SET 1,C
L9538_1:
  LD A,$5A
  CALL $97A7
  JR Z,L9538_2
  SET 4,C
L9538_2:
  LD A,C
  LD ($8ED9),A
  RET

; Unused
L9570:
  DEFS $0E

; Routine at 957E
L957E:
  LD A,(IX+$12)
  AND $80
  LD ($9653),A
  LD A,($5CDC)
  INC A
  LD ($5CDC),A
  LD ($A7A8),IX
  PUSH IX
  POP DE
  LD BC,$A270
  LD HL,$9AD0
  AND A
  SBC HL,DE
  JR Z,L957E_0
  LD BC,$A274
  LD HL,$9AE6
  AND A
  SBC HL,DE
  JR Z,L957E_0
  LD BC,$A278
L957E_0:
  LD ($A27C),BC
  LD L,C
  LD H,B
  LD A,(HL)
  AND A
  JR Z,L95BB
  DEC (HL)
  JP LA355_0

; Routine at 95BB
;
; Used by the routine at L957E.
L95BB:
  INC HL
  LD A,(HL)
  AND A
  JR Z,L9628
  ADD A,(IX+$06)
  AND $3F
  LD (IX+$06),A
  INC HL
  LD B,A
  ADD A,$02
  AND $3C
  LD (HL),A
  AND $0F
  JR NZ,L95DD_1
  LD A,B
  AND $0C
  LD A,(HL)
  JR NZ,L95DD
  ADD A,$04
  JR L95DD_0

; Routine at 95DD
;
; Used by the routine at L95BB.
L95DD:
  SUB $04
; This entry point is used by the routine at L95BB.
L95DD_0:
  AND $3F
  LD (HL),A
; This entry point is used by the routine at L95BB.
L95DD_1:
  LD C,(HL)
  INC HL
  LD A,(HL)
  EXX
  LD HL,$8DB8
  CALL $B5BB
  PUSH HL
  POP IY
  BIT 0,(IY+$01)
  JR NZ,L9619
  CALL LABE6_1
  JR NC,L9619
  EXX
  PUSH BC
  CALL LACA9_5
  CALL LAC6A_0
  LD E,(IX+$06)
  POP BC
  PUSH DE
  LD (IX+$06),C
  PUSH BC
  CALL LA497_0
  POP BC
  LD A,(IX+$06)
  CP C
  POP DE
  RET NZ
  LD (IX+$06),E
  RET

; Routine at 9619
;
; Used by the routine at L95DD.
L9619:
  LD HL,($A27C)
; This entry point is used by the routine at L8802.
L9619_0:
  LD (HL),$02
  INC HL
  LD (HL),$00
  EXX
  LD (IX+$06),C
  JP $A490

; Routine at 9628
;
; Used by the routine at L95BB.
L9628:
  LD A,($8DB7)
  AND A
  JP Z,LA355_0
  LD B,A
  LD IY,$8DB8
L9628_0:
  BIT 0,(IY+$01)
  JR NZ,L9628_1
  PUSH BC
  CALL LABE6_1
  POP BC
  JR C,L964A
L9628_1:
  LD DE,$0010
  ADD IY,DE
  DJNZ L9628_0
  JR L964A_2

; Routine at 964A
;
; Used by the routine at L9628.
L964A:
  PUSH IY
  POP HL
  LD DE,$8DB8
  AND A
  SBC HL,DE
  LD E,L
  LD HL,($A27C)
  LD (HL),$00
  INC HL
  LD B,$00
  LD A,(IX+$06)
  ADD A,$10
  AND $3F
  CP $20
  JR C,L964A_0
  LD B,$FE
L964A_0:
  LD C,$FF
  LD A,(IY+$04)
  ADD A,$04
  CP (IX+$04)
  JR C,L964A_1
  LD A,B
  XOR $FE
  LD B,A
L964A_1:
  LD A,C
  XOR B
  LD (HL),A
  INC HL
  INC HL
  LD (HL),E
; This entry point is used by the routine at L9628.
L964A_2:
  LD A,(IX+$14)
  AND A
  JP Z,$A441
  DEC A
  LD (IX+$14),A
  JR Z,L96CE
  LD A,($B7E5)
  CP $02
  JR NZ,L964A_3
  LD A,(IX+$02)
  CP $88
  JR NC,L9717
  CP $80
  JR C,L964A_3
  LD A,(IX+$15)
  AND $7F
  CP $0A
  JR C,L9717
L964A_3:
  LD A,($8ED9)
  AND $10
  JR NZ,L96CE
  LD A,($9B68)
  AND $7F
  CP $03
  JR NZ,L96CE
  LD A,($9B56)
; This entry point is used by the routine at L9717.
L964A_4:
  LD B,A
  LD A,(IX+$15)
  AND $7F
  ADD A,B
  LD (IX+$02),A
  LD (IX+$04),$A7
  CALL LAC6A_0
  JP $A4A9

; Routine at 96CE
;
; Used by the routine at L964A.
L96CE:
  LD (IX+$14),$00
  LD (IX+$04),$A9
  LD A,($9B68)
  RLA
  JR NC,L96CE_0
  LD A,$FF
  LD ($9B68),A
; This entry point is used by the routine at L972C.
L96CE_0:
  LD A,(IX+$15)
  AND $7F
  ADD A,$24
  CP $30
  JR NZ,L96CE_1
  LD A,$34
L96CE_1:
  LD (IX+$06),A
  LD A,(IX+$15)
  AND $80
  LD (IX+$15),A
  LD (IX+$04),$A6
  LD A,(IX+$12)
  AND $80
  LD (IX+$12),A
  PUSH IX
  CALL $C064
  LD (IX+$00),$04
  LD (IX+$01),$02
; This entry point is used by the routine at L89A7.
L96CE_2:
  POP IX
  JP $A4A9

; Routine at 9717
;
; Used by the routine at L964A.
L9717:
  LD A,($B972)
  AND $10
  JR NZ,L972C
  LD A,($9B52)
  AND $7F
  CP $03
  JR NZ,L972C
  LD A,($9B40)
  JR L964A_4

; Routine at 972C
;
; Used by the routine at L9717.
L972C:
  LD (IX+$14),$00
  LD (IX+$04),$A9
  LD A,($9B52)
  RLA
  JR NC,L96CE_0
  LD A,$FF
  LD ($9B52),A
  JR L96CE_0

; Routine at 9741
L9741:
  LD A,($8D46)
  LD C,A
  AND $03
  JR NZ,L9741_3
  LD A,(IX+$12)
  INC A
  LD (IX+$12),A
  AND $7F
  CP $7F
  JR NZ,L9741_1
  LD A,(IX+$12)
  AND $80
  LD (IX+$12),A
  LD A,(IX+$06)
  ADD A,$04
  AND $0F
  JR NZ,L9741_0
  LD A,$04
L9741_0:
  LD B,A
  LD A,(IX+$06)
  AND $30
  OR B
  LD (IX+$06),A
L9741_1:
  LD A,C
  AND $07
; This entry point is used by the routines at LACA9 and LB154.
L9741_2:
  JR NZ,L9741_3
  INC (IX+$13)
  LD A,(IX+$13)
  SUB $94
  JR NZ,L9741_3
  LD (IX+$13),A
  LD A,(IX+$07)
  CP $06
  JR Z,L9741_3
  INC A
  LD (IX+$07),A
L9741_3:
  CALL LACA9_5
  LD E,(IX+$06)
  CALL $AC75
  LD A,(IX+$06)
  CP E
  CALL NZ,$AB13
  CALL $AB1F
  CALL $AFFC
  CALL $A4CF
  SET 7,(IX+$15)
; This entry point is used by the routines at L8450, L852B, LAAD2, LAC6A, LACA9
; and LB045.
L9741_4:
  LD A,(IX+$02)
  AND $07
  LD (IX+$01),A
  LD A,(IX+$04)
  CP $C0
  RET C
  LD HL,($A27C)
  LD (HL),$00
  INC HL
  LD (HL),$00
  SET 7,(IX+$00)
  LD A,($5CD9)
  DEC A
  LD ($5CD9),A
  RET

; Routine at 97CF
L97CF:
  LD A,($9B96)
  AND $7F
  RET Z
  CP $0A
  RET Z
  LD IY,$9B96
  CALL $AC45
  RET NC
  LD (IY+$00),$0A
  LD (IY+$01),$00
  LD (IY+$12),$50
  LD (IY+$13),$90
  LD A,(IY+$08)
  SUB $02
  ADD A,A
  ADD A,A
  ADD A,(IY+$02)
  LD (IY+$02),A
  LD (IY+$08),$02
; This entry point is used by the routine at L8ADE.
L97CF_0:
  LD (IY+$09),$0D
  LD A,(IY+$04)
  ADD A,$04
  LD (IY+$04),A
  LD A,(IX+$00)
  AND $7F
  CP $02
  JR NZ,L97CF_4
  LD A,(IX+$06)
  AND $10
  LD DE,$1030
  JR Z,L97CF_1
  LD DE,$0020
L97CF_1:
  LD A,($8D49)
  LD B,A
  RLA
  JR C,L97CF_2
  LD E,D
L97CF_2:
  LD A,B
  AND $0C
  JR NZ,L97CF_3
  LD A,(IX+$06)
  AND $0C
L97CF_3:
  OR E
  LD (IX+$06),A
  LD A,(IX+$12)
  AND $80
  LD (IX+$12),A
L97CF_4:
  PUSH IX
  LD IX,$C0CD
  LD (IX+$00),$06
  LD (IX+$01),$30
  POP IX
  LD BC,$0350
  JP $965D

; Unused
L9857:
  DEFS $03

; Routine at 985A
L985A:
  LD A,(IX+$04)
  CP $A0
  CALL NC,LA677_0
  LD DE,$0008
  LD B,$02
  LD HL,($A557)
  ADD HL,DE
  LD A,H
  CP B
  JR NZ,L985A_0
  LD H,B
  LD L,$00
L985A_0:
  LD ($A557),HL
  LD D,(IX+$04)
  LD A,(LA559)
  LD E,A
  ADD HL,DE
  LD (IX+$04),H
  LD A,L
  LD (LA559),A
  LD A,H
  CP $C0
  RET C
  SET 7,(IX+$00)
  RET

; Routine at 988D
L988D:
  LD A,(IX+$02)
  ADD A,$00
  LD (IX+$02),A
  CALL $ACA2
  CALL $ACBC
  LD DE,$0028
  LD B,$80
  JP $A567

; Routine at 98A3
L98A3:
  LD A,(IX+$02)
  AND $80
  LD ($9653),A
  LD A,($5CDC)
  INC A
  LD ($5CDC),A
  LD A,(IX+$01)
  CP $02
  JR NC,L98CE
  XOR $01
  LD (IX+$01),A
  LD A,(IX+$04)
  SUB $06
  LD (IX+$04),A
  JR C,L98CE_0
  CP $03
  JR NC,L98EB
  JR L98CE_0

; Routine at 98CE
;
; Used by the routine at L98A3.
L98CE:
  LD A,(IX+$02)
  AND $F8
  LD (IX+$02),A
  CALL LAAD2
  LD A,(IX+$01)
  AND A
  RET NZ
; This entry point is used by the routine at L98A3.
L98CE_0:
  SET 7,(IX+$00)
  LD A,(LA160)
  AND $01
  LD (LA160),A
  RET

; Routine at 98EB
;
; Used by the routine at L98A3.
L98EB:
  CALL $AFFC
  LD A,($9B96)
  AND $7F
  RET Z
  CP $0A
  RET Z
  LD IY,$9B96
  CALL $AC45
  RET NC
  LD (IY+$00),$0A
  LD (IY+$01),$00
  LD (IY+$12),$50
  LD (IY+$13),$90
  LD A,(IY+$08)
  SUB $02
  ADD A,A
  ADD A,A
  ADD A,(IY+$02)
  LD (IY+$02),A
  LD (IY+$08),$02
  LD (IY+$09),$0D
  LD A,(IY+$04)
  ADD A,$04
  LD (IY+$04),A
  LD (IX+$01),$02
  LD (IX+$09),$06
  LD (IX+$12),$50
  LD (IX+$13),$50
  LD A,(IX+$02)
  AND $F8
  LD (IX+$02),A
  PUSH IX
  LD IX,$C0CD
  LD (IX+$00),$06
  LD (IX+$01),$30
  POP IX
  LD BC,$0350
  JP $965D

; Unused
L995A:
  DEFS $01

; Routine at 995B
L995B:
  PUSH IX
  CALL $C064
  LD (IX+$00),$0C
  LD (IX+$01),$02
  POP IX
  RET

; Unused
L996B:
  DEFS $01

; Routine at 996C
L996C:
  LD A,($A66B)
  LD B,A
  LD A,($A85F)
  LD ($A66B),A
  LD A,B
  LD ($A85F),A
  RET

; Routine at 997B
L997B:
  CP $B0
  RET NC
  LD IY,$9B54
  CALL $AC45
  JR C,L999E
  LD A,($B7E5)
  CP $02
  RET NZ
  LD IY,$9B3E
  CALL LABE6_1
  RET NC
  CALL LA559_14
  CALL LA677_5
  JP LA559_14

; Routine at 999E
;
; Used by the routine at L997B.
L999E:
  LD A,(IX+$01)
  SUB $0A
  JR NZ,L99A9
  LD ($5CD9),A
  RET

; Routine at 99A9
;
; Used by the routine at L999E.
L99A9:
  LD A,(IY+$02)
  AND $80
  LD ($9653),A
  XOR A
  LD ($A65A),A
  LD BC,$0400
  CALL $965D
  LD A,(IX+$14)
  CP $05
  CALL NZ,LA559_10
  DEC (IY+$14)
  JR NZ,L99A9_0
  LD A,$80
  LD ($A85F),A
L99A9_0:
  LD A,($8D46)
  AND $01
  INC A
  NEG
  LD ($A558),A
  XOR A
  LD ($A557),A
  LD A,($8D48)
  LD B,A
  AND $01
; This entry point is used by the routine at L8C04.
L99A9_1:
  INC A
  RL B
  JR C,L99A9_2
  NEG
L99A9_2:
  LD ($A591),A
  LD (IX+$00),$0B
  LD (IX+$01),$00
  CALL $AB06
  LD A,(IX+$14)
  CP $06
  JP Z,LAA96_0
  LD (IY+$14),A
  LD A,(IY+$14)
  CP $01
  JR NZ,L99A9_3
  LD ($A85F),A
  LD A,$01
L99A9_3:
  AND A
  JP Z,$A834
  PUSH AF
  LD A,(IY+$0C)
  CP $22
  JR C,L99A9_5
  XOR A
  LD ($9B7B),A
  LD (IY+$15),$4E
; This entry point is used by the routine at L8D27.
L99A9_4:
  LD (IY+$01),$04
  PUSH IX
  CALL $C064
  LD (IX+$00),$0A
  LD (IX+$01),$10
  POP IX
  LD A,($8D46)
  AND $FE
  LD ($8D46),A
L99A9_5:
  POP AF
  CP $08
  JR NZ,L9A48
  LD BC,$5000
  JP $965D

; Routine at 9A48
;
; Used by the routine at L99A9.
L9A48:
  CP $09
  JR NZ,L9A65
  LD A,($9B96)
  AND $7F
  RET Z
  CP $0A
  RET Z
  PUSH IX
  LD IX,$A748
  LD IY,$9B96
  CALL $A4E0
  POP IX
  RET

; Routine at 9A65
;
; Used by the routine at L9A48.
L9A65:
  CP $05
  JP Z,$A860
  CP $04
  JR NZ,L9A9A
  LD (IY+$14),$FF
  LD A,$02
  LD ($9AD7),A
  LD ($9AED),A
  LD ($9B03),A
  LD HL,($8D48)
  LD A,L
  AND $1F
  ADD A,$1F
  LD ($9AE3),A
  LD A,H
  AND $1F
  ADD A,$1F
  LD ($9AF9),A
  LD A,H
  ADD A,L
  AND $1F
  ADD A,$1F
  LD ($9B0F),A
  RET

; Routine at 9A9A
;
; Used by the routine at L9A65.
L9A9A:
  CP $02
  RET NZ
  LD A,$03
  LD ($5CD9),A
  LD (IY+$14),$FF
  LD IY,$0000
  LD L,(IY+$02)
  LD H,(IY+$04)
  LD A,(IY+$06)
; This entry point is used by the routine at L8D38.
L9A9A_0:
  AND $0F
  LD DE,$080C
; This entry point is used by the routines at L8D27 and L8D38.
L9A9A_1:
  CP $04
  JR Z,L9A9A_2
  LD DE,$040C
  CP $08
  JR Z,L9A9A_2
  LD DE,$0408
L9A9A_2:
  LD A,(IY+$06)
  AND $30
  OR E
  LD ($A809),A
  LD A,(IY+$06)
  AND $30
  OR D
  LD ($A832),A
  LD D,(IY+$07)
  LD C,(IY+$00)
  LD B,(IY+$01)
  LD IY,$9AD0
  LD A,($9AD0)
  AND A
  JR Z,L9A9A_3
  LD IY,$9AE6
L9A9A_3:
  LD (IY+$02),L
  LD (IY+$04),H
  LD (IY+$00),$02
  LD (IY+$11),$00
  LD (IY+$07),D
  LD (IY+$00),C
  LD (IY+$01),B
  LD (IY+$06),$00
  LD IY,$9AE6
  LD A,($9AE6)
  AND A
  JR Z,L9A9A_4
  LD IY,$9AFC
L9A9A_4:
  LD (IY+$02),L
  LD (IY+$04),H
  LD (IY+$00),$02
  LD (IY+$11),$00
  LD (IY+$07),D
  LD (IY+$00),C
  LD (IY+$01),B
  LD (IY+$06),$00
  RET

; Routine at 9B34
L9B34:
  XOR A
  LD ($9B7B),A
  LD (IY+$15),$20
  LD A,($A85F)
  AND A
  JR Z,L9B34_0
  LD A,$0A
L9B34_0:
  LD (IY+$01),A
  PUSH IX
  CALL $C064
  LD (IX+$00),$09
  LD (IX+$01),$C0
  POP IX
  LD A,($8D46)
  AND $FE
  LD ($8D46),A
  RET

; Unused
L9B5F:
  DEFS $01

; Routine at 9B60
L9B60:
  PUSH IX
  LD IX,$9BC2
  CALL $B684
  CALL $9910
  CALL $9C25
  LD (IX+$11),$00
  LD A,(IX+$02)
  ADD A,$10
  CP $E9
  JR NC,L9B60_0
  LD (IX+$02),A
L9B60_0:
  CALL $C064
  LD (IX+$00),$07
  LD (IX+$01),$20
  POP IX
  LD A,$01
  LD ($A899),A
  LD A,($B7E8)
  INC A
  LD ($B7E8),A
  RET

; Unused
L9B99:
  DEFS $01

; Routine at 9B9A
L9B9A:
  LD A,($8D46)
  AND $01
  LD (IX+$01),A
  CALL $AB06
  LD HL,($A8CF)
  LD DE,$FFE0
  ADD HL,DE
  LD A,($8D46)
  CP $38
  JR C,L9B9A_0
  LD ($A8CF),HL
L9B9A_0:
  LD A,($A8D1)
  LD E,A
  LD D,(IX+$04)
  ADD HL,DE
  LD A,L
  LD ($A8D1),A
  LD A,H
  LD (IX+$04),A
  SUB $06
  LD ($9B58),A
  LD ($9B42),A
  RET

; Unused
L9BCF:
  DEFS $03

; Routine at 9BD2
L9BD2:
  CALL LACA9_5
  LD A,(IX+$04)
  CP $C0
  JR NC,L9BFD
  CALL $AC75
  DEC (IX+$15)
  RET NZ
  LD A,(IX+$01)
  CP $04
  JR Z,L9BFD
  INC (IX+$01)
  CALL $AB06
  LD A,(IX+$14)
  SRL A
  LD (IX+$14),A
  INC A
  LD (IX+$15),A
  RET

; Routine at 9BFD
;
; Used by the routine at L9BD2.
L9BFD:
  SET 7,(IX+$00)
  RET

; Routine at 9C02
L9C02:
  LD A,(IX+$04)
  CP $08
  JR NC,L9C0D
  INC (IX+$04)
  RET

; Routine at 9C0D
;
; Used by the routine at L9C02.
L9C0D:
  CALL LA96A_1
  LD HL,($AA7B)
  LD A,H
  AND A
  JR Z,L9C1C
  CALL $AA44
  JR L9C1C_0

; Routine at 9C1C
;
; Used by the routine at L9C0D.
L9C1C:
  LD B,$01
  LD A,($8D46)
  AND $03
  CALL Z,$AA7D
  CALL LACA9_5
  CALL $AFFC
  CALL LAC6A_0
; This entry point is used by the routine at L9C0D.
L9C1C_0:
  LD A,(IX+$04)
  CP $C0
  JR C,L9C3B
  SET 7,(IX+$00)
  RET

; Routine at 9C3B
;
; Used by the routine at L9C1C.
L9C3B:
  LD A,($8D46)
  AND $00
  CALL Z,LAAD2
  LD A,($5CDB)
  AND A
  JP NZ,$AA94
  RET

; Routine at 9C4B
L9C4B:
  AND $04
  LD C,A
  LD A,(IX+$06)
  ADD A,$10
  AND $3F
  CP $20
  JR NC,L9C4B_0
  INC C
  INC C
L9C4B_0:
  LD B,$00
  LD HL,$A96F
  ADD HL,BC
  LD A,(HL)
  LD (IX+$01),A
  INC HL
  LD A,(HL)
  LD (IX+$13),A
  LD (IX+$12),$F0
  RET

; Routine at 9C6F
L9C6F:
  LD BC,$0544
  ADD A,H
  DEC C
  RET P
  ADD HL,BC
  RET NZ
  LD A,($9B80)
  AND A
  RET NZ
  LD A,($8D48)
  LD B,A
  LD A,($8D49)
  ADD A,B
  AND $3F
  RET NZ
  LD ($9B91),A
  LD A,(IX+$04)
  ADD A,$08
  CP $C0
  RET NC
  LD ($9B84),A
  LD A,$04
  LD ($9B80),A
  LD A,(IX+$02)
  ADD A,$08
  LD ($9B82),A
  LD A,$0A
  LD ($9B81),A
  LD A,$08
  LD ($9B8C),A
  LD ($9B8D),A
  LD HL,$1002
  LD ($9B88),HL
  LD HL,$0000
  LD ($A557),HL
  RET

; Routine at 9CBC
L9CBC:
  LD A,(IX+$04)
  CP $08
  JR NC,L9CC7
  INC (IX+$04)
  RET

; Routine at 9CC7
;
; Used by the routine at L9CBC.
L9CC7:
  CALL LA96A_1
  LD A,(IX+$06)
  SUB $10
  AND $3F
  LD ($AA03),A
  LD HL,($AA7B)
  LD A,H
  AND A
  JR Z,L9CE0
  CALL $AA44
  JR L9CE0_0

; Routine at 9CE0
;
; Used by the routine at L9CC7.
L9CE0:
  LD B,$01
  LD A,($8D46)
  AND $03
  CALL Z,$AA7D
  CALL LACA9_5
  CALL $AFFC
  CALL LAC6A_0
; This entry point is used by the routine at L9CC7.
L9CE0_0:
  LD A,(IX+$04)
  CP $C0
  JR C,L9CFF
  SET 7,(IX+$00)
  RET

; Routine at 9CFF
;
; Used by the routine at L9CE0.
L9CFF:
  CALL LAAD2
  LD C,$00
  LD A,(IX+$06)
  SUB $10
  AND $3F
  XOR C
  AND $20
  JR Z,L9D21_0
  LD A,(IX+$13)
  LD (IX+$13),A
  BIT 5,C
  JR Z,L9D21
  LD A,$0E
  SUB (IX+$01)
  JR L9D21_0

; Routine at 9D21
;
; Used by the routine at L9CFF.
L9D21:
  LD A,(IX+$01)
  XOR $07
  ADD A,$07
; This entry point is used by the routine at L9CFF.
L9D21_0:
  LD A,($5CDB)
  AND A
  JP NZ,$AA94
  RET

; Routine at 9D30
L9D30:
  LD (IX+$13),$90
  CALL LAAD2
  LD A,(IX+$01)
  AND $3F
  CP $09
  RET NZ
  SET 7,(IX+$00)
  RET

; Routine at 9D44
L9D44:
  LD A,L
  CP $10
  JR NC,L9D44_0
  LD L,$10
  LD ($AA7B),HL
L9D44_0:
  LD A,(IX+$02)
  CP L
; This entry point is used by the routine at L901E.
L9D44_1:
  JR Z,L9D44_4
; This entry point is used by the routines at L8F49 and L901E.
L9D44_2:
  JR C,L9D44_3
  DEC (IX+$02)
  DEC (IX+$02)
L9D44_3:
  INC (IX+$02)
L9D44_4:
  LD A,(IX+$04)
  CP H
  JR Z,L9D6F
  JR C,L9D6B
  DEC (IX+$04)
  RET

; Routine at 9D6B
;
; Used by the routine at L9D44.
L9D6B:
  INC (IX+$04)
  RET

; Routine at 9D6F
;
; Used by the routine at L9D44.
L9D6F:
  LD A,(IX+$02)
  CP L
  RET NZ
  LD HL,$0000
  LD ($AA7B),HL
  RET

; Unused
L9D7B:
  DEFS $02

; Routine at 9D7D
L9D7D:
  LD A,(IX+$06)
  LD L,A
  SUB (IX+$14)
  JR Z,L9D94
  BIT 5,A
  LD A,B
  JR NZ,L9D7D_0
  NEG
L9D7D_0:
  ADD A,L
  AND $3F
  LD (IX+$06),A
  RET

; Routine at 9D94
;
; Used by the routine at L9D7D.
L9D94:
  LD A,($8D48)
  AND $3F
  LD (IX+$14),A
  RET

; Routine at 9D9D
L9D9D:
  LD A,$06
  LD ($9BAC),A
  XOR A
  LD ($9BBD),A
  LD ($BB84),IY
  LD A,(IY+$0C)
  CP $1C
  LD A,$04
  JR Z,L9D9D_0
  LD A,$0C
L9D9D_0:
  ADD A,(IY+$02)
  LD ($9BAE),A
  LD A,(IY+$04)
  ADD A,$06
  LD ($9BB0),A
  LD A,$1B
  LD ($891D),A
  LD HL,$0000
  LD ($A8CF),HL
  INC (IY+$14)
  RET

; Routine at 9DD2
L9DD2:
  LD A,(IX+$12)
  LD B,A
  SUB $40
  JR NC,L9DD2_1
  LD A,(IX+$01)
  AND $3F
  INC A
  LD E,A
  LD A,(IX+$13)
  LD D,A
  RRCA
  RRCA
  RRCA
  RRCA
  AND $0F
  CP E
  JR NC,L9DD2_0
  LD A,D
  AND $0F
  LD E,A
L9DD2_0:
  LD (IX+$01),E
  LD A,B
  ADD A,A
  ADD A,A
  AND $C0
  OR (IX+$12)
  EX AF,AF'
  CALL $AB06
  EX AF,AF'
L9DD2_1:
  LD (IX+$12),A
  RET

; Routine at 9E06
L9E06:
  CALL $7767
  LD A,(DE)
  LD (IX+$08),A
  INC DE
  LD A,(DE)
  LD (IX+$09),A
  RET

; Routine at 9E13
L9E13:
  PUSH IX
  CALL $C064
  LD (IX+$00),$03
  POP IX
  RET

; Routine at 9E1F
L9E1F:
  LD A,(IX+$04)
  CP $98
  RET C
  LD A,(IX+$0F)
  CP $AA
  RET NC
  LD IY,$9B54
  CALL LABE6_1
  JR C,L9E1F_0
  LD A,($B7E5)
  CP $02
  RET NZ
  LD IY,$9B3E
  CALL LABE6_1
  RET NC
L9E1F_0:
  RES 7,(IX+$12)
  BIT 7,(IY+$02)
  JR Z,L9E1F_1
  SET 7,(IX+$12)
L9E1F_1:
  CALL $AB13
  LD A,(IY+$14)
  CP $03
  JR NZ,L9E85
  LD A,(IY+$0C)
  CP $1C
  JR NZ,L9E85
  LD A,(IX+$02)
  SUB (IY+$02)
  JR NC,L9E1F_2
  XOR A
L9E1F_2:
  AND $FC
  CP $19
  JR C,L9E1F_3
  LD A,$18
L9E1F_3:
  LD B,A
  LD A,(IX+$15)
  AND $80
  OR B
  LD (IX+$15),A
  LD (IX+$14),$B0
  LD (IX+$04),$A7
  RET

; Routine at 9E85
;
; Used by the routine at L9E1F.
L9E85:
  LD (IX+$04),$A6
  LD A,(IX+$12)
  AND $80
  LD (IX+$12),A
  LD A,(IY+$0C)
  LD HL,$ABEE
  CP $1C
  JR Z,L9E85_0
  LD HL,$ABFC
L9E85_0:
  LD A,(IX+$02)
  ADD A,$03
  SUB (IY+$02)
  JR C,L9EAF
L9E85_1:
  CP (HL)
  JR C,L9EAF
  INC HL
  INC HL
  JR L9E85_1

; Routine at 9EAF
;
; Used by the routine at L9E85.
L9EAF:
  INC HL
  LD A,(HL)
  BIT 2,A
  JR NZ,L9EB8
  JP $ABCB

; Routine at 9EB8
;
; Used by the routine at L9EAF.
L9EB8:
  CALL $ABBF
  LD A,(HL)
  CALL $ABCB
  LD A,(IX+$06)
  XOR $1F
  INC A
  AND $3F
  LD (IX+$06),A
  RET

; Routine at 9ECB
L9ECB:
  AND $03
  ADD A,A
  LD B,A
  ADD A,A
  ADD A,B
  LD HL,$AC0A
  CALL $B5BB
  LD A,$04
L9ECB_0:
  CP (IX+$06)
  JR Z,L9EE9
  INC HL
  ADD A,$04
  CP $10
  JR NZ,L9ECB_0
  ADD A,$04
  JR L9ECB_0

; Routine at 9EE9
;
; Used by the routine at L9ECB.
L9EE9:
  LD A,(HL)
  LD (IX+$06),A
  RET

; Data block at 9EEE
L9EEE:
  DEFB $04,$07,$08,$06,$0C,$05,$10,$00
  DEFB $14,$01,$18,$02,$FF,$03,$06,$07
  DEFB $0C,$06,$12,$05,$1A,$00,$20,$01
  DEFB $26,$02,$FF,$03

; Message at 9F0A
L9F0A:
  DEFM "<84,($<84444<88488<<88<<"

; Routine at 9F22
L9F22:
  LD L,(IX+$02)
  LD A,(IY+$02)
  LD C,(IX+$0C)
  LD B,(IY+$0C)
  CALL $AC3E
  RET NC
  LD L,(IX+$04)
  LD A,(IY+$04)
  LD C,(IX+$0D)
  LD B,(IY+$0D)
  SUB L
  JR C,L9F43
  SUB C
  RET

; Routine at 9F43
;
; Used by the routine at L9F22.
L9F43:
  ADD A,B
  RET

; Routine at 9F45
L9F45:
  LD L,(IX+$02)
  LD A,(IY+$02)
  LD C,(IX+$0C)
  LD B,(IY+$0C)
  CALL $AC61
  RET NC
  LD L,(IX+$04)
  LD A,(IY+$04)
  LD C,(IX+$0D)
  LD B,(IY+$0D)
  SUB L
  JR C,L9F68
; This entry point is used by the routine at LACA9.
L9F45_0:
  DEC C
  DEC C
  SUB C
  RET

; Routine at 9F68
;
; Used by the routine at L9F45.
L9F68:
  DEC B
  DEC B
  ADD A,B
  RET

; Routine at 9F6C
L9F6C:
  CALL $AC97
  CALL $ACA2
  JP $ACBC

; Routine at 9F75
L9F75:
  LD B,$3F
  CALL $AC97
  CALL C,$ACEE
  LD B,$1F
  CALL $ACA2
  CALL C,$ACEE
  CALL $ACBC
  RET C
  JP $ACEE

; Routine at 9F8C
L9F8C:
  LD A,(IX+$04)
  CP $AF
  RET C
  LD (IX+$04),$AF
  RET

; Routine at 9F97
L9F97:
  LD A,(IX+$04)
  CP $08
  RET NC
  LD (IX+$04),$08
  RET

; Routine at 9FA2
L9FA2:
  LD A,(IX+$02)
  CP $08
  RET NC
  LD (IX+$02),$08
  RET

; Routine at 9FAD
L9FAD:
  LD A,(IX+$02)
  CP $80
  RET NC
  LD (IX+$02),$80
  RES 0,(IX+$01)
  RET

; Routine at 9FBC
L9FBC:
  LD A,(IX+$0C)
  ADD A,(IX+$02)
  CP $F9
  RET C
  LD A,$F8
  SUB (IX+$0C)
  LD (IX+$02),A
  RET

; Routine at 9FCE
L9FCE:
  LD A,(IX+$0C)
  ADD A,(IX+$02)
  CP $80
  RET C
  LD A,$80
  SUB (IX+$0C)
  LD (IX+$02),A
  LD A,(IX+$0C)
  CP $1C
  JR Z,L9FCE_0
  CP $2C
  RET NZ
L9FCE_0:
  SET 0,(IX+$01)
  RET

; Routine at 9FEE
L9FEE:
  LD A,(IX+$06)
  XOR B
  INC A
  AND $3F
  LD (IX+$06),A
  RET

; Routine at 9FF9
L9FF9:
  LD H,$00
  LD B,H
  LD L,H
  LD D,(IX+$07)
  LD A,$08
  JR LA004_0

; Routine at A004
LA004:
  DEC A
  RET Z
  SLA C
  RL B
; This entry point is used by the routine at L9FF9.
LA004_0:
  SRL D
  JR NC,LA004
  ADD HL,BC
  JP NZ,LACA9_3
  RET

; Routine at A013
LA013:
  PUSH BC
  CALL $ACF9
  POP BC
  INC B
  RET NZ
  LD A,L
  CPL
  LD L,A
  LD A,H
  CPL
  LD H,A
  INC HL
  RET

; Routine at A022
LA022:
  LD HL,$AD58
  LD A,(IX+$06)
  AND $0F
  LD B,A
  CALL $B5BB
  LD C,(HL)
  LD A,B
  XOR $0F
  INC A
  LD HL,$AD58
  CALL $B5BB
  LD L,(HL)
  LD H,$00
  LD B,H
  LD A,(IX+$06)
  AND $30
  RET Z
  CP $10
  JR NZ,LA04C
  LD A,L
  LD L,C
  LD C,A
  DEC B
  RET

; Routine at A04C
;
; Used by the routine at LA022.
LA04C:
  CP $20
  JR NZ,LA053
  DEC H
  DEC B
  RET

; Routine at A053
;
; Used by the routine at LA04C.
LA053:
  LD A,C
  LD C,L
  LD L,A
  DEC H
  RET

; Routine at A058
LA058:
  RST $38
  DEFB $FD
  JP M,$E6F4
  RET PO
  CALL NC,LB4A8_0
  AND C
  ADC A,L
; This entry point is used by the routine at L9264.
LA058_0:
  LD A,B
  LD H,C
  LD C,D
  LD SP,$0018
  CALL $AD22
  PUSH HL
  CALL $AD13
  LD D,(IX+$02)
  LD E,(IX+$03)
  ADD HL,DE
  LD (IX+$02),H
  LD (IX+$03),L
  POP BC
  CALL $AD13
  LD D,(IX+$04)
  LD E,(IX+$05)
  ADD HL,DE
  LD (IX+$04),H
  LD (IX+$05),L
  RET

; Routine at A08F
LA08F:
  LD IY,($9789)
  LD HL,$4081
  LD B,$0C
LA08F_0:
  PUSH BC
  PUSH HL
  CALL $ADAC
  POP HL
  LD A,$20
  ADD A,L
  LD L,A
  JR NC,LA08F_1
  LD A,$08
  ADD A,H
  LD H,A
LA08F_1:
  POP BC
  DJNZ LA08F_0
  RET

; Routine at A0AC
LA0AC:
  LD B,$0F
LA0AC_0:
  PUSH BC
  PUSH HL
  CALL $ADBC
  POP HL
  INC L
  INC L
  POP BC
  INC IY
  DJNZ LA0AC_0
  RET

; Routine at A0BC
LA0BC:
  BIT 7,(IY+$00)
  RET NZ
  BIT 4,(IY+$00)
  RET NZ
  LD E,(IX+$00)
  LD D,(IX+$01)
  LD ($ADDE),SP
  EX DE,HL
  LD SP,HL
  EX DE,HL
  LD B,$08
LA0BC_0:
  POP DE
  LD (HL),E
  INC L
  LD (HL),D
  DEC L
  INC H
  DJNZ LA0BC_0
  LD SP,$0000
  RET

; Routine at A0E1
;
; Used by the routine at L9363.
LA0E1:
  LD IY,($9789)
  LD HL,$DE01
  LD (LAEFB),HL
  LD HL,$D7A2
  LD ($AEFD),HL
  LD B,$0C
LA0E1_0:
  PUSH BC
  PUSH IY
  CALL LADED_1
  POP IY
  CALL $AE2A
  LD HL,(LAEFB)
  INC H
  LD (LAEFB),HL
  LD HL,($AEFD)
  LD DE,$0020
  ADD HL,DE
  LD ($AEFD),HL
  POP BC
  DJNZ LA0E1_0
  RET

; Routine at A113
LA113:
  LD B,$0F
  LD HL,(LAEFB)
LA113_0:
  PUSH BC
  PUSH HL
  BIT 7,(IY+$00)
  CALL Z,$AE82
  POP HL
  INC L
  INC L
  INC IY
  POP BC
  DJNZ LA113_0
  RET

; Routine at A12A
LA12A:
  LD B,$0F
  LD HL,($AEFD)
; This entry point is used by the routine at LA142.
LA12A_0:
  BIT 7,(IY+$00)
  JR NZ,LA142
  RES 6,(HL)
  INC L
  LD A,L
  CPL
  AND $1F
  JR Z,LA142
  RES 6,(HL)
  JR LA142_0

; Routine at A142
;
; Used by the routine at LA12A.
LA142:
  INC L
; This entry point is used by the routine at LA12A.
LA142_0:
  INC L
  INC IY
  DJNZ LA12A_0
  RET

; Routine at A149
LA149:
  LD HL,(LAEFB)
  INC H
  INC L
LA149_0:
  PUSH BC
  PUSH HL
  BIT 7,(IY+$00)
  CALL Z,$AE60
  POP HL
  INC L
  INC L
  INC IY
  POP BC
  DJNZ LA149_0
  RET

; Routine at A160
LA160:
  LD DE,$55AA
  LD C,L
  CALL LAE6A_0
  LD A,L
  AND $1F
  CP $1D
  RET Z
  LD L,C
  INC L
  LD B,$04
LA160_0:
  LD A,(HL)
  AND E
  LD (HL),A
  LD A,L
  ADD A,$20
  LD L,A
  LD A,(HL)
  AND D
  LD (HL),A
  LD A,L
  ADD A,$20
  LD L,A
  DJNZ LA160_0
  RET

; Routine at A182
LA182:
  LD ($AEB5),SP
  PUSH HL
  LD DE,$FFE0
  ADD HL,DE
  LD (HL),$00
  INC L
  LD (HL),$00
  POP HL
  LD A,L
  AND $1F
  DEC A
  JR Z,LA182_1
  PUSH HL
  DEC L
  LD DE,$0020
  LD B,$08
; This entry point is used by the routine at LACA9.
LA182_0:
  RES 0,(HL)
  ADD HL,DE
  DJNZ LA182_0
  POP HL
LA182_1:
  LD SP,$AEFF
  LD DE,$001F
  LD A,$08
LA182_2:
  POP BC
  LD (HL),C
  INC L
  LD (HL),B
  ADD HL,DE
  DEC A
  JR NZ,LA182_2
  LD SP,$0000
  LD C,L
  LD (HL),A
  INC L
  LD (HL),A
  LD A,L
  AND $1F
  CP $1E
  JR Z,LA182_4
  INC L
  LD DE,$FFE0
  ADD HL,DE
  LD B,$08
LA182_3:
  RES 7,(HL)
  ADD HL,DE
  DJNZ LA182_3
LA182_4:
  LD A,C
  AND $1F
  LD HL,($AEFD)
  ADD A,L
  LD L,A
  LD DE,$FFDE
  ADD HL,DE
  PUSH HL
; This entry point is used by the routines at L8450, L84FF and L9461.
LA182_5:
  LD A,(IY+$00)
  AND $0F
  LD HL,$AEEB
  CALL $B5BB
  LD B,(HL)
  POP HL
  LD (HL),B
  INC L
  LD (HL),B
  RET

; Data block at A1EC
;
; Used by the routine at L94DB.
LA1EC:
  DEFB $57,$4F,$5F

; Message at A1EF
LA1EF:
  DEFM " pGW"

; Data block at A1F3
LA1F3:
  DEFB $5F,$4F,$00

; Message at A1F6
LA1F6:
  DEFM "GWO"

; Data block at A1F9
LA1F9:
  DEFB $5F,$00,$00,$00,$00,$00,$FF,$FE
  DEFB $80,$00,$80,$00,$80,$00,$80,$00
  DEFB $80,$00,$80,$00,$00,$00,$00,$02
  DEFB $00,$02,$00,$02,$00,$02,$00,$02
  DEFB $00,$06,$00,$FE,$00,$00,$00,$02
  DEFB $00,$02,$00,$06,$00,$06,$00,$06
  DEFB $00,$0E,$0F,$FE,$00,$00,$00,$02
  DEFB $00,$02,$00,$06,$00,$06,$00,$0E
  DEFB $00,$3E,$FF,$FE,$00,$00,$FF,$FE
  DEFB $FF,$FE,$FF,$FE,$FF,$FE,$FF,$FE
  DEFB $FF,$FE,$FF,$FE,$00,$00,$00,$02
  DEFB $00,$02,$00,$02,$00,$06,$00,$06
  DEFB $00,$0E,$01,$FE,$00,$00,$00,$02
  DEFB $00,$02,$00,$06,$00,$06,$00,$06
  DEFB $00

; Routine at A26A
LA26A:
  LD C,$FF
  CP $00
  NOP
  RRCA
  XOR A
  LD C,A
  XOR A
  RRA
  XOR A
  LD E,A
  XOR A
  CPL
  XOR A
  CCF
  XOR A
  CCF
  XOR A
  RST $38
  XOR (HL)
  NOP
  NOP
  LD IY,($9789)
  XOR A
  LD ($B2AD),A
  LD ($9653),A
  LD C,$0C
LA26A_0:
  LD B,$0F
LA26A_1:
  PUSH BC
  LD A,(IY+$00)
  AND $A0
  JR NZ,LA26A_2
  CALL LAF10_5
  CALL $974A
  LD A,($9653)
  XOR $01
  LD ($9653),A
LA26A_2:
  PUSH IY
  CALL $C077
  POP IY
  LD D,$03
  CALL $97D3
  INC IY
  POP BC
  DJNZ LA26A_1
  LD A,($B2AD)
  INC A
  LD ($B2AD),A
  DEC C
  JR NZ,LA26A_0
  RET

; Routine at A2C2
LA2C2:
  LD A,($B2AD)
  ADD A,A
  LD HL,$AFE4
  CALL $B5BB
  LD B,(HL)
  INC HL
  LD C,(HL)
  LD A,(IY+$00)
  AND $0F
  CP $06
  JP C,$965D
  LD A,C
  ADD A,C
  DAA
  LD C,A
  LD A,B
  ADC A,B
  DAA
  LD B,A
  JP $965D

; Data block at A2E4
LA2E4:
  DEFB $01,$20,$01,$10,$01,$00,$00,$90
  DEFB $00,$80,$00,$70,$00,$60,$00,$50
  DEFB $00,$40,$00

; Routine at A2F7
LA2F7:
  JR NC,LA2F7_0
LA2F7_0:
  JR NZ,LA2F7_1
LA2F7_1:
  DJNZ $A2AC
  LD ($5CDB),A
  LD A,(IX+$04)
  CP $80
  RET NC
  ADD A,(IX+$0D)
  CP $20
  RET C
  LD IY,($9789)
  LD DE,$000F
  LD H,D
  LD B,$0C
  LD C,$20
; This entry point is used by the routine at LA325.
LA2F7_2:
  LD A,C
  SUB (IX+$04)
  JR C,LA325
  SUB (IX+$0D)
  JR C,LA333
  JR LA325_0

; Routine at A325
;
; Used by the routine at LA2F7.
LA325:
  ADD A,$08
  JR C,LA333
; This entry point is used by the routine at LA2F7.
LA325_0:
  ADD IY,DE
  LD A,C
  ADD A,$08
  LD C,A
  INC H
  DJNZ LA2F7_2
  RET

; Routine at A333
;
; Used by the routines at LA2F7 and LA325.
LA333:
  LD A,H
  LD ($B2AD),A
  LD A,(IX+$04)
  ADD A,(IX+$0D)
  SUB C
  LD (LB088),A
  LD H,C
  LD A,(IX+$02)
  LD BC,$1008
  SUB C
LA333_0:
  SUB B
  JR C,LA355
  INC IY
  LD E,A
  LD A,C
  ADD A,B
  LD C,A
  LD A,E
  JR LA333_0

; Routine at A355
;
; Used by the routine at LA333.
LA355:
  LD ($B06A),A
  LD L,C
  LD D,$0F
  BIT 7,(IY+$00)
  JR Z,LA355_1
  LD A,L
  CP $E8
  JR Z,LA355_0
  LD A,(IX+$0C)
  ADD A,$00
  JR NC,LA355_0
  SET 7,D
  LD E,L
  LD A,$10
  ADD A,L
  LD L,A
  INC IY
  BIT 7,(IY+$00)
  JR Z,LA355_1
  LD L,E
  DEC IY
; This entry point is used by the routines at L957E and L9628.
LA355_0:
  LD A,H
  CP $78
  RET NC
  LD C,$08
  ADD A,C
  LD H,A
  LD A,$00
  SUB C
  RET C
  LD B,$00
  LD C,$0F
  ADD IY,BC
  PUSH HL
  POP HL
  LD A,($B2AD)
  INC A
  LD ($B2AD),A
  BIT 7,(IY+$00)
  JR Z,LA355_1
  BIT 7,D
  RET Z
  LD A,L
  ADD A,$10
  LD L,A
  INC IY
  BIT 7,(IY+$00)
  RET NZ
LA355_1:
  LD ($B290),HL
  PUSH HL
  LD L,(IX+$02)
  LD H,(IX+$04)
  LD ($B1C4),HL
  POP HL
  RES 7,D
  LD A,L
  CP $E8
  JR Z,LA355_2
  BIT 7,(IY+$01)
  JR NZ,LA355_3
LA355_2:
  RES 1,D
LA355_3:
  CP $08
  JR Z,LA355_4
  BIT 7,(IY-$01)
  JR NZ,LA355_5
LA355_4:
  RES 0,D
LA355_5:
  LD A,H
  CP $21
  JR C,LA355_6
  BIT 7,(IY-$0F)
  JR NZ,LA355_6
  RES 2,D
LA355_6:
  CP $78
  JR NC,LA355_7
  BIT 7,(IY+$0F)
  JR NZ,LA355_7
  RES 3,D
LA355_7:
  LD A,D
  LD ($B293),A
  LD A,(IX+$00)
  AND $3F
  CP $05
  JP Z,LB18B_0
  LD A,(IX+$06)
  LD ($B28E),A
  CP $20
  JR NC,LA40C
  RES 3,D
  JR LA40C_0

; Routine at A40C
;
; Used by the routine at LA355.
LA40C:
  RES 2,D
; This entry point is used by the routine at LA355.
LA40C_0:
  ADD A,$10
  AND $3F
  CP $20
  JR NC,LA41A
  RES 1,D
  JR LA41A_0

; Routine at A41A
;
; Used by the routine at LA40C.
LA41A:
  RES 0,D
; This entry point is used by the routine at LA40C.
LA41A_0:
  LD A,D
  SRL A
  LD B,$1F
  JR NC,LA428
  JP Z,LB16E_0
  JR LA431_0

; Routine at A428
;
; Used by the routine at LA41A.
LA428:
  SRL A
  JR NC,LA431
  JP Z,$B17E
  JR LA431_0

; Routine at A431
;
; Used by the routine at LA428.
LA431:
  LD B,$3F
  SRL A
  JP NC,LB18B_0
  JP Z,LB16E_3
; This entry point is used by the routines at LA41A and LA428.
LA431_0:
  BIT 0,D
  JR Z,LA448
  LD A,(IX+$0C)
  ADD A,(IX+$02)
  SUB L
  JR LA448_0

; Routine at A448
;
; Used by the routine at LA431.
LA448:
  LD A,L
  ADD A,$10
  SUB (IX+$02)
; This entry point is used by the routine at LA431.
LA448_0:
  LD C,A
  BIT 2,D
  JR Z,LA45C
  LD A,(IX+$0D)
  ADD A,(IX+$04)
  SUB H
  JR LA45C_0

; Routine at A45C
;
; Used by the routine at LA448.
LA45C:
  LD A,H
  ADD A,$08
  SUB (IX+$04)
; This entry point is used by the routine at LA448.
LA45C_0:
  LD E,D
  CP C
  RES 2,D
  RES 3,D
  JP NC,LB10C_0
  LD A,E
  AND $0C
  JP LB10C_1

; Routine at A471
LA471:
  LD A,L
  SUB (IX+$0C)
  LD (IX+$02),A
  CALL $ACEE
  JP $B1A3

; Routine at A47E
LA47E:
  LD A,L
  ADD A,$10
  LD (IX+$02),A
  CALL $ACEE
  JP $B1A3

; Routine at A48A
LA48A:
  LD A,H
  SUB (IX+$0D)
  LD (IX+$04),A
  CALL $ACEE
  JP $B1A3

; Routine at A497
LA497:
  LD A,H
  ADD A,$08
  LD (IX+$04),A
  CALL $ACEE
; This entry point is used by the routine at L95DD.
LA497_0:
  JP $B1A3

; Routine at A4A3
LA4A3:
  LD A,$01
  LD ($5CDB),A
  LD A,(IX+$00)
  AND $7F
  CP $02
  JR Z,LA4E7
  CP $05
  JR Z,LA4CD
  AND $FE
  CP $08
  RET NZ
  LD L,(IX+$02)
  LD H,(IX+$04)
  LD ($AA7B),HL
  LD HL,$0000
  LD (IX+$02),L
  LD (IX+$04),H
  RET

; Routine at A4CD
;
; Used by the routine at LA4A3.
LA4CD:
  LD (IX+$01),$02
  LD (IX+$09),$06
  LD A,(IX+$02)
  AND $F8
  LD (IX+$02),A
  LD (IX+$12),$50
  LD (IX+$13),$50
  JR LA4E7_0

; Routine at A4E7
;
; Used by the routine at LA4A3.
LA4E7:
  BIT 5,(IY+$00)
  JR NZ,LA4E7_1
  LD A,($9B68)
  CP $07
  JR Z,LA559
  LD A,($9B52)
  CP $07
  JR Z,LA559
; This entry point is used by the routine at LA4CD.
LA4E7_0:
  BIT 4,(IY+$00)
  JP NZ,$B259
  BIT 5,(IY+$00)
  JR NZ,LA4E7_1
  SET 4,(IY+$00)
LA4E7_1:
  LD HL,($B290)
  LD DE,$0007
  PUSH IX
  LD IX,$B6F4
  LD B,$05
LA4E7_2:
  LD A,(IX+$00)
  AND A
  JR Z,LA526
  ADD IX,DE
  DJNZ LA4E7_2
  JR LA526_0

; Routine at A526
;
; Used by the routine at LA4E7.
LA526:
  PUSH HL
  CALL $B57D
  LD (IX+$01),L
  LD (IX+$02),H
  POP HL
  CALL $C03D
  LD (IX+$03),L
  LD (IX+$04),H
  INC (IX+$00)
  PUSH IY
  POP DE
  LD (IX+$05),E
  LD (IX+$06),D
; This entry point is used by the routine at LA4E7.
LA526_0:
  LD IX,$C0D4
  LD (IX+$00),$02
  LD (IX+$01),$09
  LD (IX+$02),$B0
  POP IX
  RET

; Routine at A559
;
; Used by the routine at LA4E7.
LA559:
  LD A,($B7E9)
  DEC A
  LD ($B7E9),A
  CALL LAF10_5
  LD A,(IX+$00)
  AND $7F
  CP $02
  JR NZ,LA559_1
  LD A,(IX+$12)
  AND $80
  LD (IX+$12),A
  LD A,($9B68)
  CP $07
  JR Z,LA559_0
  LD A,($9B52)
  CP $07
  JR NZ,LA559_1
LA559_0:
  LD HL,($B1C4)
  LD (IX+$02),L
  LD (IX+$04),H
  LD (IX+$06),$00
LA559_1:
  LD HL,$0000
  LD A,$00
  LD BC,$0208
  RRA
  JR NC,LA559_2
  DEC L
  INC B
LA559_2:
  RRA
  JR NC,LA559_3
  INC B
LA559_3:
  RRA
  JR NC,LA559_4
  DEC H
  INC C
LA559_4:
  RRA
  JR NC,LA559_5
  INC C
LA559_5:
  LD DE,$EC02
  LD A,$00
  AND $01
  ADD A,D
  LD D,A
  PUSH IX
  LD A,($8D49)
  AND $0F
  CP $05
  PUSH IX
  CALL C,$9D5A
  POP IX
  LD A,(IX+$00)
  AND $7F
  CP $05
  JR Z,LA559_6
  EXX
  CALL $C064
  LD (IX+$00),$01
  LD (IX+$01),$04
  EXX
LA559_6:
  LD IX,$9C08
  LD (IX+$01),L
  LD (IX+$00),H
  LD (IX+$02),B
  LD (IX+$03),C
  PUSH BC
  CALL $C03D
  POP BC
  LD A,($9C24)
  INC A
  LD ($9C24),A
  BIT 0,(IX+$00)
  JR Z,LA559_7
  LD A,E
  SUB $20
  LD E,A
  DEC D
LA559_7:
  LD A,L
  AND $01
  ADD A,E
  LD E,A
  LD ($B3E0),HL
  EX DE,HL
  LD A,C
  CP $08
  JR Z,LA559_8
  BIT 0,(IX+$00)
  JR Z,LA559_8
  PUSH DE
  PUSH HL
  SET 0,L
  SET 0,E
  LDI
  LDI
  POP HL
  POP DE
  LD A,$20
  ADD A,E
  LD E,A
  INC D
  LD A,$20
  ADD A,L
  LD L,A
  INC H
LA559_8:
  LD ($B3E3),DE
  PUSH DE
  LD A,$20
  SUB B
  LD ($B342),A
  LD A,B
  LD ($B33E),A
  LD A,$08
  LD B,$00
LA559_9:
  EX AF,AF'
  LD C,$00
  LDIR
  LD C,$00
  ADD HL,BC
  EX DE,HL
  ADD HL,BC
  EX DE,HL
  EX AF,AF'
  DEC A
  JR NZ,LA559_9
  PUSH DE
  LD A,(IX+$03)
  CP $08
  JR Z,LA559_13
  CP $0A
  JR Z,LA559_11
  BIT 0,(IX+$00)
; This entry point is used by the routine at L99A9.
LA559_10:
  JR NZ,LA559_13
LA559_11:
  BIT 3,(IX+$01)
  JR NZ,LA559_12
  INC L
  INC E
LA559_12:
  LDI
  LDI
LA559_13:
  LD A,(IX+$01)
; This entry point is used by the routines at L997B and LACA9.
LA559_14:
  CP $E0
  JR C,LA677
  LD HL,$E05E
  LD C,$FE
  JR LA677_1

; Routine at A677
;
; Used by the routine at LA559.
LA677:
  CP $10
  JR NC,LA677_4
; This entry point is used by the routine at L985A.
LA677_0:
  LD HL,$E041
  LD C,$7F
; This entry point is used by the routine at LA559.
LA677_1:
  LD B,$1C
  LD DE,$0020
LA677_2:
  LD A,(HL)
  AND C
  LD (HL),A
  ADD HL,DE
  DJNZ LA677_2
  LD DE,$0380
  ADD HL,DE
  LD DE,$0020
  LD B,$18
LA677_3:
  LD A,(HL)
  AND C
  LD (HL),A
  ADD HL,DE
  DJNZ LA677_3
LA677_4:
  LD DE,($B290)
; This entry point is used by the routine at L997B.
LA677_5:
  POP HL
  LD B,H
  LD C,L
  LD A,D
  CP $78
  JR Z,LA677_7
  DEC B
  LD A,C
  SUB $20
  LD C,A
  SET 0,L
  LD A,E
  CP $08
  JR Z,LA677_6
  BIT 7,(IY+$0E)
  JR NZ,LA677_6
  RES 7,(HL)
  BIT 0,C
  JR NZ,LA677_6
  XOR A
  LD (BC),A
  LD A,E
LA677_6:
  CP $E0
  JR NC,LA677_7
  BIT 7,(IY+$10)
  JR NZ,LA677_7
  INC L
  LD A,(IX+$02)
  DEC A
  ADD A,C
  LD C,A
  RES 0,(HL)
  AND $01
  JR Z,LA677_7
  XOR A
  LD (BC),A
LA677_7:
  LD A,D
  CP $20
  JR Z,LA677_9
  LD HL,$0000
  LD BC,$0000
  SET 0,L
  LD A,E
  CP $08
  JR Z,LA677_8
  BIT 7,(IY-$10)
  JR NZ,LA677_8
  RES 7,(HL)
  BIT 0,C
  JR NZ,LA677_8
  XOR A
  LD (BC),A
  LD A,E
LA677_8:
  CP $E0
  JR NC,LA677_9
  BIT 7,(IY-$0E)
  JR NZ,LA677_9
  INC L
  RES 0,(HL)
  LD A,(IX+$02)
  DEC A
  ADD A,C
  LD C,A
  AND $01
  JR Z,LA677_9
  XOR A
  LD (BC),A
LA677_9:
  POP HL
  LD DE,$0020
  LD A,(IX+$01)
  CP $08
  JR Z,LA677_11
  BIT 3,A
  JR Z,LA677_11
  PUSH HL
  LD B,$08
LA677_10:
  RES 7,(HL)
  ADD HL,DE
  DJNZ LA677_10
  POP HL
LA677_11:
  LD A,(IX+$01)
  CP $E0
  JR NC,LA677_13
  LD B,(IX+$02)
  SLA B
  SLA B
  SLA B
  ADD A,B
  CP $F8
  JR Z,LA677_13
  AND $08
  JR Z,LA677_13
  PUSH HL
  LD A,(IX+$02)
  DEC A
  ADD A,L
  LD L,A
  LD B,$08
LA677_12:
  RES 0,(HL)
  ADD HL,DE
  DJNZ LA677_12
  POP HL
LA677_13:
  SET 0,L
  LD A,($B293)
  BIT 2,A
  JR NZ,LA677_14
  LD (HL),D
  INC L
  LD (HL),D
  DEC L
LA677_14:
  AND $08
  JR NZ,LA677_15
  LD A,L
  ADD A,$E0
  LD L,A
  LD (HL),D
  INC L
  LD (HL),D
LA677_15:
  LD DE,$0004
  ADD IX,DE
  LD ($B2DA),IX
  POP IX
  LD HL,($B290)
  CALL $C051
  PUSH HL
  PUSH HL
  LD DE,($D742)
  LD A,($B290)
  CP $08
  RES 6,E
  JR Z,LA677_16
  SET 6,E
LA677_16:
  LD A,($B291)
  CP $20
  JR Z,LA677_18
  BIT 7,(IY-$10)
  JR NZ,LA677_17
  RES 6,E
LA677_17:
  BIT 7,(IY-$0F)
  JR NZ,LA677_18
  RES 6,D
LA677_18:
  LD (HL),E
  INC L
  LD (HL),D
  LD DE,$0020
  ADD HL,DE
  LD A,($B291)
  CP $78
  JR NZ,LA7BA
  SET 6,(HL)
  INC L
  SET 6,(HL)
  JR LA7BA_1

; Routine at A7BA
;
; Used by the routine at LA677.
LA7BA:
  BIT 7,(IY+$0F)
  JR Z,LA7BA_0
  SET 6,(HL)
LA7BA_0:
  INC L
  LD A,($B290)
  CP $E8
  JR Z,LA7BA_1
  BIT 7,(IY+$10)
  JR Z,LA7BA_1
  SET 6,(HL)
; This entry point is used by the routine at LA677.
LA7BA_1:
  POP HL
  POP DE
  LD A,D
  SUB $7F
  LD D,A
  LDI
  LDI
  LD BC,$001F
  ADD HL,BC
  EX DE,HL
  ADD HL,BC
  EX DE,HL
  LDI
  LDI
  SET 7,(IY+$00)
  RET

; Routine at A7EC
LA7EC:
  EX DE,HL
  LD E,(HL)
  INC HL
  LD D,(HL)
  INC HL
  LD A,(HL)
  LD ($B618),A
  INC HL
  LD B,(HL)
  INC HL
  XOR A
  LD ($B550),A
  INC A
  LD ($B617),A
  LD A,B
  AND $3F
  LD ($B616),A
  BIT 7,B
  JR Z,LA81A
  BIT 6,B
  JR NZ,LA81A
  LD A,$0C
  LD ($B550),A
  LD A,$02
  LD ($B617),A
  JR LA81A

; Routine at A81A
;
; Used by the routine at LA7EC.
LA81A:
  EX DE,HL
  PUSH BC
  PUSH DE
  LD A,H
  SUB $03
  LD H,A
  CALL $B619
  POP DE
  POP BC
  LD A,H
  ADD A,$03
  LD H,A
  CALL $B57D
  LD A,B
  AND $3F
  LD B,A
LA81A_0:
  PUSH BC
  CALL $B53A
  POP BC
  INC DE
  DJNZ LA81A_0
  RET

; Routine at A83A
LA83A:
  PUSH DE
  LD A,(DE)
  EX DE,HL
  PUSH DE
  LD L,A
  LD H,$00
  ADD HL,HL
  LD E,L
  LD D,H
  ADD HL,HL
  ADD HL,DE
  LD DE,$6A1A
  ADD HL,DE
  POP DE
  EX DE,HL
  PUSH HL
  LD B,$06
LA83A_0:
  JR LA83A_0

; Routine at A851
LA851:
  LD A,(DE)
  LD (HL),A
  DEC DE
  CALL LB56E
  DJNZ LA851
  POP HL
  INC L
  POP DE
  RET

; Routine at A85D
LA85D:
  LD A,(DE)
  LD (HL),A
  CALL LB56E
  LD A,(DE)
  LD (HL),A
  CALL LB56E
  DEC DE
  DJNZ LA85D
  POP HL
  INC L
  POP DE
  RET

; Routine at A86E
LA86E:
  LD A,H
  DEC H
  AND $07
  RET NZ
  LD A,L
  SUB $20
  LD L,A
  RET C
  LD A,H
  ADD A,$08
  LD H,A
  RET

; Routine at A87D
LA87D:
  LD A,L
  RRC A
  RRC A
  RRC A
  AND $1F
  LD L,A
  LD A,H
  RLC A
  RLC A
  AND $E0
  OR L
  LD L,A
  LD A,H
  AND $07
  EX AF,AF'
  LD A,H
  RRC A
  RRC A
  RRC A
  AND $18
  OR $40
  LD H,A
  EX AF,AF'
  OR H
  LD H,A
  RET

; Routine at A8A4
LA8A4:
  SRL H
  SRL H
  SRL H
  SRL H
  RR L
  SRL H
  RR L
  SRL H
  RR L
  LD A,H
  ADD A,$58
  LD H,A
  RET

; Routine at A8BB
LA8BB:
  ADD A,L
  LD L,A
  RET NC
  INC H
  RET

; Routine at A8C0
LA8C0:
  PUSH HL
  CALL $C03D
  LD A,(DE)
  LD ($B5D9),A
  ADD A,$1F
  LD ($B5E3),A
  INC DE
  LD A,(DE)
  POP BC
  PUSH BC
  CP B
  JR C,LA8C0_0
  INC B
  LD A,B
LA8C0_0:
  INC DE
  LD C,A
LA8C0_1:
  LD B,$00
LA8C0_2:
  LD A,(DE)
  LD (HL),A
  INC DE
  INC L
  DJNZ LA8C0_2
  DEC L
  LD A,L
  SUB $00
  LD L,A
  JP NC,$B5E9
  DEC H
  DEC C
  JR NZ,LA8C0_1
  POP HL
  LD A,H
  CP $17
  RET NZ
  LD A,$08
  ADD A,E
  LD E,A
  RET NC
  INC D
  RET

; Routine at A8F8
LA8F8:
  PUSH HL
  CALL $B57D
  LD A,(DE)
  LD ($B606),A
  INC DE
  LD A,(DE)
  INC DE
  LD C,A
LA8F8_0:
  PUSH HL
  LD B,$00
LA8F8_1:
  LD A,(DE)
  LD (HL),A
  INC DE
  INC L
  DJNZ LA8F8_1
  POP HL
  CALL LB56E
  DEC C
  JR NZ,LA8F8_0
  POP HL
  RET

; Unused
LA916:
  DEFS $03

; Routine at A919
LA919:
  LD DE,$B616
  PUSH HL
  CALL $B5A4
  LD A,(DE)
  LD ($B633),A
  ADD A,$1E
  CPL
  LD ($B63B),A
  INC DE
  LD A,(DE)
  LD C,A
  INC DE
  LD A,(DE)
  LD ($B635),A
LA919_0:
  LD B,$00
LA919_1:
  LD (HL),$00
  INC L
  DJNZ LA919_1
  DEC L
  LD DE,$FF00
  ADD HL,DE
  DEC C
  JR NZ,LA919_0
  POP HL
  RET

; Routine at A943
LA943:
  PUSH HL
  CALL $C051
  LD A,(DE)
  LD ($B655),A
  ADD A,$1F
  LD ($B65F),A
  INC DE
  LD A,(DE)
  LD C,A
  INC DE
LA943_0:
  LD B,$00
LA943_1:
  LD A,(DE)
  LD (HL),A
  INC L
  INC DE
  DJNZ LA943_1
  DEC L
  LD A,L
  SUB $00
  LD L,A
  JP NC,$B665
  DEC H
  DEC C
  JR NZ,LA943_0
  POP HL
  RET

; Routine at A96A
LA96A:
  LD ($B679),HL
  LD IX,$9AD0
  LD B,$0B
LA96A_0:
  PUSH BC
  LD A,(IX+$00)
; This entry point is used by the routines at L9C0D and L9CC7.
LA96A_1:
  ADD A,A
  CALL NZ,$B678
  LD DE,$0016
  ADD IX,DE
  POP BC
  DJNZ LA96A_0
  RET

; Routine at A984
LA984:
  LD L,(IX+$02)
  LD H,(IX+$04)
  CALL $C03D
  LD (IX+$0A),H
  LD (IX+$0B),L
  RET

; Routine at A994
LA994:
  LD IY,$B6F4
  LD B,$05
LA994_0:
  LD A,(IY+$00)
  AND A
  CALL NZ,$B6A9
  LD DE,$0007
  ADD IY,DE
  DJNZ LA994_0
  RET

; Routine at A9A9
LA9A9:
  LD L,(IY+$05)
  LD H,(IY+$06)
  BIT 7,(HL)
  JR Z,LA9B8
  LD (IY+$00),$00
  RET

; Routine at A9B8
;
; Used by the routine at LA9A9.
LA9B8:
  EXX
  INC A
  AND $FE
  LD HL,$AF6D
  LD E,A
  LD D,$00
  ADD HL,DE
  LD E,(HL)
  INC HL
  LD D,(HL)
  LD L,(IY+$01)
  LD H,(IY+$02)
  LD C,(IY+$03)
  LD B,(IY+$04)
  LD A,$07
LA9B8_0:
  EX AF,AF'
  LD A,(DE)
  LD (HL),A
  LD (BC),A
  INC L
  INC C
  INC DE
  LD A,(DE)
  LD (HL),A
  LD (BC),A
  DEC L
  INC H
  INC DE
  LD A,$1F
  ADD A,C
  LD C,A
  EX AF,AF'
  DEC A
  JR NZ,LA9B8_0
  EXX
  LD A,(IY+$00)
  INC A
  AND $0F
  LD (IY+$00),A
  RET

; Unused
LA9F4:
  DEFS $23

; Routine at AA17
LAA17:
  LD B,A
  LD IX,$9C08
LAA17_0:
  PUSH BC
  LD L,(IX+$01)
  LD H,(IX+$00)
  LD C,(IX+$03)
  LD B,(IX+$02)
  CALL $9CF4
  LD BC,$0004
  ADD IX,BC
  POP BC
  DJNZ LAA17_0
  XOR A
  LD ($9C24),A
  LD HL,$9C08
  LD ($B2DA),HL
  RET

; Unused
LAA3F:
  DEFS $01

; Routine at AA40
LAA40:
  LD A,$C9
  LD ($B73F),A
  LD HL,($9789)
  LD B,$B4
LAA40_0:
  LD A,(HL)
  AND $90
  JR Z,LAA54
  INC HL
  DJNZ LAA40_0
  JR LAA54_0

; Routine at AA54
;
; Used by the routine at LAA40.
LAA54:
  LD IY,($B793)
  PUSH IX
  LD IX,$C0B8
  CALL $C101
  DI
  POP IX
; This entry point is used by the routine at LAA40.
LAA54_0:
  RET

; Routine at AA65
LAA65:
  XOR A
  LD ($B73F),A
  LD IX,$AF6F
LAA65_0:
  LD IY,($B793)
  EI
  HALT
  EI
  HALT
  DI
  CALL LACA9_6
  LD DE,$AF3F
  LD L,(IX+$00)
  LD H,(IX+$01)
  XOR A
  SBC HL,DE
  CALL Z,$B73F
  INC IX
  INC IX
  LD A,(IX+$01)
  AND A
  JR NZ,LAA65_0
  RET

; Unused
LAA93:
  DEFS $02

; Routine at AA95
LAA95:
  RET

; Routine at AA96
LAA96:
  PUSH BC
  CALL LB4CF_1
  POP BC
  DJNZ LAA96
; This entry point is used by the routine at L99A9.
LAA96_0:
  RET

; Data block at AA9E
LAA9E:
  DEFB $08,$07,$44,$04,$01,$26,$1E,$19
  DEFB $00,$0F,$47,$06,$00,$00,$00,$00
  DEFB $00,$00,$78,$07,$43,$02,$11,$12
  DEFB $68,$0F,$47,$06,$00,$00,$10,$00
  DEFB $00,$00,$D8,$07,$44,$04,$02,$26
  DEFB $1E,$19,$D0,$0F,$47,$06,$00,$00
  DEFB $00,$00,$00,$00

; Routine at AAD2
;
; Used by the routines at L9363, L98CE, L9C3B, L9CFF and L9D30.
LAAD2:
  LD B,$07
LAAD2_0:
  CALL $97D3
  DJNZ LAAD2_0
  JP L9741_4

; Routine at AADC
LAADC:
  LD D,$00
  CALL $97D3
  DJNZ LAADC
  RET

; Routine at AAE4
LAAE4:
  RET

; Data block at AAE5
LAAE5:
  DEFB $00,$00,$00,$03,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$3A,$42,$B8,$EE,$88
  DEFB $32,$42,$B8,$3E,$0C,$32,$1D,$89
  DEFB $11,$D0,$9A,$21,$00,$60,$3E,$0B
  DEFB $01,$16,$00,$ED,$B0,$3D,$20,$F8
  DEFB $32,$EC,$BA,$32,$5F,$A8,$32,$6B
  DEFB $A6,$32,$71,$8E,$32,$D9,$8E,$32
  DEFB $72,$B9,$3C,$32,$D9,$5C,$3A,$E5
  DEFB $B7,$FE,$02

; Message at AB30
LAB30:
  DEFM " *>"

; Data block at AB33
LAB33:
  DEFB $01,$32,$3E,$9B

; Message at AB37
LAB37:
  DEFM ">82V"

; Data block at AB3B
LAB3B:
  DEFB $9B,$3E,$B0,$32,$40,$9B

; Message at AB41
LAB41:
  DEFM ">H2"

; Data block at AB44
LAB44:
  DEFB $D2,$9A,$FE,$C0,$20,$12,$3A,$E2
  DEFB $9A,$F6,$80,$32,$E2,$9A,$3E,$FF
  DEFB $32,$68,$9B,$3E,$83,$32,$52,$9B
  DEFB $21,$C0,$8C,$22,$E4,$9A,$2E,$08
  DEFB $3A,$EA,$B7,$C6,$02,$FE,$04,$38
  DEFB $02,$3E,$04,$3E,$03

; Routine at AB71
LAB71:
  LD H,A
  LD ($9AD6),HL
  LD A,$0E
  LD ($B971),A
  LD ($B8D6),A
  LD A,$83
  LD ($9B68),A
  XOR A
  LD ($9C24),A
  LD HL,$9C08
  LD ($B2DA),HL
  LD HL,L9E1F_2
  LD A,($B7EB)
  CP $06
  JR C,LAB71_0
  LD HL,$9E8A
LAB71_0:
  LD DE,$9E4A
  LD BC,$0010
  LDIR
  LD HL,$A270
  LD B,$0C
  CALL $8EDA
  LD HL,$C0B8
  LD B,$23
  CALL $8EDA
  LD HL,$B6F4
  LD B,$23
  JP $8EDA

; Routine at ABB9
LABB9:
  LD B,$B4
LABB9_0:
  LD A,(HL)
  CP $C0
  JR Z,LABB9_1
  BIT 5,A
  JR NZ,LABB9_1
  RES 7,(HL)
  RES 6,(HL)
  SET 4,(HL)
  AND $0F
  CP $06
  JR C,LABB9_1
  RES 4,(HL)
LABB9_1:
  INC HL
  DJNZ LABB9_0
  RET

; Routine at ABD6
LABD6:
  LD C,$3A
  LD (HL),C
  CP C
  LD B,A
  LD A,($B8D6)
  LD ($B971),A
  LD A,B
  LD ($B8D6),A
  RET

; Routine at ABE6
LABE6:
  LD DE,$F060
  LD A,($B971)
  AND $7F
  LD B,A
  LD A,(IX+$0C)
  SUB B
  CP $09
  JR NC,LABE6_0
  LD A,(IX+$0C)
  SUB $0B
  LD B,A
  LD A,($B971)
  AND $80
  OR B
  LD ($B971),A
LABE6_0:
  LD A,(IX+$02)
  ADD A,B
  LD C,A
  RRA
  RRA
  RRA
  AND $1F
  ADD A,E
  LD E,A
  LD A,C
  AND $07
  LD HL,$B969
  CALL $B5BB
  LD A,(DE)
  AND (HL)
  LD (DE),A
  LD A,(IX+$02)
  LD E,A
; This entry point is used by the routines at L95DD, L9628, L997B and L9E1F.
LABE6_1:
  LD A,(IX+$0C)
  ADD A,E
  SUB B
  DEC A
  LD C,A
  RRA
  RRA
  RRA
  AND $1F
  ADD A,$60
  LD E,A
  LD A,C
  AND $07
  LD HL,$B969
  CALL $B5BB
  LD A,(DE)
  AND (HL)
  LD (DE),A
  LD A,($B971)
  BIT 7,A
  RES 7,A
  JR Z,LAC51
  DEC A
  CP $09
  JR Z,LAC51_0
  OR $80
  LD ($B971),A
  RET

; Routine at AC51
;
; Used by the routine at LABE6.
LAC51:
  INC A
  LD B,A
  LD A,(IX+$0C)
  SUB B
  CP $0A
  JR NZ,LAC64
; This entry point is used by the routine at LABE6.
LAC51_0:
  LD A,($B971)
  XOR $80
  LD ($B971),A
  RET

; Routine at AC64
;
; Used by the routine at LAC51.
LAC64:
  LD A,B
  LD ($B971),A
  RET

; Data block at AC69
LAC69:
  DEFB $7F

; Routine at AC6A
LAC6A:
  CP A
  RST $18
; This entry point is used by the routines at L9264, L9306, L95DD, L964A, L9C1C
; and L9CE0.
LAC6A_0:
  RST $28
  RST $30
  EI
  DEFB $FD
  CP $0E
  NOP
  LD BC,$733A
  CP C
  AND A
  RET NZ
  LD DE,$B989
  LD B,$02
  CALL LB56E_0
  LD D,$00
  CALL $97D3
  JP L9741_4

; Routine at AC89
LAC89:
  JR C,$ACC2
  LD B,A
  INC DE
  INC D
  LD (DE),A
  RLA
  RLA
  JR $AC9F

; Routine at AC93
LAC93:
  INC D
  LD H,$0C
  JR $ACB6

; Data block at AC98
LAC98:
  DEFB $15,$0D,$17,$1D,$26,$1B,$1E,$17

; Message at ACA0
LACA0:
  DEFM "PGG"

; Routine at ACA3
LACA3:
  DEC C
  LD A,(BC)
  LD H,$22
  JR LACA9_1

; Routine at ACA9
LACA9:
  DEC E
  LD DE,$0C26
LACA9_0:
  DEC D
  LD E,$0B
  INC H
  LD ($B793),IY
  LD HL,$1510
  CALL $C03D
  LD ($B7A6),HL
  LD HL,$15C0
  CALL $C03D
  LD ($B7C8),HL
; This entry point is used by the routine at LACA3.
LACA9_1:
  LD HL,$1568
  CALL $C03D
  LD ($B7B6),HL
  LD DE,$6000
  LD HL,$9AD0
  LD A,$0B
LACA9_2:
  LD BC,$0016
  LDIR
  DEC A
  JR NZ,LACA9_2
  LD HL,$5CD8
  LD B,$01
  CALL $8EDA
  LD A,($B7A6)
  AND $1F
  CP $02
  CALL NZ,$BE30
  CALL L93E1_0
  LD HL,$0000
  LD ($B7EC),HL
  LD ($B7ED),HL
  LD ($B7AA),HL
  LD ($B7AC),HL
; This entry point is used by the routine at LA004.
LACA9_3:
  LD ($B7AE),HL
  LD ($B7CC),HL
  LD ($B7CE),HL
  LD ($B7D0),HL
  LD A,$03
  LD ($B7E8),A
  LD A,$C0
  LD ($B842),A
  XOR A
  LD ($B7EA),A
  LD ($B7EB),A
  LD ($B7E6),A
  CALL $BE54
  LD DE,$6100
  LD HL,($9789)
  LD BC,$00B4
  LDIR
  LD DE,$B7F0
  LD HL,$B7E8
  LD BC,$0007
  LDIR
  LD A,($B7E5)
  AND A
  JR NZ,LACA9_4
  LD ($B7F0),A
LACA9_4:
  CALL L9741_4
  CALL $97BC
  CALL L9741_2
  CALL $BE8B
  CALL $B7F8
  CALL L9741_4
  CALL $B974
  CALL $BDCF
  CALL LB56E_3
  CALL $B795
  CALL L8F49_1
  LD B,$04
; This entry point is used by the routines at L95DD, L9741, L9BD2, L9C1C and
; L9CE0.
LACA9_5:
  CALL $B7DC
  CALL $B765
  LD HL,$8158
  LD BC,$0A28
  CALL $9CF4
  LD HL,$D90B
  LD DE,$5A0B
  LD BC,$008B
  LDIR
  LD A,($8D49)
  CP $99
  CALL Z,$8E72
  XOR A
  LD ($5CDC),A
; This entry point is used by the routine at LAA65.
LACA9_6:
  CALL $A161
  LD HL,($8D46)
  INC HL
  LD ($8D46),HL
  CALL $9EAA
  CALL L8EA4_0
  LD IX,$9B54
  CALL L9F45_0
  LD A,($B7E5)
  CP $02
  JR NZ,LACA9_7
  CALL LA559_14
  LD A,($8ED9)
  PUSH AF
  LD A,($B7F7)
  CALL LA182_0
  LD A,($8ED9)
  LD ($B972),A
  LD IX,$9B3E
  CALL L9F45_0
  POP AF
  LD ($8ED9),A
  LD IX,$9B54
  CALL $ACCE
  LD IX,$9B3E
  CALL LACA9_0
  CALL LA559_14
LACA9_7:
  LD HL,$9F54
  CALL $B66A
  LD HL,$B684
  CALL $B66A
  CALL $B694
  JR LADED_0

; Routine at ADED
LADED:
  LD A,($9BAC)
  AND A
  JP NZ,$BB6A
; This entry point is used by the routine at LACA9.
LADED_0:
  LD A,($5CD9)
  AND A
  JP Z,$BC10
  LD A,($B7E9)
  AND A
  JP Z,$BC10
  CALL $97DE
  LD HL,$9910
  CALL $B66A
  CALL $C077
  JR NZ,LAE22_2
  LD A,($D000)
; This entry point is used by the routine at LA0E1.
LADED_1:
  CP $04
  JR Z,LAE22
  JR C,LAE22_1
  LD A,($5CD8)
  CP $23
  JR NC,LAE22_2
  JR LAE22_1

; Routine at AE22
;
; Used by the routine at LADED.
LAE22:
  LD A,(L9B60)
  CP $1C
  JR NZ,LAE22_0
  LD A,($9B80)
  AND A
  JR NZ,LAE22_1
LAE22_0:
  LD A,($5CDC)
  CP $03
  JR C,LAE22_2
; This entry point is used by the routine at LADED.
LAE22_1:
  EI
  HALT
  DI
; This entry point is used by the routine at LADED.
LAE22_2:
  LD IX,$9B54
  CALL LB56E_1
  LD A,($B7E5)
  CP $02
  JR NZ,LAE22_3
  CALL $B8D7
  LD IX,$9B3E
  CALL LB56E_1
  CALL $B8D7
LAE22_3:
  LD HL,$9C25
  CALL $B66A
  LD A,($9C24)
  AND A
  CALL NZ,$B717
  CALL $987A
  CALL $978B
  JP $BA83

; Routine at AE6A
LAE6A:
  LD B,$0B
  LD DE,$0016
; This entry point is used by the routine at LA160.
LAE6A_0:
  LD IX,$9AD0
LAE6A_1:
  LD A,(IX+$00)
  AND A
  JR Z,LAE6A_2
  SET 7,(IX+$00)
LAE6A_2:
  ADD IX,DE
  DJNZ LAE6A_1
  LD A,$01
  LD HL,$0000
  LD (HL),A
  LD A,$06
  LD ($9BAC),A
  LD A,$05
  LD ($C0B8),A
  XOR A
  LD ($8D46),A
  JR LAE97_0

; Routine at AE97
LAE97:
  LD A,($8D46)
  INC A
  LD ($8D46),A
  CALL L8EA4_0
  LD HL,$9F54
  CALL $B66A
  CALL $B694
; This entry point is used by the routine at LAE6A.
LAE97_0:
  LD HL,$B684
  CALL $B66A
  CALL $97DE
  LD HL,$9910
  CALL $B66A
  LD IY,($B793)
  EI
  HALT
  DI
  CALL $C077
  LD HL,$9C25
  CALL $B66A
  LD A,($9C24)
  AND A
  CALL NZ,$B717
  CALL $989A
  CALL $978B
  LD A,($9BAC)
  AND A
  JP Z,$BBFB
  JP $BB97

; Routine at AEE0
LAEE0:
  LD A,($B7EB)
  INC A
  LD ($B7EB),A
  LD A,($B7EA)
  INC A
  CP $0F
  JR Z,LAEF4
  LD ($B7EA),A
  JR LAEF4_0

; Routine at AEF4
;
; Used by the routine at LAEE0.
LAEF4:
  XOR A
  LD ($B7EA),A
; This entry point is used by the routine at LAEE0.
LAEF4_0:
  JP $BE54

; Routine at AEFB
LAEFB:
  CALL LAF10_3
  LD A,($B7E9)
  AND A
  CALL Z,$C077
  CALL $BBE0
  LD B,$02
  CALL $B7DC
  JP $BA4C

; Routine at AF10
LAF10:
  LD A,($8E71)
  AND A
  JR Z,LAF10_0
  LD IX,($8E70)
  LD A,(IX+$02)
  SUB $05
  LD L,A
  LD A,(IX+$04)
  SUB $05
  LD H,A
  LD BC,$0417
  CALL $9CF4
  XOR A
  LD ($8E71),A
LAF10_0:
  LD IX,$9AD0
  LD B,$0B
  LD DE,$0016
  LD A,($9BAC)
  PUSH AF
LAF10_1:
  LD A,(IX+$00)
  AND A
  JR Z,LAF10_2
  SET 7,(IX+$00)
LAF10_2:
  ADD IX,DE
  DJNZ LAF10_1
  POP AF
  LD ($9BAC),A
  LD HL,$9910
  CALL $B66A
  LD HL,$9C25
  CALL $B66A
  LD A,($9C24)
  AND A
  CALL NZ,$B717
  LD A,($B7E9)
  AND A
  JP Z,LB56E_2
  LD A,$08
  LD ($C0B8),A
  LD A,$3D
  LD ($C0B9),A
  XOR A
  LD ($A899),A
  LD IX,$9AD0
  LD B,$0A
  LD A,($9B56)
  LD C,A
; This entry point is used by the routine at LAEFB.
LAF10_3:
  LD A,($9B40)
  SUB C
  LD ($BCE7),A
  LD A,(L9B60)
  SRL A
  ADD A,C
  SUB $0C
  LD C,A
  LD DE,$0016
  LD L,$1B
LAF10_4:
  LD (IX+$14),$18
  LD (IX+$15),$18
  LD (IX+$0C),$08
  LD (IX+$0D),$07
  LD (IX+$08),$02
  LD (IX+$09),$0B
  LD (IX+$11),D
  LD (IX+$01),D
  LD (IX+$00),$07
  LD (IX+$02),C
  LD (IX+$04),$AE
  LD (IX+$06),L
; This entry point is used by the routines at LA26A and LA559.
LAF10_5:
  LD (IX+$07),$02
  LD A,L
  ADD A,$05
  AND $3F
  LD L,A
  ADD IX,DE
  INC C
  INC C
  INC C
  DJNZ LAF10_4
  LD A,($B7E5)
  CP $02
  JR NZ,LAF10_7
  LD IX,$9AE6
  LD DE,$0016
  LD B,$05
LAF10_6:
  LD A,(IX+$02)
  ADD A,$00
  LD (IX+$02),A
  ADD IX,DE
  ADD IX,DE
  DJNZ LAF10_6
LAF10_7:
  CALL L8EA4_0
  LD HL,$9F54
  CALL $B66A
  CALL $B694
  LD HL,$B684
  CALL $B66A
  CALL $97DE
  LD HL,$9910
  LD A,($9AE6)
  RLA
  CALL NC,$B66A
  CALL $C077
  LD HL,$9C25
  CALL $B66A
  LD A,($9C24)
  AND A
  CALL NZ,$B717
  CALL $989A
  CALL $978B
  LD A,($9AE6)
  AND A
  JP NZ,$BCF1
  LD B,$03
  CALL $B7DC
  LD A,($B7E8)
  DEC A
  LD ($B7E8),A
  JR Z,LB045
  LD A,($B7E5)
  DEC A
  CALL Z,$BE0C
  JP $BA4C

; Routine at B045
;
; Used by the routine at LAF10.
LB045:
  LD B,$02
  CALL $B7D4
  CALL L9741_4
  CALL $97BC
  LD A,($B7E6)
  INC A
  LD ($BDB2),A
  LD DE,$BD99
  LD B,$02
  CALL LB56E_0
  LD A,($B7E5)
  CP $02
  CALL Z,$BDB3
  LD B,$0C
  CALL $B7D4
  CALL LB56E_4
  CALL $910C
  LD A,($B7E5)
  CP $02
  JR NZ,LB088
  CALL $BE30
  CALL LB56E_4
  CALL $910C
  CALL $BE30
  JP $B9E8

; Routine at B088
;
; Used by the routine at LB045.
LB088:
  DEC A
  JP NZ,$B9E8
  LD A,($B7F0)
  AND A
  JP Z,$B9E8
  CALL $BE0C
  JP $BA4C

; Data block at B099
LB099:
  DEFB $60,$4F,$47,$09,$10,$0A,$16,$0E
  DEFB $26,$18,$1F,$0E,$1B,$60,$67

; Routine at B0A8
LB0A8:
  LD B,A
  ADD HL,BC
  ADD HL,DE
  DEC D
  LD A,(BC)
  LD ($1B0E),HL
  LD H,$26
  NOP
  LD DE,$BDB9
  JP LB4CF_1

; Message at B0B9
LB0B9:
  DEFM "HgG"

; Data block at B0BC
LB0BC:
  DEFB $0F,$19,$15,$0A,$22,$0E,$1B,$1C
  DEFB $26,$01,$26,$0A

; Routine at B0C8
LB0C8:
  RLA
  DEC C
  LD H,$02
  DJNZ $B0D0
  LD B,(HL)
  LD DE,L4000
  LD HL,$DA00
  LD B,$00
  LD A,$C0
LB0C8_0:
  EX AF,AF'
  LD C,$20
  PUSH DE
  LDIR
  POP DE
  LD A,D
  INC D
  CPL
  AND $07
  JR NZ,LB0C8_1
  LD A,E
  ADD A,$20
  LD E,A
  JR C,LB0C8_1
  LD A,D
  SUB $08
  LD D,A
LB0C8_1:
  EX AF,AF'
  DEC A
  JR NZ,LB0C8_0
  RET

; Routine at B0F6
LB0F6:
  LD DE,$5800
  LD HL,$D700
  LD BC,$0300
  LDIR
  RET

; Routine at B102
LB102:
  LD C,(HL)
  LD A,(DE)
  LD (HL),A
  LD A,C
  LD (DE),A
  INC HL
  INC DE
  DJNZ LB102
  RET

; Routine at B10C
LB10C:
  LD A,($B7F0)
  AND A
  RET Z
  LD DE,($9789)
  PUSH DE
  LD A,($B7F2)
  CALL $9779
; This entry point is used by the routine at LA45C.
LB10C_0:
  POP DE
; This entry point is used by the routine at LA45C.
LB10C_1:
  LD BC,$6100
  LD A,$B4
LB10C_2:
  EX AF,AF'
  LD A,(DE)
  PUSH AF
  LD A,(BC)
  LD (HL),A
  POP AF
  LD (BC),A
  INC HL
  INC DE
  INC BC
  EX AF,AF'
  DEC A
  JR NZ,LB10C_2
  LD HL,$B7E8
  LD DE,$B7F0
  LD B,$08
  CALL $BE02
  LD HL,$B7A6
  LD DE,$B7C8
  LD B,$0A
  CALL $BE02
  LD A,($B7E8)
  AND A
  RET Z
  LD A,($B7E6)
  XOR $01
  LD ($B7E6),A
  RET

; Routine at B154
LB154:
  CALL L9741_2
  PUSH HL
  CALL $B8B9
  POP HL
  LD B,$B4
  LD C,$00
LB154_0:
  LD A,(HL)
  AND $A0
  JR NZ,LB154_1
  INC C
LB154_1:
  INC HL
  DJNZ LB154_0
  LD A,C
  LD ($B7E9),A
  RET

; Routine at B16E
LB16E:
  LD HL,$B7BC
; This entry point is used by the routine at LA41A.
LB16E_0:
  LD DE,$B7EE
  LD B,$03
LB16E_1:
  LD A,(DE)
  CP (HL)
  RET C
  JR NZ,LB16E_2
  DEC DE
  DEC HL
  DJNZ LB16E_1
LB16E_2:
  LD DE,$B7BA
  LD HL,$B7EC
  LD BC,$0003
  LDIR
; This entry point is used by the routine at LA431.
LB16E_3:
  RET

; Routine at B18B
LB18B:
  LD HL,$8EE0
  LD A,($B7EA)
  AND $03
  ADD A,A
  CALL $B5BB
; This entry point is used by the routines at LA355 and LA431.
LB18B_0:
  LD E,(HL)
  INC HL
  LD D,(HL)
  LD ($BEA2),DE
  LD HL,$0F00
LB18B_1:
  LD DE,$C015
  CALL $B5C0
  CALL $B643
  LD A,$10
  ADD A,L
  LD L,A
  JR NZ,LB18B_1
  LD L,$00
  LD A,H
  ADD A,$10
  LD H,A
  CP $CF
  JR NZ,LB18B_1
  LD HL,$9F00
  LD DE,$6B8F
  EXX
  LD HL,$BF00
  LD DE,$6B3F
  LD B,$07
LB18B_2:
  PUSH BC
  PUSH DE
  LD L,$00
  CALL $B5C0
  CALL $B643
  LD L,$F8
  CALL $B5C0
  CALL $B643
  POP DE
  LD A,$C8
  ADD A,H
  LD H,A
  EXX
  POP BC
  DJNZ LB18B_2
  LD HL,$D941
  LD A,$04
  LD DE,$0020
  LD C,D
LB18B_3:
  EX AF,AF'
  LD B,$1C
  PUSH HL
LB18B_4:
  RES 7,(HL)
  ADD HL,DE
  DJNZ LB18B_4
  POP HL
  PUSH HL
  LD A,L
  ADD A,$1D
  LD L,A
  LD B,$1C
LB18B_5:
  RES 0,(HL)
  ADD HL,DE
  DJNZ LB18B_5
  POP HL
  LD B,$07
  ADD HL,BC
  EX AF,AF'
  DEC A
  JR NZ,LB18B_3
  LD DE,$0020
  LD B,$06
  LD HL,$D95E
  LD A,($D95D)
LB18B_6:
  LD (HL),A
  ADD HL,DE
  DJNZ LB18B_6
  LD HL,$BFE7
  EXX
  LD HL,$0700
LB18B_7:
  EXX
  LD E,(HL)
  INC HL
  LD D,(HL)
  INC HL
  PUSH DE
  EXX
  POP DE
  CALL $B5C0
  CALL $B643
  LD A,$20
  ADD A,L
  LD L,A
  JR NC,LB18B_7
  LD HL,$DB01
  LD DE,$BFF7
  LD B,$1E
LB18B_8:
  LD A,(DE)
  AND (HL)
  LD (HL),A
  INC L
  INC DE
  DJNZ LB18B_8
  LD A,$08
  LD ($9BC4),A
  LD A,($B7E8)
  DEC A
  JR Z,LB18B_11
  LD B,A
  LD IX,$9BC2
LB18B_9:
  PUSH BC
  CALL $B684
  CALL $9910
  LD A,($9BC4)
  ADD A,$10
  CP $E9
  JR NC,LB18B_10
  LD ($9BC4),A
LB18B_10:
  POP BC
  DJNZ LB18B_9
LB18B_11:
  LD A,($B7E5)
  CP $02
  JR NZ,LB18B_12
  LD IX,$9BEE
  CALL $B684
  CALL $9910
LB18B_12:
  LD IX,$9BD4
  LD (IX+$02),$1C
  LD (IX+$01),$01
  CALL $B684
  CALL $9910
  INC (IX+$01)
  LD (IX+$02),$CC
  CALL $B684
  CALL $9910
  INC (IX+$01)
  LD (IX+$02),$78
  CALL $B684
  CALL $9910
  LD HL,($B7A6)
  EXX
  LD HL,$B7EE
  CALL $96FE
  LD HL,($B7C8)
  EXX
  LD HL,$B7F6
  CALL $96FE
  LD HL,($B7B6)
  EXX
  LD HL,$B7BC
  CALL $96FE
  CALL L8D38_0
  CALL $ADE1
  CALL $BFCF
  RET

; Routine at B2CF
LB2CF:
  LD HL,$D721
  LD B,$17
  LD DE,$0020
LB2CF_0:
  RES 6,(HL)
  ADD HL,DE
  DJNZ LB2CF_0
  LD HL,$D722
  LD B,$1D
LB2CF_1:
  RES 6,(HL)
  INC L
  DJNZ LB2CF_1
  RET

; Data block at B2E7
LB2E7:
  DEFB $CD,$6B,$F5,$6B,$1D,$6C,$F5

; Message at B2EE
LB2EE:
  DEFM "kElmlEl"

; Data block at B2F5
LB2F5:
  DEFB $95,$6C,$00,$00,$03,$FF,$FF,$FF
  DEFB $C0,$00,$00,$00,$03,$FF,$FF,$FF
  DEFB $C0,$03,$FF,$FF,$FF,$C0,$00,$00
  DEFB $00,$03,$FF,$FF,$FF,$C0,$00,$00
  DEFB $02,$10,$FE,$FF,$FE,$FF,$FE,$FF
  DEFB $FE,$FF,$FE,$FF,$FE,$FF,$FE,$FF
  DEFB $F9,$3F,$E7,$CF,$9F,$F3,$7F,$FD
  DEFB $FF,$FE,$7F,$FD,$9F,$F3,$E7,$CF
  DEFB $F9,$3F,$02,$02

; Message at B339
LB339:
  DEFM "FFFF"

; Routine at B33D
LB33D:
  LD A,L
  LD L,H
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  ADD HL,HL
  SRL A
  SRL A
  SRL A
  LD C,A
  LD B,$DA
  ADD HL,BC
  RET

; Routine at B351
LB351:
  LD C,L
  LD A,H
  AND $F8
  LD L,A
  LD H,$00
  ADD HL,HL
  ADD HL,HL
  SRL C
  SRL C
  SRL C
  LD B,$D7
  ADD HL,BC
  RET

; Routine at B364
LB364:
  LD IX,$C0B8
  LD B,$04
  LD DE,$0007
LB364_0:
  LD A,(IX+$00)
  AND A
  RET Z
  ADD IX,DE
  DJNZ LB364_0
  RET

; Routine at B377
LB377:
  LD IY,($B793)
  LD A,($5C78)
  LD ($B7E7),A
  EI
  IM 1
  LD A,($5CDD)
  AND A
  CALL NZ,$974A
  LD IX,$C0B8
  LD B,$05
LB377_0:
  PUSH BC
  LD A,(IX+$00)
  AND A
  CALL NZ,$C0AB
  LD BC,$0007
  ADD IX,BC
  POP BC
  DJNZ LB377_0
  LD A,($5C78)
  LD B,A
  LD A,($B7E7)
  CP B
  DI
  RET

; Routine at B3AB
LB3AB:
  LD HL,$C0D9
  ADD A,A
  LD E,A
  LD D,$00
  ADD HL,DE
  LD E,(HL)
  INC HL
  LD D,(HL)
  EX DE,HL
  JP (HL)

; Unused
LB3B8:
  DEFS $23

; Routine at B3DB
LB3DB:
  DI
  RET NZ
  LD BC,$6FC1
  POP BC
  LD D,$C1
  LD A,D
  POP BC
  XOR B
  POP BC
  RST $08
  POP BC
  DEFB $ED,$C1
  NOP
  JP NZ,$C21D
  DEC (HL)
  JP NZ,$C241
  LD DE,$0844
  CALL $C25C
  DEC (IX+$01)
  LD (IX+$00),$00
  RET

; Routine at B401
LB401:
  LD D,$18
  LD E,$30
  CALL $C25C
  XOR A
  LD ($B7E7),A
  LD A,$80
  LD ($5C78),A
  LD (IX+$00),$00
  RET

; Routine at B416
LB416:
  LD C,$09
  LD E,$14
  CALL $C122
  LD (IX+$00),$00
  RET

; Routine at B422
LB422:
  LD A,C
  XOR E
  ADD A,A
  LD B,A
  AND $0F
  LD D,A
  LD A,B
  AND $0C
  ADD A,$08
  LD B,A
  CALL LB56E_5
  DEC C
  JR NZ,LB422
  RET

; Routine at B436
LB436:
  LD A,$10
  OUT ($FE),A
LB436_0:
  DJNZ LB436_0
  XOR A
  OUT ($FE),A
  LD B,D
LB436_1:
  DJNZ LB436_1
  RET

; Routine at B443
LB443:
  LD E,$40
  LD D,$80
; This entry point is used by the routine at LB451.
LB443_0:
  LD B,C
  CALL LB56E_5
  INC D
  INC C
  DEC E
  JR NZ,LB443_0
  RET

; Routine at B451
LB451:
  LD E,$18
  LD C,$18
  LD D,$40
  JR LB443_0

; Routine at B459
LB459:
  LD E,$E0
  LD C,E
  LD D,$60
LB459_0:
  LD B,C
  CALL LB56E_5
  DEC D
  INC C
  DEC E
  JR NZ,LB459_0
  RET

; Routine at B468
LB468:
  LD C,$FF
  LD E,$3F
  JP $C122

; Routine at B46F
LB46F:
  LD DE,$0466
  CALL $C25C
  LD (IX+$00),$00
  RET

; Routine at B47A
LB47A:
  LD E,(IX+$02)
  LD D,$01
  CALL $C25C
  INC (IX+$02)
  INC (IX+$02)
  INC (IX+$02)
  RET

; Routine at B48C
LB48C:
  LD A,$18
  LD L,$01
LB48C_0:
  EX AF,AF'
  LD DE,$01FF
LB48C_1:
  PUSH DE
  CALL $C25C
  POP DE
  LD A,E
  SUB L
  LD E,A
  JR NC,LB48C_1
  LD A,$04
  ADD A,L
  LD L,A
  EX AF,AF'
  DEC A
  JR NZ,LB48C_0
  DI
  RET

; Routine at B4A8
LB4A8:
  LD A,($8D48)
  AND $3F
  ADD A,(IX+$01)
  LD E,A
  LD D,$01
  CALL $C25C
  LD A,(IX+$01)
  ADD A,$08
  LD (IX+$01),A
  CP $A1
  JR Z,LB4CA
  CP $60
  RET NZ
; This entry point is used by the routine at LA058.
LB4A8_0:
  LD (IX+$01),$21
  RET

; Routine at B4CA
;
; Used by the routine at LB4A8.
LB4CA:
  LD (IX+$00),$00
  RET

; Routine at B4CF
LB4CF:
  LD A,(IX+$01)
  AND $03
  JR NZ,LB4CF_0
  LD A,(IX+$01)
  ADD A,$14
  LD E,A
  LD D,$03
  CALL $C25C
LB4CF_0:
  DEC (IX+$01)
  DEC (IX+$01)
  RET NZ
  LD (IX+$00),$00
; This entry point is used by the routines at L8260, L8450, L84E3, L84FF,
; L8788, LAA96 and LB0A8.
LB4CF_1:
  RET

; Routine at B4ED
LB4ED:
  LD A,(IX+$01)
  RRA
  RRA
  AND $3F
  ADD A,$20
  LD E,A
  LD D,$02
  CALL $C263
  INC (IX+$01)
  RET

; Routine at B500
LB500:
  LD A,($A85F)
  AND A
  RET NZ
  LD E,(IX+$01)
  LD D,$01
  CALL $C25C
  LD A,(IX+$01)
  SUB $0B
  LD (IX+$01),A
  CP $10
  RET NC
  LD (IX+$00),$00
  RET

; Routine at B51D
LB51D:
  LD E,(IX+$01)
  LD D,$01
  CALL $C25C
  LD A,(IX+$01)
  ADD A,$0B
  LD (IX+$01),A
  CP $C1
  RET C
  LD (IX+$00),$00
  RET

; Routine at B535
LB535:
  LD C,$04
  LD E,$0F
  CALL $C122
  LD (IX+$00),$00
  RET

; Routine at B541
LB541:
  LD E,$30
  LD D,$0A
  CALL $C263
  LD (IX+$00),$00
  RET

; Routine at B54D
LB54D:
  LD B,E
  EI
  LD A,$10
  OUT ($FE),A
LB54D_0:
  DJNZ LB54D_0
  LD B,E
  XOR A
  OUT ($FE),A
LB54D_1:
  DJNZ LB54D_1
  RET

; Routine at B55C
LB55C:
  CALL $C24D
  DEC D
  JR NZ,LB55C
  RET

; Routine at B563
LB563:
  CALL $C24D
  LD A,$F8
  ADD A,E
  LD E,A
  DEC D
  JR NZ,LB563
  RET

; Data block at B56E
;
; Used by the routines at L8260, L852B, LA851, LA85D and LA8F8.
LB56E:
  DEFB $00,$00,$00,$00,$00,$19,$00,$00
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
LB56E_0:
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
LB56E_1:
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
LB56E_2:
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
LB56E_3:
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
LB56E_4:
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
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
LB56E_5:
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
LB56E_6:
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
  DEFB $00,$00,$00,$00,$00,$00,$00,$DB
  DEFB $02,$4D,$00,$07,$00,$00,$00,$5C
  DEFB $58,$DB,$02,$4D,$00,$BC,$5C,$CE
  DEFB $0B,$BB,$50,$06,$03,$DC,$0A,$FE
  DEFB $15,$58,$27,$A8,$FD,$70,$FE,$8A
  DEFB $FD,$94,$FE

; Message at EA49
LEA49:
  DEFM "+-e3"

; Data block at EA4D
LEA4D:
  DEFB $00,$00,$ED,$10,$0D,$00,$09,$00
  DEFB $85,$1C,$10,$1C,$52,$1B,$76,$1B
  DEFB $03,$13,$00,$3E,$00,$00,$00,$00
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
  DEFB $00,$00,$00,$00

; Routine at FCF1
LFCF1:
  LD HL,$5800
  LD DE,$5801
  LD BC,$02FF
  LD (HL),$07
  LDIR
  LD HL,L4000
  LD DE,$4001
  LD BC,$17FF
  LD (HL),$00
  LDIR
  LD HL,($5C36)
  LD (LFDC9),HL
  LD HL,$FCCB
  LD ($5C36),HL
  LD B,$08
  LD A,$00
LFCF1_0:
  PUSH AF
  PUSH BC
  LD ($FE21),A
  LD ($FE28),A
  LD ($FE36),A
  LD ($FE2F),A
  LD HL,$FE1B
  CALL LFDA2
  POP BC
  POP AF
  ADD A,$04
  DJNZ LFCF1_0
  LD HL,(LFDC9)
  LD ($5C36),HL
  LD HL,$FE72
  LD A,(HL)
  AND A
  JR Z,LFCF1_1
  ADD A,$09
  LD B,$05
  CALL LFDB7
  CALL LFDAC
  PUSH HL
  LD HL,LFE3C
  CALL LFDA2
  POP HL
LFCF1_1:
  INC HL
  LD A,(HL)
  AND A
  JR Z,LFCF1_2
  LD B,$06
  CALL LFDB7
  CALL LFDAC
LFCF1_2:
  INC HL
  LD BC,$0308
  CALL LFD8E
  LD BC,$0211
  CALL LFD8E
  LD A,(HL)
  AND A
  JR Z,LFCF1_3
  PUSH HL
  LD HL,$FE46
  CALL LFDA2
  POP HL
  LD A,(HL)
  LD B,$0E
  CALL LFDB7
  CALL LFDAC
LFCF1_3:
  PUSH HL
  LD HL,$FE54
  CALL LFDA2
  POP HL
  INC HL
  PUSH HL
  RET

; Routine at FD8E
;
; Used by the routine at LFCF1.
LFD8E:
  PUSH BC
  LD A,(HL)
  AND A
  JR Z,LFD8E_0
  POP BC
  PUSH BC
  LD B,C
  CALL LFDB7
  CALL LFDAC
LFD8E_0:
  INC HL
  POP BC
  INC C
  DJNZ LFD8E
  RET

; Routine at FDA2
;
; Used by the routine at LFCF1.
LFDA2:
  LD A,(HL)
  CP $FF
  RET Z
  PUSH HL
  RST $10
  POP HL
  INC HL
  JR LFDA2

; Routine at FDAC
;
; Used by the routines at LFCF1 and LFD8E.
LFDAC:
  LD B,(HL)
LFDAC_0:
  INC HL
  LD A,(HL)
  PUSH HL
  PUSH BC
  RST $10
  POP BC
  POP HL
  DJNZ LFDAC_0
  RET

; Routine at FDB7
;
; Used by the routines at LFCF1 and LFD8E.
LFDB7:
  LD C,A
  LD A,$20
  SUB C
  SRL A
  PUSH HL
  PUSH AF
  PUSH BC
  LD A,$16
  RST $10
  POP AF
  RST $10
  POP AF
  RST $10
  POP HL
  RET

; Data block at FDC9
LFDC9:
  DEFB $00,$3C,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$01,$03,$07,$0F,$1F
  DEFB $3F,$7F,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FE,$FC,$F8,$F0,$E0,$C0
  DEFB $80,$00,$7F,$3F,$1F,$0F,$07,$03
  DEFB $01,$00,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$00,$80,$C0,$E0,$F0,$F8,$FC
  DEFB $FE,$00,$80,$C0,$E0,$F0,$F8,$FC
  DEFB $FE,$FF,$00,$FC,$F8,$F0,$E0,$C0
  DEFB $80,$00,$00,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$10,$07,$11,$00,$16,$00
  DEFB $1C

; Message at FE22
LFE22:
  DEFM "$\"' "

; Data block at FE26
LFE26:
  DEFB $16,$01,$1C

; Message at FE29
LFE29:
  DEFM " $%&"

; Data block at FE2D
LFE2D:
  DEFB $16,$02,$1C

; Message at FE30
LFE30:
  DEFM " !)("

; Data block at FE34
LFE34:
  DEFB $16,$03,$1C,$21,$22,$23,$20,$FF

; Message at FE3C
LFE3C:
  DEFM " Presents"

; Data block at FE45
LFE45:
  DEFB $FF,$16,$0D,$0B

; Message at FE49
LFE49:
  DEFM "Written By"

; Data block at FE53
LFE53:
  DEFB $FF,$16,$15,$04,$10,$04

; Message at FE59
LFE59:
  DEFM "UniLoader by Paul Holmes"

; Data block at FE71
LFE71:
  DEFB $FF,$07

; Message at FE73
LFE73:
  DEFM "HIT PAK"

; Data block at FE7A
LFE7A:
  DEFB $05,$42,$41

; Routine at FE7D
LFE7D:
  LD D,H
  LD SP,HL
  JP P,$8112
  LD A,L
  RST $38
  LD C,D
  RST $38
  PUSH BC
  CP $7E
  NOP
  LD (HL),H
  LD A,(BC)
  LD (BC),A
  ADD A,(HL)
  NOP
  XOR E
  LD (HL),H
  LD A,(BC)
  OR C
  CP $31
  SUB H
  CP $3E
  ADD A,B
  LD IX,L4000
  LD DE,$1B00
  CALL LFEB4
  LD B,$06
  LD A,$81
  LD IX,$5B00
  LD DE,$0A74
  CALL LFEB6
  JP LFFDF_0

; Routine at FEB4
;
; Used by the routine at LFE7D.
LFEB4:
  JR LFED3

; Routine at FEB6
;
; Used by the routine at LFE7D.
LFEB6:
  PUSH DE
; This entry point is used by the routine at L919E.
LFEB6_0:
  PUSH IX
  PUSH AF
  DEC B
  JR Z,LFEB6_1
  LD DE,$1000
LFEB6_1:
  PUSH DE
  PUSH BC
  CALL LFED3
  POP BC
  POP DE
  POP AF
  POP IX
  ADD IX,DE
  POP DE
  INC A
  INC B
  DEC B
  JR NZ,LFEB6
  RET

; Routine at FED3
;
; Used by the routines at LFEB4 and LFEB6.
LFED3:
  LD ($FF70),IX
  LD ($FF73),DE
  LD ($FF76),A
; This entry point is used by the routine at LFF62.
LFED3_0:
  INC D
  EX AF,AF'
  DEC D
  DI
  LD A,$0F
  OUT ($FE),A
  IN A,($FE)
  RRA
  AND $20
  OR $02
  LD C,A
LFED3_1:
  CALL LFF7A_0
  JR NC,LFED3_1
  LD HL,$0415
LFED3_2:
  DJNZ LFED3_2
  DEC HL
  LD A,H
  OR L
  JR NZ,LFED3_2
  CALL LFF7A
  JR NC,LFED3_1
LFED3_3:
  LD B,$9C
  CALL LFF7A
  JR NC,LFED3_1
  LD A,$C6
  CP B
  JR NC,LFED3_1
  INC H
  JR NZ,LFED3_3
LFED3_4:
  LD B,$C9
  CALL LFF7A_0
  JR NC,LFED3_1
  LD A,B
  CP $D4
  JR NC,LFED3_4
  CALL LFF7A_0
  JR NC,LFF62_0
  LD A,C
  XOR $03
  LD C,A
  LD H,$00
  LD B,$B0
  JR LFF3F_1

; Routine at FF2C
;
; Used by the routine at LFF3F.
LFF2C:
  EX AF,AF'
  JR NZ,LFF34
  LD (IX+$00),L
  JR LFF3F

; Routine at FF34
;
; Used by the routine at LFF2C.
LFF34:
  RL C
  XOR L
  JR NZ,LFF62
  LD A,C
  RRA
  LD C,A
  INC DE
  JR LFF3F_0

; Routine at FF3F
;
; Used by the routine at LFF2C.
LFF3F:
  INC IX
; This entry point is used by the routine at LFF34.
LFF3F_0:
  DEC DE
  EX AF,AF'
  LD B,$B2
; This entry point is used by the routine at LFED3.
LFF3F_1:
  LD L,$01
LFF3F_2:
  CALL LFF7A
  JR NC,LFF62_0
  LD A,$CB
  CP B
  RL L
  LD B,$B0
  JR NC,LFF3F_2
  LD A,H
  XOR L
  LD H,A
  LD A,D
  OR E
  JR NZ,LFF2C
  LD A,H
  CP $01
  RET C
  JR LFF62_0

; Routine at FF62
;
; Used by the routine at LFF34.
LFF62:
  XOR L
  CP L
  JR NC,LFF62_1
  LD A,$FF
  CP L
  JR Z,LFF62_1
; This entry point is used by the routines at LFED3 and LFF3F.
LFF62_0:
  CALL LFFBE
LFF62_1:
  LD IX,$AB00
  LD DE,$0A74
  LD A,$86
  JP LFED3_0

; Routine at FF7A
;
; Used by the routines at LFED3 and LFF3F.
LFF7A:
  CALL LFF7A_0
  RET NC
; This entry point is used by the routine at LFED3.
LFF7A_0:
  LD A,$16
LFF7A_1:
  DEC A
  JR NZ,LFF7A_1
  AND A
LFF7A_2:
  INC B
  RET Z
  LD A,$7F
  IN A,($FE)
  RRA
  XOR C
  AND $20
  JR Z,LFF7A_2
  LD A,C
  CPL
  LD C,A
  PUSH AF
  PUSH HL
  LD HL,$FFE8
  INC (HL)
  LD A,(HL)
  AND $07
  OR $08
  OUT ($FE),A
  POP HL
  POP AF
  SCF
  RET

; Routine at FFA4
;
; Used by the routine at LFFBE.
LFFA4:
  LD HL,$401F
  LD DE,LFFDF
  LD B,$08
LFFA4_0:
  LD C,(HL)
  LD A,(DE)
  LD (HL),A
  LD A,C
  LD (DE),A
  INC H
  INC DE
  DJNZ LFFA4_0
  LD HL,$581F
  LD C,(HL)
  LD A,(DE)
  LD (HL),A
  LD A,C
  LD (DE),A
  RET

; Routine at FFBE
;
; Used by the routine at LFF62.
LFFBE:
  LD B,$08
  LD HL,$FFE8
  LD (HL),$00
LFFBE_0:
  EXX
  LD A,$02
  LD HL,$FFE8
  XOR (HL)
  LD (HL),A
  OR $08
  OUT ($FE),A
  LD C,$C8
LFFBE_1:
  DJNZ LFFBE_1
  DEC C
  JR NZ,LFFBE_1
  CALL LFFA4
  EXX
  DJNZ LFFBE_0
  RET

; Routine at FFDF
LFFDF:
  DEC DE
  LD (HL),$6C
  RET C
  LD L,H
  LD (HL),$1B
  NOP
  LD B,$36
main:
; This entry point is used by the routine at LFE7D.
LFFDF_0:
  LD SP,LFFF8
  POP HL
LFFDF_1:
  POP BC
  LD A,C
  OR B
  JP Z,$6800
  POP DE
  LDDR
  JR LFFDF_1

; Data block at FFF8
LFFF8:
  DEFB $73,$B5

; Message at FFFA
LFFFA:
  DEFM "tZs"

; Data block at FFFD
LFFFD:
  DEFB $C2,$00,$00

