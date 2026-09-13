        DEVICE ZXSPECTRUM48         ; Device setting for sjasmplus (.tap writing etc)
SCREEN  EQU $4000                   ; Location of screen
COLOR   EQU $5800                   ; Location of color array

        ORG $8000   
main:                ; Let's start our code at 32k
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

        call dirtymap
mainloop:
        ld hl, 8*1+6
        call dirtytile
        ld hl, 8*2+6
        call dirtytile
        ld a, 2
        out (0xfe), a

        ld hl, map+63
        ld bc, 0x0808
maploop:
        push hl
        push bc
        ld a, (hl)
        bit 7, a
        jr z, skipdraw
        and 0x7f ; clear top bit
        ld (hl), a
        ld l, a
        ld h, 0
        call drawtile
skipdraw:        
        pop bc
        pop hl
        dec hl
        dec b
        jr nz, maploop
        ld b, 8
        dec c
        jr nz, maploop
        
        ld a, 0
        out (0xfe), a
        
        halt

        jp mainloop

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
        ld b, 64
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

map:
        db 2,2,6,3,5,2,2,2
        db 2,5,6,3,2,2,6,2
        db 2,2,2,3,2,6,2,2
        db 3,2,3,3,2,2,2,6
        db 2,2,2,6,2,2,2,2
        db 2,2,0,2,2,2,6,2
        db 0,1,0,2,6,2,2,7
        db 2,2,2,2,2,2,2,2

tiles:
        BLOCK 32,0 	; empty tile
        INCBIN "tiles.dat"

        ; 0x00 0x00 = black      0x04 0x20 = green
        ; 0x01 0x08 = blue       0x05 0x28 = cyan
        ; 0x02 0x10 = red        0x06 0x30 = yellow
        ; 0x03 0x18 = magenta    0x07 0x38 = white
        ;      0x40 = bright          0x80 = blink
tilecolors:
        db 0x00, 0x00, 0x00, 0x00 ; empty
        db 0x05, 0x05, 0x04, 0x04 ; player
        db 0x10, 0x10, 0x10, 0x10 ; ground
        db 0x50, 0x50, 0x50, 0x50 ; bricks
        db 0x04, 0x04, 0x04, 0x04 ; goo
        db 0x45, 0x05, 0x05, 0x45 ; gem
        db 0x07, 0x07, 0x07, 0x07 ; stone
        db 0x04, 0x04, 0x04, 0x04 ; exit (closed)
        db 0x44, 0x44, 0x44, 0x44 ; exit (open)
            	
    	
        SAVESNA "main.sna", main
    	; SAVETAP "test.tap", $8000   ; Save the assembled program as a tap file