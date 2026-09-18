; Hungry Horace disassembly
; https://skoolkit.ca
;
; © 1982 Beam Software (Hungry Horace)
; © 2014-2022, 2025, 2026 Richard Dymond (this disassembly)
    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48
  org $6000

main:
; The game has just loaded
START:
  di                      ; Disable interrupts.
  ld a,($5c78)            ; Initialise the pseudo-random number address.
  ld l,a                  ;
  and $1f                 ;
  ld h,a                  ;
  ld a,(hl)               ;
  ld l,a                  ;
  and $1f                 ;
  ld h,a                  ;
  ld (RANDADDR),hl        ;
  ld hl,TPRESS            ; Initialise the 'T' pressed indicator to 'off' (bit
  ld (hl),$10             ; 4 set).
  ld hl,SOUND             ; Initialise the sound indicator to 'on'.
  ld (hl),$1f             ;
; This entry point is used by the routine at DEAD when a game has ended.
START_0:
  ld hl,$5800             ; INK 7: PAPER 7
  ld de,$5801             ;
  ld bc,$02ff             ;
  ld (hl),$3f             ;
  ldir                    ;
  ld hl,$4000             ; Clear the display file.
  ld de,$4001             ;
  ld bc,$17ff             ;
  ld (hl),$00             ;
  ldir                    ;
  ld hl,$5800             ; INK 0: PAPER 7
  ld de,$5801             ;
  ld bc,$02ff             ;
  ld (hl),$38             ;
  ldir                    ;
  ld a,$00                ; Signal demo mode.
  ld (GAMEMODE),a         ;
  ld hl,$008c             ; Initialise the title screen countdown timer.
  ld (TITLECT),hl         ;
  ld de,$40a0             ; Print 'HUNGRY' in big letters.
  ld hl,HUNGRY            ;
  ld bc,$00a0             ;
  call BIGWORD            ;
  ld de,$4880             ; Print 'HORACE' in big letters.
  ld hl,HORACE            ;
  ld bc,$00a0             ;
  call BIGWORD            ;
  ld a,(GAMEMODE)         ; Pick up the game mode indicator.
  push af                 ; Save it briefly.
  ld a,$01                ; Signal game mode (to force the copyright message to
  ld (GAMEMODE),a         ; be printed).
  ld hl,$50c0             ; This is the display file address for the copyright
                          ; message.
  call ATTRADDR           ; Set hl' to the corresponding attribute file address
                          ; (unnecessarily).
  ex de,hl                ; Transfer the display file address to de.
  ld hl,COPYRIGHT         ; Print 'Copyright © 1982 Beam Software' and 'PRESS
START_1:
  ld a,(hl)               ; ANY KEY TO START PLAY'.
  cp $ff                  ;
  jr z,START_2            ;
  inc hl                  ;
  call PRINTDIGIT_0       ;
  jr START_1              ;
START_2:
  pop af                  ; Restore the game mode indicator.
  ld (GAMEMODE),a         ;
; The following loop cycles the colour of the words 'HUNGRY HORACE' and plays a
; sound effect, either 140 times or until a key is pressed.
START_3:
  ld hl,$58a0             ; Change the colour of the words 'HUNGRY HORACE' on
  ld de,$58a1             ; the title screen.
  ld bc,$009f             ;
  ld a,(hl)               ;
  inc a                   ;
  and $3f                 ;
  or $38                  ;
  ld (hl),a               ;
  ldir                    ;
  ld hl,$5980             ;
  ld de,$5981             ;
  ld bc,$009f             ;
  ld a,(hl)               ;
  inc a                   ;
  and $3f                 ;
  or $38                  ;
  ld (hl),a               ;
  ldir                    ;
  call TITLESOUND         ; Make the title screen sound effect.
  ld hl,(TITLECT)         ; Decrement the title screen countdown timer.
  dec hl                  ;
  ld (TITLECT),hl         ;
  ld a,h                  ; Is it zero now?
  or l                    ;
  jr z,START_4            ; Jump if so.
  ld a,$00                ; Read the keyboard.
  in a,($fe)              ;
  and $1f                 ; Is a key being pressed?
  cp $1f                  ;
  jr z,START_3            ; Jump if not.
  ld a,$01                ; Signal that a game (not demo mode) has started.
  ld (GAMEMODE),a         ;
  jr START_4              ; This instruction is redundant.
START_4:
  ld a,$ff                ; Initialise the maze number.
  ld (MAZENO),a           ;
  ld a,$08                ; Initialise the game speed parameter.
  ld (SPEED),a            ;
  ld a,$03                ; Initialise the number of lives remaining.
  ld (LIVES),a            ;
  ld hl,$0000             ; Initialise the score.
  ld (SCORE),hl           ;
  ld a,$00                ; Initialise the active guard counter.
  ld (GUARDCOUNT),a       ;
  ld (ELIFEIND),a         ; Initialise the extra life indicator.
  call INITGCT            ; Initialise the guard countdown timers.
; This entry point is used when moving from one maze to the next by the
; routines at DEAD (in demo mode) and NEXTMAZE (in game mode).
START_5:
  ld a,(MAZENO)           ; Pick up the current maze number (0-3).
  inc a                   ; Is it 0, 1 or 2?
  and $fc                 ;
  jr z,START_7            ; Jump if so.
  ld a,(SPEED)            ; Decrement the game speed parameter (unless it's
  dec a                   ; already 1). This increases the speed of the game.
  jr nz,START_6           ;
  ld a,$01                ;
START_6:
  ld (SPEED),a            ;
START_7:
  ld a,(MAZENO)           ; Increment the maze number.
  inc a                   ;
  and $03                 ;
  ld (MAZENO),a           ;
  ld a,(MAZENO)           ; Pick up the current maze number.
  cp $00                  ; Is it maze 1?
  jr nz,START_8           ; Jump if not.
  ld hl,MAZE1DATA         ; Copy the tunnel offset and bell, initial guard and
  call CPMAZEDATA         ; entrance locations for maze 1 to CMTUNNEL.
  ld hl,MAZE1             ; Point hl at the layout data for maze 1.
  jr START_11
START_8:
  cp $01                  ; Is it maze 2?
  jr nz,START_9           ; Jump if not.
  ld hl,MAZE2DATA         ; Copy the tunnel offset and bell, initial guard and
  call CPMAZEDATA         ; entrance locations for maze 2 to CMTUNNEL.
  ld hl,MAZE2             ; Point hl at the layout data for maze 2.
  jr START_11
START_9:
  cp $02                  ; Is it maze 3?
  jr nz,START_10          ; Jump if not.
  ld hl,MAZE3DATA         ; Copy the tunnel offset and bell, initial guard and
  call CPMAZEDATA         ; entrance locations for maze 3 to CMTUNNEL.
  ld hl,MAZE3             ; Point hl at the layout data for maze 3.
  jr START_11
START_10:
  ld hl,MAZE4DATA         ; Copy the tunnel offset and bell, initial guard and
  call CPMAZEDATA         ; entrance locations for maze 4 to CMTUNNEL.
  ld hl,MAZE4             ; Point hl at the layout data for maze 4.
  jr START_11
START_11:
  ld de,$4000             ; Draw the current maze.
  ld bc,$0300             ;
  call DRAWMAZE           ;
  ld a,(GAMEMODE)         ; Pick up the game mode indicator.
  and a                   ; Is it demo mode?
  jr z,START_13           ; Jump if so.
  ld hl,$4000             ; This is the display file address for 'PASSES
                          ; SCORE       BEST'.
  call ATTRADDR           ; Set hl' to the corresponding attribute file address
                          ; (unnecessarily).
  ex de,hl                ; Transfer the display file address to de.
  ld hl,STATUS            ; Print 'PASSES   SCORE       BEST'.
START_12:
  ld a,(hl)               ;
  cp $ff                  ;
  jr z,START_17           ;
  inc hl                  ;
  call PRINTDIGIT_0       ;
  jr START_12             ;
START_13:
  ld a,$01                ; Signal game mode (to force the 'DEMO MODE' text to
  ld (GAMEMODE),a         ; be printed).
  ld hl,$4000             ; This is the display file address for 'DEMO MODE
                          ; PRESS ANY KEY TO PLAY'.
  call ATTRADDR           ; Set hl' to the corresponding attribute file address
                          ; (unnecessarily).
  ex de,hl                ; Transfer the display file address to de.
  ld hl,DEMOMODE          ; Print 'DEMO MODE  PRESS ANY KEY TO PLAY'.
START_14:
  ld a,(hl)               ;
  cp $ff                  ;
  jr z,START_15           ;
  inc hl                  ;
  call PRINTDIGIT_0       ;
  jr START_14             ;
START_15:
  ld a,$00                ; Restore the game mode indicator to demo mode.
  ld (GAMEMODE),a         ;
  ld hl,$5800             ; Make 'DEMO MODE' flash.
  ld b,$09                ;
START_16:
  ld a,(hl)               ;
  add a,$80               ;
  ld (hl),a               ;
  inc hl                  ;
  djnz START_16           ;
START_17:
  ld hl,(CMBELLLOC)       ; Copy the bell location to BELLLOC.
  ld (BELLLOC),hl         ;
  ld hl,$4007             ; This is the display file address for the number of
                          ; lives remaining.
  call ATTRADDR           ; Set hl' to the corresponding attribute file address
                          ; (unnecessarily).
  ld a,(LIVES)            ; Pick up the number of lives remaining.
  add a,"0"               ; Convert it to the ASCII code for the corresponding
                          ; digit.
  ex de,hl                ; Transfer the display file address to de.
  call PRINTDIGIT_0       ; Print the number of lives remaining.
  ld hl,$07d0             ; Initialise the lunch-drop countdown timer.
  ld (LUNCHCT),hl         ;
; This entry point is used by the routine at DEAD after Horace has lost a life.
START_18:
  ld hl,(BELLLOC)         ; Pick up the bell location.
  ld a,h                  ; Has Horace sounded the alarm?
  or l                    ;
  jr z,START_19           ; Jump if so.
  ld hl,(CMBELLLOC)       ; Reinitialise the bell location.
  ld (BELLLOC),hl         ;
START_19:
  ld b,$04                ; There are four guards.
START_20:
  push bc                 ; Copy the guard's buffer into the temporary location
  call COPYGUARD          ; (GUARDLOC).
  pop bc                  ;
  push bc                 ; Save the guard counter.
  sla b                   ; Point hl at one of the guard countdown timers at
  ld c,b                  ; GUARD1CT.
  ld b,$00                ;
  xor a                   ;
  ld hl,$6dae             ;
  sbc hl,bc               ;
  ld a,(hl)               ; Is this guard in play?
  inc hl                  ;
  or (hl)                 ;
  jr nz,START_21          ; Jump if not.
  ld hl,(CMINITGL)        ; Pick up the initial guard location for the current
                          ; maze.
  jr START_22
START_21:
  ld hl,(CMENTRANCE)      ; Pick up the bell location for the current maze.
START_22:
  ld (GUARDLOC),hl        ; Initialise the guard's current and new locations.
  ld (GUARDNLOC),hl       ;
  ld hl,GUARDBG           ; Clear the four maze background tiles in the
  ld c,$04                ; temporary guard buffer.
START_23:
  ld (hl),$3e             ;
  inc hl                  ;
  ld b,$08                ;
START_24:
  ld (hl),$00             ;
  inc hl                  ;
  djnz START_24           ;
  dec c                   ;
  jr nz,START_23          ;
  call UPDTGUARD          ; Copy the guard's buffer back to the original
                          ; location.
  pop bc                  ; Restore the guard counter to b.
  djnz START_20           ; Jump back to prepare the next guard.
  ld hl,(CMENTRANCE)      ; Pick up Horace's initial location for the current
                          ; maze.
  ld (HORACELOC),hl       ; Initialise Horace's current and new locations.
  ld (HORACENLOC),hl      ;
  ld a,$01                ; Initialise Horace's animation frame.
  ld (HORACEAF),a         ;
  ld a,(SPEED)            ; Initialise the sprite movement timer (using the
  ld (MVTIMER),a          ; value of the game speed parameter).
  ld hl,(SCORE)           ; Print the score and make a sound effect.
  call CHKEATEN_1         ;
  ld hl,(HISCORE)         ; Pick up the high score.
  ld de,$4000             ; Set de to the display file address for the high
  ex de,hl                ; score (in a roundabout way).
  ld bc,$001a             ;
  add hl,bc               ;
  ex de,hl                ;
  call PRINTSCORE         ; Print the high score.
  ld hl,$0000             ; Initialise the guard panic timer.
  ld (GUARDPT),hl         ;
  ld a,$39                ; Initialise Horace's attribute byte (INK 1: PAPER
  ld (HORACEATTR),a       ; 7).
; This routine continues into the main loop at MAINLOOP.

; Main loop
;
; The routine at START continues here.
MAINLOOP:
  call READKEYS           ; Read the keyboard and change Horace's sprite
                          ; accordingly.
  call MVSPRITES          ; Move Horace and the guards.
  call REDRAW             ; Redraw the tiles behind Horace and the guards if
                          ; they've moved.
  call CHKEATEN           ; Add to the score if Horace has eaten something.
  call DRAWGUARDS         ; Draw the guards.
  call CHKHIT             ; Check whether Horace has run into a guard.
  call DRAWHORACE         ; Draw Horace.
  call DRAWBELL           ; Draw the bell and check whether Horace has sounded
                          ; the alarm.
  call CHKLUNCH           ; Check whether a guard should drop his lunch.
  call DECGTIMERS         ; Decrement the guard countdown timers.
  call TOGGLESND          ; Toggle the sound on/off if 'T' is pressed.
  call RINGBELL           ; Ring the bell if necessary.
  jr MAINLOOP             ; Jump back to the start of the main loop.

; Read the keyboard and update Horace's sprite accordingly
;
; Called from the main loop at MAINLOOP.
READKEYS:
  ld a,(TUNNELTIME)       ; Pick up the tunnel timer.
  and a                   ; Is Horace in a tunnel at the moment?
  ret nz                  ; Return if so.
  ld a,$ff                ; Initialise the direction keypress to 'no key'.
  ld (DIRKEY),a           ;
  ld a,(GAMEMODE)         ; Pick up the game mode indicator.
  and a                   ; Is it demo mode?
  jr nz,READKEYS_6        ; Jump if not.
  ld a,$00                ; Read the keyboard.
  in a,($fe)              ;
  and $1f                 ; Is a key being pressed?
  cp $1f                  ;
  jr z,READKEYS_0         ; Jump if not.
  pop hl                  ; Drop the return address from the stack.
  jp DEAD_8               ; Cycle the screen colours briefly and return to the
                          ; title screen.
; It's demo mode. Time to figure out where to move Horace next.
READKEYS_0:
  ld b,$04                ; Initialise b (the direction indicator) for the loop
                          ; that follows.
READKEYS_1:
  dec b                   ; b=3 (left), 2 (down), 1 (right) or 0 (up).
  ld hl,(HORACELOC)       ; Pick up Horace's current location.
  ld c,$00                ; Initialise c to 0; this is the direction
                          ; probability parameter.
  push bc                 ; Save the direction indicator briefly.
  ld a,b                  ; Copy the direction indicator to a.
  call CHKTILES           ; Check the tiles next to Horace in that direction.
  pop bc                  ; Restore the direction indicator to b.
  cp $02                  ; Is there a wall or the maze exit or entrance in
                          ; that direction?
  jp nc,READKEYS_3        ; Jump if so with c=0: that direction is blocked.
  call RANDOM             ; Set c to a pseudo-random number between 25 and 56;
  and $1f                 ; the higher this value, the more likely Horace will
  add a,$19               ; turn 90 degrees in the direction indicated by b
  ld c,a                  ; when his path is blocked.
  ld a,(HORACEAF)         ; Pick up Horace's animation frame.
  cp b                    ; Is it equal to the current value of the direction
                          ; indicator?
  jr nz,READKEYS_2        ; Jump if not.
  ld a,$28                ; Now c holds a pseudo-random number between 65 and
  add a,c                 ; 96; this value ensures that Horace will keep moving
  ld c,a                  ; in the same direction if he can.
  jr READKEYS_3
READKEYS_2:
  add a,$02               ; Add 2 to Horace's animation frame; this has the
  and $03                 ; effect of toggling his direction between up/down
                          ; and left/right.
  cp b                    ; Is it equal to the current value of the direction
                          ; indicator now?
  jr nz,READKEYS_3        ; Jump if not.
  ld a,$f6                ; Now c holds a pseudo-random number between 15 and
  add a,c                 ; 46; the higher this value, the more likely Horace
  ld c,a                  ; will turn round 180 degrees when his path is
                          ; blocked.
READKEYS_3:
  push bc                 ; Save the direction indicator briefly.
  ld hl,TEMPDPP           ; Point hl at one of the four slots at TEMPDPP.
  ld c,b                  ;
  ld b,$00                ;
  add hl,bc               ;
  pop bc                  ; Restore the direction indicator to b.
  ld a,c                  ; Save the direction probability parameter in the
  ld (hl),a               ; appropriate slot.
  inc b                   ; Have we considered every direction yet?
  dec b                   ;
  jr nz,READKEYS_1        ; Jump back if not.
; Having computed a direction probability parameter for each of the four slots
; at TEMPDPP, we now use those parameters to determine Horace's next animation
; frame (and therefore direction of travel).
  xor a                   ; Compute in c the index of the slot that holds the
  ld hl,$6db6             ; largest number (0, 1, 2 or 3).
  ld b,$04                ;
READKEYS_4:
  dec b                   ;
  dec hl                  ;
  cp (hl)                 ;
  jr nc,READKEYS_5        ;
  ld a,(hl)               ;
  ld c,b                  ;
READKEYS_5:
  inc b                   ;
  dec b                   ;
  jr nz,READKEYS_4        ;
  ld a,c                  ; Update Horace's animation frame to this index
  ld (HORACEAF),a         ; value.
  ret
