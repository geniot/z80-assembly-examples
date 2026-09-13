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

        ; Set up (otherwise untouched) audio regs

        ld bc, 0xFFFD 
        ld a, 6 ; noise pitch        
        out (c), a
        ld bc, 0xBFFD
        ld a, 25
        out (c), a
        

        ; Entry: key select        

        ld a, 0
        out (0xfe), a

        ld de, SCREEN
        ld hl, keyselect_scr
        di
        call dzx0_standard
        ei
        
inputselectloop:        
        call scaninputs        
        ld a, (keydata + 3)
        bit 0, a
        jr z, select_1
        bit 1, a
        jr z, select_2
        bit 2, a
        jr z, select_3
        jp inputselectloop
select_1:
        ld a, 0
        ld (inputmode), a
        jp levelselect        
select_2:
        ld a, 1
        ld (inputmode), a
        jp levelselect        
select_3:
        ld a, 2
        ld (inputmode), a
        jp levelselect        
        

levelselect:
        ld a, 0
        ld (playerdone), a
        ld (gems), a

        ld a, 0
        out (0xfe), a
        
loadlevel:
        ; clear screen
        ld hl, SCREEN
        ld (hl), 0
        ld de, SCREEN + 1
        ld bc, (256/8)*192+32*12 - 1
        ldir
        
        ; set bottom attributes to grey text
        ld hl, COLOR+32*12
        ld (hl), 7
        ld de, COLOR+32*12+1
        ld bc, 32*12-1
        ldir

        ld de, map
        ld hl, levels
        ld bc, (level)
        ld a, h
        add a, c
        ld h, a
        ld bc, 16*16
        ldir
        
        call drawminimap

        ld bc, 0x090f
        ld hl, map.title
        call printtext       
        
        ld bc, 0x0011
        ld hl, helptext1
        call printtext
        
        ld bc, 0x0012
        ld hl, helptext2
        call printtext

        ld bc, 0x0d12
        ld hl, map.gemgoaltext
        call printtext

        ld bc, 0x0013
        ld hl, helptext3
        call printtext

        ld bc, 0x0015
        ld hl, helptext4
        call printtext

        ld bc, 0x0016
        ld hl, helptext5
        call printtext
        
levelselectloop:
        ld a, 0
        ld (movekey), a

        call scaninputs
        
        ld a, (movekey)
        bit 0, a
        jr nz, test_sfx
        bit 2, a
        jr nz, level_prev
        bit 3, a
        jr nz, level_next
        bit 4, a
        jr nz, startgame
        jr levelselectloop
test_sfx:
        ld hl, snd_test
        call playsound
        jp levelselectloop

level_prev:
        ld a, (level)
        cp 0
        jr z, levelselectloop
        dec a
        ld (level),a
        jp loadlevel

level_next:
        ld a, (level)
        ld hl, (maxlevel)
        cp l
        jr z, levelselectloop
        inc a
        ld (level),a
        jp loadlevel


startgame:
        ld a, 0
        ld (movekey), a

        call findplayer
        ld (playerpos), hl
        call dirtymap
mainloop:
;        ld a, 2
;        out (0xfe), a

        call scaninputs
        call moveplayer

        ld hl, map + (16 * 12 - 1)
        ld bc, 0x100c ; 16x12
maploop:
        ld a, (hl)
        rla
        jr nc, skipdraw
        push hl
        push bc

        srl a
        ld (hl), a
        ld l, a
        ld h, 0
        
        push hl        
        ld hl, bc
        ld de, -0x0101
        add hl, de
        ld bc, hl
        pop hl
        
;        ld a, 1
;        out (0xfe), a
        call drawtile
;        ld a, 2
;        out (0xfe), a
        pop bc
        pop hl

skipdraw:        
        dec hl
        dec b
        jp nz, maploop
        ld b, 0x10
        dec c
        jr nz, maploop
        
;        ld a, 4
;        out (0xfe), a

        call physics
        call physics

;        ld a, 0
;        out (0xfe), a
        
        halt

        jp mainloop

physofs:
        db 0, 176

physloopcount:
        db 0, 0

; physics, calculates physics of non-player controlled items
; no parameters, destroys a, bc, ix (eventually others)        
physics:
        ld ix, map
        ld bc, (physofs)
        ld hl, -16
        add hl, bc
        ld a, l
        cp -16
        jr nz, physics_notlooped
        ld hl, (physloopcount)
        inc hl
        ld (physloopcount), hl
        ld hl, 176        
physics_notlooped:        
        ld (physofs), hl
        add ix, bc
        ld b, 16
physicsloop:
        ld a, (ix)
        cp 0
        jr z, physicsdone
        cp 2
        jr z, physicsdone
        cp 5
        jr z, physics_drop
        cp 6
        jr z, physics_drop
        cp 9
        jp z, physics_stone
        cp 16
        jp z, physics_watersource
        cp 15
        jp z, physics_water
        cp 4
        jp z, physics_goo
        cp 11
        jp z, physics_peopleeater_up
        cp 12
        jp z, physics_peopleeater_right
        cp 13
        jp z, physics_peopleeater_down
        cp 14
        jp z, physics_peopleeater_left
        cp 17
        jp z, physics_crystalize
physicsdone:
        inc ix
        dec b
        ret z
        jp physicsloop
        
physics_drop:
        ld a, ixl
        cp 16*11
        jr nc, physicsdone
        ld a, (ix+16)
        cp 5
        jr z, dropdiagonal_left
        cp 6
        jr z, dropdiagonal_left
        cp 15
        jr z, physics_drop_ok ; water is fine
        cp 0
        jr nz, physicsdone
