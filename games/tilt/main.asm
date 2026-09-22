; SjASMPlus source file for game.asm
    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48
    INCLUDE tilt.asm
    SAVESNA "main.sna", main
    IF 3 == __PASS__
        DEVICE NONE : ORG 0
        OUTPUT "main.sna",r
		FPOS $00 : DB $90
		FPOS $01 : DB $0d
		FPOS $02 : DB $dd
		FPOS $03 : DB $3d
		FPOS $04 : DB $dd
		FPOS $05 : DB $00
		FPOS $06 : DB $07
		FPOS $07 : DB $28
		FPOS $08 : DB $38
		FPOS $09 : DB $52
		FPOS $0a : DB $de
		FPOS $0b : DB $00
		FPOS $0c : DB $b3
		FPOS $0d : DB $ff
		FPOS $0e : DB $00
		FPOS $0f : DB $36
		FPOS $10 : DB $b3
		FPOS $11 : DB $f0
		FPOS $12 : DB $df
		FPOS $13 : DB $04
		FPOS $14 : DB $0c
		FPOS $15 : DB $38
		FPOS $16 : DB $01
		FPOS $17 : DB $fe
		FPOS $18 : DB $ff
		FPOS $19 : DB $02
		FPOS $1a : DB $00
    ENDIF