; A game is in progress.
READKEYS_6:
  ld a,$fb                ; Read keys Q-W-E-R-T.
  in a,($fe)              ;
  and $01                 ; Is 'Q' (up) being pressed?
  jr z,READKEYS_7         ; Jump if so.
  ld a,$f7                ; Read keys 1-2-3-4-5.
  in a,($fe)              ;
  and $08                 ; Is '4' (up) being pressed?
  jr nz,READKEYS_8        ; Jump if not.
READKEYS_7:
  ld a,$00                ; Signal: 'up' key pressed.
  ld (DIRKEY),a           ;
  jr READKEYS_14
READKEYS_8:
  ld a,$fe                ; Read keys SHIFT-Z-X-C-V.
  in a,($fe)              ;
  and $02                 ; Is 'Z' (down) being pressed?
  jr z,READKEYS_9         ; Jump if so.
  ld a,$f7                ; Read keys 1-2-3-4-5.
  in a,($fe)              ; Is '3' (down) being pressed?
  and $04                 ; Jump if not.
  jr nz,READKEYS_10
READKEYS_9:
  ld a,$02                ; Signal: 'down' key pressed.
  ld (DIRKEY),a           ;
  jr READKEYS_14
READKEYS_10:
  ld a,$df                ; Read keys Y-U-I-O-P.
  in a,($fe)              ;
  bit 0,a                 ; Is 'P' (right) being pressed?
  jr z,READKEYS_11        ; Jump if so.
  ld a,$f7                ; Read keys 1-2-3-4-5.
  in a,($fe)              ;
  and $02                 ; Is '2' (right) being pressed?
  jr nz,READKEYS_12       ; Jump if not.
READKEYS_11:
  ld a,$01                ; Signal: 'right' key pressed.
  ld (DIRKEY),a           ;
  jr READKEYS_14
READKEYS_12:
  ld a,$df                ; Read keys Y-U-I-O-P.
  in a,($fe)              ;
  bit 2,a                 ; Is 'I' (left) being pressed?
  jr z,READKEYS_13        ; Jump if so.
  ld a,$f7                ; Read keys 1-2-3-4-5.
  in a,($fe)              ;
  and $01                 ; Is '1' (left) being pressed?
  jr nz,READKEYS_15       ; Jump if not.
READKEYS_13:
  ld a,$03                ; Signal: 'left' key pressed.
  ld (DIRKEY),a           ;
READKEYS_14:
  ld hl,(HORACELOC)       ; Pick up Horace's current location.
  call CHKTILES           ; Check the tiles in front of Horace.
  cp $03                  ; Is Horace facing a wall?
  jr nz,READKEYS_15       ; Jump if not.
  ld a,$ff                ; Signal: no key pressed (Horace will not respond to
  ld (DIRKEY),a           ; the keypress).
READKEYS_15:
  ld a,(DIRKEY)           ; Pick up the direction keypress indicator.
  cp $ff                  ; Was a direction key pressed?
  ret z                   ; Return if not.
  ld (HORACEAF),a         ; Otherwise update Horace's animation frame
                          ; accordingly.
  ret

; Move Horace and the guards
;
; Called from the main loop at MAINLOOP.
MVSPRITES:
  ld a,(MVTIMER)          ; Decrement the sprite movement timer.
  dec a                   ;
  ld (MVTIMER),a          ;
  ret nz                  ; Return unless it's zero.
  ld a,(SPEED)            ; Reset the sprite movement timer to the value of the
  ld (MVTIMER),a          ; game speed parameter.
  ld a,(TUNNELTIME)       ; Pick up the tunnel timer.
  and a                   ; Is Horace in a tunnel at the moment?
  jr nz,MVSPRITES_10      ; Jump if so.
  ld a,(HORACEAF)         ; Pick up Horace's animation frame.
  ld hl,(HORACELOC)       ; Pick up Horace's current location.
  call CHKTILES           ; Check the tiles in front of Horace.
  cp $00                  ; Is there anything in front of Horace?
  jr z,MVSPRITES_7        ; Jump if not.
  cp $01                  ; Is Horace facing a tunnel entrance?
  jr z,MVSPRITES_0        ; Jump if so.
  cp $02                  ; Is Horace facing a maze exit or entrance?
  jr nz,MVSPRITES_9       ; Jump if not.
  ld a,(HORACEAF)         ; Pick up Horace's animation frame.
  cp $01                  ; Is Horace facing right?
  jp z,NEXTMAZE           ; Jump if so (Horace is leaving the maze).
  jr MVSPRITES_9
; Horace is about to enter a tunnel.
MVSPRITES_0:
  ld a,$5a                ; Initialise the tunnel timer.
  ld (TUNNELTIME),a       ;
  ld bc,(CMTUNNEL)        ; Pick up the tunnel offset for the current maze.
  ld hl,(HORACELOC)       ; Pick up Horace's location.
  ld a,(HORACEAF)         ; Pick up Horace's animation frame.
  and a                   ; Is Horace going up?
  jr z,MVSPRITES_1        ; Jump if so.
  sbc hl,bc               ; Subtract the tunnel offset from Horace's location.
  jr MVSPRITES_2
MVSPRITES_1:
  add hl,bc               ; Add the tunnel offset to Horace's location.