physics_drop_ok:        
        ld a, (ix)
        cp 6 ; stone
        jr nz, notstone
        ld a, 9 ; falling stone
        ld hl, snd_rockfall_lite
        call playsound
        jr carryon
notstone:
        ld hl, snd_gemfall
        call playsound
carryon:
        or 0x80
        ld (ix), 0x80
        ld (ix+16), a
        jr physicsdone
dropdiagonal_left:
        ld a, ixl   ; Note: undocumented instruction
        and 15
        jr z, dropdiagonal_right ; Can't move, border
        ld a, (ix-1)
        cp 15
        jr z, dropdiagonal_left_ok1 ; water ok
        cp 0
        jr nz, dropdiagonal_right ; can't move, stuff on the left
dropdiagonal_left_ok1:
        ld a, (ix+15)
        cp 15
        jr z, dropdiagonal_left_ok2 ; water ok
        cp 0
        jr nz, dropdiagonal_right ; can't move, stuff at target
dropdiagonal_left_ok2:
        ld a, (ix)
        or 0x80
        ld (ix), 0x80
        ld (ix+15), a
        jr physicsdone
dropdiagonal_right:
        ld a, ixl
        and 15
        cp 15
        jr z, physicsdone ; can't move, border
        ld a, (ix+1)
        cp 15
        jr z, dropdiagonal_right_ok1 ; water ok
        cp 0
        jr nz, physicsdone ; can't move, stuff on the right
dropdiagonal_right_ok1:
        ld a, (ix+17)
        cp 15
        jr z, dropdiagonal_right_ok2 ; water ok
        cp 0
        jp nz, physicsdone ; cen't move, stuff at target
dropdiagonal_right_ok2:
        ld a, (ix)
        or 0x80
        ld (ix), 0x80
        ld (ix+17), a
        jp physicsdone
        
physics_stone:
        ld a, ixl
        cp 16*11
        jr nc, stone_stop
        ld a, (ix+16)
        and 127
        cp 0
        jr z, stone_fall
        cp 15
        jr z, stone_fall ; water ok
        cp 1
        jr z, stone_splat
        cp 11
        jr z, stone_splat_peopleeater
        cp 12
        jr z, stone_splat_peopleeater
        cp 13
        jr z, stone_splat_peopleeater
        cp 14
        jr z, stone_splat_peopleeater
stone_stop:
        ld (ix), 0x86 ; inert stone
        ld hl, snd_rockfall
        call playsound
        jp physicsdone
stone_fall:
        ld (ix), 0x80
        ld (ix+16), 0x89
        jp physicsdone
stone_splat:        
        ld (ix), 0x80
        ld (ix+16), 0x8a ; splat
        ld a, 1
        ld (playerdone), a
        ld hl, snd_dead
        call playsound        
        jp physicsdone
stone_splat_peopleeater:        
        ld (ix), 0x80
        ld (ix+16), 0x8a ; splat
        ld hl, snd_rockfall
        call playsound
        jp physicsdone
        
physics_watersource:
        ld hl, (physloopcount)
        ld a, l
        and 7
        jp nz, physicsdone
        ld a, (ix+16)
        cp 0
        jp nz, physicsdone
        ld (ix+16), 0x8f ; generate water
        jp physicsdone
        
physics_water:
        ld hl, (physloopcount)
        ld a, l
        and 1
        jp nz, physicsdone
        ld a, ixl
        cp 16*11
        jr nc, water_sideways
        ld a, (ix+16)
        cp 0
        jp z, water_down_water
        cp 4
        jp z, water_down_goo
        cp 11
        jp z, water_down_peopleeater
        cp 12
        jp z, water_down_peopleeater
        cp 13
        jp z, water_down_peopleeater
        cp 14
        jp z, water_down_peopleeater
        ;fallthrough
water_sideways:
        ld hl, (physloopcount)
        ld a, ixl
        add a
        add l
        and 2
        jr z, water_right
        ;fallthrough
water_left:
        ld a, ixl
        and 0xf
        jp z, physicsdone
        ld a, (ix-1)
        ; water+goo
        ; water+people eater              
        cp 0
        jp z, water_left_water
        cp 4
        jr z, water_left_goo
        cp 11       
        jr z, water_left_peopleeater
        cp 12       
        jr z, water_left_peopleeater
        cp 13       
        jr z, water_left_peopleeater
        cp 14       
        jr z, water_left_peopleeater
        jp physicsdone        
water_left_water:        
        ld (ix), 0x80
        ld (ix-1), 0x8f
        jp physicsdone
water_left_goo:
        ld (ix), 0x80
        ld (ix-1), 0x80 + 17
        jp physicsdone
water_left_peopleeater:
        ld (ix), 0x80
        ld (ix-1), 0x86
        jp physicsdone
water_right:
        ld a, ixl
        and 0xf
        cp 15
        jp z, physicsdone
        ld a, (ix+1)
        ; water+goo
        ; water+people eater              
        cp 0
        jp z, water_right_water
        cp 4
        jr z, water_right_goo
        cp 11       
        jr z, water_right_peopleeater
        cp 12       
        jr z, water_right_peopleeater
        cp 13       
        jr z, water_right_peopleeater
        cp 14       
        jr z, water_right_peopleeater
        jp physicsdone        
water_right_water:        
        ld (ix), 0x80
        ld (ix+1), 0x8f
        jp physicsdone
