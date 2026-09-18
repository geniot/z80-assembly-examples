; Jet Set Willy disassembly
; https://skoolkit.ca
;
; © 1984 Software Projects Ltd (Jet Set Willy)
; © 2012-2023, 2025, 2026 Richard Dymond (this disassembly)
    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48
  org $7ffd

main:
L7ffd:
  jp BEGIN

; Room layout
;
; Initialised upon entry to a room and then used by the routine at INITROOM,
; and also used by the routine at ROOMATTRS.
ROOMLAYOUT:
  defs $80

; Room name
;
; Initialised upon entry to a room and then used by the routine at INITROOM.
ROOMNAME:
  defs $20

; Room tiles
;
; Initialised upon entry to a room by the routine at INITROOM.
BACKGROUND:
  defs $09                ; Background tile (used by the routines at DRAWROOM,
                          ; ROOMATTR, MOVEWILLY and WILLYATTR, and also by the
                          ; unused routine at U_SETATTRS)
FLOOR:
  defs $09                ; Floor tile (used by the routines at DRAWROOM and
                          ; ROOMATTR)
WALL:
  defs $09                ; Wall tile (used by the routines at DRAWROOM,
                          ; ROOMATTR, MOVEWILLY and MOVEWILLY3)
NASTY:
  defs $09                ; Nasty tile (used by the routines at DRAWROOM,
                          ; ROOMATTR, MOVEWILLY and WILLYATTR)
RAMP:
  defs $09                ; Ramp tile (used by the routines at DRAWROOM,
                          ; ROOMATTRS, MOVEWILLY3 and WILLYATTRS)
CONVEYOR:
  defs $09                ; Conveyor tile (used by the routines at DRAWROOM,
                          ; ROOMATTRS and MOVEWILLY2)

; Conveyor definition
;
; Initialised upon entry to a room by the routine at INITROOM.
CONVDIR:
  defb $00                ; Direction (0=left, 1=right; used by the routines at
                          ; MOVEWILLY2 and MVCONVEYOR)
CONVLOC:
  defw $0000              ; Address of the conveyor's location in the attribute
                          ; buffer at 5e00 (used by the routines at ROOMATTRS
                          ; and MVCONVEYOR)
CONVLEN:
  defb $00                ; Length (used by the routines at ROOMATTRS and
                          ; MVCONVEYOR)

; Ramp definition
;
; Initialised upon entry to a room by the routine at INITROOM.
RAMPDIR:
  defb $00                ; Direction (0=up to the left, 1=up to the right;
                          ; used by the routines at ROOMATTRS, MOVEWILLY3 and
                          ; WILLYATTRS)
RAMPLOC:
  defw $0000              ; Address of the location of the bottom of the ramp
                          ; in the attribute buffer at 5e00 (used by the
                          ; routine at ROOMATTRS)
RAMPLEN:
  defb $00                ; Length (used by the routine at ROOMATTRS)

; Border colour
;
; Initialised upon entry to a room and then used by the routine at INITROOM,
; and also used by the routines at ENDPAUSE, MOVEWILLY, DRAWTHINGS and
; DRAWITEMS.
BORDER:
  defb $00

; Unused
;
; These bytes are overwritten upon entry to a room by the routine at INITROOM,
; but not used.
XROOM223:
  defs $02

; Item graphic
;
; Initialised upon entry to a room by the routine at INITROOM, and used by the
; routine at DRAWITEMS.
ITEM:
  defs $08

; Room exits
;
; Initialised upon entry to a room by the routine at INITROOM.
LEFT:
  defb $00                ; Room to the left (used by the routine at ROOMLEFT)
RIGHT:
  defb $00                ; Room to the right (used by the routine at
                          ; ROOMRIGHT)
ABOVE:
  defb $00                ; Room above (used by the routines at DRAWTHINGS and
                          ; ROOMABOVE)
BELOW:
  defb $00                ; Room below (used by the routine at ROOMBELOW)

; Unused
;
; These bytes are overwritten upon entry to a room by the routine at INITROOM,
; but not used.
XROOM237:
  defs $03

; Entity specifications
;
; Initialised upon entry to a room and then used by the routine at INITROOM.
;
; There are eight pairs of bytes here that hold the entity specifications for
; the current room. The first byte in each pair identifies one of the entity
; definitions at ENTITYDEFS. The meaning of the second byte depends on the
; entity type: it determines the base sprite index and x-coordinate of a
; guardian, the y-coordinate of an arrow, or the x-coordinate of the top of a
; rope.
ENTITIES:
  defs $02                ; Entity 1
  defs $02                ; Entity 2
  defs $02                ; Entity 3
  defs $02                ; Entity 4
  defs $02                ; Entity 5
  defs $02                ; Entity 6
  defs $02                ; Entity 7
  defs $02                ; Entity 8

; Entity buffers
;
; Initialised by the routine at INITROOM, and used by the routines at
; MOVETHINGS and DRAWTHINGS. There are eight buffers here, each one eight bytes
; long, used to hold the state of the entities (rope, arrows and guardians) in
; the current room.
;
; For a horizontal guardian, the eight bytes are used as follows:
;
; +------+-----------------------------------------------------------+
; | Byte | Contents                                                  |
; +------+-----------------------------------------------------------+
; | 0    | Bit 7: direction (0=left, 1=right)                        |
; |      | Bits 5-6: animation frame index                           |
; |      | Bits 3-4: unused                                          |
; |      | Bits 0-2: entity type (001)                               |
; | 1    | Bits 5-7: animation frame index mask                      |
; |      | Bit 4: unused                                             |
; |      | Bit 3: BRIGHT value                                       |
; |      | Bits 0-2: INK colour                                      |
; | 2    | Bits 5-7: base sprite index                               |
; |      | Bits 0-4: x-coordinate                                    |
; | 3    | Pixel y-coordinate x2 (index into the table at SBUFADDRS) |
; | 4    | Unused                                                    |
; | 5    | Page containing the sprite graphic data (see GUARDIANS)   |
; | 6    | Minimum x-coordinate                                      |
; | 7    | Maximum x-coordinate                                      |
; +------+-----------------------------------------------------------+
;
; For a vertical guardian, the eight bytes are used as follows:
;
; +------+-----------------------------------------------------------+
; | Byte | Contents                                                  |
; +------+-----------------------------------------------------------+
; | 0    | Bits 5-7: animation frame index                           |
; |      | Bits 3-4: animation frame update flags (see MOVETHINGS_9) |
; |      | Bits 0-2: entity type (010)                               |
; | 1    | Bits 5-7: animation frame index mask                      |
; |      | Bit 4: unused                                             |
; |      | Bit 3: BRIGHT value                                       |
; |      | Bits 0-2: INK colour                                      |
; | 2    | Bits 5-7: base sprite index                               |
; |      | Bits 0-4: x-coordinate                                    |
; | 3    | Pixel y-coordinate x2 (index into the table at SBUFADDRS) |
; | 4    | Pixel y-coordinate increment                              |
; | 5    | Page containing the sprite graphic data (see GUARDIANS)   |
; | 6    | Minimum y-coordinate                                      |
; | 7    | Maximum y-coordinate                                      |
; +------+-----------------------------------------------------------+
;
; For an arrow, the eight bytes are used as follows:
;
; +------+-----------------------------------------------------------+
; | Byte | Contents                                                  |
; +------+-----------------------------------------------------------+
; | 0    | Bit 7: direction (0=left, 1=right)                        |
; |      | Bits 3-6: unused                                          |
; |      | Bits 0-2: entity type (100)                               |
; | 1    | Unused                                                    |
; | 2    | Pixel y-coordinate x2 (index into the table at SBUFADDRS) |
; | 3    | Unused                                                    |
; | 4    | x-coordinate                                              |
; | 5    | Collision detection byte (0x00=off, 0xff=on)              |
; | 6    | Top/bottom pixel row (drawn either side of the shaft)     |
; | 7    | Unused                                                    |
; +------+-----------------------------------------------------------+
;
; The rope uses the second and fourth bytes of the following buffer in addition
; to its own; these ten bytes are used as follows:
;
; +------+------------------------------------------------------------+
; | Byte | Contents                                                   |
; +------+------------------------------------------------------------+
; | 0    | Bit 7: direction (0=left, 1=right)                         |
; |      | Bits 3-6: unused                                           |
; |      | Bits 0-2: entity type (011)                                |
; | 1    | Animation frame index                                      |
; | 2    | x-coordinate of the top of the rope                        |
; | 3    | x-coordinate of the segment of rope being drawn            |
; | 4    | Length (0x20)                                              |
; | 5    | Segment drawing byte                                       |
; | 6    | Unused                                                     |
; | 7    | Animation frame at which the rope changes direction (0x36) |
; | 9    | Index of the segment of rope being drawn (0x00-0x20)       |
; | 11   | Bits 1-7: unused                                           |
; |      | Bit 0: Willy is on the rope (set), or not (reset)          |
; +------+------------------------------------------------------------+
;
; Note that if a rope were the eighth entity specified in a room, its buffer
; would use the first and third bytes in the otherwise unused area at
; EBOVERFLOW.
ENTITYBUF:
  defs $08                ; Entity 1
  defs $08                ; Entity 2
  defs $08                ; Entity 3
  defs $08                ; Entity 4
  defs $08                ; Entity 5
  defs $08                ; Entity 6
  defs $08                ; Entity 7
  defs $08                ; Entity 8
  defb $ff                ; Terminator

; Unused
;
; This area is not used, but if a rope were the eighth entity specified in a
; room, its buffer would spill over from the eighth slot at ENTITYBUF and use
; the first and third bytes here.
EBOVERFLOW:
  defs $bf

; Screen buffer address lookup table
;
; Used by the routines at GAMEOVER, DRAWTHINGS and DRAWWILLY. The value of the
; Nth entry (0<=N<=127) in this lookup table is the screen buffer address for
; the point with pixel coordinates (x,y)=(0,N), with the origin (0,0) at the
; top-left corner.
SBUFADDRS:
  defw $6000              ; y=0
  defw $6100              ; y=1
  defw $6200              ; y=2
  defw $6300              ; y=3
  defw $6400              ; y=4
  defw $6500              ; y=5
  defw $6600              ; y=6
  defw $6700              ; y=7
  defw $6020              ; y=8
  defw $6120              ; y=9
  defw $6220              ; y=10
  defw $6320              ; y=11
  defw $6420              ; y=12
  defw $6520              ; y=13
  defw $6620              ; y=14
  defw $6720              ; y=15
  defw $6040              ; y=16
  defw $6140              ; y=17
  defw $6240              ; y=18
  defw $6340              ; y=19
  defw $6440              ; y=20
  defw $6540              ; y=21
  defw $6640              ; y=22
  defw $6740              ; y=23
  defw $6060              ; y=24
  defw $6160              ; y=25
  defw $6260              ; y=26
  defw $6360              ; y=27
  defw $6460              ; y=28
  defw $6560              ; y=29
  defw $6660              ; y=30
  defw $6760              ; y=31
  defw $6080              ; y=32
  defw $6180              ; y=33
  defw $6280              ; y=34
  defw $6380              ; y=35
  defw $6480              ; y=36
  defw $6580              ; y=37
  defw $6680              ; y=38
  defw $6780              ; y=39
  defw $60a0              ; y=40
  defw $61a0              ; y=41
  defw $62a0              ; y=42
  defw $63a0              ; y=43
  defw $64a0              ; y=44
  defw $65a0              ; y=45
  defw $66a0              ; y=46
  defw $67a0              ; y=47
  defw $60c0              ; y=48
  defw $61c0              ; y=49
  defw $62c0              ; y=50
  defw $63c0              ; y=51
  defw $64c0              ; y=52
  defw $65c0              ; y=53
  defw $66c0              ; y=54
  defw $67c0              ; y=55
  defw $60e0              ; y=56
  defw $61e0              ; y=57
  defw $62e0              ; y=58
  defw $63e0              ; y=59
  defw $64e0              ; y=60
  defw $65e0              ; y=61
  defw $66e0              ; y=62
  defw $67e0              ; y=63
  defw $6800              ; y=64
  defw $6900              ; y=65
  defw $6a00              ; y=66
  defw $6b00              ; y=67
  defw $6c00              ; y=68
  defw $6d00              ; y=69
  defw $6e00              ; y=70
  defw $6f00              ; y=71
  defw $6820              ; y=72
  defw $6920              ; y=73
  defw $6a20              ; y=74
  defw $6b20              ; y=75
  defw $6c20              ; y=76
  defw $6d20              ; y=77
  defw $6e20              ; y=78
  defw $6f20              ; y=79
  defw $6840              ; y=80
  defw $6940              ; y=81
  defw $6a40              ; y=82
  defw $6b40              ; y=83
  defw $6c40              ; y=84
  defw $6d40              ; y=85
  defw $6e40              ; y=86
  defw $6f40              ; y=87
  defw $6860              ; y=88
  defw $6960              ; y=89
  defw $6a60              ; y=90
  defw $6b60              ; y=91
  defw $6c60              ; y=92
  defw $6d60              ; y=93
  defw $6e60              ; y=94
  defw $6f60              ; y=95
  defw $6880              ; y=96
  defw $6980              ; y=97
  defw $6a80              ; y=98
  defw $6b80              ; y=99
  defw $6c80              ; y=100
  defw $6d80              ; y=101
  defw $6e80              ; y=102
  defw $6f80              ; y=103
  defw $68a0              ; y=104
  defw $69a0              ; y=105
  defw $6aa0              ; y=106
  defw $6ba0              ; y=107
  defw $6ca0              ; y=108
  defw $6da0              ; y=109
  defw $6ea0              ; y=110
  defw $6fa0              ; y=111
  defw $68c0              ; y=112
  defw $69c0              ; y=113
  defw $6ac0              ; y=114
  defw $6bc0              ; y=115
  defw $6cc0              ; y=116
  defw $6dc0              ; y=117
  defw $6ec0              ; y=118
  defw $6fc0              ; y=119
  defw $68e0              ; y=120
  defw $69e0              ; y=121
  defw $6ae0              ; y=122
  defw $6be0              ; y=123
  defw $6ce0              ; y=124
  defw $6de0              ; y=125
  defw $6ee0              ; y=126
  defw $6fe0              ; y=127

; Rope animation table
;
; Used by the routine at DRAWTHINGS. The first half of this table controls the
; x-coordinates at which the segments of rope are drawn, and the second half
; controls the y-coordinates. For a given rope animation frame F
; (0x00<=F<=0x36), the 32 entries from F to F+31 inclusive (one for each of the
; 32 segments of rope below the topmost one) in each half of the table are
; used; thus the batch of entries used 'slides' up and down the table as F
; increases and decreases.
ROPEANIM:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; These values determine how much to
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; rotate the rope drawing byte (which in
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; turn determines the x-coordinate at
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; which each segment of rope is drawn)
  defb $01,$01,$01,$01,$01,$01,$01,$01 ;
  defb $01,$01,$01,$01,$02,$02,$02,$02 ;
  defb $02,$02,$02,$02,$02,$02,$02,$02 ;
  defb $02,$02,$02,$02,$02,$02,$02,$02 ;
  defb $02,$02,$01,$02,$02,$01,$01,$02 ;
  defb $01,$01,$02,$02,$03,$02,$03,$02 ;
  defb $03,$03,$03,$03,$03,$03         ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Unused
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00                         ;
  defb $06,$06,$06,$06,$06,$06,$06,$06 ; These values determine the
  defb $06,$06,$06,$06,$06,$06,$06,$06 ; y-coordinate of each segment of rope
  defb $06,$06,$06,$06,$06,$06,$06,$06 ; relative to the one above it
  defb $06,$06,$06,$06,$06,$06,$06,$06 ;
  defb $06,$06,$06,$06,$06,$06,$06,$06 ;
  defb $06,$06,$06,$06,$06,$06,$06,$06 ;
  defb $04,$06,$06,$04,$06,$04,$06,$04 ;
  defb $06,$04,$04,$04,$06,$04,$04,$04 ;
  defb $04,$04,$04,$04,$04,$04,$04,$04 ;
  defb $04,$04,$04,$04,$04,$04,$04,$04 ;
  defb $04,$04,$04,$04,$04,$04         ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Unused
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00                         ;

; The game has just loaded
;
; After the game has loaded, this is where it all starts.
BEGIN:
  di                      ; Disable interrupts
  ld hl,$5bff             ; Place the address of the routine at ENTERCODES on
  ld (hl),$86             ; the stack
  dec hl                  ;
  ld (hl),$9f             ;
  ld sp,$5bfe             ;
  sub a                   ; Set hl=8500 in a roundabout way
  ld l,a                  ;
  xor $0a                 ;
  ld b,a                  ;
  inc b                   ;
  ld h,b                  ;
  rrc h                   ;
BEGIN_0:
  ld c,(hl)               ; Read through addresses 8500-ffff, without changing
  ld a,l                  ; their contents; perhaps this code was once used to
  xor c                   ; descramble the contents of pages 0x85-0xff, but now
  xor h                   ; all it does is introduce a pause of about 0.47s
  ld (hl),c               ; before displaying the code entry screen
  inc hl                  ;
  bit 7,h                 ;
  jr nz,BEGIN_0           ;
  ret                     ; Make an indirect jump to ENTERCODES

; Current room number
;
; Initialised to 0x21 (The Bathroom) by the routine at TITLESCREEN, checked by
; the routines at INITROOM, DRAWTHINGS, DRAWITEMS, BEDANDBATH, CHKTOILET,
; DRAWTOILET and DRAWWILLY, and updated by the routines at ENDPAUSE, ROOMLEFT,
; ROOMRIGHT, ROOMABOVE and ROOMBELOW.
ROOM:
  defb $00

; Left-right movement table
;
; Used by the routine at MOVEWILLY2. The entries in this table are used to map
; the existing value (V) of Willy's direction and movement flags at DMFLAGS to
; a new value (V'), depending on the direction Willy is facing and how he is
; moving or being moved (by 'left' and 'right' keypresses and joystick input,
; or by a conveyor, or by an urge to visit the toilet).
;
; One of the first four entries is used when Willy is not moving.
LRMOVEMENT:
  defb $00                ; V=0 (facing right, no movement) + no movement: V'=0
                          ; (no change)
  defb $01                ; V=1 (facing left, no movement) + no movement: V'=1
                          ; (no change)
  defb $00                ; V=2 (facing right, moving) + no movement: V'=0
                          ; (facing right, no movement) (i.e. stop)
  defb $01                ; V=3 (facing left, moving) + no movement: V'=1
                          ; (facing left, no movement) (i.e. stop)
; One of the next four entries is used when Willy is moving left.
  defb $01                ; V=0 (facing right, no movement) + move left: V'=1
                          ; (facing left, no movement) (i.e. turn around)
  defb $03                ; V=1 (facing left, no movement) + move left: V'=3
                          ; (facing left, moving)
  defb $01                ; V=2 (facing right, moving) + move left: V'=1
                          ; (facing left, no movement) (i.e. turn around)
  defb $03                ; V=3 (facing left, moving) + move left: V'=3 (no
                          ; change)
; One of the next four entries is used when Willy is moving right.
  defb $02                ; V=0 (facing right, no movement) + move right: V'=2
                          ; (facing right, moving)
  defb $00                ; V=1 (facing left, no movement) + move right: V'=0
                          ; (facing right, no movement) (i.e. turn around)
  defb $02                ; V=2 (facing right, moving) + move right: V'=2 (no
                          ; change)
  defb $00                ; V=3 (facing left, moving) + move right: V'=0
                          ; (facing right, no movement) (i.e. turn around)
; One of the final four entries is used when Willy is being pulled both left
; and right; each entry leaves the flags at DMFLAGS unchanged (so Willy carries
; on moving in the direction he's already moving, or remains stationary).
  defb $00                ; V=V'=0 (facing right, no movement)
  defb $01                ; V=V'=1 (facing left, no movement)
  defb $02                ; V=V'=2 (facing right, moving)
  defb $03                ; V=V'=3 (facing left, moving)

; Triangle UDGs
;
; Used by the routine at TITLESCREEN.
TRIANGLE0:
  defb $c0,$f0,$fc,$ff,$ff,$ff,$ff,$ff
TRIANGLE1:
  defb $00,$00,$00,$00,$c0,$f0,$fc,$ff
TRIANGLE2:
  defb $ff,$ff,$ff,$ff,$fc,$f0,$c0,$00
TRIANGLE3:
  defb $fc,$f0,$c0,$00,$00,$00,$00,$00

; 'AIR'
;
; This message is not used.
L8451:
  defm "AIR"

; '+++++ Press ENTER to Start +++++...'
;
; Used by the routine at TITLESCREEN.
MSG_INTRO:
  defm "+++++ Press ENTER to Start +++++"
  defm "  JET-SET WILLY by Matthew Smith  "
  defm $7f," 1984 SOFTWARE PROJECTS Ltd . . . . ."
  defm "Guide Willy to collect all the items around "
  defm "the house before Midnight "
  defm "so Maria will let you get to your bed. . . . . . ."
  defm "+++++ Press ENTER to Start +++++"

; 'Items collected 000 Time 00:00 m'
;
; Used by the routine at INITROOM.
MSG_STATUS:
  defm "Items collected 000 Time 00:00 m"

; 'Game'
;
; Used by the routine at GAMEOVER.
MSG_GAME:
  defm "Game"

; 'Over'
;
; Used by the routine at GAMEOVER.
MSG_OVER:
  defm "Over"

; Number of items collected
;
; Initialised by the routine at TITLESCREEN, printed by the routine at
; MAINLOOP, and updated by the routine at DRAWITEMS.
MSG_ITEMS:
  defm "000"

; Current time
;
; Initialised by the routine at STARTGAME, and printed and updated by the
; routine at MAINLOOP.
MSG_CURTIME:
  defm " 7:00a"

; ' 7:00a'
;
; Copied by the routine at STARTGAME to MSG_CURTIME.
MSG_7AM:
  defm " 7:00a"

; 'Enter Code at grid location     '
;
; Used by the routine at ENTERCODES.
MSG_CODE1:
  defm "Enter Code at grid location     "

; 'Sorry, try code at location     '
;
; Used by the routine at ENTERCODES.
MSG_CODE2:
  defm "Sorry, try code at location     "

; Minute counter
;
; Initialised by the routine at TITLESCREEN; incremented on each pass through
; the main loop by the routine at MAINLOOP (which moves the game clock forward
; by a minute when the counter reaches 0); reset to zero by the routine at
; CHKTOILET when Willy sticks his head down the toilet; and used by the
; routines at DRAWITEMS (to cycle the colours of the items in the room),
; BEDANDBATH (to determine Maria's animation frame in Master Bedroom) and
; DRAWTOILET (to determine the animation frame for the toilet in The Bathroom).
TICKS:
  defb $00

; Lives remaining
;
; Initialised to 7 by the routine at TITLESCREEN, decremented by the routine at
; LOSELIFE, and used by the routines at DRAWLIVES (when drawing the remaining
; lives) and ENDPAUSE (to adjust the speed and pitch of the in-game music).
LIVES:
  defb $00

; Screen flash counter
;
; Initialised to zero by the routine at TITLESCREEN, but never used; the code
; at SCRFLASH makes the screen flash in Manic Miner fashion if this address
; holds a non-zero value.
FLASH:
  defb $00

; Kempston joystick indicator
;
; Initialised by the routine at TITLESCREEN, and checked by the routines at
; MOVEWILLY2 and CHECKENTER. Holds 1 if a joystick is present, 0 otherwise.
JOYSTICK:
  defb $00

; Willy's y-coordinate
;
; Initialised to 208 by the routine at TITLESCREEN, and used by the routines at
; MAINLOOP, ENDPAUSE, MOVEWILLY, MOVEWILLY2, MOVEWILLY3, DRAWTHINGS, ROOMABOVE,
; ROOMBELOW, BEDANDBATH, WILLYATTRS and DRAWWILLY. Holds the LSB of the address
; of the entry in the screen buffer address lookup table at SBUFADDRS that
; corresponds to Willy's pixel y-coordinate; in practice, this LSB is twice
; Willy's actual pixel y-coordinate. Note that when Willy is standing on a
; ramp, this holds his y-coordinate rounded down to the nearest multiple of 16
; (8x2).
WILLY_Y:
  defb $00

; Willy's direction and movement flags
;
; +--------+----------------------------------+-------------------------+
; | Bit(s) | Meaning                          | Used by                 |
; +--------+----------------------------------+-------------------------+
; | 0      | Direction Willy is facing        | MOVEWILLY2, MOVEWILLY3, |
; |        | (reset=right, set=left)          | DRAWWILLY               |
; | 1      | Willy's left/right movement flag | MOVEWILLY, MOVEWILLY2,  |
; |        | (set=moving)                     | MOVEWILLY3, DRAWTHINGS  |
; | 2-7    | Unused (always reset)            |                         |
; +--------+----------------------------------+-------------------------+
DMFLAGS:
  defb $00

; Airborne status indicator
;
; Initialised by the routine at TITLESCREEN, checked by the routines at
; ENDPAUSE, MOVEWILLY3 and WILLYATTRS, updated by the routines at KILLWILLY,
; DRAWTHINGS and ROOMABOVE, and checked and updated by the routines at
; MOVEWILLY, MOVEWILLY2 and ROOMBELOW. Possible values are:
;
; +-----------+-----------------------------------------------------------+
; | Value     | Meaning                                                   |
; +-----------+-----------------------------------------------------------+
; | 0x00      | Willy is neither falling nor jumping                      |
; | 0x01      | Willy is jumping                                          |
; | 0x02-0x0b | Willy is falling, and can land safely                     |
; | 0x0c-0x0f | Willy is falling, and has fallen too far to land safely   |
; | 0xff      | Willy has collided with a nasty, an arrow, a guardian, or |
; |           | Maria (see KILLWILLY)                                     |
; +-----------+-----------------------------------------------------------+
AIRBORNE:
  defb $00

; Willy's animation frame
;
; Used by the routines at WILLYATTRS and DRAWWILLY, and updated by the routines
; at MAINLOOP, MOVEWILLY3 and DRAWTHINGS. Possible values are 0, 1, 2 and 3.
FRAME:
  defb $00

; Address of Willy's location in the attribute buffer at 5c00
;
; Initialised by the routine at TITLESCREEN, and used by the routines at
; MOVEWILLY, MOVEWILLY3, DRAWTHINGS, ROOMLEFT, ROOMRIGHT, ROOMABOVE, ROOMBELOW,
; BEDANDBATH, CHKTOILET, WILLYATTRS and DRAWWILLY.
LOCATION:
  defw $0000

; Jumping animation counter
;
; Used by the routines at MOVEWILLY and MOVEWILLY2.
JUMPING:
  defb $00

; Rope status indicator
;
; Initialised by the routine at INITROOM, checked by the routines at MOVEWILLY
; and MOVEWILLY3, and checked and updated by the routines at MOVEWILLY2 and
; DRAWTHINGS. Possible values are:
;
; +-----------+--------------------------------------------------------------+
; | Value     | Meaning                                                      |
; +-----------+--------------------------------------------------------------+
; | 0x00      | Willy is not on the rope                                     |
; | 0x03-0x20 | Willy is on the rope, with the centre of his sprite anchored |
; |           | at this segment                                              |
; | 0xf0-0xff | Willy has just jumped or fallen off the rope                 |
; +-----------+--------------------------------------------------------------+
ROPE:
  defb $00

; Willy's state on entry to the room
;
; Initialised by the routine at INITROOM, and copied back into 85cf-85d5 by the
; routine at LOSELIFE.
INITSTATE:
  defb $00                ; Willy's y-coordinate (copied from WILLY_Y)
  defb $00                ; Willy's direction and movement flags (copied from
                          ; DMFLAGS)
  defb $00                ; Airborne status indicator (copied from AIRBORNE)
  defb $00                ; Willy's animation frame (copied from FRAME)
  defw $0000              ; Address of Willy's location in the attribute buffer
                          ; at 5c00 (copied from LOCATION)
  defb $00                ; Jumping animation counter (copied from JUMPING)

; 256 minus the number of items remaining
;
; Initialised by the routine at TITLESCREEN, and updated by the routine at
; DRAWITEMS when an item is collected.
ITEMS:
  defb $00

; Game mode indicator
;
; Initialised by the routine at TITLESCREEN, checked by the routines at
; MAINLOOP, MOVEWILLY2 and DRAWTOILET, and updated by the routines at
; DRAWITEMS, BEDANDBATH and CHKTOILET.
;
; +-------+---------------------------------+
; | Value | Meaning                         |
; +-------+---------------------------------+
; | 0     | Normal                          |
; | 1     | All items collected             |
; | 2     | Willy is running to the toilet  |
; | 3     | Willy's head is down the toilet |
; +-------+---------------------------------+
MODE:
  defb $00

; Inactivity timer
;
; Initialised by the routine at TITLESCREEN, and updated by the routines at
; MAINLOOP, ENDPAUSE and MOVEWILLY2.
INACTIVE:
  defb $00

; In-game music note index
;
; Initialised by the routine at TITLESCREEN, used by the routine at DRAWLIVES,
; and used and updated by the routine at ENDPAUSE.
NOTEINDEX:
  defb $00

; Music flags
;
; The keypress flag in bit 0 is initialised by the routine at TITLESCREEN; bits
; 0 and 1 are checked and updated by the routine at ENDPAUSE.
;
; +--------+-----------------------------------------------------------------+
; | Bit(s) | Meaning                                                         |
; +--------+-----------------------------------------------------------------+
; | 0      | Keypress flag (set=H-ENTER being pressed, reset=no key pressed) |
; | 1      | In-game music flag (set=music off, reset=music on)              |
; | 2-7    | Unused                                                          |
; +--------+-----------------------------------------------------------------+
MUSICFLAGS:
  defb $00

; WRITETYPER key counter
;
; Checked by the routine at MAINLOOP, and updated by the routine at ENDPAUSE.
TELEPORT:
  defb $00

; Temporary variable
;
; Used by the routines at CODESCREEN and READCODE to hold the entry code, by
; the routine at TITLESCREEN to hold the index into the message scrolled across
; the screen after the theme tune has finished playing, and by the routine at
; GAMEOVER to hold the distance of the foot from the top of the screen as it
; descends onto Willy.
TEMPVAR:
  defb $00

; WRITETYPER
;
; Used by the routine at ENDPAUSE. In each pair of bytes here, bits 0-4 of the
; first byte correspond to keys Q-W-E-R-T, and bits 0-4 of the second byte
; correspond to keys P-O-I-U-Y; among those bits, a zero indicates a key being
; pressed.
L85e5:
  defb %00011111,%00011111 ; (no keys pressed)
WRITETYPER:
  defb %00011101,%00011111 ; W
  defb %00010111,%00011111 ; R
  defb %00011111,%00011011 ; I
  defb %00001111,%00011111 ; T
  defb %00011011,%00011111 ; E
  defb %00001111,%00011111 ; T
  defb %00011111,%00001111 ; Y
  defb %00011111,%00011110 ; P
  defb %00011011,%00011111 ; E
  defb %00010111,%00011111 ; R

; Title screen tune data (Moonlight Sonata)
;
; Used by the routine at PLAYTUNE.
THEMETUNE:
  defb $51,$3c,$33,$51,$3c,$33,$51,$3c,$33,$51,$3c,$33,$51,$3c,$33,$51
  defb $3c,$33,$51,$3c,$33,$51,$3c,$33,$4c,$3c,$33,$4c,$3c,$33,$4c,$39
  defb $2d,$4c,$39,$2d,$51,$40,$2d,$51,$3c,$33,$51,$3c,$36,$5b,$40,$36
  defb $66,$51,$3c,$51,$3c,$33,$51,$3c,$33,$28,$3c,$28,$28,$36,$2d,$51
  defb $36,$2d,$51,$36,$2d,$28,$36,$28,$28,$3c,$33,$51,$3c,$33,$26,$3c
  defb $2d,$4c,$3c,$2d,$28,$40,$33,$51,$40,$33,$2d,$40,$36,$20,$40,$36
  defb $3d,$79,$3d,$ff

; In-game tune data (If I Were a Rich Man)
;
; Used by the routine at ENDPAUSE.
GAMETUNE:
  defb $56,$60,$56,$60,$66,$66,$80,$80,$80,$80,$66,$60,$56,$60,$56,$60
  defb $66,$60,$56,$4c,$48,$4c,$48,$4c,$56,$56,$56,$56,$56,$56,$56,$56
  defb $40,$40,$40,$40,$44,$44,$4c,$4c,$56,$60,$66,$60,$56,$56,$66,$66
  defb $51,$56,$60,$56,$51,$51,$60,$60,$40,$40,$40,$40,$40,$40,$40,$40

; Give two chances to enter a correct code
;
; Used by the routine at BEGIN.
ENTERCODES:
  ld hl,$4000             ; Clear the display file and attribute file
  ld de,$4001             ;
  ld bc,$1aff             ;
  ld (hl),$00             ;
  ldir                    ;
  ld ix,MSG_CODE1         ; Point ix at the message at MSG_CODE1 ("Enter Code
                          ; at grid location     ")
  call CODESCREEN         ; Display the code entry screen and collect a
                          ; four-digit code from the user
  jp z,TITLESCREEN        ; Start the game if the code is correct
  ld ix,MSG_CODE2         ; Point ix at the message at MSG_CODE2 ("Sorry, try
                          ; code at location     ")
  call CODESCREEN         ; Display the code entry screen and collect another
                          ; four-digit code from the user
  jp z,TITLESCREEN        ; Start the game if the code is correct
  jp $0000                ; Otherwise reset the machine

; Display the code entry screen
;
; Used by the routine at ENTERCODES. Displays the code entry screen and waits
; for a code to be entered. Returns with the zero flag set if the code entered
; is correct.
;
; ix Address of the message to print (MSG_CODE1 or MSG_CODE2)
CODESCREEN:
  ld de,$4800             ; Print the message pointed to by ix at (8,0)
  ld c,$20                ;
  call PRINTMSG           ;
  ld hl,$4842             ; Print the graphic for the '1' key at (10,2)
  ld de,NUMBERKEYS        ;
  ld c,$00                ;
  call DRAWSPRITE         ;
  ld hl,$4845             ; Print the graphic for the '2' key at (10,5)
  call DRAWSPRITE         ;
  ld hl,$4848             ; Print the graphic for the '3' key at (10,8)
  call DRAWSPRITE         ;
  ld hl,$484b             ; Print the graphic for the '4' key at (10,11)
  call DRAWSPRITE         ;
  ld hl,CODEATTRS         ; Copy the 128 attribute bytes from CODEATTRS to the
  ld de,$5900             ; screen (lines 8, 9, 10 and 11)
  ld bc,$0080             ;
  ldir                    ;
  ld a,($5c78)            ; Collect the LSB of the system variable FRAMES
  add a,$25               ; Add 0x25 to this value and replace it; this ensures
  ld ($5c78),a            ; that the value collected on the second pass through
                          ; this routine is different from the value collected
                          ; on the first pass
  cp $b3                  ; Is the value between 0x00 and 0xb2?
  jr c,CODESCREEN_0       ; Jump if so
  sub $b4                 ; Otherwise subtract 0xb4; note that if the original
                          ; value of the LSB of the system variable FRAMES was
                          ; 0x8e, this leaves a holding 0xff, which is a bug
CODESCREEN_0:
  ld l,a                  ; Now l holds either 0xff or some number between 0x00
                          ; and 0xb2
  ld h,$9e                ; Point hl at one of the entries in the table at
                          ; CODES (or at 9eff if l=0xff)
  ld a,(hl)               ; Pick up the table entry
  add a,l                 ; Add l to obtain the actual code
  ld (TEMPVAR),a          ; Store the code at TEMPVAR
  ld c,l                  ; Copy the code index to c; this will be used to
                          ; compute the grid location
  ld e,$2f                ; Calculate the ASCII code of the grid location
CODESCREEN_1:
  inc e                   ; number (0-9) in e
  ld a,c                  ;
  cp $12                  ;
  jr c,CODESCREEN_2       ;
  sub $12                 ;
  ld c,a                  ;
  jr CODESCREEN_1         ;
CODESCREEN_2:
  ld a,e                  ; Print the grid location number at (8,30)
  ld de,$481e             ;
  call PRINTCHAR          ;
  ld a,c                  ; Calculate the ASCII code of the grid location
  add a,$41               ; letter (A-R) in a
  ld de,$481d             ; Print the grid location letter at (8,29)
  call PRINTCHAR          ;
; Here we enter a loop that prints a 2x2 coloured block at (10,16), (10,19),
; (10,22) or (10,25) whenever '1', '2', '3' or '4' is pressed, or returns to
; the calling routine at ENTERCODES if ENTER is pressed.
CODESCREEN_3:
  ld ix,$5950             ; Point ix at the attribute file location of the
                          ; first coloured block at (10,16)
CODESCREEN_4:
  call READCODE           ; Print a coloured block when '1', '2', '3' or '4' is
                          ; pressed, or return to ENTERCODES if ENTER is
                          ; pressed
  inc ix                  ; Move ix along to the location of the next coloured
  inc ix                  ; block
  inc ix                  ;
  ld a,ixl                ; Have we just printed the fourth coloured block at
  cp $5c                  ; (10,25)?
  jr nz,CODESCREEN_4      ; If not, jump back to print the next one
  jr CODESCREEN_3         ; Otherwise rewind ix to the location of the first
                          ; coloured block

; Read the keyboard during code entry
;
; Used by the routine at CODESCREEN. Waits for '1', '2', '3', '4' or ENTER to
; be pressed and either prints a coloured block or validates the entered code.
; Returns to the routine at ENTERCODES if ENTER is being pressed, with the zero
; flag reset if the entered code is correct.
;
; ix Attribute file address of the flashing 2x2 block
READCODE:
  ld bc,$f7fe             ; Read keys 1-2-3-4-5
  in a,(c)                ;
  and $0f                 ; Is '1', '2', '3' or '4' (still) being pressed?
  cp $0f                  ;
  jr nz,READCODE          ; Jump back if so
READCODE_0:
  ld b,$bf                ; Read keys H-J-K-L-ENTER
  in a,(c)                ;
  bit 0,a                 ; Is ENTER being pressed?
  jr nz,READCODE_1        ; Jump if not
  ld a,($5959)            ; Pick up the attribute byte of the fourth 2x2 block
                          ; at (10,25)
  and $7f                 ; Has the fourth digit been entered yet?
  cp $07                  ;
  jr z,READCODE_1         ; Jump if not
; We have four coloured blocks, and ENTER is being pressed. Time to validate
; the entered code.
  sub $08                 ; Compute bits 0 and 1 of the entered code from the
  and $18                 ; attribute byte of the fourth coloured block at
  rrca                    ; (10,25) and store them in c
  rrca                    ;
  rrca                    ;
  ld c,a                  ;
  ld a,($5953)            ; Compute bits 4 and 5 of the entered code from the
  sub $08                 ; attribute byte of the second coloured block at
  and $18                 ; (10,19) and store them in c (alongside bits 0 and
  rlca                    ; 1)
  or c                    ;
  ld c,a                  ;
  ld a,($5956)            ; Compute bits 2 and 3 of the entered code from the
  sub $08                 ; attribute byte of the third coloured block at
  and $18                 ; (10,22) and store them in c (alongside bits 0, 1, 4
  rrca                    ; and 5)
  or c                    ;
  ld c,a                  ;
  ld a,($5950)            ; Compute bits 6 and 7 of the entered code from the
  sub $08                 ; attribute byte of the first coloured block at
  and $18                 ; (10,16) in a
  rlca                    ;
  rlca                    ;
  rlca                    ;
  pop hl                  ; Drop the return address from the stack
  or c                    ; Merge bits 0-5 of the entered code into a; now a
                          ; holds all 8 bits of the entered code
  ld hl,TEMPVAR           ; Point hl at TEMPVAR (where the correct entry code
                          ; is stored)
  cp (hl)                 ; Set the zero flag if the entered code matches
  ret                     ; Return to the routine at ENTERCODES
; Here we check whether '1', '2', '3' or '4' is being pressed.
READCODE_1:
  set 7,(ix+$00)          ; Make sure the current 2x2 block is flashing
  set 7,(ix+$01)          ;
  set 7,(ix+$20)          ;
  set 7,(ix+$21)          ;
  ld bc,$f7fe             ; Read keys 1-2-3-4-5
  in a,(c)                ;
  and $0f                 ; Keep only bits 0-3 (keys 1-2-3-4)
  ld e,$08                ; e=0x08 (INK 0: PAPER 1)
  cp $0e                  ; Is '1' alone being pressed?
  jr z,READCODE_2         ; Jump if so
  ld e,$10                ; e=0x10 (INK 0: PAPER 2)
  cp $0d                  ; Is '2' alone being pressed?
  jr z,READCODE_2         ; Jump if so
  ld e,$18                ; e=0x18 (INK 0: PAPER 3)
  cp $0b                  ; Is '3' alone being pressed?
  jr z,READCODE_2         ; Jump if so
  ld e,$20                ; e=0x20 (INK 0: PAPER 4)
  cp $07                  ; Is '4' alone being pressed?
  jp nz,READCODE_0        ; If not, jump back to check the ENTER key
; Exactly one of the number keys '1', '2', '3' or '4' is being pressed. e holds
; the corresponding attribute byte to use for the coloured block.
READCODE_2:
  ld (ix+$00),e           ; Set the colour of the 2x2 block (no longer
  ld (ix+$01),e           ; flashing)
  ld (ix+$20),e           ;
  ld (ix+$21),e           ;
  ld bc,$0018             ; Pause for about 0.02s
READCODE_3:
  djnz READCODE_3         ;
  dec c                   ;
  jr nz,READCODE_3        ;
  ret

; Display the title screen and play the theme tune
;
; Used by the routines at ENTERCODES, MAINLOOP and GAMEOVER.
;
; The first thing this routine does is initialise some game status buffer
; variables in preparation for the next game.
TITLESCREEN:
  xor a                   ; a=0
  ld (JOYSTICK),a         ; Initialise the Kempston joystick indicator at
                          ; JOYSTICK
  ld (NOTEINDEX),a        ; Initialise the in-game music note index at
                          ; NOTEINDEX
  ld (FLASH),a            ; Initialise the (unused) screen flash counter at
                          ; FLASH
  ld (AIRBORNE),a         ; Initialise the airborne status indicator at
                          ; AIRBORNE
  ld (TICKS),a            ; Initialise the minute counter at TICKS
  ld (INACTIVE),a         ; Initialise the inactivity timer at INACTIVE
  ld (MODE),a             ; Initialise the game mode indicator at MODE
  ld a,$07                ; Initialise the number of lives remaining at LIVES
  ld (LIVES),a            ;
  ld a,$d0                ; Initialise Willy's y-coordinate at WILLY_Y
  ld (WILLY_Y),a          ;
  ld a,$21                ; Initialise the current room number at ROOM to 0x21
  ld (ROOM),a             ; (The Bathroom)
  ld hl,$5db4             ; Initialise Willy's coordinates at LOCATION to
  ld (LOCATION),hl        ; (13,20)
  ld hl,MSG_ITEMS         ; Initialise the number of items collected at
  ld (hl),$30             ; MSG_ITEMS to "000"
  inc hl                  ;
  ld (hl),$30             ;
  inc hl                  ;
  ld (hl),$30             ;
  ld h,$a4                ; Page 0xa4 holds the first byte of each entry in the
                          ; item table
  ld a,(FIRSTITEM)        ; Pick up the index of the first item from FIRSTITEM
  ld l,a                  ; Point hl at the entry for the first item
  ld (ITEMS),a            ; Initialise the counter of items remaining at ITEMS
TITLESCREEN_0:
  set 6,(hl)              ; Set the collection flag for every item in the item
  inc l                   ; table at ITEMTABLE1
  jr nz,TITLESCREEN_0     ;
  ld hl,MUSICFLAGS        ; Initialise the keypress flag in bit 0 at MUSICFLAGS
  set 0,(hl)              ;
; Next, prepare the screen.
TITLESCREEN_1:
  ld hl,$4000             ; Clear the entire display file
  ld de,$4001             ;
  ld bc,$17ff             ;
  ld (hl),$00             ;
  ldir                    ;
  ld hl,ATTRSUPPER        ; Copy the attribute bytes for the title screen from
  ld bc,$0300             ; ATTRSUPPER and ATTRSLOWER to the attribute file
  ldir                    ;
  ld hl,$5a60             ; Copy the attribute value 0x46 (INK 6: PAPER 0:
  ld de,$5a61             ; BRIGHT 1) into the row of 32 cells from (19,0) to
  ld bc,$001f             ; (19,31) on the screen
  ld (hl),$46             ;
  ldir                    ;
  ld ix,MSG_INTRO         ; Print "+++++ Press ENTER to Start +++++" (see
  ld de,$5060             ; MSG_INTRO) at (19,0)
  ld c,$20                ;
  call PRINTMSG           ;
  ld de,$5800             ; Point de at the first byte of the attribute file
; The following loop scans the top two-thirds of the attribute file, which
; contains values 0x00, 0x04, 0x05, 0x08, 0x09, 0x24, 0x25, 0x28, 0x29, 0x2c,
; 0x2d and 0xd3 (copied from ATTRSUPPER). Whenever a value other than 0x00,
; 0x09, 0x24, 0x2d or 0xd3 is found, a triangle UDG is drawn at the
; corresponding location in the display file.
TITLESCREEN_2:
  ld a,(de)               ; Pick up a byte from the attribute file
  or a                    ; Is it 0x00 (INK 0: PAPER 0)?
  jr z,TITLESCREEN_6      ; If so, jump to consider the next byte in the
                          ; attribute file
  cp $d3                  ; Is it 0xd3 (INK 3: PAPER 2: BRIGHT 1: FLASH 1)?
  jr z,TITLESCREEN_6      ; If so, jump to consider the next byte in the
                          ; attribute file
  cp $09                  ; Is it 0x09 (INK 1: PAPER 1)?
  jr z,TITLESCREEN_6      ; If so, jump to consider the next byte in the
                          ; attribute file
  cp $2d                  ; Is it 0x2d (INK 5: PAPER 5)?
  jr z,TITLESCREEN_6      ; If so, jump to consider the next byte in the
                          ; attribute file
  cp $24                  ; Is it 0x24 (INK 4: PAPER 4)?
  jr z,TITLESCREEN_6      ; If so, jump to consider the next byte in the
                          ; attribute file
  ld c,$00                ; c=0; this will be used as an offset from the
                          ; triangle UDG base address (TRIANGLE0)
  cp $08                  ; Is the attribute value 0x08 (INK 0: PAPER 1)?
  jr z,TITLESCREEN_4      ; Jump if so
  cp $29                  ; Is it 0x29 (INK 1: PAPER 5)?
  jr z,TITLESCREEN_4      ; Jump if so
  cp $2c                  ; Is it 0x2c (INK 4: PAPER 5)?
  jr z,TITLESCREEN_3      ; Jump if so
  cp $05                  ; Is it 0x05 (INK 5: PAPER 0)?
  jr z,TITLESCREEN_4      ; Jump if so
  ld c,$10                ; Set the triangle UDG offset to 0x10
  jr TITLESCREEN_4
TITLESCREEN_3:
  ld a,$25                ; Change the attribute byte here from 0x2c (INK 4:
  ld (de),a               ; PAPER 5) to 0x25 (INK 5: PAPER 4)
TITLESCREEN_4:
  ld a,e                  ; Point hl at the triangle UDG to draw (TRIANGLE0,
  and $01                 ; TRIANGLE1, TRIANGLE2 or TRIANGLE3)
  rlca                    ;
  rlca                    ;
  rlca                    ;
  or c                    ;
  ld c,a                  ;
  ld b,$00                ;
  ld hl,TRIANGLE0         ;
  add hl,bc               ;
  push de                 ; Save the attribute file address briefly
  bit 0,d                 ; Set the zero flag if we're still in the top third
                          ; of the attribute file
  ld d,$40                ; Point de at the top third of the display file
  jr z,TITLESCREEN_5      ; Jump if we're still in the top third of the
                          ; attribute file
  ld d,$48                ; Point de at the middle third of the display file
TITLESCREEN_5:
  ld b,$08                ; There are eight pixel rows in a triangle UDG
  call PRINTCHAR_0        ; Draw a triangle UDG on the screen
  pop de                  ; Restore the attribute file address to de
TITLESCREEN_6:
  inc de                  ; Point de at the next byte in the attribute file
  ld a,d                  ; Have we finished scanning the top two-thirds of the
  cp $5a                  ; attribute file yet?
  jp nz,TITLESCREEN_2     ; If not, jump back to examine the next byte
; Now check whether there is a joystick connected.
  ld bc,$001f             ; This is the joystick port
  di                      ; Disable interrupts (which are already disabled)
  xor a                   ; a=0
TITLESCREEN_7:
  in e,(c)                ; Combine 256 readings of the joystick port in a; if
  or e                    ; no joystick is connected, some of these readings
  djnz TITLESCREEN_7      ; will have bit 5 set
  and $20                 ; Is a joystick connected (bit 5 reset)?
  jr nz,TITLESCREEN_8     ; Jump if not
  ld a,$01                ; Set the Kempston joystick indicator at JOYSTICK to
  ld (JOYSTICK),a         ; 1
; And finally, play the theme tune and check for keypresses.
TITLESCREEN_8:
  ld hl,THEMETUNE         ; Point hl at the theme tune data at THEMETUNE
  call PLAYTUNE           ; Play the theme tune
  jp nz,STARTGAME         ; Start the game if ENTER, 0 or the fire button was
                          ; pressed
; No key was pressed while the theme tune was playing, so scroll a message
; across the screen while repeatedly producing a screeching sound effect.
  xor a                   ; Initialise the temporary game status buffer
  ld (TEMPVAR),a          ; variable at TEMPVAR to 0; this will be used as an
                          ; index for the message scrolled across the screen
                          ; (see MSG_INTRO)
TITLESCREEN_9:
  call CYCLEATTRS         ; Cycle the INK and PAPER colours
  ld hl,$5a60             ; Copy the attribute value 0x4f (INK 7: PAPER 1:
  ld de,$5a61             ; BRIGHT 1) into the row of 32 cells from (19,0) to
  ld bc,$001f             ; (19,31) on the screen
  ld (hl),$4f             ;
  ldir                    ;
  ld a,(TEMPVAR)          ; Pick up the message index from TEMPVAR
  ld ix,MSG_INTRO         ; Point ix at the corresponding location in the
  ld e,a                  ; message at MSG_INTRO
  ld d,$00                ;
  add ix,de               ;
  ld de,$5060             ; Print 32 characters of the message at (19,0)
  ld c,$20                ;
  call PRINTMSG           ;
  ld a,(TEMPVAR)          ; Prepare a value between 0x32 and 0x51 in a (for the
  and $1f                 ; routine at INTROSOUND)
  add a,$32               ;
  call INTROSOUND         ; Make a sound effect
  ld bc,$affe             ; Read keys H-J-K-L-ENTER and 6-7-8-9-0
  in a,(c)                ;
  and $01                 ; Keep only bit 0 of the result (ENTER, 0)
  cp $01                  ; Was ENTER or 0 pressed?
  jr nz,STARTGAME         ; Jump if so to start the game
  ld a,(TEMPVAR)          ; Pick up the message index from TEMPVAR
  inc a                   ; Increment it
  cp $e0                  ; Set the zero flag if we've reached the end of the
                          ; message
  ld (TEMPVAR),a          ; Store the new message index at TEMPVAR
  jr nz,TITLESCREEN_9     ; Jump back unless we've finished scrolling the
                          ; message across the screen
  jp TITLESCREEN_1        ; Jump back to prepare the screen and play the theme
                          ; tune again

; Start the game
;
; Used by the routine at TITLESCREEN.
STARTGAME:
  ld hl,MSG_7AM           ; Copy the text at MSG_7AM (" 7:00a") to MSG_CURTIME,
  ld de,MSG_CURTIME       ; thus resetting the clock
  ld bc,$0006             ;
  ldir                    ;
  ld hl,ATTRSLOWER        ; Copy the attribute bytes from ATTRSLOWER to the
  ld de,$5a00             ; bottom third of the screen
  ld bc,$0100             ;
  ldir                    ;
; This routine continues into the one at INITROOM.

; Initialise the current room
;
; Used by the routines at ENDPAUSE (to teleport into a room), LOSELIFE (to
; reinitialise the room after Willy has lost a life), ROOMLEFT (when Willy has
; entered the room from the right), ROOMRIGHT (when Willy has entered the room
; from the left), ROOMABOVE (when Willy has entered the room from below) and
; ROOMBELOW (when Willy has entered the room from above). The routine at
; STARTGAME also continues here.
INITROOM:
  ld a,(ROOM)             ; Pick up the current room number from ROOM
  or $c0                  ; Point hl at the first byte of the room definition
  ld h,a                  ;
  ld l,$00                ;
  ld de,ROOMLAYOUT        ; Copy the room definition into the game status
  ld bc,$0100             ; buffer at 8000
  ldir                    ;
  ld ix,ENTITIES          ; Point ix at the first byte of the first entity
                          ; specification for the current room at ENTITIES
  ld de,ENTITYBUF         ; Point de at the first byte of the first entity
                          ; buffer at ENTITYBUF; this instruction is redundant,
                          ; since de already holds 8100
  ld a,$08                ; There are at most eight entities in a room
INITROOM_0:
  ld l,(ix+$00)           ; Pick up the first byte of the entity specification
  res 7,l                 ; Point hl at the corresponding entry in the table of
  ld h,$14                ; entity definitions at ENTITYDEFS
  add hl,hl               ;
  add hl,hl               ;
  add hl,hl               ;
  ld bc,$0002             ; Copy the first two bytes of the entity definition
  ldir                    ; into the entity buffer
  ld c,(ix+$01)           ; Copy the second byte of the entity specification
  ld (hl),c               ; into the third byte of the entity definition
  ld bc,$0006             ; Copy the remaining six bytes of the entity
  ldir                    ; definition into the entity buffer
  inc ix                  ; Point ix at the first byte of the next entity
  inc ix                  ; specification
  dec a                   ; Have we copied all eight entity definitions into
                          ; the entity buffers yet?
  jr nz,INITROOM_0        ; If not, jump back to copy the next one
  ld hl,WILLY_Y           ; Copy the seven bytes that define Willy's state
  ld de,INITSTATE         ; (position, animation frame etc.) on entry to this
  ld bc,$0007             ; room from 85cf-85d5 to INITSTATE
  ldir                    ;
  call DRAWROOM           ; Draw the current room to the screen buffer at 7000
                          ; and the attribute buffer at 5e00
  ld hl,$5000             ; Clear the bottom third of the display file
  ld de,$5001             ;
  ld bc,$07ff             ;
  ld (hl),$00             ;
  ldir                    ;
  ld ix,ROOMNAME          ; Print the room name (see ROOMNAME) at (16,0)
  ld c,$20                ;
  ld de,$5000             ;
  call PRINTMSG           ;
  ld ix,MSG_STATUS        ; Print "Items collected 000 Time 00:00 m" (see
  ld de,$5060             ; MSG_STATUS) at (19,0)
  ld c,$20                ;
  call PRINTMSG           ;
  ld a,(BORDER)           ; Pick up the border colour for the current room from
                          ; BORDER
  ld c,$fe                ; Set the border colour
  out (c),a               ;
  xor a                   ; Initialise the rope status indicator at ROPE to 0
  ld (ROPE),a             ;
  jp MAINLOOP             ; Enter the main loop

; Draw the remaining lives
;
; Used by the routine at MAINLOOP.
DRAWLIVES:
  ld a,(LIVES)            ; Pick up the number of lives remaining from LIVES
  ld hl,$50a0             ; Set hl to the display file address at which to draw
                          ; the first Willy sprite
  or a                    ; Are there any lives remaining?
  ret z                   ; Return if not
  ld b,a                  ; Initialise b to the number of lives remaining
; The sprite-drawing loop begins.
DRAWLIVES_0:
  ld c,$00                ; c=0; this tells the sprite-drawing routine at
                          ; DRAWSPRITE to overwrite any existing graphics
  push hl                 ; Save hl and bc briefly
  push bc                 ;
  ld a,(NOTEINDEX)        ; Pick up the in-game music note index from
                          ; NOTEINDEX; this will determine the animation frame
                          ; for the Willy sprites
  rlca                    ; Now a=0x00 (frame 0), 0x20 (frame 1), 0x40 (frame
  rlca                    ; 2) or 0x60 (frame 3)
  rlca                    ;
  and $60                 ;
  ld e,a                  ; Point de at the corresponding Willy sprite (at
  ld d,$9d                ; MANDAT+a)
  call DRAWSPRITE         ; Draw the Willy sprite on the screen
  pop bc                  ; Restore hl and bc
  pop hl                  ;
  inc hl                  ; Move hl along to the location at which to draw the
  inc hl                  ; next Willy sprite
  djnz DRAWLIVES_0        ; Jump back to draw any remaining sprites
  ret

; Main loop (1)
;
; Used by the routines at INITROOM and ENDPAUSE.
MAINLOOP:
  call DRAWLIVES          ; Draw the remaining lives
  ld hl,$5e00             ; Copy the contents of the attribute buffer at 5e00
  ld de,$5c00             ; (the attributes for the empty room) into the
  ld bc,$0200             ; attribute buffer at 5c00
  ldir                    ;
  ld hl,$7000             ; Copy the contents of the screen buffer at 7000 (the
  ld de,$6000             ; tiles for the empty room) into the screen buffer at
  ld bc,$1000             ; 6000
  ldir                    ;
  call MOVETHINGS         ; Move the rope and guardians in the current room
  ld a,(MODE)             ; Pick up the game mode indicator from MODE
  cp $03                  ; Is Willy's head down the toilet?
  call nz,MOVEWILLY       ; If not, move Willy
AFTERMOVE1:
  ld a,(WILLY_Y)          ; Pick up Willy's y-coordinate from WILLY_Y
  cp $e1                  ; Has Willy just moved up a ramp or a rope past the
                          ; top of the screen?
  call nc,ROOMABOVE       ; If so, move Willy into the room above
AFTERMOVE2:
  ld a,(MODE)             ; Pick up the game mode indicator from MODE
  cp $03                  ; Is Willy's head down the toilet?
  call nz,WILLYATTRS      ; If not, check and set the attribute bytes for
                          ; Willy's sprite in the buffer at 5c00, and draw
                          ; Willy to the screen buffer at 6000
  ld a,(MODE)             ; Pick up the game mode indicator from MODE
  cp $02                  ; Is Willy on his way to the toilet?
  call z,CHKTOILET        ; If so, check whether he's reached it yet
  call BEDANDBATH         ; Deal with special rooms (Master Bedroom, The
                          ; Bathroom)
  call DRAWTHINGS         ; Draw the rope, arrows and guardians in the current
                          ; room
  call MVCONVEYOR         ; Move the conveyor in the current room (if there is
                          ; one)
  call DRAWITEMS          ; Draw the items in the current room (if there are
                          ; any) and collect any that Willy is touching
; This entry point is used by the routine at KILLWILLY.
MAINLOOP_0:
  ld hl,$6000             ; Copy the contents of the screen buffer at 6000 to
  ld de,$4000             ; the display file
  ld bc,$1000             ;
  ldir                    ;
  ld a,(MODE)             ; Pick up the game mode indicator from MODE
  and $02                 ; Now a=1 if Willy is running to the toilet or
  rrca                    ; already has his head down it, 0 otherwise
  ld hl,FRAME             ; Set Willy's animation frame at FRAME to 1 or 3 if
  or (hl)                 ; Willy is running to the toilet or already has his
  ld (hl),a               ; head down it; this has the effect of moving Willy
                          ; at twice his normal speed as he makes his way to
                          ; the toilet (using animation frames 2 and 0)
SCRFLASH:
  ld a,(FLASH)            ; Pick up the screen flash counter (unused and always
                          ; 0) from FLASH
  or a                    ; Is it zero?
  jr z,MAINLOOP_1         ; Jump if so (this jump is always made)
; The next section of code is never executed.
  dec a                   ; Decrement the screen flash counter at FLASH
  ld (FLASH),a            ;
  rlca                    ; Move bits 0-2 into bits 3-5 and clear all the other
  rlca                    ; bits
  rlca                    ;
  and $38                 ;
  ld hl,$5c00             ; Set every attribute byte in the buffer at 5c00 to
  ld de,$5c01             ; this value
  ld bc,$01ff             ;
  ld (hl),a               ;
  ldir                    ;
; Normal service resumes here.
MAINLOOP_1:
  ld hl,$5c00             ; Copy the contents of the attribute buffer at 5c00
  ld de,$5800             ; to the attribute file
  ld bc,$0200             ;
  ldir                    ;
  ld ix,MSG_CURTIME       ; Print the current time (see MSG_CURTIME) at (19,25)
  ld de,$5079             ;
  ld c,$06                ;
  call PRINTMSG           ;
  ld ix,MSG_ITEMS         ; Print the number of items collected (see MSG_ITEMS)
  ld de,$5070             ; at (19,16)
  ld c,$03                ;
  call PRINTMSG           ;
  ld a,(TICKS)            ; Increment the minute counter at TICKS
  inc a                   ;
  ld (TICKS),a            ;
  jr nz,MAINLOOP_3        ; Jump unless the minute counter has ticked over to 0
; A minute of game time has passed. Update the game clock accordingly.
  ld ix,MSG_CURTIME       ; Point ix at the current time at MSG_CURTIME
  inc (ix+$04)            ; Increment the units digit of the minute
  ld a,(ix+$04)           ; Pick up the new units digit
  cp $3a                  ; Was it '9' before?
  jr nz,MAINLOOP_3        ; Jump if not
  ld (ix+$04),$30         ; Set the units digit of the minute to '0'
  inc (ix+$03)            ; Increment the tens digit of the minute
  ld a,(ix+$03)           ; Pick up the new tens digit
  cp $36                  ; Was it '5' before?
  jr nz,MAINLOOP_3        ; Jump if not
  ld (ix+$03),$30         ; Set the tens digit of the minute to '0'
  ld a,(ix+$00)           ; Pick up the tens digit of the hour
  cp $31                  ; Is it currently '1'?
  jr nz,MAINLOOP_2        ; Jump if not
  inc (ix+$01)            ; Increment the units digit of the hour
  ld a,(ix+$01)           ; Pick up the new units digit
  cp $33                  ; Was it '2' before?
  jr nz,MAINLOOP_3        ; Jump if not
  ld a,(ix+$05)           ; Pick up the 'a' or 'p' of 'am/pm'
  cp $70                  ; Is it 'p'?
  jp z,TITLESCREEN        ; If so, quit the game (it's 1am)
  ld (ix+$00),$20         ; Set the tens digit of the hour to ' ' (space)
  ld (ix+$01),$31         ; Set the units digit of the hour to '1'
  ld (ix+$05),$70         ; Change the 'a' of 'am' to 'p'
  jr MAINLOOP_3
MAINLOOP_2:
  inc (ix+$01)            ; Increment the units digit of the hour
  ld a,(ix+$01)           ; Pick up the new units digit
  cp $3a                  ; Was it '9' before?
  jr nz,MAINLOOP_3        ; Jump if not
  ld (ix+$01),$30         ; Set the units digit of the hour to '0'
  ld (ix+$00),$31         ; Set the tens digit of the hour to '1'
; Now check whether any non-movement keys are being pressed.
MAINLOOP_3:
  ld bc,$fefe             ; Read keys SHIFT-Z-X-C-V
  in a,(c)                ;
  ld e,a                  ; Save the result in e
  ld b,$7f                ; Read keys B-N-M-SS-SPACE
  in a,(c)                ;
  or e                    ; Combine the results
  and $01                 ; Are SHIFT and SPACE being pressed?
  jp z,TITLESCREEN        ; If so, quit the game
  ld a,(INACTIVE)         ; Increment the inactivity timer at INACTIVE
  inc a                   ;
  ld (INACTIVE),a         ;
  jr z,PAUSE              ; Jump if the inactivity timer is now 0 (no keys have
                          ; been pressed for a while)
  ld b,$fd                ; Read keys A-S-D-F-G
  in a,(c)                ;
  and $1f                 ; Are any of these keys being pressed?
  cp $1f                  ;
  jr z,ENDPAUSE_0         ; Jump if not
  ld de,$0000             ; Prepare the delay counters in d and e for the pause
                          ; loop that follows
; The following loop pauses the game until any key except A, S, D, F or G is
; pressed.
PAUSE:
  ld b,$02                ; Read every half-row of keys except A-S-D-F-G
  in a,(c)                ;
  and $1f                 ; Are any of these keys being pressed?
  cp $1f                  ;
SEE39936:
  jr nz,ENDPAUSE          ; If so, resume the game
  inc e                   ; Increment the delay counter in e
  jr nz,PAUSE             ; Jump back unless it's zero
  inc d                   ; Increment the delay counter in d
  jr nz,PAUSE             ; Jump back unless it's zero
  ld a,(TELEPORT)         ; Pick up the WRITETYPER key counter from TELEPORT
  cp $0a                  ; Has WRITETYPER been keyed in yet?
  call nz,CYCLEATTRS      ; If not, cycle the INK and PAPER colours
  jr PAUSE                ; Jump back to the beginning of the pause loop

; Cycle the INK and PAPER colours
;
; Used by the routines at TITLESCREEN (while scrolling the instructions across
; the screen) and MAINLOOP (while the game is paused).
CYCLEATTRS:
  ld hl,$5800             ; Point hl at the first byte of the attribute file
  ld a,(hl)               ; Pick up this byte
  and $07                 ; Keep only bits 0-2 (the INK colour)
  out ($fe),a             ; Set the border colour to match
; Now we loop over every byte in the attribute file.
CYCLEATTRS_0:
  ld a,(hl)               ; Pick up an attribute file byte
  add a,$03               ; Cycle the INK colour forward by three
  and $07                 ;
  ld d,a                  ; Save the new INK colour in d
  ld a,(hl)               ; Pick up the attribute file byte again
  add a,$18               ; Cycle the PAPER colour forward by three (and turn
  and $b8                 ; off any BRIGHT colours)
  or d                    ; Merge in the new INK colour
  ld (hl),a               ; Save the new attribute byte
  inc hl                  ; Point hl at the next byte in the attribute file
  ld a,h                  ; Have we reached the end of the attribute file yet?
  cp $5b                  ;
  jr nz,CYCLEATTRS_0      ; If not, jump back to modify the next byte
  ret

; Main loop (2)
;
; Used by the routine at MAINLOOP. The main entry point is used when resuming
; the game after it has been paused.
ENDPAUSE:
  ld hl,ATTRSLOWER        ; Copy the attribute bytes from ATTRSLOWER to the
  ld de,$5a00             ; bottom third of the screen
  ld bc,$0100             ;
  ldir                    ;
  ld a,(BORDER)           ; Pick up the border colour for the current room from
                          ; BORDER
  out ($fe),a             ; Restore the border colour
; This entry point is used by the routine at MAINLOOP.
ENDPAUSE_0:
  ld a,(AIRBORNE)         ; Pick up the airborne status indicator from AIRBORNE
  cp $ff                  ; Has Willy landed after falling from too great a
                          ; height, or collided with a nasty, an arrow, a
                          ; guardian, or Maria?
  jp z,LOSELIFE           ; If so, lose a life
; Now read the keys H, J, K, L and ENTER (which toggle the in-game music).
  ld b,$bf                ; Prepare b for reading keys H-J-K-L-ENTER
  ld hl,MUSICFLAGS        ; Point hl at the music flags at MUSICFLAGS
  in a,(c)                ; Read keys H-J-K-L-ENTER; note that if the game has
                          ; just resumed after being paused, c holds 0x00
                          ; instead of 0xfe, which is a bug
  and $1f                 ; Are any of these keys being pressed?
  cp $1f                  ;
  jr z,ENDPAUSE_1         ; Jump if not
  bit 0,(hl)              ; Were any of these keys being pressed the last time
                          ; we checked?
  jr nz,ENDPAUSE_2        ; Jump if so
  ld a,(hl)               ; Set bit 0 (the keypress flag) and flip bit 1 (the
  xor $03                 ; in-game music flag) at MUSICFLAGS
  ld (hl),a               ;
  jr ENDPAUSE_2
ENDPAUSE_1:
  res 0,(hl)              ; Reset bit 0 (the keypress flag) at MUSICFLAGS
ENDPAUSE_2:
  bit 1,(hl)              ; Has the in-game music been switched off?
  jr nz,ENDPAUSE_5        ; Jump if so
; The next section of code plays a note of the in-game music.
  xor a                   ; Reset the inactivity timer at INACTIVE (the game
  ld (INACTIVE),a         ; does not automatically pause after a period of
                          ; inactivity if the in-game music is playing)
  ld a,(NOTEINDEX)        ; Increment the in-game music note index at NOTEINDEX
  inc a                   ;
  ld (NOTEINDEX),a        ;
  and $7e                 ; Point hl at the appropriate entry in the tune data
  rrca                    ; table at GAMETUNE
  ld e,a                  ;
  ld d,$00                ;
  ld hl,GAMETUNE          ;
  add hl,de               ;
  ld a,(LIVES)            ; Pick up the number of lives remaining (0-7) from
                          ; LIVES
  rlca                    ; a=28-4a; this value adjusts the pitch of the note
  rlca                    ; that is played depending on how many lives are
  sub $1c                 ; remaining (the more lives remaining, the higher the
  neg                     ; pitch)
  add a,(hl)              ; Add the entry from the tune data table for the
                          ; current note
  ld d,a                  ; Copy this value to d (which determines the pitch of
                          ; the note)
  ld a,(BORDER)           ; Pick up the border colour for the current room from
                          ; BORDER
  ld e,d                  ; Initialise the pitch delay counter in e
  ld bc,$0003             ; Initialise the duration delay counters in b (0) and
                          ; c (3)
ENDPAUSE_3:
  out ($fe),a             ; Produce a note of the in-game music
  dec e                   ;
  jr nz,ENDPAUSE_4        ;
  ld e,d                  ;
  xor $18                 ;
ENDPAUSE_4:
  djnz ENDPAUSE_3         ;
  dec c                   ;
  jr nz,ENDPAUSE_3        ;
; Here we check the teleport keys.
ENDPAUSE_5:
  ld bc,$effe             ; Read keys 6-7-8-9-0
  in a,(c)                ;
  bit 1,a                 ; Is '9' (the activator key) being pressed?
  jp nz,ENDPAUSE_6        ; Jump if not
  and $10                 ; Keep only bit 4 (corresponding to the '6' key),
  xor $10                 ; flip it, and move it into bit 5
  rlca                    ;
  ld d,a                  ; Now bit 5 of d is set if '6' is being pressed
  ld a,(TELEPORT)         ; Pick up the WRITETYPER key counter from TELEPORT
  cp $0a                  ; Has WRITETYPER been keyed in yet?
  jp nz,ENDPAUSE_6        ; Jump if not
  ld bc,$f7fe             ; Read keys 1-2-3-4-5
  in a,(c)                ;
  cpl                     ; Keep only bits 0-4 and flip them
  and $1f                 ;
  or d                    ; Copy bit 5 of d into a; now a holds the number of
                          ; the room to teleport to
  ld (ROOM),a             ; Store the room number at ROOM
  jp INITROOM             ; Teleport into the room
; Finally, check the WRITETYPER keys.
ENDPAUSE_6:
  ld a,(TELEPORT)         ; Pick up the WRITETYPER key counter from TELEPORT
  cp $0a                  ; Has WRITETYPER been keyed in yet?
  jp z,MAINLOOP           ; If so, jump back to the start of the main loop
  ld a,(ROOM)             ; Pick up the current room number from ROOM
  cp $1c                  ; Are we in First Landing?
  jp nz,MAINLOOP          ; If not, jump back to the start of the main loop
  ld a,(WILLY_Y)          ; Pick up Willy's y-coordinate from WILLY_Y
  cp $d0                  ; Is Willy on the floor at the bottom of the
                          ; staircase?
  jp nz,MAINLOOP          ; If not, jump back to the start of the main loop
  ld a,(TELEPORT)         ; Pick up the WRITETYPER key counter (0-9) from
                          ; TELEPORT
  rlca                    ; Point ix at the corresponding entry in the
  ld e,a                  ; WRITETYPER table at WRITETYPER
  ld d,$00                ;
  ld ix,WRITETYPER        ;
  add ix,de               ;
  ld bc,$fbfe             ; Read keys Q-W-E-R-T
  in a,(c)                ;
  and $1f                 ; Keep only bits 0-4
  cp (ix+$00)             ; Does this match the first byte of the entry in the
                          ; WRITETYPER table?
  jr z,ENDPAUSE_7         ; Jump if so
  cp $1f                  ; Are any of the keys Q-W-E-R-T being pressed?
  jp z,MAINLOOP           ; If not, jump back to the start of the main loop
  cp (ix-$02)             ; Does the keyboard reading match the first byte of
                          ; the previous entry in the WRITETYPER table?
  jp z,MAINLOOP           ; If so, jump back to the start of the main loop
  xor a                   ; Reset the WRITETYPER key counter at TELEPORT to 0
  ld (TELEPORT),a         ; (an incorrect key was pressed)
  jp MAINLOOP             ; Jump back to the start of the main loop
ENDPAUSE_7:
  ld b,$df                ; Read keys Y-U-I-O-P
  in a,(c)                ;
  and $1f                 ; Keep only bits 0-4
  cp (ix+$01)             ; Does this match the second byte of the entry in the
                          ; WRITETYPER table?
  jr z,ENDPAUSE_8         ; If so, jump to increment the WRITETYPER key counter
  cp $1f                  ; Are any of the keys Y-U-I-O-P being pressed?
  jp z,MAINLOOP           ; If not, jump back to the start of the main loop
  cp (ix-$01)             ; Does the keyboard reading match the second byte of
                          ; the previous entry in the WRITETYPER table?
  jp z,MAINLOOP           ; If so, jump back to the start of the main loop
  xor a                   ; Reset the WRITETYPER key counter at TELEPORT to 0
  ld (TELEPORT),a         ; (an incorrect key was pressed)
  jp MAINLOOP             ; Jump back to the start of the main loop
ENDPAUSE_8:
  ld a,(TELEPORT)         ; Increment the WRITETYPER key counter at TELEPORT
  inc a                   ;
  ld (TELEPORT),a         ;
  jp MAINLOOP             ; Jump back to the start of the main loop

; Lose a life
;
; Used by the routine at ENDPAUSE.
LOSELIFE:
  ld a,$47                ; a=0x47 (INK 7: PAPER 0: BRIGHT 1)
; The following loop fills the top two thirds of the attribute file with a
; single value (0x47, 0x46, 0x45, 0x44, 0x43, 0x42, 0x41 or 0x40) and makes a
; sound effect.
LOSELIFE_0:
  ld hl,$5800             ; Fill the top two thirds of the attribute file with
  ld de,$5801             ; the value in a
  ld bc,$01ff             ;
  ld (hl),a               ;
  ldir                    ;
  ld e,a                  ; Save the attribute byte (0x40-0x47) in e for later
                          ; retrieval
  cpl                     ; d=63-8*(e and 7); this value determines the pitch
  and $07                 ; of the short note that will be played
  rlca                    ;
  rlca                    ;
  rlca                    ;
  or $07                  ;
  ld d,a                  ;
  ld c,e                  ; c=8+32*(e and 7); this value determines the
  rrc c                   ; duration of the short note that will be played
  rrc c                   ;
  rrc c                   ;
  or $10                  ; Set bit 4 of a (for no apparent reason)
  xor a                   ; Set a=0 (this will make the border black)
LOSELIFE_1:
  out ($fe),a             ; Produce a short note whose pitch is determined by d
  xor $18                 ; and whose duration is determined by c
  ld b,d                  ;
LOSELIFE_2:
  djnz LOSELIFE_2         ;
  dec c                   ;
  jr nz,LOSELIFE_1        ;
  ld a,e                  ; Restore the attribute byte (originally 0x47) to a
  dec a                   ; Decrement it (effectively decrementing the INK
                          ; colour)
  cp $3f                  ; Have we used attribute value 0x40 (INK 0) yet?
  jr nz,LOSELIFE_0        ; If not, jump back to update the INK colour in the
                          ; top two thirds of the screen and make another sound
                          ; effect
; Now check whether any lives remain.
  ld hl,LIVES             ; Pick up the number of lives remaining from LIVES
  ld a,(hl)               ;
  or a                    ; Are there any lives remaining?
  jp z,GAMEOVER           ; If not, display the game over sequence
  dec (hl)                ; Decrease the number of lives remaining by one
  ld hl,INITSTATE         ; Restore Willy's state upon entry to the room by
  ld de,WILLY_Y           ; copying the seven bytes at INITSTATE back into
  ld bc,$0007             ; 85cf-85d5
  ldir                    ;
  jp INITROOM             ; Reinitialise the room and resume the game

; Display the game over sequence
;
; Used by the routine at LOSELIFE.
GAMEOVER:
  ld hl,$4000             ; Clear the top two-thirds of the display file
  ld de,$4001             ;
  ld bc,$0fff             ;
  ld (hl),$00             ;
  ldir                    ;
  xor a                   ; Initialise the temporary game status buffer
  ld (TEMPVAR),a          ; variable at TEMPVAR; this variable will determine
                          ; the distance of the foot from the top of the screen
  ld de,WILLYR2           ; Draw Willy at (12,15)
  ld hl,$488f             ;
  ld c,$00                ;
  call DRAWSPRITE         ;
  ld de,BARREL            ; Draw the barrel underneath Willy at (14,15)
  ld hl,$48cf             ;
  ld c,$00                ;
  call DRAWSPRITE         ;
; The following loop draws the foot's descent onto the barrel that supports
; Willy while producing a sound effect.
GAMEOVER_0:
  ld a,(TEMPVAR)          ; Pick up the distance variable from TEMPVAR
  ld c,a                  ; Point bc at the corresponding entry in the screen
  ld b,$82                ; buffer address lookup table at SBUFADDRS
  ld a,(bc)               ; Point hl at the corresponding location in the
  or $0f                  ; display file
  ld l,a                  ;
  inc bc                  ;
  ld a,(bc)               ;
  sub $20                 ;
  ld h,a                  ;
  ld de,FOOT              ; Draw the foot at this location, without erasing the
  ld c,$00                ; foot at the previous location; this leaves the
  call DRAWSPRITE         ; portion of the foot sprite that's above the ankle
                          ; in place, and makes the foot appear as if it's at
                          ; the end of a long, extending leg
  ld a,(TEMPVAR)          ; Pick up the distance variable from TEMPVAR
  cpl                     ; a=0xff-a
  ld e,a                  ; Store this value (0x3f-0xff) in e; it determines
                          ; the (rising) pitch of the sound effect that will be
                          ; made
  xor a                   ; a=0 (black border)
  ld bc,$0040             ; c=0x40; this value determines the duration of the
                          ; sound effect
GAMEOVER_1:
  out ($fe),a             ; Produce a short note whose pitch is determined by e
  xor $18                 ;
  ld b,e                  ;
GAMEOVER_2:
  djnz GAMEOVER_2         ;
  dec c                   ;
  jr nz,GAMEOVER_1        ;
  ld hl,$5800             ; Prepare bc, de and hl for setting the attribute
  ld de,$5801             ; bytes in the top two-thirds of the screen
  ld bc,$01ff             ;
  ld a,(TEMPVAR)          ; Pick up the distance variable from TEMPVAR
  and $0c                 ; Keep only bits 2 and 3
  rlca                    ; Shift bits 2 and 3 into bits 3 and 4; these bits
                          ; determine the PAPER colour: 0, 1, 2 or 3
  or $47                  ; Set bits 0-2 (INK 7) and 6 (BRIGHT 1)
  ld (hl),a               ; Copy this attribute value into the top two-thirds
  ldir                    ; of the screen
  and $fa                 ; Reset bits 0 and 2, and retain all other bits
  or $02                  ; Set bit 1 (INK 2)
  ld ($59cf),a            ; Copy this attribute value to the cells at (14,15),
  ld ($59d0),a            ; (14,16), (15, 15) and (15, 16) (where the barrel
  ld ($59ef),a            ; is, so that it remains red)
  ld ($59f0),a            ;
  ld a,(TEMPVAR)          ; Add 4 to the distance variable at TEMPVAR; this
  add a,$04               ; will move the foot sprite down two pixel rows
  ld (TEMPVAR),a          ;
  cp $c4                  ; Has the foot met the barrel yet?
  jr nz,GAMEOVER_0        ; Jump back if not
; Now print the "Game Over" message, just to drive the point home.
  ld ix,MSG_GAME          ; Print "Game" (see MSG_GAME) at (6,10)
  ld c,$04                ;
  ld de,$40ca             ;
  call PRINTMSG           ;
  ld ix,MSG_OVER          ; Print "Over" (see MSG_OVER) at (6,18)
  ld c,$04                ;
  ld de,$40d2             ;
  call PRINTMSG           ;
  ld bc,$0000             ; Prepare the delay counters for the following loop;
  ld d,$06                ; the counter in c will also determine the INK
                          ; colours to use for the "Game Over" message
; The following loop makes the "Game Over" message glisten for about 1.57s.
GAMEOVER_3:
  djnz GAMEOVER_3         ; Delay for about a millisecond
  ld a,c                  ; Change the INK colour of the "G" in "Game" at
  and $07                 ; (6,10)
  or $40                  ;
  ld ($58ca),a            ;
  inc a                   ; Change the INK colour of the "a" in "Game" at
  and $07                 ; (6,11)
  or $40                  ;
  ld ($58cb),a            ;
  inc a                   ; Change the INK colour of the "m" in "Game" at
  and $07                 ; (6,12)
  or $40                  ;
  ld ($58cc),a            ;
  inc a                   ; Change the INK colour of the "e" in "Game" at
  and $07                 ; (6,13)
  or $40                  ;
  ld ($58cd),a            ;
  inc a                   ; Change the INK colour of the "O" in "Over" at
  and $07                 ; (6,18)
  or $40                  ;
  ld ($58d2),a            ;
  inc a                   ; Change the INK colour of the "v" in "Over" at
  and $07                 ; (6,19)
  or $40                  ;
  ld ($58d3),a            ;
  inc a                   ; Change the INK colour of the "e" in "Over" at
  and $07                 ; (6,20)
  or $40                  ;
  ld ($58d4),a            ;
  inc a                   ; Change the INK colour of the "r" in "Over" at
  and $07                 ; (6,21)
  or $40                  ;
  ld ($58d5),a            ;
  dec c                   ; Decrement the counter in c
  jr nz,GAMEOVER_3        ; Jump back unless it's zero
  dec d                   ; Decrement the counter in d (initially 6)
  jr nz,GAMEOVER_3        ; Jump back unless it's zero
  jp TITLESCREEN          ; Display the title screen and play the theme tune

; Draw the current room to the screen buffer at 7000
;
; Used by the routine at INITROOM.
DRAWROOM:
  call ROOMATTRS          ; Fill the buffer at 5e00 with attribute bytes for
                          ; the current room
  ld ix,$5e00             ; Point ix at the first byte of the attribute buffer
                          ; at 5e00
  ld a,$70                ; Set the operand of the 'ld d,n' instruction at
  ld ($8d5d),a            ; BUFMSB (below) to $70
  call DRAWROOM_0         ; Draw the tiles for the top half of the room to the
                          ; screen buffer at 7000
  ld ix,$5f00             ; Point ix at the 256th byte of the attribute buffer
                          ; at 5e00 in preparation for drawing the bottom half
                          ; of the room; this instruction is redundant, since
                          ; ix already holds 5f00
  ld a,$78                ; Set the operand of the 'ld d,n' instruction at
  ld ($8d5d),a            ; BUFMSB (below) to $78
DRAWROOM_0:
  ld c,$00                ; c will count 256 tiles
; The following loop draws 256 tiles (for either the top half or the bottom
; half of the room) to the screen buffer at 7000.
DRAWROOM_1:
  ld e,c                  ; e holds the LSB of the screen buffer address
  ld a,(ix+$00)           ; Pick up an attribute byte from the buffer at 5e00;
                          ; this identifies the type of tile (background,
                          ; floor, wall, nasty, ramp or conveyor) to be drawn
  ld hl,BACKGROUND        ; Move hl through the attribute bytes and graphic
  ld bc,$0036             ; data of the background, floor, wall, nasty, ramp
  cpir                    ; and conveyor tiles starting at BACKGROUND until we
                          ; find a byte that matches the attribute byte of the
                          ; tile to be drawn; note that if a graphic data byte
                          ; matches the attribute byte being searched for, the
                          ; cpir instruction can exit early, which is a bug
  ld c,e                  ; Restore the value of the tile counter in c
  ld b,$08                ; There are eight bytes in the tile
BUFMSB:
  ld d,$00                ; This instruction is set to either 'ld d,$70' or 'ld
                          ; d,$78' above; now de holds the appropriate address
                          ; in the screen buffer at 7000
DRAWROOM_2:
  ld a,(hl)               ; Copy the tile graphic data to the screen buffer at
  ld (de),a               ; 7000
  inc hl                  ;
  inc d                   ;
  djnz DRAWROOM_2         ;
  inc ix                  ; Move ix along to the next byte in the attribute
                          ; buffer
  inc c                   ; Have we drawn 256 tiles yet?
  jp nz,DRAWROOM_1        ; If not, jump back to draw the next one
  ret

; Fill the buffer at 5e00 with attribute bytes for the current room
;
; Used by the routine at DRAWROOM. Fills the buffer at 5e00 with attribute
; bytes for the background, floor, wall, nasty, conveyor and ramp tiles in the
; current room.
ROOMATTRS:
  ld hl,ROOMLAYOUT        ; Point hl at the first room layout byte at
                          ; ROOMLAYOUT
  ld ix,$5e00             ; Point ix at the first byte of the attribute buffer
                          ; at 5e00
; The following loop copies the attribute bytes for the background, floor, wall
; and nasty tiles into the buffer at 5e00.
ROOMATTRS_0:
  ld a,(hl)               ; Pick up a room layout byte
  rlca                    ; Move bits 6 and 7 into bits 0 and 1
  rlca                    ;
  call ROOMATTR           ; Copy the attribute byte for this tile into the
                          ; buffer at 5e00
  ld a,(hl)               ; Pick up the room layout byte again
  rrca                    ; Move bits 4 and 5 into bits 0 and 1
  rrca                    ;
  rrca                    ;
  rrca                    ;
  call ROOMATTR           ; Copy the attribute byte for this tile into the
                          ; buffer at 5e00
  ld a,(hl)               ; Pick up the room layout byte again
  rrca                    ; Move bits 2 and 3 into bits 0 and 1
  rrca                    ;
  call ROOMATTR           ; Copy the attribute byte for this tile into the
                          ; buffer at 5e00
  ld a,(hl)               ; Pick up the room layout byte again; this time the
                          ; required bit-pair is already in bits 0 and 1
  call ROOMATTR           ; Copy the attribute byte for this tile into the
                          ; buffer at 5e00
  inc hl                  ; Point hl at the next room layout byte
  ld a,l                  ; Have we processed all 128 room layout bytes yet?
  and $80                 ;
  jr z,ROOMATTRS_0        ; If not, jump back to process the next one
; Next consider the conveyor tiles (if any).
  ld a,(CONVLEN)          ; Pick up the length of the conveyor from CONVLEN
  or a                    ; Is there a conveyor in the room?
  jr z,ROOMATTRS_2        ; Jump if not
  ld hl,(CONVLOC)         ; Pick up the address of the conveyor's location in
                          ; the attribute buffer at 5e00 from CONVLOC
  ld b,a                  ; b will count the conveyor tiles
  ld a,(CONVEYOR)         ; Pick up the attribute byte for the conveyor tile
                          ; from CONVEYOR
ROOMATTRS_1:
  ld (hl),a               ; Copy the attribute bytes for the conveyor tiles
  inc hl                  ; into the buffer at 5e00
  djnz ROOMATTRS_1        ;
; And finally consider the ramp tiles (if any).
ROOMATTRS_2:
  ld a,(RAMPLEN)          ; Pick up the length of the ramp from RAMPLEN
  or a                    ; Is there a ramp in the room?
  ret z                   ; Return if not
  ld hl,(RAMPLOC)         ; Pick up the address of the ramp's location in the
                          ; attribute buffer at 5e00 from RAMPLOC
  ld a,(RAMPDIR)          ; Pick up the ramp direction from RAMPDIR; a=0 (ramp
  and $01                 ; goes up to the left) or 1 (ramp goes up to the
                          ; right)
  rlca                    ; Now de=-33 (ramp goes up to the left) or -31 (ramp
  add a,$df               ; goes up to the right)
  ld e,a                  ;
  ld d,$ff                ;
  ld a,(RAMPLEN)          ; Pick up the length of the ramp from RAMPLEN
  ld b,a                  ; b will count the ramp tiles
  ld a,(RAMP)             ; Pick up the attribute byte for the ramp tile from
                          ; RAMP
ROOMATTRS_3:
  ld (hl),a               ; Copy the attribute bytes for the ramp tiles into
  add hl,de               ; the buffer at 5e00
  djnz ROOMATTRS_3        ;
  ret

; Copy a room attribute byte into the buffer at 5e00
;
; Used by the routine at ROOMATTRS. On entry, a holds a room layout byte,
; rotated such that the bit-pair corresponding to the tile of interest is in
; bits 0 and 1.
;
; a Room layout byte (rotated)
; ix Attribute buffer address (5e00-5fff)
ROOMATTR:
  and $03                 ; Keep only bits 0 and 1; a=0 (background), 1
                          ; (floor), 2 (wall) or 3 (nasty)
  ld c,a                  ; Multiply by 9 and add 0xa0; now a=0xa0
  rlca                    ; (background), 0xa9 (floor), 0xb2 (wall) or 0xbb
  rlca                    ; (nasty)
  rlca                    ;
  add a,c                 ;
  add a,$a0               ;
  ld e,a                  ; Point de at the attribute byte for the background,
  ld d,$80                ; floor, wall or nasty tile (see BACKGROUND)
  ld a,(de)               ; Copy the attribute byte into the buffer at 5e00
  ld (ix+$00),a           ;
  inc ix                  ; Move ix along to the next byte in the attribute
                          ; buffer
  ret

; Move Willy (1)
;
; Used by the routine at MAINLOOP. This routine deals with Willy if he's
; jumping or falling.
MOVEWILLY:
  ld a,(ROPE)             ; Pick up the rope status indicator from ROPE
  dec a                   ; Is Willy on a rope?
  bit 7,a                 ;
  jp z,MOVEWILLY2         ; Jump if so
  ld a,(AIRBORNE)         ; Pick up the airborne status indicator from AIRBORNE
  cp $01                  ; Is Willy jumping?
  jr nz,MOVEWILLY_3       ; Jump if not
; Willy is currently jumping.
  ld a,(JUMPING)          ; Pick up the jumping animation counter (0-17) from
                          ; JUMPING
  and $fe                 ; Discard bit 0
  sub $08                 ; Now -8<=a<=8 (and a is even)
  ld hl,WILLY_Y           ; Adjust Willy's y-coordinate at WILLY_Y depending on
  add a,(hl)              ; where Willy is in the jump
  ld (hl),a               ;
  cp $f0                  ; Is the new value negative (above the top of the
                          ; screen)?
  jp nc,ROOMABOVE         ; If so, move Willy into the room above
  call MOVEWILLY_8        ; Adjust Willy's attribute buffer location at
                          ; LOCATION depending on his y-coordinate
  ld a,(WALL)             ; Pick up the attribute byte of the wall tile for the
                          ; current room from WALL
  cp (hl)                 ; Is the top-left cell of Willy's sprite overlapping
                          ; a wall tile?
  jp z,MOVEWILLY_11       ; Jump if so
  inc hl                  ; Point hl at the top-right cell occupied by Willy's
                          ; sprite
  cp (hl)                 ; Is the top-right cell of Willy's sprite overlapping
                          ; a wall tile?
  jp z,MOVEWILLY_11       ; Jump if so
  ld a,(JUMPING)          ; Increment the jumping animation counter at JUMPING
  inc a                   ;
  ld (JUMPING),a          ;
  sub $08                 ; a=J-8, where J (1-18) is the new value of the
                          ; jumping animation counter
  jp p,MOVEWILLY_0        ; Jump if J>=8
  neg                     ; a=8-J (1<=J<=7, 1<=a<=7)
MOVEWILLY_0:
  inc a                   ; a=1+ABS(J-8)
  rlca                    ; d=8*(1+ABS(J-8)); this value determines the pitch
  rlca                    ; of the jumping sound effect (rising as Willy rises,
  rlca                    ; falling as Willy falls)
  ld d,a                  ;
  ld c,$20                ; This value determines the duration of the jumping
                          ; sound effect
  ld a,(BORDER)           ; Pick up the border colour for the current room from
                          ; BORDER
MOVEWILLY_1:
  out ($fe),a             ; Make a jumping sound effect
  xor $18                 ;
  ld b,d                  ;
MOVEWILLY_2:
  djnz MOVEWILLY_2        ;
  dec c                   ;
  jr nz,MOVEWILLY_1       ;
  ld a,(JUMPING)          ; Pick up the jumping animation counter (1-18) from
                          ; JUMPING
  cp $12                  ; Has Willy reached the end of the jump?
  jp z,MOVEWILLY_9        ; Jump if so
  cp $10                  ; Is the jumping animation counter now 16?
  jr z,MOVEWILLY_3        ; Jump if so
  cp $0d                  ; Is the jumping animation counter now 13?
  jp nz,MOVEWILLY3        ; Jump if not
; If we get here, then Willy is standing on the floor or a ramp, or he's
; falling, or his jumping animation counter is 13 (at which point Willy is on
; his way down and is exactly two cell-heights above where he started the jump)
; or 16 (at which point Willy is on his way down and is exactly one cell-height
; above where he started the jump).
MOVEWILLY_3:
  ld a,(WILLY_Y)          ; Pick up Willy's y-coordinate from WILLY_Y
  and $0e                 ; Is Willy either on a ramp, or occupying only four
                          ; cells?
  jr nz,MOVEWILLY_4       ; Jump if not
  ld hl,(LOCATION)        ; Pick up Willy's attribute buffer coordinates from
                          ; LOCATION
  ld de,$0040             ; Point hl at the left-hand cell below Willy's sprite
  add hl,de               ;
  bit 1,h                 ; Is this location below the floor of the current
                          ; room?
  jp nz,ROOMBELOW         ; If so, move Willy into the room below
  ld a,(NASTY)            ; Pick up the attribute byte of the nasty tile for
                          ; the current room from NASTY
  cp (hl)                 ; Does the left-hand cell below Willy's sprite
                          ; contain a nasty?
  jr z,MOVEWILLY_4        ; Jump if so
  inc hl                  ; Point hl at the right-hand cell below Willy's
                          ; sprite
  ld a,(NASTY)            ; Pick up the attribute byte of the nasty tile for
                          ; the current room from NASTY (again, redundantly)
  cp (hl)                 ; Does the right-hand cell below Willy's sprite
                          ; contain a nasty?
  jr z,MOVEWILLY_4        ; Jump if so
  ld a,(BACKGROUND)       ; Pick up the attribute byte of the background tile
                          ; for the current room from BACKGROUND
  cp (hl)                 ; Set the zero flag if the right-hand cell below
                          ; Willy's sprite is empty
  dec hl                  ; Point hl at the left-hand cell below Willy's sprite
  jp nz,MOVEWILLY2        ; Jump if the right-hand cell below Willy's sprite is
                          ; not empty
  cp (hl)                 ; Is the left-hand cell below Willy's sprite empty?
  jp nz,MOVEWILLY2        ; Jump if not
MOVEWILLY_4:
  ld a,(AIRBORNE)         ; Pick up the airborne status indicator from AIRBORNE
  cp $01                  ; Is Willy jumping?
  jp z,MOVEWILLY3         ; Jump if so
; If we get here, then Willy is either in the process of falling or just about
; to start falling.
  ld hl,DMFLAGS           ; Reset bit 1 at DMFLAGS: Willy is not moving left or
  res 1,(hl)              ; right
  ld a,(AIRBORNE)         ; Pick up the airborne status indicator from AIRBORNE
  or a                    ; Is Willy already falling?
  jp z,MOVEWILLY_10       ; Jump if not
  inc a                   ; Increment the airborne status indicator
  cp $10                  ; Is it 16 now?
  jr nz,MOVEWILLY_5       ; Jump if not
  ld a,$0c                ; Decrease the airborne status indicator from 0x10 to
                          ; 0x0c
MOVEWILLY_5:
  ld (AIRBORNE),a         ; Update the airborne status indicator at AIRBORNE
  rlca                    ; d=16*a; this value determines the pitch of the
  rlca                    ; falling sound effect
  rlca                    ;
  rlca                    ;
  ld d,a                  ;
  ld c,$20                ; This value determines the duration of the falling
                          ; sound effect
  ld a,(BORDER)           ; Pick up the border colour for the current room from
                          ; BORDER
MOVEWILLY_6:
  out ($fe),a             ; Make a falling sound effect
  xor $18                 ;
  ld b,d                  ;
MOVEWILLY_7:
  djnz MOVEWILLY_7        ;
  dec c                   ;
  jr nz,MOVEWILLY_6       ;
  ld a,(WILLY_Y)          ; Add 8 to Willy's y-coordinate at WILLY_Y; this
  add a,$08               ; moves Willy downwards by 4 pixels
  ld (WILLY_Y),a          ;
; This entry point is used by the routine at DRAWTHINGS to update Willy's
; attribute buffer location when he's on a rope.
MOVEWILLY_8:
  and $f0                 ; l=16*Y, where Y is Willy's screen y-coordinate
  ld l,a                  ; (0-14)
  xor a                   ; Clear a and the carry flag
  rl l                    ; Now l=32*(Y-8*INT(Y/8)), and the carry flag is set
                          ; if Willy is in the lower half of the room (Y>=8)
  adc a,$5c               ; h=0x5c or 0x5d (MSB of the address of Willy's
  ld h,a                  ; location in the attribute buffer)
  ld a,(LOCATION)         ; Pick up Willy's screen x-coordinate (0-30) from
  and $1f                 ; bits 0-4 at LOCATION
  or l                    ; Now l holds the LSB of Willy's attribute buffer
  ld l,a                  ; address
  ld (LOCATION),hl        ; Store Willy's updated attribute buffer location at
                          ; LOCATION
  ret
; Willy has just finished a jump.
MOVEWILLY_9:
  ld a,$06                ; Set the airborne status indicator at AIRBORNE to
  ld (AIRBORNE),a         ; 0x06: Willy will continue to fall unless he's
                          ; landed on a wall or floor block
  ret
; Willy has just started falling.
MOVEWILLY_10:
  ld a,$02                ; Set the airborne status indicator at AIRBORNE to
  ld (AIRBORNE),a         ; 0x02
  ret
; The top-left or top-right cell of Willy's sprite is overlapping a wall tile.
MOVEWILLY_11:
  ld a,(WILLY_Y)          ; Adjust Willy's y-coordinate at WILLY_Y so that the
  add a,$10               ; top row of cells of his sprite is just below the
  and $f0                 ; wall tile
  ld (WILLY_Y),a          ;
  call MOVEWILLY_8        ; Adjust Willy's attribute buffer location at
                          ; LOCATION to account for this new y-coordinate
  ld a,$02                ; Set the airborne status indicator at AIRBORNE to
  ld (AIRBORNE),a         ; 0x02: Willy has started falling
  ld hl,DMFLAGS           ; Reset bit 1 at DMFLAGS: Willy is not moving left or
  res 1,(hl)              ; right
  ret

; Move Willy (2)
;
; Used by the routine at MOVEWILLY. This routine checks the keyboard and
; joystick.
;
; hl Attribute buffer address of the left-hand cell below Willy's sprite (if
;    Willy is not on a rope)
MOVEWILLY2:
  ld e,$ff                ; Initialise e to 0xff (all bits set); it will be
                          ; used to hold keyboard and joystick readings
  ld a,(ROPE)             ; Pick up the rope status indicator from ROPE
  dec a                   ; Is Willy on a rope?
  bit 7,a                 ;
  jr z,MOVEWILLY2_1       ; Jump if so
  ld a,(AIRBORNE)         ; Pick up the airborne status indicator from AIRBORNE
  cp $0c                  ; Has Willy just landed after falling from too great
                          ; a height?
  jp nc,KILLWILLY_0       ; If so, kill him
  xor a                   ; Reset the airborne status indicator at AIRBORNE
  ld (AIRBORNE),a         ; (Willy has landed safely)
  ld a,(CONVEYOR)         ; Pick up the attribute byte of the conveyor tile for
                          ; the current room from CONVEYOR
  cp (hl)                 ; Does the attribute byte of the left-hand cell below
                          ; Willy's sprite match that of the conveyor tile?
  jr z,MOVEWILLY2_0       ; Jump if so
  inc hl                  ; Point hl at the right-hand cell below Willy's
                          ; sprite
  cp (hl)                 ; Does the attribute byte of the right-hand cell
                          ; below Willy's sprite match that of the conveyor
                          ; tile?
  jr nz,MOVEWILLY2_1      ; Jump if not
MOVEWILLY2_0:
  ld a,(CONVDIR)          ; Pick up the direction byte of the conveyor
                          ; definition from CONVDIR (0=left, 1=right)
  sub $03                 ; Now e=0xfd (bit 1 reset) if the conveyor is moving
  ld e,a                  ; left, or 0xfe (bit 0 reset) if it's moving right
MOVEWILLY2_1:
  ld bc,$dffe             ; Read keys P-O-I-U-Y (right, left, right, left,
  in a,(c)                ; right) into bits 0-4 of a
  and $1f                 ; Set bit 5 and reset bits 6 and 7
  or $20                  ;
  and e                   ; Reset bit 0 if the conveyor is moving right, or bit
                          ; 1 if it's moving left
  ld e,a                  ; Save the result in e
  ld a,(MODE)             ; Pick up the game mode indicator (0, 1 or 2) from
                          ; MODE
  and $02                 ; Now a=1 if Willy is running to the toilet, 0
  rrca                    ; otherwise
  xor e                   ; Flip bit 0 of e if Willy is running to the toilet,
  ld e,a                  ; forcing him to move right (unless he's jumped onto
                          ; the bed, in which case bit 0 of e is now set,
                          ; meaning that the conveyor does not move him, and
                          ; the 'P' key has no effect; this is a bug)
  ld bc,$fbfe             ; Read keys Q-W-E-R-T (left, right, left, right,
  in a,(c)                ; left) into bits 0-4 of a
  and $1f                 ; Keep only bits 0-4, shift them into bits 1-5, and
  rlc a                   ; set bit 0
  or $01                  ;
  and e                   ; Merge this keyboard reading into bits 1-5 of e
  ld e,a                  ;
  ld b,$e7                ; Read keys 1-2-3-4-5 ('5' is left) and 0-9-8-7-6
  in a,(c)                ; (jump, nothing, right, right, left) into bits 0-4
                          ; of a
  rrca                    ; Rotate the result right and set bits 0-2 and 4-7;
  or $f7                  ; this ignores every key except '5' and '6' (left)
  and e                   ; Merge this reading of the '5' and '6' keys into bit
  ld e,a                  ; 3 of e
  ld b,$ef                ; Read keys 0-9-8-7-6 (jump, nothing, right, right,
  in a,(c)                ; left) into bits 0-4 of a
  or $fb                  ; Set bits 0, 1 and 3-7; this ignores every key
                          ; except '8' (right)
  and e                   ; Merge this reading of the '8' key into bit 2 of e
  ld e,a                  ;
  in a,(c)                ; Read keys 0-9-8-7-6 (jump, nothing, right, right,
                          ; left) into bits 0-4 of a
  rrca                    ; Rotate the result right and set bits 0, 1 and 3-7;
  or $fb                  ; this ignores every key except '7' (right)
  and e                   ; Merge this reading of the '7' key into bit 2 of e
  ld e,a                  ;
  ld a,(JOYSTICK)         ; Collect the Kempston joystick indicator from
                          ; JOYSTICK
  or a                    ; Is the joystick connected?
  jr z,MOVEWILLY2_2       ; Jump if not
  ld bc,$001f             ; Collect input from the joystick
  in a,(c)                ;
  and $03                 ; Keep only bits 0 (right) and 1 (left) and flip them
  cpl                     ;
  and e                   ; Merge this reading of the joystick right and left
  ld e,a                  ; buttons into bits 0 and 1 of e
; At this point, bits 0-5 in e indicate the direction in which Willy is being
; moved or trying to move. If bit 0, 2 or 4 is reset, Willy is being moved or
; trying to move right; if bit 1, 3 or 5 is reset, Willy is being moved or
; trying to move left.
MOVEWILLY2_2:
  ld c,$00                ; Initialise c to 0 (no movement)
  ld a,e                  ; Copy the movement bits into a
  and $2a                 ; Keep only bits 1, 3 and 5 (the 'left' bits)
  cp $2a                  ; Are any of these bits reset?
  jr z,MOVEWILLY2_3       ; Jump if not
  ld c,$04                ; Set bit 2 of c: Willy is moving left
  xor a                   ; Reset the inactivity timer at INACTIVE
  ld (INACTIVE),a         ;
MOVEWILLY2_3:
  ld a,e                  ; Copy the movement bits into a
  and $15                 ; Keep only bits 0, 2 and 4 (the 'right' bits)
  cp $15                  ; Are any of these bits reset?
  jr z,MOVEWILLY2_4       ; Jump if not
  set 3,c                 ; Set bit 3 of c: Willy is moving right
  xor a                   ; Reset the inactivity timer at INACTIVE
  ld (INACTIVE),a         ;
MOVEWILLY2_4:
  ld a,(DMFLAGS)          ; Pick up Willy's direction and movement flags from
                          ; DMFLAGS
  add a,c                 ; Point hl at the entry in the left-right movement
  ld c,a                  ; table at LRMOVEMENT that corresponds to the
  ld b,$00                ; direction Willy is facing, and the direction in
  ld hl,LRMOVEMENT        ; which he is being moved or trying to move
  add hl,bc               ;
  ld a,(hl)               ; Update Willy's direction and movement flags at
  ld (DMFLAGS),a          ; DMFLAGS with the entry from the left-right movement
                          ; table
; That is left-right movement taken care of. Now check the jump keys.
  ld bc,$7efe             ; Read keys SHIFT-Z-X-C-V and B-N-M-SS-SPACE
  in a,(c)                ;
  and $1f                 ; Are any of these keys being pressed?
  cp $1f                  ;
  jr nz,MOVEWILLY2_5      ; Jump if so
  ld b,$ef                ; Read keys 6-7-8-9-0
  in a,(c)                ;
  bit 0,a                 ; Is '0' being pressed?
  jr z,MOVEWILLY2_5       ; Jump if so
  ld a,(JOYSTICK)         ; Collect the Kempston joystick indicator from
                          ; JOYSTICK
  or a                    ; Is the joystick connected?
  jr z,MOVEWILLY3         ; Jump if not
  ld bc,$001f             ; Collect input from the joystick
  in a,(c)                ;
  bit 4,a                 ; Is the fire button being pressed?
  jr z,MOVEWILLY3         ; Jump if not
; A jump key or the fire button is being pressed. Time to make Willy jump.
MOVEWILLY2_5:
  ld a,(MODE)             ; Pick up the game mode indicator from MODE
  bit 1,a                 ; Is Willy running to the toilet?
  jr nz,MOVEWILLY3        ; Jump if so
  xor a                   ; Initialise the jumping animation counter at JUMPING
  ld (JUMPING),a          ; to 0
  ld (INACTIVE),a         ; Reset the inactivity timer at INACTIVE
  inc a                   ; Set the airborne status indicator at AIRBORNE to
  ld (AIRBORNE),a         ; 0x01: Willy is jumping
  ld a,(ROPE)             ; Pick up the rope status indicator from ROPE
  dec a                   ; Is Willy on a rope?
  bit 7,a                 ;
  jr nz,MOVEWILLY3        ; Jump if not
  ld a,$f0                ; Set the rope status indicator at ROPE to 0xf0
  ld (ROPE),a             ;
  ld a,(WILLY_Y)          ; Round down Willy's y-coordinate at WILLY_Y to the
  and $f0                 ; nearest multiple of 16; this might move him upwards
  ld (WILLY_Y),a          ; a little, but ensures that his actual pixel
                          ; y-coordinate is a multiple of 8 (making his sprite
                          ; cell-aligned) before he begins the jump off the
                          ; rope
  ld hl,DMFLAGS           ; Set bit 1 at DMFLAGS: during this jump off the
  set 1,(hl)              ; rope, Willy will move in the direction he's facing
  ret

; Move Willy (3)
;
; Used by the routines at MOVEWILLY and MOVEWILLY2. This routine moves Willy
; left or right if necessary.
MOVEWILLY3:
  ld a,(DMFLAGS)          ; Pick up Willy's direction and movement flags from
                          ; DMFLAGS
  and $02                 ; Is Willy moving left or right?
  ret z                   ; Return if not
  ld a,(ROPE)             ; Pick up the rope status indicator from ROPE
  dec a                   ; Is Willy on a rope?
  bit 7,a                 ;
  ret z                   ; Return if so (Willy's movement along a rope is
                          ; handled at DRAWTHINGS_19)
  ld a,(DMFLAGS)          ; Pick up Willy's direction and movement flags from
                          ; DMFLAGS
  and $01                 ; Is Willy facing right?
  jp z,MOVEWILLY3_3       ; Jump if so
; Willy is moving left.
  ld a,(FRAME)            ; Pick up Willy's animation frame from FRAME
  or a                    ; Is it 0?
  jr z,MOVEWILLY3_0       ; If so, jump to move Willy's sprite left across a
                          ; cell boundary
  dec a                   ; Decrement Willy's animation frame at FRAME
  ld (FRAME),a            ;
  ret
; Willy's sprite is moving left across a cell boundary. In the comments that
; follow, (x,y) refers to the coordinates of the top-left cell currently
; occupied by Willy's sprite.
MOVEWILLY3_0:
  ld a,(AIRBORNE)         ; Pick up the airborne status indicator from AIRBORNE
  ld bc,$0000             ; Prepare bc for later addition
  cp $00                  ; Is Willy jumping?
  jr nz,MOVEWILLY3_1      ; Jump if so
  ld hl,(LOCATION)        ; Collect Willy's attribute buffer coordinates from
                          ; LOCATION
  ld bc,$0000             ; Prepare bc for later addition (again, redundantly)
  ld a,(RAMPDIR)          ; Pick up the direction byte of the ramp definition
                          ; for the current room from RAMPDIR
  dec a                   ; Now a=0x1f if the ramp goes up to the left, or 0x41
  or $a1                  ; if it goes up to the right
  xor $e0                 ;
  ld e,a                  ; Point hl at the cell at (x-1,y+1) if the ramp goes
  ld d,$00                ; up to the left, or at the cell at (x+1,y+2) if the
  add hl,de               ; ramp goes up to the right
  ld a,(RAMP)             ; Pick up the attribute byte of the ramp tile for the
                          ; current room from RAMP
  cp (hl)                 ; Is there a ramp tile in the cell pointed to by hl?
  jr nz,MOVEWILLY3_1      ; Jump if not
  ld bc,$0020             ; Prepare bc for later addition
  ld a,(RAMPDIR)          ; Pick up the direction byte of the ramp definition
                          ; for the current room from RAMPDIR
  or a                    ; Does the ramp go up to the right?
  jr nz,MOVEWILLY3_1      ; Jump if so
  ld bc,$ffe0             ; bc=-32 (the ramp goes up to the left)
MOVEWILLY3_1:
  ld hl,(LOCATION)        ; Collect Willy's attribute buffer coordinates from
                          ; LOCATION
  ld a,l                  ; Is Willy's screen x-coordinate 0 (on the far left)?
  and $1f                 ;
  jp z,ROOMLEFT           ; If so, move Willy into the room to the left
  add hl,bc               ; Point hl at the cell at (x-1,y+1), or at the cell
  dec hl                  ; at (x-1,y) if Willy is on or about to step onto a
  ld de,$0020             ; ramp that goes up to the left, or at the cell at
  add hl,de               ; (x-1,y+2) if Willy is walking down a ramp
  ld a,(WALL)             ; Pick up the attribute byte of the wall tile for the
                          ; current room from WALL
  cp (hl)                 ; Is there a wall tile in the cell pointed to by hl?
  ret z                   ; Return if so without moving Willy (his path is
                          ; blocked)
  ld a,(WILLY_Y)          ; Pick up Willy's y-coordinate (Y) from WILLY_Y
  sra c                   ; Now b=Y (if Willy is neither on nor about to step
  add a,c                 ; onto a ramp), or Y+16 (if Willy is walking down a
  ld b,a                  ; ramp), or Y-16 (if Willy is on or about to step
                          ; onto a ramp that goes up to the left); this will be
                          ; Willy's new y-coordinate
  and $0f                 ; Is Willy at a point in a jump (left) where his
                          ; sprite occupies three rows of cells?
  jr z,MOVEWILLY3_2       ; Jump if not (Willy's sprite is cell-aligned)
  ld a,(WALL)             ; Pick up the attribute byte of the wall tile for the
                          ; current room from WALL
  add hl,de               ; Point hl at the cell at (x-1,y+2)
  cp (hl)                 ; Is there a wall tile there?
  ret z                   ; Return if so without moving Willy (his path is
                          ; blocked)
  or a                    ; Point hl at the cell at (x-1,y+1)
  sbc hl,de               ;
MOVEWILLY3_2:
  or a                    ; Point hl at the cell at (x-1,y), or at the cell at
  sbc hl,de               ; (x-1,y-1) if Willy is on or about to step onto a
                          ; ramp that goes up to the left, or at the cell at
                          ; (x-1,y+1) if Willy is walking down a ramp
  ld (LOCATION),hl        ; Save Willy's new attribute buffer coordinates (in
                          ; hl) at LOCATION
  ld a,b                  ; Save Willy's new y-coordinate at WILLY_Y
  ld (WILLY_Y),a          ;
  ld a,$03                ; Change Willy's animation frame at FRAME from 0 to 3
  ld (FRAME),a            ;
  ret
; Willy is moving right.
MOVEWILLY3_3:
  ld a,(FRAME)            ; Pick up Willy's animation frame from FRAME
  cp $03                  ; Is it 3?
  jr z,MOVEWILLY3_4       ; If so, jump to move Willy's sprite right across a
                          ; cell boundary
  inc a                   ; Increment Willy's animation frame at FRAME
  ld (FRAME),a            ;
  ret
; Willy's sprite is moving right across a cell boundary. In the comments that
; follow, (x,y) refers to the coordinates of the top-left cell currently
; occupied by Willy's sprite.
MOVEWILLY3_4:
  ld a,(AIRBORNE)         ; Pick up the airborne status indicator from AIRBORNE
  ld bc,$0000             ; Prepare bc for later addition
  or a                    ; Is Willy jumping?
  jr nz,MOVEWILLY3_5      ; Jump if so
  ld hl,(LOCATION)        ; Collect Willy's attribute buffer coordinates from
                          ; LOCATION
  ld a,(RAMPDIR)          ; Pick up the direction byte of the ramp definition
                          ; for the current room from RAMPDIR
  dec a                   ; Now a=0x40 if the ramp goes up to the left, or 0x22
  or $9d                  ; if it goes up to the right
  xor $bf                 ;
  ld e,a                  ; Point hl at the cell at (x,y+2) if the ramp goes up
  ld d,$00                ; to the left, or at the cell at (x+2,y+1) if the
  add hl,de               ; ramp goes up to the right
  ld a,(RAMP)             ; Pick up the attribute byte of the ramp tile for the
                          ; current room from RAMP
  cp (hl)                 ; Is there a ramp tile in the cell pointed to by hl?
  jr nz,MOVEWILLY3_5      ; Jump if not
  ld bc,$0020             ; Prepare bc for later addition
  ld a,(RAMPDIR)          ; Pick up the direction byte of the ramp definition
                          ; for the current room from RAMPDIR
  or a                    ; Does the ramp go up to the left?
  jr z,MOVEWILLY3_5       ; Jump if so
  ld bc,$ffe0             ; bc=-32 (the ramp goes up to the right)
MOVEWILLY3_5:
  ld hl,(LOCATION)        ; Collect Willy's attribute buffer coordinates from
                          ; LOCATION
  add hl,bc               ; Point hl at the cell at (x+2,y), or at the cell at
  inc hl                  ; (x+2,y+1) if Willy is walking down a ramp, or at
  inc hl                  ; the cell at (x+2,y-1) if Willy is on or about to
                          ; step onto a ramp that goes up to the right
  ld a,l                  ; Is Willy's screen x-coordinate 30 (on the far
  and $1f                 ; right)?
  jp z,ROOMRIGHT          ; If so, move Willy into the room on the right
  ld de,$0020             ; Prepare de for addition
  ld a,(WALL)             ; Pick up the attribute byte of the wall tile for the
                          ; current room from WALL
  add hl,de               ; Point hl at the cell at (x+2,y+1), or at the cell
                          ; at (x+2,y+2) if Willy is walking down a ramp, or at
                          ; the cell at (x+2,y) if Willy is on or about to step
                          ; onto a ramp that goes up to the right
  cp (hl)                 ; Is there a wall tile in the cell pointed to by hl?
  ret z                   ; Return if so without moving Willy (his path is
                          ; blocked)
  ld a,(WILLY_Y)          ; Pick up Willy's y-coordinate (Y) from WILLY_Y
  sra c                   ; Now b=Y (if Willy is neither on nor about to step
  add a,c                 ; onto a ramp), or Y+16 (if Willy is walking down a
  ld b,a                  ; ramp), or Y-16 (if Willy is on or about to step
                          ; onto a ramp that goes up to the right); this will
                          ; be Willy's new y-coordinate
  and $0f                 ; Is Willy at a point in a jump (right) where his
                          ; sprite occupies three rows of cells?
  jr z,MOVEWILLY3_6       ; Jump if not (Willy's sprite is cell-aligned)
  ld a,(WALL)             ; Pick up the attribute byte of the wall tile for the
                          ; current room from WALL
  add hl,de               ; Point hl at the cell at (x+2,y+2)
  cp (hl)                 ; Is there a wall tile there?
  ret z                   ; Return if so without moving Willy (his path is
                          ; blocked)
  or a                    ; Point hl at the cell at (x+2,y+1)
  sbc hl,de               ;
MOVEWILLY3_6:
  ld a,(WALL)             ; Pick up the attribute byte of the wall tile for the
                          ; current room from WALL
  or a                    ; Point hl at the cell at (x+2,y), or at the cell at
  sbc hl,de               ; (x+2,y+1) if Willy is walking down a ramp, or at
                          ; the cell at (x+2,y-1) if Willy is on or about to
                          ; step onto a ramp that goes up to the right
  cp (hl)                 ; Is there a wall tile in the cell pointed to by hl?
  ret z                   ; Return if so without moving Willy (his path is
                          ; blocked)
  dec hl                  ; Point hl at the cell at (x+1,y), or at the cell at
                          ; (x+1,y+1) if Willy is walking down a ramp, or at
                          ; the cell at (x+1,y-1) if Willy is on or about to
                          ; step onto a ramp that goes up to the right
  ld (LOCATION),hl        ; Save Willy's new attribute buffer coordinates (in
                          ; hl) at LOCATION
  xor a                   ; Change Willy's animation frame at FRAME from 3 to 0
  ld (FRAME),a            ;
  ld a,b                  ; Save Willy's new y-coordinate at WILLY_Y
  ld (WILLY_Y),a          ;
  ret

; Kill Willy
;
; Used by the routine at WILLYATTR when Willy hits a nasty.
KILLWILLY:
  pop hl                  ; Drop the return address from the stack
; This entry point is used by the routines at MOVEWILLY2 (when Willy lands
; after falling from too great a height), DRAWTHINGS (when an arrow or guardian
; hits Willy) and BEDANDBATH (when Willy gets too close to Maria).
KILLWILLY_0:
  pop hl                  ; Drop the return address from the stack
  ld a,$ff                ; Set the airborne status indicator at AIRBORNE to
  ld (AIRBORNE),a         ; 0xff (meaning Willy has had a fatal accident)
  jp MAINLOOP_0           ; Jump back into the main loop

; Move the rope and guardians in the current room
;
; Used by the routine at MAINLOOP.
MOVETHINGS:
  ld ix,ENTITYBUF         ; Point ix at the first byte of the first entity
                          ; buffer at ENTITYBUF
; The entity-moving loop begins here.
MOVETHINGS_0:
  ld a,(ix+$00)           ; Pick up the first byte of the current entity's
                          ; buffer
  cp $ff                  ; Have we already dealt with every entity?
  ret z                   ; Return if so
  and $03                 ; Keep only bits 0 and 1 (which determine the type of
                          ; entity)
  jp z,MOVETHINGS_13      ; Jump to consider the next entity buffer if this one
                          ; belongs to an arrow or is unused
  cp $01                  ; Is this a horizontal guardian?
  jp z,MOVETHINGS_5       ; Jump if so
  cp $02                  ; Is this a vertical guardian?
  jp z,MOVETHINGS_9       ; Jump if so
; We are dealing with a rope.
  bit 7,(ix+$00)          ; Is the rope currently swinging right to left?
  jr z,MOVETHINGS_2       ; Jump if so
; The rope is swinging left to right.
  ld a,(ix+$01)           ; Pick up the animation frame index
  bit 7,a                 ; Is the rope currently swinging away from the
                          ; centre?
  jr z,MOVETHINGS_1       ; Jump if so
; The rope is swinging left to right, towards the centre (0x84<=a<=0xb6).
  sub $02                 ; Subtract 2 from the animation frame index in a
  cp $94                  ; Is it still 0x94 or greater?
  jr nc,MOVETHINGS_4      ; If so, use it as the next animation frame index
  sub $02                 ; Subtract 2 from the animation frame index again
  cp $80                  ; Is it 0x80 now?
  jr nz,MOVETHINGS_4      ; If not, use it as the next animation frame index
  xor a                   ; The rope has reached the centre, so the next
                          ; animation frame index is 0
  jr MOVETHINGS_4         ; Jump to set it
; The rope is swinging left to right, away from the centre (0x00<=a<=0x34).
MOVETHINGS_1:
  add a,$02               ; Add 2 to the animation frame index in a
  cp $12                  ; Is it now 0x12 or greater?
  jr nc,MOVETHINGS_4      ; If so, use it as the next animation frame index
  add a,$02               ; Add 2 to the animation frame index again
  jr MOVETHINGS_4         ; Use this value as the next animation frame index
; The rope is swinging right to left.
MOVETHINGS_2:
  ld a,(ix+$01)           ; Pick up the animation frame index
  bit 7,a                 ; Is the rope currently swinging away from the
                          ; centre?
  jr nz,MOVETHINGS_3      ; Jump if so
; The rope is swinging right to left, towards the centre (0x04<=a<=0x36).
  sub $02                 ; Subtract 2 from the animation frame index in a
  cp $14                  ; Is it still 0x14 or greater?
  jr nc,MOVETHINGS_4      ; If so, use it as the next animation frame index
  sub $02                 ; Subtract 2 from the animation frame index again
  or a                    ; Is it 0 now?
  jr nz,MOVETHINGS_4      ; If not, use it as the next animation frame index
  ld a,$80                ; The rope has reached the centre, so the next
                          ; animation frame index is 0x80
  jr MOVETHINGS_4         ; Jump to set it
; The rope is swinging right to left, away from the centre (0x80<=a<=0xb4).
MOVETHINGS_3:
  add a,$02               ; Add 2 to the animation frame index in a
  cp $92                  ; Is it now 0x92 or greater?
  jr nc,MOVETHINGS_4      ; If so, use it as the next animation frame index
  add a,$02               ; Add 2 to the animation frame index again
; Now a holds the rope's next animation frame index.
MOVETHINGS_4:
  ld (ix+$01),a           ; Update the animation frame index
  and $7f                 ; Reset bit 7
  cp (ix+$07)             ; Does a match the eighth byte of the rope's buffer
                          ; (0x36)?
  jp nz,MOVETHINGS_13     ; If not, jump to consider the next entity
  ld a,(ix+$00)           ; Flip bit 7 of the first byte of the rope's buffer:
  xor $80                 ; the rope has just changed direction and will now
  ld (ix+$00),a           ; swing back towards the centre
  jp MOVETHINGS_13        ; Jump to consider the next entity
; We are dealing with a horizontal guardian.
MOVETHINGS_5:
  bit 7,(ix+$00)          ; Is the guardian currently moving left to right?
  jr nz,MOVETHINGS_7      ; Jump if so
; This guardian is moving right to left.
  ld a,(ix+$00)           ; Update the guardian's animation frame (in bits 5
  sub $20                 ; and 6 of the first byte of its buffer)
  and $7f                 ;
  ld (ix+$00),a           ;
  cp $60                  ; Is it time to update the x-coordinate of the
                          ; guardian sprite?
  jr c,MOVETHINGS_13      ; If not, jump to consider the next entity
  ld a,(ix+$02)           ; Pick up the sprite's current screen x-coordinate
  and $1f                 ; (0-31)
  cp (ix+$06)             ; Has the guardian reached the leftmost point of its
                          ; path?
  jr z,MOVETHINGS_6       ; Jump if so
  dec (ix+$02)            ; Decrement the sprite's x-coordinate
  jr MOVETHINGS_13        ; Jump to consider the next entity
MOVETHINGS_6:
  ld (ix+$00),$81         ; The guardian will now start moving left to right
  jr MOVETHINGS_13        ; Jump to consider the next entity
; This guardian is moving left to right.
MOVETHINGS_7:
  ld a,(ix+$00)           ; Update the guardian's animation frame (in bits 5
  add a,$20               ; and 6 of the first byte of its buffer)
  or $80                  ;
  ld (ix+$00),a           ;
  cp $a0                  ; Is it time to update the x-coordinate of the
                          ; guardian sprite?
  jr nc,MOVETHINGS_13     ; If not, jump to consider the next entity
  ld a,(ix+$02)           ; Pick up the sprite's current screen x-coordinate
  and $1f                 ; (0-31)
  cp (ix+$07)             ; Has the guardian reached the rightmost point of its
                          ; path?
  jr z,MOVETHINGS_8       ; Jump if so
  inc (ix+$02)            ; Increment the sprite's x-coordinate
  jr MOVETHINGS_13        ; Jump to consider the next entity
MOVETHINGS_8:
  ld (ix+$00),$61         ; The guardian will now start moving right to left
  jr MOVETHINGS_13        ; Jump to consider the next entity
; We are dealing with a vertical guardian.
MOVETHINGS_9:
  ld a,(ix+$00)           ; Flip bit 3 of the first byte of the guardian's
  xor $08                 ; buffer (if bit 4 is set, the guardian's animation
  ld (ix+$00),a           ; frame is updated on every pass through this
                          ; routine; otherwise, it is updated on every second
                          ; pass when bit 3 is set)
  and $18                 ; Are bits 3 and 4 both reset now?
  jr z,MOVETHINGS_10      ; Jump if so
  ld a,(ix+$00)           ; Update the guardian's animation frame (in bits 5-7
  add a,$20               ; of the first byte of its buffer)
  ld (ix+$00),a           ;
MOVETHINGS_10:
  ld a,(ix+$03)           ; Update the guardian's y-coordinate
  add a,(ix+$04)          ;
  ld (ix+$03),a           ;
  cp (ix+$07)             ; Has the guardian reached the lowest point of its
                          ; path (maximum y-coordinate)?
  jr nc,MOVETHINGS_12     ; If so, jump to change its direction of movement
  cp (ix+$06)             ; Compare the new y-coordinate with the minimum value
                          ; (the highest point of its path)
  jr z,MOVETHINGS_11      ; If they match, jump to change the guardian's
                          ; direction of movement
  jr nc,MOVETHINGS_13     ; If the new y-coordinate is above the minimum value,
                          ; jump to consider the next entity
MOVETHINGS_11:
  ld a,(ix+$06)           ; Make sure that the guardian's y-coordinate is set
  ld (ix+$03),a           ; to its minimum value
MOVETHINGS_12:
  ld a,(ix+$04)           ; Negate the y-coordinate increment; this changes the
  neg                     ; guardian's direction of movement
  ld (ix+$04),a           ;
; The current entity has been dealt with. Time for the next one.
MOVETHINGS_13:
  ld de,$0008             ; Point ix at the first byte of the next entity's
  add ix,de               ; buffer
  jp MOVETHINGS_0         ; Jump back to deal with it

; Draw the rope, arrows and guardians in the current room
;
; Used by the routine at MAINLOOP. Draws the rope, arrows and guardians in the
; current room to the screen buffer at 6000.
DRAWTHINGS:
  ld ix,ENTITYBUF         ; Point ix at the first byte of the first entity
                          ; buffer at ENTITYBUF
; The drawing loop begins here.
DRAWTHINGS_0:
  ld a,(ix+$00)           ; Pick up the first byte of the current entity's
                          ; buffer
  cp $ff                  ; Have we already dealt with every entity?
  ret z                   ; Return if so
  and $07                 ; Keep only bits 0-2 (which determine the type of
                          ; entity)
  jp z,DRAWTHINGS_22      ; Jump to consider the next entity buffer if this one
                          ; is not being used
  cp $03                  ; Is this a rope?
  jp z,DRAWTHINGS_9       ; Jump if so
  cp $04                  ; Is this an arrow?
  jr z,DRAWTHINGS_2       ; Jump if so
; We are dealing with a horizontal or vertical guardian.
  ld e,(ix+$03)           ; Point de at the entry in the screen buffer address
  ld d,$82                ; lookup table at SBUFADDRS that corresponds to the
                          ; guardian's y-coordinate
  ld a,(de)               ; Copy the LSB of the screen buffer address to l
  ld l,a                  ;
  ld a,(ix+$02)           ; Pick up the guardian's x-coordinate from bits 0-4
  and $1f                 ; of the third byte of its buffer
  add a,l                 ; Adjust the LSB of the screen buffer address in l
  ld l,a                  ; for the guardian's x-coordinate
  ld a,e                  ; Copy the fourth byte of the guardian's buffer to a
  rlca                    ; h=0x5c or 0x5d; now hl holds the address of the
  and $01                 ; guardian's current location in the attribute buffer
  or $5c                  ; at 5c00
  ld h,a                  ;
  ld de,$001f             ; Prepare de for later addition
  ld a,(ix+$01)           ; Pick up the second byte of the guardian's buffer
  and $0f                 ; Keep only bits 0-2 (INK colour) and 3 (BRIGHT
                          ; value)
  add a,$38               ; Push bit 3 up to bit 6
  and $47                 ; Keep only bits 0-2 (INK colour) and 6 (BRIGHT
                          ; value)
  ld c,a                  ; Save this value in c temporarily
  ld a,(hl)               ; Pick up the room attribute byte at the guardian's
                          ; location from the buffer at 5c00
  and $38                 ; Keep only bits 3-5 (PAPER colour)
  xor c                   ; Merge the INK colour and BRIGHT value from c
  ld c,a                  ; Copy this attribute value to c
  ld (hl),c               ; Set the attribute bytes in the buffer at 5c00 for
  inc hl                  ; the top two rows of cells occupied by the
  ld (hl),c               ; guardian's sprite
  add hl,de               ;
  ld (hl),c               ;
  inc hl                  ;
  ld (hl),c               ;
  ld a,(ix+$03)           ; Pick up the fourth byte of the guardian's buffer
  and $0e                 ; Does the guardian's sprite occupy only two rows of
                          ; cells at the moment?
  jr z,DRAWTHINGS_1       ; Jump if so
  add hl,de               ; Set the attribute bytes in the buffer at 5c00 for
  ld (hl),c               ; the third row of cells occupied by the guardian's
  inc hl                  ; sprite
  ld (hl),c               ;
DRAWTHINGS_1:
  ld c,$01                ; Prepare c for the call to DRAWSPRITE later on
  ld a,(ix+$01)           ; Now bits 5-7 of a hold the animation frame mask
  and (ix+$00)            ; 'and' on the current animation frame (bits 5-7)
  or (ix+$02)             ; 'or' on the base sprite index (bits 5-7)
  and $e0                 ; Keep only bits 5-7
  ld e,a                  ; Point de at the graphic data for the guardian's
  ld d,(ix+$05)           ; current animation frame (see GUARDIANS)
  ld h,$82                ; Point hl at the guardian's current location in the
  ld l,(ix+$03)           ; screen buffer at 6000
  ld a,(ix+$02)           ;
  and $1f                 ;
  or (hl)                 ;
  inc hl                  ;
  ld h,(hl)               ;
  ld l,a                  ;
  call DRAWSPRITE         ; Draw the guardian
  jp nz,KILLWILLY_0       ; Kill Willy if the guardian collided with him
  jp DRAWTHINGS_22        ; Jump to consider the next entity
; We are dealing with an arrow.
DRAWTHINGS_2:
  bit 7,(ix+$00)          ; Is the arrow travelling left to right?
  jr nz,DRAWTHINGS_3      ; Jump if so
  dec (ix+$04)            ; Decrement the arrow's x-coordinate
  ld c,$2c                ; The sound effect for an arrow travelling right to
                          ; left is made when the x-coordinate is 44
  jr DRAWTHINGS_4
DRAWTHINGS_3:
  inc (ix+$04)            ; Increment the arrow's x-coordinate
  ld c,$f4                ; The sound effect for an arrow travelling left to
                          ; right is made when the x-coordinate is 244
DRAWTHINGS_4:
  ld a,(ix+$04)           ; Pick up the arrow's x-coordinate (0-255)
  cp c                    ; Is it time to make the arrow sound effect?
  jr nz,DRAWTHINGS_7      ; Jump if not
  ld bc,$0280             ; Prepare the delay counters (b=0x02, c=0x80) for the
                          ; arrow sound effect
  ld a,(BORDER)           ; Pick up the border colour for the current room from
                          ; BORDER
DRAWTHINGS_5:
  out ($fe),a             ; Produce the arrow sound effect
  xor $18                 ;
DRAWTHINGS_6:
  djnz DRAWTHINGS_6       ;
  ld b,c                  ;
  dec c                   ;
  jr nz,DRAWTHINGS_5      ;
  jp DRAWTHINGS_22        ; Jump to consider the next entity
DRAWTHINGS_7:
  and $e0                 ; Is the arrow's x-coordinate in the range 0-31 (i.e.
                          ; on-screen)?
  jp nz,DRAWTHINGS_22     ; If not, jump to consider the next entity
  ld e,(ix+$02)           ; Point de at the entry in the screen buffer address
  ld d,$82                ; lookup table at SBUFADDRS that corresponds to the
                          ; arrow's y-coordinate
  ld a,(de)               ; Pick up the LSB of the screen buffer address
  add a,(ix+$04)          ; Adjust it for the arrow's x-coordinate
  ld l,a                  ; Point hl at the arrow's current location in the
  ld a,e                  ; attribute buffer at 5c00
  and $80                 ;
  rlca                    ;
  or $5c                  ;
  ld h,a                  ;
  ld (ix+$05),$00         ; Initialise the collision detection byte (0x00=off,
                          ; 0xff=on)
  ld a,(hl)               ; Pick up the room attribute byte at the arrow's
                          ; location
  and $07                 ; Keep only bits 0-2 (INK colour)
  cp $07                  ; Is the INK white?
  jr nz,DRAWTHINGS_8      ; Jump if not
  dec (ix+$05)            ; Activate collision detection
DRAWTHINGS_8:
  ld a,(hl)               ; Set the INK colour to white at the arrow's location
  or $07                  ;
  ld (hl),a               ;
  inc de                  ; Pick up the MSB of the screen buffer address for
  ld a,(de)               ; the arrow's location
  ld h,a                  ; Point hl at the top pixel row of the arrow's
  dec h                   ; location in the screen buffer at 6000
  ld a,(ix+$06)           ; Draw the top pixel row of the arrow
  ld (hl),a               ;
  inc h                   ; Point hl at the middle pixel row of the arrow's
                          ; location in the screen buffer at 6000
  ld a,(hl)               ; Pick up the graphic byte that's already here
  and (ix+$05)            ; Has the arrow hit anything that has white INK (e.g.
                          ; Willy)?
  jp nz,KILLWILLY_0       ; If so, kill Willy
  ld (hl),$ff             ; Draw the shaft of the arrow
  inc h                   ; Point hl at the bottom pixel row of the arrow's
                          ; location in the screen buffer at 6000
  ld a,(ix+$06)           ; Draw the bottom pixel row of the arrow
  ld (hl),a               ;
  jp DRAWTHINGS_22        ; Jump to consider the next entity
; We are dealing with a rope.
DRAWTHINGS_9:
  ld iy,SBUFADDRS         ; Point iy at the first byte of the screen buffer
                          ; address lookup table at SBUFADDRS
  ld (ix+$09),$00         ; Initialise the second byte in the following entity
                          ; buffer to zero; this will count the segments of
                          ; rope to draw
  ld a,(ix+$02)           ; Initialise the fourth byte of the rope's buffer;
  ld (ix+$03),a           ; this holds the x-coordinate of the cell in which
                          ; the segment of rope under consideration will be
                          ; drawn
  ld (ix+$05),$80         ; Initialise the sixth byte of the rope's buffer to
                          ; 0x80 (bit 7 set); the value held here is used to
                          ; draw the segment of rope under consideration
; The following loop draws each segment of the rope from top to bottom.
DRAWTHINGS_10:
  ld a,(iy+$00)           ; Point hl at the location of the segment of rope
  add a,(ix+$03)          ; under consideration in the screen buffer at 6000
  ld l,a                  ;
  ld h,(iy+$01)           ;
  ld a,(ROPE)             ; Pick up the rope status indicator at ROPE
  or a                    ; Is Willy on the rope, or has he recently jumped or
                          ; dropped off it?
  jr nz,DRAWTHINGS_11     ; Jump if so
  ld a,(ix+$05)           ; Pick up the drawing byte
  and (hl)                ; Is this segment of rope touching anything else
                          ; that's been drawn so far (e.g. Willy)?
  jr z,DRAWTHINGS_13      ; Jump if not
  ld a,(ix+$09)           ; Copy the segment counter into the rope status
  ld (ROPE),a             ; indicator at ROPE
  set 0,(ix+$0b)          ; Signal: Willy is on the rope
DRAWTHINGS_11:
  cp (ix+$09)             ; Does the rope status indicator at ROPE match the
                          ; segment counter?
  jr nz,DRAWTHINGS_13     ; Jump if not
  bit 0,(ix+$0b)          ; Is Willy on the rope (and clinging to this
                          ; particular segment)?
  jr z,DRAWTHINGS_13      ; Jump if not
  ld b,(ix+$03)           ; Copy the x-coordinate of the cell containing the
                          ; segment of rope under consideration to b
  ld a,(ix+$05)           ; Pick up the drawing byte in a
  ld c,$01                ; The value in c will specify Willy's next animation
                          ; frame; initialise it to 1
  cp $04                  ; Is the set bit of the drawing byte in bit 0 or 1?
  jr c,DRAWTHINGS_12      ; Jump if so
  ld c,$00                ; Assume that Willy's next animation frame will be 0
  cp $10                  ; Is the set bit of the drawing byte in bit 2 or 3?
  jr c,DRAWTHINGS_12      ; Jump if so
  dec b                   ; Decrement the x-coordinate
  ld c,$03                ; Assume that Willy's next animation frame will be 3
  cp $40                  ; Is the set bit of the drawing byte in bit 4 or 5?
  jr c,DRAWTHINGS_12      ; Jump if so
  ld c,$02                ; Willy's next animation frame will be 2 (the set bit
                          ; of the drawing byte is in bit 6 or 7)
DRAWTHINGS_12:
  ld (FRAME),bc           ; Set Willy's animation frame at FRAME, and
                          ; temporarily store his x-coordinate at LOCATION
  ld a,iyl                ; Update Willy's y-coordinate at WILLY_Y to account
  sub $10                 ; for his change of location as the rope moves
  ld (WILLY_Y),a          ;
  push hl                 ; Save hl briefly
  call MOVEWILLY_8        ; Update Willy's attribute buffer address at LOCATION
                          ; to account for his change of location as the rope
                          ; moves
  pop hl                  ; Restore the screen buffer address of the segment of
                          ; rope under consideration to hl
  jr DRAWTHINGS_13        ; Make a redundant jump to the next instruction
DRAWTHINGS_13:
  ld a,(ix+$05)           ; Draw a pixel of the rope to the screen buffer at
  or (hl)                 ; 6000
  ld (hl),a               ;
  ld a,(ix+$09)           ; Point hl at the relevant entry in the second half
  add a,(ix+$01)          ; of the rope animation table at ROPEANIM
  ld l,a                  ;
  set 7,l                 ;
  ld h,$83                ;
  ld e,(hl)               ; Add its value to iy; now iy points at the entry in
  ld d,$00                ; the screen buffer address lookup table at SBUFADDRS
  add iy,de               ; that corresponds to the next segment of rope to
                          ; consider
  res 7,l                 ; Point hl at the relevant entry in the first half of
                          ; the rope animation table at ROPEANIM
  ld a,(hl)               ; Pick up its value
  or a                    ; Is it zero?
  jr z,DRAWTHINGS_18      ; Jump if so
  ld b,a                  ; Copy the rope animation table entry value to b;
                          ; this will count the rotations of the drawing byte
  bit 7,(ix+$01)          ; Is the rope currently right of centre?
  jr z,DRAWTHINGS_16      ; Jump if so
DRAWTHINGS_14:
  rlc (ix+$05)            ; Rotate the drawing byte left once
  bit 0,(ix+$05)          ; Did that push the set bit from bit 7 into bit 0?
  jr z,DRAWTHINGS_15      ; Jump if not
  dec (ix+$03)            ; Decrement the x-coordinate for the cell containing
                          ; this segment of rope
DRAWTHINGS_15:
  djnz DRAWTHINGS_14      ; Jump back until the drawing byte has been rotated
                          ; as required
  jr DRAWTHINGS_18        ; Jump to consider the next segment of rope
DRAWTHINGS_16:
  rrc (ix+$05)            ; Rotate the drawing byte right once
  bit 7,(ix+$05)          ; Did that push the set bit from bit 0 into bit 7?
  jr z,DRAWTHINGS_17      ; Jump if not
  inc (ix+$03)            ; Increment the x-coordinate for the cell containing
                          ; this segment of rope
DRAWTHINGS_17:
  djnz DRAWTHINGS_16      ; Jump back until the drawing byte has been rotated
                          ; as required
DRAWTHINGS_18:
  ld a,(ix+$09)           ; Pick up the segment counter
  cp (ix+$04)             ; Have we drawn every segment of the rope yet?
  jr z,DRAWTHINGS_19      ; Jump if so
  inc (ix+$09)            ; Increment the segment counter
  jp DRAWTHINGS_10        ; Jump back to draw the next segment of rope
; Now that the entire rope has been drawn, deal with Willy's movement along it.
DRAWTHINGS_19:
  ld a,(ROPE)             ; Pick up the rope status indicator at ROPE
  bit 7,a                 ; Has Willy recently jumped off the rope or dropped
                          ; off the bottom of it (a>=0xf0)?
  jr z,DRAWTHINGS_20      ; Jump if not
  inc a                   ; Update the rope status indicator at ROPE
  ld (ROPE),a             ;
  res 0,(ix+$0b)          ; Signal: Willy is not on the rope
  jr DRAWTHINGS_22        ; Jump to consider the next entity
DRAWTHINGS_20:
  bit 0,(ix+$0b)          ; Is Willy on the rope?
  jr z,DRAWTHINGS_22      ; If not, jump to consider the next entity
  ld a,(DMFLAGS)          ; Pick up Willy's direction and movement flags from
                          ; DMFLAGS
  bit 1,a                 ; Is Willy moving up or down the rope?
  jr z,DRAWTHINGS_22      ; If not, jump to consider the next entity
  rrca                    ; xor Willy's direction bit (0=facing right, 1=facing
  xor (ix+$00)            ; left) with the rope's direction bit (0=swinging
  rlca                    ; right to left, 1=swinging left to right)
  rlca                    ; Now a=1 if Willy is facing the same direction as
  and $02                 ; the rope is swinging (he will move down the rope),
  dec a                   ; or -1 otherwise (he will move up the rope)
  ld hl,ROPE              ; Increment or decrement the rope status indicator at
  add a,(hl)              ; ROPE
  ld (hl),a               ;
  ld a,(ABOVE)            ; Pick up the number of the room above from ABOVE and
  ld c,a                  ; copy it to c
  ld a,(ROOM)             ; Pick up the number of the current room from ROOM
  cp c                    ; Is there a room above this one?
  jr nz,DRAWTHINGS_21     ; Jump if so
  ld a,(hl)               ; Pick up the rope status indicator at ROPE
  cp $0c                  ; Is it 0x0c or greater?
  jr nc,DRAWTHINGS_21     ; Jump if so
  ld (hl),$0c             ; Set the rope status indicator at ROPE to 0x0c
                          ; (there is nowhere to go above this rope)
DRAWTHINGS_21:
  ld a,(hl)               ; Pick up the rope status indicator at ROPE
  cp (ix+$04)             ; Compare it with the length of the rope
  jr c,DRAWTHINGS_22      ; If Willy is at or above the bottom of the rope,
  jr z,DRAWTHINGS_22      ; jump to consider the next entity
  ld (hl),$f0             ; Set the rope status indicator at ROPE to 0xf0
                          ; (Willy has just dropped off the bottom of the rope)
  ld a,(WILLY_Y)          ; Round down Willy's y-coordinate at WILLY_Y to the
  and $f8                 ; nearest multiple of 8; this might move him upwards
  ld (WILLY_Y),a          ; a little, but ensures that his actual pixel
                          ; y-coordinate is a multiple of 4 before he starts
                          ; falling
  xor a                   ; Initialise the airborne status indicator at
  ld (AIRBORNE),a         ; AIRBORNE
  jr DRAWTHINGS_22        ; Make a redundant jump to the next instruction
; The current entity has been dealt with. Time for the next one.
DRAWTHINGS_22:
  ld de,$0008             ; Point ix at the first byte of the next entity's
  add ix,de               ; buffer
  jp DRAWTHINGS_0         ; Jump back to deal with it

; Unused routine
;
; This routine is not used, but if it were, it would set the INK colour for a
; 3x2 block of cells, maintaining the PAPER, BRIGHT and FLASH attributes of the
; current room background. It is identical to the code at 8e5f in Manic Miner
; that is used to set the attributes for a vertical guardian.
;
; a INK colour (0-7)
; hl Attribute buffer address
U_SETATTRS:
  ld (hl),a               ; Store the INK colour (bits 0-2)
  ld a,(BACKGROUND)       ; Collect the current room's background tile
                          ; attribute from BACKGROUND
  and $f8                 ; Keep only bits 3-7 (PAPER, BRIGHT, FLASH)
  or (hl)                 ; Merge the INK bits
  ld (hl),a               ; Store the resultant attribute byte
  ld de,$001f             ; Prepare de for later addition
  inc hl                  ; Move right one cell and store the attribute byte
  ld (hl),a               ; there
  add hl,de               ; Move left one cell and down a row and store the
  ld (hl),a               ; attribute byte there
  inc hl                  ; Move right one cell and store the attribute byte
  ld (hl),a               ; there
  add hl,de               ; Move left one cell and down a row and store the
  ld (hl),a               ; attribute byte there
  inc hl                  ; Move right one cell and store the attribute byte
  ld (hl),a               ; there
  ret

; Draw the items in the current room and collect any that Willy is touching
;
; Used by the routine at MAINLOOP.
DRAWITEMS:
  ld h,$a4                ; Page 0xa4 holds the first byte of each entry in the
                          ; item table
  ld a,(FIRSTITEM)        ; Pick up the index of the first item from FIRSTITEM
  ld l,a                  ; Point hl at the first byte of the first entry in
                          ; the item table
; The item-drawing loop begins here.
DRAWITEMS_0:
  ld c,(hl)               ; Pick up the first byte of the current entry in the
                          ; item table
  res 7,c                 ; Reset bit 7; bit 6 holds the collection flag, and
                          ; bits 0-5 hold the room number
  ld a,(ROOM)             ; Pick up the number of the current room from ROOM
  or $40                  ; Set bit 6 (corresponding to the collection flag)
  cp c                    ; Is the item in the current room and still
                          ; uncollected?
  jr nz,DRAWITEMS_7       ; If not, jump to consider the next entry in the item
                          ; table
; This item is in the current room and has not been collected yet.
  ld a,(hl)               ; Pick up the first byte of the current entry in the
                          ; item table
  rlca                    ; Point de at the location of the item in the
  and $01                 ; attribute buffer at 5c00
  add a,$5c               ;
  ld d,a                  ;
  inc h                   ;
  ld e,(hl)               ;
  dec h                   ;
  ld a,(de)               ; Pick up the current attribute byte at the item's
                          ; location
  and $07                 ; Is the INK white (which happens if Willy is
  cp $07                  ; touching the item, or the room's background tile
                          ; has white INK, as in Swimming Pool)?
  jr nz,DRAWITEMS_6       ; Jump if not
; Willy is touching this item (or the room's background tile has white INK), so
; add it to his collection.
  ld ix,MSG_ITEMS         ; Point ix at the number of items collected at
                          ; MSG_ITEMS
DRAWITEMS_1:
  inc (ix+$02)            ; Increment a digit of the number of items collected
  ld a,(ix+$02)           ; Was the digit originally '9'?
  cp $3a                  ;
  jr nz,DRAWITEMS_2       ; Jump if not
  ld (ix+$02),$30         ; Set the digit to '0'
  dec ix                  ; Move back to the digit on the left
  jr DRAWITEMS_1          ; Jump back to increment this digit
DRAWITEMS_2:
  ld a,(BORDER)           ; Pick up the border colour for the current room from
                          ; BORDER
  ld c,$80                ; Produce the sound effect for collecting an item
DRAWITEMS_3:
  out ($fe),a             ;
  xor $18                 ;
  ld e,a                  ;
  ld a,$90                ;
  sub c                   ;
  ld b,a                  ;
  ld a,e                  ;
DRAWITEMS_4:
  djnz DRAWITEMS_4        ;
  dec c                   ;
  dec c                   ;
  jr nz,DRAWITEMS_3       ;
  ld a,(ITEMS)            ; Update the counter of items remaining at ITEMS, and
  inc a                   ; set the zero flag if there are no more items to
  ld (ITEMS),a            ; collect
  jr nz,DRAWITEMS_5       ; Jump if there are any items still to be collected
  ld a,$01                ; Update the game mode indicator at MODE to 1 (all
  ld (MODE),a             ; items collected)
DRAWITEMS_5:
  res 6,(hl)              ; Reset bit 6 of the first byte of the entry in the
                          ; item table: the item has been collected
  jr DRAWITEMS_7          ; Jump to consider the next entry in the item table
; Willy is not touching this item, so draw it and cycle its INK colour.
DRAWITEMS_6:
  ld a,(TICKS)            ; Generate the INK colour for the item from the value
  add a,l                 ; of the minute counter at TICKS (0x00-0xff) and the
  and $03                 ; index of the item in the item table (0xad-0xff)
  add a,$03               ;
  ld c,a                  ;
  ld a,(de)               ; Change the INK colour of the item in the attribute
  and $f8                 ; buffer at 5c00
  or c                    ;
  ld (de),a               ;
  ld a,(hl)               ; Point de at the location of the item in the screen
  rlca                    ; buffer at 6000
  rlca                    ;
  rlca                    ;
  rlca                    ;
  and $08                 ;
  add a,$60               ;
  ld d,a                  ;
  push hl                 ; Save hl briefly
  ld hl,ITEM              ; Point hl at the item graphic for the current room
                          ; (at ITEM)
  ld b,$08                ; There are eight pixel rows to copy
  call PRINTCHAR_0        ; Draw the item to the screen buffer at 6000
  pop hl                  ; Restore the item table pointer to hl
; The current item has been dealt with (skipped, collected or drawn) as
; appropriate. Time to consider the next one.
DRAWITEMS_7:
  inc l                   ; Point hl at the first byte of the next entry in the
                          ; item table
  jr nz,DRAWITEMS_0       ; Jump back unless we've examined every entry
  ret

; Draw a sprite
;
; Used by the routines at CODESCREEN (to draw the number key graphics on the
; code entry screen), DRAWLIVES (to draw the remaining lives), GAMEOVER (to
; draw Willy, the foot and the barrel during the game over sequence),
; DRAWTHINGS (to draw guardians in the current room) and BEDANDBATH (to draw
; Maria in Master Bedroom). If c=1 on entry, this routine returns with the zero
; flag reset if any of the set bits in the sprite being drawn collides with a
; set bit in the background.
;
; c Drawing mode: 0 (overwrite) or 1 (blend)
; de Address of sprite graphic data
; hl Address to draw at
DRAWSPRITE:
  ld b,$10                ; There are 16 rows of pixels to draw
DRAWSPRITE_0:
  bit 0,c                 ; Set the zero flag if we're in overwrite mode
  ld a,(de)               ; Pick up a sprite graphic byte
  jr z,DRAWSPRITE_1       ; Jump if we're in overwrite mode
  and (hl)                ; Return with the zero flag reset if any of the set
  ret nz                  ; bits in the sprite graphic byte collide with a set
                          ; bit in the background (e.g. in Willy's sprite)
  ld a,(de)               ; Pick up the sprite graphic byte again
  or (hl)                 ; Blend it with the background byte
DRAWSPRITE_1:
  ld (hl),a               ; Copy the graphic byte to its destination cell
  inc l                   ; Move hl along to the next cell on the right
  inc de                  ; Point de at the next sprite graphic byte
  bit 0,c                 ; Set the zero flag if we're in overwrite mode
  ld a,(de)               ; Pick up a sprite graphic byte
  jr z,DRAWSPRITE_2       ; Jump if we're in overwrite mode
  and (hl)                ; Return with the zero flag reset if any of the set
  ret nz                  ; bits in the sprite graphic byte collide with a set
                          ; bit in the background (e.g. in Willy's sprite)
  ld a,(de)               ; Pick up the sprite graphic byte again
  or (hl)                 ; Blend it with the background byte
DRAWSPRITE_2:
  ld (hl),a               ; Copy the graphic byte to its destination cell
  dec l                   ; Move hl to the next pixel row down in the cell on
  inc h                   ; the left
  inc de                  ; Point de at the next sprite graphic byte
  ld a,h                  ; Have we drawn the bottom pixel row in this pair of
  and $07                 ; cells yet?
  jr nz,DRAWSPRITE_3      ; Jump if not
  ld a,h                  ; Otherwise move hl to the top pixel row in the cell
  sub $08                 ; below
  ld h,a                  ;
  ld a,l                  ;
  add a,$20               ;
  ld l,a                  ;
  and $e0                 ; Was the last pair of cells at y-coordinate 7 or 15?
  jr nz,DRAWSPRITE_3      ; Jump if not
  ld a,h                  ; Otherwise adjust hl to account for the movement
  add a,$08               ; from the top or middle third of the screen to the
  ld h,a                  ; next one down
DRAWSPRITE_3:
  djnz DRAWSPRITE_0       ; Jump back until all 16 rows of pixels have been
                          ; drawn
  xor a                   ; Set the zero flag (to indicate no collision)
  ret

; Move Willy into the room to the left
;
; Used by the routine at MOVEWILLY3.
ROOMLEFT:
  ld a,(LEFT)             ; Pick up the number of the room to the left from
                          ; LEFT
  ld (ROOM),a             ; Make it the current room number by copying it to
                          ; ROOM
  ld a,(LOCATION)         ; Adjust Willy's screen x-coordinate (at LOCATION) to
  or $1f                  ; 30 (on the far right)
  and $fe                 ;
  ld (LOCATION),a         ;
  pop hl                  ; Drop the return address (AFTERMOVE1, in the main
                          ; loop) from the stack
  jp INITROOM             ; Draw the room and re-enter the main loop

; Move Willy into the room to the right
;
; Used by the routine at MOVEWILLY3.
ROOMRIGHT:
  ld a,(RIGHT)            ; Pick up the number of the room to the right from
                          ; RIGHT
  ld (ROOM),a             ; Make it the current room number by copying it to
                          ; ROOM
  ld a,(LOCATION)         ; Adjust Willy's screen x-coordinate (at LOCATION) to
  and $e0                 ; 0 (on the far left)
  ld (LOCATION),a         ;
  pop hl                  ; Drop the return address (AFTERMOVE1, in the main
                          ; loop) from the stack
  jp INITROOM             ; Draw the room and re-enter the main loop

; Move Willy into the room above
;
; Used by the routines at MAINLOOP and MOVEWILLY.
ROOMABOVE:
  ld a,(ABOVE)            ; Pick up the number of the room above from ABOVE
  ld (ROOM),a             ; Make it the current room number by copying it to
                          ; ROOM
  ld a,(LOCATION)         ; Willy should now appear on the bottom floor of the
  and $1f                 ; room, so adjust his attribute buffer coordinates
  add a,$a0               ; (at LOCATION) accordingly
  ld (LOCATION),a         ;
  ld a,$5d                ;
  ld ($85d4),a            ;
  ld a,$d0                ; Adjust Willy's y-coordinate (at WILLY_Y) as well
  ld (WILLY_Y),a          ;
  xor a                   ; Reset the airborne status indicator at AIRBORNE
  ld (AIRBORNE),a         ;
  pop hl                  ; Drop the return address (either AFTERMOVE1 or
                          ; AFTERMOVE2, in the main loop) from the stack
  jp INITROOM             ; Draw the room and re-enter the main loop

; Move Willy into the room below
;
; Used by the routine at MOVEWILLY.
ROOMBELOW:
  ld a,(BELOW)            ; Pick up the number of the room below from BELOW
  ld (ROOM),a             ; Make it the current room number by copying it to
                          ; ROOM
  xor a                   ; Set Willy's y-coordinate (at WILLY_Y) to 0
  ld (WILLY_Y),a          ;
  ld a,(AIRBORNE)         ; Pick up the airborne status indicator from AIRBORNE
  cp $0b                  ; Is it 0x0b or greater (meaning Willy has already
                          ; been falling for a while)?
  jr nc,ROOMBELOW_0       ; Jump if so
  ld a,$02                ; Otherwise set the airborne status indicator to 2
  ld (AIRBORNE),a         ; (Willy will start falling here if there's no floor
                          ; beneath him)
ROOMBELOW_0:
  ld a,(LOCATION)         ; Willy should now appear at the top of the room, so
  and $1f                 ; adjust his attribute buffer coordinates (at
  ld (LOCATION),a         ; LOCATION) accordingly
  ld a,$5c                ;
  ld ($85d4),a            ;
  pop hl                  ; Drop the return address (AFTERMOVE1, in the main
                          ; loop) from the stack
  jp INITROOM             ; Draw the room and re-enter the main loop

; Move the conveyor in the current room
;
; Used by the routine at MAINLOOP.
MVCONVEYOR:
  ld hl,(CONVLOC)         ; Pick up the address of the conveyor's location in
                          ; the attribute buffer at 5e00 from CONVLOC
  ld a,h                  ; Point de and hl at the location of the left end of
  and $01                 ; the conveyor in the screen buffer at 7000
  rlca                    ;
  rlca                    ;
  rlca                    ;
  add a,$70               ;
  ld h,a                  ;
  ld e,l                  ;
  ld d,h                  ;
  ld a,(CONVLEN)          ; Pick up the length of the conveyor from CONVLEN
  or a                    ; Is there a conveyor in the room?
  ret z                   ; Return if not
  ld b,a                  ; b will count the conveyor tiles
  ld a,(CONVDIR)          ; Pick up the direction of the conveyor from CONVDIR
                          ; (0=left, 1=right)
  or a                    ; Is the conveyor moving right?
  jr nz,MVCONVEYOR_1      ; Jump if so
; The conveyor is moving left.
  ld a,(hl)               ; Copy the first pixel row of the conveyor tile to a
  rlc a                   ; Rotate it left twice
  rlc a                   ;
  inc h                   ; Point hl at the third pixel row of the conveyor
  inc h                   ; tile
  ld c,(hl)               ; Copy this pixel row to c
  rrc c                   ; Rotate it right twice
  rrc c                   ;
MVCONVEYOR_0:
  ld (de),a               ; Update the first and third pixel rows of every
  ld (hl),c               ; conveyor tile in the screen buffer at 7000
  inc l                   ;
  inc e                   ;
  djnz MVCONVEYOR_0       ;
  ret
; The conveyor is moving right.
MVCONVEYOR_1:
  ld a,(hl)               ; Copy the first pixel row of the conveyor tile to a
  rrc a                   ; Rotate it right twice
  rrc a                   ;
  inc h                   ; Point hl at the third pixel row of the conveyor
  inc h                   ; tile
  ld c,(hl)               ; Copy this pixel row to c
  rlc c                   ; Rotate it left twice
  rlc c                   ;
  jr MVCONVEYOR_0         ; Jump back to update the first and third pixel rows
                          ; of every conveyor tile

; Deal with special rooms (Master Bedroom, The Bathroom)
;
; Used by the routine at MAINLOOP.
BEDANDBATH:
  ld a,(ROOM)             ; Pick up the number of the current room from ROOM
  cp $23                  ; Are we in Master Bedroom?
  jr nz,DRAWTOILET        ; Jump if not
  ld a,(MODE)             ; Pick up the game mode indicator from MODE
  or a                    ; Has Willy collected all the items?
  jr nz,BEDANDBATH_1      ; Jump if so
; Willy hasn't collected all the items yet, so Maria is on guard.
  ld a,(TICKS)            ; Pick up the minute counter from TICKS; this will
                          ; determine Maria's animation frame
  and $02                 ; Keep only bit 1, move it to bit 5, and set bit 7
  rrca                    ;
  rrca                    ;
  rrca                    ;
  rrca                    ;
  or $80                  ;
  ld e,a                  ; Now e=0x80 (foot down) or 0xa0 (foot raised)
  ld a,(WILLY_Y)          ; Pick up Willy's y-coordinate from WILLY_Y
  cp $d0                  ; Is Willy on the floor below the ramp?
  jr z,BEDANDBATH_0       ; Jump if so
  ld e,$c0                ; e=0xc0 (raising arm)
  cp $c0                  ; Is Willy 8 or fewer pixels above floor level?
  jr nc,BEDANDBATH_0      ; Jump if so
  ld e,$e0                ; e=0xe0 (arm raised)
BEDANDBATH_0:
  ld d,$9c                ; Point de at the sprite graphic data for Maria
                          ; (MARIA0, MARIA1, MARIA2 or MARIA3)
  ld hl,$686e             ; Draw Maria at (11,14) in the screen buffer at 6000
  ld c,$01                ;
  call DRAWSPRITE         ;
  jp nz,KILLWILLY_0       ; Kill Willy if Maria collided with him
  ld hl,$4545             ; h=l=0x45 (INK 5: PAPER 0: BRIGHT 1)
  ld ($5d6e),hl           ; Set the attribute bytes for the top half of Maria's
                          ; sprite in the buffer at 5c00
  ld hl,$0707             ; h=l=0x07 (INK 7: PAPER 0: BRIGHT 0)
  ld ($5d8e),hl           ; Set the attribute bytes for the bottom half of
                          ; Maria's sprite in the buffer at 5c00
  ret
; Willy has collected all the items, so Maria is gone.
BEDANDBATH_1:
  ld a,(LOCATION)         ; Pick up Willy's screen x-coordinate from LOCATION
  and $1f                 ;
  cp $06                  ; Has Willy reached the bed (at x=5) yet?
  ret nc                  ; Return if not
  ld a,$02                ; Update the game mode indicator at MODE to 2 (Willy
  ld (MODE),a             ; is running to the toilet)
  ret

; Check whether Willy has reached the toilet
;
; Called by the routine at MAINLOOP when Willy is on his way to the toilet.
CHKTOILET:
  ld a,(ROOM)             ; Pick up the number of the current room from ROOM
  cp $21                  ; Are we in The Bathroom?
  ret nz                  ; Return if not
  ld a,(LOCATION)         ; Pick up the LSB of Willy's attribute buffer
                          ; location from LOCATION
  cp $bc                  ; Is Willy's screen x-coordinate 28 (where the toilet
                          ; is)?
  ret nz                  ; Return if not
; Willy has reached the toilet.
  xor a                   ; Reset the minute counter at TICKS to 0 (so that we
  ld (TICKS),a            ; get to see Willy's head down the toilet for at
                          ; least a whole game minute)
  ld a,$03                ; Update the game mode indicator at MODE to 3
  ld (MODE),a             ; (Willy's head is down the toilet)
  ret

; Animate the toilet in The Bathroom
;
; Used by the routine at BEDANDBATH.
DRAWTOILET:
  ld a,(ROOM)             ; Pick up the number of the current room from ROOM
  cp $21                  ; Are we in The Bathroom?
  ret nz                  ; Return if not
  ld a,(TICKS)            ; Pick up the minute counter from TICKS; this will
                          ; determine the animation frame to use for the toilet
  and $01                 ; Keep only bit 0 and move it to bit 5
  rrca                    ;
  rrca                    ;
  rrca                    ;
  ld e,a                  ; Now e=0x00 or 0x20
  ld a,(MODE)             ; Pick up the game mode indicator from MODE
  cp $03                  ; Is Willy's head down the toilet?
  jr nz,DRAWTOILET_0      ; Jump if not
  set 6,e                 ; Now e=0x40 or 0x60
DRAWTOILET_0:
  ld d,$a6                ; Point de at the toilet sprite to use (TOILET0,
                          ; TOILET1, TOILET2 or TOILET3)
  ld ix,$82d0             ; Draw the toilet at (13,28) in the screen buffer at
  ld bc,$101c             ; 6000
  call DRAWWILLY_1        ;
  ld hl,$0707             ; h=l=0x07 (INK 7: PAPER 0)
  ld ($5dbc),hl           ; Set the attribute bytes for the toilet in the
  ld ($5ddc),hl           ; buffer at 5c00
  ret

; Check and set the attribute bytes for Willy's sprite in the buffer at 5c00
;
; Used by the routine at MAINLOOP. Sets the attribute bytes in the buffer at
; 5c00 for the six cells (in three rows of two) occupied by or under Willy's
; sprite, or kills Willy if any of the cells contains a nasty.
WILLYATTRS:
  ld hl,(LOCATION)        ; Pick up Willy's attribute buffer coordinates from
                          ; LOCATION
  ld b,$00                ; Initialise b to 0 (in case Willy is not standing on
                          ; a ramp)
  ld a,(RAMPDIR)          ; Pick up the direction byte of the ramp definition
                          ; for the current room from RAMPDIR
  and $01                 ; Point hl at one of the cells under Willy's feet
  add a,$40               ; (the one on the left if the ramp goes up to the
  ld e,a                  ; left, the one on the right if the ramp goes up to
  ld d,$00                ; the right)
  add hl,de               ;
  ld a,(RAMP)             ; Pick up the ramp's attribute byte from RAMP
  cp (hl)                 ; Is Willy on or just above the ramp?
  jr nz,WILLYATTRS_0      ; Jump if not
  ld a,(AIRBORNE)         ; Pick up the airborne status indicator from AIRBORNE
  or a                    ; Is Willy airborne?
  jr nz,WILLYATTRS_0      ; Jump if so
; Willy is standing on a ramp. Calculate the offset that needs to be added to
; the y-coordinate stored at WILLY_Y to obtain Willy's true y-coordinate.
  ld a,(FRAME)            ; Pick up Willy's current animation frame (0-3) from
                          ; FRAME
  and $03                 ; b=0, 4, 8 or 12
  rlca                    ;
  rlca                    ;
  ld b,a                  ;
  ld a,(RAMPDIR)          ; Pick up the direction byte of the ramp definition
                          ; for the current room from RAMPDIR
  and $01                 ; a=b (if the ramp goes up to the left) or 12-b (if
  dec a                   ; the ramp goes up to the right)
  xor $0c                 ;
  xor b                   ;
  and $0c                 ;
  ld b,a                  ; Copy this value to b
; Now b holds a y-coordinate offset of 0, 4, 8 or 12 if Willy is standing on a
; ramp, or 0 otherwise.
WILLYATTRS_0:
  ld hl,(LOCATION)        ; Pick up Willy's attribute buffer coordinates from
                          ; LOCATION
  ld de,$001f             ; Prepare de for later addition
  ld c,$0f                ; Set c=0x0f for the top two rows of cells (to make
                          ; the routine at WILLYATTR force white INK)
  call WILLYATTR          ; Check and set the attribute byte for the top-left
                          ; cell
  inc hl                  ; Move hl to the next cell to the right
  call WILLYATTR          ; Check and set the attribute byte for the top-right
                          ; cell
  add hl,de               ; Move hl down a row and back one cell to the left
  call WILLYATTR          ; Check and set the attribute byte for the mid-left
                          ; cell
  inc hl                  ; Move hl to the next cell to the right
  call WILLYATTR          ; Check and set the attribute byte for the mid-right
                          ; cell
  ld a,(WILLY_Y)          ; Pick up Willy's y-coordinate from WILLY_Y
  add a,b                 ; Add the y-coordinate offset calculated earlier (to
  ld c,a                  ; get Willy's true y-coordinate if he's standing on a
                          ; ramp) and transfer the result to c
  add hl,de               ; Move hl down a row and back one cell to the left;
                          ; at this point hl may be pointing at one of the
                          ; cells in the top row of the buffer at 5e00, which
                          ; is a bug
  call WILLYATTR          ; Check and set the attribute byte for the
                          ; bottom-left cell
  inc hl                  ; Move hl to the next cell to the right
  call WILLYATTR          ; Check and set the attribute byte for the
                          ; bottom-right cell
  jr DRAWWILLY            ; Draw Willy to the screen buffer at 6000

; Check and set the attribute byte for a cell occupied by Willy's sprite
;
; Used by the routine at WILLYATTRS. Sets the attribute byte in the buffer at
; 5c00 for one of the six cells (in three rows of two) occupied by or under
; Willy's sprite, or kills Willy if the cell contains a nasty. On entry, c
; holds either 0x0f if the cell is in the top two rows, or Willy's y-coordinate
; if the cell is in the bottom row.
;
; c 0x0f or Willy's y-coordinate
; hl Address of the attribute byte in the buffer at 5c00
WILLYATTR:
  ld a,(BACKGROUND)       ; Pick up the attribute byte of the background tile
                          ; in the current room from BACKGROUND
  cp (hl)                 ; Does this cell contain a background tile?
  jr nz,WILLYATTR_0       ; Jump if not
  ld a,c                  ; Set the zero flag if we are going to retain the INK
  and $0f                 ; colour in this cell; this happens only if the cell
                          ; is in the bottom row and Willy's sprite is confined
                          ; to the top two rows
  jr z,WILLYATTR_0        ; Jump if we are going to retain the current INK
                          ; colour in this cell
  ld a,(BACKGROUND)       ; Pick up the attribute byte of the background tile
                          ; in the current room from BACKGROUND
  or $07                  ; Set bits 0-2, making the INK white
  ld (hl),a               ; Set the attribute byte for this cell in the buffer
                          ; at 5c00
WILLYATTR_0:
  ld a,(NASTY)            ; Pick up the attribute byte of the nasty tile in the
                          ; current room from NASTY
  cp (hl)                 ; Has Willy hit a nasty?
  jp z,KILLWILLY          ; Kill Willy if so
  ret

; Draw Willy to the screen buffer at 6000
;
; Used by the routine at WILLYATTRS.
;
; b y-coordinate offset (0, 4, 8 or 12)
DRAWWILLY:
  ld a,(WILLY_Y)          ; Pick up Willy's y-coordinate from WILLY_Y
  add a,b                 ; Add the y-coordinate offset (to get Willy's true
                          ; y-coordinate if he's standing on a ramp)
  ld ixh,$82              ; Point ix at the entry in the screen buffer address
  ld ixl,a                ; lookup table at SBUFADDRS that corresponds to
                          ; Willy's y-coordinate
  ld a,(DMFLAGS)          ; Pick up Willy's direction and movement flags from
                          ; DMFLAGS
  and $01                 ; Now e=0x00 if Willy is facing right, or 0x80 if
  rrca                    ; he's facing left
  ld e,a                  ;
  ld a,(FRAME)            ; Pick up Willy's animation frame (0-3) from FRAME
  and $03                 ; Point de at the sprite graphic data for Willy's
  rrca                    ; current animation frame (see MANDAT)
  rrca                    ;
  rrca                    ;
  or e                    ;
  ld e,a                  ;
  ld d,$9d                ;
  ld a,(ROOM)             ; Pick up the number of the current room from ROOM
  cp $1d                  ; Are we in the The Nightmare Room?
  jr nz,DRAWWILLY_0       ; Jump if not
  ld d,$b6                ; Point de at the graphic data for the flying pig
  ld a,e                  ; sprite (FLYINGPIG0+e)
  xor $80                 ;
  ld e,a                  ;
DRAWWILLY_0:
  ld b,$10                ; There are 16 rows of pixels to copy
  ld a,(LOCATION)         ; Pick up Willy's screen x-coordinate (0-31) from
  and $1f                 ; LOCATION
  ld c,a                  ; Copy it to c
; This entry point is used by the routine at DRAWTOILET to draw the toilet in
; The Bathroom.
DRAWWILLY_1:
  ld a,(ix+$00)           ; Set hl to the address in the screen buffer at 6000
  ld h,(ix+$01)           ; that corresponds to where we are going to draw the
  or c                    ; next pixel row of the sprite graphic
  ld l,a                  ;
  ld a,(de)               ; Pick up a sprite graphic byte
  or (hl)                 ; Merge it with the background
  ld (hl),a               ; Save the resultant byte to the screen buffer
  inc hl                  ; Move hl along to the next cell to the right
  inc de                  ; Point de at the next sprite graphic byte
  ld a,(de)               ; Pick it up in a
  or (hl)                 ; Merge it with the background
  ld (hl),a               ; Save the resultant byte to the screen buffer
  inc ix                  ; Point ix at the next entry in the screen buffer
  inc ix                  ; address lookup table at SBUFADDRS
  inc de                  ; Point de at the next sprite graphic byte
  djnz DRAWWILLY_1        ; Jump back until all 16 rows of pixels have been
                          ; drawn
  ret

; Print a message
;
; Used by the routines at CODESCREEN, TITLESCREEN, INITROOM, MAINLOOP and
; GAMEOVER.
;
; ix Address of the message
; c Length of the message
; de Display file address
PRINTMSG:
  ld a,(ix+$00)           ; Collect a character from the message
  call PRINTCHAR          ; Print it
  inc ix                  ; Point ix at the next character in the message
  inc e                   ; Point de at the next character cell (subtracting 8
  ld a,d                  ; from d compensates for the operations performed by
  sub $08                 ; the routine at PRINTCHAR)
  ld d,a                  ;
  dec c                   ; Have we printed the entire message yet?
  jr nz,PRINTMSG          ; If not, jump back to print the next character
  ret

; Print a single character
;
; Used by the routines at CODESCREEN and PRINTMSG.
;
; a ASCII code of the character
; de Display file address
PRINTCHAR:
  ld h,$07                ; Point hl at the bitmap for the character (in the
  ld l,a                  ; ROM)
  set 7,l                 ;
  add hl,hl               ;
  add hl,hl               ;
  add hl,hl               ;
  ld b,$08                ; There are eight pixel rows in a character bitmap
; This entry point is used by the routine at TITLESCREEN to draw a triangle UDG
; on the title screen, and by the routine at DRAWITEMS to draw an item in the
; current room.
PRINTCHAR_0:
  ld a,(hl)               ; Copy the character bitmap (or triangle UDG, or item
  ld (de),a               ; graphic) to the screen (or screen buffer)
  inc hl                  ;
  inc d                   ;
  djnz PRINTCHAR_0        ;
  ret

; Play the theme tune (Moonlight Sonata)
;
; Used by the routine at TITLESCREEN. For each of the 99 bytes in the tune data
; table at THEMETUNE, this routine produces two notes, each lasting
; approximately 0.15s; the second note is played at half the frequency of the
; first. Returns with the zero flag reset if ENTER, 0 or the fire button is
; pressed while the tune is being played.
;
; hl THEMETUNE
PLAYTUNE:
  ld a,(hl)               ; Pick up the next byte of tune data from the table
                          ; at THEMETUNE
  cp $ff                  ; Has the tune finished?
  ret z                   ; Return (with the zero flag set) if so
  ld bc,$0064             ; b=0 (short note duration counter), c=100 (short
                          ; note counter)
  xor a                   ; a=0 (border colour and speaker state)
  ld e,(hl)               ; Save the byte of tune data in e for retrieval
                          ; during the short note loop
  ld d,e                  ; Initialise d (pitch delay counter)
PLAYTUNE_0:
  out ($fe),a             ; Produce a short note (approximately 0.003s) whose
  dec d                   ; pitch is determined by the value in e
  jr nz,PLAYTUNE_1        ;
  ld d,e                  ;
  xor $18                 ;
PLAYTUNE_1:
  djnz PLAYTUNE_0         ;
  ex af,af'               ; Save a briefly
  ld a,c                  ; Is the short note counter in c (which starts off at
  cp $32                  ; 100) down to 50 yet?
  jr nz,PLAYTUNE_2        ; Jump if not
  rl e                    ; Otherwise double the value in e (which halves the
                          ; note frequency)
PLAYTUNE_2:
  ex af,af'               ; Restore the value of a
  dec c                   ; Decrement the short note counter in c
  jr nz,PLAYTUNE_0        ; Jump back unless we've finished playing 50 short
                          ; notes at the lower frequency
  call CHECKENTER         ; Check whether ENTER, 0 or the fire button is being
                          ; pressed
  ret nz                  ; Return (with the zero flag reset) if it is
  inc hl                  ; Move hl along to the next byte of tune data
  jr PLAYTUNE             ; Jump back to play the next batch of 100 short notes

; Check whether ENTER, 0 or the fire button is being pressed
;
; Used by the routine at PLAYTUNE. Returns with the zero flag reset if ENTER, 0
; or the fire button on the joystick is being pressed.
CHECKENTER:
  ld a,(JOYSTICK)         ; Collect the Kempston joystick indicator from
                          ; JOYSTICK
  or a                    ; Is the joystick connected?
  jr z,CHECKENTER_0       ; Jump if not
  in a,($1f)              ; Collect input from the joystick
  bit 4,a                 ; Is the fire button being pressed?
  ret nz                  ; Return (with the zero flag reset) if so
CHECKENTER_0:
  ld bc,$affe             ; Read keys H-J-K-L-ENTER and 6-7-8-9-0
  in a,(c)                ;
  and $01                 ; Keep only bit 0 of the result (ENTER, 0)
  cp $01                  ; Reset the zero flag if ENTER or 0 is being pressed
  ret

; Play an intro message sound effect
;
; Used by the routine at TITLESCREEN.
;
; a Value between 0x32 and 0x51
INTROSOUND:
  ld e,a                  ; Save the value of a in e for later retrieval
  ld c,$fe                ; We will output to port 0xfe
INTROSOUND_0:
  ld d,a                  ; Copy a into d; bits 0-2 of d determine the initial
                          ; border colour
  res 4,d                 ; Reset bit 4 of d (initial speaker state)
  res 3,d                 ; Reset bit 3 of d (initial MIC state)
  ld b,e                  ; Initialise b (delay counter for the inner loop)
INTROSOUND_1:
  cp b                    ; Is it time to flip the MIC and speaker and make the
                          ; border black?
  jr nz,INTROSOUND_2      ; Jump if not
  ld d,$18                ; Set bits 3 (MIC) and 4 (speaker) of d, and reset
                          ; bits 0-2 (black border)
INTROSOUND_2:
  out (c),d               ; Set the MIC state, speaker state and border colour
  djnz INTROSOUND_1       ; Jump back until the inner loop is finished
  dec a                   ; Is the outer loop finished too?
  jr nz,INTROSOUND_0      ; Jump back if not
  ret

; Unused routine
;
; This routine copies the attribute bytes for an empty room to the screen, so
; perhaps it was used during development of the game to check that the layout
; of a room had been defined correctly.
L96f4:
  ld hl,$5e00             ; Copy the attribute buffer at 5e00 to the top
  ld de,$5800             ; two-thirds of the screen
  ld bc,$0200             ;
  ldir                    ;
  ld hl,$4000             ; Fill the top two-thirds of the display file with
  ld de,$4001             ; the byte value 0x18 (00011000)
  ld bc,$0fff             ;
  ld (hl),$18             ;
  ldir                    ;
  ld bc,$fefe             ; Prepare bc for reading keys SHIFT-Z-X-C-V
L96f4_0:
  in a,(c)                ; Read these keys
  bit 2,a                 ; Is 'X' being pressed?
  jp z,$0000              ; Jump if so to reset the machine
  jr L96f4_0              ; Otherwise jump back to read the keyboard again

; Unused
L9718:
  defs $e8

; Attributes for the top two-thirds of the title screen
;
; Used by the routine at TITLESCREEN.
ATTRSUPPER:
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$28,$28,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$d3,$d3,$d3,$00,$d3,$d3,$d3,$00,$d3,$d3,$d3,$00
  defb $28,$d3,$d3,$d3,$25,$d3,$d3,$d3,$00,$d3,$d3,$d3,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$d3,$00,$00,$d3,$00,$00,$00,$00,$d3,$28,$28
  defb $2d,$d3,$25,$25,$24,$d3,$00,$00,$00,$00,$d3,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$d3,$00,$00,$d3,$d3,$d3,$00,$28,$d3,$2d,$2d
  defb $25,$d3,$d3,$d3,$24,$d3,$d3,$d3,$00,$00,$d3,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$d3,$00,$00,$d3,$00,$28,$28,$2d,$d3,$25,$25
  defb $24,$24,$04,$d3,$24,$d3,$00,$00,$00,$00,$d3,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$d3,$d3,$00,$00,$d3,$d3,$d3,$2d,$25,$d3,$24,$24
  defb $04,$d3,$d3,$d3,$24,$d3,$d3,$d3,$00,$00,$d3,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$29,$29,$2d,$2d,$2c,$2c,$04,$04
  defb $00,$00,$09,$09,$24,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$09,$09,$29,$29,$2d,$2d,$05,$05
  defb $00,$00,$09,$09,$24,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$d3,$00,$08,$08,$d3,$09,$d3,$29,$d3,$2d
  defb $05,$05,$d3,$09,$24,$d3,$00,$00,$00,$d3,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$d3,$00,$00,$00,$d3,$08,$d3,$09,$d3,$29
  defb $2d,$2d,$d3,$09,$24,$d3,$00,$00,$00,$d3,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$d3,$00,$d3,$00,$d3,$00,$d3,$08,$d3,$09
  defb $29,$29,$d3,$09,$24,$d3,$d3,$d3,$d3,$d3,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$d3,$00,$d3,$00,$d3,$00,$d3,$00,$d3,$08
  defb $09,$09,$d3,$09,$24,$24,$00,$d3,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$d3,$d3,$d3,$d3,$d3,$00,$d3,$00,$d3,$d3
  defb $d3,$08,$d3,$d3,$d3,$24,$00,$d3,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$08,$08,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; Attributes for the bottom third of the screen
;
; Used by the routines at TITLESCREEN, STARTGAME and ENDPAUSE.
ATTRSLOWER:
  defb $46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46
  defb $46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $01,$02,$03,$04,$05,$06,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
  defb $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$06,$05,$04,$03,$02,$01
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $45,$45,$06,$06,$04,$04,$41,$41,$05,$05,$43,$43,$44,$44,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $45,$45,$06,$06,$04,$04,$41,$41,$05,$05,$43,$43,$44,$44,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; Number key graphics
;
; Used by the routine at CODESCREEN.
NUMBERKEYS:
  defb $7f,$fe,$c3,$03,$bf,$fd,$bf,$fd,$ff,$fd,$ff,$fd,$ff,$fd,$f9,$fd
  defb $f1,$ff,$f9,$ff,$f9,$ff,$f9,$ff,$f9,$fd,$f9,$fd,$ff,$fb,$7f,$fe
  defb $7f,$fe,$c7,$03,$bf,$fd,$bf,$fd,$ff,$fd,$ff,$fd,$ff,$fd,$f1,$ff
  defb $ec,$ff,$fc,$ff,$f9,$ff,$f3,$ff,$e7,$ff,$e0,$fd,$ff,$f3,$7f,$fe
  defb $7f,$fe,$c6,$03,$bf,$fd,$bf,$fd,$bf,$fd,$ff,$fd,$ff,$ff,$f1,$ff
  defb $ec,$ff,$fc,$ff,$f1,$ff,$fc,$ff,$ec,$ff,$f1,$fd,$ff,$e7,$7f,$fe
  defb $7f,$fe,$c6,$03,$bf,$fd,$bf,$fd,$bf,$fd,$bf,$ff,$ff,$ff,$fd,$ff
  defb $f9,$ff,$f1,$ff,$e9,$ff,$e0,$ff,$f9,$ff,$f9,$fd,$ff,$9b,$7f,$fe

; Attributes for the code entry screen
;
; Used by the routine at CODESCREEN.
CODEATTRS:
  defb $45,$45,$45,$45,$45,$45,$45,$45,$45,$45,$45,$45,$45,$45,$45,$45
  defb $45,$45,$45,$45,$45,$45,$45,$45,$45,$45,$45,$45,$47,$47,$47,$47
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$41,$79,$00,$42,$7a,$00,$03,$3b,$00,$04,$3c,$00,$00,$00
  defb $07,$07,$00,$07,$07,$00,$07,$07,$00,$07,$07,$00,$00,$00,$00,$00
  defb $00,$00,$41,$41,$00,$42,$42,$00,$03,$03,$00,$04,$04,$00,$00,$00
  defb $07,$07,$00,$07,$07,$00,$07,$07,$00,$07,$07,$00,$00,$00,$00,$00

; Source code remnants
;
; The source code here corresponds to the code at SEE39936.
L9c00:
  defm "NZ,ENDPAUSE"      ; [JR ]NZ,ENDPAUSE
  defw $4a82              ; INC E
  defb $06                ;
  defm $09,"INC",$09,"E"  ;
  defw $4aa3                   ; JR NZ,PAUSE
  defb $0c                     ;
  defm $09,"JR",$09,"NZ,PAUSE" ;
  defw $4ac4              ; INC D
  defb $06                ;
  defm $09,"INC",$09,"D"  ;
  defw $4ae5                   ; JR NZ,PAUSE
  defb $0c                     ;
  defm $09,"JR",$09,"NZ,PAUSE" ;
  defw $4b06              ; C[P 10]
  defb $0c                ;
  defm $09,"C"            ;

; Foot/barrel graphic data
;
; Used by the routine at GAMEOVER to display the game over sequence.
;
; The foot also appears as a guardian in The Nightmare Room.
FOOT:
  defb $10,$80,$10,$80,$10,$80,$10,$80,$10,$80,$10,$80,$10,$80,$20,$80
  defb $20,$80,$48,$42,$88,$35,$84,$09,$80,$01,$80,$02,$43,$8d,$3c,$76
; The barrel also appears as a guardian in Ballroom East and Top Landing.
BARREL:
  defb $37,$ec,$77,$ee,$00,$00,$6f,$f6,$ef,$f7,$ef,$f7,$d5,$5b,$db,$bb
  defb $d5,$5b,$df,$fb,$ed,$77,$ee,$f7,$6d,$76,$00,$00,$77,$ee,$37,$ec

; Maria sprite graphic data
;
; Used by the routine at BEDANDBATH to draw Maria in Master Bedroom.
;
; Maria also appears as a guardian in The Nightmare Room.
MARIA0:
  defb $03,$00,$03,$c0,$01,$e0,$01,$40,$01,$e0,$07,$80,$1f,$f8,$3f,$fc
  defb $37,$6c,$14,$98,$0f,$f0,$0f,$f0,$0f,$f0,$02,$40,$02,$40,$06,$60
MARIA1:
  defb $03,$00,$03,$c0,$01,$e0,$01,$40,$01,$e0,$07,$80,$1f,$f8,$3f,$fc
  defb $37,$6c,$14,$98,$0f,$f0,$0f,$f0,$0f,$f0,$02,$40,$06,$40,$02,$60
MARIA2:
  defb $03,$00,$03,$c0,$01,$e0,$01,$40,$01,$e0,$07,$80,$1f,$fc,$3f,$fe
  defb $37,$66,$14,$92,$0f,$f0,$0f,$f0,$0f,$f0,$02,$40,$02,$40,$06,$60
MARIA3:
  defb $03,$00,$03,$c0,$01,$e0,$01,$40,$01,$e0,$07,$80,$1f,$ff,$3f,$fe
  defb $37,$60,$14,$90,$0f,$f0,$0f,$f0,$0f,$f0,$02,$40,$02,$40,$06,$60

; Willy sprite graphic data
;
; Used by the routines at DRAWLIVES, GAMEOVER and DRAWWILLY.
MANDAT:
  defb $3c,$00,$3c,$00,$7e,$00,$34,$00,$3e,$00,$3c,$00,$18,$00,$3c,$00
  defb $7e,$00,$7e,$00,$f7,$00,$fb,$00,$3c,$00,$76,$00,$6e,$00,$77,$00
  defb $0f,$00,$0f,$00,$1f,$80,$0d,$00,$0f,$80,$0f,$00,$06,$00,$0f,$00
  defb $1b,$80,$1b,$80,$1b,$80,$1d,$80,$0f,$00,$06,$00,$06,$00,$07,$00
WILLYR2:
  defb $03,$c0,$03,$c0,$07,$e0,$03,$40,$03,$e0,$03,$c0,$01,$80,$03,$c0
  defb $07,$e0,$07,$e0,$0f,$70,$0f,$b0,$03,$c0,$07,$60,$06,$e0,$07,$70
  defb $00,$f0,$00,$f0,$01,$f8,$00,$d0,$00,$f8,$00,$f0,$00,$60,$00,$f0
  defb $01,$f8,$03,$fc,$07,$fe,$06,$f6,$00,$f8,$01,$da,$03,$0e,$03,$8c
  defb $0f,$00,$0f,$00,$1f,$80,$0b,$00,$1f,$00,$0f,$00,$06,$00,$0f,$00
  defb $1f,$80,$3f,$c0,$7f,$e0,$6f,$60,$1f,$00,$5b,$80,$70,$c0,$31,$c0
  defb $03,$c0,$03,$c0,$07,$e0,$02,$c0,$07,$c0,$03,$c0,$01,$80,$03,$c0
  defb $07,$e0,$07,$e0,$0e,$f0,$0d,$f0,$03,$c0,$06,$e0,$07,$60,$0e,$e0
  defb $00,$f0,$00,$f0,$01,$f8,$00,$b0,$01,$f0,$00,$f0,$00,$60,$00,$f0
  defb $01,$d8,$01,$d8,$01,$d8,$01,$b8,$00,$f0,$00,$60,$00,$60,$00,$e0
  defb $00,$3c,$00,$3c,$00,$7e,$00,$2c,$00,$7c,$00,$3c,$00,$18,$00,$3c
  defb $00,$7e,$00,$7e,$00,$ef,$00,$df,$00,$3c,$00,$6e,$00,$76,$00,$ee

; Codes
;
; Used by the routine at CODESCREEN. These code remnants define the codes for
; grid locations A0-Q9.
CODES:
  dec hl
  ld c,e
CODES_0:
  dec c
  ld a,b
  jp z,$1d60
  call $1e5b
  cp $2c
  ret nz
  jr CODES_0
  ld de,$40f2
  ld a,(de)
  or a
  jp z,$19a0
  inc a
  ld ($409a),a
  ld (de),a
  ld a,(hl)
  cp $87
  jr z,CODES_1
  call $1e5a
  ret nz
  ld a,d
  or e
  jp nz,$1ec5
  inc a
  jr CODES_2
CODES_1:
  rst $10
  ret nz
CODES_2:
  ld hl,($40ee)
  ex de,hl
  ld hl,($40ea)
  ld ($40a2),hl
  ex de,hl
  ret nz
  ld a,(hl)
  or a
  jr nz,CODES_3
  inc hl
  inc hl
  inc hl
  inc hl
CODES_3:
  inc hl
  ld a,d
  and e
  inc a
  jp nz,$1f05
  ld a,($40dd)
  dec a
  jp z,$1dbe
  jp $1f05
  call $2b1c
  ret nz
  or a
  jp z,$1e4a
  dec a
  add a,a
  ld e,a
  cp $2d
  jr c,CODES_4
  ld e,$26
CODES_4:
  jp $19a2
  ld de,$000a
  push de
  jr z,CODES_5
  call $1e4f
  ex de,hl
  ex (sp),hl
  jr z,CODES_6
  ex de,hl
  rst $08
  inc l
  ex de,hl
  ld hl,($40e4)
  ex de,hl
  jr z,CODES_5
  call $1e5a
  jp nz,$1997
CODES_5:
  ex de,hl
CODES_6:
  ld a,h
  or l
  jp z,$1e4a
  ld ($40e4),hl
  ld ($40e1),a
  pop hl
  ld ($40e2),hl
  pop bc
  jp $1a33
  call $2337
  ld a,(hl)
  cp $2c
  call z,$1d78
  cp $ca
  call z,$1d78
  dec hl
  push hl
  call $0994
  pop hl
  jr z,L9eb3_0
CODES_7:
  rst $10
  jp c,$1ec2

; Unused
L9eb3:
  jp $1d5f
L9eb3_0:
  ld d,$01
L9eb3_1:
  call $1f05
  or a
  ret z
  rst $10
  cp $95
  jr nz,L9eb3_1
  dec d
  jr nz,L9eb3_1
  jr CODES_7
  ld a,$01
  ld ($409c),a
  jp $207c
  call $41ca
  cp $23
  jr nz,L9eb3_2
  call $0284
  ld ($409c),a
L9eb3_2:
  dec hl
  rst $10
  call z,$20fe
  jp z,$2169
  or $20
  cp $60
  jr nz,$9f05
  call $2b01
  cp $04
  jp nc,$1e4a
  push hl
  ld hl,$3c00
  add hl,de
  ld ($4020),hl
  ld a,e
  and $3f
  ld ($40a6),a
  defs $100

; Entity definitions
;
; Used by the routine at INITROOM.
;
; The following (empty) entity definition (0x00) is copied into one of the
; entity buffers at ENTITYBUF for any entity specification whose first byte is
; zero.
ENTITYDEFS:
  defb $00,$00,$00,$00,$00,$00,$00,$00
; The following entity definition (0x01) is used in We must perform a
; Quirkafleeg, On the Roof, Cold Store, Swimming Pool and The Beach.
ENTITY1:
  defb %00000011          ; Rope (bits 0-2), initially swinging right to left
                          ; (bit 7)
  defb $22                ; Initial animation frame index
  defb $00                ; Replaced by the x-coordinate of the top of the rope
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $00                ; Unused
  defb $20                ; Length
  defb $00                ; Unused
  defb $83                ; Unused
  defb $36                ; Animation frame at which the rope changes direction
; The following entity definition (0x02) is used in The Security Guard, Rescue
; Esmerelda, I'm sure I've seen this before.. and Up on the Battlements.
ENTITY2:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %00100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $80                ; Initial pixel y-coordinate: 64
  defb $02                ; Initial pixel y-coordinate increment: 1 (moving
                          ; down)
  defb $bf                ; Page containing the sprite graphic data: 0xbf
  defb $50                ; Minimum pixel y-coordinate: 40
  defb $d0                ; Maximum pixel y-coordinate: 104
; The following entity definition (0x03) is used in The Security Guard, I'm
; sure I've seen this before.. and Up on the Battlements.
ENTITY3:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %00101010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $a0                ; Initial pixel y-coordinate: 80
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $bf                ; Page containing the sprite graphic data: 0xbf
  defb $58                ; Minimum pixel y-coordinate: 44
  defb $d0                ; Maximum pixel y-coordinate: 104
; The following entity definition (0x04) is used in The Security Guard, Rescue
; Esmerelda, I'm sure I've seen this before.. and Up on the Battlements.
ENTITY4:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %00100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $60                ; Initial pixel y-coordinate: 48
  defb $08                ; Initial pixel y-coordinate increment: 4 (moving
                          ; down)
  defb $bf                ; Page containing the sprite graphic data: 0xbf
  defb $60                ; Minimum pixel y-coordinate: 48
  defb $c0                ; Maximum pixel y-coordinate: 96
; The following entity definition (0x05) is used in I'm sure I've seen this
; before.. and Up on the Battlements.
ENTITY5:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %00100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $40                ; Initial pixel y-coordinate: 32
  defb $0c                ; Initial pixel y-coordinate increment: 6 (moving
                          ; down)
  defb $bf                ; Page containing the sprite graphic data: 0xbf
  defb $40                ; Minimum pixel y-coordinate: 32
  defb $c0                ; Maximum pixel y-coordinate: 96
; The following entity definition (0x06) is used in At the Foot of the
; MegaTree.
ENTITY6:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %00100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $40                ; Initial pixel y-coordinate: 32
  defb $0a                ; Initial pixel y-coordinate increment: 5 (moving
                          ; down)
  defb $bf                ; Page containing the sprite graphic data: 0xbf
  defb $40                ; Minimum pixel y-coordinate: 32
  defb $b0                ; Maximum pixel y-coordinate: 88
; The following entity definition (0x07) is used in At the Foot of the MegaTree
; and Above the West Bedroom.
ENTITY7:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %01100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $64                ; Initial pixel y-coordinate: 50
  defb $f4                ; Initial pixel y-coordinate increment: -6 (moving
                          ; up)
  defb $bf                ; Page containing the sprite graphic data: 0xbf
  defb $20                ; Minimum pixel y-coordinate: 16
  defb $a0                ; Maximum pixel y-coordinate: 80
; The following entity definition (0x08) is used in At the Foot of the
; MegaTree.
ENTITY8:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %01101010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $80                ; Initial pixel y-coordinate: 64
  defb $06                ; Initial pixel y-coordinate increment: 3 (moving
                          ; down)
  defb $bf                ; Page containing the sprite graphic data: 0xbf
  defb $26                ; Minimum pixel y-coordinate: 19
  defb $b0                ; Maximum pixel y-coordinate: 88
; The following entity definition (0x09) is used in Inside the MegaTrunk and On
; a Branch Over the Drive.
ENTITY9:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %00101011          ; INK 3 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $a0                ; Initial pixel y-coordinate: 80
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $bf                ; Page containing the sprite graphic data: 0xbf
  defb $80                ; Minimum pixel y-coordinate: 64
  defb $e0                ; Maximum pixel y-coordinate: 112
; The following entity definition (0x0a) is used in The Off Licence.
ENTITY10:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01101101          ; INK 5 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $60                ; Initial pixel y-coordinate: 48
  defb $08                ; Initial pixel y-coordinate increment: 4 (moving
                          ; down)
  defb $be                ; Page containing the sprite graphic data: 0xbe
  defb $10                ; Minimum pixel y-coordinate: 8
  defb $d0                ; Maximum pixel y-coordinate: 104
; The following entity definition (0x0b) is used in Dr Jones will never believe
; this and Nomen Luni.
ENTITY11:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $c0                ; Initial pixel y-coordinate: 96
  defb $f6                ; Initial pixel y-coordinate increment: -5 (moving
                          ; up)
  defb $bf                ; Page containing the sprite graphic data: 0xbf
  defb $70                ; Minimum pixel y-coordinate: 56
  defb $c0                ; Maximum pixel y-coordinate: 96
; The following entity definition (0x0c) is used in The Off Licence.
ENTITY12:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $70                ; Pixel y-coordinate: 56
  defb $01                ; Unused
  defb $be                ; Page containing the sprite graphic data: 0xbe
  defb $13                ; Minimum x-coordinate: 19
  defb $1d                ; Maximum x-coordinate: 29
; The following entity definition (0x0d) is used in Rescue Esmerelda, I'm sure
; I've seen this before.. and We must perform a Quirkafleeg.
ENTITY13:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $40                ; Pixel y-coordinate: 32
  defb $00                ; Unused
  defb $bc                ; Page containing the sprite graphic data: 0xbc
  defb $00                ; Minimum x-coordinate: 0
  defb $09                ; Maximum x-coordinate: 9
; The following entity definition (0x0e) is used in The Bridge.
ENTITY14:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01101100          ; INK 4 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $30                ; Initial pixel y-coordinate: 24
  defb $0c                ; Initial pixel y-coordinate increment: 6 (moving
                          ; down)
  defb $b9                ; Page containing the sprite graphic data: 0xb9
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $c0                ; Maximum pixel y-coordinate: 96
; The following entity definition (0x0f) is used in Rescue Esmerelda.
ENTITY15:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %00100111          ; INK 7 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $10                ; Initial pixel y-coordinate: 8
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $b0                ; Page containing the sprite graphic data: 0xb0
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $20                ; Maximum pixel y-coordinate: 16
; The following entity definition (0x10) is used in Entrance to Hades, The
; Chapel and Priests' Hole.
ENTITY16:
  defb %00000010          ; Vertical guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %00000100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 000 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $60                ; Initial pixel y-coordinate: 48
  defb $02                ; Initial pixel y-coordinate increment: 1 (moving
                          ; down)
  defb $ba                ; Page containing the sprite graphic data: 0xba
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $b0                ; Maximum pixel y-coordinate: 88
; The following entity definition (0x11) is used in Entrance to Hades, The
; Chapel and Priests' Hole.
ENTITY17:
  defb %00000010          ; Vertical guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %00000100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 000 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $60                ; Initial pixel y-coordinate: 48
  defb $02                ; Initial pixel y-coordinate increment: 1 (moving
                          ; down)
  defb $ba                ; Page containing the sprite graphic data: 0xba
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $b0                ; Maximum pixel y-coordinate: 88
; The following entity definition (0x12) is used in Entrance to Hades, The
; Chapel and Priests' Hole.
ENTITY18:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %00100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $80                ; Initial pixel y-coordinate: 64
  defb $02                ; Initial pixel y-coordinate increment: 1 (moving
                          ; down)
  defb $ba                ; Page containing the sprite graphic data: 0xba
  defb $20                ; Minimum pixel y-coordinate: 16
  defb $d0                ; Maximum pixel y-coordinate: 104
; The following entity definition (0x13) is used in Ballroom East and Top
; Landing.
ENTITY19:
  defb %00000010          ; Vertical guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %00001010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 000 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $20                ; Initial pixel y-coordinate: 16
  defb $02                ; Initial pixel y-coordinate increment: 1 (moving
                          ; down)
  defb $9c                ; Page containing the sprite graphic data: 0x9c
  defb $20                ; Minimum pixel y-coordinate: 16
  defb $60                ; Maximum pixel y-coordinate: 48
; The following entity definition (0x14) is used in The Bridge and West  Wing.
ENTITY20:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11101010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $a0                ; Pixel y-coordinate: 80
  defb $00                ; Unused
  defb $bc                ; Page containing the sprite graphic data: 0xbc
  defb $00                ; Minimum x-coordinate: 0
  defb $0a                ; Maximum x-coordinate: 10
; The following entity definition (0x15) is used in The Bridge, The Drive and
; Ballroom East.
ENTITY21:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %11100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $a0                ; Pixel y-coordinate: 80
  defb $00                ; Unused
  defb $bc                ; Page containing the sprite graphic data: 0xbc
  defb $0e                ; Minimum x-coordinate: 14
  defb $1d                ; Maximum x-coordinate: 29
; The following entity definition (0x16) is used in The Drive and Inside the
; MegaTrunk.
ENTITY22:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $b0                ; Pixel y-coordinate: 88
  defb $01                ; Unused
  defb $bc                ; Page containing the sprite graphic data: 0xbc
  defb $10                ; Minimum x-coordinate: 16
  defb $1d                ; Maximum x-coordinate: 29
; The following entity definition (0x17) is used in The Drive.
ENTITY23:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $80                ; Pixel y-coordinate: 64
  defb $00                ; Unused
  defb $bc                ; Page containing the sprite graphic data: 0xbc
  defb $05                ; Minimum x-coordinate: 5
  defb $1d                ; Maximum x-coordinate: 29
; The following entity definition (0x18) is used in The Drive, Inside the
; MegaTrunk and Tree Top.
ENTITY24:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11101101          ; INK 5 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $50                ; Pixel y-coordinate: 40
  defb $00                ; Unused
  defb $bc                ; Page containing the sprite graphic data: 0xbc
  defb $00                ; Minimum x-coordinate: 0
  defb $0a                ; Maximum x-coordinate: 10
; The following entity definition (0x19) is used in Out on a limb.
ENTITY25:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11101011          ; INK 3 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $70                ; Pixel y-coordinate: 56
  defb $00                ; Unused
  defb $bc                ; Page containing the sprite graphic data: 0xbc
  defb $0e                ; Minimum x-coordinate: 14
  defb $17                ; Maximum x-coordinate: 23
; The following entity definition (0x1a) is used in Under the MegaTree, The
; Hall, Tree Top and Emergency Generator.
ENTITY26:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11101010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $30                ; Pixel y-coordinate: 24
  defb $00                ; Unused
  defb $b6                ; Page containing the sprite graphic data: 0xb6
  defb $05                ; Minimum x-coordinate: 5
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x1b) is used in On a Branch Over the Drive,
; Orangery, Dr Jones will never believe this and The Yacht.
ENTITY27:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01101010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $90                ; Initial pixel y-coordinate: 72
  defb $fc                ; Initial pixel y-coordinate increment: -2 (moving
                          ; up)
  defb $b2                ; Page containing the sprite graphic data: 0xb2
  defb $80                ; Minimum pixel y-coordinate: 64
  defb $d0                ; Maximum pixel y-coordinate: 104
; The following entity definition (0x1c) is used in Under the Drive and West
; Wing Roof.
ENTITY28:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $b0                ; Pixel y-coordinate: 88
  defb $00                ; Unused
  defb $bc                ; Page containing the sprite graphic data: 0xbc
  defb $0c                ; Minimum x-coordinate: 12
  defb $1d                ; Maximum x-coordinate: 29
; The following entity definition (0x1d) is used in On top of the house, Under
; the Drive, Nomen Luni and Back Stairway.
ENTITY29:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $30                ; Initial pixel y-coordinate: 24
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $b2                ; Page containing the sprite graphic data: 0xb2
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $80                ; Maximum pixel y-coordinate: 64
; The following entity definition (0x1e) is used in Tree Root and West Bedroom.
ENTITY30:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %11100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $40                ; Initial pixel y-coordinate: 32
  defb $fc                ; Initial pixel y-coordinate increment: -2 (moving
                          ; up)
  defb $ad                ; Page containing the sprite graphic data: 0xad
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $80                ; Maximum pixel y-coordinate: 64
; The following entity definition (0x1f) is used in Tree Root.
ENTITY31:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %00100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $90                ; Initial pixel y-coordinate: 72
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $b7                ; Page containing the sprite graphic data: 0xb7
  defb $40                ; Minimum pixel y-coordinate: 32
  defb $a0                ; Maximum pixel y-coordinate: 80
; The following entity definition (0x20) is used in Under the MegaTree.
ENTITY32:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $d0                ; Pixel y-coordinate: 104
  defb $01                ; Unused
  defb $b8                ; Page containing the sprite graphic data: 0xb8
  defb $00                ; Minimum x-coordinate: 0
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x21) is used in Ballroom West.
ENTITY33:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $b0                ; Pixel y-coordinate: 88
  defb $00                ; Unused
  defb $b8                ; Page containing the sprite graphic data: 0xb8
  defb $10                ; Minimum x-coordinate: 16
  defb $1a                ; Maximum x-coordinate: 26
; The following entity definition (0x22) is used in On the Roof.
ENTITY34:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %11100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $d0                ; Pixel y-coordinate: 104
  defb $01                ; Unused
  defb $b8                ; Page containing the sprite graphic data: 0xb8
  defb $0e                ; Minimum x-coordinate: 14
  defb $18                ; Maximum x-coordinate: 24
; The following entity definition (0x23) is used in Tree Root.
ENTITY35:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %11101010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $90                ; Pixel y-coordinate: 72
  defb $00                ; Unused
  defb $b8                ; Page containing the sprite graphic data: 0xb8
  defb $0f                ; Minimum x-coordinate: 15
  defb $17                ; Maximum x-coordinate: 23
; The following entity definition (0x24) is used in The Drive, Top Landing and
; Back Stairway.
ENTITY36:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %01100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $d0                ; Pixel y-coordinate: 104
  defb $00                ; Unused
  defb $af                ; Page containing the sprite graphic data: 0xaf
  defb $0a                ; Minimum x-coordinate: 10
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x25) is used in Priests' Hole.
ENTITY37:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11101010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $a0                ; Pixel y-coordinate: 80
  defb $00                ; Unused
  defb $bc                ; Page containing the sprite graphic data: 0xbc
  defb $08                ; Minimum x-coordinate: 8
  defb $18                ; Maximum x-coordinate: 24
; The following entity definition (0x26) is used in Halfway up the East Wall.
ENTITY38:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01101110          ; INK 6 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $60                ; Pixel y-coordinate: 48
  defb $00                ; Unused
  defb $ae                ; Page containing the sprite graphic data: 0xae
  defb $02                ; Minimum x-coordinate: 2
  defb $07                ; Maximum x-coordinate: 7
; The following entity definition (0x27) is used in Cuckoo's Nest and Under the
; Roof.
ENTITY39:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $80                ; Pixel y-coordinate: 64
  defb $00                ; Unused
  defb $af                ; Page containing the sprite graphic data: 0xaf
  defb $0c                ; Minimum x-coordinate: 12
  defb $12                ; Maximum x-coordinate: 18
; The following entity definition (0x28) is used in Ballroom East, Ballroom
; West and Tree Root.
ENTITY40:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01000101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 010 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $70                ; Initial pixel y-coordinate: 56
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $ba                ; Page containing the sprite graphic data: 0xba
  defb $60                ; Minimum pixel y-coordinate: 48
  defb $c0                ; Maximum pixel y-coordinate: 96
; The following entity definition (0x29) is used in Ballroom East.
ENTITY41:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $96                ; Initial pixel y-coordinate: 75
  defb $02                ; Initial pixel y-coordinate increment: 1 (moving
                          ; down)
  defb $ba                ; Page containing the sprite graphic data: 0xba
  defb $90                ; Minimum pixel y-coordinate: 72
  defb $c0                ; Maximum pixel y-coordinate: 96
; The following entity definition (0x2a) is used in Under the MegaTree,
; Ballroom East and Ballroom West.
ENTITY42:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01001011          ; INK 3 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 010 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $90                ; Initial pixel y-coordinate: 72
  defb $fa                ; Initial pixel y-coordinate increment: -3 (moving
                          ; up)
  defb $ba                ; Page containing the sprite graphic data: 0xba
  defb $60                ; Minimum pixel y-coordinate: 48
  defb $ae                ; Maximum pixel y-coordinate: 87
; The following entity definition (0x2b) is not used.
ENTITY43:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %01001010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 010 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $b0                ; Initial pixel y-coordinate: 88
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $ba                ; Page containing the sprite graphic data: 0xba
  defb $90                ; Minimum pixel y-coordinate: 72
  defb $b8                ; Maximum pixel y-coordinate: 92
; The following entity definition (0x2c) is used in The Off Licence and Inside
; the MegaTrunk.
ENTITY44:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01001010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 010 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $40                ; Initial pixel y-coordinate: 32
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $ba                ; Page containing the sprite graphic data: 0xba
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $d0                ; Maximum pixel y-coordinate: 104
; The following entity definition (0x2d) is used in Out on a limb and East Wall
; Base.
ENTITY45:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01000101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 010 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $b0                ; Initial pixel y-coordinate: 88
  defb $08                ; Initial pixel y-coordinate increment: 4 (moving
                          ; down)
  defb $ba                ; Page containing the sprite graphic data: 0xba
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $d0                ; Maximum pixel y-coordinate: 104
; The following entity definition (0x2e) is used in Tree Top.
ENTITY46:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $a0                ; Pixel y-coordinate: 80
  defb $00                ; Unused
  defb $bb                ; Page containing the sprite graphic data: 0xbb
  defb $00                ; Minimum x-coordinate: 0
  defb $13                ; Maximum x-coordinate: 19
; The following entity definition (0x2f) is used in Inside the MegaTrunk.
ENTITY47:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01101110          ; INK 6 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $30                ; Pixel y-coordinate: 24
  defb $00                ; Unused
  defb $bb                ; Page containing the sprite graphic data: 0xbb
  defb $11                ; Minimum x-coordinate: 17
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x30) is used in The Kitchen and West of
; Kitchen.
ENTITY48:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %00101011          ; INK 3 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $40                ; Initial pixel y-coordinate: 32
  defb $06                ; Initial pixel y-coordinate increment: 3 (moving
                          ; down)
  defb $b7                ; Page containing the sprite graphic data: 0xb7
  defb $10                ; Minimum pixel y-coordinate: 8
  defb $d0                ; Maximum pixel y-coordinate: 104
; The following entity definition (0x31) is used in The Kitchen and West of
; Kitchen.
ENTITY49:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %00100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $c0                ; Initial pixel y-coordinate: 96
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $b7                ; Page containing the sprite graphic data: 0xb7
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $d0                ; Maximum pixel y-coordinate: 104
; The following entity definition (0x32) is used in The Kitchen and West of
; Kitchen.
ENTITY50:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %00100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $80                ; Initial pixel y-coordinate: 64
  defb $f8                ; Initial pixel y-coordinate increment: -4 (moving
                          ; up)
  defb $b7                ; Page containing the sprite graphic data: 0xb7
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $d0                ; Maximum pixel y-coordinate: 104
; The following entity definition (0x33) is used in West Bedroom and Above the
; West Bedroom.
ENTITY51:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %00101010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $30                ; Initial pixel y-coordinate: 24
  defb $02                ; Initial pixel y-coordinate increment: 1 (moving
                          ; down)
  defb $b7                ; Page containing the sprite graphic data: 0xb7
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $a0                ; Maximum pixel y-coordinate: 80
; The following entity definition (0x34) is used in The Wine Cellar, Tool  Shed
; and West Wing Roof.
ENTITY52:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $d0                ; Pixel y-coordinate: 104
  defb $00                ; Unused
  defb $b5                ; Page containing the sprite graphic data: 0xb5
  defb $07                ; Minimum x-coordinate: 7
  defb $16                ; Maximum x-coordinate: 22
; The following entity definition (0x35) is used in At the Foot of the MegaTree
; and The Yacht.
ENTITY53:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11101011          ; INK 3 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $d0                ; Pixel y-coordinate: 104
  defb $00                ; Unused
  defb $b5                ; Page containing the sprite graphic data: 0xb5
  defb $04                ; Minimum x-coordinate: 4
  defb $0e                ; Maximum x-coordinate: 14
; The following entity definition (0x36) is used in Cold Store.
ENTITY54:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $d0                ; Pixel y-coordinate: 104
  defb $00                ; Unused
  defb $bd                ; Page containing the sprite graphic data: 0xbd
  defb $00                ; Minimum x-coordinate: 0
  defb $18                ; Maximum x-coordinate: 24
; The following entity definition (0x37) is used in Cold Store and Under the
; Roof.
ENTITY55:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %01100111          ; INK 7 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $90                ; Pixel y-coordinate: 72
  defb $00                ; Unused
  defb $bb                ; Page containing the sprite graphic data: 0xbb
  defb $00                ; Minimum x-coordinate: 0
  defb $05                ; Maximum x-coordinate: 5
; The following entity definition (0x38) is used in Cold Store.
ENTITY56:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %11100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $60                ; Pixel y-coordinate: 48
  defb $00                ; Unused
  defb $bd                ; Page containing the sprite graphic data: 0xbd
  defb $00                ; Minimum x-coordinate: 0
  defb $06                ; Maximum x-coordinate: 6
; The following entity definition (0x39) is used in Cold Store.
ENTITY57:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %01100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $30                ; Pixel y-coordinate: 24
  defb $00                ; Unused
  defb $bb                ; Page containing the sprite graphic data: 0xbb
  defb $00                ; Minimum x-coordinate: 0
  defb $09                ; Maximum x-coordinate: 9
; The following entity definition (0x3a) is used in Top Landing.
ENTITY58:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01100111          ; INK 7 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $40                ; Initial pixel y-coordinate: 32
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $ad                ; Page containing the sprite graphic data: 0xad
  defb $20                ; Minimum pixel y-coordinate: 16
  defb $d0                ; Maximum pixel y-coordinate: 104
; The following entity definition (0x3b) is used in The Bathroom.
ENTITY59:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $30                ; Pixel y-coordinate: 24
  defb $00                ; Unused
  defb $b9                ; Page containing the sprite graphic data: 0xb9
  defb $00                ; Minimum x-coordinate: 0
  defb $1b                ; Maximum x-coordinate: 27
; The following entity definition (0x3c) is used in Cuckoo's Nest, On a Branch
; Over the Drive, The Hall, I'm sure I've seen this before.., We must perform a
; Quirkafleeg, Orangery, The Attic, Under the Roof, West Wing Roof and The
; Beach.
ENTITY60:
  defb %10000100          ; Arrow (bits 0-2), flying left to right (bit 7)
  defb $06                ; Unused
  defb $00                ; Replaced by the y-coordinate (copied from the
                          ; second byte of the entity specification in the room
                          ; definition)
  defb $00                ; Unused
  defb $d0                ; Initial x-coordinate: 208
  defb $00                ; Unused
  defb %10000010          ; Top/bottom pixel row (drawn either side of the
                          ; shaft)
  defb $00                ; Unused
; The following entity definition (0x3d) is used in On a Branch Over the Drive
; and Conservatory Roof.
ENTITY61:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %01100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $50                ; Pixel y-coordinate: 40
  defb $00                ; Unused
  defb $ad                ; Page containing the sprite graphic data: 0xad
  defb $10                ; Minimum x-coordinate: 16
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x3e) is used in On a Branch Over the Drive.
ENTITY62:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %01100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $60                ; Initial pixel y-coordinate: 48
  defb $02                ; Initial pixel y-coordinate increment: 1 (moving
                          ; down)
  defb $b9                ; Page containing the sprite graphic data: 0xb9
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $70                ; Maximum pixel y-coordinate: 56
; The following entity definition (0x3f) is not used.
  defb $ff,$00,$00,$00,$00,$00,$00,$00
; The following entity definition (0x40) is used in The Wine Cellar.
ENTITY64:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $30                ; Pixel y-coordinate: 24
  defb $00                ; Unused
  defb $b4                ; Page containing the sprite graphic data: 0xb4
  defb $00                ; Minimum x-coordinate: 0
  defb $1b                ; Maximum x-coordinate: 27
; The following entity definition (0x41) is used in The Wine Cellar.
ENTITY65:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %11100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $60                ; Pixel y-coordinate: 48
  defb $00                ; Unused
  defb $b4                ; Page containing the sprite graphic data: 0xb4
  defb $04                ; Minimum x-coordinate: 4
  defb $1b                ; Maximum x-coordinate: 27
; The following entity definition (0x42) is used in The Wine Cellar.
ENTITY66:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $90                ; Pixel y-coordinate: 72
  defb $00                ; Unused
  defb $b4                ; Page containing the sprite graphic data: 0xb4
  defb $02                ; Minimum x-coordinate: 2
  defb $1b                ; Maximum x-coordinate: 27
; The following entity definition (0x43) is used in First Landing.
ENTITY67:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %11100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $c0                ; Pixel y-coordinate: 96
  defb $00                ; Unused
  defb $b4                ; Page containing the sprite graphic data: 0xb4
  defb $18                ; Minimum x-coordinate: 24
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x44) is used in Under the Drive.
ENTITY68:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $80                ; Pixel y-coordinate: 64
  defb $00                ; Unused
  defb $ae                ; Page containing the sprite graphic data: 0xae
  defb $15                ; Minimum x-coordinate: 21
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x45) is used in The Hall, Tree Top, I'm
; sure I've seen this before.., Up on the Battlements, A bit of tree and The
; Attic.
ENTITY69:
  defb %00000100          ; Arrow (bits 0-2), flying right to left (bit 7)
  defb $06                ; Unused
  defb $00                ; Replaced by the y-coordinate (copied from the
                          ; second byte of the entity specification in the room
                          ; definition)
  defb $00                ; Unused
  defb $1c                ; Initial x-coordinate: 28
  defb $00                ; Unused
  defb %01000001          ; Top/bottom pixel row (drawn either side of the
                          ; shaft)
  defb $00                ; Unused
; The following entity definition (0x46) is used in The Nightmare Room.
ENTITY70:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $40                ; Initial pixel y-coordinate: 32
  defb $fc                ; Initial pixel y-coordinate increment: -2 (moving
                          ; up)
  defb $9c                ; Page containing the sprite graphic data: 0x9c
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $a0                ; Maximum pixel y-coordinate: 80
; The following entity definition (0x47) is used in The Nightmare Room.
ENTITY71:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %00100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $20                ; Initial pixel y-coordinate: 16
  defb $02                ; Initial pixel y-coordinate increment: 1 (moving
                          ; down)
  defb $9c                ; Page containing the sprite graphic data: 0x9c
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $d0                ; Maximum pixel y-coordinate: 104
; The following entity definition (0x48) is used in The Nightmare Room.
ENTITY72:
  defb %00010010          ; Vertical guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %00000110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 000 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $90                ; Initial pixel y-coordinate: 72
  defb $06                ; Initial pixel y-coordinate increment: 3 (moving
                          ; down)
  defb $9c                ; Page containing the sprite graphic data: 0x9c
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $c0                ; Maximum pixel y-coordinate: 96
; The following entity definition (0x49) is used in The Nightmare Room.
ENTITY73:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01101010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $80                ; Initial pixel y-coordinate: 64
  defb $f8                ; Initial pixel y-coordinate increment: -4 (moving
                          ; up)
  defb $9c                ; Page containing the sprite graphic data: 0x9c
  defb $10                ; Minimum pixel y-coordinate: 8
  defb $d0                ; Maximum pixel y-coordinate: 104
; The following entity definition (0x4a) is used in The Forgotten Abbey.
ENTITY74:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %11100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $50                ; Pixel y-coordinate: 40
  defb $00                ; Unused
  defb $b4                ; Page containing the sprite graphic data: 0xb4
  defb $04                ; Minimum x-coordinate: 4
  defb $14                ; Maximum x-coordinate: 20
; The following entity definition (0x4b) is used in The Forgotten Abbey.
ENTITY75:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %11100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $50                ; Pixel y-coordinate: 40
  defb $00                ; Unused
  defb $b4                ; Page containing the sprite graphic data: 0xb4
  defb $0c                ; Minimum x-coordinate: 12
  defb $1c                ; Maximum x-coordinate: 28
; The following entity definition (0x4c) is used in The Forgotten Abbey.
ENTITY76:
  defb %00100001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 1 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11101010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $90                ; Pixel y-coordinate: 72
  defb $00                ; Unused
  defb $b4                ; Page containing the sprite graphic data: 0xb4
  defb $09                ; Minimum x-coordinate: 9
  defb $14                ; Maximum x-coordinate: 20
; The following entity definition (0x4d) is used in The Forgotten Abbey.
ENTITY77:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %11100111          ; INK 7 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $90                ; Pixel y-coordinate: 72
  defb $00                ; Unused
  defb $b4                ; Page containing the sprite graphic data: 0xb4
  defb $16                ; Minimum x-coordinate: 22
  defb $1b                ; Maximum x-coordinate: 27
; The following entity definition (0x4e) is used in The Forgotten Abbey and
; Swimming Pool.
ENTITY78:
  defb %00100001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 1 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $d0                ; Pixel y-coordinate: 104
  defb $00                ; Unused
  defb $b4                ; Page containing the sprite graphic data: 0xb4
  defb $05                ; Minimum x-coordinate: 5
  defb $0c                ; Maximum x-coordinate: 12
; The following entity definition (0x4f) is used in The Forgotten Abbey.
ENTITY79:
  defb %01000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 2 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11101001          ; INK 1 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $d0                ; Pixel y-coordinate: 104
  defb $00                ; Unused
  defb $b4                ; Page containing the sprite graphic data: 0xb4
  defb $0b                ; Minimum x-coordinate: 11
  defb $12                ; Maximum x-coordinate: 18
; The following entity definition (0x50) is used in The Forgotten Abbey.
ENTITY80:
  defb %01100001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 3 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $d0                ; Pixel y-coordinate: 104
  defb $00                ; Unused
  defb $b4                ; Page containing the sprite graphic data: 0xb4
  defb $10                ; Minimum x-coordinate: 16
  defb $17                ; Maximum x-coordinate: 23
; The following entity definition (0x51) is used in The Forgotten Abbey.
ENTITY81:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100010          ; INK 2 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $d0                ; Pixel y-coordinate: 104
  defb $00                ; Unused
  defb $b4                ; Page containing the sprite graphic data: 0xb4
  defb $17                ; Minimum x-coordinate: 23
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x52) is used in The Attic.
ENTITY82:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %00100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $84                ; Initial pixel y-coordinate: 66
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $b0                ; Page containing the sprite graphic data: 0xb0
  defb $70                ; Minimum pixel y-coordinate: 56
  defb $b0                ; Maximum pixel y-coordinate: 88
; The following entity definition (0x53) is used in The Attic.
ENTITY83:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %00100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $8c                ; Initial pixel y-coordinate: 70
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $b0                ; Page containing the sprite graphic data: 0xb0
  defb $70                ; Minimum pixel y-coordinate: 56
  defb $b0                ; Maximum pixel y-coordinate: 88
; The following entity definition (0x54) is used in The Attic.
ENTITY84:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %00101001          ; INK 1 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $94                ; Initial pixel y-coordinate: 74
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $b0                ; Page containing the sprite graphic data: 0xb0
  defb $70                ; Minimum pixel y-coordinate: 56
  defb $b0                ; Maximum pixel y-coordinate: 88
; The following entity definition (0x55) is used in The Attic.
ENTITY85:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %00100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $9c                ; Initial pixel y-coordinate: 78
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $b0                ; Page containing the sprite graphic data: 0xb0
  defb $70                ; Minimum pixel y-coordinate: 56
  defb $b0                ; Maximum pixel y-coordinate: 88
; The following entity definition (0x56) is used in The Attic.
ENTITY86:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %00100010          ; INK 2 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $a4                ; Initial pixel y-coordinate: 82
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $b0                ; Page containing the sprite graphic data: 0xb0
  defb $70                ; Minimum pixel y-coordinate: 56
  defb $b0                ; Maximum pixel y-coordinate: 88
; The following entity definition (0x57) is used in The Attic.
ENTITY87:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %00100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $ac                ; Initial pixel y-coordinate: 86
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $b0                ; Page containing the sprite graphic data: 0xb0
  defb $70                ; Minimum pixel y-coordinate: 56
  defb $b0                ; Maximum pixel y-coordinate: 88
; The following entity definition (0x58) is used in Out on a limb and The
; Banyan Tree.
ENTITY88:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $a0                ; Pixel y-coordinate: 80
  defb $00                ; Unused
  defb $b5                ; Page containing the sprite graphic data: 0xb5
  defb $13                ; Minimum x-coordinate: 19
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x59) is used in The Hall and West  Wing.
ENTITY89:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %00100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 001 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $60                ; Initial pixel y-coordinate: 48
  defb $00                ; Initial pixel y-coordinate increment: 0 (not
                          ; moving)
  defb $b0                ; Page containing the sprite graphic data: 0xb0
  defb $50                ; Minimum pixel y-coordinate: 40
  defb $70                ; Maximum pixel y-coordinate: 56
; The following entity definition (0x5a) is used in To the Kitchens    Main
; Stairway.
ENTITY90:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %01100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $30                ; Pixel y-coordinate: 24
  defb $00                ; Unused
  defb $ae                ; Page containing the sprite graphic data: 0xae
  defb $00                ; Minimum x-coordinate: 0
  defb $0b                ; Maximum x-coordinate: 11
; The following entity definition (0x5b) is used in To the Kitchens    Main
; Stairway.
ENTITY91:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $30                ; Pixel y-coordinate: 24
  defb $00                ; Unused
  defb $be                ; Page containing the sprite graphic data: 0xbe
  defb $0d                ; Minimum x-coordinate: 13
  defb $15                ; Maximum x-coordinate: 21
; The following entity definition (0x5c) is used in To the Kitchens    Main
; Stairway and Back Stairway.
ENTITY92:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01100111          ; INK 7 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $01                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $60                ; Pixel y-coordinate: 48
  defb $00                ; Unused
  defb $b7                ; Page containing the sprite graphic data: 0xb7
  defb $0c                ; Minimum x-coordinate: 12
  defb $18                ; Maximum x-coordinate: 24
; The following entity definition (0x5d) is used in To the Kitchens    Main
; Stairway.
ENTITY93:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %01100010          ; INK 2 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $90                ; Pixel y-coordinate: 72
  defb $00                ; Unused
  defb $b9                ; Page containing the sprite graphic data: 0xb9
  defb $02                ; Minimum x-coordinate: 2
  defb $06                ; Maximum x-coordinate: 6
; The following entity definition (0x5e) is used in To the Kitchens    Main
; Stairway.
ENTITY94:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $c0                ; Pixel y-coordinate: 96
  defb $00                ; Unused
  defb $af                ; Page containing the sprite graphic data: 0xaf
  defb $00                ; Minimum x-coordinate: 0
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x5f) is used in The Hall and To the
; Kitchens    Main Stairway.
ENTITY95:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $a0                ; Pixel y-coordinate: 80
  defb $00                ; Unused
  defb $bc                ; Page containing the sprite graphic data: 0xbc
  defb $09                ; Minimum x-coordinate: 9
  defb $11                ; Maximum x-coordinate: 17
; The following entity definition (0x60) is used in East Wall Base.
ENTITY96:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %01101010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $90                ; Initial pixel y-coordinate: 72
  defb $fc                ; Initial pixel y-coordinate increment: -2 (moving
                          ; up)
  defb $ac                ; Page containing the sprite graphic data: 0xac
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $c0                ; Maximum pixel y-coordinate: 96
; The following entity definition (0x61) is used in Orangery and West  Wing.
ENTITY97:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $40                ; Initial pixel y-coordinate: 32
  defb $08                ; Initial pixel y-coordinate increment: 4 (moving
                          ; down)
  defb $ac                ; Page containing the sprite graphic data: 0xac
  defb $00                ; Minimum pixel y-coordinate: 0
  defb $c0                ; Maximum pixel y-coordinate: 96
; The following entity definition (0x62) is used in Tool  Shed.
ENTITY98:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %01100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $90                ; Pixel y-coordinate: 72
  defb $00                ; Unused
  defb $af                ; Page containing the sprite graphic data: 0xaf
  defb $07                ; Minimum x-coordinate: 7
  defb $14                ; Maximum x-coordinate: 20
; The following entity definition (0x63) is used in Tool  Shed.
ENTITY99:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $60                ; Pixel y-coordinate: 48
  defb $00                ; Unused
  defb $ad                ; Page containing the sprite graphic data: 0xad
  defb $07                ; Minimum x-coordinate: 7
  defb $11                ; Maximum x-coordinate: 17
; The following entity definition (0x64) is used in The Chapel and The Banyan
; Tree.
ENTITY100:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $80                ; Initial pixel y-coordinate: 64
  defb $fe                ; Initial pixel y-coordinate increment: -1 (moving
                          ; up)
  defb $ac                ; Page containing the sprite graphic data: 0xac
  defb $70                ; Minimum pixel y-coordinate: 56
  defb $a0                ; Maximum pixel y-coordinate: 80
; The following entity definition (0x65) is used in The Banyan Tree and A bit
; of tree.
ENTITY101:
  defb %00000010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every second pass (bit 4), initial
                          ; animation frame 0 (bits 5 and 6)
  defb %01101011          ; INK 3 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $60                ; Initial pixel y-coordinate: 48
  defb $04                ; Initial pixel y-coordinate increment: 2 (moving
                          ; down)
  defb $ab                ; Page containing the sprite graphic data: 0xab
  defb $50                ; Minimum pixel y-coordinate: 40
  defb $a0                ; Maximum pixel y-coordinate: 80
; The following entity definition (0x66) is used in The Chapel and The Banyan
; Tree.
ENTITY102:
  defb %00010010          ; Vertical guardian (bits 0-2), animation frame
                          ; updated on every pass (bit 4), initial animation
                          ; frame 0 (bits 5 and 6)
  defb %01100101          ; INK 5 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and x-coordinate
                          ; (copied from the second byte of the entity
                          ; specification in the room definition)
  defb $98                ; Initial pixel y-coordinate: 76
  defb $02                ; Initial pixel y-coordinate increment: 1 (moving
                          ; down)
  defb $ab                ; Page containing the sprite graphic data: 0xab
  defb $50                ; Minimum pixel y-coordinate: 40
  defb $a0                ; Maximum pixel y-coordinate: 80
; The following entity definition (0x67) is used in The Chapel.
ENTITY103:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $c0                ; Pixel y-coordinate: 96
  defb $00                ; Unused
  defb $b4                ; Page containing the sprite graphic data: 0xb4
  defb $00                ; Minimum x-coordinate: 0
  defb $0f                ; Maximum x-coordinate: 15
; The following entity definition (0x68) is used in A bit of tree and Nomen
; Luni.
ENTITY104:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $20                ; Pixel y-coordinate: 16
  defb $00                ; Unused
  defb $bc                ; Page containing the sprite graphic data: 0xbc
  defb $00                ; Minimum x-coordinate: 0
  defb $0a                ; Maximum x-coordinate: 10
; The following entity definition (0x69) is used in The Bow.
ENTITY105:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $30                ; Pixel y-coordinate: 24
  defb $00                ; Unused
  defb $be                ; Page containing the sprite graphic data: 0xbe
  defb $16                ; Minimum x-coordinate: 22
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x6a) is used in Conservatory Roof.
ENTITY106:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01101010          ; INK 2 (bits 0-2), BRIGHT 1 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $b0                ; Pixel y-coordinate: 88
  defb $00                ; Unused
  defb $ae                ; Page containing the sprite graphic data: 0xae
  defb $11                ; Minimum x-coordinate: 17
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x6b) is used in Nomen Luni.
ENTITY107:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %01100100          ; INK 4 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $30                ; Pixel y-coordinate: 24
  defb $00                ; Unused
  defb $be                ; Page containing the sprite graphic data: 0xbe
  defb $12                ; Minimum x-coordinate: 18
  defb $16                ; Maximum x-coordinate: 22
; The following entity definition (0x6c) is used in Watch Tower.
ENTITY108:
  defb %10000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving left to
                          ; right (bit 7)
  defb %01100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $90                ; Pixel y-coordinate: 72
  defb $00                ; Unused
  defb $bb                ; Page containing the sprite graphic data: 0xbb
  defb $0b                ; Minimum x-coordinate: 11
  defb $12                ; Maximum x-coordinate: 18
; The following entity definition (0x6d) is used in Watch Tower.
ENTITY109:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %11100110          ; INK 6 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 111 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $70                ; Pixel y-coordinate: 56
  defb $00                ; Unused
  defb $bc                ; Page containing the sprite graphic data: 0xbc
  defb $09                ; Minimum x-coordinate: 9
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x6e) is used in The Bow.
ENTITY110:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $d0                ; Pixel y-coordinate: 104
  defb $00                ; Unused
  defb $ae                ; Page containing the sprite graphic data: 0xae
  defb $11                ; Minimum x-coordinate: 17
  defb $1e                ; Maximum x-coordinate: 30
; The following entity definition (0x6f) is used in Cuckoo's Nest.
ENTITY111:
  defb %00000001          ; Horizontal guardian (bits 0-2), initial animation
                          ; frame 0 (bits 5 and 6), initially moving right to
                          ; left (bit 7)
  defb %01100011          ; INK 3 (bits 0-2), BRIGHT 0 (bit 3), animation frame
                          ; mask 011 (bits 5-7)
  defb $00                ; Replaced by the base sprite index and initial
                          ; x-coordinate (copied from the second byte of the
                          ; entity specification in the room definition)
  defb $b0                ; Pixel y-coordinate: 88
  defb $00                ; Unused
  defb $b5                ; Page containing the sprite graphic data: 0xb5
  defb $00                ; Minimum x-coordinate: 0
  defb $0b                ; Maximum x-coordinate: 11
; The next 15 entity definitions (0x70-0x7e) are unused.
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00
; The following entity definition (0x7f) - whose eighth byte is at FIRSTITEM -
; is copied into one of the entity buffers at ENTITYBUF for any entity
; specification whose first byte is 0x7f or 0xff; the first byte of the
; definition (0xff) serves to terminate the entity buffers.
ENTITY127:
  defb $ff,$00,$00,$00,$00,$00,$00

; Index of the first item
;
; Used by the routines at TITLESCREEN and DRAWITEMS.
FIRSTITEM:
  defb $ad

; Item table
;
; Used by the routines at TITLESCREEN and DRAWITEMS.
;
; The location of item N (0xad<=N<=0xff) is defined by the pair of bytes at
; addresses ITEMTABLE1+N and ITEMTABLE2+N. The meaning of the bits in each
; byte-pair is as follows:
;
; +--------+----------------------------------------------------+
; | Bit(s) | Meaning                                            |
; +--------+----------------------------------------------------+
; | 15     | Most significant bit of the y-coordinate           |
; | 14     | Collection flag (reset=collected, set=uncollected) |
; | 8-13   | Room number                                        |
; | 5-7    | Least significant bits of the y-coordinate         |
; | 0-4    | x-coordinate                                       |
; +--------+----------------------------------------------------+
ITEMTABLE1:
  defs $ad                ; Unused
  defb $b2                ; Item 0xad at (8,25) in Watch Tower
  defb $b2                ; Item 0xae at (9,10) in Watch Tower
  defb $b2                ; Item 0xaf at (9,20) in Watch Tower
  defb $b2                ; Item 0xb0 at (9,24) in Watch Tower
  defb $b8                ; Item 0xb1 at (14,9) in West Wing Roof
  defb $b8                ; Item 0xb2 at (13,19) in West Wing Roof
  defb $b8                ; Item 0xb3 at (11,27) in West Wing Roof
  defb $b8                ; Item 0xb4 at (10,6) in West Wing Roof
  defb $ab                ; Item 0xb5 at (8,31) in Conservatory Roof
  defb $ab                ; Item 0xb6 at (8,25) in Conservatory Roof
  defb $ab                ; Item 0xb7 at (8,28) in Conservatory Roof
  defb $ab                ; Item 0xb8 at (8,22) in Conservatory Roof
  defb $9f                ; Item 0xb9 at (11,4) in Swimming Pool
  defb $92                ; Item 0xba at (12,25) in On the Roof
  defb $0f                ; Item 0xbb at (4,31) in I'm sure I've seen this
                          ; before..
  defb $10                ; Item 0xbc at (4,31) in We must perform a
                          ; Quirkafleeg
  defb $11                ; Item 0xbd at (4,31) in Up on the Battlements
  defb $bc                ; Item 0xbe at (8,26) in The Bow
  defb $bb                ; Item 0xbf at (14,13) in The Yacht
  defb $ba                ; Item 0xc0 at (13,22) in The Beach
  defb $25                ; Item 0xc1 at (1,28) in Orangery
  defb $25                ; Item 0xc2 at (6,16) in Orangery
  defb $a5                ; Item 0xc3 at (13,6) in Orangery
  defb $1b                ; Item 0xc4 at (6,29) in The Chapel
  defb $b9                ; Item 0xc5 at (9,23) in Above the West Bedroom
  defb $ba                ; Item 0xc6 at (13,22) in The Beach
  defb $1c                ; Item 0xc7 at (3,26) in First Landing
  defb $a2                ; Item 0xc8 at (9,2) in Top Landing
  defb $19                ; Item 0xc9 at (2,3) in Cold Store
  defb $19                ; Item 0xca at (5,8) in Cold Store
  defb $99                ; Item 0xcb at (8,6) in Cold Store
  defb $99                ; Item 0xcc at (11,6) in Cold Store
  defb $b3                ; Item 0xcd at (14,7) in Tool  Shed
  defb $16                ; Item 0xce at (6,9) in To the Kitchens    Main
                          ; Stairway
  defb $96                ; Item 0xcf at (9,2) in To the Kitchens    Main
                          ; Stairway
  defb $28                ; Item 0xd0 at (7,19) in Dr Jones will never believe
                          ; this
  defb $8c                ; Item 0xd1 at (13,19) in Tree Top
  defb $0c                ; Item 0xd2 at (3,16) in Tree Top
  defb $0c                ; Item 0xd3 at (4,22) in Tree Top
  defb $89                ; Item 0xd4 at (11,5) in On a Branch Over the Drive
  defb $07                ; Item 0xd5 at (7,15) in Cuckoo's Nest
  defb $2e                ; Item 0xd6 at (3,10) in Tree Root
  defb $2e                ; Item 0xd7 at (4,29) in Tree Root
  defb $26                ; Item 0xd8 at (2,9) in Priests' Hole
  defb $95                ; Item 0xd9 at (12,17) in Ballroom West
  defb $95                ; Item 0xda at (12,18) in Ballroom West
  defb $95                ; Item 0xdb at (12,20) in Ballroom West
  defb $95                ; Item 0xdc at (12,22) in Ballroom West
  defb $95                ; Item 0xdd at (12,23) in Ballroom West
  defb $0e                ; Item 0xde at (2,26) in Rescue Esmerelda
  defb $0a                ; Item 0xdf at (4,11) in The Front Door
  defb $95                ; Item 0xe0 at (12,25) in Ballroom West
  defb $95                ; Item 0xe1 at (12,27) in Ballroom West
  defb $0e                ; Item 0xe2 at (3,26) in Rescue Esmerelda
  defb $0d                ; Item 0xe3 at (6,2) in Out on a limb
  defb $0d                ; Item 0xe4 at (1,5) in Out on a limb
  defb $2c                ; Item 0xe5 at (4,18) in On top of the house
  defb $13                ; Item 0xe6 at (3,2) in The Forgotten Abbey
  defb $83                ; Item 0xe7 at (11,1) in At the Foot of the MegaTree
  defb $83                ; Item 0xe8 at (10,4) in At the Foot of the MegaTree
  defb $83                ; Item 0xe9 at (11,7) in At the Foot of the MegaTree
  defb $31                ; Item 0xea at (4,28) in The Wine Cellar
  defb $31                ; Item 0xeb at (7,4) in The Wine Cellar
  defb $31                ; Item 0xec at (7,28) in The Wine Cellar
  defb $b1                ; Item 0xed at (10,2) in The Wine Cellar
  defb $b1                ; Item 0xee at (10,28) in The Wine Cellar
  defb $b1                ; Item 0xef at (13,4) in The Wine Cellar
  defb $00                ; Item 0xf0 at (4,19) in The Off Licence
  defb $00                ; Item 0xf1 at (4,20) in The Off Licence
  defb $00                ; Item 0xf2 at (4,21) in The Off Licence
  defb $00                ; Item 0xf3 at (4,22) in The Off Licence
  defb $00                ; Item 0xf4 at (4,23) in The Off Licence
  defb $00                ; Item 0xf5 at (4,24) in The Off Licence
  defb $00                ; Item 0xf6 at (4,25) in The Off Licence
  defb $00                ; Item 0xf7 at (4,26) in The Off Licence
  defb $00                ; Item 0xf8 at (4,27) in The Off Licence
  defb $00                ; Item 0xf9 at (4,28) in The Off Licence
  defb $00                ; Item 0xfa at (4,29) in The Off Licence
  defb $00                ; Item 0xfb at (4,30) in The Off Licence
  defb $02                ; Item 0xfc at (0,22) in Under the MegaTree
  defb $9d                ; Item 0xfd at (9,26) in The Nightmare Room
  defb $9e                ; Item 0xfe at (14,8) in The Banyan Tree
  defb $a1                ; Item 0xff at (13,23) in The Bathroom
ITEMTABLE2:
  defs $ad                ; Unused
  defb $19                ; Item 0xad at (8,25) in Watch Tower
  defb $2a                ; Item 0xae at (9,10) in Watch Tower
  defb $34                ; Item 0xaf at (9,20) in Watch Tower
  defb $38                ; Item 0xb0 at (9,24) in Watch Tower
  defb $c9                ; Item 0xb1 at (14,9) in West Wing Roof
  defb $b3                ; Item 0xb2 at (13,19) in West Wing Roof
  defb $7b                ; Item 0xb3 at (11,27) in West Wing Roof
  defb $46                ; Item 0xb4 at (10,6) in West Wing Roof
  defb $1f                ; Item 0xb5 at (8,31) in Conservatory Roof
  defb $19                ; Item 0xb6 at (8,25) in Conservatory Roof
  defb $1c                ; Item 0xb7 at (8,28) in Conservatory Roof
  defb $16                ; Item 0xb8 at (8,22) in Conservatory Roof
  defb $64                ; Item 0xb9 at (11,4) in Swimming Pool
  defb $99                ; Item 0xba at (12,25) in On the Roof
  defb $9f                ; Item 0xbb at (4,31) in I'm sure I've seen this
                          ; before..
  defb $9f                ; Item 0xbc at (4,31) in We must perform a
                          ; Quirkafleeg
  defb $9f                ; Item 0xbd at (4,31) in Up on the Battlements
  defb $1a                ; Item 0xbe at (8,26) in The Bow
  defb $cd                ; Item 0xbf at (14,13) in The Yacht
  defb $b6                ; Item 0xc0 at (13,22) in The Beach
  defb $3c                ; Item 0xc1 at (1,28) in Orangery
  defb $d0                ; Item 0xc2 at (6,16) in Orangery
  defb $a6                ; Item 0xc3 at (13,6) in Orangery
  defb $dd                ; Item 0xc4 at (6,29) in The Chapel
  defb $37                ; Item 0xc5 at (9,23) in Above the West Bedroom
  defb $b6                ; Item 0xc6 at (13,22) in The Beach
  defb $7a                ; Item 0xc7 at (3,26) in First Landing
  defb $22                ; Item 0xc8 at (9,2) in Top Landing
  defb $43                ; Item 0xc9 at (2,3) in Cold Store
  defb $a8                ; Item 0xca at (5,8) in Cold Store
  defb $06                ; Item 0xcb at (8,6) in Cold Store
  defb $66                ; Item 0xcc at (11,6) in Cold Store
  defb $c7                ; Item 0xcd at (14,7) in Tool  Shed
  defb $c9                ; Item 0xce at (6,9) in To the Kitchens    Main
                          ; Stairway
  defb $22                ; Item 0xcf at (9,2) in To the Kitchens    Main
                          ; Stairway
  defb $f3                ; Item 0xd0 at (7,19) in Dr Jones will never believe
                          ; this
  defb $b3                ; Item 0xd1 at (13,19) in Tree Top
  defb $70                ; Item 0xd2 at (3,16) in Tree Top
  defb $96                ; Item 0xd3 at (4,22) in Tree Top
  defb $65                ; Item 0xd4 at (11,5) in On a Branch Over the Drive
  defb $ef                ; Item 0xd5 at (7,15) in Cuckoo's Nest
  defb $6a                ; Item 0xd6 at (3,10) in Tree Root
  defb $9d                ; Item 0xd7 at (4,29) in Tree Root
  defb $49                ; Item 0xd8 at (2,9) in Priests' Hole
  defb $91                ; Item 0xd9 at (12,17) in Ballroom West
  defb $92                ; Item 0xda at (12,18) in Ballroom West
  defb $94                ; Item 0xdb at (12,20) in Ballroom West
  defb $96                ; Item 0xdc at (12,22) in Ballroom West
  defb $97                ; Item 0xdd at (12,23) in Ballroom West
  defb $5a                ; Item 0xde at (2,26) in Rescue Esmerelda
  defb $8b                ; Item 0xdf at (4,11) in The Front Door
  defb $99                ; Item 0xe0 at (12,25) in Ballroom West
  defb $9b                ; Item 0xe1 at (12,27) in Ballroom West
  defb $7a                ; Item 0xe2 at (3,26) in Rescue Esmerelda
  defb $c2                ; Item 0xe3 at (6,2) in Out on a limb
  defb $25                ; Item 0xe4 at (1,5) in Out on a limb
  defb $92                ; Item 0xe5 at (4,18) in On top of the house
  defb $62                ; Item 0xe6 at (3,2) in The Forgotten Abbey
  defb $61                ; Item 0xe7 at (11,1) in At the Foot of the MegaTree
  defb $44                ; Item 0xe8 at (10,4) in At the Foot of the MegaTree
  defb $67                ; Item 0xe9 at (11,7) in At the Foot of the MegaTree
  defb $9c                ; Item 0xea at (4,28) in The Wine Cellar
  defb $e4                ; Item 0xeb at (7,4) in The Wine Cellar
  defb $fc                ; Item 0xec at (7,28) in The Wine Cellar
  defb $42                ; Item 0xed at (10,2) in The Wine Cellar
  defb $5c                ; Item 0xee at (10,28) in The Wine Cellar
  defb $a4                ; Item 0xef at (13,4) in The Wine Cellar
  defb $93                ; Item 0xf0 at (4,19) in The Off Licence
  defb $94                ; Item 0xf1 at (4,20) in The Off Licence
  defb $95                ; Item 0xf2 at (4,21) in The Off Licence
  defb $96                ; Item 0xf3 at (4,22) in The Off Licence
  defb $97                ; Item 0xf4 at (4,23) in The Off Licence
  defb $98                ; Item 0xf5 at (4,24) in The Off Licence
  defb $99                ; Item 0xf6 at (4,25) in The Off Licence
  defb $9a                ; Item 0xf7 at (4,26) in The Off Licence
  defb $9b                ; Item 0xf8 at (4,27) in The Off Licence
  defb $9c                ; Item 0xf9 at (4,28) in The Off Licence
  defb $9d                ; Item 0xfa at (4,29) in The Off Licence
  defb $9e                ; Item 0xfb at (4,30) in The Off Licence
  defb $16                ; Item 0xfc at (0,22) in Under the MegaTree
  defb $3a                ; Item 0xfd at (9,26) in The Nightmare Room
  defb $c8                ; Item 0xfe at (14,8) in The Banyan Tree
  defb $b7                ; Item 0xff at (13,23) in The Bathroom

; Toilet graphics
;
; Used by the routine at DRAWTOILET.
TOILET0:
  defb $00,$0f,$00,$3f,$00,$0f,$30,$0f,$0c,$0f,$03,$0f,$00,$cf,$00,$2f
  defb $00,$08,$3f,$f8,$3f,$f0,$3f,$ee,$1f,$df,$1f,$db,$0f,$fb,$0f,$fb
TOILET1:
  defb $00,$0f,$00,$3f,$00,$0f,$00,$0f,$00,$0f,$00,$0f,$00,$0f,$3f,$ef
  defb $00,$08,$3f,$f8,$3f,$f0,$3f,$ee,$1f,$df,$1f,$db,$0f,$fb,$0f,$fb
TOILET2:
  defb $03,$af,$01,$bf,$01,$8f,$01,$8f,$7f,$8f,$7f,$8f,$47,$cf,$0f,$cf
  defb $00,$08,$3f,$f8,$3f,$f0,$3f,$ee,$1f,$df,$1f,$db,$0f,$fb,$0f,$fb
TOILET3:
  defb $00,$0f,$04,$3f,$1e,$2f,$3b,$2f,$5d,$8f,$0e,$8f,$07,$cf,$0f,$cf
  defb $00,$08,$3f,$f8,$3f,$f0,$3f,$ee,$1f,$df,$1f,$db,$0f,$fb,$0f,$fb

; Unused
La680:
  defb $80,$80,$80,$80,$8c,$8f,$8f,$8f,$8f,$8f,$80,$80,$bf,$8f,$8f,$8f
  defb $85,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
  defb $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
  defb $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
  defb $80,$80,$bf,$bf,$bf,$bf,$bf,$bf,$bf,$bf,$bf,$8f,$b3,$b0,$b0,$80
  defb $85,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
  defb $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
  defb $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
  defs $400

; Guardian graphics
;
; Used by the routine at DRAWTHINGS.
;
; This guardian (page 0xab, sprites 0-3) appears in The Banyan Tree and A bit
; of tree.
GUARDIANS:
  defb $00,$00,$00,$00,$2a,$aa,$7f,$ff,$7f,$ff,$7c,$3f,$7c,$3f,$7f,$ff
  defb $7f,$ff,$7f,$ff,$00,$00,$2a,$aa,$00,$00,$2a,$aa,$00,$00,$00,$00
  defb $00,$48,$01,$2c,$04,$bc,$12,$fe,$4b,$fe,$2e,$7f,$bc,$3f,$fe,$7c
  defb $ff,$f2,$7f,$c9,$7f,$25,$3c,$94,$32,$50,$09,$40,$05,$00,$04,$00
  defb $00,$00,$07,$e0,$0f,$f0,$17,$e8,$0f,$f0,$16,$68,$0e,$70,$16,$68
  defb $0f,$f0,$17,$e8,$0f,$f0,$17,$e8,$08,$10,$17,$e8,$10,$08,$00,$00
  defb $12,$00,$34,$80,$3d,$20,$7f,$48,$7f,$d2,$fe,$74,$fc,$3d,$3e,$7f
  defb $4f,$ff,$93,$fe,$a4,$fe,$29,$3c,$0a,$4c,$02,$90,$00,$a0,$00,$20
; This guardian (page 0xab, sprites 4-7) appears in The Chapel and The Banyan
; Tree.
  defb $00,$00,$00,$00,$00,$00,$02,$02,$22,$02,$a9,$54,$a8,$d8,$71,$74
  defb $22,$da,$3b,$ae,$2e,$ab,$24,$f9,$20,$db,$20,$d8,$01,$54,$02,$8a
  defb $00,$00,$02,$02,$02,$02,$01,$74,$00,$d8,$51,$54,$52,$fa,$23,$de
  defb $e7,$ab,$1e,$f9,$18,$d9,$08,$d9,$09,$54,$06,$8a,$04,$00,$00,$00
  defb $02,$02,$03,$8e,$00,$f8,$01,$54,$02,$da,$03,$fe,$11,$8b,$4b,$a9
  defb $2b,$fb,$96,$f8,$6c,$d8,$05,$54,$02,$8a,$01,$00,$00,$80,$00,$40
  defb $00,$00,$02,$02,$02,$02,$01,$74,$00,$d8,$51,$54,$52,$fa,$23,$de
  defb $e7,$ab,$1e,$f9,$18,$d9,$08,$d9,$09,$54,$06,$8a,$04,$00,$00,$00
; This guardian (page 0xac, sprites 0-3) appears in East Wall Base, The Chapel
; and West  Wing.
  defb $20,$04,$ae,$ec,$bb,$7d,$e0,$07,$bd,$b5,$a0,$04,$3b,$7c,$00,$00
  defb $1d,$b0,$20,$04,$3b,$7c,$a2,$44,$fd,$b7,$a0,$04,$3b,$dc,$20,$04
  defb $20,$04,$37,$b4,$a0,$04,$fb,$7f,$a0,$04,$3d,$b4,$20,$04,$1b,$78
  defb $00,$00,$3d,$b4,$a2,$44,$bb,$7d,$e0,$07,$bd,$b5,$b7,$ec,$20,$04
  defb $20,$04,$3a,$dc,$3d,$bd,$e0,$07,$3b,$75,$20,$04,$3d,$bc,$00,$00
  defb $1b,$70,$20,$04,$3d,$bd,$a2,$45,$fb,$77,$a0,$05,$3d,$ed,$20,$04
  defb $20,$04,$3b,$75,$a0,$05,$fd,$bf,$a0,$05,$3b,$75,$20,$04,$1d,$b8
  defb $00,$00,$3b,$74,$24,$84,$3d,$bd,$e0,$07,$3b,$75,$2e,$ec,$20,$04
; This guardian (page 0xac, sprites 4-7) appears in The Banyan Tree and
; Orangery.
  defb $0f,$f0,$17,$e8,$18,$18,$37,$cc,$28,$24,$53,$92,$64,$4a,$a9,$2b
  defb $aa,$2b,$6a,$4a,$69,$92,$24,$24,$33,$cc,$18,$18,$17,$e8,$0f,$f0
  defb $00,$e0,$07,$f0,$38,$18,$73,$cc,$64,$26,$49,$93,$52,$4b,$d4,$2b
  defb $d5,$2a,$d4,$ca,$d2,$12,$49,$e4,$24,$0c,$13,$f4,$08,$78,$07,$80
  defb $01,$80,$07,$e0,$18,$18,$73,$ce,$a4,$25,$c9,$95,$d2,$55,$d4,$55
  defb $d4,$95,$d2,$25,$c9,$c9,$e4,$13,$73,$e6,$18,$18,$07,$e0,$01,$80
  defb $07,$00,$08,$e0,$1f,$dc,$30,$26,$67,$92,$c8,$4a,$d3,$2a,$d4,$ab
  defb $54,$2b,$52,$4b,$49,$93,$24,$26,$33,$cc,$28,$18,$1f,$f0,$01,$e0
; This guardian (page 0xad, sprites 0-3) appears in On a Branch Over the Drive,
; Conservatory Roof and Tool  Shed.
  defb $0c,$00,$0c,$00,$0c,$00,$0c,$00,$0c,$00,$1e,$00,$12,$00,$33,$00
  defb $3f,$00,$73,$80,$61,$80,$61,$80,$c0,$c0,$c0,$c0,$80,$40,$80,$40
  defb $08,$40,$08,$40,$0c,$c0,$04,$80,$07,$80,$07,$80,$0c,$c0,$1c,$e0
  defb $3b,$70,$30,$30,$60,$18,$60,$18,$40,$08,$c0,$0c,$80,$04,$80,$04
  defb $02,$10,$02,$10,$03,$30,$01,$20,$01,$e0,$01,$e0,$03,$30,$07,$38
  defb $0e,$dc,$0c,$0c,$18,$06,$18,$06,$10,$02,$30,$03,$20,$01,$20,$01
  defb $00,$30,$00,$30,$00,$30,$00,$30,$00,$30,$00,$78,$00,$48,$00,$cc
  defb $00,$fc,$01,$ce,$01,$86,$01,$86,$03,$03,$03,$03,$02,$01,$02,$01
; This guardian (page 0xad, sprites 4-7) appears in Top Landing, Tree Root and
; West Bedroom.
  defb $00,$00,$00,$00,$00,$00,$7f,$fe,$40,$02,$ff,$ff,$de,$7b,$c0,$03
  defb $c0,$03,$de,$7b,$ff,$ff,$40,$02,$7f,$fe,$00,$00,$00,$00,$00,$00
  defb $0a,$00,$1d,$00,$36,$80,$67,$40,$c3,$a0,$71,$d0,$b8,$68,$5c,$34
  defb $2c,$3a,$16,$1d,$0b,$8e,$05,$c3,$02,$e6,$01,$6c,$00,$b8,$00,$50
  defb $07,$e0,$1f,$f8,$14,$28,$16,$68,$16,$68,$16,$68,$16,$68,$14,$28
  defb $14,$28,$16,$68,$16,$68,$16,$68,$16,$68,$14,$28,$1f,$f8,$07,$e0
  defb $00,$50,$00,$b8,$01,$6c,$02,$e6,$05,$c3,$0b,$8e,$16,$1d,$2c,$3a
  defb $5c,$34,$b8,$68,$71,$d0,$c3,$a0,$67,$40,$36,$80,$1d,$00,$0a,$00
; This guardian (page 0xae, sprites 0-3) appears in To the Kitchens    Main
; Stairway, Halfway up the East Wall, Conservatory Roof and The Bow.
  defb $7e,$00,$99,$00,$ff,$00,$81,$00,$7e,$00,$18,$00,$24,$00,$24,$00
  defb $42,$00,$42,$00,$81,$00,$e7,$00,$a5,$00,$c3,$00,$a5,$00,$e7,$00
  defb $00,$00,$1f,$80,$26,$40,$39,$c0,$30,$c0,$1f,$80,$09,$00,$10,$80
  defb $20,$40,$40,$20,$80,$10,$e0,$70,$a0,$50,$c0,$30,$a0,$50,$e0,$70
  defb $00,$00,$00,$00,$00,$00,$07,$e0,$09,$90,$0e,$70,$0e,$70,$06,$60
  defb $1b,$d8,$60,$06,$80,$01,$e0,$07,$a0,$05,$c0,$03,$a0,$05,$e0,$07
  defb $00,$00,$01,$f8,$02,$64,$03,$9c,$03,$0c,$01,$f8,$00,$90,$01,$08
  defb $02,$04,$04,$02,$08,$01,$0e,$07,$0a,$05,$0c,$03,$0a,$05,$0e,$07
; This guardian (page 0xae, sprites 4-7) appears in Under the Drive.
  defb $0c,$00,$12,$00,$21,$10,$12,$20,$8c,$40,$52,$80,$2f,$00,$2f,$00
  defb $5f,$80,$5f,$80,$5f,$80,$00,$00,$ff,$c0,$5d,$80,$5d,$80,$ff,$c0
  defb $00,$01,$00,$02,$83,$04,$4c,$c8,$23,$10,$14,$a0,$0b,$c0,$0b,$c0
  defb $17,$e0,$17,$e0,$17,$e0,$00,$00,$3f,$f0,$1b,$b0,$1b,$b0,$3f,$f0
  defb $80,$00,$40,$00,$20,$01,$11,$e2,$08,$c4,$05,$28,$02,$f0,$02,$f0
  defb $05,$f8,$05,$f8,$05,$f8,$00,$00,$0f,$fc,$0b,$74,$0b,$74,$0f,$fc
  defb $00,$00,$00,$00,$08,$30,$04,$cc,$02,$31,$01,$4a,$00,$bc,$00,$bc
  defb $01,$7e,$01,$7e,$01,$7e,$00,$00,$03,$ff,$02,$ed,$02,$ed,$03,$ff
; This guardian (page 0xaf, sprites 0-3) appears in Top Landing, Under the Roof
; and Tool  Shed.
  defb $38,$00,$7c,$00,$7e,$00,$6d,$80,$44,$40,$6c,$40,$7c,$20,$7c,$00
  defb $7c,$0c,$7c,$32,$fc,$cc,$ff,$30,$fc,$c0,$7f,$00,$6c,$00,$38,$00
  defb $0e,$60,$1f,$94,$1f,$08,$1b,$20,$11,$50,$1b,$50,$1f,$a0,$1f,$a0
  defb $7f,$40,$df,$40,$df,$80,$9f,$80,$7f,$00,$1f,$00,$1b,$00,$0e,$00
  defb $03,$80,$07,$c0,$07,$e0,$06,$d8,$04,$44,$0e,$c4,$7f,$c2,$ef,$c0
  defb $ef,$c0,$8f,$c0,$77,$c0,$07,$c0,$07,$c0,$07,$c0,$06,$c0,$03,$80
  defb $00,$e0,$01,$f0,$01,$f0,$01,$b2,$01,$15,$01,$b5,$01,$fa,$01,$fa
  defb $07,$f4,$0d,$f4,$0d,$f8,$09,$f8,$07,$f0,$01,$f0,$01,$b0,$00,$e0
; This guardian (page 0xaf, sprites 4-7) appears in The Drive, Cuckoo's Nest,
; To the Kitchens    Main Stairway and Back Stairway.
  defb $0c,$00,$16,$00,$2f,$00,$2f,$00,$4f,$80,$5f,$80,$5f,$80,$9f,$c0
  defb $bf,$c0,$bd,$c0,$ba,$c0,$bd,$40,$5a,$80,$5d,$80,$3f,$00,$0c,$00
  defb $00,$00,$00,$00,$00,$00,$00,$70,$03,$98,$0c,$78,$33,$f8,$47,$f0
  defb $5f,$f0,$bf,$f0,$be,$a0,$bd,$60,$5a,$c0,$5d,$40,$3f,$80,$0e,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$03,$c0,$1c,$78,$21,$fc,$4f,$fe
  defb $5f,$fe,$9f,$ff,$bf,$ef,$5f,$56,$5f,$ae,$23,$54,$1f,$f8,$03,$c0
  defb $00,$00,$00,$00,$00,$00,$0e,$00,$17,$c0,$17,$f0,$13,$fc,$0b,$fe
  defb $0b,$fe,$0b,$d7,$05,$eb,$05,$d7,$02,$ea,$02,$7e,$01,$8c,$00,$70
; This guardian (page 0xb0, sprites 0-3) appears in The Attic.
  defb $07,$c0,$18,$30,$23,$88,$44,$44,$88,$22,$90,$13,$90,$13,$88,$22
  defb $44,$44,$23,$88,$18,$30,$07,$c0,$03,$00,$03,$00,$03,$00,$03,$80
  defb $07,$c0,$18,$30,$20,$08,$43,$84,$84,$42,$88,$23,$88,$23,$84,$42
  defb $43,$84,$20,$08,$18,$30,$07,$c0,$0f,$80,$1d,$d0,$08,$e0,$04,$40
  defb $07,$c0,$1f,$f0,$3e,$78,$7c,$3c,$7e,$7c,$ff,$fe,$ff,$fe,$f0,$00
  defb $ff,$80,$7f,$f0,$7f,$fc,$3f,$f8,$1f,$f0,$07,$c0,$00,$00,$00,$00
  defb $07,$c0,$1f,$f0,$3c,$f8,$78,$7c,$7c,$fc,$ff,$80,$fc,$00,$f0,$00
  defb $f8,$00,$7e,$00,$7f,$80,$3f,$e0,$1f,$f0,$07,$c0,$00,$00,$00,$00
; This guardian (page 0xb0, sprites 4-5) appears in Rescue Esmerelda.
  defb $07,$c0,$08,$20,$0a,$a0,$08,$20,$0b,$a0,$10,$10,$25,$48,$0a,$a0
  defb $3d,$78,$46,$c4,$07,$c0,$02,$80,$05,$40,$0f,$e0,$14,$80,$08,$c0
  defb $07,$c0,$08,$20,$0a,$a0,$08,$20,$39,$38,$00,$00,$05,$40,$0a,$a0
  defb $1d,$70,$16,$d0,$17,$d0,$0a,$a0,$05,$40,$0f,$e0,$02,$50,$06,$20
; This guardian (page 0xb0, sprites 6-7) appears in The Hall and West  Wing.
  defb $01,$80,$00,$00,$01,$80,$45,$91,$01,$80,$89,$a2,$45,$91,$01,$80
  defb $cd,$b3,$cd,$b3,$cd,$b3,$cd,$b3,$23,$c4,$12,$48,$0d,$b0,$00,$00
  defb $01,$80,$00,$00,$01,$80,$89,$a2,$01,$80,$45,$91,$89,$a2,$01,$80
  defb $cd,$b3,$cd,$b3,$cd,$b3,$cd,$b3,$23,$c4,$12,$48,$0d,$b0,$00,$00
; This guardian (page 0xb1, sprites 0-7) is not used.
  defb $16,$00,$16,$00,$16,$00,$16,$00,$16,$00,$16,$00,$16,$00,$16,$00
  defb $ff,$c0,$00,$00,$52,$80,$c0,$c0,$33,$00,$b3,$40,$08,$00,$2d,$00
  defb $05,$80,$05,$80,$05,$80,$05,$80,$05,$80,$05,$80,$05,$80,$05,$80
  defb $3f,$f0,$00,$00,$0d,$20,$24,$00,$0c,$d0,$0c,$f0,$28,$00,$0d,$20
  defb $01,$60,$01,$60,$01,$60,$01,$60,$01,$60,$01,$60,$01,$60,$01,$60
  defb $0f,$fc,$00,$00,$02,$d0,$00,$40,$0b,$34,$03,$30,$0c,$0c,$05,$28
  defb $00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58
  defb $03,$ff,$00,$00,$01,$2c,$00,$05,$03,$cc,$02,$cc,$00,$09,$01,$2c
  defb $00,$40,$01,$80,$02,$40,$05,$c0,$0b,$c0,$0b,$c0,$17,$c0,$17,$c0
  defb $16,$40,$16,$00,$16,$00,$16,$00,$16,$00,$16,$00,$16,$00,$16,$00
  defb $03,$00,$0f,$c0,$08,$40,$13,$20,$13,$20,$08,$40,$0f,$c0,$07,$80
  defb $05,$80,$05,$80,$05,$80,$05,$80,$05,$80,$05,$80,$05,$80,$05,$80
  defb $08,$00,$0e,$00,$0b,$00,$0b,$80,$0b,$c0,$0b,$c0,$0b,$e0,$0f,$e0
  defb $09,$60,$01,$60,$01,$60,$01,$60,$01,$60,$01,$60,$01,$60,$01,$60
  defb $00,$30,$00,$dc,$00,$bc,$01,$7e,$01,$7e,$00,$bc,$00,$bc,$00,$58
  defb $00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58
; This guardian (page 0xb2, sprites 0-3) appears in On top of the house and The
; Yacht.
  defb $00,$03,$00,$0f,$00,$1f,$80,$3f,$c0,$7f,$d1,$ff,$5f,$ff,$9f,$ff
  defb $cf,$ff,$d3,$ff,$df,$fc,$ff,$f0,$ff,$e0,$7f,$c0,$3f,$80,$0e,$00
  defb $00,$00,$00,$00,$50,$01,$d8,$03,$9c,$07,$4f,$1f,$d7,$ff,$db,$ff
  defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$8f,$fe,$07,$fc,$03,$f8,$00,$e0
  defb $00,$00,$03,$80,$07,$c0,$8f,$c0,$df,$e0,$db,$f1,$57,$ff,$8f,$ff
  defb $df,$ff,$df,$ff,$ff,$ff,$fc,$7f,$f8,$3f,$70,$3f,$00,$1f,$00,$0e
  defb $00,$38,$00,$fe,$01,$ff,$83,$ff,$c7,$ff,$df,$ff,$5f,$ff,$9b,$ff
  defb $c7,$ff,$df,$ff,$df,$c7,$ff,$01,$fe,$00,$7c,$00,$38,$00,$00,$00
; This guardian (page 0xb2, sprites 4-7) appears in On a Branch Over the Drive,
; Orangery, Dr Jones will never believe this, Under the Drive, Nomen Luni and
; Back Stairway.
  defb $03,$c0,$0e,$f0,$1d,$f8,$3e,$fc,$53,$ce,$65,$a6,$a4,$27,$71,$8f
  defb $bf,$f7,$55,$ef,$6e,$76,$53,$ca,$38,$1c,$16,$78,$0b,$f0,$02,$c0
  defb $03,$c0,$0d,$f0,$1a,$f8,$3f,$fc,$51,$8c,$64,$26,$c5,$a7,$b3,$cf
  defb $5d,$bb,$aa,$77,$5f,$fa,$72,$4e,$38,$1c,$1c,$38,$0b,$f0,$02,$c0
  defb $03,$c0,$0b,$f0,$15,$78,$3f,$fc,$50,$0c,$65,$a6,$c7,$e7,$f1,$8f
  defb $be,$7f,$dd,$f7,$2c,$3a,$5a,$5e,$2c,$3c,$16,$78,$0b,$f0,$03,$c0
  defb $03,$c0,$0d,$f0,$1a,$f8,$3f,$fc,$51,$8c,$64,$26,$c5,$a7,$b3,$cf
  defb $5d,$bb,$aa,$77,$5f,$fa,$72,$4e,$38,$1c,$1c,$38,$0b,$f0,$02,$c0
; The next 256 bytes are unused.
  defs $100
; This guardian (page 0xb4, sprites 0-7) appears in The Forgotten Abbey, The
; Chapel, First Landing, Swimming Pool and The Wine Cellar.
  defb $0e,$00,$15,$00,$2a,$80,$17,$00,$ff,$00,$16,$00,$0c,$00,$1f,$80
  defb $3f,$80,$7f,$00,$2a,$00,$7f,$00,$6f,$00,$7f,$00,$18,$00,$38,$00
  defb $03,$80,$05,$40,$0a,$a0,$05,$c0,$7f,$c0,$05,$80,$03,$00,$07,$e0
  defb $0f,$e0,$1f,$c0,$0a,$80,$1f,$c0,$1b,$c0,$1f,$c0,$18,$80,$38,$00
  defb $00,$e0,$01,$50,$02,$a8,$01,$70,$0f,$f0,$01,$60,$00,$c0,$01,$f8
  defb $03,$f8,$07,$f0,$02,$a0,$07,$f0,$06,$f0,$07,$f0,$06,$30,$00,$60
  defb $00,$38,$00,$54,$00,$aa,$00,$5c,$01,$fc,$00,$58,$00,$30,$00,$7e
  defb $00,$fe,$01,$fc,$00,$a8,$01,$fc,$01,$bc,$01,$fc,$01,$18,$00,$38
  defb $1c,$00,$2a,$00,$55,$00,$3a,$00,$3f,$80,$1a,$00,$0c,$00,$7e,$00
  defb $7f,$00,$3f,$80,$15,$00,$3f,$80,$3d,$80,$3f,$80,$18,$80,$1c,$00
  defb $07,$00,$0a,$80,$15,$40,$0e,$80,$0f,$f0,$06,$80,$03,$00,$1f,$80
  defb $1f,$c0,$0f,$e0,$05,$40,$0f,$e0,$0f,$60,$0f,$e0,$0c,$60,$06,$00
  defb $01,$c0,$02,$a0,$05,$50,$03,$a0,$03,$fe,$01,$a0,$00,$c0,$07,$e0
  defb $07,$f0,$03,$f8,$01,$50,$03,$f8,$03,$d8,$03,$f8,$01,$18,$00,$1c
  defb $00,$70,$00,$a8,$01,$54,$00,$e8,$00,$ff,$00,$68,$00,$30,$01,$f8
  defb $01,$fc,$00,$fe,$00,$54,$00,$fe,$00,$f6,$00,$fe,$00,$18,$00,$1c
; This guardian (page 0xb5, sprites 0-7) appears in At the Foot of the
; MegaTree, Cuckoo's Nest, Out on a limb, The Banyan Tree, The Wine Cellar,
; Tool  Shed, West Wing Roof and The Yacht.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$06,$00,$3f,$00,$1f,$00,$0d,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80
  defb $0f,$c0,$07,$40,$03,$40,$4f,$40,$07,$40,$03,$20,$0f,$20,$87,$20
  defb $00,$60,$03,$f0,$01,$d0,$00,$d0,$03,$d0,$01,$d0,$00,$c8,$03,$c8
  defb $01,$c8,$00,$c8,$0b,$c8,$21,$c8,$00,$c8,$0b,$c4,$01,$c4,$20,$c4
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$00,$fc,$00,$74
  defb $00,$34,$00,$f4,$00,$74,$01,$36,$00,$fa,$02,$7a,$00,$3a,$04,$fa
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$30,$00,$7e,$00,$7c,$00,$58,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0c,$00
  defb $1f,$80,$17,$00,$16,$00,$17,$80,$17,$00,$26,$10,$27,$80,$27,$08
  defb $03,$00,$07,$e0,$05,$c0,$05,$80,$05,$e0,$05,$c0,$09,$80,$09,$e0
  defb $09,$d0,$09,$80,$09,$e8,$09,$c2,$09,$80,$11,$e8,$11,$c0,$11,$82
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0,$01,$f8,$01,$70
  defb $01,$60,$01,$78,$01,$70,$02,$60,$02,$78,$02,$70,$02,$61,$02,$78
; This guardian (page 0xb6, sprites 0-7) appears in Under the MegaTree, The
; Hall, Tree Top and Emergency Generator.
FLYINGPIG0:
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$13,$40,$17,$80,$3f,$c0
  defb $55,$40,$fa,$a0,$fd,$40,$1f,$a0,$08,$80,$05,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$d0,$05,$e0,$0f,$f0
  defb $16,$b0,$3d,$50,$3e,$a8,$07,$50,$02,$a8,$02,$54,$00,$28,$00,$14
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$34,$01,$78,$03,$fc
  defb $05,$54,$0f,$aa,$0f,$d4,$01,$fa,$00,$88,$01,$04,$00,$00,$00,$00
  defb $00,$03,$00,$0a,$00,$15,$00,$0a,$00,$15,$00,$ab,$00,$56,$00,$eb
  defb $01,$55,$03,$eb,$03,$ff,$00,$7e,$00,$22,$00,$22,$00,$00,$00,$00
  defb $80,$00,$50,$00,$a8,$00,$50,$00,$a8,$00,$d5,$00,$6a,$00,$d7,$00
  defb $aa,$80,$d7,$c0,$ff,$c0,$7e,$00,$44,$00,$44,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2c,$40,$1e,$80,$3f,$c0
  defb $2a,$a0,$55,$f0,$2b,$f0,$5f,$80,$11,$00,$20,$80,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0b,$10,$07,$a0,$0f,$f0
  defb $0d,$68,$0a,$bc,$15,$7c,$0a,$e0,$15,$40,$2a,$40,$14,$00,$28,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$c8,$01,$e8,$03,$fc
  defb $02,$aa,$05,$5f,$02,$bf,$05,$f8,$01,$10,$00,$a0,$00,$00,$00,$00
; This guardian (page 0xb7, sprites 0-1) appears in The Kitchen and West of
; Kitchen.
  defb $0a,$a0,$15,$50,$0a,$a0,$05,$42,$05,$45,$05,$45,$07,$c2,$0d,$62
  defb $0f,$e3,$3c,$7f,$7b,$bf,$ef,$e3,$ae,$e2,$47,$c2,$ce,$c0,$c0,$e0
  defb $c0,$00,$ca,$a0,$d5,$50,$ca,$a0,$45,$40,$45,$42,$a7,$c5,$cd,$65
  defb $6f,$e2,$7c,$7a,$3a,$bf,$0f,$ef,$0e,$e3,$07,$c2,$06,$e2,$0e,$02
; This guardian (page 0xb7, sprites 2-3) appears in Tree Root, West Bedroom and
; Above the West Bedroom.
  defb $03,$00,$04,$80,$05,$c0,$0b,$a0,$15,$40,$17,$60,$17,$60,$1f,$e0
  defb $13,$90,$2d,$68,$2f,$78,$2f,$78,$2f,$78,$2f,$78,$af,$79,$7f,$fe
  defb $00,$c0,$01,$20,$01,$70,$02,$e8,$05,$50,$05,$d8,$05,$d8,$07,$f8
  defb $09,$c8,$16,$b4,$17,$bc,$17,$bc,$17,$bc,$17,$bc,$97,$bd,$7f,$fe
; This guardian (page 0xb7, sprites 4-7) appears in To the Kitchens    Main
; Stairway and Back Stairway.
  defb $76,$00,$00,$00,$6e,$00,$76,$00,$6e,$00,$00,$00,$76,$00,$6e,$00
  defb $00,$00,$76,$00,$00,$00,$00,$00,$6e,$00,$76,$00,$00,$00,$6e,$00
  defb $1d,$80,$2a,$00,$27,$60,$51,$b0,$4b,$d0,$90,$80,$aa,$e8,$94,$b8
  defb $91,$80,$aa,$d8,$91,$00,$55,$00,$4b,$b0,$2b,$60,$24,$00,$1d,$80
  defb $03,$c0,$0c,$30,$10,$98,$32,$14,$68,$82,$40,$2a,$b5,$11,$c8,$45
  defb $a4,$91,$9a,$05,$48,$42,$55,$0a,$28,$54,$12,$88,$0d,$70,$03,$c0
  defb $01,$b8,$00,$54,$06,$e4,$0d,$8a,$0b,$d2,$01,$09,$17,$55,$1d,$29
  defb $01,$89,$1b,$55,$00,$89,$00,$aa,$0d,$d2,$06,$d4,$00,$24,$01,$b8
; This guardian (page 0xb8, sprites 0-7) appears in Under the MegaTree, On the
; Roof, Ballroom West and Tree Root.
  defb $00,$00,$06,$00,$08,$00,$38,$00,$50,$00,$f0,$00,$f8,$00,$3c,$00
  defb $3e,$00,$7e,$00,$9f,$00,$1f,$00,$1f,$c0,$0e,$c0,$18,$00,$60,$00
  defb $00,$00,$00,$00,$0f,$00,$14,$80,$3c,$00,$0e,$00,$3f,$00,$0f,$80
  defb $1f,$80,$2f,$c0,$0f,$c0,$07,$f0,$03,$b0,$01,$00,$02,$00,$04,$00
  defb $00,$00,$00,$60,$00,$80,$03,$80,$0d,$00,$07,$00,$03,$80,$07,$c0
  defb $0b,$e0,$07,$e0,$09,$f0,$01,$f0,$01,$fc,$00,$ec,$01,$80,$06,$00
  defb $00,$00,$00,$00,$00,$04,$00,$08,$00,$70,$00,$a0,$01,$e0,$00,$70
  defb $01,$f8,$00,$78,$01,$fc,$00,$7c,$00,$7c,$00,$7f,$00,$3b,$00,$f0
  defb $04,$00,$04,$00,$0c,$00,$0c,$00,$16,$00,$1e,$00,$3e,$00,$6c,$00
  defb $9e,$00,$3f,$00,$3f,$00,$3f,$00,$7f,$00,$56,$00,$1c,$00,$06,$00
  defb $04,$80,$08,$40,$13,$20,$13,$20,$17,$a0,$13,$20,$1f,$e0,$1b,$60
  defb $27,$90,$0f,$c0,$0f,$c0,$0f,$c0,$0f,$c0,$1d,$80,$03,$80,$01,$00
  defb $00,$80,$00,$80,$00,$c0,$00,$c0,$01,$a0,$01,$e0,$01,$f0,$00,$d8
  defb $01,$e4,$03,$f0,$03,$f0,$03,$f0,$03,$f8,$01,$a8,$00,$e0,$01,$80
  defb $00,$48,$00,$84,$01,$32,$01,$02,$01,$7a,$01,$7a,$01,$fe,$01,$b6
  defb $02,$79,$00,$fc,$00,$fc,$00,$fc,$00,$fc,$00,$6e,$00,$70,$00,$20
; This guardian (page 0xb9, sprites 0-3) appears in On a Branch Over the Drive,
; To the Kitchens    Main Stairway and The Bathroom.
  defb $3c,$00,$6e,$00,$a7,$00,$a5,$00,$77,$00,$a3,$00,$62,$00,$2c,$00
  defb $34,$00,$46,$00,$c5,$00,$ee,$00,$a5,$00,$e5,$00,$76,$00,$3c,$00
  defb $00,$00,$00,$00,$00,$b0,$01,$48,$03,$fc,$00,$44,$02,$0c,$02,$7c
  defb $35,$d8,$46,$f0,$c5,$00,$ee,$00,$a5,$00,$e5,$00,$76,$00,$3c,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $34,$34,$46,$46,$c5,$c5,$ee,$ee,$a5,$a5,$e5,$e5,$76,$76,$3c,$3c
  defb $00,$00,$00,$00,$0f,$00,$1b,$80,$3e,$40,$30,$40,$22,$00,$3f,$c0
  defb $12,$b4,$0d,$46,$00,$c5,$00,$ee,$00,$a5,$00,$e5,$00,$76,$00,$3c
; This guardian (page 0xb9, sprites 4-7) appears in The Bridge.
  defb $03,$c0,$06,$60,$0d,$f0,$1a,$d8,$35,$5c,$20,$04,$7f,$fe,$d7,$75
  defb $b2,$27,$d7,$75,$7f,$fe,$15,$78,$25,$a4,$02,$40,$11,$88,$00,$00
  defb $03,$c0,$06,$60,$0d,$f0,$1a,$b8,$35,$5c,$20,$04,$7f,$fe,$ae,$eb
  defb $e4,$4d,$ae,$eb,$7f,$fe,$15,$78,$0a,$50,$01,$80,$04,$20,$01,$00
  defb $03,$c0,$06,$60,$0d,$f0,$1a,$d8,$35,$5c,$20,$04,$7f,$fe,$ed,$db
  defb $a8,$93,$ed,$db,$7f,$fe,$15,$78,$25,$a4,$02,$40,$11,$88,$04,$20
  defb $03,$c0,$06,$60,$0d,$f0,$1a,$e8,$35,$5c,$20,$04,$7f,$fe,$db,$b7
  defb $c9,$15,$db,$b7,$7f,$fe,$15,$78,$0a,$42,$41,$90,$04,$00,$11,$44
; This guardian (page 0xba, sprites 0-3) appears in The Off Licence, Under the
; MegaTree, Inside the MegaTrunk, Out on a limb, Ballroom East, Ballroom West,
; East Wall Base and Tree Root.
  defb $07,$e0,$0f,$f0,$df,$fb,$3f,$fc,$1f,$f8,$1f,$f8,$31,$8c,$6a,$56
  defb $b1,$8d,$9e,$f9,$0d,$f0,$1d,$b8,$36,$6c,$59,$9a,$8c,$31,$07,$e0
  defb $07,$e0,$0f,$f0,$1f,$f8,$ff,$ff,$1f,$f8,$1f,$f8,$31,$8c,$2a,$54
  defb $71,$8e,$9e,$f9,$8d,$f1,$1d,$b8,$32,$4c,$58,$1a,$4c,$32,$07,$e0
  defb $07,$e0,$0f,$f0,$1f,$f8,$df,$fb,$3f,$fc,$1f,$f8,$31,$8c,$2a,$54
  defb $30,$8c,$5d,$fa,$8d,$b1,$9a,$59,$12,$48,$18,$18,$2c,$34,$c7,$e3
  defb $07,$e0,$8f,$f1,$5f,$fa,$3f,$fc,$1f,$f8,$11,$88,$2e,$74,$2a,$54
  defb $71,$8e,$5e,$fa,$8d,$f1,$1d,$b8,$12,$48,$78,$1e,$8c,$31,$07,$e0
; This guardian (page 0xba, sprites 4-7) appears in Entrance to Hades, The
; Chapel and Priests' Hole.
  defb $15,$03,$2a,$be,$15,$5e,$4a,$a8,$35,$5c,$8a,$ae,$6d,$5c,$99,$f9
  defb $6e,$bf,$dd,$63,$2e,$49,$59,$81,$04,$82,$2b,$c6,$12,$fc,$0c,$fd
  defb $40,$a8,$fd,$54,$7a,$a8,$15,$52,$3a,$ac,$75,$51,$3a,$b6,$9f,$99
  defb $fd,$76,$c6,$bb,$92,$74,$81,$9a,$41,$20,$63,$d4,$3f,$48,$bf,$30
  defb $fd,$bf,$bf,$ef,$ea,$d7,$aa,$45,$68,$d4,$48,$84,$40,$04,$40,$01
  defb $50,$00,$12,$0a,$40,$0c,$2a,$22,$14,$a8,$20,$84,$14,$28,$05,$20
  defb $fd,$bf,$ff,$fb,$ac,$d7,$aa,$d1,$2a,$54,$82,$44,$42,$01,$08,$04
  defb $4a,$10,$22,$82,$08,$a8,$14,$04,$0a,$90,$01,$40,$00,$00,$00,$00
; This guardian (page 0xbb, sprites 0-3) appears in Cold Store and Under the
; Roof.
  defb $0c,$00,$36,$80,$7f,$40,$7e,$80,$fd,$00,$fe,$80,$ff,$80,$ff,$00
  defb $55,$00,$2a,$00,$14,$00,$2a,$00,$14,$00,$08,$00,$14,$00,$08,$00
  defb $03,$00,$0d,$a0,$1f,$d0,$1f,$a0,$3f,$40,$3f,$a0,$3f,$e0,$3f,$c0
  defb $35,$40,$2a,$80,$05,$00,$0a,$80,$05,$00,$02,$00,$05,$00,$02,$00
  defb $00,$c0,$03,$68,$07,$f4,$07,$e8,$0f,$d0,$0f,$e8,$0f,$f8,$0f,$f0
  defb $05,$50,$0a,$a0,$01,$40,$02,$a0,$09,$40,$00,$80,$01,$40,$00,$80
  defb $00,$30,$00,$da,$01,$fd,$01,$fa,$03,$f4,$03,$fa,$03,$fe,$03,$fc
  defb $03,$54,$02,$a8,$00,$50,$00,$a8,$00,$50,$00,$20,$00,$50,$00,$20
; This guardian (page 0xbb, sprites 4-7) appears in Inside the MegaTrunk, Tree
; Top and Watch Tower.
  defb $04,$00,$2a,$80,$55,$40,$2b,$80,$44,$40,$af,$a0,$5f,$40,$20,$80
  defb $55,$40,$2a,$80,$04,$00,$04,$00,$08,$00,$3e,$00,$41,$00,$81,$00
  defb $02,$00,$15,$40,$2a,$a0,$15,$c0,$22,$20,$5f,$50,$2a,$a0,$10,$40
  defb $2a,$a0,$15,$40,$02,$00,$02,$00,$0e,$00,$11,$80,$20,$40,$00,$00
  defb $00,$40,$02,$a8,$05,$54,$03,$a8,$04,$44,$0b,$ea,$05,$f4,$02,$08
  defb $05,$54,$02,$a8,$00,$40,$00,$40,$00,$70,$01,$88,$02,$04,$00,$00
  defb $00,$20,$01,$54,$02,$aa,$01,$d4,$02,$22,$05,$7d,$02,$fa,$01,$54
  defb $02,$aa,$01,$54,$00,$20,$00,$20,$00,$10,$00,$7c,$00,$82,$00,$81
; This guardian (page 0xbc, sprites 0-7) appears in The Bridge, The Drive,
; Inside the MegaTrunk, The Hall, Tree Top, Out on a limb, Rescue Esmerelda,
; I'm sure I've seen this before.., We must perform a Quirkafleeg, Ballroom
; East, To the Kitchens    Main Stairway, A bit of tree, Priests' Hole, Under
; the Drive, Nomen Luni, Watch Tower, West  Wing and West Wing Roof.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$6f,$40,$bb,$80,$75,$40
  defb $1a,$80,$05,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$a0,$01,$40,$02,$80,$01,$50,$36,$a0,$5d,$70
  defb $37,$e0,$03,$c0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$f4,$19,$b8,$2f,$54
  defb $19,$a8,$00,$50,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3d,$03,$7e,$05,$d7
  defb $03,$6a,$00,$14,$00,$28,$00,$14,$00,$0a,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$bc,$00,$7e,$c0,$eb,$a0
  defb $56,$c0,$28,$00,$14,$00,$28,$00,$50,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2f,$00,$1d,$98,$2a,$f4
  defb $15,$98,$0a,$00,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$05,$00,$02,$80,$01,$40,$0a,$80,$05,$6c,$0e,$ba
  defb $07,$ec,$03,$c0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$f6,$01,$dd,$02,$ae
  defb $01,$58,$00,$a0,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; This guardian (page 0xbd, sprites 0-7) appears in Cold Store.
  defb $18,$00,$3c,$00,$d4,$00,$2e,$00,$3a,$00,$3a,$00,$5a,$00,$5d,$00
  defb $4f,$00,$43,$00,$21,$80,$22,$00,$1e,$00,$14,$00,$13,$00,$3c,$00
  defb $06,$00,$0f,$00,$3f,$00,$0b,$80,$0e,$80,$0e,$80,$1f,$00,$17,$80
  defb $11,$c0,$10,$60,$08,$40,$08,$80,$07,$80,$02,$00,$02,$00,$07,$00
  defb $01,$80,$0b,$c0,$05,$40,$0a,$e0,$03,$a0,$03,$a0,$05,$a0,$05,$d0
  defb $04,$f0,$04,$30,$02,$18,$02,$20,$01,$e0,$01,$40,$06,$30,$01,$40
  defb $00,$60,$00,$b0,$03,$50,$00,$b8,$00,$e8,$00,$e8,$01,$68,$01,$74
  defb $01,$3c,$01,$0c,$00,$86,$00,$88,$00,$78,$00,$25,$00,$22,$00,$74
  defb $06,$00,$0d,$00,$0a,$c0,$1d,$00,$17,$00,$17,$00,$16,$80,$2e,$80
  defb $3c,$80,$30,$80,$61,$00,$11,$00,$1e,$00,$a4,$00,$44,$00,$2e,$00
  defb $01,$80,$03,$d0,$02,$a0,$07,$50,$05,$c0,$05,$c0,$05,$a0,$0b,$a0
  defb $0f,$20,$0c,$20,$18,$40,$04,$40,$07,$80,$02,$80,$0c,$60,$02,$80
  defb $00,$60,$00,$f0,$00,$fc,$01,$d0,$01,$70,$01,$70,$00,$f8,$01,$e8
  defb $03,$88,$06,$08,$02,$10,$01,$10,$01,$e0,$00,$40,$00,$40,$00,$e0
  defb $00,$18,$00,$3c,$00,$2b,$00,$74,$00,$5c,$00,$5c,$00,$5a,$00,$ba
  defb $00,$f2,$00,$c2,$01,$84,$00,$44,$00,$78,$00,$50,$01,$90,$00,$78
; This guardian (page 0xbe, sprites 0-3) appears in The Off Licence, To the
; Kitchens    Main Stairway, Nomen Luni and The Bow.
  defb $0c,$00,$12,$00,$21,$00,$2d,$00,$21,$00,$12,$00,$0c,$00,$0c,$00
  defb $1e,$00,$00,$00,$37,$00,$40,$00,$0d,$40,$ac,$40,$40,$80,$2e,$00
  defb $0e,$c0,$1d,$a0,$1f,$00,$1f,$e0,$1f,$00,$1d,$a0,$0e,$c0,$03,$00
  defb $07,$80,$00,$00,$0e,$c0,$00,$20,$2b,$00,$23,$50,$10,$60,$07,$00
  defb $04,$08,$06,$18,$07,$38,$0f,$fc,$07,$38,$06,$d8,$04,$c8,$00,$c0
  defb $01,$e0,$00,$00,$01,$d0,$04,$08,$08,$d4,$0a,$c0,$00,$08,$03,$b0
  defb $00,$dc,$01,$6e,$00,$3e,$01,$fe,$00,$3e,$01,$6e,$00,$dc,$00,$30
  defb $00,$78,$00,$00,$00,$b8,$01,$02,$02,$b1,$00,$35,$01,$00,$00,$dc
; This guardian (page 0xbe, sprites 4-7) appears in The Off Licence.
  defb $00,$00,$00,$00,$07,$e0,$1f,$b8,$3d,$ec,$7f,$fe,$7d,$f6,$fb,$f7
  defb $fb,$f7,$7f,$ee,$7f,$de,$3f,$fc,$1f,$f8,$07,$e0,$00,$00,$00,$00
  defb $00,$00,$01,$80,$07,$e0,$0d,$70,$1f,$f8,$3f,$fc,$3f,$f4,$7d,$fe
  defb $7b,$f6,$3b,$ec,$3f,$dc,$1f,$38,$0f,$f0,$07,$e0,$01,$80,$00,$00
  defb $01,$80,$07,$e0,$0f,$f0,$1e,$f8,$1f,$78,$3f,$7c,$3b,$fc,$37,$f4
  defb $37,$fc,$3f,$ec,$3f,$ec,$1f,$d8,$1f,$38,$0f,$f0,$07,$e0,$01,$80
  defb $00,$00,$01,$80,$07,$e0,$0f,$f0,$1e,$b8,$3f,$fc,$3f,$f4,$7b,$fe
  defb $77,$f6,$37,$ec,$3f,$dc,$1f,$38,$0f,$f0,$07,$e0,$01,$80,$00,$00
; This guardian (page 0xbf, sprites 0-3) appears in At the Foot of the
; MegaTree, Inside the MegaTrunk, On a Branch Over the Drive, Dr Jones will
; never believe this and Nomen Luni.
  defb $80,$00,$40,$00,$a3,$60,$53,$60,$29,$c0,$16,$a0,$0b,$e0,$07,$70
  defb $02,$a8,$05,$d4,$02,$2a,$03,$e5,$03,$e2,$03,$61,$03,$62,$07,$70
  defb $00,$00,$00,$00,$06,$30,$56,$30,$a9,$c0,$56,$a0,$0b,$e0,$06,$30
  defb $03,$e8,$05,$d4,$02,$2a,$03,$e4,$03,$ea,$17,$64,$0e,$60,$04,$70
  defb $00,$00,$00,$00,$03,$60,$03,$60,$01,$c0,$1e,$a0,$2b,$e0,$56,$b4
  defb $a3,$6a,$45,$d5,$82,$22,$03,$e1,$03,$e2,$03,$60,$03,$60,$07,$70
  defb $00,$00,$00,$00,$06,$30,$56,$30,$a9,$c0,$56,$a0,$0b,$e0,$07,$f4
  defb $02,$2a,$05,$d5,$02,$22,$03,$e1,$03,$e0,$03,$74,$03,$38,$07,$10
; This guardian (page 0xbf, sprites 4-5) appears in The Security Guard, I'm
; sure I've seen this before.. and Up on the Battlements.
  defb $02,$04,$05,$0e,$0a,$84,$15,$c4,$17,$44,$2b,$e4,$2f,$e0,$12,$44
  defb $08,$82,$07,$2c,$15,$50,$2a,$a4,$55,$44,$aa,$84,$45,$00,$1d,$c0
  defb $02,$00,$05,$00,$0a,$84,$15,$ce,$17,$44,$2b,$e4,$2f,$e4,$12,$44
  defb $08,$80,$07,$04,$15,$52,$2a,$ac,$55,$40,$aa,$84,$45,$04,$1d,$c4
; This guardian (page 0xbf, sprites 6-7) appears in Rescue Esmerelda and Above
; the West Bedroom.
  defb $00,$04,$07,$06,$2f,$a4,$5f,$d4,$30,$64,$42,$14,$32,$60,$1f,$c4
  defb $08,$82,$07,$2c,$15,$50,$2a,$a4,$55,$44,$aa,$84,$45,$00,$0c,$c0
  defb $00,$00,$07,$00,$2f,$a4,$50,$56,$22,$24,$52,$54,$3f,$e4,$17,$44
  defb $08,$80,$07,$04,$15,$52,$2a,$ac,$55,$40,$aa,$84,$45,$04,$19,$84

; Room 0x00: The Off Licence (teleport: 9)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lc000:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$aa,$aa,$aa,$aa,$aa ;
  defb $00,$00,$00,$80,$00,$00,$00,$02 ;
  defb $00,$00,$00,$80,$00,$00,$00,$02 ;
  defb $00,$00,$00,$8c,$00,$00,$00,$02 ;
  defb $00,$00,$00,$80,$00,$00,$00,$02 ;
  defb $00,$00,$00,$80,$00,$00,$00,$02 ;
  defb $00,$00,$00,$80,$00,$00,$00,$02 ;
  defb $00,$00,$00,$80,$00,$00,$00,$02 ;
  defb $00,$00,$00,$aa,$00,$00,$02,$aa ;
  defb $00,$00,$00,$00,$00,$00,$00,$02 ;
  defb $00,$00,$00,$00,$00,$00,$00,$02 ;
  defb $00,$00,$00,$00,$00,$00,$00,$02 ;
  defb $55,$55,$55,$55,$55,$55,$55,$55 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "         The Off Licence        " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $44,$ff,$de,$6c,$88,$12,$40,$04,$00 ; Floor
  defb $16,$22,$ff,$88,$ff,$22,$ff,$88,$ff ; Wall
  defb $05,$f8,$88,$9e,$bd,$bd,$9e,$88,$f8 ; Nasty
  defb $07,$03,$00,$0c,$00,$30,$00,$c0,$00 ; Ramp
  defb $43,$33,$ff,$33,$00,$ff,$00,$aa,$00 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5f33              ; Location in the attribute buffer at 5e00: (9,19)
  defb $0c                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fd7              ; Location in the attribute buffer at 5e00: (14,23)
  defb $04                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $05                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$a0            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $18,$18,$3c,$7e,$62,$62,$62,$7e ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $01                ; Room to the left (The Bridge)
  defb $00                ; Room to the right (The Off Licence)
  defb $00                ; Room above (The Off Licence)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $0a,$8a            ; Guardian no. 0x0a (vertical), base sprite 4, x=10
                          ; (ENTITY10)
  defb $0c,$1d            ; Guardian no. 0x0c (horizontal), base sprite 0,
                          ; initial x=29 (ENTITY12)
  defb $2c,$27            ; Guardian no. 0x2c (vertical), base sprite 1, x=7
                          ; (ENTITY44)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x01: The Bridge (teleport: 19)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lc100:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$0a,$00,$2a,$00,$00,$00 ;
  defb $00,$00,$2a,$00,$2a,$80,$00,$00 ;
  defb $00,$00,$aa,$ff,$ea,$a0,$00,$00 ;
  defb $55,$55,$aa,$ff,$ea,$a5,$55,$55 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "         The Bridge             " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $44,$ff,$ff,$fd,$bb,$d6,$72,$60,$40 ; Floor
  defb $46,$22,$77,$22,$88,$22,$77,$22,$88 ; Wall
  defb $2f,$03,$84,$48,$30,$03,$84,$48,$30 ; Nasty
  defb $07,$03,$03,$0c,$0d,$32,$37,$c2,$c8 ; Ramp
  defb $2c,$01,$40,$04,$46,$4f,$79,$f0,$f9 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5fec              ; Location in the attribute buffer at 5e00: (15,12)
  defb $05                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fc7              ; Location in the attribute buffer at 5e00: (14,7)
  defb $03                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $04                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $40,$a0            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $02                ; Room to the left (Under the MegaTree)
  defb $00                ; Room to the right (The Off Licence)
  defb $00                ; Room above (The Off Licence)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $14,$08            ; Guardian no. 0x14 (horizontal), base sprite 0,
                          ; initial x=8 (ENTITY20)
  defb $15,$14            ; Guardian no. 0x15 (horizontal), base sprite 0,
                          ; initial x=20 (ENTITY21)
  defb $0e,$8c            ; Guardian no. 0x0e (vertical), base sprite 4, x=12
                          ; (ENTITY14)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x02: Under the MegaTree (teleport: 29)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lc200:
  defb $00,$03,$ff,$cf,$fc,$00,$00,$00 ; Room layout
  defb $aa,$aa,$af,$ff,$3f,$00,$00,$00 ;
  defb $00,$00,$3f,$d0,$5c,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$80,$00,$00,$00,$00,$00,$00 ;
  defb $00,$01,$40,$04,$00,$04,$00,$00 ;
  defb $00,$00,$01,$00,$04,$00,$00,$00 ;
  defb $aa,$a8,$00,$00,$00,$01,$00,$00 ;
  defb $00,$00,$14,$10,$10,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $55,$55,$55,$55,$55,$55,$55,$55 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "       Under the MegaTree       " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $44,$d7,$b3,$75,$6d,$5c,$18,$08,$04 ; Floor
  defb $42,$bd,$aa,$5d,$a2,$f3,$0a,$06,$01 ; Wall
  defb $46,$49,$6a,$3b,$3a,$fc,$1e,$6b,$e8 ; Nasty
  defb $ff,$00,$00,$00,$ff,$00,$00,$00,$00 ; Ramp (unused)
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no ramp in this room)
; The next byte is copied to BORDER and specifies the border colour.
  defb $06                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $80,$a0            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $81,$42,$24,$18,$3c,$18,$3c,$c3 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $03                ; Room to the left (At the Foot of the MegaTree)
  defb $01                ; Room to the right (The Bridge)
  defb $00                ; Room above (The Off Licence)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $20,$10            ; Guardian no. 0x20 (horizontal), base sprite 0,
                          ; initial x=16 (ENTITY32)
  defb $2a,$0e            ; Guardian no. 0x2a (vertical), base sprite 0, x=14
                          ; (ENTITY42)
  defb $1a,$1b            ; Guardian no. 0x1a (horizontal), base sprite 0,
                          ; initial x=27 (ENTITY26)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x03: At the Foot of the MegaTree (teleport: 129)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lc300:
  defb $30,$c3,$08,$00,$08,$00,$00,$00 ; Room layout
  defb $30,$c3,$08,$00,$0a,$aa,$aa,$aa ;
  defb $30,$c3,$08,$00,$08,$00,$00,$00 ;
  defb $30,$c3,$08,$01,$58,$00,$00,$00 ;
  defb $30,$c3,$09,$00,$0a,$aa,$aa,$aa ;
  defb $30,$c3,$08,$14,$00,$00,$00,$00 ;
  defb $30,$c3,$08,$00,$00,$00,$00,$00 ;
  defb $30,$c3,$09,$00,$1a,$aa,$aa,$aa ;
  defb $30,$c3,$08,$00,$08,$00,$00,$00 ;
  defb $30,$c3,$08,$00,$58,$00,$00,$00 ;
  defb $30,$03,$09,$40,$08,$00,$00,$00 ;
  defb $00,$00,$08,$00,$08,$00,$00,$00 ;
  defb $00,$00,$08,$00,$08,$00,$00,$00 ;
  defb $00,$00,$00,$00,$50,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $55,$55,$55,$55,$55,$55,$55,$55 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "  At the Foot of the MegaTree   " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$f0,$f9,$bf,$1f,$0c,$10,$28,$44 ; Floor
  defb $16,$ab,$ab,$ad,$aa,$aa,$ae,$55,$55 ; Wall
  defb $06,$6e,$74,$38,$1e,$6e,$74,$38,$1e ; Nasty
  defb $07,$c0,$00,$30,$00,$0c,$00,$03,$00 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5f8f              ; Location in the attribute buffer at 5e00: (12,15)
  defb $03                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $c0,$a0            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $40,$a0,$5c,$22,$21,$22,$14,$08 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $04                ; Room to the left (The Drive)
  defb $02                ; Room to the right (Under the MegaTree)
  defb $08                ; Room above (Inside the MegaTrunk)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $06,$02            ; Guardian no. 0x06 (vertical), base sprite 0, x=2
                          ; (ENTITY6)
  defb $07,$05            ; Guardian no. 0x07 (vertical), base sprite 0, x=5
                          ; (ENTITY7)
  defb $08,$08            ; Guardian no. 0x08 (vertical), base sprite 0, x=8
                          ; (ENTITY8)
  defb $35,$09            ; Guardian no. 0x35 (horizontal), base sprite 0,
                          ; initial x=9 (ENTITY53)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x04: The Drive (teleport: 39)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lc400:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $54,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$80,$00,$00,$00,$00,$00,$00 ;
  defb $00,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $00,$a8,$00,$00,$00,$00,$00,$00 ;
  defb $00,$aa,$00,$00,$00,$00,$00,$00 ;
  defb $a0,$aa,$80,$00,$00,$00,$00,$00 ;
  defb $a0,$aa,$a5,$55,$55,$5a,$55,$55 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "            The Drive           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $06,$aa,$55,$aa,$ff,$ff,$55,$aa,$55 ; Floor
  defb $0d,$70,$07,$77,$77,$00,$3b,$0b,$7d ; Wall
  defb $44,$14,$2a,$14,$09,$6a,$9c,$08,$08 ; Nasty (unused)
  defb $05,$c0,$40,$70,$70,$0c,$74,$77,$05 ; Ramp
  defb $42,$7b,$00,$ed,$00,$aa,$55,$aa,$55 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5fa0              ; Location in the attribute buffer at 5e00: (13,0)
  defb $02                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5fc9              ; Location in the attribute buffer at 5e00: (14,9)
  defb $07                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $03                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $c0,$a0            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $05                ; Room to the left (The Security Guard)
  defb $03                ; Room to the right (At the Foot of the MegaTree)
  defb $06                ; Room above (Entrance to Hades)
  defb $2d                ; Room below (Under the Drive)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $15,$12            ; Guardian no. 0x15 (horizontal), base sprite 0,
                          ; initial x=18 (ENTITY21)
  defb $16,$15            ; Guardian no. 0x16 (horizontal), base sprite 0,
                          ; initial x=21 (ENTITY22)
  defb $17,$08            ; Guardian no. 0x17 (horizontal), base sprite 0,
                          ; initial x=8 (ENTITY23)
  defb $18,$14            ; Guardian no. 0x18 (horizontal), base sprite 0,
                          ; initial x=20 (ENTITY24)
  defb $24,$8f            ; Guardian no. 0x24 (horizontal), base sprite 4,
                          ; initial x=15 (ENTITY36)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x05: The Security Guard (teleport: 139)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lc500:
  defb $80,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a8,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$80,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $a8,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a8,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a8,$15,$54,$10,$41,$54,$15,$55 ;
  defb $a8,$2a,$a8,$20,$82,$a8,$2a,$aa ;
  defb $00,$00,$a8,$20,$82,$a8,$2a,$aa ;
  defb $00,$00,$a8,$20,$82,$a8,$28,$00 ;
  defb $00,$00,$a8,$20,$82,$a8,$28,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$2a ;
  defb $a0,$0a,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "       The Security Guard       " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$ff,$ff,$aa,$55,$aa,$55,$aa,$55 ; Floor
  defb $0d,$0e,$c6,$95,$b0,$36,$86,$c0,$ed ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $07,$e0,$40,$20,$10,$0e,$04,$02,$01 ; Ramp
  defb $42,$6f,$00,$b7,$00,$aa,$55,$aa,$55 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5fbd              ; Location in the attribute buffer at 5e00: (13,29)
  defb $03                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5ee8              ; Location in the attribute buffer at 5e00: (7,8)
  defb $08                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $13                ; Room to the left (The Forgotten Abbey)
  defb $04                ; Room to the right (The Drive)
  defb $0a                ; Room above (The Front Door)
  defb $06                ; Room below (Entrance to Hades)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $02,$8e            ; Guardian no. 0x02 (vertical), base sprite 4, x=14
                          ; (ENTITY2)
  defb $03,$8b            ; Guardian no. 0x03 (vertical), base sprite 4, x=11
                          ; (ENTITY3)
  defb $03,$97            ; Guardian no. 0x03 (vertical), base sprite 4, x=23
                          ; (ENTITY3)
  defb $04,$91            ; Guardian no. 0x04 (vertical), base sprite 4, x=17
                          ; (ENTITY4)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x06: Entrance to Hades (teleport: 239)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lc600:
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$15,$04,$55,$00,$00 ;
  defb $a0,$00,$00,$10,$44,$43,$00,$00 ;
  defb $a0,$00,$00,$10,$44,$54,$00,$00 ;
  defb $a0,$00,$00,$10,$44,$40,$00,$00 ;
  defb $a0,$00,$00,$15,$04,$55,$00,$00 ;
  defb $a0,$00,$00,$0c,$0c,$30,$00,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a0,$01,$01,$04,$14,$15,$04,$10 ;
  defb $a0,$01,$45,$11,$11,$04,$11,$10 ;
  defb $a0,$01,$11,$11,$14,$04,$11,$10 ;
  defb $a0,$01,$31,$11,$11,$04,$15,$10 ;
  defb $a0,$01,$01,$04,$11,$04,$11,$15 ;
  defb $a0,$03,$03,$0c,$33,$0c,$33,$0c ;
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "        Entrance to Hades       " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $34,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $a3,$a0,$14,$82,$50,$0a,$41,$28,$05 ; Floor
  defb $63,$bb,$bb,$38,$bb,$bb,$bb,$83,$bb ; Wall
  defb $32,$bf,$5c,$58,$30,$28,$58,$48,$30 ; Nasty
  defb $07,$40,$40,$10,$10,$04,$04,$01,$01 ; Ramp (unused)
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5fc7              ; Location in the attribute buffer at 5e00: (14,7)
  defb $00                ; Length: 0 (there is no ramp in this room)
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $0e                ; Room to the left (Rescue Esmerelda)
  defb $05                ; Room to the right (The Security Guard)
  defb $00                ; Room above (The Off Licence)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $10,$82            ; Guardian no. 0x10 (vertical), base sprite 4, x=2
                          ; (ENTITY16)
  defb $11,$a4            ; Guardian no. 0x11 (vertical), base sprite 5, x=4
                          ; (ENTITY17)
  defb $12,$c3            ; Guardian no. 0x12 (vertical), base sprite 6, x=3
                          ; (ENTITY18)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x07: Cuckoo's Nest (teleport: 1239)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lc700:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$f0,$00,$00,$00 ;
  defb $00,$00,$00,$01,$54,$00,$00,$00 ;
  defb $00,$00,$00,$05,$54,$00,$00,$00 ;
  defb $aa,$aa,$aa,$a9,$54,$00,$00,$00 ;
  defb $00,$00,$00,$05,$50,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "         Cuckoo's Nest          " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$04,$03,$c9,$d8,$30,$36,$23,$01 ; Floor
  defb $16,$ff,$60,$0e,$f0,$03,$3c,$c7,$38 ; Wall
  defb $06,$c2,$34,$0b,$44,$88,$0b,$30,$08 ; Nasty
  defb $07,$03,$00,$0c,$00,$30,$00,$c0,$00 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5f8d              ; Location in the attribute buffer at 5e00: (12,13)
  defb $02                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $20,$18,$a9,$db,$7e,$7e,$3c,$5a ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $08                ; Room to the left (Inside the MegaTrunk)
  defb $00                ; Room to the right (The Off Licence)
  defb $00                ; Room above (The Off Licence)
  defb $02                ; Room below (Under the MegaTree)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $27,$90            ; Guardian no. 0x27 (horizontal), base sprite 4,
                          ; initial x=16 (ENTITY39)
  defb $6f,$05            ; Guardian no. 0x6f (horizontal), base sprite 0,
                          ; initial x=5 (ENTITY111)
  defb $3c,$a4            ; Arrow flying left to right at pixel y-coordinate 82
                          ; (ENTITY60)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x08: Inside the MegaTrunk (teleport: 49)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lc800:
  defb $00,$00,$08,$00,$08,$00,$00,$00 ; Room layout
  defb $00,$00,$08,$00,$08,$00,$00,$00 ;
  defb $00,$00,$08,$00,$08,$00,$00,$00 ;
  defb $00,$00,$08,$01,$40,$00,$00,$00 ;
  defb $00,$00,$09,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$1a,$aa,$80,$00 ;
  defb $00,$00,$00,$05,$08,$00,$00,$00 ;
  defb $aa,$aa,$a8,$00,$08,$00,$00,$00 ;
  defb $30,$c3,$09,$00,$08,$00,$00,$00 ;
  defb $30,$c3,$08,$00,$58,$00,$00,$00 ;
  defb $30,$c3,$08,$00,$08,$00,$00,$00 ;
  defb $30,$c3,$08,$05,$00,$00,$00,$00 ;
  defb $30,$c3,$08,$00,$00,$00,$00,$00 ;
  defb $30,$c3,$09,$00,$0a,$aa,$aa,$aa ;
  defb $30,$c3,$08,$00,$08,$00,$00,$00 ;
  defb $30,$c3,$08,$00,$58,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "      Inside the MegaTrunk      " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$f5,$fa,$bf,$1f,$26,$14,$22,$10 ; Floor
  defb $16,$ab,$ab,$ad,$aa,$aa,$ae,$55,$55 ; Wall
  defb $06,$6e,$74,$38,$1e,$6e,$74,$38,$1e ; Nasty
  defb $07,$40,$00,$10,$00,$04,$00,$01,$00 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5efb              ; Location in the attribute buffer at 5e00: (7,27)
  defb $03                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $04                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $09                ; Room to the left (On a Branch Over the Drive)
  defb $07                ; Room to the right (Cuckoo's Nest)
  defb $0c                ; Room above (Tree Top)
  defb $03                ; Room below (At the Foot of the MegaTree)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $09,$02            ; Guardian no. 0x09 (vertical), base sprite 0, x=2
                          ; (ENTITY9)
  defb $09,$05            ; Guardian no. 0x09 (vertical), base sprite 0, x=5
                          ; (ENTITY9)
  defb $09,$08            ; Guardian no. 0x09 (vertical), base sprite 0, x=8
                          ; (ENTITY9)
  defb $18,$06            ; Guardian no. 0x18 (horizontal), base sprite 0,
                          ; initial x=6 (ENTITY24)
  defb $2c,$2c            ; Guardian no. 0x2c (vertical), base sprite 1, x=12
                          ; (ENTITY44)
  defb $16,$1b            ; Guardian no. 0x16 (horizontal), base sprite 0,
                          ; initial x=27 (ENTITY22)
  defb $2f,$93            ; Guardian no. 0x2f (horizontal), base sprite 4,
                          ; initial x=19 (ENTITY47)
  defb $ff,$00            ; Terminator (ENTITY127)

; Room 0x09: On a Branch Over the Drive (teleport: 149)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lc900:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$3c,$00,$00,$00,$00,$00 ;
  defb $00,$00,$fd,$50,$00,$00,$00,$00 ;
  defb $00,$00,$3f,$c0,$05,$55,$55,$55 ;
  defb $00,$00,$00,$00,$0f,$bf,$3b,$c0 ;
  defb $00,$00,$00,$00,$03,$f0,$3b,$00 ;
  defb $00,$00,$00,$00,$00,$00,$0f,$00 ;
  defb $00,$00,$00,$50,$00,$00,$00,$00 ;
  defb $00,$50,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$05,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "   On a Branch Over the Drive   " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $08,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $0a,$1f,$f3,$e1,$60,$30,$2c,$40,$80 ; Floor
  defb $4a,$09,$12,$0a,$1f,$e4,$08,$08,$08 ; Wall
  defb $0c,$42,$29,$54,$26,$87,$23,$2a,$04 ; Nasty
  defb $0f,$05,$02,$04,$08,$50,$20,$40,$80 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5f4e              ; Location in the attribute buffer at 5e00: (10,14)
  defb $04                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $30,$3c,$4f,$43,$82,$86,$e4,$fc ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $0a                ; Room to the left (The Front Door)
  defb $08                ; Room to the right (Inside the MegaTrunk)
  defb $0d                ; Room above (Out on a limb)
  defb $04                ; Room below (The Drive)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $09,$1e            ; Guardian no. 0x09 (vertical), base sprite 0, x=30
                          ; (ENTITY9)
  defb $1b,$87            ; Guardian no. 0x1b (vertical), base sprite 4, x=7
                          ; (ENTITY27)
  defb $3d,$13            ; Guardian no. 0x3d (horizontal), base sprite 0,
                          ; initial x=19 (ENTITY61)
  defb $3e,$0e            ; Guardian no. 0x3e (vertical), base sprite 0, x=14
                          ; (ENTITY62)
  defb $3c,$44            ; Arrow flying left to right at pixel y-coordinate 34
                          ; (ENTITY60)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x0a: The Front Door (teleport: 249)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lca00:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$aa,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $40,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "         The Front Door         " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $28,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $47,$ff,$aa,$77,$aa,$77,$aa,$55,$aa ; Floor
  defb $3a,$20,$10,$0e,$c1,$30,$09,$c6,$20 ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $2f,$c0,$40,$b0,$50,$ac,$54,$ab,$55 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5fe2              ; Location in the attribute buffer at 5e00: (15,2)
  defb $02                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $0c,$1c,$1c,$1e,$1b,$3f,$78,$ff ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $0b                ; Room to the left (The Hall)
  defb $09                ; Room to the right (On a Branch Over the Drive)
  defb $00                ; Room above (The Off Licence)
  defb $05                ; Room below (The Security Guard)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x0b: The Hall (teleport: 1249)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lcb00:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
  defb $00,$00,$00,$00,$00,$28,$00,$00 ;
  defb $00,$00,$00,$00,$00,$28,$00,$00 ;
  defb $00,$00,$00,$00,$00,$28,$00,$00 ;
  defb $00,$00,$00,$00,$00,$28,$00,$00 ;
  defb $00,$00,$00,$00,$00,$28,$00,$00 ;
  defb $00,$00,$00,$00,$00,$28,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$c0,$c0,$30,$00,$00,$00 ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "            The Hall            " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $47,$ff,$aa,$77,$aa,$77,$aa,$55,$aa ; Floor (unused)
  defb $3a,$20,$10,$0e,$c1,$30,$09,$c6,$20 ; Wall
  defb $44,$88,$a9,$a9,$bb,$bf,$bf,$bf,$5e ; Nasty
  defb $07,$c0,$c0,$30,$30,$0c,$0c,$03,$03 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5fa5              ; Location in the attribute buffer at 5e00: (13,5)
  defb $06                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $04                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $14                ; Room to the left (Ballroom East)
  defb $0a                ; Room to the right (The Front Door)
  defb $00                ; Room above (The Off Licence)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $59,$ca            ; Guardian no. 0x59 (vertical), base sprite 6, x=10
                          ; (ENTITY89)
  defb $1a,$13            ; Guardian no. 0x1a (horizontal), base sprite 0,
                          ; initial x=19 (ENTITY26)
  defb $5f,$13            ; Guardian no. 0x5f (horizontal), base sprite 0,
                          ; initial x=19 (ENTITY95)
  defb $45,$44            ; Arrow flying right to left at pixel y-coordinate 34
                          ; (ENTITY69)
  defb $3c,$16            ; Arrow flying left to right at pixel y-coordinate 11
                          ; (ENTITY60)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $59,$00            ; Guardian no. 0x59 (vertical), base sprite 0, x=0
                          ; (ENTITY89) (unused)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x0c: Tree Top (teleport: 349)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lcc00:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$40,$00,$00,$00 ;
  defb $00,$00,$54,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$14,$00,$04,$00,$00 ;
  defb $01,$50,$00,$00,$14,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$14,$00,$00 ;
  defb $55,$55,$54,$00,$08,$00,$00,$00 ;
  defb $0c,$f3,$c8,$10,$08,$00,$50,$00 ;
  defb $cf,$3f,$08,$00,$08,$50,$00,$00 ;
  defb $30,$30,$08,$00,$58,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "            Tree Top            " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$aa,$55,$aa,$58,$30,$10,$10,$08 ; Floor
  defb $16,$a5,$28,$52,$55,$55,$49,$a2,$b5 ; Wall
  defb $42,$89,$4a,$12,$34,$18,$34,$52,$91 ; Nasty
  defb $07,$40,$00,$10,$00,$04,$00,$01,$00 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5fcf              ; Location in the attribute buffer at 5e00: (14,15)
  defb $02                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $06                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $1e,$2d,$37,$7b,$6d,$5e,$b8,$c0 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $0d                ; Room to the left (Out on a limb)
  defb $00                ; Room to the right (The Off Licence)
  defb $00                ; Room above (The Off Licence)
  defb $08                ; Room below (Inside the MegaTrunk)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $18,$07            ; Guardian no. 0x18 (horizontal), base sprite 0,
                          ; initial x=7 (ENTITY24)
  defb $2e,$88            ; Guardian no. 0x2e (horizontal), base sprite 4,
                          ; initial x=8 (ENTITY46)
  defb $1a,$18            ; Guardian no. 0x1a (horizontal), base sprite 0,
                          ; initial x=24 (ENTITY26)
  defb $45,$84            ; Arrow flying right to left at pixel y-coordinate 66
                          ; (ENTITY69)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x0d: Out on a limb (teleport: 1349)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lcd00:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$04,$00,$00,$00,$00 ;
  defb $00,$10,$00,$00,$04,$01,$00,$00 ;
  defb $00,$00,$04,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$10,$00 ;
  defb $00,$00,$00,$01,$00,$40,$00,$00 ;
  defb $04,$00,$00,$04,$40,$00,$00,$00 ;
  defb $00,$04,$00,$01,$10,$00,$00,$00 ;
  defb $00,$00,$01,$00,$4a,$aa,$aa,$aa ;
  defb $01,$00,$00,$00,$00,$7f,$ff,$00 ;
  defb $00,$00,$40,$00,$40,$1f,$fc,$00 ;
  defb $00,$00,$00,$40,$00,$01,$50,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "        Out on a limb           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$01,$1e,$06,$7a,$1a,$e8,$68,$a0 ; Floor
  defb $42,$07,$ff,$fc,$38,$18,$10,$20,$00 ; Wall
  defb $02,$01,$81,$06,$58,$20,$40,$88,$82 ; Nasty
  defb $04,$00,$00,$00,$00,$00,$00,$00,$00 ; Ramp (unused)
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no ramp in this room)
; The next byte is copied to BORDER and specifies the border colour.
  defb $05                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $60,$b8,$be,$5d,$5a,$35,$2a,$15 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $0a                ; Room to the left (The Front Door)
  defb $0c                ; Room to the right (Tree Top)
  defb $00                ; Room above (The Off Licence)
  defb $09                ; Room below (On a Branch Over the Drive)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $2d,$4c            ; Guardian no. 0x2d (vertical), base sprite 2, x=12
                          ; (ENTITY45)
  defb $19,$13            ; Guardian no. 0x19 (horizontal), base sprite 0,
                          ; initial x=19 (ENTITY25)
  defb $58,$14            ; Guardian no. 0x58 (horizontal), base sprite 0,
                          ; initial x=20 (ENTITY88)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x0e: Rescue Esmerelda (teleport: 2349)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lce00:
  defb $00,$00,$00,$00,$00,$00,$08,$02 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$08,$02 ;
  defb $00,$00,$00,$00,$00,$00,$00,$02 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$aa,$00 ;
  defb $00,$00,$00,$00,$00,$00,$08,$06 ;
  defb $00,$00,$00,$00,$00,$00,$00,$12 ;
  defb $00,$00,$00,$00,$00,$00,$00,$42 ;
  defb $00,$00,$00,$00,$00,$00,$01,$02 ;
  defb $aa,$06,$aa,$06,$aa,$0a,$aa,$06 ;
  defb $aa,$0e,$aa,$0e,$aa,$00,$00,$06 ;
  defb $aa,$0e,$aa,$0e,$aa,$00,$00,$06 ;
  defb $aa,$0e,$aa,$0e,$aa,$80,$00,$12 ;
  defb $aa,$0e,$aa,$0e,$aa,$a0,$00,$40 ;
  defb $aa,$0e,$aa,$0e,$aa,$a8,$01,$00 ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$04,$0a ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "        Rescue Esmerelda        " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $10,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $17,$03,$03,$0c,$0c,$31,$32,$c4,$c8 ; Floor
  defb $04,$ee,$00,$bb,$00,$ee,$00,$bb,$00 ; Wall
  defb $55,$d1,$e2,$c4,$c8,$d1,$e2,$c4,$c8 ; Nasty
  defb $17,$00,$00,$00,$00,$00,$00,$00,$00 ; Ramp (unused)
  defb $16,$f1,$aa,$f8,$aa,$00,$ee,$00,$bb ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5e98              ; Location in the attribute buffer at 5e00: (4,24)
  defb $04                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no ramp in this room)
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $ff,$49,$49,$49,$49,$49,$49,$ff ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $0f                ; Room to the left (I'm sure I've seen this before..)
  defb $2c                ; Room to the right (On top of the house)
  defb $14                ; Room above (Ballroom East)
  defb $27                ; Room below (Emergency Generator)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $04,$c4            ; Guardian no. 0x04 (vertical), base sprite 6, x=4
                          ; (ENTITY4)
  defb $02,$cc            ; Guardian no. 0x02 (vertical), base sprite 6, x=12
                          ; (ENTITY2)
  defb $0d,$05            ; Guardian no. 0x0d (horizontal), base sprite 0,
                          ; initial x=5 (ENTITY13)
  defb $0f,$98            ; Guardian no. 0x0f (vertical), base sprite 4, x=24
                          ; (ENTITY15)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x0f: I'm sure I've seen this before.. (teleport: 12349)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lcf00:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$42,$a4,$2a,$a4,$2a,$42,$aa ;
  defb $aa,$c2,$ac,$2a,$ac,$2a,$c2,$aa ;
  defb $aa,$c2,$ac,$2a,$ac,$2a,$c2,$aa ;
  defb $aa,$c2,$ac,$2a,$ac,$2a,$c2,$aa ;
  defb $aa,$c2,$ac,$2a,$ac,$2a,$c2,$aa ;
  defb $aa,$c2,$ac,$2a,$ac,$2a,$c2,$aa ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "I'm sure I've seen this before.." ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $08,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $0c,$80,$40,$20,$50,$48,$54,$52,$55 ; Floor
  defb $53,$66,$66,$66,$00,$66,$66,$66,$66 ; Wall
  defb $4c,$51,$55,$54,$55,$15,$55,$45,$55 ; Nasty
  defb $0c,$00,$00,$00,$00,$00,$00,$00,$00 ; Ramp (unused)
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no ramp in this room)
; The next byte is copied to BORDER and specifies the border colour.
  defb $03                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $18,$24,$18,$2c,$5e,$5e,$e7,$66 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $10                ; Room to the left (We must perform a Quirkafleeg)
  defb $0e                ; Room to the right (Rescue Esmerelda)
  defb $00                ; Room above (The Off Licence)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $04,$85            ; Guardian no. 0x04 (vertical), base sprite 4, x=5
                          ; (ENTITY4)
  defb $03,$8b            ; Guardian no. 0x03 (vertical), base sprite 4, x=11
                          ; (ENTITY3)
  defb $05,$93            ; Guardian no. 0x05 (vertical), base sprite 4, x=19
                          ; (ENTITY5)
  defb $02,$99            ; Guardian no. 0x02 (vertical), base sprite 4, x=25
                          ; (ENTITY2)
  defb $0d,$06            ; Guardian no. 0x0d (horizontal), base sprite 0,
                          ; initial x=6 (ENTITY13)
  defb $45,$64            ; Arrow flying right to left at pixel y-coordinate 50
                          ; (ENTITY69)
  defb $3c,$54            ; Arrow flying left to right at pixel y-coordinate 42
                          ; (ENTITY60)
  defb $ff,$00            ; Terminator (ENTITY127)

; Room 0x10: We must perform a Quirkafleeg (teleport: 59)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ld000:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$00,$00,$00,$00,$00,$02,$aa ;
  defb $aa,$40,$00,$00,$00,$00,$02,$aa ;
  defb $aa,$40,$00,$00,$00,$00,$02,$aa ;
  defb $aa,$40,$00,$00,$00,$00,$02,$aa ;
  defb $aa,$40,$00,$00,$00,$00,$02,$aa ;
  defb $aa,$40,$00,$00,$00,$00,$02,$aa ;
  defb $aa,$7f,$ff,$ff,$ff,$ff,$fe,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "  We must perform a Quirkafleeg " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $06,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $38,$33,$bb,$dd,$cc,$55,$99,$dd,$ee ; Floor
  defb $0d,$27,$f6,$00,$dc,$d1,$04,$77,$80 ; Wall
  defb $45,$40,$e4,$4e,$44,$44,$44,$ee,$ff ; Nasty
  defb $07,$80,$40,$20,$30,$a8,$64,$22,$11 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5f24              ; Location in the attribute buffer at 5e00: (9,4)
  defb $01                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $18,$24,$18,$2c,$5e,$5e,$e7,$66 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $11                ; Room to the left (Up on the Battlements)
  defb $0f                ; Room to the right (I'm sure I've seen this
                          ; before..)
  defb $32                ; Room above (Watch Tower)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $0d,$08            ; Guardian no. 0x0d (horizontal), base sprite 0,
                          ; initial x=8 (ENTITY13)
  defb $01,$10            ; Rope at x=16 (ENTITY1)
  defb $3c,$84            ; Arrow flying left to right at pixel y-coordinate 66
                          ; (ENTITY60)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x11: Up on the Battlements (teleport: 159)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ld100:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$42,$a4,$2a,$a4,$2a,$42,$aa ;
  defb $aa,$c2,$ac,$2a,$ac,$2a,$c2,$aa ;
  defb $aa,$c2,$ac,$2a,$ac,$2a,$c2,$aa ;
  defb $aa,$c2,$ac,$2a,$ac,$2a,$c2,$aa ;
  defb $aa,$c2,$ac,$2a,$ac,$2a,$c2,$aa ;
  defb $aa,$c2,$ac,$2a,$ac,$2a,$c2,$aa ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "      Up on the Battlements     " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$80,$c0,$e0,$b0,$90,$94,$d6,$77 ; Floor
  defb $0e,$00,$7f,$7f,$63,$6b,$63,$7f,$7f ; Wall
  defb $20,$4a,$2a,$1a,$48,$6c,$6a,$29,$88 ; Nasty
  defb $04,$00,$00,$00,$00,$00,$00,$00,$00 ; Ramp (unused)
  defb $42,$28,$aa,$0a,$00,$55,$55,$55,$ff ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5f2d              ; Location in the attribute buffer at 5e00: (9,13)
  defb $05                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no ramp in this room)
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $18,$24,$18,$2c,$5e,$5e,$e7,$66 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $12                ; Room to the left (On the Roof)
  defb $10                ; Room to the right (We must perform a Quirkafleeg)
  defb $00                ; Room above (The Off Licence)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $02,$85            ; Guardian no. 0x02 (vertical), base sprite 4, x=5
                          ; (ENTITY2)
  defb $03,$8b            ; Guardian no. 0x03 (vertical), base sprite 4, x=11
                          ; (ENTITY3)
  defb $04,$93            ; Guardian no. 0x04 (vertical), base sprite 4, x=19
                          ; (ENTITY4)
  defb $05,$99            ; Guardian no. 0x05 (vertical), base sprite 4, x=25
                          ; (ENTITY5)
  defb $45,$84            ; Arrow flying right to left at pixel y-coordinate 66
                          ; (ENTITY69)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x12: On the Roof (teleport: 259)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ld200:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$0a,$40 ;
  defb $00,$00,$00,$00,$00,$00,$0a,$d0 ;
  defb $aa,$40,$00,$00,$00,$00,$0a,$aa ;
  defb $aa,$c0,$00,$00,$00,$00,$0a,$aa ;
  defb $aa,$c0,$00,$00,$00,$00,$0a,$aa ;
  defb $aa,$90,$00,$00,$00,$00,$0a,$aa ;
  defb $aa,$b0,$00,$00,$00,$00,$0a,$aa ;
  defb $aa,$b0,$0a,$40,$00,$00,$0a,$aa ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "          On the Roof           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $44,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $07,$80,$c0,$e0,$d0,$58,$9c,$de,$cd ; Floor
  defb $26,$11,$f8,$07,$08,$f0,$0f,$d0,$3f ; Wall
  defb $46,$55,$99,$dd,$cc,$55,$99,$dd,$cc ; Nasty
  defb $07,$00,$00,$00,$00,$00,$00,$00,$00 ; Ramp (unused)
  defb $0a,$f0,$f0,$f0,$ff,$ff,$00,$00,$ff ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5fee              ; Location in the attribute buffer at 5e00: (15,14)
  defb $08                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no ramp in this room)
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $01,$02,$05,$0a,$54,$28,$30,$48 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $30                ; Room to the left (Nomen Luni)
  defb $11                ; Room to the right (Up on the Battlements)
  defb $12                ; Room above (On the Roof)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $22,$16            ; Guardian no. 0x22 (horizontal), base sprite 0,
                          ; initial x=22 (ENTITY34)
  defb $01,$10            ; Rope at x=16 (ENTITY1)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x13: The Forgotten Abbey (teleport: 1259)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ld300:
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ; Room layout
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
  defb $a0,$00,$30,$00,$c0,$00,$c0,$0a ;
  defb $a0,$00,$00,$00,$00,$00,$00,$0a ;
  defb $a0,$00,$00,$00,$00,$00,$00,$0a ;
  defb $a8,$00,$00,$00,$00,$00,$00,$0a ;
  defb $a0,$00,$00,$00,$00,$00,$00,$0a ;
  defb $a0,$00,$00,$00,$00,$00,$00,$0a ;
  defb $a0,$00,$00,$00,$30,$00,$00,$0a ;
  defb $a0,$00,$00,$00,$00,$00,$00,$1a ;
  defb $a5,$00,$00,$00,$00,$00,$00,$0a ;
  defb $50,$05,$55,$55,$55,$55,$55,$5a ;
  defb $50,$00,$00,$00,$00,$00,$00,$0a ;
  defb $a8,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "      The Forgotten Abbey       " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$ff,$ff,$f2,$24,$40,$02,$00,$88 ; Floor
  defb $1d,$44,$aa,$11,$44,$11,$aa,$44,$11 ; Wall
  defb $42,$18,$3c,$7e,$99,$99,$7e,$42,$3c ; Nasty
  defb $07,$80,$40,$e0,$30,$a8,$d4,$22,$89 ; Ramp
  defb $0f,$70,$55,$00,$bb,$aa,$aa,$aa,$aa ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5ee4              ; Location in the attribute buffer at 5e00: (7,4)
  defb $1a                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5fc4              ; Location in the attribute buffer at 5e00: (14,4)
  defb $02                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $18,$24,$db,$db,$24,$18,$18,$18 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $31                ; Room to the left (The Wine Cellar)
  defb $05                ; Room to the right (The Security Guard)
  defb $00                ; Room above (The Off Licence)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $4a,$08            ; Guardian no. 0x4a (horizontal), base sprite 0,
                          ; initial x=8 (ENTITY74)
  defb $4b,$10            ; Guardian no. 0x4b (horizontal), base sprite 0,
                          ; initial x=16 (ENTITY75)
  defb $4c,$0b            ; Guardian no. 0x4c (horizontal), base sprite 0,
                          ; initial x=11 (ENTITY76)
  defb $4d,$18            ; Guardian no. 0x4d (horizontal), base sprite 0,
                          ; initial x=24 (ENTITY77)
  defb $4e,$07            ; Guardian no. 0x4e (horizontal), base sprite 0,
                          ; initial x=7 (ENTITY78)
  defb $4f,$0c            ; Guardian no. 0x4f (horizontal), base sprite 0,
                          ; initial x=12 (ENTITY79)
  defb $50,$12            ; Guardian no. 0x50 (horizontal), base sprite 0,
                          ; initial x=18 (ENTITY80)
  defb $51,$18            ; Guardian no. 0x51 (horizontal), base sprite 0,
                          ; initial x=24 (ENTITY81)

; Room 0x14: Ballroom East (teleport: 359)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ld400:
  defb $a0,$40,$0a,$00,$00,$00,$00,$00 ; Room layout
  defb $a0,$40,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$40,$0a,$00,$00,$00,$00,$00 ;
  defb $00,$40,$00,$00,$00,$00,$00,$00 ;
  defb $00,$40,$00,$00,$00,$00,$00,$00 ;
  defb $55,$55,$5a,$0a,$aa,$aa,$aa,$aa ;
  defb $00,$00,$10,$00,$00,$00,$00,$00 ;
  defb $00,$00,$10,$00,$00,$00,$00,$00 ;
  defb $00,$00,$15,$55,$55,$55,$55,$55 ;
  defb $00,$00,$10,$00,$00,$00,$00,$00 ;
  defb $00,$00,$10,$00,$00,$00,$00,$00 ;
  defb $00,$00,$10,$00,$00,$00,$00,$00 ;
  defb $00,$00,$10,$00,$00,$00,$00,$00 ;
  defb $00,$00,$10,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "         Ballroom East          " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $06,$aa,$55,$22,$44,$22,$44,$22,$44 ; Floor
  defb $0f,$44,$44,$ff,$11,$11,$ff,$55,$aa ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Ramp (unused)
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no ramp in this room)
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $81,$81,$42,$24,$18,$18,$18,$e7 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $15                ; Room to the left (Ballroom West)
  defb $0b                ; Room to the right (The Hall)
  defb $1a                ; Room above (East Wall Base)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $13,$6c            ; Guardian no. 0x13 (vertical), base sprite 3, x=12
                          ; (ENTITY19)
  defb $2a,$05            ; Guardian no. 0x2a (vertical), base sprite 0, x=5
                          ; (ENTITY42)
  defb $28,$07            ; Guardian no. 0x28 (vertical), base sprite 0, x=7
                          ; (ENTITY40)
  defb $29,$2b            ; Guardian no. 0x29 (vertical), base sprite 1, x=11
                          ; (ENTITY41)
  defb $15,$18            ; Guardian no. 0x15 (horizontal), base sprite 0,
                          ; initial x=24 (ENTITY21)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x15: Ballroom West (teleport: 1359)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ld500:
  defb $00,$00,$00,$00,$00,$00,$00,$0a ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $55,$55,$55,$55,$55,$55,$55,$55 ;
  defb $00,$00,$a0,$00,$00,$00,$00,$00 ;
  defb $00,$00,$a0,$00,$00,$00,$00,$00 ;
  defb $00,$00,$a0,$00,$00,$00,$55,$55 ;
  defb $00,$00,$a0,$00,$00,$00,$00,$00 ;
  defb $00,$00,$a0,$00,$00,$00,$00,$00 ;
  defb $00,$00,$a0,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $55,$55,$55,$55,$55,$55,$55,$55 ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "         Ballroom West          " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $32,$aa,$a8,$ad,$af,$20,$aa,$55,$55 ; Floor
  defb $23,$11,$22,$88,$11,$44,$88,$22,$44 ; Wall
  defb $42,$28,$54,$aa,$54,$a8,$54,$14,$2e ; Nasty (unused)
  defb $07,$c0,$c0,$30,$b0,$0c,$0c,$03,$0b ; Ramp
  defb $46,$ff,$ff,$ff,$aa,$55,$18,$18,$18 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5fb0              ; Location in the attribute buffer at 5e00: (13,16)
  defb $0c                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5fa3              ; Location in the attribute buffer at 5e00: (13,3)
  defb $04                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $04,$04,$ae,$ae,$a2,$42,$42,$ee ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $16                ; Room to the left (To the Kitchens    Main Stairway)
  defb $14                ; Room to the right (Ballroom East)
  defb $1b                ; Room above (The Chapel)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $21,$18            ; Guardian no. 0x21 (horizontal), base sprite 0,
                          ; initial x=24 (ENTITY33)
  defb $28,$0e            ; Guardian no. 0x28 (vertical), base sprite 0, x=14
                          ; (ENTITY40)
  defb $2a,$06            ; Guardian no. 0x2a (vertical), base sprite 0, x=6
                          ; (ENTITY42)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x16: To the Kitchens    Main Stairway (teleport: 2359)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ld600:
  defb $00,$00,$80,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$80,$00,$00,$00,$00,$00 ;
  defb $00,$00,$80,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$03,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$01,$95,$55,$55,$50,$00,$55 ;
  defb $00,$00,$80,$00,$00,$00,$00,$00 ;
  defb $00,$00,$80,$00,$00,$00,$00,$00 ;
  defb $a5,$55,$85,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$80,$00,$00,$00,$55,$40 ;
  defb $a0,$00,$80,$00,$01,$40,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "To the Kitchens    Main Stairway" ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $08,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $0d,$ff,$ff,$00,$ff,$00,$00,$00,$00 ; Floor
  defb $3a,$00,$15,$bf,$15,$00,$51,$fb,$51 ; Wall
  defb $4d,$18,$5a,$bd,$19,$7e,$99,$24,$24 ; Nasty
  defb $0f,$c0,$80,$30,$20,$0c,$08,$03,$02 ; Ramp
  defb $6b,$f0,$aa,$78,$ff,$aa,$55,$aa,$55 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5f0e              ; Location in the attribute buffer at 5e00: (8,14)
  defb $02                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5f7f              ; Location in the attribute buffer at 5e00: (11,31)
  defb $0c                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $04                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $40,$a0,$f0,$f8,$fc,$7a,$25,$02 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $17                ; Room to the left (The Kitchen)
  defb $15                ; Room to the right (Ballroom West)
  defb $1c                ; Room above (First Landing)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $5a,$04            ; Guardian no. 0x5a (horizontal), base sprite 0,
                          ; initial x=4 (ENTITY90)
  defb $5b,$10            ; Guardian no. 0x5b (horizontal), base sprite 0,
                          ; initial x=16 (ENTITY91)
  defb $5c,$96            ; Guardian no. 0x5c (horizontal), base sprite 4,
                          ; initial x=22 (ENTITY92)
  defb $5d,$04            ; Guardian no. 0x5d (horizontal), base sprite 0,
                          ; initial x=4 (ENTITY93)
  defb $5e,$96            ; Guardian no. 0x5e (horizontal), base sprite 4,
                          ; initial x=22 (ENTITY94)
  defb $5f,$0b            ; Guardian no. 0x5f (horizontal), base sprite 0,
                          ; initial x=11 (ENTITY95)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x17: The Kitchen (teleport: 12359)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ld700:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $54,$15,$41,$50,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$04,$00,$00,$00 ;
  defb $54,$15,$40,$00,$00,$00,$00,$2a ;
  defb $00,$00,$01,$50,$00,$00,$00,$aa ;
  defb $00,$00,$00,$00,$00,$00,$02,$aa ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $54,$15,$41,$50,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$15,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$02,$aa,$aa ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "          The Kitchen           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$fe,$01,$7d,$85,$81,$81,$81,$01 ; Floor
  defb $4d,$42,$a5,$5a,$24,$24,$5a,$a5,$42 ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $47,$03,$00,$0c,$00,$30,$00,$c0,$00 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fd6              ; Location in the attribute buffer at 5e00: (14,22)
  defb $07                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $04                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $20,$40,$a0,$18,$16,$09,$08,$04 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $18                ; Room to the left (West of Kitchen)
  defb $16                ; Room to the right (To the Kitchens    Main
                          ; Stairway)
  defb $00                ; Room above (The Off Licence)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $30,$03            ; Guardian no. 0x30 (vertical), base sprite 0, x=3
                          ; (ENTITY48)
  defb $31,$09            ; Guardian no. 0x31 (vertical), base sprite 0, x=9
                          ; (ENTITY49)
  defb $32,$0f            ; Guardian no. 0x32 (vertical), base sprite 0, x=15
                          ; (ENTITY50)
  defb $30,$14            ; Guardian no. 0x30 (vertical), base sprite 0, x=20
                          ; (ENTITY48)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x18: West of Kitchen (teleport: 459)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ld800:
  defb $00,$00,$01,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$01,$00,$00,$00,$00,$00 ;
  defb $00,$00,$01,$00,$00,$00,$00,$00 ;
  defb $00,$00,$01,$00,$00,$00,$00,$00 ;
  defb $00,$00,$01,$00,$00,$00,$00,$00 ;
  defb $00,$00,$01,$00,$10,$05,$54,$15 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$00,$00,$04,$00,$15 ;
  defb $a8,$00,$00,$00,$15,$00,$50,$00 ;
  defb $aa,$00,$00,$50,$00,$00,$00,$00 ;
  defb $aa,$80,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$a0,$00,$00,$15,$05,$54,$15 ;
  defb $aa,$a8,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "    West of Kitchen             " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room. Note that because of a bug
; in the game engine, the conveyor tile is not drawn correctly (see the room
; image above).
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $05,$ff,$bd,$a5,$a5,$a5,$42,$00,$00 ; Floor
  defb $22,$09,$42,$90,$24,$09,$42,$90,$24 ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $47,$c0,$40,$b0,$50,$ac,$54,$ab,$55 ; Ramp
  defb $42,$f0,$55,$aa,$55,$55,$aa,$2a,$08 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5f96              ; Location in the attribute buffer at 5e00: (12,22)
  defb $05                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5fc8              ; Location in the attribute buffer at 5e00: (14,8)
  defb $07                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $19                ; Room to the left (Cold Store)
  defb $17                ; Room to the right (The Kitchen)
  defb $1e                ; Room above (The Banyan Tree)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $31,$09            ; Guardian no. 0x31 (vertical), base sprite 0, x=9
                          ; (ENTITY49)
  defb $32,$0e            ; Guardian no. 0x32 (vertical), base sprite 0, x=14
                          ; (ENTITY50)
  defb $31,$14            ; Guardian no. 0x31 (vertical), base sprite 0, x=20
                          ; (ENTITY49)
  defb $30,$1b            ; Guardian no. 0x30 (vertical), base sprite 0, x=27
                          ; (ENTITY48)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x19: Cold Store (teleport: 1459)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ld900:
  defb $00,$03,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$30,$00,$00,$c0,$00 ;
  defb $54,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$c0,$03,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $55,$55,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $55,$50,$00,$00,$00,$00,$0a,$aa ;
  defb $00,$00,$00,$00,$00,$00,$0a,$aa ;
  defb $00,$00,$00,$00,$00,$00,$0a,$aa ;
  defb $55,$50,$00,$00,$00,$00,$0a,$aa ;
  defb $00,$00,$30,$00,$00,$14,$0a,$aa ;
  defb $00,$00,$00,$00,$00,$00,$0a,$aa ;
  defb $00,$00,$00,$00,$00,$00,$0a,$aa ;
  defb $55,$55,$55,$55,$55,$55,$5a,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "           Cold Store           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $0e,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $0d,$ff,$ff,$55,$aa,$55,$aa,$00,$00 ; Floor
  defb $22,$92,$52,$4a,$49,$29,$25,$a4,$92 ; Wall
  defb $4f,$20,$22,$14,$d8,$1b,$28,$44,$04 ; Nasty
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Ramp (unused)
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no ramp in this room)
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $70,$8c,$72,$fa,$ef,$ad,$25,$21 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $34                ; Room to the left (Back Stairway)
  defb $18                ; Room to the right (West of Kitchen)
  defb $1f                ; Room above (Swimming Pool)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $36,$10            ; Guardian no. 0x36 (horizontal), base sprite 0,
                          ; initial x=16 (ENTITY54)
  defb $37,$04            ; Guardian no. 0x37 (horizontal), base sprite 0,
                          ; initial x=4 (ENTITY55)
  defb $38,$03            ; Guardian no. 0x38 (horizontal), base sprite 0,
                          ; initial x=3 (ENTITY56)
  defb $39,$08            ; Guardian no. 0x39 (horizontal), base sprite 0,
                          ; initial x=8 (ENTITY57)
  defb $01,$10            ; Rope at x=16 (ENTITY1)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x1a: East Wall Base (teleport: 2459)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lda00:
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ; Room layout
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$1a,$00,$00,$00,$00,$00 ;
  defb $a0,$04,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a4,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$04,$00,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$1a,$00,$00,$00,$00,$00 ;
  defb $a0,$10,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$04,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$1a,$00,$00,$00,$00,$00 ;
  defb $a0,$40,$0a,$00,$00,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "         East Wall Base         " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $05,$5b,$a4,$a4,$55,$0a,$00,$00,$00 ; Floor
  defb $26,$59,$25,$26,$d9,$29,$d6,$54,$96 ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Ramp (unused)
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no ramp in this room)
; The next byte is copied to BORDER and specifies the border colour.
  defb $05                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $1b                ; Room to the left (The Chapel)
  defb $00                ; Room to the right (The Off Licence)
  defb $20                ; Room above (Halfway up the East Wall)
  defb $14                ; Room below (Ballroom East)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $60,$03            ; Guardian no. 0x60 (vertical), base sprite 0, x=3
                          ; (ENTITY96)
  defb $2d,$27            ; Guardian no. 0x2d (vertical), base sprite 1, x=7
                          ; (ENTITY45)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x1b: The Chapel (teleport: 12459)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ldb00:
  defb $00,$00,$00,$00,$00,$00,$00,$0a ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$80,$1a ;
  defb $00,$00,$00,$00,$00,$02,$80,$1a ;
  defb $00,$00,$00,$00,$00,$0a,$80,$1a ;
  defb $00,$00,$00,$00,$00,$2a,$80,$1a ;
  defb $00,$00,$00,$00,$00,$aa,$80,$1a ;
  defb $00,$00,$00,$00,$00,$00,$00,$1a ;
  defb $00,$00,$00,$00,$00,$00,$00,$1a ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$a0,$aa ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$a0,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "           The Chapel           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $0d,$49,$49,$49,$49,$49,$49,$49,$49 ; Floor
  defb $16,$a8,$25,$00,$25,$a8,$40,$dd,$40 ; Wall
  defb $42,$28,$54,$aa,$55,$aa,$28,$28,$28 ; Nasty (unused)
  defb $07,$03,$00,$0c,$00,$30,$00,$c0,$00 ; Ramp
  defb $07,$00,$0a,$bd,$ff,$00,$aa,$55,$aa ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fb1              ; Location in the attribute buffer at 5e00: (13,17)
  defb $07                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $10,$30,$38,$6c,$c6,$c6,$6c,$10 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $1c                ; Room to the left (First Landing)
  defb $1a                ; Room to the right (East Wall Base)
  defb $21                ; Room above (The Bathroom)
  defb $15                ; Room below (Ballroom West)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $10,$99            ; Guardian no. 0x10 (vertical), base sprite 4, x=25
                          ; (ENTITY16)
  defb $11,$bb            ; Guardian no. 0x11 (vertical), base sprite 5, x=27
                          ; (ENTITY17)
  defb $12,$da            ; Guardian no. 0x12 (vertical), base sprite 6, x=26
                          ; (ENTITY18)
  defb $67,$0c            ; Guardian no. 0x67 (horizontal), base sprite 0,
                          ; initial x=12 (ENTITY103)
  defb $64,$06            ; Guardian no. 0x64 (vertical), base sprite 0, x=6
                          ; (ENTITY100)
  defb $66,$91            ; Guardian no. 0x66 (vertical), base sprite 4, x=17
                          ; (ENTITY102)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x1c: First Landing (teleport: 3459)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ldc00:
  defb $a0,$00,$00,$00,$00,$00,$a0,$00 ; Room layout
  defb $a0,$00,$00,$00,$00,$00,$a0,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$a0,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$a0,$30 ;
  defb $a0,$00,$00,$00,$00,$00,$a0,$fc ;
  defb $a0,$00,$00,$00,$00,$00,$a0,$30 ;
  defb $a0,$00,$00,$00,$00,$00,$a0,$30 ;
  defb $a0,$00,$00,$00,$00,$00,$a0,$30 ;
  defb $a0,$00,$00,$00,$00,$00,$a0,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$a0,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$a0,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$a0,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$99,$99 ;
  defb $55,$55,$55,$55,$55,$50,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "        First Landing           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$ff,$aa,$55,$80,$5d,$94,$5d,$80 ; Floor
  defb $0e,$22,$55,$00,$55,$88,$55,$00,$22 ; Wall
  defb $d6,$7e,$81,$a5,$99,$99,$a5,$81,$7e ; Nasty
  defb $07,$03,$03,$0c,$0c,$30,$30,$c0,$c0 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fc9              ; Location in the attribute buffer at 5e00: (14,9)
  defb $0f                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $03                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $1d                ; Room to the left (The Nightmare Room)
  defb $1b                ; Room to the right (The Chapel)
  defb $22                ; Room above (Top Landing)
  defb $16                ; Room below (To the Kitchens    Main Stairway)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $43,$19            ; Guardian no. 0x43 (horizontal), base sprite 0,
                          ; initial x=25 (ENTITY67)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x1d: The Nightmare Room (teleport: 13459)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ldd00:
  defb $00,$00,$00,$00,$00,$00,$00,$0a ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$04,$00,$40,$04,$00,$0a ;
  defb $00,$00,$00,$10,$00,$00,$00,$0a ;
  defb $00,$01,$00,$00,$01,$00,$00,$0a ;
  defb $00,$00,$04,$00,$00,$04,$00,$0a ;
  defb $00,$00,$00,$10,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$01,$00,$04,$0a ;
  defb $00,$00,$04,$00,$00,$04,$00,$0a ;
  defb $aa,$a8,$00,$10,$00,$00,$00,$0a ;
  defb $aa,$aa,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$80,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "       The Nightmare Room       " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room. Note that because of a bug
; in the game engine, the conveyor tile is not drawn correctly (see the room
; image above).
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $44,$ff,$a5,$52,$24,$42,$22,$40,$04 ; Floor
  defb $33,$00,$2a,$54,$00,$00,$a2,$45,$00 ; Wall
  defb $45,$42,$99,$66,$a1,$9f,$81,$66,$5a ; Nasty (unused)
  defb $07,$80,$c0,$a0,$f0,$f8,$5c,$ba,$02 ; Ramp
  defb $a5,$ff,$5a,$ff,$ff,$aa,$55,$aa,$55 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5efb              ; Location in the attribute buffer at 5e00: (7,27)
  defb $01                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5fc9              ; Location in the attribute buffer at 5e00: (14,9)
  defb $03                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $ac,$ae,$01,$ad,$ad,$02,$ac,$58 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $1e                ; Room to the left (The Banyan Tree)
  defb $1c                ; Room to the right (First Landing)
  defb $00                ; Room above (The Off Licence)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $46,$88            ; Guardian no. 0x46 (vertical), base sprite 4, x=8
                          ; (ENTITY70)
  defb $47,$cb            ; Guardian no. 0x47 (vertical), base sprite 6, x=11
                          ; (ENTITY71)
  defb $48,$4e            ; Guardian no. 0x48 (vertical), base sprite 2, x=14
                          ; (ENTITY72)
  defb $49,$d1            ; Guardian no. 0x49 (vertical), base sprite 6, x=17
                          ; (ENTITY73)
  defb $46,$94            ; Guardian no. 0x46 (vertical), base sprite 4, x=20
                          ; (ENTITY70)
  defb $47,$97            ; Guardian no. 0x47 (vertical), base sprite 4, x=23
                          ; (ENTITY71)
  defb $48,$9c            ; Guardian no. 0x48 (vertical), base sprite 4, x=28
                          ; (ENTITY72)
  defb $ff,$00            ; Terminator (ENTITY127)

; Room 0x1e: The Banyan Tree (teleport: 23459)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lde00:
  defb $00,$00,$00,$a0,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$a0,$00,$00,$00,$00 ;
  defb $00,$00,$00,$90,$00,$00,$00,$00 ;
  defb $00,$00,$00,$94,$00,$00,$00,$00 ;
  defb $00,$00,$00,$95,$50,$00,$00,$00 ;
  defb $00,$00,$00,$81,$08,$00,$00,$00 ;
  defb $00,$00,$00,$01,$04,$00,$00,$00 ;
  defb $00,$00,$00,$00,$04,$00,$00,$00 ;
  defb $00,$00,$00,$80,$00,$00,$00,$00 ;
  defb $00,$00,$00,$82,$00,$00,$00,$00 ;
  defb $00,$08,$20,$82,$08,$00,$00,$00 ;
  defb $00,$08,$20,$82,$08,$00,$00,$00 ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$5a,$aa ;
  defb $aa,$aa,$00,$00,$00,$00,$5a,$aa ;
  defb $aa,$aa,$00,$00,$00,$00,$5a,$aa ;
  defb $aa,$aa,$55,$55,$55,$55,$5a,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "       The Banyan Tree          " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $48,$00,$a2,$00,$00,$00,$46,$00,$93 ; Floor
  defb $16,$4a,$29,$25,$49,$92,$a4,$25,$94 ; Wall
  defb $0e,$a5,$5a,$a5,$5a,$a5,$5a,$a5,$5a ; Nasty (unused)
  defb $07,$03,$00,$0c,$00,$30,$00,$c0,$00 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5f64              ; Location in the attribute buffer at 5e00: (11,4)
  defb $08                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $05,$38,$45,$82,$82,$82,$44,$38 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $1f                ; Room to the left (Swimming Pool)
  defb $1d                ; Room to the right (The Nightmare Room)
  defb $24                ; Room above (A bit of tree)
  defb $18                ; Room below (West of Kitchen)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $64,$8a            ; Guardian no. 0x64 (vertical), base sprite 4, x=10
                          ; (ENTITY100)
  defb $65,$8d            ; Guardian no. 0x65 (vertical), base sprite 4, x=13
                          ; (ENTITY101)
  defb $66,$10            ; Guardian no. 0x66 (vertical), base sprite 0, x=16
                          ; (ENTITY102)
  defb $58,$16            ; Guardian no. 0x58 (horizontal), base sprite 0,
                          ; initial x=22 (ENTITY88)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x1f: Swimming Pool (teleport: 123459)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Ldf00:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$55,$55,$55,$55,$55,$54,$aa ;
  defb $aa,$55,$55,$55,$55,$55,$52,$aa ;
  defb $aa,$55,$55,$55,$55,$55,$4a,$aa ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "          Swimming Pool         " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $07,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $29,$00,$00,$00,$00,$00,$00,$00,$00 ; Floor
  defb $3a,$44,$44,$bb,$44,$44,$44,$bb,$44 ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $2f,$03,$03,$0f,$0f,$3f,$3f,$ff,$ff ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fd9              ; Location in the attribute buffer at 5e00: (14,25)
  defb $03                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $70,$20,$20,$50,$50,$88,$88,$88 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $36                ; Room to the left (West  Wing)
  defb $1e                ; Room to the right (The Banyan Tree)
  defb $25                ; Room above (Orangery)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $4e,$0c            ; Guardian no. 0x4e (horizontal), base sprite 0,
                          ; initial x=12 (ENTITY78)
  defb $01,$10            ; Rope at x=16 (ENTITY1)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x20: Halfway up the East Wall (teleport: 69)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Le000:
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ; Room layout
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$08,$00,$00,$00,$00,$00,$00 ;
  defb $80,$0a,$00,$00,$00,$00,$00,$00 ;
  defb $80,$1a,$80,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$20,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$28,$00,$00,$00,$00,$00 ;
  defb $a0,$4a,$aa,$00,$00,$00,$00,$00 ;
  defb $a0,$0a,$aa,$00,$00,$00,$00,$00 ;
  defb $a0,$10,$0a,$00,$00,$00,$00,$00 ;
  defb $a4,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$04,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$1a,$00,$00,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "Halfway up the East Wall        " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $05,$ff,$ff,$5a,$99,$bd,$5a,$3c,$5a ; Floor
  defb $0f,$33,$11,$44,$cc,$33,$11,$44,$cc ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $07,$80,$c0,$e0,$70,$b8,$1c,$4e,$c7 ; Ramp
  defb $07,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5eeb              ; Location in the attribute buffer at 5e00: (7,11)
  defb $06                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $21                ; Room to the left (The Bathroom)
  defb $00                ; Room to the right (The Off Licence)
  defb $26                ; Room above (Priests' Hole)
  defb $1a                ; Room below (East Wall Base)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $26,$04            ; Guardian no. 0x26 (horizontal), base sprite 0,
                          ; initial x=4 (ENTITY38)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x21: The Bathroom (teleport: 169)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Le100:
  defb $a0,$00,$00,$00,$00,$00,$00,$0a ; Room layout
  defb $a0,$00,$00,$00,$00,$00,$00,$0a ;
  defb $a0,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $55,$55,$55,$50,$25,$55,$55,$5a ;
  defb $80,$00,$00,$00,$20,$00,$00,$0a ;
  defb $80,$00,$00,$00,$20,$00,$00,$0a ;
  defb $80,$00,$00,$00,$20,$00,$00,$0a ;
  defb $80,$00,$00,$00,$20,$00,$00,$0a ;
  defb $80,$00,$00,$00,$20,$00,$00,$0a ;
  defb $80,$00,$00,$00,$20,$00,$00,$0a ;
  defb $80,$00,$00,$00,$20,$00,$00,$0a ;
  defb $00,$05,$40,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $55,$55,$55,$55,$55,$55,$55,$5a ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "          The Bathroom          " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $16,$00,$40,$09,$64,$92,$2d,$96,$ff ; Floor
  defb $0e,$1f,$aa,$00,$55,$f8,$55,$00,$aa ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $07,$03,$00,$0c,$00,$30,$00,$c0,$00 ; Ramp
  defb $3d,$a5,$00,$00,$00,$00,$00,$00,$ff ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5fd4              ; Location in the attribute buffer at 5e00: (14,20)
  defb $04                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5f89              ; Location in the attribute buffer at 5e00: (12,9)
  defb $08                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $1f,$04,$0a,$77,$87,$b1,$aa,$0a ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $22                ; Room to the left (Top Landing)
  defb $20                ; Room to the right (Halfway up the East Wall)
  defb $27                ; Room above (Emergency Generator)
  defb $1b                ; Room below (The Chapel)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $3b,$10            ; Guardian no. 0x3b (horizontal), base sprite 0,
                          ; initial x=16 (ENTITY59)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x22: Top Landing (teleport: 269)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Le200:
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ; Room layout
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
  defb $a0,$00,$00,$00,$00,$00,$00,$0a ;
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a5,$50,$55,$05,$55,$55,$00,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$aa,$aa ;
  defb $a0,$00,$00,$00,$00,$00,$00,$0a ;
  defb $a0,$00,$00,$00,$00,$00,$00,$0a ;
  defb $a5,$50,$55,$05,$55,$00,$00,$0a ;
  defb $a0,$00,$00,$00,$00,$00,$00,$0a ;
  defb $a0,$00,$00,$00,$00,$00,$00,$0a ;
  defb $a0,$00,$00,$00,$00,$00,$00,$0a ;
  defb $a5,$50,$55,$05,$40,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $55,$55,$55,$55,$55,$05,$55,$55 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "          Top Landing           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $06,$ff,$aa,$55,$ff,$00,$00,$00,$00 ; Floor
  defb $1a,$69,$90,$90,$69,$96,$69,$69,$96 ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $07,$07,$02,$3c,$08,$70,$20,$c0,$80 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5f71              ; Location in the attribute buffer at 5e00: (11,17)
  defb $07                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $18,$24,$a4,$ca,$95,$0a,$15,$0a ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $23                ; Room to the left (Master Bedroom)
  defb $21                ; Room to the right (The Bathroom)
  defb $28                ; Room above (Dr Jones will never believe this)
  defb $1c                ; Room below (First Landing)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $3a,$86            ; Guardian no. 0x3a (vertical), base sprite 4, x=6
                          ; (ENTITY58)
  defb $13,$6c            ; Guardian no. 0x13 (vertical), base sprite 3, x=12
                          ; (ENTITY19)
  defb $24,$10            ; Guardian no. 0x24 (horizontal), base sprite 0,
                          ; initial x=16 (ENTITY36)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x23: Master Bedroom (teleport: 1269)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Le300:
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ; Room layout
  defb $a0,$00,$00,$0a,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$0a,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$0a,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$0a,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$0a,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$0a,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$0a,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$0a,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$0a,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$0a,$00,$00,$00,$00 ;
  defb $ac,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
  defb $95,$55,$55,$55,$40,$00,$00,$00 ;
  defb $aa,$aa,$aa,$aa,$a0,$00,$00,$00 ;
  defb $aa,$aa,$aa,$aa,$a9,$55,$55,$55 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "         Master Bedroom         " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $06,$ff,$6b,$b5,$00,$ad,$00,$4a,$00 ; Floor
  defb $33,$00,$51,$fb,$51,$00,$aa,$bf,$aa ; Wall
  defb $47,$00,$00,$00,$00,$7c,$fe,$7f,$3e ; Nasty
  defb $07,$c0,$40,$b0,$00,$ac,$00,$53,$00 ; Ramp
  defb $29,$55,$55,$55,$55,$51,$5f,$40,$aa ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5f82              ; Location in the attribute buffer at 5e00: (12,2)
  defb $04                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5fd2              ; Location in the attribute buffer at 5e00: (14,18)
  defb $02                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $24                ; Room to the left (A bit of tree)
  defb $22                ; Room to the right (Top Landing)
  defb $29                ; Room above (The Attic)
  defb $1d                ; Room below (The Nightmare Room)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x24: A bit of tree (teleport: 369)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Le400:
  defb $00,$00,$00,$a0,$00,$00,$00,$03 ; Room layout
  defb $00,$00,$00,$a0,$00,$00,$00,$03 ;
  defb $00,$00,$00,$a0,$00,$00,$00,$03 ;
  defb $00,$00,$00,$a0,$00,$00,$00,$03 ;
  defb $00,$00,$10,$a0,$00,$40,$00,$03 ;
  defb $00,$00,$00,$a0,$00,$00,$00,$03 ;
  defb $00,$14,$00,$a0,$00,$01,$40,$03 ;
  defb $00,$00,$10,$a0,$00,$00,$00,$03 ;
  defb $00,$00,$00,$a0,$00,$00,$00,$03 ;
  defb $00,$00,$14,$a0,$00,$00,$40,$03 ;
  defb $55,$50,$00,$a5,$40,$00,$00,$03 ;
  defb $00,$00,$00,$a0,$00,$00,$01,$03 ;
  defb $00,$00,$00,$a0,$00,$00,$40,$03 ;
  defb $00,$00,$00,$a0,$05,$00,$00,$03 ;
  defb $00,$00,$00,$a0,$00,$00,$00,$03 ;
  defb $00,$00,$01,$a4,$00,$00,$00,$03 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "    A bit of tree               " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room. Note that because of a bug
; in the game engine, the nasty tile is not drawn correctly (see the room image
; above).
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$ad,$52,$29,$00,$01,$02,$00,$00 ; Floor
  defb $1e,$d6,$6b,$66,$db,$69,$6b,$d9,$6d ; Wall
  defb $02,$15,$00,$aa,$55,$aa,$00,$15,$0a ; Nasty
  defb $44,$03,$08,$24,$10,$40,$20,$80,$80 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5f34              ; Location in the attribute buffer at 5e00: (9,20)
  defb $02                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $05                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $25                ; Room to the left (Orangery)
  defb $23                ; Room to the right (Master Bedroom)
  defb $2a                ; Room above (Under the Roof)
  defb $1e                ; Room below (The Banyan Tree)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $68,$02            ; Guardian no. 0x68 (horizontal), base sprite 0,
                          ; initial x=2 (ENTITY104)
  defb $65,$07            ; Guardian no. 0x65 (vertical), base sprite 0, x=7
                          ; (ENTITY101)
  defb $45,$92            ; Arrow flying right to left at pixel y-coordinate 73
                          ; (ENTITY69)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x25: Orangery (teleport: 1369)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Le500:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$01,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$40,$00,$10,$00 ;
  defb $00,$00,$00,$00,$00,$04,$00,$40 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$04,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$01,$00,$00,$00 ;
  defb $00,$20,$00,$40,$00,$00,$05,$00 ;
  defb $00,$25,$00,$00,$40,$00,$00,$55 ;
  defb $00,$20,$00,$00,$00,$00,$10,$00 ;
  defb $00,$20,$01,$00,$00,$00,$00,$00 ;
  defb $00,$20,$00,$00,$00,$40,$00,$00 ;
  defb $aa,$aa,$00,$01,$40,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "            Orangery            " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$a5,$4a,$24,$02,$04,$00,$02,$00 ; Floor
  defb $16,$15,$55,$55,$24,$25,$55,$49,$22 ; Wall
  defb $06,$82,$41,$3e,$6a,$b7,$19,$25,$44 ; Nasty (unused)
  defb $05,$01,$02,$04,$00,$10,$20,$40,$80 ; Ramp
  defb $26,$c6,$aa,$a8,$2a,$59,$24,$00,$00 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5f5c              ; Location in the attribute buffer at 5e00: (10,28)
  defb $04                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fa0              ; Location in the attribute buffer at 5e00: (13,0)
  defb $0e                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $06                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $02,$14,$2e,$55,$2a,$45,$2a,$14 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $38                ; Room to the left (West Wing Roof)
  defb $24                ; Room to the right (A bit of tree)
  defb $2b                ; Room above (Conservatory Roof)
  defb $1f                ; Room below (Swimming Pool)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $61,$94            ; Guardian no. 0x61 (vertical), base sprite 4, x=20
                          ; (ENTITY97)
  defb $1b,$89            ; Guardian no. 0x1b (vertical), base sprite 4, x=9
                          ; (ENTITY27)
  defb $3c,$84            ; Arrow flying left to right at pixel y-coordinate 66
                          ; (ENTITY60)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x26: Priests' Hole (teleport: 2369)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Le600:
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ; Room layout
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $00,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $00,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a5,$00,$5a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a1,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$4a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a1,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$5a,$00,$00,$00,$00,$00 ;
  defb $a0,$00,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$40,$0a,$00,$00,$00,$00,$00 ;
  defb $a0,$01,$0a,$00,$00,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "         Priests' Hole          " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $06,$55,$55,$5d,$d7,$70,$00,$00,$00 ; Floor
  defb $2a,$22,$11,$44,$88,$22,$11,$44,$88 ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Ramp (unused)
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no ramp in this room)
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $bf,$bf,$bb,$b1,$bb,$bb,$bf,$bf ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $27                ; Room to the left (Emergency Generator)
  defb $00                ; Room to the right (The Off Licence)
  defb $3c                ; Room above (The Bow)
  defb $20                ; Room below (Halfway up the East Wall)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $10,$84            ; Guardian no. 0x10 (vertical), base sprite 4, x=4
                          ; (ENTITY16)
  defb $11,$a6            ; Guardian no. 0x11 (vertical), base sprite 5, x=6
                          ; (ENTITY17)
  defb $12,$c5            ; Guardian no. 0x12 (vertical), base sprite 6, x=5
                          ; (ENTITY18)
  defb $25,$16            ; Guardian no. 0x25 (horizontal), base sprite 0,
                          ; initial x=22 (ENTITY37)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x27: Emergency Generator (teleport: 12369)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Le700:
  defb $00,$00,$00,$00,$00,$00,$00,$0a ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$05,$00,$00,$00,$00,$50,$0a ;
  defb $00,$05,$00,$00,$00,$00,$50,$03 ;
  defb $00,$05,$00,$00,$00,$00,$50,$03 ;
  defb $00,$05,$00,$00,$00,$00,$50,$03 ;
  defb $00,$05,$00,$00,$00,$00,$50,$03 ;
  defb $00,$2a,$80,$00,$00,$02,$a8,$03 ;
  defb $00,$28,$80,$00,$00,$02,$28,$03 ;
  defb $00,$aa,$aa,$aa,$aa,$aa,$aa,$03 ;
  defb $00,$aa,$2a,$8a,$a2,$a8,$aa,$03 ;
  defb $00,$aa,$aa,$aa,$aa,$aa,$aa,$03 ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "       Emergency Generator      " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $08,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $2f,$66,$66,$66,$66,$66,$66,$66,$66 ; Floor
  defb $33,$bf,$15,$00,$51,$fb,$51,$00,$15 ; Wall
  defb $0d,$ff,$3f,$03,$1f,$7f,$1f,$03,$3f ; Nasty
  defb $0f,$03,$00,$0c,$00,$30,$00,$c0,$00 ; Ramp
  defb $16,$aa,$54,$aa,$54,$28,$10,$28,$10 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5f69              ; Location in the attribute buffer at 5e00: (11,9)
  defb $0e                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5f52              ; Location in the attribute buffer at 5e00: (10,18)
  defb $06                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $28                ; Room to the left (Dr Jones will never believe this)
  defb $26                ; Room to the right (Priests' Hole)
  defb $0e                ; Room above (Rescue Esmerelda)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $1a,$08            ; Guardian no. 0x1a (horizontal), base sprite 0,
                          ; initial x=8 (ENTITY26)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x28: Dr Jones will never believe this (teleport: 469)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Le800:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$ea,$00,$00,$00,$00 ;
  defb $00,$00,$00,$aa,$a0,$00,$00,$00 ;
  defb $00,$00,$00,$95,$54,$00,$00,$00 ;
  defb $00,$0e,$a8,$d5,$15,$00,$00,$00 ;
  defb $00,$0a,$aa,$81,$aa,$00,$00,$00 ;
  defb $00,$05,$50,$90,$a8,$20,$00,$00 ;
  defb $50,$05,$50,$81,$a0,$00,$00,$00 ;
  defb $00,$0a,$50,$90,$a0,$00,$00,$00 ;
  defb $04,$0a,$50,$81,$80,$40,$00,$00 ;
  defb $00,$12,$50,$90,$80,$00,$00,$00 ;
  defb $00,$42,$50,$01,$80,$10,$00,$10 ;
  defb $00,$02,$00,$01,$80,$00,$40,$00 ;
  defb $00,$02,$94,$01,$90,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "Dr Jones will never believe this" ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $02,$fe,$55,$2a,$aa,$55,$aa,$aa,$ff ; Floor
  defb $1f,$11,$44,$22,$88,$11,$44,$22,$88 ; Wall
  defb $43,$01,$04,$22,$08,$11,$44,$22,$88 ; Nasty
  defb $05,$40,$90,$24,$48,$12,$24,$09,$02 ; Ramp
  defb $26,$a5,$00,$a5,$00,$aa,$ff,$ff,$55 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5fe0              ; Location in the attribute buffer at 5e00: (15,0)
  defb $20                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5f58              ; Location in the attribute buffer at 5e00: (10,24)
  defb $05                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $f0,$f0,$78,$b8,$4c,$32,$0d,$03 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $29                ; Room to the left (The Attic)
  defb $27                ; Room to the right (Emergency Generator)
  defb $10                ; Room above (We must perform a Quirkafleeg)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $1b,$92            ; Guardian no. 0x1b (vertical), base sprite 4, x=18
                          ; (ENTITY27)
  defb $0b,$0a            ; Guardian no. 0x0b (vertical), base sprite 0, x=10
                          ; (ENTITY11)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x29: The Attic (teleport: 1469)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Le900:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$c0,$03,$00,$00,$00,$00,$00 ;
  defb $55,$95,$56,$50,$00,$00,$00,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a4,$00,$00,$00,$05,$00,$00,$05 ;
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a4,$00,$00,$00,$00,$50,$00,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a4,$00,$00,$00,$00,$04,$00,$00 ;
  defb $a0,$00,$00,$00,$00,$00,$00,$00 ;
  defb $a4,$03,$00,$c0,$c0,$00,$00,$00 ;
  defb $55,$65,$95,$96,$55,$95,$56,$59 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "          The Attic             " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $16,$ce,$ff,$00,$e7,$00,$7f,$00,$fb ; Floor
  defb $1e,$ee,$11,$6c,$92,$11,$c9,$22,$9c ; Wall
  defb $44,$24,$12,$44,$aa,$55,$aa,$5b,$ff ; Nasty
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Ramp (unused)
  defb $42,$f0,$aa,$3c,$aa,$55,$aa,$55,$aa ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5f18              ; Location in the attribute buffer at 5e00: (8,24)
  defb $04                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no ramp in this room)
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $11,$22,$33,$44,$55,$66,$77,$88 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $2a                ; Room to the left (Under the Roof)
  defb $28                ; Room to the right (Dr Jones will never believe
                          ; this)
  defb $00                ; Room above (The Off Licence)
  defb $22                ; Room below (Top Landing)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $52,$04            ; Guardian no. 0x52 (vertical), base sprite 0, x=4
                          ; (ENTITY82)
  defb $53,$06            ; Guardian no. 0x53 (vertical), base sprite 0, x=6
                          ; (ENTITY83)
  defb $54,$08            ; Guardian no. 0x54 (vertical), base sprite 0, x=8
                          ; (ENTITY84)
  defb $55,$0a            ; Guardian no. 0x55 (vertical), base sprite 0, x=10
                          ; (ENTITY85)
  defb $56,$0c            ; Guardian no. 0x56 (vertical), base sprite 0, x=12
                          ; (ENTITY86)
  defb $57,$4e            ; Guardian no. 0x57 (vertical), base sprite 2, x=14
                          ; (ENTITY87)
  defb $45,$d5            ; Arrow flying right to left at pixel y-coordinate
                          ; 536 (ENTITY69)
  defb $3c,$92            ; Arrow flying left to right at pixel y-coordinate 73
                          ; (ENTITY60)

; Room 0x2a: Under the Roof (teleport: 2469)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lea00:
  defb $00,$00,$00,$ff,$ff,$ff,$ff,$f0 ; Room layout
  defb $00,$00,$00,$00,$c3,$fc,$30,$00 ;
  defb $00,$00,$00,$03,$f3,$fc,$fc,$00 ;
  defb $00,$00,$00,$00,$00,$f0,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$55,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$a0,$00,$01,$40,$00 ;
  defb $00,$00,$50,$a0,$01,$00,$00,$00 ;
  defb $55,$50,$00,$a0,$40,$00,$00,$00 ;
  defb $54,$00,$01,$a0,$00,$00,$00,$00 ;
  defb $00,$00,$00,$a0,$00,$40,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "         Under the Roof         " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $08,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $0c,$b5,$aa,$55,$4a,$25,$42,$01,$02 ; Floor
  defb $1e,$66,$b6,$6d,$bb,$66,$b9,$6d,$b6 ; Wall
  defb $f5,$66,$aa,$5f,$bc,$63,$ac,$6b,$a4 ; Nasty
  defb $0f,$01,$02,$04,$28,$10,$28,$40,$80 ; Ramp
  defb $0e,$a5,$aa,$bd,$66,$66,$66,$66,$66 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5ecc              ; Location in the attribute buffer at 5e00: (6,12)
  defb $14                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5ec4              ; Location in the attribute buffer at 5e00: (6,4)
  defb $07                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $2b                ; Room to the left (Conservatory Roof)
  defb $29                ; Room to the right (The Attic)
  defb $30                ; Room above (Nomen Luni)
  defb $24                ; Room below (A bit of tree)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $37,$04            ; Guardian no. 0x37 (horizontal), base sprite 0,
                          ; initial x=4 (ENTITY55)
  defb $27,$10            ; Guardian no. 0x27 (horizontal), base sprite 0,
                          ; initial x=16 (ENTITY39)
  defb $3c,$c2            ; Arrow flying left to right at pixel y-coordinate 97
                          ; (ENTITY60)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x2b: Conservatory Roof (teleport: 12469)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Leb00:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$2a,$aa,$aa ;
  defb $00,$00,$00,$00,$00,$30,$c3,$0c ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$50,$00 ;
  defb $00,$00,$00,$00,$00,$00,$05,$55 ;
  defb $00,$00,$00,$00,$00,$04,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "        Conservatory Roof       " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$ac,$53,$2a,$d0,$8a,$24,$22,$04 ; Floor
  defb $05,$f7,$ef,$00,$00,$00,$66,$66,$00 ; Wall
  defb $43,$da,$d5,$7f,$2e,$11,$1f,$0a,$1b ; Nasty
  defb $07,$01,$02,$04,$10,$08,$20,$40,$80 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5fba              ; Location in the attribute buffer at 5e00: (13,26)
  defb $06                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fec              ; Location in the attribute buffer at 5e00: (15,12)
  defb $09                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $05                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $18,$18,$f8,$3c,$7e,$60,$60,$7e ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $00                ; Room to the left (The Off Licence)
  defb $2a                ; Room to the right (Under the Roof)
  defb $00                ; Room above (The Off Licence)
  defb $25                ; Room below (Orangery)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $6a,$14            ; Guardian no. 0x6a (horizontal), base sprite 0,
                          ; initial x=20 (ENTITY106)
  defb $3d,$18            ; Guardian no. 0x3d (horizontal), base sprite 0,
                          ; initial x=24 (ENTITY61)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x2c: On top of the house (teleport: 3469)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lec00:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $92,$00,$00,$00,$04,$00,$00,$00 ;
  defb $90,$00,$00,$00,$10,$00,$00,$00 ;
  defb $90,$00,$00,$00,$40,$00,$00,$00 ;
  defb $92,$00,$00,$01,$00,$00,$00,$00 ;
  defb $92,$80,$00,$04,$00,$00,$00,$00 ;
  defb $92,$a0,$82,$10,$00,$00,$00,$00 ;
  defb $92,$aa,$aa,$40,$00,$00,$00,$00 ;
  defb $92,$aa,$aa,$00,$00,$00,$00,$00 ;
  defb $10,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$aa,$00,$00,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "         On top of the house    " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $08,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $0e,$a0,$40,$80,$00,$00,$00,$00,$00 ; Floor
  defb $4b,$51,$aa,$00,$aa,$15,$aa,$00,$aa ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $0f,$01,$03,$06,$0d,$1a,$34,$68,$d0 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5f4c              ; Location in the attribute buffer at 5e00: (10,12)
  defb $06                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $03                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$18,$14,$1a,$35,$6b,$d0 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $0e                ; Room to the left (Rescue Esmerelda)
  defb $00                ; Room to the right (The Off Licence)
  defb $00                ; Room above (The Off Licence)
  defb $26                ; Room below (Priests' Hole)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $1d,$14            ; Guardian no. 0x1d (vertical), base sprite 0, x=20
                          ; (ENTITY29)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x2d: Under the Drive (teleport: 13469)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Led00:
  defb $a0,$00,$00,$00,$00,$00,$aa,$aa ; Room layout
  defb $a0,$00,$00,$00,$00,$00,$aa,$aa ;
  defb $a0,$00,$00,$00,$00,$00,$aa,$aa ;
  defb $a0,$00,$00,$00,$00,$05,$aa,$aa ;
  defb $a8,$00,$00,$00,$00,$00,$aa,$aa ;
  defb $aa,$00,$00,$00,$10,$00,$02,$aa ;
  defb $aa,$80,$00,$00,$00,$50,$00,$aa ;
  defb $aa,$a0,$00,$00,$00,$00,$00,$0a ;
  defb $aa,$a8,$00,$00,$50,$00,$00,$00 ;
  defb $aa,$aa,$00,$00,$00,$c0,$00,$00 ;
  defb $aa,$aa,$80,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$a0,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$a8,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$aa,$00,$00,$00,$00,$00 ;
  defb $aa,$aa,$aa,$80,$30,$0c,$0c,$00 ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "          Under the Drive       " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $06,$ff,$ff,$a5,$58,$24,$42,$20,$00 ; Floor
  defb $0c,$10,$2a,$55,$a0,$10,$20,$10,$08 ; Wall
  defb $04,$18,$18,$14,$22,$22,$55,$11,$28 ; Nasty
  defb $07,$80,$40,$a0,$50,$a8,$54,$aa,$55 ; Ramp
  defb $02,$e0,$aa,$f8,$00,$ff,$ff,$66,$66 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5f52              ; Location in the attribute buffer at 5e00: (10,18)
  defb $0e                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5fcd              ; Location in the attribute buffer at 5e00: (14,13)
  defb $0c                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $04                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $81,$64,$cd,$0f,$61,$da,$33,$1a ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $06                ; Room to the left (Entrance to Hades)
  defb $2e                ; Room to the right (Tree Root)
  defb $04                ; Room above (The Drive)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $1c,$10            ; Guardian no. 0x1c (horizontal), base sprite 0,
                          ; initial x=16 (ENTITY28)
  defb $1d,$92            ; Guardian no. 0x1d (vertical), base sprite 4, x=18
                          ; (ENTITY29)
  defb $44,$96            ; Guardian no. 0x44 (horizontal), base sprite 4,
                          ; initial x=22 (ENTITY68)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x2e: Tree Root (teleport: 23469)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lee00:
  defb $aa,$0a,$aa,$aa,$aa,$aa,$aa,$aa ; Room layout
  defb $aa,$0a,$aa,$aa,$aa,$aa,$aa,$aa ;
  defb $aa,$0a,$aa,$aa,$aa,$aa,$aa,$aa ;
  defb $aa,$0a,$a0,$aa,$aa,$aa,$aa,$aa ;
  defb $aa,$0a,$a0,$aa,$00,$a0,$00,$0a ;
  defb $aa,$0a,$a0,$aa,$00,$a0,$00,$0a ;
  defb $aa,$0a,$a0,$00,$00,$a0,$00,$0a ;
  defb $aa,$0a,$a0,$00,$00,$a0,$00,$0a ;
  defb $00,$00,$05,$00,$00,$a0,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$0a ;
  defb $00,$00,$00,$00,$00,$00,$00,$2a ;
  defb $00,$00,$00,$01,$55,$55,$40,$aa ;
  defb $00,$00,$00,$00,$00,$00,$02,$aa ;
  defb $00,$00,$00,$00,$00,$00,$0a,$aa ;
  defb $00,$0c,$03,$03,$00,$30,$2a,$aa ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "           Tree Root            " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $06,$ff,$ff,$00,$00,$00,$00,$00,$00 ; Floor
  defb $0a,$66,$99,$24,$24,$77,$88,$8d,$72 ; Wall
  defb $02,$1c,$2a,$5f,$7d,$be,$fe,$d2,$7c ; Nasty
  defb $43,$03,$02,$0d,$02,$31,$08,$d5,$22 ; Ramp
  defb $04,$ee,$aa,$38,$ff,$ff,$10,$10,$38 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5f40              ; Location in the attribute buffer at 5e00: (10,0)
  defb $0d                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fd8              ; Location in the attribute buffer at 5e00: (14,24)
  defb $06                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $02,$1d,$22,$5e,$be,$7c,$38,$10 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $2d                ; Room to the left (Under the Drive)
  defb $2f                ; Room to the right ([)
  defb $03                ; Room above (At the Foot of the MegaTree)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $1e,$84            ; Guardian no. 0x1e (vertical), base sprite 4, x=4
                          ; (ENTITY30)
  defb $28,$0d            ; Guardian no. 0x28 (vertical), base sprite 0, x=13
                          ; (ENTITY40)
  defb $23,$13            ; Guardian no. 0x23 (horizontal), base sprite 0,
                          ; initial x=19 (ENTITY35)
  defb $1f,$59            ; Guardian no. 0x1f (vertical), base sprite 2, x=25
                          ; (ENTITY31)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x2f: [ (teleport: 123469)
;
; This room is not used.
;
; The first 128 bytes define the room layout. Each bit-pair (bits 7 and 6, 5
; and 4, 3 and 2, or 1 and 0 of each byte) determines the type of tile
; (background, floor, wall or nasty) that will be drawn at the corresponding
; location.
Lef00:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout (completely empty)
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
; The next 32 bytes specify the room name.
  defm "         [                      " ; Room name
; In a working room definition, the next 80 bytes define the tiles, conveyor,
; ramp, border colour, item graphic, and exits. In this room, however, there
; are code remnants and unused data.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background tile
  defb $00,$00,$00,$00,$00,$00,$00,$00
  inc b
  ld (hl),$00
  jp nz,$62e3
  inc (ix+$06)
  defb $10,$ff
  ld (ix+$0a),c
  ld (hl),b
  jp $5e56
  ld bc,$6007
  ld a,($408e)
  jr nz,Lef00_0
  push hl
  push bc
  push af
  ld de,$5ee8
  push de
  push bc
  ret
  pop af
  pop bc
  dec a
  defb $f2,$e0
  defb $00                ; Conveyor length (deliberately set to 0)
  pop hl
  ret
  pop bc
  defb $00                ; Ramp length (deliberately set to 0)
  ld a,(hl)
  cp $2c
  ret nz
  rst $10
Lef00_0:
  push bc
  ld a,(hl)
  cp $23
  call z,$1d78
  call $2b1c
  ex (sp),hl
  push hl
  defb $11
; The next eight pairs of bytes specify the entities (ropes, arrows, guardians)
; in this room.
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x30: Nomen Luni (teleport: 569)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lf000:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$0a,$aa,$00,$00 ;
  defb $00,$00,$00,$01,$0a,$aa,$00,$50 ;
  defb $00,$00,$00,$00,$00,$a0,$00,$00 ;
  defb $00,$00,$01,$50,$00,$a0,$40,$00 ;
  defb $00,$00,$00,$00,$04,$a0,$00,$0a ;
  defb $00,$00,$00,$00,$00,$a0,$00,$2a ;
  defb $00,$00,$00,$00,$40,$a0,$0a,$a2 ;
  defb $00,$00,$00,$00,$01,$a0,$21,$42 ;
  defb $00,$00,$00,$00,$00,$a0,$00,$0a ;
  defb $00,$00,$00,$aa,$aa,$aa,$aa,$a2 ;
  defb $00,$00,$00,$aa,$aa,$aa,$aa,$a2 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "           Nomen Luni           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $0d,$ff,$22,$44,$88,$55,$22,$00,$00 ; Floor
  defb $f3,$aa,$70,$aa,$6c,$b1,$5f,$aa,$55 ; Wall
  defb $06,$55,$a2,$55,$98,$1c,$2a,$45,$8a ; Nasty (unused)
  defb $07,$03,$00,$0c,$00,$34,$0a,$c4,$00 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fe9              ; Location in the attribute buffer at 5e00: (15,9)
  defb $05                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $12,$12,$12,$12,$12,$12,$12,$12 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $00                ; Room to the left (The Off Licence)
  defb $12                ; Room to the right (On the Roof)
  defb $00                ; Room above (The Off Licence)
  defb $2a                ; Room below (Under the Roof)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $68,$05            ; Guardian no. 0x68 (horizontal), base sprite 0,
                          ; initial x=5 (ENTITY104)
  defb $6b,$14            ; Guardian no. 0x6b (horizontal), base sprite 0,
                          ; initial x=20 (ENTITY107)
  defb $1d,$90            ; Guardian no. 0x1d (vertical), base sprite 4, x=16
                          ; (ENTITY29)
  defb $0b,$16            ; Guardian no. 0x0b (vertical), base sprite 0, x=22
                          ; (ENTITY11)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x31: The Wine Cellar (teleport: 1569)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lf100:
  defb $00,$00,$00,$00,$00,$0c,$02,$aa ; Room layout
  defb $00,$00,$00,$00,$00,$00,$02,$aa ;
  defb $55,$40,$00,$00,$00,$00,$02,$aa ;
  defb $00,$00,$00,$00,$00,$00,$00,$2a ;
  defb $00,$00,$00,$00,$00,$00,$00,$2a ;
  defb $aa,$a8,$00,$41,$00,$15,$56,$aa ;
  defb $aa,$00,$00,$00,$00,$00,$00,$2a ;
  defb $aa,$00,$00,$00,$00,$00,$00,$2a ;
  defb $aa,$a8,$00,$41,$00,$55,$56,$aa ;
  defb $a0,$00,$00,$00,$00,$00,$00,$2a ;
  defb $a0,$00,$00,$00,$00,$00,$00,$2a ;
  defb $aa,$a8,$00,$41,$01,$55,$55,$55 ;
  defb $aa,$00,$00,$c3,$03,$00,$00,$00 ;
  defb $aa,$00,$00,$00,$00,$00,$0a,$aa ;
  defb $aa,$a8,$00,$00,$00,$00,$2a,$aa ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "        The Wine Cellar         " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room. Note that because of a bug
; in the game engine, the conveyor tile is not drawn correctly (see the room
; image above).
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $42,$ff,$18,$e7,$10,$c7,$38,$00,$00 ; Floor
  defb $29,$0a,$41,$28,$05,$a0,$14,$82,$50 ; Wall
  defb $46,$24,$24,$24,$5a,$db,$bd,$c3,$7e ; Nasty
  defb $07,$03,$03,$0d,$0e,$35,$3a,$d5,$ea ; Ramp
  defb $0d,$aa,$55,$aa,$55,$aa,$55,$aa,$55 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5f9b              ; Location in the attribute buffer at 5e00: (12,27)
  defb $05                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fd8              ; Location in the attribute buffer at 5e00: (14,24)
  defb $03                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $04                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$19,$f9,$1f,$00,$19,$ff,$1f ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $33                ; Room to the left (Tool  Shed)
  defb $13                ; Room to the right (The Forgotten Abbey)
  defb $34                ; Room above (Back Stairway)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $34,$10            ; Guardian no. 0x34 (horizontal), base sprite 0,
                          ; initial x=16 (ENTITY52)
  defb $40,$19            ; Guardian no. 0x40 (horizontal), base sprite 0,
                          ; initial x=25 (ENTITY64)
  defb $41,$09            ; Guardian no. 0x41 (horizontal), base sprite 0,
                          ; initial x=9 (ENTITY65)
  defb $42,$13            ; Guardian no. 0x42 (horizontal), base sprite 0,
                          ; initial x=19 (ENTITY66)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x32: Watch Tower (teleport: 2569)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lf200:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$08,$00,$00,$00,$00,$20,$00 ;
  defb $00,$08,$0c,$00,$00,$c0,$e0,$00 ;
  defb $00,$0a,$aa,$a0,$1a,$aa,$a0,$00 ;
  defb $00,$00,$00,$a0,$0a,$00,$00,$00 ;
  defb $00,$00,$00,$a5,$0a,$00,$00,$00 ;
  defb $00,$00,$00,$a0,$0a,$00,$00,$00 ;
  defb $00,$00,$00,$a0,$5a,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "          Watch Tower           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $08,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $06,$ff,$ff,$aa,$55,$aa,$55,$00,$00 ; Floor
  defb $1d,$aa,$55,$55,$aa,$55,$aa,$aa,$55 ; Wall
  defb $0c,$46,$89,$89,$36,$48,$83,$84,$68 ; Nasty
  defb $0f,$01,$02,$04,$08,$10,$20,$40,$80 ; Ramp
  defb $0d,$f6,$ff,$e7,$00,$00,$00,$00,$00 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5e8c              ; Location in the attribute buffer at 5e00: (4,12)
  defb $08                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5f07              ; Location in the attribute buffer at 5e00: (8,7)
  defb $05                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $05                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $74,$38,$66,$bf,$bf,$9d,$42,$3c ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $00                ; Room to the left (The Off Licence)
  defb $00                ; Room to the right (The Off Licence)
  defb $00                ; Room above (The Off Licence)
  defb $10                ; Room below (We must perform a Quirkafleeg)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $6c,$91            ; Guardian no. 0x6c (horizontal), base sprite 4,
                          ; initial x=17 (ENTITY108)
  defb $6d,$0b            ; Guardian no. 0x6d (horizontal), base sprite 0,
                          ; initial x=11 (ENTITY109)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x33: Tool  Shed (teleport: 12569)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lf300:
  defb $00,$00,$02,$aa,$a0,$00,$00,$00 ; Room layout
  defb $00,$00,$0a,$aa,$a0,$00,$00,$00 ;
  defb $00,$00,$2a,$aa,$aa,$aa,$aa,$aa ;
  defb $00,$00,$00,$00,$c0,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$aa ;
  defb $00,$00,$00,$00,$00,$00,$00,$aa ;
  defb $00,$00,$00,$00,$00,$00,$00,$aa ;
  defb $aa,$a8,$00,$41,$00,$40,$2a,$aa ;
  defb $aa,$a8,$00,$00,$00,$00,$2a,$aa ;
  defb $aa,$a8,$00,$00,$00,$00,$6a,$aa ;
  defb $aa,$a8,$11,$00,$10,$00,$2a,$aa ;
  defb $aa,$a8,$00,$00,$00,$40,$2a,$aa ;
  defb $aa,$a8,$00,$00,$00,$00,$6a,$aa ;
  defb $aa,$a8,$00,$00,$00,$00,$2a,$aa ;
  defb $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "           Tool  Shed           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room. Note that because of a bug
; in the game engine, the conveyor tile is not drawn correctly (see the room
; image above).
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $05,$5a,$ff,$22,$44,$22,$40,$00,$00 ; Floor
  defb $1e,$55,$aa,$44,$22,$55,$aa,$44,$22 ; Wall
  defb $06,$04,$04,$04,$88,$50,$20,$10,$08 ; Nasty
  defb $07,$03,$03,$0c,$0c,$30,$30,$c0,$c0 ; Ramp
  defb $44,$e0,$aa,$00,$66,$66,$66,$66,$66 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5fe7              ; Location in the attribute buffer at 5e00: (15,7)
  defb $12                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5ee3              ; Location in the attribute buffer at 5e00: (7,3)
  defb $08                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $05                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $18,$18,$18,$18,$18,$9b,$7f,$3b ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $3a                ; Room to the left (The Beach)
  defb $31                ; Room to the right (The Wine Cellar)
  defb $35                ; Room above (Back Door)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $34,$10            ; Guardian no. 0x34 (horizontal), base sprite 0,
                          ; initial x=16 (ENTITY52)
  defb $62,$09            ; Guardian no. 0x62 (horizontal), base sprite 0,
                          ; initial x=9 (ENTITY98)
  defb $63,$14            ; Guardian no. 0x63 (horizontal), base sprite 0,
                          ; initial x=20 (ENTITY99)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x34: Back Stairway (teleport: 3569)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lf400:
  defb $00,$00,$00,$00,$0a,$aa,$aa,$aa ; Room layout
  defb $00,$00,$00,$00,$2a,$aa,$aa,$aa ;
  defb $00,$00,$00,$00,$55,$55,$55,$55 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$15,$55,$55,$55,$55 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$05,$55,$55,$55,$55,$55 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $55,$54,$55,$55,$55,$55,$55,$55 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $55,$55,$55,$55,$55,$55,$55,$55 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "         Back Stairway          " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $43,$ff,$44,$44,$ff,$11,$11,$ff,$00 ; Floor
  defb $1e,$15,$f1,$8f,$a8,$8a,$f8,$1f,$15 ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $47,$03,$01,$0c,$04,$30,$10,$c0,$40 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fe2              ; Location in the attribute buffer at 5e00: (15,2)
  defb $10                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $35                ; Room to the left (Back Door)
  defb $19                ; Room to the right (Cold Store)
  defb $36                ; Room above (West  Wing)
  defb $31                ; Room below (The Wine Cellar)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $24,$96            ; Guardian no. 0x24 (horizontal), base sprite 4,
                          ; initial x=22 (ENTITY36)
  defb $5c,$90            ; Guardian no. 0x5c (horizontal), base sprite 4,
                          ; initial x=16 (ENTITY92)
  defb $1d,$83            ; Guardian no. 0x1d (vertical), base sprite 4, x=3
                          ; (ENTITY29)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x35: Back Door (teleport: 13569)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lf500:
  defb $00,$00,$00,$00,$a0,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$a0,$00,$00,$00 ;
  defb $00,$00,$00,$00,$a0,$00,$00,$00 ;
  defb $00,$00,$00,$00,$a0,$00,$00,$00 ;
  defb $00,$00,$00,$00,$a0,$00,$00,$00 ;
  defb $00,$00,$00,$00,$a0,$00,$00,$00 ;
  defb $00,$00,$00,$00,$a0,$00,$00,$00 ;
  defb $00,$00,$00,$00,$a0,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$05,$55,$55,$55,$55 ;
  defb $00,$00,$00,$2a,$a0,$00,$00,$00 ;
  defb $00,$00,$00,$aa,$a0,$00,$00,$00 ;
  defb $00,$00,$02,$aa,$a0,$00,$00,$00 ;
  defb $00,$00,$0a,$aa,$a0,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "            Back Door           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $03,$ff,$ff,$ff,$aa,$55,$aa,$55,$00 ; Floor
  defb $26,$69,$d2,$a5,$4b,$96,$2d,$5a,$b4 ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $07,$03,$03,$0d,$0f,$36,$3d,$da,$f4 ; Ramp
  defb $22,$f0,$f0,$f0,$f0,$66,$66,$00,$00 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5ff2              ; Location in the attribute buffer at 5e00: (15,18)
  defb $0e                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fe9              ; Location in the attribute buffer at 5e00: (15,9)
  defb $05                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $00                ; Room to the left (The Off Licence)
  defb $34                ; Room to the right (Back Stairway)
  defb $37                ; Room above (West Bedroom)
  defb $33                ; Room below (Tool  Shed)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x36: West  Wing (teleport: 23569)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lf600:
  defb $00,$a0,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $00,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $55,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $00,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $00,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $55,$55,$55,$50,$00,$55,$55,$55 ;
  defb $00,$00,$00,$00,$02,$aa,$aa,$aa ;
  defb $00,$00,$00,$00,$0a,$aa,$aa,$aa ;
  defb $00,$00,$00,$00,$2a,$aa,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "           West  Wing           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $41,$f9,$ff,$3f,$d5,$aa,$15,$4a,$84 ; Floor
  defb $27,$ac,$ae,$01,$ad,$ad,$02,$ac,$e8 ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $07,$03,$03,$0c,$0c,$30,$30,$c0,$c0 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5ff0              ; Location in the attribute buffer at 5e00: (15,16)
  defb $10                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $37                ; Room to the left (West Bedroom)
  defb $1f                ; Room to the right (Swimming Pool)
  defb $38                ; Room above (West Wing Roof)
  defb $34                ; Room below (Back Stairway)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $61,$0e            ; Guardian no. 0x61 (vertical), base sprite 0, x=14
                          ; (ENTITY97)
  defb $59,$c4            ; Guardian no. 0x59 (vertical), base sprite 6, x=4
                          ; (ENTITY89)
  defb $14,$09            ; Guardian no. 0x14 (horizontal), base sprite 0,
                          ; initial x=9 (ENTITY20)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x37: West Bedroom (teleport: 123569)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lf700:
  defb $00,$00,$04,$00,$a0,$40,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$a0,$40,$00,$00 ;
  defb $00,$00,$10,$00,$a0,$40,$00,$00 ;
  defb $00,$00,$00,$00,$a0,$40,$00,$15 ;
  defb $00,$00,$04,$00,$a0,$40,$00,$00 ;
  defb $00,$00,$00,$00,$a0,$40,$00,$00 ;
  defb $00,$00,$00,$10,$a0,$40,$00,$00 ;
  defb $00,$00,$00,$00,$a0,$40,$00,$00 ;
  defb $00,$00,$04,$00,$00,$40,$00,$00 ;
  defb $00,$00,$00,$00,$00,$40,$00,$00 ;
  defb $00,$00,$10,$00,$00,$40,$00,$00 ;
  defb $00,$00,$08,$00,$00,$40,$00,$00 ;
  defb $00,$00,$09,$55,$55,$55,$55,$55 ;
  defb $00,$00,$0a,$aa,$a0,$00,$00,$00 ;
  defb $00,$00,$00,$00,$a0,$00,$00,$00 ;
  defb $00,$00,$00,$00,$a0,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "    West Bedroom                " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $06,$aa,$55,$82,$41,$82,$41,$82,$41 ; Floor
  defb $0d,$a8,$55,$a8,$56,$cf,$2e,$26,$c1 ; Wall
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Nasty (unused)
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Ramp (unused)
  defb $42,$a5,$ff,$bd,$aa,$55,$ba,$45,$83 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5e7a              ; Location in the attribute buffer at 5e00: (3,26)
  defb $03                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no ramp in this room)
; The next byte is copied to BORDER and specifies the border colour.
  defb $05                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Item graphic (unused)
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $00                ; Room to the left (The Off Licence)
  defb $36                ; Room to the right (West  Wing)
  defb $39                ; Room above (Above the West Bedroom)
  defb $35                ; Room below (Back Door)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $1e,$8b            ; Guardian no. 0x1e (vertical), base sprite 4, x=11
                          ; (ENTITY30)
  defb $33,$4e            ; Guardian no. 0x33 (vertical), base sprite 2, x=14
                          ; (ENTITY51)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x38: West Wing Roof (teleport: 4569)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lf800:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $55,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $00,$a0,$30,$30,$0c,$0c,$03,$00 ;
  defb $00,$a5,$55,$55,$55,$55,$55,$55 ;
  defb $00,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $00,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $50,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $00,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $01,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $00,$a0,$00,$00,$00,$00,$00,$00 ;
  defb $04,$a5,$55,$55,$55,$55,$55,$05 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "         West Wing Roof         " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $03,$ff,$aa,$ff,$a4,$a4,$a7,$e4,$3c ; Floor
  defb $25,$e1,$84,$1e,$48,$e1,$84,$1e,$48 ; Wall
  defb $42,$18,$3c,$7e,$ff,$af,$55,$3a,$10 ; Nasty
  defb $07,$03,$00,$0c,$00,$30,$00,$c0,$00 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5ffc              ; Location in the attribute buffer at 5e00: (15,28)
  defb $04                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $01                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $00,$00,$00,$0a,$0d,$3c,$f2,$c0 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $39                ; Room to the left (Above the West Bedroom)
  defb $25                ; Room to the right (Orangery)
  defb $00                ; Room above (The Off Licence)
  defb $36                ; Room below (West  Wing)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $34,$13            ; Guardian no. 0x34 (horizontal), base sprite 0,
                          ; initial x=19 (ENTITY52)
  defb $1c,$14            ; Guardian no. 0x1c (horizontal), base sprite 0,
                          ; initial x=20 (ENTITY28)
  defb $3c,$54            ; Arrow flying left to right at pixel y-coordinate 42
                          ; (ENTITY60)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x39: Above the West Bedroom (teleport: 14569)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lf900:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$15,$55 ;
  defb $00,$00,$00,$00,$00,$00,$d0,$00 ;
  defb $00,$00,$00,$00,$00,$03,$10,$00 ;
  defb $00,$00,$00,$00,$00,$0c,$10,$00 ;
  defb $00,$00,$00,$00,$00,$30,$10,$00 ;
  defb $00,$00,$00,$00,$01,$55,$55,$55 ;
  defb $00,$00,$00,$00,$03,$00,$00,$00 ;
  defb $00,$00,$04,$00,$0c,$00,$00,$00 ;
  defb $00,$00,$00,$00,$a0,$00,$00,$00 ;
  defb $00,$00,$10,$00,$a0,$55,$55,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "   Above the West Bedroom       " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $04,$f7,$aa,$55,$ef,$00,$00,$00,$00 ; Floor
  defb $23,$aa,$55,$aa,$55,$aa,$55,$aa,$55 ; Wall
  defb $06,$30,$60,$c0,$80,$00,$00,$00,$00 ; Nasty
  defb $07,$01,$00,$06,$09,$13,$06,$6c,$98 ; Ramp
  defb $ff,$00,$00,$00,$00,$00,$00,$00,$00 ; Conveyor (unused)
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $0000              ; Location in the attribute buffer at 5e00 (unused)
  defb $00                ; Length: 0 (there is no conveyor in this room)
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fb1              ; Location in the attribute buffer at 5e00: (13,17)
  defb $08                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $08,$10,$20,$21,$12,$ac,$40,$20 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $00                ; Room to the left (The Off Licence)
  defb $38                ; Room to the right (West Wing Roof)
  defb $00                ; Room above (The Off Licence)
  defb $37                ; Room below (West Bedroom)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $07,$cb            ; Guardian no. 0x07 (vertical), base sprite 6, x=11
                          ; (ENTITY7)
  defb $33,$4e            ; Guardian no. 0x33 (vertical), base sprite 2, x=14
                          ; (ENTITY51)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x3a: The Beach (teleport: 24569)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lfa00:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$aa,$aa ;
  defb $00,$00,$00,$00,$00,$00,$aa,$aa ;
  defb $aa,$a0,$00,$00,$00,$00,$aa,$aa ;
  defb $00,$00,$00,$00,$00,$00,$aa,$aa ;
  defb $00,$00,$00,$00,$00,$00,$aa,$aa ;
  defb $00,$00,$00,$00,$00,$00,$aa,$aa ;
  defb $00,$05,$d5,$75,$5d,$75,$aa,$aa ;
  defb $00,$15,$55,$55,$55,$55,$aa,$aa ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "            The Beach           " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $0d,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $32,$00,$00,$40,$04,$00,$10,$00,$01 ; Floor
  defb $2a,$44,$00,$92,$24,$80,$28,$82,$50 ; Wall
  defb $30,$42,$81,$e7,$81,$5a,$7e,$3c,$42 ; Nasty
  defb $0e,$01,$03,$07,$0f,$1e,$37,$7f,$fb ; Ramp
  defb $2c,$4e,$aa,$00,$40,$40,$44,$aa,$ff ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5fe0              ; Location in the attribute buffer at 5e00: (15,0)
  defb $05                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $01                ; Direction (up to the right)
  defw $5fc5              ; Location in the attribute buffer at 5e00: (14,5)
  defb $01                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $02                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $04,$05,$0b,$0b,$17,$37,$6f,$ef ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $3b                ; Room to the left (The Yacht)
  defb $33                ; Room to the right (Tool  Shed)
  defb $3a                ; Room above (The Beach)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $01,$0e            ; Rope at x=14 (ENTITY1)
  defb $3c,$54            ; Arrow flying left to right at pixel y-coordinate 42
                          ; (ENTITY60)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x3b: The Yacht (teleport: 124569)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lfb00:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $55,$60,$00,$00,$00,$00,$00,$00 ;
  defb $00,$20,$00,$00,$00,$00,$00,$00 ;
  defb $00,$20,$00,$00,$00,$00,$00,$00 ;
  defb $00,$20,$00,$00,$00,$00,$00,$00 ;
  defb $00,$20,$03,$03,$00,$c0,$00,$00 ;
  defb $55,$6a,$aa,$aa,$aa,$81,$55,$55 ;
  defb $01,$00,$00,$00,$02,$81,$00,$00 ;
  defb $01,$00,$00,$00,$02,$81,$00,$00 ;
  defb $01,$00,$00,$00,$02,$81,$00,$00 ;
  defb $01,$00,$00,$00,$02,$80,$00,$00 ;
  defb $aa,$aa,$aa,$aa,$aa,$80,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "           The Yacht            " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $06,$bb,$dd,$dd,$ee,$00,$00,$00,$00 ; Floor
  defb $3d,$bb,$77,$ee,$dd,$bb,$77,$ee,$dd ; Wall
  defb $42,$7e,$bf,$bf,$6e,$2c,$2c,$ad,$ff ; Nasty
  defb $07,$80,$40,$20,$10,$08,$04,$02,$01 ; Ramp
  defb $0d,$e0,$aa,$38,$01,$83,$c7,$7c,$10 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $00                ; Direction (left)
  defw $5ff5              ; Location in the attribute buffer at 5e00: (15,21)
  defb $0b                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5f2a              ; Location in the attribute buffer at 5e00: (9,10)
  defb $05                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $05                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $ce,$f1,$b9,$d5,$ef,$d7,$bb,$ff ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $3c                ; Room to the left (The Bow)
  defb $3a                ; Room to the right (The Beach)
  defb $00                ; Room above (The Off Licence)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $35,$08            ; Guardian no. 0x35 (horizontal), base sprite 0,
                          ; initial x=8 (ENTITY53)
  defb $1b,$15            ; Guardian no. 0x1b (vertical), base sprite 0, x=21
                          ; (ENTITY27)
  defb $ff,$11            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Room 0x3c: The Bow (teleport: 34569)
;
; Used by the routine at INITROOM.
;
; The first 128 bytes are copied to ROOMLAYOUT and define the room layout. Each
; bit-pair (bits 7 and 6, 5 and 4, 3 and 2, or 1 and 0 of each byte) determines
; the type of tile (background, floor, wall or nasty) that will be drawn at the
; corresponding location.
Lfc00:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; Room layout
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$01,$55,$55 ;
  defb $00,$00,$00,$00,$00,$00,$80,$00 ;
  defb $00,$00,$00,$00,$04,$00,$80,$00 ;
  defb $00,$00,$00,$00,$00,$00,$90,$00 ;
  defb $00,$00,$00,$00,$00,$00,$80,$00 ;
  defb $00,$00,$00,$15,$55,$55,$55,$55 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $ff,$ff,$ff,$ff,$c0,$00,$00,$00 ;
; The next 32 bytes are copied to ROOMNAME and specify the room name.
  defm "             The Bow            " ; Room name
; The next 54 bytes are copied to BACKGROUND and contain the attributes and
; graphic data for the tiles used to build the room.
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Background
  defb $44,$ff,$aa,$55,$ff,$00,$00,$00,$00 ; Floor
  defb $3d,$c9,$c9,$c9,$c9,$c9,$c9,$c9,$c9 ; Wall
  defb $4f,$40,$82,$52,$00,$00,$00,$00,$00 ; Nasty
  defb $07,$80,$40,$20,$10,$08,$04,$02,$01 ; Ramp
  defb $0e,$ff,$aa,$aa,$00,$aa,$ff,$00,$00 ; Conveyor
; The next four bytes are copied to CONVDIR and specify the direction, location
; and length of the conveyor.
  defb $01                ; Direction (right)
  defw $5ff1              ; Location in the attribute buffer at 5e00: (15,17)
  defb $0f                ; Length
; The next four bytes are copied to RAMPDIR and specify the direction, location
; and length of the ramp.
  defb $00                ; Direction (up to the left)
  defw $5fd0              ; Location in the attribute buffer at 5e00: (14,16)
  defb $06                ; Length
; The next byte is copied to BORDER and specifies the border colour.
  defb $05                ; Border colour
; The next two bytes are copied to XROOM223, but are not used.
  defb $00,$00            ; Unused
; The next eight bytes are copied to ITEM and define the item graphic.
  defb $48,$39,$26,$da,$5b,$64,$9c,$12 ; Item graphic
; The next four bytes are copied to LEFT and specify the rooms to the left, to
; the right, above and below.
  defb $00                ; Room to the left (The Off Licence)
  defb $3b                ; Room to the right (The Yacht)
  defb $00                ; Room above (The Off Licence)
  defb $00                ; Room below (The Off Licence)
; The next three bytes are copied to XROOM237, but are not used.
  defb $00,$00,$00        ; Unused
; The next eight pairs of bytes are copied to ENTITIES and specify the entities
; (ropes, arrows, guardians) in this room.
  defb $69,$17            ; Guardian no. 0x69 (horizontal), base sprite 0,
                          ; initial x=23 (ENTITY105)
  defb $6e,$14            ; Guardian no. 0x6e (horizontal), base sprite 0,
                          ; initial x=20 (ENTITY110)
  defb $ff,$00            ; Terminator (ENTITY127)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)
  defb $00,$00            ; Nothing (ENTITYDEFS)

; Unused TRS-DOS code
Lfd00:
  add hl,bc
  ld a,(de)
  cp $3b
  jr z,$fcd0
  cp $0d
  jr z,$fcd0
  push hl
  ld hl,$7800
  ld b,$02
  call $659e
  pop bc
  jr nc,Lfd00_1
Lfd00_0:
  ld de,$67b3
  jp $6459
Lfd00_1:
  call $754a
  jr nz,Lfd00_0
  call $5bb4
  call nz,$5bed
  ld e,(hl)
  inc hl
  ld a,(hl)
  ld ($542e),a
  ld a,($5433)
  or a
  jr z,Lfd00_3
  ld a,e
  cp $20
  jr c,Lfd00_2
  cp $25
  jr c,Lfd00_3
Lfd00_2:
  ld a,($5306)
  or a
  jp z,$6be4
Lfd00_3:
  ld hl,$7a30
  ld d,$00
  add hl,de
  add hl,de
  ld a,(hl)
  inc hl
  ld h,(hl)
  ld l,a
  ld a,e
  ld de,$7557
  ex de,hl
  ex (sp),hl
  ex de,hl
  push hl
  inc c
  dec c
  ret z
  cp $18
  ld a,$01
  ld hl,($5434)
  ret nc
  push hl
  push af
  ld hl,($5441)
  ld b,$02
  call $659e
  jr nc,Lfd00_6
  push de
  push bc
  call $7787
  ld hl,($5441)
  ld a,c
  add a,b
  inc a
  ld c,a
  xor a
  ld b,a
  sbc hl,bc
  rst $18
  jr nc,Lfd00_5
  ld hl,$681c
  push hl
  ld a,($5312)
  or a
  jr z,Lfd00_4
  call $7771
Lfd00_4:
  pop hl
  jp $5792
Lfd00_5:
  ld ($5441),hl
  pop bc
  pop de
  push bc
  ld (hl),c
  ex de,hl
  inc de
  ld b,$00
  ldir
  ex de,hl
  ld (hl),b
  inc hl
  ld (hl),b
  dec hl
  pop bc
Lfd00_6:
  pop de
  push hl
  xor a
  ld b,a
  inc bc
  sbc hl,bc
  ld a,($543e)
  cp $02
  jr nz,Lfd00_7
  ld a,($56c3)
  or a
  call nz,$6d20
Lfd00_7:
  inc d
  dec d
  jr nz,Lfd00_8
  ld a,(hl)
  and $80
  ld de,$683d
  call z,$645e
  ld a,(hl)
  and $40
  ld de,$6805
  call nz,$645e
  pop hl
  ld a,(hl)
  inc hl
  ld h,(hl)
  ld l,a
  pop de
  ret
Lfd00_8:
  ld a,(hl)
  or a
  jp p,$6d12
  ld a,d
  ex (sp),hl
  pop bc
  pop de
  push de
  push hl
  push af
  ld a,(hl)
  inc hl
  ld h,(hl)
  ld l,a
  rst $18
  pop de
  jr z,$fe06
  ld a,(bc)
  and $5f
  defb $45,$5f,$45,$ff,$45,$5f,$45,$5f,$45,$5f,$45,$5f,$45,$5f,$45,$5f
  defb $45,$91,$35,$d2,$44,$a1,$42,$79,$44,$54,$00,$7a,$44,$bd,$44,$45
  defb $01,$00,$43,$f5,$fe,$04,$4f,$00,$43,$89,$47,$67,$72,$00,$00,$6f
  defb $49,$26,$4d,$00,$4c,$00,$43,$36,$4d,$cc,$4c,$99,$4c,$bf,$64,$41
  defb $4c,$01,$53,$2b,$53,$78,$1d,$e6,$4b,$2d,$53,$1e,$1d,$00,$00,$00
  defb $7a,$44,$bd,$44,$45,$01,$00,$43,$f5,$fe,$04,$4f,$00,$43,$89,$47
  defb $67,$72,$00,$00,$6f,$49,$26,$4d,$00,$4c,$4a,$6d,$2b,$60,$e8,$5e
  defb $42,$00,$28,$60,$4a,$6d,$0e,$5f,$2c,$00,$47,$6d,$8f,$1b,$46,$54
  defb $00,$00,$00,$18,$62,$ff,$ff,$06
  defm "TRSHDx"
Lfd00_9:
  ld hl,$4448
  ld ($3c3e),hl
  ld a,$10
  out ($c1),a
  ld b,$40
  call $0060
  ld hl,ROOMNAME
  ld ($3c3e),hl
  ld a,$0c
  out ($c1),a
  ex (sp),hl
  ex (sp),hl
  in a,($cf)
  cp $50
  jr nz,Lfd00_9
  xor a
  out ($ce),a
  ld a,$10
  out ($cf),a
  ld b,$32
  call $0060
Lfd00_10:
  in a,($cf)
  bit 7,a
  jr nz,Lfd00_10
  bit 0,a
  jr nz,Lfd00_9
  ret
  defb $00,$00
  defm "TRSHDx(C) Copyright 1982 by LSI"
  ld a,$07
  cp b
  jr z,Lfd00_15
  bit 3,b
  jr nz,Lfd00_11
  xor a
  ret
Lfd00_11:
  bit 2,b
  push hl
  jr nz,Lfd00_14
  bit 1,b
  jr z,Lfd00_12
  ld hl,$0000
Lfd00_12:
  push de
  call Lfd00_23
  ld a,$20
  out ($cf),a
  ex (sp),hl
  ex (sp),hl
Lfd00_13:
  in a,($cf)
  rlca
  jr c,Lfd00_13
  ld bc,$00c8
  inir
  in a,($cf)
  rrca
  ld hl,$ff81
  jr c,Lfd00_18
  pop de
  push de
  ld a,d
  cp (iy+$09)
  ld a,$06
  jr z,Lfd00_20
  xor a
  jr Lfd00_20
Lfd00_14:
  call Lfd00_15
  jr z,Lfd00_16
  pop hl
  ld a,$0f
  ret
Lfd00_15:
  ld a,(iy+$03)
  and $03
  ld c,a
  in a,($c0)
  call c,$0d07
  jr nz,$ff26
  or (iy+$03)
  bit 7,a
  ld a,$40
  ret nz
  xor a
  ret
Lfd00_16:
  push de
  ld a,b
  cp $0f
  jr z,Lfd00_21
  cp $0c
  ld a,$08
  jr z,Lfd00_20
  call Lfd00_23
  ld a,$30
  call Lfd00_26
  jr z,Lfd00_20
Lfd00_17:
  ld hl,$ff89
Lfd00_18:
  in a,($c9)
Lfd00_19:
  rlca
  inc hl
  jr nc,Lfd00_19
  ld a,(hl)
Lfd00_20:
  or a
  pop de
  pop hl
  ret
Lfd00_21:
  ld a,(iy+$07)
  ld b,a
  and $1f
  ld e,a
  xor b
  rlca
  rlca
  rlca
  inc a
  ld b,a
Lfd00_22:
  push bc
  push de
  call Lfd00_23
  push hl
  ld a,(hl)
  out ($ca),a
  inc hl
  ld a,$50
  call Lfd00_26
  pop hl
  pop de
  pop bc
  jr nz,Lfd00_17
  ld a,$20
  add a,e
  ld e,a
  djnz Lfd00_22
  xor a
  jr Lfd00_20
  defb $07,$04,$01,$05,$7f,$08,$02,$03
  defb $0e,$0c,$09,$0d,$7f,$08,$0a,$0b
Lfd00_23:
  push hl
  ld l,d
  ld h,$00
  bit 5,(iy+$04)
  jr z,Lfd00_24
  add hl,hl
Lfd00_24:
  ld a,(iy+$07)
  push de
  ld d,a
  and $1f
  ld e,a
  inc e
  ld c,e
  xor d
  rlca
  rlca
  rlca
  inc a
  call $4b6b
  dec a
  pop de
  cp e
  jr nc,Lfd00_25
  cpl
  add a,e
  ld e,a
  inc hl
Lfd00_25:
  ld a,c
  call $4b7a
  ld d,a
  ld a,(iy+$04)
  and $0f
  add a,d
  ld d,a
  ld a,(iy+$03)
  and $03
  rlca
  rlca
  rlca
  or d
  out ($ce),a
  ld a,e
  out ($cb),a
  ld a,l
  out ($cc),a
  ld a,h
  out ($cd),a
  pop hl
  ret
Lfd00_26:
  out ($cf),a
  ld bc,$00c8
  otir
  ex (sp),hl
  ex (sp),hl
Lfd00_27:
  in a,($cf)
  rlca
  jr c,Lfd00_27
  in a,($cf)
  and $01
  ret
  defs $13

    SAVESNA "main.sna", main