MVSPRITES_2:
  push hl                 ; Save hl (which holds Horace's new location)
                          ; temporarily.
  ld hl,SOUND             ; Pick up the sound on/off indicator.
  ld c,$10                ; Initialise c for the loop that follows.
MVSPRITES_3:
  push bc                 ; Save the loop counter (unnecessarily).
  ld b,c                  ; Set b and e equal to 8*c. This value determines the
  sla b                   ; pitch.
  sla b                   ;
  sla b                   ;
  ld e,b                  ;
  ld d,$08                ; This value determines the duration.
MVSPRITES_4:
  ld b,e                  ; Produce a sound (if the sound on/off indicator is
  ld a,$1f                ; on) with pitch and duration determined by e and d.
  and (hl)                ;
  out ($fe),a             ;
MVSPRITES_5:
  djnz MVSPRITES_5        ;
  ld a,$07                ;
  out ($fe),a             ;
  ld b,e                  ;
MVSPRITES_6:
  djnz MVSPRITES_6        ;
  dec d                   ;
  jr nz,MVSPRITES_4       ;
  pop bc                  ; Restore the loop counter to c (unnecessarily).
  dec c                   ; Finished yet?
  jr nz,MVSPRITES_3       ; Jump back if not.
  pop hl                  ; Restore Horace's new location to hl.
  jr MVSPRITES_8
; There's nothing in front of Horace, so he can move one space forward.
MVSPRITES_7:
  ld hl,(HORACELOC)       ; Pick up Horace's current location.
  ld a,(HORACEAF)         ; Pick up Horace's animation frame.
  call INFRONT            ; Get the location of the spot one space in front of
                          ; Horace.
MVSPRITES_8:
  ld (HORACENLOC),hl      ; Update Horace's location.
  jr MVSPRITES_10
; Horace is facing a wall or the maze entrance, and so cannot move forward.
MVSPRITES_9:
  ld hl,(HORACELOC)       ; Pick up Horace's current location.
  ld (HORACENLOC),hl      ; Set Horace's new location.
; Now it's time to move the guards.
MVSPRITES_10:
  ld hl,GUARD1CT          ; Point hl at the first of the guard countdown
                          ; timers.
  ld b,$04                ; There are four guards to consider.
MVSPRITES_11:
  push bc                 ; Save the guard counter.
  ld a,(hl)               ; Set the zero flag if this guard is in play.
  inc hl                  ;
  or (hl)                 ;
  inc hl                  ; Point hl at the next guard's countdown timer.
  push hl                 ; Save the guard countdown timer pointer.
  jr nz,MVSPRITES_12      ; Jump if this guard is not in play at the moment.
  call COPYGUARD          ; Copy the guard's buffer into the temporary location
                          ; (GUARDLOC).
  call MVGUARD            ; Move the guard.
  call UPDTGUARD          ; Copy the guard's buffer back to the original
                          ; location.
MVSPRITES_12:
  pop hl                  ; Restore the guard countdown timer pointer to hl.
  pop bc                  ; Restore the guard counter to b.
  djnz MVSPRITES_11       ; Jump back to handle the next guard.
  ret

; Move a guard
;
; Used by the routine at MVSPRITES.
MVGUARD:
  ld a,(GUARDDELAY)       ; Pick up the guard's return delay counter.
  and a                   ; Has this guard been thrown out of the park?
  ret nz                  ; Return if so.
  ld hl,(HORACELOC)       ; Pick up Horace's current location.
  rr h                    ; Now h=0, 1 or 2, indicating which third of the
  rr h                    ; screen the top row of Horace's sprite is in.
  rr h                    ;
  ld b,$05                ; Move bits 5-7 of l down to bits 0-2, and bits 0-2
MVGUARD_0:
  rr h                    ; of h into bits 3-5 of l.
  rr l                    ;
  djnz MVGUARD_0          ;
  ld a,l                  ; Now a=Horace's screen y-coordinate (0-22).
  and $1f                 ;
  ld hl,(HORACELOC)       ; Pick up Horace's current location.
  ld h,a                  ; h=Horace's screen y-coordinate (0-22).
  ld a,l                  ; Now l=Horace's screen x-coordinate (0-30).
  and $1f                 ;
  ld l,a                  ;
  ld (TEMPHXY),hl         ; Save Horace's screen x- and y-coordinates
                          ; temporarily.
  ld hl,(GUARDLOC)        ; Compute the guard's screen x- and y-coordinates.
  rr h                    ;
  rr h                    ;
  rr h                    ;
  ld b,$05                ;
MVGUARD_1:
  rr h                    ;
  rr l                    ;
  djnz MVGUARD_1          ;
  ld a,l                  ;
  and $1f                 ;
  ld hl,(GUARDLOC)        ;
  ld h,a                  ;
  ld a,l                  ;
  and $1f                 ;
  ld l,a                  ;
  ld (TEMPXY),hl          ; Save the guard's screen x- and y-coordinates
                          ; temporarily.
  ld b,$04                ; Initialise b (the direction indicator) for the loop
                          ; that follows.
; Four passes are made through the following loop, one for each direction the
; guard might go: left, down, right, or up.
MVGUARD_2:
  dec b                   ; b=3 (left), 2 (down), 1 (right) or 0 (up).
  ld hl,(GUARDLOC)        ; Pick up the guard's current location.
  ld c,$00                ; Initialise c to 0; this is the direction
                          ; probability parameter.
  push bc                 ; Save the direction indicator briefly.
  ld a,b                  ; Copy the direction indicator to a.
  call CHKTILES           ; Check the tiles next to the guard in that
                          ; direction.
  pop bc                  ; Restore the direction indicator to b.
  cp $02                  ; Is there a wall or the maze exit or entrance in
                          ; that direction?
  jp nc,MVGUARD_14        ; Jump if so with c=0: that direction is blocked.
  ld c,$19                ; c=25; this value determines the base probability
                          ; that the guard will turn 90 degrees in the
                          ; direction indicated by b when his path is blocked.
  ld a,(GUARDAF)          ; Pick up the guard's animation frame.
  cp b                    ; Is it equal to the current value of the direction
                          ; indicator?
  jr nz,MVGUARD_3         ; Jump if not.
  ld a,$28                ; c=65; this value ensures that the guard will keep
  add a,c                 ; moving in the same direction if he can.
  ld c,a                  ;
  jr MVGUARD_5
MVGUARD_3:
  add a,$02               ; Add 2 to the guard's current animation frame; this
  and $03                 ; has the effect of toggling his direction between
                          ; up/down and left/right.
  cp b                    ; Is it equal to the current value of the direction
                          ; indicator now?
  jr nz,MVGUARD_4         ; Jump if not.
  ld a,$f6                ; c=15; this value determines the probability that
  add a,c                 ; the guard will turn round 180 degrees when his path
  ld c,a                  ; is blocked.
  jr MVGUARD_5
MVGUARD_4:
  ld hl,($5c78)           ; Increment the two least significant bytes of the
  inc hl                  ; system variable FRAMES, and copy the value to hl.
  ld ($5c78),hl           ;
  ld a,h                  ; Use this value to generate a pseudo-random number
  and $0f                 ; between 0 and 31.
  ld h,a                  ;
  ld a,(hl)               ;
  and $1f                 ;
  add a,c                 ; Add this to c, giving a number between 25 and 56;
  ld c,a                  ; the higher this value, the more likely the guard
                          ; will turn 90 degrees in the direction indicated by
                          ; b when his path is blocked.
MVGUARD_5:
  ld a,b                  ; Copy the direction indicator to a.
  cp $03                  ; Set the zero flag if we're considering 'left' at
                          ; the moment.
  ld a,(TEMPVAR)          ; Pick up the value of the redundant variable at
                          ; TEMPVAR.
  jr nz,MVGUARD_6         ; Jump if we're considering 'right', 'up' or 'down'
                          ; at the moment.
  dec a                   ; Decrement the redundant variable at TEMPVAR.
  ld (TEMPVAR),a          ;
MVGUARD_6:
  and a                   ; This instruction is redundant.
  ld a,b                  ; Copy the direction indicator to a.
  cp $00                  ; Are we considering 'up' at the moment?
  jr nz,MVGUARD_7         ; Jump if not.
  ld a,(SPEED)            ; Reset the redundant variable at TEMPVAR to the
  ld (TEMPVAR),a          ; value of the game speed parameter.
MVGUARD_7:
  ld a,b                  ; Copy the direction indicator to a.
  cp $00                  ; Are we considering 'up' at the moment?
  jr nz,MVGUARD_8         ; Jump if not.
  ld hl,(TEMPXY)          ; Pick up the guard's screen x- and y-coordinates.
  ld a,h                  ; a=guard's screen y-coordinate.
  ld hl,(TEMPHXY)         ; Pick up Horace's screen x- and y-coordinates.
  sub h                   ; Is Horace's y-coordinate greater than the guard's?
  jr c,MVGUARD_14         ; Jump if so.
  jr MVGUARD_11           ; Otherwise jump to increase the probability that the
                          ; guard will move up (towards Horace).
MVGUARD_8:
  cp $01                  ; Are we considering 'right' at the moment?
  jr nz,MVGUARD_9         ; Jump if not.
  ld hl,(TEMPHXY)         ; Pick up Horace's screen x- and y-coordinates.
  ld a,l                  ; a=Horace's screen x-coordinate.
  ld hl,(TEMPXY)          ; Pick up the guard's screen x- and y-coordinates.
  sub l                   ; Is the guard's x-coordinate greater than Horace's?
  jr c,MVGUARD_14         ; Jump if so.
  jr MVGUARD_11           ; Otherwise jump to increase the probability that the
                          ; guard will move right (towards Horace).
MVGUARD_9:
  cp $02                  ; Are we considering 'down' at the moment?
  jr nz,MVGUARD_10        ; Jump if not.
  ld hl,(TEMPHXY)         ; Pick up Horace's screen x- and y-coordinates.
  ld a,h                  ; a=Horace's screen y-coordinate.
  ld hl,(TEMPXY)          ; Pick up the guard's screen x- and y-coordinates.
  sub h                   ; Is the guard's y-coordinate greater than Horace's?
  jr c,MVGUARD_14         ; Jump if so.
  jr MVGUARD_11           ; Otherwise jump to increase the probability that the
                          ; guard will move down (towards Horace).
MVGUARD_10:
  ld hl,(TEMPXY)          ; Pick up the guard's screen x- and y-coordinates.
  ld a,l                  ; a=guard's screen x-coordinate.
  ld hl,(TEMPHXY)         ; Pick up Horace's screen x- and y-coordinates.
  sub l                   ; Is Horace's x-coordinate greater than the guard's?
  jr c,MVGUARD_14         ; Jump if so.
MVGUARD_11:
  and a                   ; This instruction is redundant.
  add a,$0a               ; Add 10 to a; the higher the value a holds now, the
                          ; more likely the guard will move in the direction
                          ; indicated by b (towards Horace).
  push af                 ; Save this probability modifier briefly.
  push hl                 ; Save hl (unnecessarily).
  ld hl,(GUARDPT)         ; Pick up the guard panic timer.
  ld a,h                  ; Set the zero flag unless the guards are panicking.
  or l                    ;
  pop hl                  ; Restore hl.
  jr z,MVGUARD_12         ; Jump unless the guards are panicking.
  pop af                  ; Restore the probability modifier to a.
  neg                     ; Negate a, making it less likely that the guard will
                          ; move in the direction indicated by b (towards
                          ; Horace).
  jr MVGUARD_13
MVGUARD_12:
  pop af                  ; Restore the probability modifier to a.
MVGUARD_13:
  add a,c                 ; Now c holds the probability parameter for the
  ld c,a                  ; direction indicated by b.
MVGUARD_14:
  push bc                 ; Save the direction indicator briefly.
  ld hl,TEMPDPP           ; Point hl at one of the four slots at TEMPDPP.
  ld c,b                  ;
  ld b,$00                ;
  add hl,bc               ;
  pop bc                  ; Restore the direction indicator to b.
  ld a,c                  ; Save the direction probability parameter in the
  ld (hl),a               ; appropriate slot.
  inc b                   ; Have we considered every direction yet?
  dec b                   ;
  jp nz,MVGUARD_2         ; Jump back if not.
; Having computed a direction probability parameter for each of the four slots
; at TEMPDPP, we now use those values to determine the guard's next animation
; frame (and therefore direction of travel).
  xor a                   ; Compute in c the index of the slot that holds the
  ld hl,$6db6             ; largest number (0, 1, 2 or 3).
  ld b,$04                ;
MVGUARD_15:
  dec b                   ;
  dec hl                  ;
  cp (hl)                 ;
  jr nc,MVGUARD_16        ;
  ld a,(hl)               ;
  ld c,b                  ;
MVGUARD_16:
  inc b                   ;
  dec b                   ;
  jr nz,MVGUARD_15        ;
  ld a,c                  ; Update the guard's animation frame to this index
  ld (GUARDAF),a          ; value.
  ld a,(GUARDAF)          ; Pick up the guard's animation frame.
  ld hl,(GUARDLOC)        ; Pick up the guard's current location.
  call CHKTILES           ; Check the tiles in front of the guard.
  cp $00                  ; Is there anything in front of the guard?
  jr z,MVGUARD_19         ; Jump if not.
  cp $01                  ; Is the guard facing a tunnel entrance?
  jr nz,MVGUARD_21        ; Jump if not. (This jump is never made.)
; The guard is about to enter a tunnel.
  ld bc,(CMTUNNEL)        ; Pick up the the tunnel offset.
  ld a,(GUARDAF)          ; Pick up the guard's animation frame.
  and a                   ; Is it 0 (going up)?
  jr z,MVGUARD_17         ; Jump if so.
  sbc hl,bc               ; Subtract the tunnel offset from the guard's current
                          ; location.
  jr MVGUARD_18
MVGUARD_17:
  add hl,bc               ; Add the tunnel offset to the guard's current
                          ; location.
MVGUARD_18:
  jr MVGUARD_20
MVGUARD_19:
  ld hl,(GUARDLOC)        ; Pick up the guard's current location.
  ld a,(GUARDAF)          ; Pick up the guard's animation frame.
  call INFRONT            ; Compute the guard's new location.
MVGUARD_20:
  ld (GUARDNLOC),hl       ; Update the guard's location.
  ret
; The guard has been left facing a wall or the maze entrance or exit (so he
; cannot move). This never happens, so the following code is never executed.
MVGUARD_21:
  ld hl,(GUARDLOC)        ; Pick up the guard's current location.
  ld (GUARDNLOC),hl       ; Set the guard's new location.
  ret

; Redraw the tiles behind Horace and the guards if they've moved
;
; Called from the main loop at MAINLOOP.
REDRAW:
  ld hl,(HORACENLOC)      ; Pick up Horace's new location.
  ld de,(HORACELOC)       ; Pick up Horace's current location.
  xor a                   ; Clear the carry flag.
  sbc hl,de               ; Subtract Horace's current location from his new
                          ; location.
  ld a,h                  ; Has Horace moved?
  or l                    ;
  jr z,REDRAW_0           ; Jump if not.
  ld hl,(HORACELOC)       ; Pick up Horace's current location.
  ld de,BLANK             ; Point de at the graphic data for the blank sprite.
  call ATTRADDR           ; Set hl' to the attribute file address for Horace's
                          ; location.
  ld c,$3e                ; This is the attribute byte for the blank sprite
                          ; (INK 6: PAPER 7).
  call DRAWSPRITE         ; Draw the blank sprite over Horace's current
                          ; location.
; Now consider the guards.
REDRAW_0:
  ld hl,GUARD4CT          ; Point hl at the last of the guard countdown timers.
  ld b,$01                ; b will count the guards: 1, 2, 3 and 4.
REDRAW_1:
  push bc                 ; Save the guard counter.
  ld a,(hl)               ; Set the zero flag if this guard is in play.
  inc hl                  ;
  or (hl)                 ;
  dec hl                  ; Point hl at the next guard's countdown timer.
  dec hl                  ;
  dec hl                  ;
  push hl                 ; Save the guard countdown timer pointer briefly.
  jr nz,REDRAW_2          ; Jump if this guard is not in play yet.
  call COPYGUARD          ; Copy the guard's buffer to the temporary location
                          ; (GUARDLOC).
  call REDRAWG            ; Redraw the tiles behind the guard if he's moved.
  call UPDTGUARD          ; Copy the guard's buffer back to its original
                          ; location.
REDRAW_2:
  pop hl                  ; Restore the guard countdown timer pointer to hl.
  pop bc                  ; Restore the guard counter to b.
  inc b                   ; Next guard.
  ld a,b                  ; Copy the guard counter to a.
  cp $05                  ; Have we done all four guards yet?
  jr nz,REDRAW_1          ; If not, jump back to do the next one.
  ret

; Redraw the tiles behind a guard after he's moved
;
; Used by the routine at REDRAW.
REDRAWG:
  ld hl,(GUARDNLOC)       ; Pick up the guard's new location.
  ld de,(GUARDLOC)        ; Pick up the guard's current location.
  xor a                   ; Clear the carry flag.
  sbc hl,de               ; Subtract the guard's current location from his new
                          ; location.
  ld a,h                  ; Has the guard moved?
  or l                    ;
  ret z                   ; Return if not.
; This entry point is used by the routines at CHKHIT (when the guards have been
; thrown out of the park) and DEAD (after Horace has lost a life).
REDRAWG_0:
  ld hl,(GUARDLOC)        ; Pick up the guard's current location.
  ld bc,$4000             ; Set hl to the corresponding display file address.
  add hl,bc               ;
  call ATTRADDR           ; Set hl' to the corresponding attribute file
                          ; address.
  ld de,GUARDBG           ; Point de at the first of the maze background tiles
                          ; in the guard's buffer.
  ld a,(de)               ; Pick up the attribute byte of the first maze
                          ; background tile.
  inc de                  ; Point de at the graphic data for the first maze
                          ; background tile.
  ld c,a                  ; Copy the attribute byte to c.
  call PRINTTILE          ; Draw the first (top-left) maze background tile.
  ld a,(de)               ; Pick up the attribute byte of the second maze
                          ; background tile.
  inc de                  ; Point de at the graphic data for the second maze
                          ; background tile.
  ld c,a                  ; Copy the attribute byte to c.
  call PRINTTILE          ; Draw the second (top-right) maze background tile.
  ld a,l                  ; Point hl at the third tile on-screen.
  add a,$1e               ;
  ld l,a                  ;
  jr nc,REDRAWG_1         ;
  ld a,h                  ;
  add a,$08               ;
  ld h,a                  ;
REDRAWG_1:
  ld a,(de)               ; Pick up the attribute byte of the third maze
                          ; background tile.
  inc de                  ; Point de at the graphic data for the third maze
                          ; background tile.
  ld c,a                  ; Copy the attribute byte to c.
  call ATTRADDR           ; Set hl' to the appropriate attribute file address.
  call PRINTTILE          ; Draw the third (bottom-left) maze background tile.
  ld a,(de)               ; Pick up the attribute byte of the fourth maze
                          ; background tile.
  inc de                  ; Point de at the graphic data for the fourth maze
                          ; background tile.
  ld c,a                  ; Copy the attribute byte to c.
  call PRINTTILE          ; Draw the fourth (bottom-right) maze background
                          ; tile.
  ld hl,(GUARDNLOC)       ; Pick up the guard's new location.
  call CPMAZEBG           ; Copy the maze backround tiles at this location into
                          ; the guard's buffer.
  ret

; Add to the score if Horace has eaten something
;
; Called from the main loop at MAINLOOP.
CHKEATEN:
  ld a,(TUNNELTIME)       ; Pick up the tunnel timer.
  and a                   ; Is Horace in a tunnel?
  ret nz                  ; Return if so.
  ld hl,(HORACENLOC)      ; Pick up Horace's new location.
  call CHKATTRS           ; Check the attribute bytes at this location.
  ret z                   ; Return if there's nothing to eat there.
  cp $3c                  ; Has Horace run into a flower?
  jr nz,CHKEATEN_0        ; Jump if not.
  ld hl,(SCORE)           ; Add 10 to the score (Horace has eaten a flower).
  ld bc,$000a             ;
  add hl,bc               ;
  ld (SCORE),hl           ;
  jr CHKEATEN_1
CHKEATEN_0:
  ld hl,(SCORE)           ; Add 50 to the score (Horace has eaten a cherry or
  ld bc,$0032             ; strawberry).
  add hl,bc               ;
  ld (SCORE),hl           ;
; This entry point is used by the routines at START (when initialising a maze),
; CHKHIT (when Horace has thrown the guards out of the park) and DRAWBELL (when
; Horace has sounded the alarm).
CHKEATEN_1:
  ld de,$4000             ; Set de to the display file address for the score
  ex de,hl                ; (in a roundabout way).
  ld bc,$000f             ;
  add hl,bc               ;
  ex de,hl                ;
  call PRINTSCORE         ; Print the score.
  ld hl,(SCORE)           ; Pick up the current score.
  xor a                   ; Clear the carry flag and set a=0.
  ld bc,$2710             ; Perform trial subtractions of 10000 from the score.
CHKEATEN_2:
  inc a                   ;
  sbc hl,bc               ;
  jr nc,CHKEATEN_2        ;
  inc a                   ; This should be dec a.
  ld b,a                  ; Now b=INT(Score/10000)+2.
  ld a,(ELIFEIND)         ; Pick up the extra life indicator.
  cp b                    ; Is it time to award an extra life?
  jr z,CHKEATEN_3         ; Jump if not.
  ld a,b                  ; Update the extra life indicator.
  ld (ELIFEIND),a         ;
  ld a,(LIVES)            ; Increment the number of lives.
  inc a                   ;
  ld (LIVES),a            ;
  ld hl,$4007             ; This is the display file address for the number of
                          ; lives.
  call ATTRADDR           ; Set hl' to the corresponding attribute file address
                          ; (unnecessarily).
  ld a,(LIVES)            ; Pick up the number of lives remaining.
  add a,"0"               ; Convert it into an ASCII code. This does not work
                          ; if there are 10 or more lives remaining, which is a
                          ; bug.
  ex de,hl                ; Transfer the display file address to de.
  call PRINTDIGIT_0       ; Print the number of lives remaining.
; Now make a sound effect.
CHKEATEN_3:
  ld hl,SOUND             ; Pick up the sound on/off indicator.
  ld c,$10                ; Initialise c for the loop that follows.
CHKEATEN_4:
  push bc                 ; Save the loop counter (unnecessarily).
  ld b,c                  ; Set b equal to 8*c. This value determines the
  sla b                   ; pitch.
  sla b                   ;
  sla b                   ;
  push bc                 ; Save the pitch parameter briefly.
  ld a,$1f                ; Flip the speaker off if the sound on/off indicator
  and (hl)                ; is on, or on otherwise.
  out ($fe),a             ;
CHKEATEN_5:
  djnz CHKEATEN_5         ; Produce a short delay.
  ld a,$07                ; Flip the speaker on.
  out ($fe),a             ;
  pop bc                  ; Restore the pitch parameter to b.
CHKEATEN_6:
  djnz CHKEATEN_6         ; Produce another short delay.
  pop bc                  ; Restore the loop counter to c (unnecessarily).
  dec c                   ; Finished yet?
  jr nz,CHKEATEN_4        ; Jump back if not.
  ret

; Draw the guards
;
; Called from the main loop at MAINLOOP.
DRAWGUARDS:
  ld hl,GUARD1CT          ; Point hl at the first of the guard countdown
                          ; timers.
  ld b,$04                ; There are four guards.
DRAWGUARDS_0:
  push bc                 ; Save the guard counter.
  ld a,(hl)               ; Set the zero flag if this guard is in play.
  inc hl                  ;
  or (hl)                 ;
  inc hl                  ; Point hl at the next guard's countdown timer.
  push hl                 ; Save the guard countdown timer pointer.
  jr nz,DRAWGUARDS_1      ; Jump if this guard is not in play yet.
  call COPYGUARD          ; Copy the guard's buffer into the temporary location
                          ; (GUARDLOC).
  call DRAWGUARD          ; Draw the guard.
  call UPDTGUARD          ; Copy the guard's buffer back to the original
                          ; location.
DRAWGUARDS_1:
  pop hl                  ; Restore the guard countdown timer pointer to hl.
  pop bc                  ; Restore the guard counter to b.
  djnz DRAWGUARDS_0       ; Jump back to deal with the next guard.
  ret

; Draw a guard
;
; Used by the routine at DRAWGUARDS.
DRAWGUARD:
  ld a,(GUARDDELAY)       ; Pick up the guard's return delay counter.
  and a                   ; Has this guard been thrown out of the park?
  jr z,DRAWGUARD_0        ; Jump if not.
  dec a                   ; Decrement the guard's return delay counter.
  ld (GUARDDELAY),a       ;
  ret nz                  ; Return unless it's zero now.
DRAWGUARD_0:
  ld hl,(GUARDNLOC)       ; Update the guard's current location.
  ld (GUARDLOC),hl        ;
  ld bc,(GUARDPT)         ; Pick up the guard panic timer.
  ld a,b                  ; Are the guards panicking?
  or c                    ;
  jr z,DRAWGUARD_2        ; Jump if not.
  dec bc                  ; Decrement the guard panic timer.
  ld (GUARDPT),bc         ;
  ld de,$7ec7             ; Point hl at the graphic data for a panicked guard
  ex de,hl                ; (frame 0).
  ld a,(GUARDTIMER)       ; Increment the guard's animation frame timer.
  inc a                   ;
  ld (GUARDTIMER),a       ;
  and $08                 ; Is bit 3 set now?
  cp $00                  ;
  jr z,DRAWGUARD_1        ; Jump if not.
  ld bc,$0020             ; Point de at the graphic data for a panicked guard
  add hl,bc               ; (frame 1), and restore the guard's location to hl.
DRAWGUARD_1:
  ex de,hl                ;
  jr DRAWGUARD_5          ; Jump forward to draw the guard now.
DRAWGUARD_2:
  ex de,hl                ; Transfer the guard's location to de.
  ld a,(GUARDTIMER)       ; Increment the guard's animation frame timer.
  inc a                   ;
  ld (GUARDTIMER),a       ;
  and $20                 ; Is bit 5 set now?
  cp $00                  ;
  jr nz,DRAWGUARD_3       ; Jump if so.
  ld hl,$7e47             ; Point hl at the graphic data for a regular guard
                          ; (frame 4).
  jr DRAWGUARD_4
DRAWGUARD_3:
  ld hl,GUARD0            ; Point hl at the graphic data for a regular guard
                          ; (frame 0).
DRAWGUARD_4:
  ld a,(GUARDAF)          ; Pick up the guard's animation frame.
  rlc a                   ; Point de at the corresponding graphic data for the
  rlc a                   ; guard sprite, and restore the guard's location to
  rlc a                   ; hl.
  rlc a                   ;
  rlc a                   ;
  ld b,$00                ;
  ld c,a                  ;
  add hl,bc               ;
  ex de,hl                ;
DRAWGUARD_5:
  call ATTRADDR           ; Set hl' to the attribute file address of the
                          ; guard's location.
  ld c,$3b                ; This is the guard's attribute byte (INK 3: PAPER
                          ; 7).
  call DRAWSPRITE         ; Draw the guard.
  ret

; Check whether Horace has run into a guard
;
; Called from the main loop at MAINLOOP.
CHKHIT:
  ld hl,(HORACENLOC)      ; Pick up Horace's new location.
  call CHKATTRS           ; Check the attribute bytes at Horace's new location.
  cp $3b                  ; Has Horace run into a guard?
  ret nz                  ; Return if not.
  ld hl,(GUARDPT)         ; Pick up the guard panic timer.
  ld a,h                  ; Are the guards panicking at the moment?
  or l                    ;
  jp z,DEAD               ; Jump if not.
  ld hl,(SCORE)           ; Add 100 to the score (Horace has thrown the guards
  ld bc,$0064             ; out of the park).
  add hl,bc               ;
  ld (SCORE),hl           ;
  call CHKEATEN_1         ; Print the score.
  ld hl,$0000             ; Reset the guard panic timer.
  ld (GUARDPT),hl         ;
; Now make the 'caught a guard' sound effect.
  ld hl,SOUND             ; Pick up the sound on/off indicator.
  ld c,$0f                ; Initialise c for the loop that follows.
CHKHIT_0:
  push bc                 ; Save the loop counter (unnecessarily).
  ld a,c                  ; Set b and e equal to 8*(15-c). This value
  xor $0f                 ; determines the pitch.
  ld b,a                  ;
  sla b                   ;
  sla b                   ;
  sla b                   ;
  ld e,b                  ;
  ld d,$08                ; This value determines the duration.
CHKHIT_1:
  ld b,e                  ; Produce a sound (if the sound on/off indicator is
  ld a,$1f                ; on) with pitch and duration determined by e and d.
  and (hl)                ;
  out ($fe),a             ;
CHKHIT_2:
  ld a,(ix+$00)           ;
  ld (ix+$00),a           ;
  djnz CHKHIT_2           ;
  ld a,$07                ;
  out ($fe),a             ;
  ld b,e                  ;
CHKHIT_3:
  ld a,(ix+$00)           ;
  ld (ix+$00),a           ;
  djnz CHKHIT_3           ;
  dec d                   ;
  jr nz,CHKHIT_1          ;
  pop bc                  ; Restore the loop counter to c (unnecessarily).
  dec c                   ; Finished yet?
  jr nz,CHKHIT_0          ; Jump back if not.
; Now we throw the guards out of the park.
  ld hl,GUARD1CT          ; Point hl at the first guard countdown timer.
  ld b,$04                ; There are four guards.
CHKHIT_4:
  push bc                 ; Save the guard counter.
  ld a,(hl)               ; Set the zero flag if this guard is already in play.
  inc hl                  ;
  or (hl)                 ;
  push hl                 ; Save the guard countdown timer pointer.
  jr nz,CHKHIT_6          ; Jump if this guard has not appeared yet.
  call COPYGUARD          ; Copy this guard's buffer into the temporary
                          ; location (GUARDLOC).
  call REDRAWG_0          ; Redraw the tiles behind the guard.
  ld hl,(HORACENLOC)      ; Pick up Horace's new location.
  call CHKATTRS           ; Check the attribute bytes at this location.
  cp $3b                  ; Set the zero flag if there's a guard here. (This
                          ; instruction is redundant.)
  ld hl,(CMENTRANCE)      ; Pick up the entrance location for the current maze.
  ld (GUARDLOC),hl        ; Make this the guard's new location.
  ld (GUARDNLOC),hl       ;
  call CPMAZEBG           ; Copy the maze background tiles into the temporary
                          ; guard buffer.
  ld a,$01                ; Initialise the guard's animation frame.
  ld (GUARDAF),a          ;
  ld a,$5a                ; Initialise the guard's return delay counter.
  ld (GUARDDELAY),a       ;
  jr CHKHIT_5
  call DRAWGUARD          ; Draw the guard (this instruction is never
                          ; executed).