water_right_goo:
        ld (ix), 0x80
        ld (ix+1), 0x80 + 17
        jp physicsdone
water_right_peopleeater:        
        ld (ix), 0x80
        ld (ix+1), 0x86
        jp physicsdone
water_down_water:
        ld (ix), 0x80
        ld (ix+16), 0x8f ; water
        jp physicsdone
water_down_goo:        
        ld (ix), 0x80
        ld (ix+16), 0x80 + 17 ; crystalizing goo
        jp physicsdone
water_down_peopleeater:
        ld (ix), 0x80
        ld (ix+16), 0x86 ; stone
        jp physicsdone

physics_goo:
        ld hl, (physloopcount)
        ld a, ixl
        add l
        and 15
        jp nz, physicsdone
        
        ld a, ixl
        and 15
        jr z, goo_right
        ld a, (ix-1)
        cp 0
        jr nz, goo_right
        ld (ix-1), 0x84
goo_right:
        ld a, ixl
        and 15
        cp 15
        jr z, goo_down
        ld a, (ix+1)
        cp 0
        jr nz, goo_down
        ld (ix+1), 0x84
        ld hl, snd_goop
        call playsound
goo_down:
        ld a, ixl
        cp 16*11
        jr nc, goo_up
        ld a, (ix+16)
        cp 0
        jr nz, goo_up
        ld (ix+16), 0x84
        ld hl, snd_goop
        call playsound
goo_up:
        ld a, ixl
        cp 16
        jp c, physicsdone
        ld a, (ix-16)
        cp 0
        jp nz, physicsdone
        ld (ix-16), 0x84
        ld hl, snd_goop
        call playsound
        jp physicsdone        
                
physics_peopleeater_up:
        ld a, ixl
        cp 16
        jr c, peopleeater_up_turn
        ld a, (ix-16)
        cp 0
        jr z, peopleeater_up_move
        cp 4 ; goo
        jr z, peopleeater_up_move 
        cp 1
        jr z, peopleeater_up_eat
peopleeater_up_turn:
        ld (ix), 0x80 + 12
        ld hl, snd_monsterturn
        call playsound
        jp physicsdone                
peopleeater_up_eat:
        ld a, 1
        ld (playerdone), a
        ld hl, snd_dead
        call playsound
        ; fallthrough
peopleeater_up_move:
        ld (ix), 0x80
        ld (ix-16), 0x80 + 11
        jp physicsdone

physics_peopleeater_right:
        ld a, ixl
        and a, 15
        cp 15
        jr z, peopleeater_right_turn
        ld a, (ix+1)
        cp 0
        jr z, peopleeater_right_move
        cp 4 ; goo
        jr z, peopleeater_right_move 
        cp 1
        jr z, peopleeater_right_eat
peopleeater_right_turn:
        ld (ix), 0x80 + 13
        ld hl, snd_monsterturn
        call playsound
        jp physicsdone                
peopleeater_right_eat:
        ld a, 1
        ld (playerdone), a
        ld hl, snd_dead
        call playsound
        ; fallthrough
peopleeater_right_move:
        ld (ix), 0x80
        ld (ix+1), 0x80 + 12
        jp physicsdone

physics_peopleeater_down:
        ld a, ixl
        cp 16*11
        jr nc, peopleeater_down_turn
        ld a, (ix+16)
        cp 0
        jr z, peopleeater_down_move
        cp 4 ; goo
        jr z, peopleeater_down_move 
        cp 1
        jr z, peopleeater_down_eat
peopleeater_down_turn:
        ld (ix), 0x80 + 14
        ld hl, snd_monsterturn
        call playsound
        jp physicsdone                
peopleeater_down_eat:
        ld a, 1
        ld (playerdone), a
        ld hl, snd_dead
        call playsound
        ; fallthrough
peopleeater_down_move:
        ld (ix), 0x80
        ld (ix+16), 0x80 + 13
        jp physicsdone

physics_peopleeater_left:
        ld a, ixl
        and 15
        jr z, peopleeater_left_turn
        ld a, (ix-1)
        cp 0
        jr z, peopleeater_left_move
        cp 4 ; goo
        jr z, peopleeater_left_move 
        cp 1
        jr z, peopleeater_left_eat
peopleeater_left_turn:
        ld (ix), 0x80 + 11
        ld hl, snd_monsterturn
        call playsound
        jp physicsdone                
peopleeater_left_eat:
        ld a, 1
        ld (playerdone), a
        ld hl, snd_dead
        call playsound
        ; fallthrough
peopleeater_left_move:
        ld (ix), 0x80
        ld (ix-1), 0x80 + 14
        jp physicsdone

physics_crystalize:
        ld hl, snd_gemfall
        call playsound
        ld (ix), 0x85
        ld a, ixl
        and 15
        jr z, crystalize_right
        ld a, (ix-1)
        cp 4
        jr nz, crystalize_right
        ld (ix-1), 0x80 + 17
crystalize_right:
        ld a, ixl
        and 15
        cp 15
        jr z, crystalize_down
        ld a, (ix+1)
        cp 4
        jr nz, crystalize_down
        ld (ix+1), 0x80 + 17
crystalize_down:
        ld a, ixl
        cp 16*11
        jr nc, crystalize_up
        ld a, (ix+16)
        cp 4
        jr nz, crystalize_up
        ld (ix+16), 0x80 + 17
crystalize_up:
        ld a, ixl
        cp 16
        jp c, physicsdone
        ld a, (ix-16)
        cp 4
        jp nz, physicsdone
        ld (ix-16), 0x80 + 17
        jp physicsdone                
                