CHKHIT_5:
  call UPDTGUARD          ; Copy the guard's buffer back to the original
                          ; location.
CHKHIT_6:
  pop hl                  ; Restore the guard countdown timer pointer to hl.
  pop bc                  ; Restore the guard counter to b.
  djnz CHKHIT_4           ; Jump back to deal with the next guard.
  ret

; Lose a life
;
; Used by the routine at CHKHIT.
DEAD:
  ld a,(LIVES)            ; Decrement the number of lives.
  dec a                   ;
  ld (LIVES),a            ;
  xor a                   ; Reset the tunnel timer.
  ld (TUNNELTIME),a       ;
  ld (GUARDDELAY),a       ; Reset the current guard's return delay counter.
  ld hl,$4007             ; This is the display file address for the score.
  call ATTRADDR           ; Set hl' to the corresponding attribute file address
                          ; (unnecessarily).
  ld a,(LIVES)            ; Pick up the number of lives remaining.
  add a,"0"               ; Convert it to the ASCII code of the digit.
  ex de,hl                ; Transfer the display file address to de.
  call PRINTDIGIT_0       ; Print the number of lives remaining.
; The following loop produces the Horace-has-died colour-cycling effect. The
; accompanying sound effect varies depending on the current value of the
; address held at RANDADDR.
  ld b,$2d                ; Initialise the loop counter.
DEAD_0:
  push bc                 ; Save the loop counter.
  ld a,(HORACEATTR)       ; Increment Horace's INK colour.
  inc a                   ;
  and $07                 ;
  or $38                  ;
  ld (HORACEATTR),a       ;
  push af                 ; Save the attribute byte briefly.
  call DRAWHORACE_0       ; Draw Horace in this new colour.
  ld hl,$5800             ; This is the attribute file address for the 'P' of
                          ; 'PASSES'.
  ld b,$09                ; b will count the characters in 'PASSES n ' (where
                          ; 'n' in the number of lives remaining).
  pop af                  ; Restore the attribute byte to a.
DEAD_1:
  ld (hl),a               ; Change the INK colour of the number of remaining
  inc hl                  ; lives to match that of Horace.
  djnz DEAD_1             ;
  ld c,$14                ; Initialise c for the loop that follows.
DEAD_2:
  ld a,$1f                ; Flip the speaker off if the sound on/off indicator
  ld hl,SOUND             ; is on, or on otherwise.
  and (hl)                ;
  out ($fe),a             ;
  call RANDOM             ; Generate a pseudo-random number in a.
  or $40                  ; Set bit 6 to make sure it's in the range 64-255.
  ld b,a                  ; Use this value to produce a short delay.
DEAD_3:
  djnz DEAD_3             ;
  ld a,$07                ; Flip the speaker on.
  out ($fe),a             ;
  call RANDOM             ; Generate another pseudo-random number in the range
  or $40                  ; 64-255.
  ld b,a                  ; Use this value to produce a short delay.
DEAD_4:
  djnz DEAD_4             ;
  dec c                   ; Finished yet?
  jr nz,DEAD_2            ; Jump back if not.
  pop bc                  ; Restore the loop counter to b.
  djnz DEAD_0             ; Jump back for the next iteration.
; Now that's done, reinitialise Horace and the guards.
  ld a,$38                ; Reset the INK colour of the number of remaining
  ld hl,$5800             ; lives to black.
  ld b,$08                ;
DEAD_5:
  ld (hl),a               ;
  inc hl                  ;
  djnz DEAD_5             ;
  ld a,$39                ; Reset Horace's attribute byte (INK 1: PAPER 7).
  ld (HORACEATTR),a       ;
  ld hl,GUARD4CT          ; Point hl at the last of the four guard countdown
                          ; timers.
  ld b,$01                ; b will count four guards (1, 2, 3, 4).
DEAD_6:
  push bc                 ; Save the guard counter.
  ld a,(hl)               ; Set the zero flag if this guard is in play.
  inc hl                  ;
  or (hl)                 ;
  dec hl                  ; Point hl at the next guard's countdown timer.
  dec hl                  ;
  dec hl                  ;
  push hl                 ; Save the guard countdown timer pointer.
  jr nz,DEAD_7            ; Jump if this guard is not in play yet.
  call COPYGUARD          ; Copy the guard's buffer into the temporary location
                          ; (GUARDLOC).
  call REDRAWG_0          ; Redraw the maze background tiles at this guard's
                          ; location.
  call UPDTGUARD          ; Copy the guard's buffer back to the original
                          ; location.
DEAD_7:
  pop hl                  ; Restore the guard countdown timer pointer to hl.
  pop bc                  ; Restore the guard counter to b.
  inc b                   ; Next guard.
  ld a,b                  ; Copy the guard counter to a.
  cp $05                  ; Have we done all four guards yet?
  jr nz,DEAD_6            ; If not, jump back to do the next one.
  ld hl,(HORACELOC)       ; Pick up Horace's current location.
  ld de,BLANK             ; Point de at the graphic data for the blank sprite.
  call ATTRADDR           ; Set hl' to the attribute file address corresponding
                          ; to Horace's location.
  ld c,$3e                ; This is the attribute byte for the blank sprite
                          ; (INK 6: PAPER 7).
  call DRAWSPRITE         ; Draw the blank sprite at Horace's location.
  ld a,(LIVES)            ; Pick up the number of lives remaining.
  and a                   ; Is it zero?
  jr z,DEAD_8             ; Jump if so.
  pop hl                  ; Drop the return address from the stack.
  call INITGCT            ; Initialise the guard countdown timers.
  ld a,(GAMEMODE)         ; Pick up the game mode indicator.
  and a                   ; Is it demo mode?
  jp nz,START_18          ; Jump if not.
  jp START_5              ; Otherwise move to the next maze.
; Horace has just lost his last remaining life. This entry point is also used
; by the routine at READKEYS when a key is pressed in demo mode.
DEAD_8:
  ld b,$14                ; This loop will have 20 iterations.
DEAD_9:
  push bc                 ; Save the loop counter.
  call TITLESOUND         ; Make a sound effect.
  ld hl,$5800             ; Change the INK colour of the entire screen to b mod
  ld de,$5801             ; 8.
  ld a,b                  ;
  and $07                 ;
  add a,$38               ;
  ld (hl),a               ;
  ld bc,$02ff             ;
  ldir                    ;
  pop bc                  ; Restore the loop counter to b.
  djnz DEAD_9             ; Jump back for the next iteration.
  pop hl                  ; Drop the return address from the stack.
  ld a,(GAMEMODE)         ; Pick up the game mode indicator.
  and a                   ; Is it demo mode?
  jp z,START_0            ; Return to the title screen if so.
  ld hl,(SCORE)           ; Pick up the current score.
  ld bc,(HISCORE)         ; Pick up the high score.
  xor a                   ; Clear the carry flag for subtraction.
  sbc hl,bc               ; Do we have a new high score?
  jp c,START_0            ; Return to the title screen if not.
  ld hl,(SCORE)           ; Pick up the current score.
  ld (HISCORE),hl         ; Make it the new high score.
  jp START_0              ; Return to the title screen.

; Draw Horace
;
; Called from the main loop at MAINLOOP, and also used by the routine at
; DRAWBELL.
DRAWHORACE:
  ld a,(TUNNELTIME)       ; Pick up the tunnel timer.
  and a                   ; Is Horace in a tunnel at the moment?
  jr z,DRAWHORACE_0       ; Jump if not.
  dec a                   ; Decrement the tunnel timer.
  ld (TUNNELTIME),a       ;
  ld hl,(HORACENLOC)      ; Update Horace's current location.
  ld (HORACELOC),hl       ;
  ret
; This entry point is used by the routine at DEAD to draw Horace during the
; Horace-has-died colour-cycling effect.
DRAWHORACE_0:
  ld a,(HORACETIME)       ; Increment Horace's walking animation timer.
  inc a                   ;
  ld (HORACETIME),a       ;
  and $10                 ; Keep only bit 4.
  cp $00                  ; Is bit 4 set now? (This instruction is redundant.)
  jr nz,DRAWHORACE_1      ; Jump if so.
  ld hl,$7d47             ; Point hl at the graphic data for Horace's sprite
                          ; (frame 4).
  jr DRAWHORACE_2
DRAWHORACE_1:
  ld hl,HORACE0           ; This is the base address of the graphic data for
                          ; Horace's sprite (frame 0).
DRAWHORACE_2:
  ld a,(HORACEAF)         ; Pick up Horace's animation frame in a.
  rlc a                   ; Point de at the graphic data for the corresponding
  rlc a                   ; sprite (hl+32*a).
  rlc a                   ;
  rlc a                   ;
  rlc a                   ;
  ld b,$00                ;
  ld c,a                  ;
  add hl,bc               ;
  ex de,hl                ;
  ld hl,(HORACENLOC)      ; Update Horace's current location.
  ld (HORACELOC),hl       ;
  call ATTRADDR           ; Set hl' to the corresponding attribute file
                          ; address.
  ld a,(HORACEATTR)       ; Pick up Horace's attribute byte and copy it to c.
  ld c,a                  ;
  call DRAWSPRITE         ; Draw Horace.
  ret

; Draw the bell and check whether Horace has sounded the alarm
;
; Called from the main loop at MAINLOOP.
DRAWBELL:
  ld hl,(HORACELOC)       ; Pick up Horace's current location.
  ld bc,(BELLLOC)         ; Pick up the location of the bell in the current
                          ; maze.
  ld a,b                  ; Has Horace already sounded the alarm?
  or c                    ;
  ret z                   ; Return if so.
  and a                   ; Clear the carry flag. (This instruction is
                          ; redundant.)
  sbc hl,bc               ; Subtract the bell's location from Horace's.
  ld a,h                  ; Is Horace in exactly the same location as the bell?
  or l                    ;
  jr z,DRAWBELL_1         ; Jump if so.
  inc hl                  ; Is Horace one space to the left of the bell?
  ld a,h                  ;
  or l                    ;
  jr z,DRAWBELL_1         ; Jump if so.
  dec hl                  ; Is Horace one space to the right of the bell?
  dec hl                  ;
  ld a,h                  ;
  or l                    ;
  jr z,DRAWBELL_1         ; Jump if so.
  ld bc,$0021             ; Is Horace one space above the bell?
  add hl,bc               ;
  ld a,h                  ;
  or l                    ;
  jr z,DRAWBELL_1         ; Jump if so.
  xor a                   ; Clear the carry flag. (This instruction is
                          ; redundant.)
  ld bc,$0041             ; Is Horace one space below the bell?
  sbc hl,bc               ;
  ld a,h                  ;
  or l                    ;
  jr z,DRAWBELL_1         ; Jump if so.
; Horace has not sounded the alarm.
  ld hl,(BELLLOC)         ; Pick up the location of the bell in the current
                          ; maze.
  ld a,(BELLANIMFC)       ; Increment the bell's animation frame counter.
  inc a                   ;
  ld (BELLANIMFC),a       ;
  and $38                 ; Keep only bits 3, 4 and 5.
  cp $1f                  ; Is the result 30 or less (i.e. bit 5 reset)?
  jr c,DRAWBELL_0         ; Jump if so.
  xor $38                 ; Flip bits 3 and 4, and reset bit 5.
DRAWBELL_0:
  rlca                    ; bc=4*a.
  rlca                    ;
  ld c,a                  ;
  ld b,$00                ;
  ld de,BELL              ; This is the base address of the graphic data for
                          ; the bell.
  ex de,hl                ; Point de at the graphic data for the appropriate
  add hl,bc               ; bell sprite.
  ex de,hl                ;
  call ATTRADDR           ; Set hl' to the attribute file address of the bell's
                          ; location.
  ld c,$3a                ; This is the attribute byte (INK 2: PAPER 7).
  call DRAWSPRITE         ; Draw the bell.
  ret
; Horace has sounded the alarm.
DRAWBELL_1:
  ld hl,$0000             ; Clear the bell location to indicate that Horace has
  ld (BELLLOC),hl         ; sounded the alarm.
  ld de,BLANK             ; Point de at the graphic data for the blank sprite.
  ld hl,(CMBELLLOC)       ; Pick up the bell location for the current maze.
  call ATTRADDR           ; Set hl' to the corresponding attribute file
                          ; address.
  ld c,$3e                ; This is the attribute byte (INK 6: PAPER 7).
  call DRAWSPRITE         ; Draw the blank sprite where the bell was.
  call DRAWHORACE         ; Draw Horace.
  ld hl,(SCORE)           ; Add 60 to the score.
  ld bc,$003c             ;
  add hl,bc               ;
  ld (SCORE),hl           ;
  call CHKEATEN_1         ; Print the new score and make a sound effect.
  ld a,(SPEED)            ; Pick up the game speed parameter in a.
  ld l,$00                ; hl=128*a.
  ld h,a                  ;
  sra h                   ;
  rr l                    ;
  ld (GUARDPT),hl         ; Initialise the guard panic timer to this value.
  ld a,(GUARDAF)          ; Update the animation frame in the temporary guard
  add a,$02               ; buffer; these instructions are redundant and have
  and $03                 ; no effect on any of the guards.
  ld (GUARDAF),a          ;
  ld hl,(SCORE)           ; Add 150 to the score.
  ld bc,$0096             ;
  add hl,bc               ;
  ld (SCORE),hl           ;
  call CHKEATEN_1         ; Print the new score and make a sound effect.
  ret

; Check whether a guard should drop his lunch
;
; Called from the main loop at MAINLOOP.
CHKLUNCH:
  ld hl,GUARD1CT          ; Point hl at the first guard countdown timer.
  ld b,$04                ; There are four guards to consider.
CHKLUNCH_0:
  push bc                 ; Save the guard counter.
  ld a,(hl)               ; Set the zero flag if this guard is in play.
  inc hl                  ;
  or (hl)                 ;
  inc hl                  ; Point hl at the next guard's countdown timer.
  push hl                 ; Save the guard countdown timer pointer.
  jr nz,CHKLUNCH_1        ; Jump if this guard is not in play yet.
  call COPYGUARD          ; Copy the guard's buffer into the temporary location
                          ; (GUARDLOC).
  call DROPLUNCH          ; Make the guard drop his lunch if necessary.
  call UPDTGUARD          ; Copy the guard's buffer back to the original
                          ; location.
CHKLUNCH_1:
  pop hl                  ; Restore the guard countdown timer pointer to hl.
  pop bc                  ; Restore the guard counter to b.
  djnz CHKLUNCH_0         ; Jump back to handle the next guard.
  ret

; Make a guard drop his lunch if necessary
;
; Used by the routine at CHKLUNCH.
DROPLUNCH:
  ld a,(GUARDDELAY)       ; Pick up the guard's return delay counter.
  and a                   ; Has this guard been thrown out of the park?
  ret nz                  ; Return if so.
  ld e,$04                ; There are four maze background tiles to consider.
  ld hl,GUARDBG           ; Point hl at the first maze background tile in the
                          ; temporary guard buffer.
DROPLUNCH_0:
  ld a,(hl)               ; Pick up the attribute byte of this maze background
                          ; tile.
  cp $3a                  ; Is there already a cherry or strawberry here?
  ret z                   ; Return if so.
  ld bc,$0009             ; Point hl at the next maze background tile.
  add hl,bc               ;
  dec e                   ; Have we checked all four tiles yet?
  jr nz,DROPLUNCH_0       ; Jump back if not.
  ld hl,(LUNCHCT)         ; Decrement the lunch-drop countdown timer.
  dec hl                  ;
  ld (LUNCHCT),hl         ;
  ld a,h                  ; Is it zero now?
  or l                    ;
  ret nz                  ; Return if not.
  call RANDOM             ; Generate a pseudo-random number in a.
  ld l,a                  ; Copy it to l.
  push hl                 ; Save l briefly.
  call RANDOM             ; Generate another pseudo-random number in a.
  pop hl                  ; Restore l.
  and $03                 ; Reduce a to 0, 1, 2 or 3 and copy it to h.
  ld h,a                  ;
  ld bc,$0320             ; Add 800 and reset the lunch-drop countdown timer to
  add hl,bc               ; this value.
  ld (LUNCHCT),hl         ;
  call RANDOM             ; Generate yet another pseudo-random number in a.
  and $01                 ; Is bit 0 set?
  jr nz,DROPLUNCH_1       ; Jump if so.
  ld hl,CHERRY            ; Point hl at the sprite data for the cherry.
  jr DROPLUNCH_2
DROPLUNCH_1:
  ld hl,STRAWBERRY        ; Point hl at the sprite data for the strawberry.
DROPLUNCH_2:
  ld de,GUARDBG           ; Copy the cherry/strawberry sprite into the maze
  ld bc,$0024             ; background tiles in the temporary guard buffer.
  ldir                    ;
  ret

; Decrement the guard countdown timers
;
; Called from the main loop at MAINLOOP.
DECGTIMERS:
  ld hl,GUARD1CT          ; Point hl at the first guard countdown timer.
  ld b,$04                ; There are four guards to consider.
DECGTIMERS_0:
  ld e,(hl)               ; Pick up the countdown timer value in de.
  inc hl                  ;
  ld d,(hl)               ;
  dec hl
  ld a,d                  ; Is the value zero?
  or e                    ;
  jr z,DECGTIMERS_1       ; Jump if so (this guard is already in play).
  dec de                  ; Decrement the countdown timer.
  ld (hl),e               ;
  inc hl                  ;
  ld (hl),d               ;
  dec hl
  ld a,d
  or c                    ; This should be or e.
  jr nz,DECGTIMERS_1      ; Jump unless a is now zero.
  ld a,(GUARDCOUNT)       ; Increment the active guard counter.
  inc a                   ;
  ld (GUARDCOUNT),a       ;
DECGTIMERS_1:
  inc hl                  ; Point hl at the next guard's countdown timer.
  inc hl                  ;
  djnz DECGTIMERS_0       ; Jump back to consider the next guard.
  ret

; Toggle the sound on/off if 'T' is pressed
;
; Called from the main loop at MAINLOOP.
TOGGLESND:
  ld a,$fb                ; Read keys Q-W-E-R-T.
  in a,($fe)              ;
  and $10                 ; Keep only bit 4 (corresponding to 'T').
  ld hl,TPRESS            ; Pick up the last recorded 'T' pressed indicator.
  cp (hl)                 ; Does the current value match?
  ret z                   ; Return if so.
  ld (hl),a               ; Save the current 'T' pressed indicator.
  and a                   ; Is 'T' being pressed?
  ret nz                  ; Return if not.
  ld hl,SOUND             ; Toggle the sound on/off indicator by flipping bits
  ld a,(hl)               ; 3 and 4.
  xor $18                 ;
  ld (hl),a               ;
  ret

; Ring the bell if necessary
;
; Called from the main loop at MAINLOOP.
RINGBELL:
  ld hl,(BELLLOC)         ; Pick up the bell's location in the current maze.
  ld a,h                  ; Has Horace already sounded the alarm?
  or l                    ;
  jr nz,RINGBELL_2        ; Jump if not.
; Horace has already sounded the alarm. Produce an appropriate delay in place
; of the bell sound.
RINGBELL_0:
  ld a,(SPEED)            ; Pick up the game speed parameter in a.
  ld e,a                  ; hl=350+30*a.
  ld hl,$015e             ;
RINGBELL_1:
  ld bc,$001e             ;
  add hl,bc               ;
  dec e                   ;
  jr nz,RINGBELL_1        ;
  xor a                   ; Clear a for no apparent reason.
  ld a,(GUARDCOUNT)       ; Pick up the active guard counter (0-3) in a.
  rla                     ; Subtract 128*a from hl.
  rla                     ;
  rla                     ;
  rla                     ;
  rla                     ;
  rla                     ;
  ld b,$00                ;
  ld c,a                  ;
  sbc hl,bc               ;
  sbc hl,bc               ;
  push hl                 ; Copy hl to bc.
  pop bc                  ;
  call DELAY              ; Wait for 26*bc+5 T states.
  ret
; Horace has not sounded the alarm yet. Produce an appropriate bell sound if
; necessary.
RINGBELL_2:
  ld a,(BELLANIMFC)       ; Pick up the bell animation frame counter.
  and $3f                 ; Keep only bits 0-5.
  cp $00                  ; Is the frame counter a multiple of 64 at the
                          ; moment? (This instruction is redundant.)
  jr nz,RINGBELL_3        ; Jump if not.
  ld hl,SOUND             ; Pick up the sound on/off indicator in a.
  ld a,(hl)               ;
  cp $1f                  ; Is the sound on?
  jr nz,RINGBELL_0        ; Jump if not.
  ld de,$0016             ; Call the ROM to make a short sound effect.
  ld hl,$0193             ;
  call $03b5              ;
  di                      ; Disable interrupts after the ROM call.
  ld de,$001a             ; Call the ROM again to make another short sound
  ld hl,$0168             ; effect.
  call $03b5              ;
  di                      ; Disable interrupts after the ROM call.
  ret
RINGBELL_3:
  cp $20                  ; Is the bell animation frame counter a multiple of
                          ; 32 at the moment?
  jr nz,RINGBELL_0        ; Jump if not.
  ld hl,SOUND             ; Pick up the sound on/off indicator in a.
  ld a,(hl)               ;
  cp $1f                  ; Is the sound on?
  jr nz,RINGBELL_0        ; Jump if not.
  ld de,$001a             ; Call the ROM to make a short sound effect.
  ld hl,$0168             ;
  call $03b5              ;
  di                      ; Disable interrupts after the ROM call.
  ld de,$0016             ; Call the ROM again to make another short sound
  ld hl,$0193             ; effect.
  call $03b5              ;
  di                      ; Disable interrupts after the ROM call.
  ret

; Unused
L6a17:
  ld a,(ix+$00)
  ld a,(ix+$00)
  ret

; Enter the next maze
;
; Used by the routine at MVSPRITES when Horace is leaving the current maze.
NEXTMAZE:
  pop hl                  ; Drop the return address from the stack.
  jp START_5              ; Prepare the next maze.

; Initialise the guard countdown timers
;
; Used by the routines at START and DEAD.
INITGCT:
  ld a,$00                ; Reset the active guard counter.
  ld (GUARDCOUNT),a       ;
  ld hl,$0000             ; Initialise the first guard countdown timer to zero.
  ld (GUARD1CT),hl        ;
  ld a,(SPEED)            ; Pick up the game speed parameter (1-8) in a.
  ld h,a                  ; hl=256*a.
  ld (GUARD2CT),hl        ; Initialise the second guard countdown timer.
  sla h                   ; Double hl.
  ld (GUARD3CT),hl        ; Initialise the third guard countdown timer.
  sla h                   ; Double hl again.
  ld (GUARD4CT),hl        ; Initialise the fourth guard countdown timer.
  ret

; Copy a guard buffer into the temporary location
;
; Used by the routines at START, MVSPRITES, REDRAW, DRAWGUARDS, CHKHIT, DEAD
; and CHKLUNCH.
;
; b Guard number (1-4)
COPYGUARD:
  ld a,b                  ; Copy the guard number (1, 2, 3, 4) to a.
  cp $04                  ; Are we dealing with guard 4?
  jr nz,COPYGUARD_0       ; Jump if not.
  ld hl,GUARD1BUF         ; Point hl at the buffer for guard 4.
  jr COPYGUARD_3
COPYGUARD_0:
  cp $03                  ; Are we dealing with guard 3?
  jr nz,COPYGUARD_1       ; Jump if not.
  ld hl,GUARD2BUF         ; Point hl at the buffer for guard 3.
  jr COPYGUARD_3
COPYGUARD_1:
  cp $02                  ; Are we dealing with guard 2?
  jr nz,COPYGUARD_2       ; Jump if not.
  ld hl,GUARD3BUF         ; Point hl at the buffer for guard 2.
  jr COPYGUARD_3
COPYGUARD_2:
  ld hl,GUARD4BUF         ; Point hl at the buffer for guard 1.
COPYGUARD_3:
  ld (GBUFADDR),hl        ; Save the address of the guard's buffer for later
                          ; retrieval.
  ld de,GUARDLOC          ; Copy the guard's buffer into the temporary location
  ld bc,$002b             ; (GUARDLOC).
  ldir                    ;
  ret

; Copy the temporary guard buffer back into place
;
; Used by the routines at START, MVSPRITES, REDRAW, DRAWGUARDS, CHKHIT, DEAD
; and CHKLUNCH.
UPDTGUARD:
  ld hl,(GBUFADDR)        ; Retrieve the address of the guard's buffer.
  ld de,GUARDLOC          ; Point de at the temporary guard buffer.
  ex de,hl                ; Switch pointers.
  ld bc,$002b             ; Copy the temporary guard buffer back into place.
  ldir                    ;
  ret

; Make the title screen or game over sound effect
;
; Used by the routines at START (on the title screen) and DEAD (when a game is
; over).
TITLESOUND:
  ld hl,SOUND             ; Pick up the sound on/off indicator.
  ld c,$10                ; Initialise c for the loop that follows.
TITLESOUND_0:
  push bc                 ; Save the loop counter (unnecessarily).
  ld b,c                  ; Set b and d equal to 8*c. This value determines the
  sla b                   ; pitch.
  sla b                   ;
  sla b                   ;
  ld d,b                  ;
  ld e,$0a                ; This value determines the duration.
TITLESOUND_1:
  ld b,d                  ; Produce a sound (if the sound on/off indicator is
  ld a,$1f                ; on) with pitch and duration determined by d and e.
  and (hl)                ;
  out ($fe),a             ;
TITLESOUND_2:
  djnz TITLESOUND_2       ;
  ld a,$07                ;
  out ($fe),a             ;
  ld b,d                  ;
TITLESOUND_3:
  djnz TITLESOUND_3       ;
  dec e                   ;
  jr nz,TITLESOUND_1      ;
  pop bc                  ; Restore the loop counter to c (unnecessarily).
  dec c                   ; Finished yet?
  jr nz,TITLESOUND_0      ; Jump back if not.
  ret

; Get the tunnel offset and bell, initial guard and entrance locations for the
; current maze
;
; Used by the routine at START.
;
; hl MAZE1DATA, MAZE2DATA, MAZE3DATA or MAZE4DATA
CPMAZEDATA:
  ld de,CMTUNNEL          ; Copy the tunnel offset and bell, initial guard and
  ld bc,$0008             ; entrance locations for the current maze to
  ldir                    ; CMTUNNEL.
  ret

; Copyright © 1982 Beam Software...
;
; Used by the routine at START.
COPYRIGHT:
  defm " Copyright "
  defb $7f                ; ©
  defm " 1982 Beam Software "
  defm "  PRESS ANY KEY TO START PLAY  "
  defb $ff                ; End marker.

; DEMO MODE  PRESS ANY KEY TO PLAY
;
; Used by the routine at START.
DEMOMODE:
  defm "DEMO MODE  PRESS ANY KEY TO PLAY"
  defb $ff                ; End marker.

; Title screen countdown timer
;
; Used by the routine at START. Decremented from 140 until it reaches zero,
; after which demo mode begins.
TITLECT:
  defw $0000

; Active guard counter
;
; Initialised by the routine at START, and used by the routines at DECGTIMERS,
; RINGBELL and INITGCT. Supposed to hold the number of active guards minus one,
; but may not because of a bug.
GUARDCOUNT:
  defb $00

; Game mode indicator
;
; Used by the routines at START, READKEYS, DEAD and PRINTDIGIT. Holds 0 in demo
; mode, or 1 in game mode.
GAMEMODE:
  defb $00

; Wait for 26*bc+5 T states
;
; Used by the routine at RINGBELL to produce a delay in place of a bell sound.
;
; bc Delay parameter
DELAY:
  dec bc                  ; Decrement the delay counter.
  ld a,b                  ; Is it zero yet?
  or c                    ;
  jr nz,DELAY             ; Jump back if not.
  ret

; Collect a pseudo-random number (from the ROM)
;
; Used by the routines at READKEYS, DEAD and DROPLUNCH.
;
; O:a Pseudo-random number
RANDOM:
  ld hl,(RANDADDR)        ; Pick up the address of the next pseudo-random
                          ; number.
  ld a,(hl)               ; Copy the number to a.
  push af                 ; Save the number briefly.
  inc hl                  ; Increment the address, rolling over from 0x1fff to
  ld a,h                  ; 0.
  and $1f                 ;
  ld h,a                  ;
  ld (RANDADDR),hl        ; Save the new address.
  pop af                  ; Restore the pseudo-random number to a.
  ret

; Print the score or high score
;
; Used by the routines at START and CHKEATEN.
;
; de Display file address
; hl Score or high score
PRINTSCORE:
  ex de,hl                ; Switch the display file address to hl.
  call ATTRADDR           ; Set hl' to the corresponding attribute file address
                          ; (unnecessarily).
  ex de,hl                ; Switch the display file address back to de, and the
                          ; score or high score to hl.
  ld a,"0"                ; Initialise a.
  and a                   ; Clear the carry flag, ready for trial subtraction.
  ld bc,$2710             ; Compute and print the 10,000s digit.
  call PRINTDIGIT         ;
  ld bc,$03e8             ; Compute and print the 1,000s digit.
  call PRINTDIGIT         ;
  ld bc,$0064             ; Compute and print the 100s digit.
  call PRINTDIGIT         ;
  ld bc,$000a             ; Compute and print the 10s digit.
  call PRINTDIGIT         ;
  ld a,l                  ; Compute the ASCII code for the 1s digit.
  add a,"0"               ;
  call PRINTDIGIT_0       ; Print it.
  ret

; Compute and print a digit
;
; Used by the routine at PRINTSCORE.
;
;   a 48 (ASCII code for '0')
;   bc 10000, 1000, 100 or 10
;   de Display file address
;   hl Number being printed
;   f Carry flag reset
; O:a 48 (ASCII code for '0')
; O:f Carry flag reset
PRINTDIGIT:
  inc a                   ; Compute in a the ASCII code for the digit.
  sbc hl,bc               ;
  jr nc,PRINTDIGIT        ;
  add hl,bc               ;
  dec a                   ;
; This entry point is used by the routines at START, CHKEATEN, DEAD and
; PRINTSCORE with a holding the ASCII code of the character to print.
PRINTDIGIT_0:
  push bc                 ; Save bc.
  push af                 ; Save the character code briefly.
  ld a,(GAMEMODE)         ; Pick up the game mode indicator.
  ld b,a                  ; Copy it to b.
  pop af                  ; Restore the character code to a.
  bit 0,b                 ; Set the zero flag if it's demo mode.
  pop bc                  ; Restore bc.
  ret z                   ; Return if it's demo mode.
  ex de,hl                ; Swap de and hl for no apparent reason.
  push bc                 ; Save bc.
  push de                 ; Save de.
  ex de,hl                ; Swap de and hl back again.
  ld h,$00                ; Compute in hl the address of the graphic data for
  ld l,a                  ; the character in the ROM.
  add hl,hl               ;
  add hl,hl               ;
  add hl,hl               ;
  ld bc,$3c00             ;
  add hl,bc               ;
  ex de,hl                ; Point de at the character's graphic data, and set
                          ; hl to the display file address.
  ld c,$38                ; This is the attribute byte for the character (INK
                          ; 0: PAPER 7).
  call PRINTTILE          ; Print the character.
  pop de                  ; Restore de.
  pop bc                  ; Restore bc.
  ex de,hl                ; Point de back at the display file, and restore the
                          ; original value of hl.
  ld a,"0"                ; Reset a to the ASCII code for '0'.
  and a                   ; Clear the carry flag. (This instruction is
                          ; redundant.)
  ret

; Draw the current maze
;
; Used by the routine at START.
;
; bc 768
; de 16384
; hl Address of the maze layout data (MAZE2, MAZE1, MAZE3 or MAZE4)
DRAWMAZE:
  push bc                 ; Save the tile counter.
  push hl                 ; Save the maze layout data address.
  ex de,hl                ; Transfer the display file address to hl.
  call ATTRADDR           ; Set hl' to the corresponding attribute file address
                          ; (always 5800).
  ex de,hl                ; Transfer the display file address back to de.
  exx                     ; Exchange registers.
  pop de                  ; Restore the maze layout data address to de'.
  pop bc                  ; Restore the tile counter to bc'.
DRAWMAZE_0:
  ld a,(de)               ; Pick up a tile identifier.
  inc de                  ; Point de' at the next tile identifier.
  cp $00                  ; Is the current tile blank?
  jr z,DRAWMAZE_3         ; Jump if so.
  cp $02                  ; Is the current tile a flower?
  jr z,DRAWMAZE_4         ; Jump if so.
  cp $03                  ; Is the current tile an arrow (entrance or exit)?
  jr z,DRAWMAZE_1         ; Jump if so.
  cp $09                  ; Is the current tile a tunnel entrance?
  jr z,DRAWMAZE_2         ; Jump if so.
  ld a,$3d                ; Wall tile (INK 5).
  jr DRAWMAZE_5
DRAWMAZE_1:
  ld a,$38                ; Arrow tile (INK 0).
  jr DRAWMAZE_5
DRAWMAZE_2:
  ld a,$3f                ; Tunnel entrance (INK 7).
  jr DRAWMAZE_5
DRAWMAZE_3:
  ld a,$3e                ; Blank tile (INK 6).
  jr DRAWMAZE_5
DRAWMAZE_4:
  ld a,$3c                ; Flower (INK 4).
DRAWMAZE_5:
  ld (hl),a               ; Set the attribute byte.
  inc hl                  ; Move hl' along the attribute file.
  dec bc                  ; Decrement the tile counter.
  ld a,b                  ; Have we finished setting the attribute bytes yet?
  or c                    ;
  jr nz,DRAWMAZE_0        ; Jump back if not.
  exx                     ; Exchange registers.
; The attribute bytes have been set. Time to draw the maze tiles.
DRAWMAZE_6:
  push hl                 ; Save the maze layout pointer.
  ld a,(hl)               ; Pick up a tile identifier in a.
  ld h,$00                ; Point ix at the graphic data for the corresponding
  ld l,a                  ; tile (at MAZETILES+8*a).
  add hl,hl               ;
  add hl,hl               ;
  add hl,hl               ;
  ld ix,MAZETILES         ;
  ex de,hl                ;
  add ix,de               ;
  ex de,hl                ;
  ld l,$08                ; Draw the tile.
DRAWMAZE_7:
  ld a,(ix+$00)           ;
  ld (de),a               ;
  inc d                   ;
  inc ix                  ;
  dec l                   ;
  jr nz,DRAWMAZE_7        ;
  inc e                   ; Point de at the display file address for the next
  jr z,DRAWMAZE_8         ; tile.
  ld a,d                  ;
  sub $08                 ;
  ld d,a                  ;
DRAWMAZE_8:
  pop hl                  ; Restore the maze layout pointer to hl.
  inc hl                  ; Move along to the next maze tile identifier.
  dec bc                  ; Decrement the tile counter.
  ld a,b                  ; Have we drawn all the tiles yet?
  or c                    ;
  jr nz,DRAWMAZE_6        ; Jump back if not.
  ret