; Draw mini-map for the level selection
drawminimap:
        ld hl, map + (16 * 12 - 1)
        ld bc, 0x100c ; 16x12
minimaploop:
        ld a, (hl)
        push hl
        push bc

        ld l, a
        ld h, 0
        
        push hl        
        ld hl, bc
        ld de, 0x0801
        add hl, de
        ld bc, hl
        pop hl
                
        call drawminitile
        pop bc
        pop hl

        dec hl
        dec b
        jp nz, minimaploop
        ld b, 0x10
        dec c
        jr nz, minimaploop
        ret

; drawminitile, copies tile data to screen
; input: hl = tile, b = x, c = y
; destroys de, hl, bc, a
drawminitile:
        ; Save these for later when we plot color
        push hl
        push bc
        ; One tile is 8 bytes
        add hl, hl ; *2
        add hl, hl ; *4
        add hl, hl ; *8
        ld de, minitiles
        add hl, de
        ld de, hl  ; hl now is pointing at the start of tile x
        
        ; Figuring out the screen coordinates is trickier;
        ; screen coordinate bits go like this:
        ;           H          |            L
        ; 0 1 0 Y7 Y6 Y2 Y1 Y0 | Y5 Y4 Y3 X4 X3 X2 X1 X0
        ; rotate the coordinate right three bits (to get to Y3, Y4, Y5 in L)
        ld a, c
        rrca
        rrca
        rrca        
        ; AND any additional bits off
        and 0xe0
        ; Add x
        add a, b        
        ld l, a  ; coordinate bottom byte done
        ; next we do the same for Y6 and Y7; no need to shift because we're in the
        ; right place.
        ld a, c
        and 0x18 ; AND extra bits off, and h is done.
        ld h, a
        ld bc, SCREEN
        add hl, bc  ; now hl points at the screen offset we want
        
        ; Instead of looping, we'll plot each pixel separately..
        DUP 7
            ld a, (de)    ; Read pixels from data
            ld (hl), a    ; Write to screen
            inc de        ; Increment de and hl..
            inc h
        EDUP
            ld a, (de)    ; Read pixels from data
            ld (hl), a    ; Write to screen
        
        ; Bitmap done, color to do
        pop bc
        ld l, c   ; y coordinate
        ld h, 0
        ; we need to multiply y by 32; 32 colors per scanline
        add hl, hl ; x2
        add hl, hl ; x4
        add hl, hl ; x8
        add hl, hl ; x16
        add hl, hl ; x32
        ld c, b
        ld b, 0
        add hl, bc ; x offset
        ld bc, COLOR
        add hl, bc
        ld bc, hl ; bc now has color table offset
        
        pop hl ; tile index
        ld de, minitilecolors
        add hl, de  ; hl now points at tile color
        
        ld de, hl  ; de now points at tile
        ld hl, bc  ; hl now points at screen
        
        ld a, (de)      ; read color
        ld (hl), a      ; write color
        
        ret


; drawtile, copies tile data to screen
; input: hl = tile, b = x, c = y
; destroys de, hl, bc, a
drawtile:
        ; Save these for later when we plot color
        push hl
        push bc
        ; One tile is 2*16 bytes
        add hl, hl ; *2
        add hl, hl ; *4
        add hl, hl ; *8
        add hl, hl ; *16
        add hl, hl ; *32
        ld de, tiles
        add hl, de
        ld de, hl  ; hl now is pointing at the start of tile x
        
        ; Figuring out the screen coordinates is trickier;
        ; screen coordinate bits go like this:
        ;           H          |            L
        ; 0 1 0 Y7 Y6 Y2 Y1 Y0 | Y5 Y4 Y3 X4 X3 X2 X1 X0
        ; First, let's increment the input coordiate by x2 because
        ; we want 16 pixel step:
        ld a, c
        add a, a
        ld c, a 
        ; next, rotate the coordinate right three bits (to get to Y3, Y4, Y5 in L)
        rrca
        rrca
        rrca        
        ; AND any additional bits off
        and 0xe0
        ; Add in the x offset twice for 16 pixel step
        add a, b
        add a, b        
        ld l, a  ; coordinate bottom byte done
        ; next we do the same for Y6 and Y7; no need to shift because we're in the
        ; right place.
        ld a, c
        and 0x18 ; AND extra bits off, and h is done.
        ld h, a
        ld bc, SCREEN
        add hl, bc  ; now hl points at the screen offset we want
        
        ; Instead of looping, we'll plot each pixel separately..
        ld bc, 255
        DUP 7
            ld a, (de)    ; Read pixels from data
            ld (hl), a    ; Write to screen
            inc de        ; Increment de and hl..
            inc hl
            ld a, (de)    ; And repeat
            ld (hl), a
            inc de
            add hl, bc    ; Add in bc to move to the next line in screen (and one byte back)
        EDUP
            ld a, (de)    ; Read pixels from data
            ld (hl), a    ; Write to screen
            inc de        ; Increment de and hl..
            inc hl
            ld a, (de)    ; And repeat
            ld (hl), a
            inc de

        ld bc, 65536 + 255 - 256 * 8 + 32 ; Move to the next block of 8 pixels
        add hl, bc
        ld bc, 255        ; And repeat the above process
        DUP 7
            ld a, (de)
            ld (hl), a
            inc de
            inc hl
            ld a, (de)
            ld (hl), a
            inc de
            add hl, bc            
        EDUP
            ld a, (de)
            ld (hl), a
            inc de
            inc hl
            ld a, (de)
            ld (hl), a

        ; Bitmap done, color to do
        pop bc
        ld l, c   ; y coordinate
        ld h, 0
        ; we need to multiply y by 64; 32 colors per scanline and we do 16x16 tiles
        add hl, hl ; x2
        add hl, hl ; x4
        add hl, hl ; x8
        add hl, hl ; x16
        add hl, hl ; x32
        add hl, hl ; x64
        ld c, b
        ld b, 0
        add hl, bc ; x offset
        add hl, bc ; x offset x2, for 16x16 tiles
        ld bc, COLOR
        add hl, bc
        ld bc, hl ; bc now has color table offset
        
        pop hl ; tile index
        ; One tile is 4 bytes of color
        add hl, hl ; x2
        add hl, hl ; x4
        ld de, tilecolors
        add hl, de  ; hl now points at tile color
        
        ld de, hl  ; de now points at tile
        ld hl, bc  ; hl now points at screen
        ld bc, 31  ; scanline - 1
        
        ld a, (de)      ; read color
        ld (hl), a      ; write color
        inc de          ; next color
        inc hl          ; next pixel
        ld a, (de)
        ld (hl), a
        inc de
        add hl, bc      ; next row - 1 pixel
        ld a, (de)
        ld (hl), a
        inc de
        inc hl
        ld a, (de)
        ld (hl), a       
        
        ret