; Draw a sprite
;
; Used by the routines at REDRAW, DRAWGUARD, DEAD, DRAWHORACE and DRAWBELL.
;
; c Attribute byte
; de Address of the sprite graphic data
; hl Sprite location
; hl' Attribute file address for the sprite location
DRAWSPRITE:
  ex af,af'               ; Copy the attribute byte to a'.
  ld a,c                  ;
  ex af,af'               ;
  ld bc,$4000             ; Set hl to the appropriate display file address.
  add hl,bc               ;
  ex af,af'               ; Copy the attribute byte from a' back to c.
  ld c,a                  ;
  ex af,af'               ;
  call PRINTTILE          ; Draw the top-left tile.
  call PRINTTILE          ; Draw the top-right tile.
  ld a,l                  ; Set hl to the display file address for the
  add a,$1e               ; bottom-left tile.
  ld l,a                  ;
  jr nc,DRAWSPRITE_0      ;
  ld a,h                  ;
  add a,$08               ;
  ld h,a                  ;
DRAWSPRITE_0:
  call ATTRADDR           ; Set hl' to the corresponding attribute file
                          ; address.
  call PRINTTILE          ; Draw the bottom-left tile.
  call PRINTTILE          ; Draw the bottom-right tile.
  ret

; Print a tile or font character
;
; Used by the routines at REDRAWG, PRINTDIGIT and DRAWSPRITE.
;
;   c Attribute byte
;   de Address of the sprite tile or font character graphic data
;   hl Display file address
;   hl' Attribute file address
; O:hl Display file address for the next tile to the right
; O:hl' Attribute file address for the next tile to the right
PRINTTILE:
  ld a,c                  ; Copy the attribute byte to a.
  exx                     ; Exchange registers.
  ld (hl),a               ; Set the attribute byte.
  inc hl                  ; Point hl' at the next attribute byte.
  exx                     ; Exchange registers.
  ld b,$08                ; Copy the 8 graphic bytes of the tile to the screen.
PRINTTILE_0:
  ld a,(de)               ;
  ld (hl),a               ;
  inc h                   ;
  inc de                  ;
  djnz PRINTTILE_0        ;
  inc l                   ; Set hl to the display file address for the next
  ret z                   ; tile to the right.
  ld b,$08                ;
  ld a,h                  ;
  sub b                   ;
  ld h,a                  ;
  ret

; Convert a sprite location or display file address into an attribute file
; address
;
; Used by the routines at START, REDRAW, REDRAWG, CHKEATEN, DRAWGUARD, DEAD,
; DRAWHORACE, DRAWBELL, PRINTSCORE, DRAWMAZE, DRAWSPRITE, CHKATTRS, CPMAZEBG
; and CHKTILES.
;
;   hl Sprite location or display file address
; O:hl' Attribute file address
ATTRADDR:
  push hl                 ; Push the address/location onto the stack.
  exx                     ; Exchange registers.
  pop hl                  ; Drop the address/location off the stack into hl'.
  ld a,h                  ; Set hl' to the corresponding attribute file
  and $18                 ; address.
  sra a                   ;
  sra a                   ;
  sra a                   ;
  add a,$58               ;
  ld h,a                  ;
  exx                     ; Exchange registers.
  ret

; Check the attribute bytes at a sprite's location
;
; Used by the routines at CHKEATEN and CHKHIT.
;
;   hl Sprite location
; O:a 58 (cherry/strawberry), 59 (guard), 60 (flower), or 0 (none of these)
; O:f Zero flag set if a is 0 (nothing found)
CHKATTRS:
  push bc                 ; Save bc.
  push de                 ; Save de.
  push hl                 ; Save the sprite location.
  ld bc,$4000             ; Convert the sprite location into a display file
  add hl,bc               ; address.
  call ATTRADDR           ; Set hl' to the corresponding attribute file
                          ; address.
  exx                     ; Exchange registers.
  ld e,$00                ; e' will hold the attribute of any interesting tile
                          ; at this location; initialise it now.
  call CHKATTR            ; Check the attribute of the top-left tile.
  inc hl                  ; Point hl' at the top-right tile.
  call CHKATTR            ; Check the attribute of the top-right tile.
  ld bc,$001f             ; Point hl' at the bottom-left tile.
  add hl,bc               ;
  call CHKATTR            ; Check the attribute of the bottom-left tile.
  inc hl                  ; Point hl' at the bottom-right tile.
  call CHKATTR            ; Check the attribute of the bottom-right tile.
  ld a,e                  ; Copy the tile attribute indicator to a.
  exx                     ; Exchange registers.
  pop hl                  ; Restore the sprite location to hl.
  pop de                  ; Restore de.
  pop bc                  ; Restore bc.
  and a                   ; Set the zero flag if no interesting tile (guard,
                          ; flower, cherry, strawberry) was found.
  ret

; Check the attribute byte at a sprite tile location
;
; Used by the routine at CHKATTRS.
;
;   e 0, or attribute value from previous call
;   hl Attribute file address
; O:e 58 (cherry/strawberry), 59 (guard), 60 (flower), or 0 (none of these)
CHKATTR:
  ld a,(hl)               ; Pick up the attribute byte.
  cp $3b                  ; Is it magenta?
  jr z,CHKATTR_0          ; Jump if so (there is a guard here).
  cp $3a                  ; Is it red?
  jr z,CHKATTR_1          ; Jump if so (there is a cherry or strawberry here).
  cp $3c                  ; Is it green?
  jr z,CHKATTR_2          ; Jump if so (there is a flower here).
  jr CHKATTR_3
CHKATTR_0:
  ld e,a                  ; e=59 (guard).
  jr CHKATTR_3
CHKATTR_1:
  ld d,a                  ; d=58 (cherry or strawberry).
  ld a,e                  ; Have we already detected a guard at the sprite's
  cp $3b                  ; location?
  jr z,CHKATTR_3          ; Jump if so (it doesn't matter that there's also a
                          ; cherry or strawberry here).
  ld e,d                  ; e=58 (cherry or strawberry).
  jr CHKATTR_3
CHKATTR_2:
  ld d,a                  ; d=60 (flower).
  ld a,e                  ; Have we already detected a guard, cherry,
  and a                   ; strawberry or flower at the sprite's location?
  jr nz,CHKATTR_3         ; Jump if so.
  ld e,d                  ; e=60 (flower).
CHKATTR_3:
  ret

; Copy maze background tiles into a guard's buffer
;
; Used by the routines at REDRAWG and CHKHIT.
;
; hl Guard's new location
CPMAZEBG:
  push bc                 ; Save bc.
  push de                 ; Save de.
  push hl                 ; Save the guard's location.
  ld bc,$4000             ; Convert the guard's location into a display file
  add hl,bc               ; address.
  call ATTRADDR           ; Set hl' to the corresponding attribute file
                          ; address.
  ld de,GUARDBG           ; Point de at the first of the maze background tiles
                          ; in the temporary guard buffer.
  call CPMAZETILE         ; Copy the top-left maze background tile into the
                          ; temporary guard buffer.
  call CPMAZETILE         ; Copy the top-right maze background tile into the
                          ; temporary guard buffer.
  exx                     ; Exchange registers.
  ld bc,$001e             ; Point hl' at the bottom-left tile's attribute byte.
  add hl,bc               ;
  exx                     ; Exchange registers.
  ld a,l                  ; Point hl at the bottom-left tile in the display
  add a,$1e               ; file.
  ld l,a                  ;
  jr nc,CPMAZEBG_0        ;
  ld a,h                  ;
  add a,$08               ;
  ld h,a                  ;
CPMAZEBG_0:
  call CPMAZETILE         ; Copy the bottom-left maze background tile into the
                          ; temporary guard buffer.
  call CPMAZETILE         ; Copy the bottom-right maze background tile into the
                          ; temporary guard buffer.
  pop de                  ; Restore the guard's location to de.
  pop hl                  ; Restore the value in de on entry to hl.
  pop bc                  ; Restore bc.
  ret

; Copy a maze background tile into a guard's buffer
;
; Used by the routine at CPMAZEBG.
;
;   de Address of the tile in the guard's buffer
;   hl Display file address of the maze background tile
;   hl' Attribute file address of the maze background tile
; O:hl Display file address of the next maze background tile to the right
; O:hl' Attribute file address of the next maze background tile to the right
CPMAZETILE:
  exx                     ; Exchange registers.
  ld a,(hl)               ; Pick up the attribute byte of the maze background
                          ; tile.
  inc hl                  ; Point hl' at the attribute byte of the next tile to
                          ; the right.
  exx                     ; Exchange registers.
  cp $3b                  ; Is there a magenta (guard sprite) tile here?
  jr z,CPMAZETILE_2       ; Jump if so.
  ld (de),a               ; Copy the maze background tile attribute byte into
                          ; the temporary guard buffer.
  inc de                  ; Point de at the first graphic byte of the tile in
                          ; the temporary guard buffer.
  ld b,$08                ; Copy the maze background tile's graphic bytes into
CPMAZETILE_0:
  ld a,(hl)               ; the temporary guard buffer.
  ld (de),a               ;
  inc de                  ;
  inc h                   ;
  djnz CPMAZETILE_0       ;
  inc l                   ; Point hl at the first graphic byte of the next maze
  jr z,CPMAZETILE_1       ; background tile to the right.
  ld a,h                  ;
  sub $08                 ;
  ld h,a                  ;
CPMAZETILE_1:
  ret
; There is a guard sprite tile at this location.
CPMAZETILE_2:
  ld a,$3e                ; Set the background tile attribute byte (INK 6:
  ld (de),a               ; PAPER 7).
  inc de                  ; Point de at the first graphic byte of the tile in
                          ; the temporary guard buffer.
  ld b,$08                ; Clear out the background tile in the temporary
  ld a,$00                ; guard buffer. Doing this means that, in some
CPMAZETILE_3:
  ld (de),a               ; situations, the guard will eat the flowers or fruit
  inc de                  ; in his path.
  djnz CPMAZETILE_3       ;
  inc l                   ; Point hl at the first graphic byte of the next maze
  ret nz                  ; background tile to the right.
  ld a,h                  ;
  add a,$08               ;
  ld h,a                  ;
  ret

; Check the tiles next to Horace or a guard
;
; Used by the routines at READKEYS, MVSPRITES and MVGUARD.
;
;   a Sprite animation frame
;   hl Sprite location
; O:a 1 (tunnel entrance), 2 (maze exit/entrance), 3 (wall), or 0 (none of
;     these)
CHKTILES:
  push bc                 ; Save bc.
  push de                 ; Save de.
  push hl                 ; Save the sprite location.
  ld bc,$4000             ; Convert the sprite location into a display file
  add hl,bc               ; address.
  call INFRONT            ; Set hl to the display file address of the tile in
                          ; front of the sprite.
  call ATTRADDR           ; Set hl' to the corresponding attribute file
                          ; address.
  exx                     ; Exchange registers.
  ld e,$00                ; e' will hold the indicator of any interesting tiles
                          ; at this location; initialise it now.
  call IDTILE             ; Check the top-left tile.
  inc hl                  ; Point hl' at the top-right tile.
  call IDTILE             ; Check the top-right tile.
  ld bc,$001f             ; Point hl' at the bottom-left tile.
  add hl,bc               ;
  call IDTILE             ; Check the bottom-left tile.
  inc hl                  ; Point hl' at the bottom-right tile.
  call IDTILE             ; Check the bottom-right tile.
  ld a,e                  ; Copy the tile indicator to a.
  exx                     ; Exchange registers.
  pop hl                  ; Restore the sprite location to hl.
  pop de                  ; Restore de.
  pop bc                  ; Restore bc.
  cp $ff                  ; Is the sprite facing a wall tile?
  jr nz,CHKTILES_0        ; Jump if not.
  ld a,$03                ; Signal: sprite is facing a wall tile.
  ret
CHKTILES_0:
  and $0a                 ; Return with a=1 if the sprite is facing a tunnel
  rrc a                   ; entrance.
  cp $01                  ;
  ret z                   ;
  rrc a                   ; Now a=2 if the sprite is facing the maze
                          ; exit/entrance, or 0 otherwise.
  ret

; Identify a tile in front of a sprite
;
; Used by the routine at CHKTILES.
;
;   e Previous tile indicator
;   hl Attribute file address for the tile
; O:e Updated tile indicator
IDTILE:
  ld a,e                  ; Copy the previous tile indicator to a.
  cp $ff                  ; Have we already found a wall tile?
  ret z                   ; Return if so.
  ld a,(hl)               ; Pick up the tile's attribute byte.
  cp $3d                  ; Is it a wall tile?
  jr nz,IDTILE_0          ; Jump if not.
  ld e,$ff                ; Signal: wall tile found.
  ret
IDTILE_0:
  cp $3f                  ; Is it a tunnel entrance?
  jr nz,IDTILE_1          ; Jump if not.
  ld a,$01                ; Record the number of tunnel entrance tiles found so
  add a,e                 ; far in bits 0 and 1 of e.
  ld e,a                  ;
  ret
IDTILE_1:
  cp $38                  ; Is it an arrow tile (maze entrance/exit)?
  ret nz                  ; Return if not.
  ld a,$04                ; Record the number of arrow tiles found so far in
  add a,e                 ; bits 2 and 3 of e.
  ld e,a                  ;
  ret

; Get the location of the tile in front of a sprite
;
; Used by the routines at MVSPRITES, MVGUARD and CHKTILES.
;
;   a Sprite animation frame
;   hl Sprite location
; O:hl Location of the tile in front of the sprite
INFRONT:
  and $03                 ; Keep only bits 0 and 1 of the animation frame
                          ; (which indicate the direction that the sprite is
                          ; facing). (This instruction is redundant.)
  cp $00                  ; Is the sprite facing up?
  jr z,INFRONT_0          ; Jump if so.
  cp $01                  ; Is the sprite facing right?
  jr z,INFRONT_1          ; Jump if so.
  cp $02                  ; Is the sprite facing down?
  jr z,INFRONT_2          ; Jump if so.
; The sprite is facing left.
  dec l                   ; Point hl at the tile to the left of the sprite's
                          ; current location.
  jr nc,INFRONT_3         ; This jump is always made.
  ld a,h                  ; This code is never executed.
  sub $08                 ;
  ld h,a                  ;
  jr INFRONT_3            ;
; The sprite is facing up.
INFRONT_0:
  ld a,l                  ; Point hl at the tile above the sprite's current
  sub $20                 ; location.
  ld l,a                  ;
  jr nc,INFRONT_3         ;
  ld a,h                  ;
  sub $08                 ;
  ld h,a                  ;
  jr INFRONT_3
; The sprite is facing right.
INFRONT_1:
  inc l                   ; Point hl at the tile to the right of the sprite's
  jr nz,INFRONT_3         ; current location.
  ld a,h                  ;
  add a,$08               ;
  ld h,a                  ;
  jr INFRONT_3
; The sprite is facing down.
INFRONT_2:
  ld a,l                  ; Point hl at the tile below the sprite's current
  add a,$20               ; location.
  ld l,a                  ;
  jr nc,INFRONT_3         ;
  ld a,h                  ;
  add a,$08               ;
  ld h,a                  ;
INFRONT_3:
  ret

; Print 'HUNGRY' or 'HORACE' on the title screen
;
; Used by the routine at START.
;
; bc 160 (number of tiles to draw)
; de Display file address
; hl HUNGRY (HUNGRY) or HORACE (HORACE)
BIGWORD:
  push bc                 ; Save the tile counter.
  ld a,(hl)               ; Pick up a data byte.
  and $30                 ; Keep only bits 4 and 5.
  cp $00                  ; Are bits 4 and 5 both reset?
  jr z,BIGWORD_2          ; Jump if so.
  cp $10                  ; Is bit 4 set and bit 5 reset?
  jr z,BIGWORD_1          ; Jump if so.
  cp $20                  ; Is bit 4 reset and bit 5 set?
  jr z,BIGWORD_0          ; Jump if so.
  ld c,%11111111          ; Bits 5 and 4 of a are both set.
  jr BIGWORD_3
BIGWORD_0:
  ld c,%00001111          ; Bit 5 of a is reset and bit 4 is set.
  jr BIGWORD_3
BIGWORD_1:
  ld c,%11110000          ; Bit 5 of a is set and bit 4 is reset.
  jr BIGWORD_3
BIGWORD_2:
  ld c,%00000000          ; Bits 5 and 4 of a are both reset.
BIGWORD_3:
  ld b,$04                ; Draw the top four pixel rows of the character cell
  ld a,c                  ; using the bit pattern in c.
BIGWORD_4:
  ld (de),a               ;
  inc d                   ;
  djnz BIGWORD_4          ;
  ld a,(hl)               ; Pick up the data byte again.
  and $03                 ; Keep only bits 0 and 1.
  cp $00                  ; Are bits 0 and 1 both reset?
  jr z,BIGWORD_7          ; Jump if so.
  cp $01                  ; Is bit 0 set and bit 1 reset?
  jr z,BIGWORD_6          ; Jump if so.
  cp $02                  ; Is bit 0 reset and bit 1 set?
  jr z,BIGWORD_5          ; Jump if so.
  ld c,%11111111          ; Bits 1 and 0 of a are both set.
  jr BIGWORD_8
BIGWORD_5:
  ld c,%00001111          ; Bit 1 of a is reset and bit 0 is set.
  jr BIGWORD_8
BIGWORD_6:
  ld c,%11110000          ; Bit 1 of a is set and bit 0 is reset.
  jr BIGWORD_8
BIGWORD_7:
  ld c,%00000000          ; Bits 1 and 0 of a are both reset.
BIGWORD_8:
  ld b,$04                ; Draw the bottom four pixel rows of the character
  ld a,c                  ; cell using the bit pattern in c.
BIGWORD_9:
  ld (de),a               ;
  inc d                   ;
  djnz BIGWORD_9          ;
  inc e                   ; Set de to the display file address of the next cell
  jr z,BIGWORD_10         ; to the right.
  ld a,d                  ;
  sub $08                 ;
  ld d,a                  ;
BIGWORD_10:
  inc hl                  ; Point hl at the next data byte.
  pop bc                  ; Restore the tile counter to bc.
  dec bc                  ; Decrement the tile counter.
  ld a,b                  ; Is it zero now?
  or c                    ;
  jr nz,BIGWORD           ; Jump back if not.
  ret

; Guard countdown timers
;
; Initialised by the routine at INITGCT, and used by the routines at MVSPRITES,
; REDRAW, DRAWGUARDS, CHKHIT, DEAD, CHKLUNCH and DECGTIMERS. When a guard's
; countdown timer reaches 0, the guard is brought into play.
GUARD1CT:
  defw $0000              ; Guard 1.
GUARD2CT:
  defw $0000              ; Guard 2.
GUARD3CT:
  defw $0000              ; Guard 3.
GUARD4CT:
  defw $0000              ; Guard 4.

; Guard panic timer
;
; Initialised by the routine at START, and used by the routines at MVGUARD,
; DRAWGUARD, CHKHIT and DRAWBELL. Holds a non-zero value when the guards are
; panicking.
GUARDPT:
  defw $0000

; Temporary store for a guard's screen x- and y-coordinates
;
; Used by the routine at MVGUARD.
TEMPXY:
  defb $00                ; x-coordinate.
  defb $00                ; y-coordinate.

; Temporary store for direction probability parameters
;
; Used by the routine at READKEYS (when moving Horace in demo mode) and MVGUARD
; (when moving a guard).
TEMPDPP:
  defb $00                ; Up.
  defb $00                ; Right.
  defb $00                ; Down.
  defb $00                ; Left.

; Buffer address of the guard currently being handled
;
; Used by the routines at COPYGUARD and UPDTGUARD.
GBUFADDR:
  defw $0000

; Temporary guard buffer
;
; The contents of a guard's buffer (see GUARD1BUF) are copied here by the
; routine at COPYGUARD whenever the guard needs to be moved, drawn or otherwise
; examined. After that, the updated contents are copied back to the original
; location by the routine at UPDTGUARD.
GUARDLOC:
  defw $0000              ; Current location. Used by the routines at START,
                          ; MVGUARD, REDRAWG, DRAWGUARD, CHKHIT, COPYGUARD and
                          ; UPDTGUARD.
GUARDAF:
  defb $00                ; Animation frame. Used by the routines at MVGUARD,
                          ; DRAWGUARD, CHKHIT and DRAWBELL.
GUARDTIMER:
  defb $00                ; Animation frame timer. Used by the routine at
                          ; DRAWGUARD.
GUARDNLOC:
  defw $0000              ; New location. Used by the routines at START,
                          ; MVGUARD, REDRAWG, DRAWGUARD and CHKHIT.
GUARDDELAY:
  defb $00                ; Return delay counter. Used by the routines at
                          ; MVGUARD, DRAWGUARD, CHKHIT, DEAD and DROPLUNCH.
GUARDBG:
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; Maze background tiles at the
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; guard's location. Used by the
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; routines at START, REDRAWG,
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ; DROPLUNCH and CPMAZEBG.

; Guard buffers
;
; Used by the routines at COPYGUARD and UPDTGUARD. See GUARDLOC for a
; description of the contents of a guard's buffer.
GUARD1BUF:
  defw $0000                               ; Guard 1.
  defb $00                                 ;
  defb $00                                 ;
  defw $0000                               ;
  defb $00                                 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
GUARD2BUF:
  defw $0000                               ; Guard 2.
  defb $00                                 ;
  defb $00                                 ;
  defw $0000                               ;
  defb $00                                 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
GUARD3BUF:
  defw $0000                               ; Guard 3.
  defb $00                                 ;
  defb $00                                 ;
  defw $0000                               ;
  defb $00                                 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
GUARD4BUF:
  defw $0000                               ; Guard 4.
  defb $00                                 ;
  defb $00                                 ;
  defw $0000                               ;
  defb $00                                 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00 ;

; Data for the word 'HUNGRY' on the title screen
;
; Used by the routine at BIGWORD.
;
; Each byte here determines the bit pattern that is drawn in a single tile.
; Bits 4 and 5 determine the pattern in the upper half of the tile, and bits 0
; and 1 determine the pattern in the lower half.
HUNGRY:
  defb $33,$11,$00,$33,$11,$22,$33,$00 ; First row of tiles.
  defb $22,$33,$00,$33,$11,$00,$33,$11 ;
  defb $00,$23,$31,$33,$01,$00,$33,$31 ;
  defb $32,$13,$00,$22,$33,$00,$22,$33 ;
  defb $33,$11,$00,$33,$11,$22,$33,$00 ; Second row of tiles.
  defb $22,$33,$00,$33,$33,$01,$33,$11 ;
  defb $22,$33,$00,$20,$30,$00,$33,$11 ;
  defb $00,$33,$11,$22,$33,$00,$22,$33 ;
  defb $33,$13,$03,$33,$11,$22,$33,$00 ; Third row of tiles.
  defb $22,$33,$00,$33,$31,$33,$33,$11 ;
  defb $22,$33,$02,$03,$03,$00,$33,$13 ;
  defb $23,$31,$00,$00,$32,$13,$33,$10 ;
  defb $33,$11,$00,$33,$11,$22,$33,$00 ; Fourth row of tiles.
  defb $22,$33,$00,$33,$11,$20,$33,$11 ;
  defb $22,$33,$00,$22,$33,$00,$33,$31 ;
  defb $33,$01,$00,$00,$00,$33,$11,$00 ;
  defb $33,$11,$00,$33,$11,$00,$32,$13 ; Fifth row of tiles.
  defb $33,$10,$00,$33,$11,$00,$33,$11 ;
  defb $00,$32,$13,$33,$10,$00,$33,$11 ;
  defb $20,$33,$01,$00,$00,$33,$11,$00 ;

; Data for the word 'HORACE' on the title screen
;
; Used by the routine at BIGWORD.
;
; Each byte here determines the bit pattern that is drawn in a single tile.
; Bits 4 and 5 determine the pattern in the upper half of the tile, and bits 0
; and 1 determine the pattern in the lower half.
HORACE:
  defb $33,$11,$00,$33,$11,$00,$23,$31 ; First row of tiles.
  defb $33,$01,$00,$33,$31,$32,$13,$00 ;
  defb $00,$23,$31,$33,$01,$00,$02,$33 ;
  defb $32,$13,$00,$22,$33,$30,$30,$10 ;
  defb $33,$11,$00,$33,$11,$22,$33,$00 ; Second row of tiles.
  defb $22,$33,$00,$33,$11,$00,$33,$11 ;
  defb $22,$33,$00,$22,$33,$00,$33,$11 ;
  defb $00,$30,$10,$22,$33,$00,$00,$00 ;
  defb $33,$13,$03,$33,$11,$22,$33,$00 ; Third row of tiles.
  defb $22,$33,$00,$33,$13,$23,$31,$00 ;
  defb $22,$33,$03,$23,$33,$00,$33,$11 ;
  defb $00,$00,$00,$22,$33,$03,$01,$00 ;
  defb $33,$11,$00,$33,$11,$22,$33,$00 ; Fourth row of tiles.
  defb $22,$33,$00,$33,$31,$33,$01,$00 ;
  defb $22,$33,$00,$22,$33,$00,$33,$11 ;
  defb $00,$03,$01,$22,$33,$00,$00,$00 ;
  defb $33,$11,$00,$33,$11,$00,$32,$13 ; Fifth row of tiles.
  defb $33,$10,$00,$33,$11,$20,$33,$01 ;
  defb $22,$33,$00,$22,$33,$00,$20,$33 ;
  defb $23,$31,$00,$22,$33,$03,$03,$01 ;

; Tunnel offset and bell, initial guard and entrance locations for the current
; maze
;
; Used by the routines at START, MVSPRITES, MVGUARD, CHKHIT, DRAWBELL and
; CPMAZEDATA. The values here are copied from MAZE1DATA, MAZE2DATA, MAZE3DATA
; or MAZE4DATA.
CMTUNNEL:
  defw $0000              ; Tunnel offset.
CMBELLLOC:
  defw $0000              ; Bell location.
CMINITGL:
  defw $0000              ; Initial guard location.
CMENTRANCE:
  defw $0000              ; Entrance location.

; Tunnel offset and bell, initial guard and entrance locations for maze 1
;
; Used by the routine at START.
MAZE1DATA:
  defw $f800              ; Tunnel offset (up 8 tiles).
  defw $106a              ; Bell location: (x,y)=(10,19).
  defw $0895              ; Initial guard location: (x,y)=(21,12).
  defw $08a1              ; Entrance location: (x,y)=(1,13).

; Tunnel offset and bell, initial guard and entrance locations for maze 2
;
; Used by the routine at START.
MAZE2DATA:
  defw $1060              ; Tunnel offset (down 19 tiles).
  defw $00fc              ; Bell location: (x,y)=(28,7).
  defw $1010              ; Initial guard location: (x,y)=(16,16).
  defw $0841              ; Entrance location: (x,y)=(1,10).

; Tunnel offset and bell, initial guard and entrance locations for maze 3
;
; Used by the routine at START.
MAZE3DATA:
  defw $0000              ; Tunnel offset (no tunnel in this maze).
  defw $00bd              ; Bell location: (x,y)=(29,5).
  defw $082c              ; Initial guard location: (x,y)=(12,9).
  defw $10a1              ; Entrance location: (x,y)=(1,21).

; Tunnel offset and bell, initial guard and entrance locations for maze 4
;
; Used by the routine at START.
MAZE4DATA:
  defw $0fe0              ; Tunnel offset (down 15 tiles).
  defw $007d              ; Bell location: (x,y)=(29,3).
  defw $086f              ; Initial guard location: (x,y)=(15,11).
  defw $0061              ; Entrance location: (x,y)=(1,3).

; Maze 2 layout
;
; Used by the routine at DRAWMAZE.
MAZE2:
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$09,$09,$04
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$04
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $05,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$04,$00,$00,$04
  defb $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$06,$00
  defb $04,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$02,$04,$00,$00,$04
  defb $00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$02,$04,$00
  defb $04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$04
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00
  defb $04,$00,$00,$05,$01,$01,$01,$01,$01,$01,$00,$00,$04,$00,$00,$04
  defb $00,$00,$04,$00,$00,$04,$00,$00,$01,$01,$01,$01,$00,$00,$04,$00
  defb $04,$00,$02,$04,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$02,$00
  defb $00,$02,$04,$00,$02,$04,$00,$02,$00,$00,$02,$00,$00,$00,$04,$00
  defb $04,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$04,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00
  defb $04,$00,$00,$04,$00,$00,$05,$01,$01,$01,$01,$01,$01,$01,$01,$01
  defb $00,$00,$04,$00,$00,$07,$01,$01,$01,$01,$01,$01,$01,$01,$08,$00
  defb $03,$00,$00,$04,$00,$02,$04,$00,$02,$00,$00,$02,$00,$00,$02,$00
  defb $00,$02,$04,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$00,$03,$00
  defb $03,$00,$00,$04,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00
  defb $04,$00,$00,$04,$00,$00,$04,$00,$00,$05,$01,$01,$01,$01,$01,$01
  defb $00,$00,$04,$00,$00,$01,$01,$01,$06,$00,$00,$04,$00,$00,$04,$00
  defb $04,$00,$02,$04,$00,$02,$04,$00,$02,$04,$00,$02,$00,$00,$02,$00
  defb $00,$02,$04,$00,$02,$00,$00,$02,$04,$00,$02,$04,$00,$02,$04,$00
  defb $04,$00,$00,$04,$00,$00,$04,$00,$00,$04,$00,$00,$00,$00,$00,$00
  defb $00,$00,$04,$00,$00,$00,$00,$00,$04,$00,$00,$04,$00,$00,$04,$00
  defb $04,$00,$00,$04,$00,$00,$04,$00,$00,$04,$00,$00,$05,$01,$01,$01
  defb $00,$00,$04,$00,$00,$04,$00,$00,$04,$00,$00,$04,$00,$00,$04,$00
  defb $04,$00,$02,$04,$00,$02,$00,$00,$02,$04,$00,$02,$04,$00,$02,$00
  defb $00,$02,$00,$00,$02,$04,$00,$02,$00,$00,$02,$04,$00,$02,$04,$00
  defb $04,$00,$00,$04,$00,$00,$00,$00,$00,$04,$00,$00,$04,$00,$00,$00
  defb $00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$04,$00,$00,$04,$00
  defb $04,$00,$00,$07,$01,$01,$01,$01,$01,$08,$00,$00,$04,$00,$00,$04
  defb $00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$08,$00,$00,$04,$00
  defb $04,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$02,$04,$00,$00,$04
  defb $00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$02,$04,$00
  defb $04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$04
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00
  defb $07,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$04,$00,$00,$04
  defb $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$08,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$04
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$09,$09,$04
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; Maze 1 layout
;
; Used by the routine at DRAWMAZE.
MAZE1:
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $05,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
  defb $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$06,$00
  defb $04,$00,$02,$00,$00,$02,$00,$00,$02,$04,$00,$02,$00,$00,$02,$00
  defb $00,$02,$00,$00,$02,$04,$00,$02,$00,$00,$02,$00,$00,$02,$04,$00
  defb $04,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00
  defb $04,$00,$00,$05,$01,$01,$01,$00,$00,$04,$00,$00,$01,$01,$01,$01
  defb $00,$00,$00,$00,$00,$04,$00,$00,$01,$01,$01,$06,$00,$00,$04,$00
  defb $04,$00,$02,$04,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$02,$00
  defb $00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$02,$04,$00,$02,$04,$00
  defb $04,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$04,$00
  defb $04,$00,$00,$04,$00,$00,$05,$01,$01,$01,$01,$01,$01,$01,$01,$06
  defb $00,$00,$05,$01,$01,$01,$01,$01,$06,$00,$00,$04,$00,$00,$04,$00
  defb $04,$00,$02,$04,$00,$02,$04,$00,$00,$00,$00,$00,$05,$01,$01,$01
  defb $01,$01,$01,$01,$01,$06,$00,$00,$04,$00,$02,$00,$00,$02,$04,$00
  defb $04,$00,$00,$04,$00,$00,$04,$00,$00,$05,$01,$01,$08,$00,$00,$00
  defb $00,$00,$00,$00,$00,$07,$01,$01,$04,$00,$00,$00,$00,$00,$04,$00
  defb $04,$00,$00,$04,$00,$00,$07,$01,$01,$08,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$07,$01,$01,$01,$00,$00,$04,$00
  defb $03,$00,$00,$04,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05
  defb $01,$01,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$04,$00
  defb $03,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$05,$01,$01,$08
  defb $09,$09,$07,$01,$01,$06,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00
  defb $04,$00,$00,$04,$00,$00,$05,$01,$01,$01,$01,$01,$08,$00,$00,$00
  defb $00,$00,$04,$00,$00,$07,$01,$01,$01,$01,$01,$01,$00,$00,$04,$00
  defb $04,$00,$02,$04,$00,$02,$04,$00,$02,$00,$00,$02,$00,$00,$02,$00
  defb $00,$02,$04,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$02,$04,$00
  defb $04,$00,$00,$04,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00
  defb $04,$00,$00,$04,$00,$00,$04,$00,$00,$05,$01,$01,$01,$01,$01,$01
  defb $01,$01,$08,$00,$00,$04,$00,$00,$01,$01,$01,$01,$00,$00,$04,$00
  defb $04,$00,$02,$00,$00,$02,$00,$00,$02,$04,$00,$00,$00,$00,$02,$00
  defb $00,$02,$00,$00,$02,$04,$00,$02,$00,$00,$02,$00,$00,$00,$03,$00
  defb $04,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00
  defb $07,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
  defb $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$08,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; Maze 3 layout
;
; Used by the routine at DRAWMAZE.
MAZE3:
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$05,$01,$01,$01,$01,$01,$01,$01,$01,$01
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05
  defb $01,$01,$01,$01,$01,$01,$08,$00,$00,$00,$00,$00,$00,$00,$00,$03
  defb $00,$00,$00,$00,$00,$00,$00,$00,$05,$01,$01,$01,$01,$01,$01,$08
  defb $00,$02,$00,$00,$02,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$03
  defb $05,$01,$01,$01,$01,$01,$01,$01,$08,$00,$00,$02,$00,$00,$02,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$01,$01,$01,$01,$01,$06
  defb $04,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$05,$01,$01,$01,$08,$00,$00,$04,$00,$00,$04
  defb $04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$01,$01,$01,$01
  defb $01,$01,$06,$00,$02,$07,$01,$01,$01,$01,$01,$06,$04,$00,$00,$04
  defb $04,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$04,$00,$00,$00,$00
  defb $00,$00,$04,$00,$00,$00,$00,$00,$02,$00,$00,$07,$08,$00,$00,$04
  defb $04,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$07,$01,$01,$01,$01
  defb $01,$01,$04,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$04
  defb $04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$02,$00
  defb $00,$00,$07,$01,$01,$01,$01,$01,$06,$00,$00,$00,$00,$00,$00,$04
  defb $07,$01,$01,$01,$01,$01,$01,$01,$06,$00,$00,$00,$00,$00,$00,$00
  defb $00,$02,$00,$00,$02,$00,$00,$00,$07,$01,$01,$01,$01,$01,$01,$04
  defb $00,$00,$00,$00,$00,$00,$00,$00,$07,$01,$01,$01,$01,$01,$01,$06
  defb $00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$02,$00,$00,$02,$04
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07
  defb $01,$01,$01,$01,$01,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$04,$01,$01,$01,$01,$01,$01,$01,$00,$00,$04
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$01
  defb $01,$01,$01,$01,$01,$08,$00,$00,$02,$00,$00,$02,$00,$00,$02,$04
  defb $00,$00,$00,$00,$00,$00,$00,$05,$01,$01,$01,$01,$01,$01,$08,$00
  defb $00,$02,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04
  defb $05,$01,$01,$01,$01,$01,$01,$08,$00,$00,$00,$02,$00,$00,$02,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$05,$01,$01,$01,$01,$01,$01,$04
  defb $04,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00
  defb $00,$05,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$04
  defb $04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$01,$01,$01,$01,$01
  defb $01,$08,$00,$00,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$02,$04
  defb $04,$00,$00,$05,$01,$01,$01,$01,$01,$01,$04,$00,$00,$00,$02,$00
  defb $00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04
  defb $04,$00,$00,$07,$01,$01,$01,$01,$01,$01,$08,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$04
  defb $03,$00,$00,$00,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$02,$04
  defb $03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$01,$01
  defb $01,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04
  defb $07,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$08,$00,$00
  defb $00,$07,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$08