; Marks all tiles as dirty and requiring redraw
; no inputs, destroys hl, a, b
dirtymap:
        ld hl, map
        ld b, (16*12)
dmloop:
        ld a, (hl)
        or 0x80
        ld (hl), a
        inc hl
        dec b
        jr nz, dmloop
        ret

; Marks one tile as dirty
; hl=tile index, destroys hl, bc, a
dirtytile:
        ld bc, map
        add hl, bc
        ld a, (hl)
        or 0x80
        ld (hl), a
        ret
        
; findplayer - scans map and returns the player's position
; no parameters, destroys a, bc, returns position in hl
findplayer:                
        ld hl, map - 1
        ld a, 1
        ld bc, 16*12
        cpir
        ld bc, -map-1
        add hl, bc
        ret

keydata:
        db 0,0,0,0,0,0,0,0,0,0
wasdown:
        db 0
movekey:
        db 0
inputmode:
        db 0
        
scaninputs:
        ld bc, 0xfefe
        in a, (c)
        ld (keydata + 0), a
        ld bc, 0xfdfe
        in a, (c)
        ld (keydata + 1), a
        ld bc, 0xfbfe
        in a, (c)
        ld (keydata + 2), a
        ld bc, 0xf7fe
        in a, (c)
        ld (keydata + 3), a
        ld bc, 0xeffe
        in a, (c)
        ld (keydata + 4), a
        ld bc, 0xdffe
        in a, (c)
        ld (keydata + 5), a
        ld bc, 0xbffe
        in a, (c)
        ld (keydata + 6), a
        ld bc, 0x7ffe
        in a, (c)
        ld (keydata + 7), a
        ld bc, 31 ; kempston
        in a, (c) 
        xor 0x1f
        ld (keydata + 8), a

        MACRO SCANKEY keybyte, keybit, outbit
            ld a, (keydata + keybyte)
            bit keybit, a
            jr z, .scan_key_down
            ld a, (wasdown)
            and a, 0xff ^ (1 << outbit)
            ld (wasdown), a
            jr .scan_done
.scan_key_down:
            ld a, (wasdown)
            bit outbit, a
            jr nz, .scan_done
            or a, 1 << outbit
            ld (wasdown), a
            ld a, (movekey)
            or a, 1 << outbit
            ld (movekey), a
.scan_done:
        ENDM
        
        SCANKEY 7,0,4 ; space        
        
        ld a, 0
        ld hl, inputmode
        sub (hl)
        jr z, input_wasd
        ld a, 1
        sub (hl)
        jp z, input_qaop
        ld a, 2
        sub (hl)
        jp z, input_kempston
        ; fallthrough to wasd        
                
        ; 'W' : byte 2, bit 1
        ; 'A' : byte 1, bit 0
        ; 'S' : byte 1, bit 1
        ; 'D' : byte 1, bit 2
input_wasd:
        SCANKEY 2,1,0 ; up 
        SCANKEY 1,1,1 ; down
        SCANKEY 1,0,2 ; left
        SCANKEY 1,2,3 ; right        
        ret        
        
        ; 'Q' : byte 2, bit 0
        ; 'A' : byte 1, bit 0
        ; 'O' : byte 5, bit 1
        ; 'P' : byte 5, bit 0
input_qaop:
        SCANKEY 2,0,0 ; up 
        SCANKEY 1,0,1 ; down
        SCANKEY 5,1,2 ; left
        SCANKEY 5,0,3 ; right        
        ret        

        ; kempston up    : byte 8, bit 3
        ; kempston down  : byte 8, bit 2
        ; kempston left  : byte 8, bit 1
        ; kempston right : byte 8, bit 0
input_kempston:        
        SCANKEY 8,3,0 ; up 
        SCANKEY 8,2,1 ; down
        SCANKEY 8,1,2 ; left
        SCANKEY 8,0,3 ; right        
        ret        