; Maze 4 layout
;
; Used by the routine at DRAWMAZE.
MAZE4:
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
  defb $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$06
  defb $03,$00,$00,$04,$09,$09,$04,$00,$00,$00,$00,$00,$00,$00,$02,$00
  defb $00,$02,$00,$00,$00,$00,$00,$00,$00,$04,$09,$09,$04,$00,$00,$04
  defb $03,$00,$00,$04,$00,$00,$04,$00,$00,$00,$00,$02,$00,$00,$00,$00
  defb $00,$00,$00,$00,$02,$00,$00,$00,$00,$04,$00,$00,$04,$00,$00,$04
  defb $04,$00,$00,$04,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$04,$00,$00,$04
  defb $04,$00,$00,$04,$00,$00,$04,$00,$00,$02,$00,$00,$00,$00,$02,$00
  defb $00,$02,$00,$00,$00,$00,$00,$02,$00,$04,$00,$00,$04,$00,$00,$04
  defb $04,$00,$00,$04,$00,$00,$04,$00,$00,$00,$00,$05,$06,$00,$00,$00
  defb $00,$00,$00,$05,$06,$00,$00,$00,$00,$04,$00,$00,$04,$00,$00,$04
  defb $04,$00,$00,$04,$00,$00,$04,$00,$00,$00,$00,$07,$08,$00,$00,$00
  defb $00,$00,$00,$07,$08,$00,$00,$00,$00,$04,$00,$00,$04,$00,$00,$04
  defb $04,$00,$00,$04,$00,$00,$04,$00,$02,$00,$00,$02,$00,$00,$00,$00
  defb $00,$00,$00,$00,$02,$00,$00,$00,$02,$04,$00,$00,$00,$00,$00,$04
  defb $04,$00,$00,$04,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$04
  defb $04,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$01,$01,$06,$00,$00,$04
  defb $04,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$04
  defb $04,$00,$00,$07,$01,$01,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$04
  defb $04,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$02,$00,$00,$00,$00
  defb $00,$00,$00,$00,$02,$00,$00,$00,$00,$04,$00,$00,$04,$00,$00,$04
  defb $04,$00,$00,$00,$00,$00,$04,$00,$02,$00,$00,$05,$06,$00,$00,$00
  defb $00,$00,$00,$05,$06,$00,$00,$00,$02,$04,$00,$00,$04,$00,$00,$04
  defb $07,$01,$01,$06,$00,$00,$04,$00,$00,$00,$00,$07,$08,$00,$00,$00
  defb $00,$00,$00,$07,$08,$00,$00,$00,$00,$04,$00,$00,$04,$00,$00,$04
  defb $00,$00,$00,$04,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$02,$00
  defb $00,$02,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$04,$00,$00,$04
  defb $00,$00,$00,$04,$00,$00,$04,$00,$00,$02,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$02,$00,$04,$00,$00,$04,$00,$00,$04
  defb $00,$00,$00,$04,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$04,$00,$00,$04
  defb $00,$00,$00,$04,$00,$00,$04,$00,$00,$00,$00,$02,$00,$00,$00,$00
  defb $00,$00,$00,$00,$02,$00,$00,$00,$00,$04,$00,$00,$04,$00,$00,$03
  defb $00,$00,$00,$04,$09,$09,$04,$00,$00,$00,$00,$00,$00,$00,$02,$00
  defb $00,$02,$00,$00,$00,$00,$00,$00,$00,$04,$09,$09,$04,$00,$00,$03
  defb $00,$00,$00,$07,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
  defb $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; Maze tiles
;
; Used by the routine at DRAWMAZE.
MAZETILES:
  defb $00,$00,$00,$00,$00,$00,$00,$00
  defb $00,$ff,$ff,$00,$00,$ff,$ff,$00
  defb $00,$00,$00,$20,$f8,$50,$f8,$20
  defb $00,$18,$0c,$06,$7f,$06,$0c,$18
  defb $66,$66,$66,$66,$66,$66,$66,$66
  defb $00,$7f,$7f,$60,$60,$67,$67,$66
  defb $00,$fe,$fe,$06,$06,$e6,$e6,$66
  defb $66,$67,$67,$60,$60,$7f,$7f,$00
  defb $66,$e6,$e6,$06,$06,$fe,$fe,$00
  defb $00,$00,$00,$00,$00,$00,$00,$00

; PASSES   SCORE       BEST
;
; Used by the routine at START.
STATUS:
  defm "PASSES   SCORE       BEST"
  defb $ff                ; End marker.

; Sprite movement timer
;
; Initialised by the routine at START, and used by the routine at MVSPRITES.
; Decremented on each pass through the main loop; when it reaches zero, Horace
; and the guards are moved.
MVTIMER:
  defb $00

; Game speed parameter (1-8)
;
; Initialised to 8 by the routine at START and decremented every time Horace
; returns to maze 1 via maze 4. Also used by the routines at MVSPRITES,
; MVGUARD, DRAWBELL, RINGBELL and INITGCT. The value here determines the speed
; at which the game runs.
SPEED:
  defb $00

; Current maze number
;
; Initialised to 255 by the routine at START just before a game starts. Holds
; 0, 1, 2 or 3 while a game is in progress.
MAZENO:
  defb $00

; Redundant temporary variable
;
; Used by the routine at MVGUARD.
TEMPVAR:
  defb $00

; Lunch-drop countdown timer
;
; Initialised by the routine at START, and used by the routine at DROPLUNCH.
; When this timer reaches zero, one of the guards will drop his lunch.
LUNCHCT:
  defw $0000

; Address of the next pseudo-random number
;
; Initialised by the routine at START, and used by the routine at RANDOM.
; Always holds a value between 0 and 0x1fff.
RANDADDR:
  defw $0000

; Sound on/off indicator
;
; Initialised by the routine at START, and used by the routines at MVSPRITES,
; CHKEATEN, CHKHIT, DEAD, TOGGLESND, RINGBELL and TITLESOUND. Holds 00011111
; binary if the sound is on, or 00000111 binary otherwise.
SOUND:
  defb $00

; 'T' pressed indicator
;
; Initialised by the routine at START, and used by the routine at TOGGLESND.
; Holds 0 if 'T' was being pressed the last time it was checked, or 16
; otherwise.
TPRESS:
  defb $00

; Horace's current location
;
; Initialised by the routine at START, and used by the routines at READKEYS,
; MVSPRITES, MVGUARD, REDRAW, DEAD, DRAWHORACE and DRAWBELL. Holds the display
; file address minus 0x4000.
HORACELOC:
  defw $0000

; Horace's new location
;
; Initialised by the routine at START, and used by the routines at MVSPRITES,
; REDRAW, CHKEATEN, CHKHIT and DRAWHORACE. Holds the display file address minus
; 0x4000.
HORACENLOC:
  defw $0000

; Temporary store for direction keypress
;
; Used by the routine at READKEYS.
DIRKEY:
  defb $00

; Horace's animation frame (0-3)
;
; Initialised by the routine at START, and used by the routines at READKEYS,
; MVSPRITES and DRAWHORACE.
HORACEAF:
  defb $00

; Horace's attribute byte
;
; Initialised by the routine at START, and used by the routines at DEAD and
; DRAWHORACE.
HORACEATTR:
  defb $00

; Horace's walking animation timer
;
; Used by the routine at DRAWHORACE. Incremented whenever Horace is drawn; bit
; 4 determines which set of animation frames (see HORACE0) is used: 0-3 if it's
; set, or 4-7 otherwise.
HORACETIME:
  defb $00

; Score
;
; Initialised by the routine at START, and used by the routines at CHKEATEN,
; CHKHIT, DEAD and DRAWBELL.
SCORE:
  defw $0000

; High score
;
; Used by the routines at START and DEAD.
HISCORE:
  defw $0000

; Extra life indicator
;
; Initialised by the routine at START, and used by the routine at CHKEATEN.
; Holds INT(S/10000)+2, where 'S' is the current score. When this value
; changes, Horace gets a new life.
ELIFEIND:
  defb $00

; Number of lives remaining
;
; Initialised by the routine at START, and used by the routines at CHKEATEN and
; DEAD.
LIVES:
  defb $00

; Tunnel timer
;
; Used by the routines at READKEYS, MVSPRITES, CHKEATEN, DEAD and DRAWHORACE.
; Holds a non-zero value when Horace is in a tunnel.
TUNNELTIME:
  defb $00

; Temporary store for Horace's screen x- and y-coordinates
;
; Used by the routine at MVGUARD.
TEMPHXY:
  defb $00                ; x-coordinate.
  defb $00                ; y-coordinate.

; Cherry and strawberry graphics
;
; Used by the routine at DROPLUNCH.
CHERRY:
  defb $3c,$00,$00,$01,$01,$02,$02,$02,$01 ;
  defb $3c,$60,$c0,$e0,$60,$20,$00,$00,$00 ;
  defb $3a,$06,$0e,$0f,$0f,$07,$03,$00,$00 ;
  defb $3a,$c0,$e0,$e0,$e0,$c0,$80,$00,$00 ;
STRAWBERRY:
  defb $3c,$00,$00,$00,$00,$10,$1c,$0e,$03 ;
  defb $3c,$00,$00,$00,$00,$00,$38,$f0,$c0 ;
  defb $3a,$1e,$17,$1d,$1f,$0d,$07,$03,$00 ;
  defb $3a,$78,$e8,$78,$d8,$f0,$60,$c0,$00 ;

; Bell location
;
; Initialised by the routine at START, and used by the routines at DRAWBELL and
; RINGBELL. Holds the location of the bell in the current maze, or zero if
; Horace has sounded the alarm.
BELLLOC:
  defw $0000

; Bell animation frame counter
;
; Used by the routines at DRAWBELL and RINGBELL. Incremented on each pass
; through the main loop; its value determines which bell animation frame is
; used (see BELL), and also the bell sound effect.
BELLANIMFC:
  defb $00

; Horace graphics
;
; Used by the routine at DRAWHORACE.
HORACE0:
  defb $0f,$1f,$7f,$7f,$ff,$9f,$e7,$78 ;
  defb $e0,$f8,$fe,$fe,$ff,$f1,$8f,$7e ;
  defb $7f,$3b,$18,$18,$38,$3c,$44,$7c ;
  defb $d8,$d8,$1c,$24,$7c,$00,$00,$00 ;
  defb $0f,$3f,$7f,$fc,$f8,$b8,$98,$9d ;
  defb $f8,$fc,$fe,$73,$73,$63,$e6,$ee ;
  defb $0f,$23,$3f,$33,$1e,$02,$00,$00 ;
  defb $fc,$bc,$9e,$8e,$0c,$1c,$12,$3f ;
  defb $07,$1f,$7f,$61,$c0,$e0,$f3,$7f ;
  defb $f0,$f8,$fe,$c6,$c3,$c3,$e3,$fe ;
  defb $1b,$1b,$38,$24,$3e,$00,$00,$00 ;
  defb $fe,$dc,$18,$18,$1c,$34,$22,$3e ;
  defb $1f,$3f,$7f,$cc,$ce,$46,$77,$3f ;
  defb $e0,$f8,$fe,$3e,$1f,$1f,$1f,$b9 ;
  defb $1f,$0e,$0c,$1d,$15,$3c,$01,$03 ;
  defb $f9,$f0,$e0,$c0,$c0,$e0,$30,$e0 ;
  defb $07,$1f,$7f,$7f,$ff,$8f,$f1,$7e ;
  defb $f0,$f8,$fe,$fe,$ff,$f9,$e7,$1e ;
  defb $1b,$1b,$38,$24,$3e,$00,$00,$00 ;
  defb $fe,$dc,$18,$18,$1c,$3c,$22,$3e ;
  defb $07,$1f,$7f,$7c,$f8,$f8,$f8,$9d ;
  defb $f8,$fc,$fe,$33,$73,$62,$ee,$fc ;
  defb $9f,$0f,$07,$03,$03,$07,$0c,$07 ;
  defb $f8,$70,$30,$b8,$a8,$3c,$80,$c0 ;
  defb $0f,$1f,$7f,$63,$c3,$c3,$c7,$7f ;
  defb $e0,$f8,$fe,$86,$03,$07,$cf,$fe ;
  defb $7f,$3b,$18,$18,$38,$2c,$44,$7c ;
  defb $d8,$d8,$1c,$24,$7c,$00,$00,$00 ;
  defb $1f,$3f,$7f,$ce,$ce,$c6,$67,$77 ;
  defb $f0,$fc,$fe,$3f,$1f,$1d,$19,$b9 ;
  defb $3f,$3d,$79,$71,$30,$38,$48,$fc ;
  defb $f0,$c4,$fc,$cc,$78,$40,$00,$00 ;

; Guard graphics
;
; Used by the routine at DRAWGUARD.
GUARD0:
  defb $1f,$3f,$3f,$3f,$4f,$71,$7e,$7f ;
  defb $f8,$fc,$fc,$fc,$fa,$c6,$3e,$fe ;
  defb $5f,$5f,$3f,$3f,$1f,$0f,$07,$03 ;
  defb $fa,$fa,$fc,$fc,$f8,$f0,$e0,$c0 ;
  defb $1f,$3f,$3f,$3f,$3f,$3c,$7c,$4c ;
  defb $e0,$f0,$f0,$f8,$ff,$44,$44,$ee ;
  defb $5c,$5e,$6f,$3f,$3f,$1f,$1f,$07 ;
  defb $ee,$22,$fc,$f8,$b8,$80,$f8,$c0 ;
  defb $1f,$3f,$3f,$3f,$7f,$63,$41,$66 ;
  defb $f8,$fc,$fc,$fc,$fe,$8e,$86,$9a ;
  defb $76,$79,$3f,$3f,$1f,$0c,$07,$03 ;
  defb $da,$e6,$fc,$fc,$f8,$30,$e0,$c0 ;
  defb $07,$0f,$0f,$1f,$ff,$22,$22,$5d ;
  defb $f8,$fc,$fc,$fc,$fc,$3c,$3e,$f2 ;
  defb $5d,$44,$3f,$1f,$1f,$11,$1f,$03 ;
  defb $fa,$7a,$f6,$fc,$fc,$f8,$f8,$e0 ;
  defb $1f,$3f,$3f,$3f,$5f,$63,$7c,$7f ;
  defb $f8,$fc,$fc,$fc,$f2,$8e,$7e,$fe ;
  defb $5f,$5f,$3f,$3f,$1f,$0f,$07,$03 ;
  defb $fa,$fa,$fc,$fc,$f8,$f0,$e0,$c0 ;
  defb $1f,$3f,$3f,$3f,$3f,$3c,$7c,$4f ;
  defb $e0,$f0,$f0,$f8,$ff,$44,$44,$ba ;
  defb $5f,$5e,$6f,$3f,$3f,$1f,$1f,$07 ;
  defb $ba,$22,$fc,$f8,$f8,$88,$f8,$c0 ;
  defb $1f,$3f,$3f,$3f,$7f,$71,$61,$59 ;
  defb $f8,$fc,$fc,$fc,$fe,$c6,$82,$66 ;
  defb $5b,$67,$3f,$3f,$18,$0c,$06,$03 ;
  defb $6e,$9e,$fc,$fc,$18,$30,$60,$c0 ;
  defb $07,$0f,$0f,$1f,$ff,$22,$22,$77 ;
  defb $f8,$fc,$fc,$fc,$fc,$3c,$3e,$32 ;
  defb $77,$44,$3f,$1f,$1d,$01,$1f,$03 ;
  defb $3a,$7a,$f6,$fc,$fc,$f8,$f8,$e0 ;
  defb $88,$c8,$4c,$66,$37,$a4,$a0,$e6 ;
  defb $40,$60,$60,$c6,$cc,$3c,$09,$c7 ;
  defb $46,$60,$21,$23,$16,$0c,$06,$03 ;
  defb $c2,$06,$84,$cc,$68,$30,$60,$c0 ;
  defb $c4,$44,$66,$26,$37,$b8,$a0,$e3 ;
  defb $10,$30,$60,$e7,$ce,$3c,$08,$67 ;
  defb $43,$60,$21,$23,$16,$0c,$06,$03 ;
  defb $62,$06,$84,$cc,$68,$30,$60,$c0 ;

; Bell graphics
;
; Used by the routine at DRAWBELL.
BELL:
  defb $00,$00,$00,$02,$01,$01,$01,$01 ;
  defb $00,$00,$00,$00,$e0,$f9,$fe,$fc ;
  defb $00,$00,$00,$01,$01,$00,$00,$00 ;
  defb $f0,$e0,$e0,$a0,$00,$00,$00,$00 ;
  defb $00,$00,$00,$01,$01,$01,$03,$03 ;
  defb $00,$00,$00,$00,$00,$c0,$e0,$e0 ;
  defb $03,$07,$07,$1d,$01,$00,$00,$00 ;
  defb $f0,$fc,$e0,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$03,$07,$07 ;
  defb $00,$00,$00,$80,$80,$80,$c0,$c0 ;
  defb $0f,$3f,$07,$00,$00,$00,$00,$00 ;
  defb $c0,$e0,$e0,$b8,$80,$00,$00,$00 ;
  defb $00,$00,$00,$00,$07,$9f,$7f,$3f ;
  defb $00,$00,$00,$40,$80,$80,$80,$80 ;
  defb $0f,$07,$07,$05,$00,$00,$00,$00 ;
  defb $00,$00,$00,$80,$80,$00,$00,$00 ;

; Blank sprite
;
; Used by the routines at REDRAW, DEAD and DRAWBELL.
BLANK:
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;
  defb $00,$00,$00,$00,$00,$00,$00,$00 ;

    SAVESNA "main.sna", main