moveplayer:
        ld a, (movekey)
        bit 4, a
        jp nz, levelselect
        
        ld a, (playerdone)
        cp 1
        ret z
        


        ld hl, (playerpos)
        ld bc, map
        add hl, bc
        ld (hl), 0x80
        ld hl, (playerpos)

        ; Trying to move up, check if we're not on the top row
        ld a, l
        cp 16
        jr c, notup
        
        ld a, (movekey)
        bit 0, a
        jr z, notup
        ld bc, -16
        add hl, bc
        jp moved
notup:
        ; Moving down, check if we're not on the bottom row
        ld a, l
        cp 16*11
        jr nc, notdown
        
        ld a, (movekey)
        bit 1, a
        jr z, notdown
        ld bc, 16
        add hl, bc
        jp moved
notdown:
        ; Moving left, x coordinate may not be zero
        ld a, l
        and 0xf
        jr z, notleft
        
        ld a, (movekey)
        bit 2, a
        jr z, notleft
        dec hl
        jp moved
notleft:
        ; moving right, x coordinate may not be 15
        ld a, l
        and 0xf
        cp 15
        jr z, notright
        
        ld a, (movekey)
        bit 3, a
        jr z, notright
        inc hl
notright:
moved:
        ld a, 0
        ld (movekey), a
        
        ; Now that we have a *potential* new position in hl, we need to
        ; figure out if it's legal.
        ld bc, hl
        ld de, map
        add hl, de
        ld a, (hl)
        ld hl, bc
        
        cp 0
        jp z, moveok ; Empty tile is always fine
        cp 2
        jp z, moveok ; Ground is fine
        cp 5
        jp z, moveok_gem ; Gems are fine
        cp 8
        jp z, moveok_door ; Open exit is fine
        cp 6
        jr z, movestone ; Check if we can push a stone
        jp movedone
        
movestone:
        ld a, l
        and a, 0xf
        jp z, movedone ; left border; can't be pushed
        cp 15
        jp z, movedone ; right border; can't be pushed        
        ld a, (playerpos)
        sub l ; playerpos - target
        ; Let's limit stone pushing to horizontal movement
        ; -1 = 11111111, 1 = 00000001, 16 = 00010000, -16 = 11110000
        ; checking bit 0 is enough
        bit 0, a
        jr z, movedone
        ld bc, hl  ; back up target position
        ld l, a    ; l = 1/-1
        ld a, c    ; a = target position
        sub l      ; a -= 1/-1
        ld l, a    ; hl = other side of target position
        ld de, map
        add hl, de
        ld a, (hl)
        cp 0
        jr nz, movedone ; other side wasn't empty
canmovestone:
        ld (hl), 0x86 ; store stone in empty slot
        ld hl, bc  ; restore move target
        jr moveok

moveok_door:
        ld (playerpos), hl
        ld de, map
        add hl, de
        ld (hl), 0x87 ; closed door
        ld hl, snd_exit      
        call playsound
        
        ; Remove all sand
        ld hl, map
        ld b, 16*12
        ld a, 2
sandloop:
        cp (hl)
        jr nz, notsand
        ld (hl), 0x80
notsand:        
        inc hl        
        djnz sandloop      
        
        ; Increase level
        ld a, 1
        ld (playerdone), a
        ld a, (level)
        ld hl, (maxlevel)
        cp l
        ret z
        inc a
        ld (level),a
        ret

moveok_gem:
        ld (playerpos), hl
        ld hl, snd_gemget
        call playsound
        ld a, (gems)
        inc a
        ld (gems), a
        ld l, a
        ld a, (map.gemgoal)
        cp l
        jp nz, movedone
        ld hl, snd_door
        call playsound
        ld hl, map
        ld b, 16*12
        ld a, 7
doorloop:
        cp (hl)
        jr nz, notdoor
        ld (hl), 0x88
notdoor:        
        inc hl        
        djnz doorloop
        jp movedone

moveok:
        ld (playerpos), hl
        
        ld hl, snd_walk
        call playsound
        
movedone:
        ld hl, (playerpos)
        ld bc, map
        add hl, bc
        ld (hl), 0x81        
        ret

; printtext: draw asciiz string.
; bc x/y coordinates, hl text string
printtext:
        ex de, hl
        ld ix, 0
        add ix, de
        ;           H          |            L
        ; 0 1 0 Y7 Y6 Y2 Y1 Y0 | Y5 Y4 Y3 X4 X3 X2 X1 X0
        ld a, c
        rrca
        rrca
        rrca        
        ; AND any additional bits off
        and 0xe0
        ; Add x
        add a, b        
        ld l, a  ; coordinate bottom byte done
        ; next we do the same for Y6 and Y7; no need to shift because we're in the
        ; right place.
        ld a, c
        and 0x18 ; AND extra bits off, and h is done.
        ld h, a
        ld bc, SCREEN
        add hl, bc  ; now hl points at the screen offset we want
        ld bc, de
        ld de, hl
printtextloop:
        ld a, (ix)
        cp 0
        ret z
        ld l, a
        ld h, 0
        add hl, hl ; *2
        add hl, hl ; *4
        add hl, hl ; *8
        ld bc, 0x3D00 - 32*8 ; font offset in ROM, which starts from space
        add hl, bc
        DUP 7
            ld a,(hl)
        	ld (de),a
        	inc hl
        	inc d
        EDUP
            ld a,(hl)
        	ld (de),a
        inc ix
        ex de,hl
        ld bc, -256*7+1
        add hl, bc
        ex de,hl
        
        jp printtextloop        
                
nextch: db 0        

; Function playsound. hl = sound effect to play.
playsound:
    push af
    push de
    push bc
    ld a, (nextch)
    cp 0
    jr z, play_ch1
    cp 1
    jr z, play_ch2
    ld a, 0
    ld (nextch), a
    ld de, ch3
    jr play
play_ch1:
    inc a
    ld (nextch), a
    ld de, ch1
    jr play
play_ch2:
    inc a
    ld (nextch), a
    ld de, ch2
play:
    ld bc, 10
    push de
    ldir
    ; Little bit of random for livelier sound
    pop hl
    ld e, (hl)
    inc hl
    ld d, (hl)
    ex de,hl
    ld a, r
    and 0x1f
    ld c, a
    ld b, 0
    add hl, bc
    ex de,hl
    ld (hl),d
    dec hl
    ld (hl),e       
    pop bc
    pop de
    pop af
    ret                


isr:                    ; This will be called ~50Hz
        ex af, af'
        exx        

        MACRO PERCHANNEL pitch, pitchi, finepitchreg, coarsepitchreg, volume, volumei, volumereg
            ld hl, (pitch)
            ld bc, (pitchi)
            add hl, bc
            ld (pitch),hl                        

            ld bc, 0xFFFD 
            ld a, finepitchreg
            out (c), a
            ld bc, 0xBFFD
            out (c), l
            ld bc, 0xFFFD 
            ld a, coarsepitchreg
            out (c), a
            ld bc, 0xBFFD
            out (c), h

            ld hl, (volume)
            ld bc, (volumei)
            add hl, bc
            ld (volume), hl
            ld a, h
            and 15
            ; todo: if we want to enable envelope, here's the place
            
            ld h, volumereg
            ld bc, 0xFFFD 
            out (c), h
            ld bc, 0xBFFD
            out (c), a
        ENDM
        
        PERCHANNEL ch1.pitch, ch1.pitchi, 0, 1, ch1.volume, ch1.volumei, 8
        PERCHANNEL ch2.pitch, ch2.pitchi, 2, 3, ch2.volume, ch2.volumei, 9
        PERCHANNEL ch3.pitch, ch3.pitchi, 4, 5, ch3.volume, ch3.volumei, 10
        
        ; Handle mixer. Bottom 3 bits for tone enable, next 3 bits for noise enable.
        ld de, (ch1.flags)
        ld a, 0
        bit 0, e
        jr nz, ch1_toneskip
        set 0, a
ch1_toneskip:        
        bit 1, e
        jr nz, ch1_noiseskip
        set 3, a
ch1_noiseskip:        
        ld de, (ch2.flags)
        bit 0, e
        jr nz, ch2_toneskip
        set 1, a
ch2_toneskip:        
        bit 1, e
        jr nz, ch2_noiseskip
        set 4, a               
ch2_noiseskip:        
        ld de, (ch3.flags)
        bit 0, e
        jr nz, ch3_toneskip
        set 2, a
ch3_toneskip:        
        bit 1, e
        jr nz, ch3_noiseskip
        set 5, a              
ch3_noiseskip:        
        ld bc, 0xFFFD 
        ld d, 7
        out (c), d
        ld bc, 0xBFFD
        out (c), a
        
        ld a, (ch1.length)
        dec a
        jr nz, ch1_endskip:        
        ld (ch1.flags), a
        inc a
        ld hl, 0
        ld (ch1.volume), hl                        
        ld (ch1.volumei), hl
ch1_endskip:
        ld (ch1.length), a

        ld a, (ch2.length)
        dec a
        jr nz, ch2_endskip:        
        ld (ch2.flags), a
        inc a
        ld hl, 0
        ld (ch2.volume), hl                        
        ld (ch2.volumei), hl
ch2_endskip:
        ld (ch2.length), a

        ld a, (ch3.length)
        dec a
        jr nz, ch3_endskip:        
        ld (ch3.flags), a
        ld hl, 0
        ld (ch3.volume), hl                        
        ld (ch3.volumei), hl
ch3_endskip:
        ld (ch3.length), a
                       
        exx
        ex af, af'
        ei
        reti            ; Return from interrupt


playerpos:
        db 0,0
        
playerdone:
        db 0

level:
        dw 0
        
gems:
        dw 0        
                
        STRUCT SFX
pitch:  DW  ; Initial pitch
pitchi: DW  ; Pitch increment
volume: DW  ; Initial volume (*256)
volumei:DW  ; Volume increment
flags:  DB  ; Tone on, noise on, envelope on(?)
length: DB  ; Length in frames (50hz)
        ENDS
      
snd_test:
        SFX {
        2000,
        -710,
        15 * 256,
        -50,
        1,
        50
        } 

snd_exit:
        SFX {
        2000,
        -710,
        15 * 256,
        -50,
        1,
        50
        } 

snd_door:
        SFX {
        2000,
        -70,
        0,
        5*256,
        1,
        30
        } 

snd_monsterturn:
        SFX {
        400,
        50,
        5 * 256,
        200,
        3,
        4
        } 

snd_goop:
        SFX {
        8000,
        0,
        10 * 256,
        0,
        1,
        5
        } 

snd_dead:
        SFX {
        6400*10,
        -6400,
        15 * 256,
        -45,
        1,
        70
        } 

snd_gemget:
        SFX {
        50,
        -2,
        15 * 256,
        -170,
        1,
        4
        } 
snd_gemfall:
        SFX {
        50,
        0,
        15 * 256,
        -170,
        1,
        5
        } 
snd_rockfall:
        SFX {
        1024,
        128,
        15 * 256,
        -170,
        1,
        21
        } 
snd_rockfall_lite:
        SFX {
        1024,
        128,
        7 * 256,
        -60,
        1,
        16
        } 

snd_walk:
        SFX {
        0,
        0,
        7 * 256,
        170,
        2,
        5
        } 

ch1:    SFX{}        
ch2:    SFX{}        
ch3:    SFX{}        
               
        
        STRUCT LEVEL_DATA
tiles   TEXT 16*12
title   TEXT 32
gemgoal BYTE 1
gemgoaltext TEXT 16
reserved BLOCK 16-1
        ENDS        

maxlevel:
        dw 13

levels: 
        INCLUDE "map0.asm"
        INCLUDE "map4.asm"
        INCLUDE "map3.asm"
        INCLUDE "map.asm"
        INCLUDE "map2.asm"
        INCLUDE "map6.asm"
        INCLUDE "map7.asm"
        INCLUDE "map8.asm"
        INCLUDE "map9.asm"
        INCLUDE "map10.asm"
        INCLUDE "map11.asm"
        INCLUDE "map12.asm"
        INCLUDE "map13.asm"
        INCLUDE "map5.asm"
        
        LEVEL_DATA {   
        {         
        2,2,6,3,5,2,2,2,2,2,2,2,16,2,0,0,
        2,5,6,3,2,2,6,2,2,2,2,2,15,2,0,0,
        2,2,2,3,2,6,2,2,2,2,2,2,0,2,2,0,
        3,2,3,3,2,2,2,6,2,2,0,0,0,0,2,4,
        2,2,2,6,2,2,2,2,2,2,0,2,0,0,2,0,
        2,2,0,2,2,2,6,2,2,2,2,2,2,2,0,0,
        0,1,0,2,6,2,2,7,2,6,0,2,2,2,0,0,
        2,2,2,2,2,2,2,2,2,2,12,0,0,0,2,2,
        2,2,2,2,2,2,2,2,2,2,0,2,2,0,2,2,
        2,2,2,2,2,2,2,2,2,2,0,2,2,0,2,2,
        0,1,2,3,4,5,6,7,8,2,0,0,0,0,2,2,
        9,10,11,12,13,14,15,16,0,2,2,2,2,2,2,2 },
        {"Testlevel"},
        1,
        {"132"}
        }

tiles:
        BLOCK 32,0 	; empty tile
        INCBIN "tiles.dat"

        ; 0x00 0x00 = black      0x04 0x20 = green
        ; 0x01 0x08 = blue       0x05 0x28 = cyan
        ; 0x02 0x10 = red        0x06 0x30 = yellow
        ; 0x03 0x18 = magenta    0x07 0x38 = white
        ;      0x40 = bright          0x80 = blink
tilecolors:
        db 0x00, 0x00, 0x00, 0x00 ; 0 empty
        db 0x05, 0x05, 0x04, 0x04 ; 1 player
        db 0x10, 0x10, 0x10, 0x10 ; 2 ground
        db 0x57, 0x57, 0x57, 0x57 ; 3 bricks
        db 0x44, 0x44, 0x44, 0x44 ; 4 goo
        db 0x45, 0x05, 0x05, 0x45 ; 5 gem
        db 0x07, 0x07, 0x07, 0x07 ; 6 stone
        db 0x04, 0x04, 0x04, 0x04 ; 7 exit (closed)
        db 0x44, 0x44, 0x44, 0x44 ; 8 exit (open)
        db 0x07, 0x07, 0x07, 0x07 ; 9 falling stone
        db 0x07, 0x07, 0x02, 0x02 ; 10 splat stone
        db 0x03, 0x03, 0x03, 0x03 ; 11 people eater up
        db 0x03, 0x03, 0x03, 0x03 ; 12 people eater right
        db 0x03, 0x03, 0x03, 0x03 ; 13 people eater down
        db 0x03, 0x03, 0x03, 0x03 ; 14 people eater left
        db 0x0d, 0x0d, 0x0d, 0x0d ; 15 water
        db 0x07, 0x07, 0x0d, 0x0d ; 16 water source
        db 0x45, 0x05, 0x05, 0x45 ; 17 crystalizing goo

minitiles:
        BLOCK 8,0 	; empty tile
        INCBIN "minitiles.dat"

minitilecolors:
        db 0x00 ; 0 empty
        db 0x05 ; 1 player
        db 0x10 ; 2 ground
        db 0x57 ; 3 bricks
        db 0x44 ; 4 goo
        db 0x45 ; 5 gem
        db 0x07 ; 6 stone
        db 0x04 ; 7 exit (closed)
        db 0x44 ; 8 exit (open)
        db 0x07 ; 9 falling stone
        db 0x07 ; 10 splat stone
        db 0x03 ; 11 people eater up
        db 0x03 ; 12 people eater right
        db 0x03 ; 13 people eater down
        db 0x03 ; 14 people eater left
        db 0x0d ; 15 water
        db 0x07 ; 16 water source


helptext1:
        db "Collect gems to open the door.",0
helptext2:
        db "Gems needed:",0
helptext3:
        db "Press space to retry level.",0
helptext4:
        db "Move sideways to select level.",0
helptext5:
        db "Press space to start.",0

keyselect_scr:
        INCBIN "keyselect.scr.zx0"

        INCLUDE "dzx0_standard.asm"

        ORG $fc00
map:    LEVEL_DATA {}        
    	
        SAVESNA "main.sna", main
    	;SAVETAP "test.tap", $8000   ; Save the assembled program as a tap file
