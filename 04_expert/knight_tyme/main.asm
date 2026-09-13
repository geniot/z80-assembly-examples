    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48

  ORG 23296


; Space for Calculations / Storage (e.g. Scrolling Graphics)
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0

; Miscellaneous Data 1
  DEFB 0                  ; Bonus Score
  DEFW 0                  ; Temporary storage used by the routine at 54647
                          ; (Redefine Keyboard Controls)

; Unused
  DEFB 0,0

; Unknown / Unused Flag 1
  DEFB 0                  ; Unknown and unused flag in Bit 0, set in routine at
                          ; 32055, but otherwise unused.

; Score / Progress Flags (1)
;
; Bitwise flags which record Magic Knight's achievements, and are used in
; calculating percentage completion. Flags are initially reset, and each one is
; set when the corresponding action is performed.
  DEFB 0

; Table of Characters in Room of Interest
;
; List of characters in a particular room, as set by the routine at 34512
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0

; Miscellaneous Data 2
  DEFW 0                  ; Pointer to entry in Table of Display File Addresses
                          ; for pixel row at Magic Knight's current
                          ; y-coordinate
  DEFB 0                  ; Temporary store for Magic Knight's x-coordinate in
                          ; characters
  DEFB 0                  ; Temporary store for Magic Knight's x-coordinate in
                          ; characters (stored by instruction at 53173 but
                          ; otherwise unused)
  DEFB 0                  ; Temporary store for Magic Knight's y-coordinate in
                          ; pixels (stored by instruction at 53179 but
                          ; otherwise unused)
  DEFB 0                  ; Magic Knight Facing Left Flag

; Miscellaneous Data 3
  DEFB 0                  ; Temporary store for x-coordinate of left edge (of
                          ; frame, or of interior) of current window to draw
                          ; (characters) / graphic (room drawing)
  DEFB 0                  ; Temporary store for y-coordinate of top edge (of
                          ; frame, or of interior) of current window to draw
                          ; (characters) / graphic (room drawing)
  DEFB 0                  ; Temporary store for x-coordinate of right edge (of
                          ; frame, or of interior) of current window to draw
                          ; (characters), x+1 for current graphic (room
                          ; drawing)
  DEFB 0                  ; Temporary store for y-coordinate of bottom edge (of
                          ; frame, or of interior) of current window to draw
                          ; (characters), y+1 for current graphic (room
                          ; drawing)

; Unused
  DEFB 0,0,0,0

; Miscellaneous Data 4
  DEFB 0                  ; Set to index of Current Character (S3 E3 / Klink
                          ; help routine) but otherwise unused (see trivia)
  DEFB 0                  ; Remaining amount of star drive fuel in current
                          ; "unit" (each unit divided into 256 portions)

; Currently Available Destinations for "MOVE STARSHIP" Command
;
; Eight slots, populated by the routine at 31688 and used by that routine to
; display the content of the "WHERE TO ?" menu.
  DEFB 0
  DEFB 0
  DEFB 0
  DEFB 0
  DEFB 0
  DEFB 0
  DEFB 0
  DEFB 0

; Miscellaneous Data 5
  DEFB 0                  ; x-coordinate of graphic to draw
  DEFB 0                  ; y-coordinate of graphic to draw
  DEFB 0                  ; Store for room attribute, set at 27953 but
                          ; otherwise unused
  DEFW 0                  ; Store for address of graphic data
  DEFB 0                  ; Store for pixel row counter

; Vertical and Horizontal Mirror Flags
;
; Used by the routines at 52513, 52535, 52566, 52596, 52635, 52717 and 52820 in
; graphic / room drawing. When the Vertical Mirror Flag is set, the graphic is
; reflected in a vertical mirror (i.e. left and right are swapped). When the
; Horizontal Mirror Flag is set, the graphic is reflected in a horizontal
; mirror (i.e. top and bottom are swapped).
  DEFB 0

; Score / Progress Flags (2)
;
; Bitwise flags which record Magic Knight's achievements, and are used in
; calculating percentage completion. Flags are initially reset, and each one is
; set when the corresponding action is performed.
  DEFB 0

; Unused
  DEFB 0,0,0

; Miscellaneous Data 6
  DEFB 0                  ; Index of character whose turn it is to be updated
  DEFB 0                  ; Initial y-coordinate of top of hand cursor relative
                          ; to current window (characters)

; Time Data
;
; Data related to Magic Knight's time left, and also elapsed game time.
  DEFB 0                  ; Current Time Left - game days (5 real-time minutes
                          ; per game day)
  DEFB 0                  ; Minute Counter (Time Elapsed since last "day")
  DEFB 0                  ; Second Counter (Time Elapsed since last minute)
  DEFB 0                  ; 1/50 Second Counter (Time Elapsed since last
                          ; second)

; Miscellaneous Data 7
  DEFB 0                  ; Draw Communicate Window / Face Flag (0 = reset, any
                          ; other value = set)

; Unused
  DEFB 0

; Miscellaneous Data 8
  DEFB 0                  ; Magic Knight's temporary movement flags
  DEFB 0,0,0,0,0          ; Storage space for ASCII string converted from
                          ; numeric value

; Unused
  DEFB 0,0

; Miscellaneous Data 9
  DEFB 0                  ; Index of previous "Consult Oracle" text shown

; Tyme Guardians Flags
;
; Bitwise flags. The bits are as follows:
  DEFB 0

; Miscellaneous Data 10
  DEFB 0                  ; Temporary store for an object's Terrain Interaction
                          ; Parameter

; Magic Knight Movement Flags
;
; Bitwise flags which determine which direction(s) Magic Knight cannot
; currently move (i.e. set means can't move). The bits are as follows:
  DEFB 0

; Miscellaneous Data 11
  DEFB 0                  ; Height available to Menu Hand Cursor to move down
                          ; (pixels)
  DEFB 0                  ; x-coordinate of left-most character in a row of
                          ; menu text (characters)
  DEFB 0                  ; y-coordinate of "finger" on hand-cursor
                          ; (characters)
  DEFB 0                  ; Menu hand-cursor's y-coordinate (pixels)
  DEFB 0                  ; Current y-coordinate of hand cursor relative to its
                          ; starting position (pixels)

; Unknown / Unused Flag 2
  DEFB 0

; Miscellaneous Data 12
  DEFB 0                  ; Attribute of interior of current window, i.e.
                          ; background / foreground colours of contents
  DEFB 0                  ; Magic Knight's predicted x-coordinate (used in
                          ; routine at 27508)
  DEFB 0                  ; Magic Knight's predicted y-coordinate (used in
                          ; routine at 27508)
  DEFB 0                  ; Store for selected starship speed index

; Unused
  DEFB 0,0

; Miscellaneous Data 13
  DEFB 0                  ; Store for currently active keyboard press /
                          ; joystick action
; The following byte keeps track of the number of times the text printing
; routine calls itself, in printing common words as part of a higher-level
; string.
  DEFB 0                  ; Text Printing Routine Recursion Depth Counter
  DEFB 0                  ; x-coordinate of left edge of region to scroll
                          ; (characters)
  DEFB 0                  ; x-coordinate of right edge of region to scroll
                          ; (characters)
  DEFB 0                  ; y-coordinate of top of region to scroll (pixels)
  DEFB 0                  ; y-coordinate of bottom of region to scroll (pixels)
  DEFB 0                  ; x-coordinate of left edge (of frame, or of
                          ; interior) of current window to draw (characters) /
                          ; graphic (room drawing)
  DEFB 0                  ; y-coordinate of top edge (of frame, or of interior)
                          ; of current window to draw (characters) / graphic
                          ; (room drawing)
  DEFB 0                  ; x-coordinate of right edge (of frame, or of
                          ; interior) of current window to draw (characters),
                          ; x+1 for current graphic (room drawing)
  DEFB 0                  ; y-coordinate of bottom edge (of frame, or of
                          ; interior) of current window to draw (characters),
                          ; y+1 for current graphic (room drawing)

; Unused
  DEFB 0

; Attribute File address for Virtual Text Cursor
  DEFW 0

; Unused
  DEFB 0,0

; Visited Room Flags
;
; Fifty bytes, one for each room in the game. At the start of the game, these
; are all reset (i.e. zero). Each time Magic Knight enters a room for the first
; time, the flag corresponding to that room is set (to 1). These flags are used
; in calculating percentage completion.
  DEFB 0                  ; (00) - USS Pisces, 0 (The Recreation Room)
  DEFB 0                  ; (01) - USS Pisces, 1 (The Bridge)
  DEFB 0                  ; (02) - USS Pisces, 2 (The Transporter Room)
  DEFB 0                  ; (03) - USS Pisces, 3 (The Transputer Room)
  DEFB 0                  ; (04) - USS Pisces, 4 (Cargo Hold)
  DEFB 0                  ; (05) - USS Pisces, 5 (The Airlock)
  DEFB 0                  ; (06) - USS Pisces, 6 (The Life Boat)
  DEFB 0                  ; (07) - Retreat, 0 (Murphy's Moon)
  DEFB 0                  ; (08) - Retreat, 1
  DEFB 0                  ; (09) - Retreat, 2
  DEFB 0                  ; (10) - Retreat, 3
  DEFB 0                  ; (11) - Starbase 1, 0 (The Transporter Room)
  DEFB 0                  ; (12) - Starbase 1, 1 (McTablet Takeaway Food)
  DEFB 0                  ; (13) - Starbase 1, 2
  DEFB 0                  ; (14) - Starbase 1, 3
  DEFB 0                  ; (15) - Starbase 1, 4 (Fuel and Cargo Area)
  DEFB 0                  ; (16) - Outpost, 0 (Ye Olde Transporter)
  DEFB 0                  ; (17) - Outpost, 1 (The Main Defence System)
  DEFB 0                  ; (18) - Outpost, 2
  DEFB 0                  ; (19) - Outpost, 3 (The Proof of Power)
  DEFB 0                  ; (20) - Outpost, 4 (The Tyme Guardians)
  DEFB 0                  ; (21) - Monopole, 0 (Hooper's Emergency Exit)
  DEFB 0                  ; (22) - Monopole, 1 (This Way to Hooper ==>>)
  DEFB 0                  ; (23) - Monopole, 2 (Here is Hooper)
  DEFB 0                  ; (24) - USS Pisces, 6A (The Control Column)
; The following are unused, but still counted by the routine at 33657 (see
; trivia).
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0

; VARS system variable
  DEFW 0
  DEFB 0,0,0,0,0,0

; PROG system variable
  DEFW 0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0

; Interrupt Routine Flags
;
; Bitwise flags which determine which things occur upon executing the Interrupt
; Routine. The bits are as follows:
  DEFB 0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0

; Available In-Game Menu Command Flags
;
; Flags that determine which additional entries are available in Main In-Game
; Menu
  DEFB 0
  DEFB 0

; USS Pisces' Current Location
  DEFB 0

; Magic Knight's current room
  DEFB 0
  DEFB 0

; Store for Display File Address to Print Text to in Command Summary Window
  DEFW 0

; Player Attribute Update Flag
;
; +-----------------+------------------------------+
; | Value           | Effect                       |
; +-----------------+------------------------------+
; | 0               | Player Attribute Ignore Mode |
; | Any other value | Player Attribute Update Mode |
; +-----------------+------------------------------+
  DEFB 0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0

; Cheat Mode Enabled Flag
;
; See trivia
  DEFB 0                  ; Cheat Mode Enabled Flag / NMIADD (LSB)
  DEFB 0,0,0,0,0

; System Data / BASIC Program
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,10,22
  DEFB 0,253,50,54,50,48,48,14
  DEFB 0,0,88,102,0,58,231,48
  DEFB 14,0,0,0,0,0,13,0
  DEFB 20,8,0,239,34,75,84,36
  DEFB 34,170,13,0,30,41,0,218
  DEFB 48,14,0,0,0,0,0,58
  DEFB 217,48,14,0,0,0,0

; Table of Bitmap Data for Magic Knight at his Current Location
;
; Used by the routines at 52937, 53019 and 53073
  DEFB 0,58,245,172,54,14,0,0
  DEFB 6,0,0,44,49,14,0,0
  DEFB 1,0,0,58,239,34,34,175
  DEFB 13,0,40,14,0,249,192,50
  DEFB 54,54,50,52,14,0,0,0
  DEFB 104,0,13,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0

; Table of Background Bitmap Data
;
; Used by the routines at 52937 and 53115
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0

; Temporary Text Buffer
;
; Used by the routines at 34762 and 36602
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0

; Table of Background Attribute Data
;
; Attribute values for region behind Magic Knight, stored here so that they can
; be restored when Magic Knight moves on in Player Attribute Update mode.
  DEFB 0,0,0
  DEFB 0,0,0
  DEFB 0,0,0
  DEFB 0,0,0

; Unused
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0

; Terrain Interaction Data Table
;
; Table comprised of 32 x 24 entries, each one corresponding to a character
; block in Magic Knight's current room. Each entry is a set of bitwise flags
; with the following effects:
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

; Movement Data Table for Starfield Routine
;
; Twenty groups of nine bytes, one group per star. The values are:
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0,0

; USS Pisces' Current Stats
;
; See also USS Pisces' Initial Stats at 37329.
  DEFB 0                  ; Life Support (%)
  DEFB 0                  ; Star Drive Fuel
  DEFB 0                  ; Impulse Drive (%)
  DEFB 0                  ; Shields (%)
  DEFB 0                  ; Transputer (%)
  DEFB 0                  ; Unused
  DEFB 0                  ; Unused
  DEFB 0                  ; Unused

; Characters' Current Stats
;
; Nine groups of eight bytes, one group per character (including Magic Knight).
; The values are capped at 100:
  DEFB 0,0,0,0,0,0,0,0    ; Magic Knight
  DEFB 0,0,0,0,0,0,0,0    ; Gordon
  DEFB 0,0,0,0,0,0,0,0    ; Sarab
  DEFB 0,0,0,0,0,0,0,0    ; Klink
  DEFB 0,0,0,0,0,0,0,0    ; S3 E3
  DEFB 0,0,0,0,0,0,0,0    ; Hooper
  DEFB 0,0,0,0,0,0,0,0    ; Murphy
  DEFB 0,0,0,0,0,0,0,0    ; Sharon
  DEFB 0,0,0,0,0,0,0,0    ; Forbin
  DEFB 0,0,0,0,0,0,0,0    ; Derby IV
  DEFB 0,0,0,0,0,0,0,0    ; Swiftfoot
  DEFB 0,0,0,0,0,0,0,0    ; Julie 8
  DEFB 0,0,0,0,0,0,0,0    ; Hectorr

; Unused
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0

; Magic Knight's Current Data
;
; See also 36797 for Magic Knight's Initial Data
  DEFB 0                  ; x-coordinate (pixels)
  DEFB 0                  ; y-coordinate (pixels)
  DEFB 0                  ; Unused (set to zero by instruction at 31522)
  DEFB 0                  ; Index of current frame
  DEFB 0                  ; x-velocity (pixels) [walking / jumping sideways,
                          ; usually 2 for right and 254 / -2 for left]
  DEFB 0                  ; y-velocity (pixels) [jumping]
  DEFB 0                  ; Attribute
  DEFB 0                  ; Unused

; Characters' Current Inventories
;
; See also 36805 for Characters' Initial Inventories
  DEFB 0,0,0,0,0          ; Magic Knight (carrying)
  DEFB 0,0,0,0,0          ; Magic Knight (wearing)
  DEFB 0,0,0,0,0          ; Gordon
  DEFB 0,0,0,0,0          ; Sarab
  DEFB 0,0,0,0,0          ; Klink
  DEFB 0,0,0,0,0          ; S3 E3
  DEFB 0,0,0,0,0          ; Hooper
  DEFB 0,0,0,0,0          ; Murphy
  DEFB 0,0,0,0,0          ; Sharon
  DEFB 0,0,0,0,0          ; Forbin
  DEFB 0,0,0,0,0          ; Derby IV
  DEFB 0,0,0,0,0          ; Swiftfoot
  DEFB 0,0,0,0,0          ; Julie 8
  DEFB 0,0,0,0,0          ; Hectorr

; Unused
;
; (See trivia)
  DEFB 0,0,0,0,0
  DEFB 0,0,0,0,0

; Characters' Current Positions
;
; Twelve groups of three bytes, one group per character (excluding Magic
; Knight). The values are:
  DEFB 0,0,0              ; Gordon
  DEFB 0,0,0              ; Sarab
  DEFB 0,0,0              ; Klink
  DEFB 0,0,0              ; S3 E3
  DEFB 0,0,0              ; Hooper
  DEFB 0,0,0              ; Murphy
  DEFB 0,0,0              ; Sharon
  DEFB 0,0,0              ; Forbin
  DEFB 0,0,0              ; Derby IV
  DEFB 0,0,0              ; Swiftfoot
  DEFB 0,0,0              ; Julie 8
  DEFB 0,0,0              ; Hectorr

; Unused
;
; (See trivia)
  DEFB 0,0,0,0,0,0

; Objects' Current Positions
;
; Thirty-seven groups of three bytes, one group per object. The values are:
  DEFB 0,0,0              ; (00) - Nothing at all
  DEFB 0,0,0              ; (01) - Cloak of Invisibility
  DEFB 0,0,0              ; (02) - Blank I.D. Card
  DEFB 0,0,0              ; (03) - Valid I.D. Card
  DEFB 0,0,0              ; (04) - Instant Film
  DEFB 0,0,0              ; (05) - Photograph (of Magic Knight)
  DEFB 0,0,0              ; (06) - Star Map
  DEFB 0,0,0              ; (07) - Gadget X
  DEFB 0,0,0              ; (08) - Camera
  DEFB 0,0,0              ; (09) - Photograph (of inside of starship)
  DEFB 0,0,0              ; (10) - Pot of Glue
  DEFB 0,0,0              ; (11) - 5W Resistor
  DEFB 0,0,0              ; (12) - Magic Talisman
  DEFB 0,0,0              ; (13) - Golden Sundial of Alpha
  DEFB 0,0,0              ; (14) - McTablet Food
  DEFB 0,0,0              ; (15) - Broken Glass
  DEFB 0,0,0              ; (16) - Quark Bomb
  DEFB 0,0,0              ; (17) - Advert
  DEFB 0,0,0              ; (18) - Part of a Sundial (1)
  DEFB 0,0,0              ; (19) - Part of a Sundial (2)
  DEFB 0,0,0              ; (20) - Part of a Sundial (3)
  DEFB 0,0,0              ; (21) - Brass Ankh
  DEFB 0,0,0              ; (22) - Pair of Boots
  DEFB 0,0,0              ; (23) - Chocolate Heart
  DEFB 0,0,0              ; (24) - Starfleet Manual
  DEFB 0,0,0              ; (25) - Ancient Scroll
  DEFB 0,0,0              ; (26) - Tower Fish
  DEFB 0,0,0              ; (27) - Gas Mask
  DEFB 0,0,0              ; (28) - Shield
  DEFB 0,0,0              ; (29) - Bag of Runes
  DEFB 0,0,0              ; (30) - Bag of Potatoes
  DEFB 0,0,0              ; (31) - Pewter Tankard
  DEFB 0,0,0              ; (32) - Axe
  DEFB 0,0,0              ; (33) - Wrist Terminal
  DEFB 0,0,0              ; (34) - Torch
  DEFB 0,0,0              ; (35) - Mirror
  DEFB 0,0,0              ; (36) - 10MW Laser

; Current Planetary Data
;
; Two bytes per location. The bytes' meanings are:
  DEFB 0,0                ; (00) - Unused
  DEFB 0,0                ; (01) - Deneb
  DEFB 0,0                ; (02) - Gath
  DEFB 0,0                ; (03) - Monopole
  DEFB 0,0                ; (04) - Porthos
  DEFB 0,0                ; (05) - Starbase 1
  DEFB 0,0                ; (06) - Lynx
  DEFB 0,0                ; (07) - Nirvana
  DEFB 0,0                ; (08) - Limbo
  DEFB 0,0                ; (09) - Eden
  DEFB 0,0                ; (10) - Herschell
  DEFB 0,0                ; (11) - Trantore
  DEFB 0,0                ; (12) - Plop Plop
  DEFB 0,0                ; (13) - Brightstar
  DEFB 0,0                ; (14) - Outpost
  DEFB 0,0                ; (15) - Polaris
  DEFB 0,0                ; (16) - Bingo
  DEFB 0,0                ; (17) - Retreat
  DEFB 0,0                ; (18) - Dragon Egg
  DEFB 0,0                ; (19) - Aridia
  DEFB 0,0                ; (20) - Gangrole
  DEFB 0,0                ; (21) - Naff
  DEFB 0,0                ; (22) - Reef
  DEFB 0,0                ; (23) - Menopausia
  DEFB 0,0                ; (24) - Plinkit

; Unused
;
; This block loaded with zeroes by routine at 26997, but otherwise unused.
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0

; Temporary Storage Region for Bitmap Data used in Viewscreen Scrolling Effect
;
; Used by the routines at 32065 and 32124
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0

; System Data and Stack Space
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0

; Table of Display File Addresses of Start of Each Pixel Row
;
; Addresses are in sequence, from top to bottom of display
  DEFW 16384
  DEFW 16640
  DEFW 16896
  DEFW 17152
  DEFW 17408
  DEFW 17664
  DEFW 17920
  DEFW 18176
  DEFW 16416
  DEFW 16672
  DEFW 16928
  DEFW 17184
  DEFW 17440
  DEFW 17696
  DEFW 17952
  DEFW 18208
  DEFW 16448
  DEFW 16704
  DEFW 16960
  DEFW 17216
  DEFW 17472
  DEFW 17728
  DEFW 17984
  DEFW 18240
  DEFW 16480
  DEFW 16736
  DEFW 16992
  DEFW 17248
  DEFW 17504
  DEFW 17760
  DEFW 18016
  DEFW 18272
  DEFW 16512
  DEFW 16768
  DEFW 17024
  DEFW 17280
  DEFW 17536
  DEFW 17792
  DEFW 18048
  DEFW 18304
  DEFW 16544
  DEFW 16800
  DEFW 17056
  DEFW 17312
  DEFW 17568
  DEFW 17824
  DEFW 18080
  DEFW 18336
  DEFW 16576
  DEFW 16832
  DEFW 17088
  DEFW 17344
  DEFW 17600
  DEFW 17856
  DEFW 18112
  DEFW 18368
  DEFW 16608
  DEFW 16864
  DEFW 17120
  DEFW 17376
  DEFW 17632
  DEFW 17888
  DEFW 18144
  DEFW 18400
  DEFW 18432
  DEFW 18688
  DEFW 18944
  DEFW 19200
  DEFW 19456
  DEFW 19712
  DEFW 19968
  DEFW 20224
  DEFW 18464
  DEFW 18720
  DEFW 18976
  DEFW 19232
  DEFW 19488
  DEFW 19744
  DEFW 20000
  DEFW 20256
  DEFW 18496
  DEFW 18752
  DEFW 19008
  DEFW 19264
  DEFW 19520
  DEFW 19776
  DEFW 20032
  DEFW 20288
  DEFW 18528
  DEFW 18784
  DEFW 19040
  DEFW 19296
  DEFW 19552
  DEFW 19808
  DEFW 20064
  DEFW 20320
  DEFW 18560
  DEFW 18816
  DEFW 19072
  DEFW 19328
  DEFW 19584
  DEFW 19840
  DEFW 20096
  DEFW 20352
  DEFW 18592
  DEFW 18848
  DEFW 19104
  DEFW 19360
  DEFW 19616
  DEFW 19872
  DEFW 20128
  DEFW 20384
  DEFW 18624
  DEFW 18880
  DEFW 19136
  DEFW 19392
  DEFW 19648
  DEFW 19904
  DEFW 20160
  DEFW 20416
  DEFW 18656
  DEFW 18912
  DEFW 19168
  DEFW 19424
  DEFW 19680
  DEFW 19936
  DEFW 20192
  DEFW 20448
  DEFW 20480
  DEFW 20736
  DEFW 20992
  DEFW 21248
  DEFW 21504
  DEFW 21760
  DEFW 22016
  DEFW 22272
  DEFW 20512
  DEFW 20768
  DEFW 21024
  DEFW 21280
  DEFW 21536
  DEFW 21792
  DEFW 22048
  DEFW 22304
  DEFW 20544
  DEFW 20800
  DEFW 21056
  DEFW 21312
  DEFW 21568
  DEFW 21824
  DEFW 22080
  DEFW 22336
  DEFW 20576
  DEFW 20832
  DEFW 21088
  DEFW 21344
  DEFW 21600
  DEFW 21856
  DEFW 22112
  DEFW 22368
  DEFW 20608
  DEFW 20864
  DEFW 21120
  DEFW 21376
  DEFW 21632
  DEFW 21888
  DEFW 22144
  DEFW 22400
  DEFW 20640
  DEFW 20896
  DEFW 21152
  DEFW 21408
  DEFW 21664
  DEFW 21920
  DEFW 22176
  DEFW 22432
  DEFW 20672
  DEFW 20928
  DEFW 21184
  DEFW 21440
  DEFW 21696
  DEFW 21952
  DEFW 22208
  DEFW 22464
  DEFW 20704
  DEFW 20960
  DEFW 21216
  DEFW 21472
  DEFW 21728
  DEFW 21984
  DEFW 22240
  DEFW 22496

main:

; Initialise Interrupt Code then Display and Handle Input Device Selection Menu
  LD (IY+87),3            ; Set P-FLAG bits 0 and 1 (OVER 1) (IY = 23610)
  LD HL,(55968)           ; Load HL with address of graphic data for Advert's
                          ; mask...
  LD (56082),HL           ; ...and store at 56082 (graphic data for graphic 33)
  LD HL,55918             ; Load HL with address of Unknown Mask Data...
  LD (56084),HL           ; ...and store at 56084 (mask data for graphic 33)
  LD A,(23728)            ; If Cheat Mode Enabled Flag is reset (see trivia)...
  OR A                    ; ...
  JR Z,26650              ; ...then skip ahead to 26650
  XOR A                   ; Set initial room of Valid I.D. Card to USS Pisces,
                          ; 0, "The Recreation Room" (00)...
  LD (36920),A            ; ...
  LD A,24                 ; Put JR instruction at 65535 for jumping to
                          ; interrupt routine...
  LD (65535),A            ; ...
  LD A,195                ; Load first byte of interrupt routine with 195...
  LD (65524),A            ; ...representing "JP"
  LD HL,53479             ; Load following two bytes of interrupt routine with
                          ; 53479...
  LD (65525),HL           ; ...to make "JP 53479"
  LD A,57                 ; Load I register with 57 (for interrupt routine)...
  LD I,A                  ; ...

; Display input device selection menu
;
; Used by the routine at 55685.
  EI                      ; Enable Interrupts
  HALT                    ; Wait for interrupt
  LD SP,26240             ; Set Stack Pointer to 26240
  XOR A                   ; Reset all Interrupt Routine flags...
  LD (IY+65),A            ; ... (IY = 23610)
  IM 2                    ; Set Interrupt Mode 2
  CALL 26976              ; Set border to black and clear temporary storage
                          ; area of memory
  CALL 26884              ; Draw Input Device Selection Menu and update
                          ; currently selected input device
  CALL 35296              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  CP 4                    ; If "CHANGE GAME OPTIONS" selected...
  JP Z,26739              ; ...then skip ahead to 26739
  CP 5                    ; If "INSTRUCTIONS" selected...
  JR Z,26734              ; ...then skip ahead to 26734
  CP 6                    ; If "PLAY GAME" selected...
  JP Z,26997              ; ...then jump to 26997 (initialise data and start a
                          ; new game)
  PUSH AF                 ; Store AF (A = index of selected menu item)
  LD A,(54560)            ; Load A with index of currently selected input
                          ; device (see trivia)
  PUSH AF                 ; Store AF (A = index of currently selected input
                          ; device)
  LD C,A                  ; Load C with index of currently selected input
                          ; device
  LD A,(37139)            ; Load A with y-coordinate of top edge of Window 6
                          ; (Control Selection Window)
  ADD A,C                 ; Add index of currently selected input device...
  ADD A,2                 ; ...and add two more to get y-coordinate of menu
                          ; item for currently selected input device
  LD B,A                  ; Load value into B
  LD C,3                  ; Load C with 3
  CALL 54148              ; Load HL with Attribute File address for coordinates
                          ; (C, B)
  LD (HL),71              ; Set attribute at this location to 71 (white INK,
                          ; black PAPER, BRIGHT) (see trivia)
  POP DE                  ; Restore DE (D = index of currently selected input
                          ; device, previously in AF)
  POP AF                  ; Store AF (A = index of selected menu item)
  LD (54560),A            ; Set new selected input device index at 54560
  CALL 54505              ; Update currently selected input device...
  JR 26687                ; ...and loop back to 26687
  CALL 26926              ; Display Instructions windows
  JR 26684                ; Jump back to 26684 to capture next menu selection
  CALL 26745              ; Display and handle Gadget X Menu
  JP 26684                ; Jump back to 26684 to capture next menu selection

; Display and Handle Gadget X Menu
;
; Used by the routines at 26670 and 30968.
  LD A,7                  ; Load A with index of "REDEFINE THE GAME" Window
  LD HL,38063             ; Point HL at Gadget X menu text
  PUSH HL                 ; Store HL (pointer to Gadget X menu text)
  CALL 34982              ; Draw "REDEFINE THE GAME" Menu Window
  POP HL                  ; Restore HL (pointer to Gadget X menu text)
  CALL 34762              ; Print text
  CALL 35690              ; Play upward scale sound
  CALL 35296              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  OR A                    ; If REDEFINE KEYBOARD selected...
  JP Z,26816              ; ...then skip ahead to 26816
  CP 1                    ; If PLAYER ATTRIBUTE IGNORE selected...
  JR Z,26807              ; ...then skip ahead to 26807
  CP 2                    ; If PLAYER ATTRIBUTE UPDATE selected...
  JR Z,26812              ; ...then skip ahead to 26812
  BIT 0,(IY+65)           ; If Game In Progress Flag is reset... (IY = 23610)
  JR Z,26790              ; ...then skip ahead to 26790
  CP 3                    ; If SAVE THE GAME selected...
  JR Z,26833              ; ...then skip ahead to 26833
  CP 4                    ; If LOAD AN OLD GAME selected...
  JR Z,26840              ; ...then skip ahead to 26840
  LD A,5                  ; Draw Window 5...
  CALL 34990              ; ...
  LD HL,38180             ; Point HL at "SAVE & LOAD ARE NOT ALLOWED HERE..."
                          ; text...
  CALL 34762              ; ...and print to screen
  CALL 35690              ; Play upward scale sound
  JP 55138                ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed and return
  XOR A                   ; Reset Player Attribute Update Flag (Player
                          ; Attribute Ignore mode)...
  LD (23705),A            ; ...
  RET                     ; Return
  LD A,1                  ; Set Player Attribute Update Flag (Player Attribute
                          ; Update mode)...
  JR 26808                ; ...and return
  CALL 35690              ; Play upward scale sound
  LD A,8                  ; Draw Window 8...
  CALL 34990              ; ...
  LD HL,38136             ; Point HL at "Redefine Keys Window" text...
  CALL 34762              ; ...and print to screen
  JP 54647                ; Redefine keyboard controls
  CALL 26855              ; Clear Stack and Prepare to Save Data
  CALL 1218               ; Jump to ROM routine to save game data
  RET                     ; Return (to start of Main Game Loop - see PUSH at
                          ; 26862)
  CALL 26855              ; Clear Stack and Prepare to Load Data
  SCF                     ; Set Carry Flag as we are LOADing, not VERIFYing
  LD SP,22528             ; Set Stack Pointer to 22528
  CALL 1366               ; Jump to ROM routine to load game data
  LD SP,(23613)           ; Restore Stack Pointer from 23613 (set to 26240 in
                          ; routine at 26855)
  RET                     ; Return (to start of Main Game Loop - see PUSH at
                          ; 26862)

; Clear Stack and Prepare to Load Data
;
; Used by the routine at 26745.
  POP DE                  ; Remove return address of calling routine from top
                          ; of Stack
  LD SP,26240             ; Set Stack Pointer to 26240
  LD HL,27136             ; Load HL with start address of Main Game Loop
                          ; routine
  PUSH HL                 ; Store HL (address of Main Game Loop)
  LD (23613),SP           ; Store Stack Pointer address at 23613 (System
                          ; Variable ERR SP)
  PUSH DE                 ; Store HL (return address in routine that called
                          ; this routine)
  CALL 35690              ; Play upward scale sound
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
  LD IX,23296             ; Set base address for load to 23296
  LD DE,23808             ; Set data length to 23808
  LD A,255                ; Load A with 255 to denote a data block
  RET                     ; Return

; Draw Input Device Selection Menu and Update Currently Selected Input Device
;
; Used by the routine at 26670.
  CALL 35649              ; Clear Display File
  LD A,70                 ; Load system variable ATTR T with 70 (yellow INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  CALL 35674              ; ...and flood Attribute File with this attribute
  LD A,5                  ; Draw Window 5 ("KNIGHT-TYME A NEW GRAPHIC
                          ; ADVENTURE...")...
  CALL 34990              ; ...
  LD HL,38238             ; Point HL at "KNIGHT-TYME A NEW GRAPHIC
                          ; ADVENTURE..." text...
  CALL 34762              ; ...and print to screen
  LD A,6                  ; Draw Control Selection Menu Window...
  CALL 34982              ; ...
  LD HL,37737             ; Point HL at Initial Control Selection Menu text...
  CALL 34762              ; ...and print to screen
  CALL 35723              ; Play downward scale sound
  LD A,(54560)            ; Load index of currently selected input device into
                          ; A
  JP 54505                ; Update currently selected input device and return

; Display Instructions Windows
;
; Used by the routines at 26670 and 30968.
  LD A,7                  ; Load A with 7 (index of window to draw)
  LD HL,37795             ; Point HL at Instructions Text
  CALL 26962              ; Print text at HL in Window 07
  LD A,8                  ; Draw Window 8...
  CALL 34990              ; ...
  LD HL,37951             ; Point HL at "THE KEYS ARE :-..." text...
  CALL 34762              ; ...and print to screen
  CALL 54598              ; Print current control keys to screen
  CALL 35690              ; Play upward scale sound
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
  LD A,9                  ; Prepare to draw Window 9
  LD HL,37967             ; Point HL at Cast of Characters text
  JP 26962                ; Skip ahead to 26962 (see trivia)
  PUSH HL                 ; Store HL (pointer to text to print)
  CALL 34990              ; Draw current Instructions Window
  POP HL                  ; Restore HL (pointer to text to print)
  CALL 34762              ; Print text
  CALL 35690              ; Play upward scale sound
  JP 55138                ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed and return

; Set Border to Black and Clear Temporary Storage Area of Memory
;
; Used by the routine at 26670.
  LD A,7                  ; Set System Variable BORDCR to 7 (black BORDER,
                          ; white INK, black PAPER)...
  LD (23624),A            ; ...
  XOR A                   ; Set border to black and reset EAR and MIC bits...
  OUT (254),A             ; ...
  LD HL,23296             ; Load memory addresses from 23296 to 23551 with
                          ; zeroes...
  LD DE,23297             ; ...
  LD BC,255               ; ...
  LD (HL),A               ; ...
  LDIR                    ; ...
  RET                     ; Return

; Initialise Data and Start a New Game
;
; Used by the routine at 26670.
  LD A,28                 ; Set Current Starship Location in " LOCATION : [name
                          ; of Current Starship Location]" text at 38298...
  LD (38307),A            ; ...to the name of the Current Starship Location
                          ; (28)
  CALL 35690              ; Play upward scale sound
  LD A,70                 ; Set ATTR T system variable to 70 (yellow INK, black
                          ; PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD HL,37329             ; Copy data from 37329 - 37472 (USS Pisces' Initial
                          ; Stats, Characters' Initial Stats, Table of Object
                          ; Properties for first four objects)...
  LD DE,25012             ; ...to 25012 - 25155 (USS Pisces' Current Stats,
                          ; Characters' Current Stats, Unused Data Block)...
  LD BC,144               ; ...
  LDIR                    ; ...
  LD HL,36797             ; Copy data from 36797 - 36804 (Magic Knight's
                          ; Initial Data)...
  LD BC,8                 ; ...to 25156 - 25163 (Magic Knight's Current
                          ; Data)...
  LDIR                    ; ...
  LD HL,36805             ; Copy data from 36805 - 36884 (Characters' Initial
                          ; Inventories and part of Characters' Initial
                          ; Positions)... (see trivia)
  LD BC,80                ; ...to 25164 - 25243 (Characters' Current
                          ; Inventories and Unused Data Block)...
  LDIR                    ; ...
  LD HL,36875             ; Copy data from 36875 - 36916 (Characters' Initial
                          ; Positions and first two entries in Objects' Initial
                          ; Positions)... (see trivia)
  LD BC,42                ; ...to 25244 - 25285 (Characters' Current Positions
                          ; and Unused Data Block)...
  LDIR                    ; ...
  LD HL,36911             ; Copy data from 36911 - 37021 (Objects' Initial
                          ; Positions)...
  LD BC,111               ; ...to 25286 - 25396 (Objects' Current Positions)...
  LDIR                    ; ...
  LD HL,53361             ; Copy data from 53361 - 53410 (Initial Planetary
                          ; Data)...
  LD BC,50                ; ...to 25397 - 25446 (Current Planetary Data)...
  LDIR                    ; ...
  LD H,D                  ; Load HL with value in DE (25447)...
  LD L,E                  ; ...
  INC DE                  ; Advance DE by one byte
  LD BC,15                ; Load memory locations at 25447 - 25462 with
                          ; zeroes...
  LD (HL),0               ; ...
  LDIR                    ; ...
  CALL 34265              ; Set Magic Knight's available action flags and
                          ; validate I.D. Card if appropriate
  XOR A                   ; Load A and HL with zero...
  LD H,A                  ; ...
  LD L,A                  ; ...
  LD (23675),HL           ; Interrupt Routine Flags
  LD (23672),A            ; Set system variable FRAMES to zero...
  LD (23673),HL           ; ...
  INC A                   ; Set Unknown / Unused Flag 2 to 1...
  LD (23480),A            ; ...
  LD A,30                 ; Set number of days left to 30...
  LD (23457),A            ; ...
  LD A,13                 ; Set USS Pisces' location to Brightstar (13)...
  LD (23700),A            ; ...
  ADD A,A                 ; Load BC with 26 (A x 2)...
  LD C,A                  ; ...
  LD B,0                  ; ...
  LD HL,25398             ; Point HL at first attribute entry in Table of
                          ; Current Planetary Data...
  ADD HL,BC               ; ...and add BC as offset to point to data for
                          ; Brightstar
  LD A,(HL)               ; Load A with attribute of Brightstar planet...
  LD (52196),A            ; ...and set colour of planet on viewscreen
                          ; accordingly
  LD HL,1286              ; Set right exit from USS Pisces, 5 (The Airlock) to
                          ; USS Pisces, 6 (The Life Boat)...
  LD (37033),HL           ; ...and left exit from USS Pisces, 6 (The Life Boat)
                          ; to USS Pisces, 5 (The Airlock)
  LD HL,50850             ; Set Room Layout Data Pointer address for Retreat, 2
                          ; to address of "With Barrier" version of Room 09
                          ; (50956)...
  LD (50161),HL           ; ...
  LD A,2                  ; Move Magic Knight into USS Pisces, 2 (The
                          ; Transporter Room), draw room and initialise
                          ; room-specific data...
  CALL 27762              ; ...
  SET 0,(IY+65)           ; Set Game In Progress Flag (IY = 23610)
  JP 27139                ; Jump into Main Game Loop (process keyboard input
                          ; and move Magic Knight or enter menus)

; Main Game Loop - Process Keyboard Input and Move Magic Knight or Enter Menus
;
; Used by the routines at 29330 and 55887.
  CALL 27765              ; Draw Magic Knight's current room, draw objects and
                          ; characters and initialise room-specific data
; This entry point is used by the routine at 26997.
  CALL 28457              ; Set Magic Knight's velocity to zero, if appropriate
                          ; move to new room, execute room-specific routine
  CALL 27357              ; Handle Magic Knight's fall
  LD A,127                ; Reset Bit 7 in A to select the keyboard half-row
                          ; SPACE - B
  IN A,(254)              ; Read the keyboard
  RRA                     ; Reset Carry Flag if SPACE pressed, else set it
  JR C,27163              ; SPACE was not pressed, so skip ahead to 27163
  LD A,254                ; Reset bit 0 in A to select the keyboard half-row
                          ; SHIFT - V
  IN A,(254)              ; Read the keyboard
  RRA                     ; Reset Carry Flag if SHIFT pressed, else set it
  LD HL,44552             ; Point HL at "BREAK KEY PRESSED" text
  JP NC,55685             ; If SHIFT was pressed (i.e. SHIFT-SPACE, or BREAK)
                          ; jump to "Game over" window routine and return to
                          ; Control Selection Menu
  CALL 27508              ; Kill Magic Knight's x-velocity if he cannot
                          ; horizontally pass through a block beside him
  CALL 54942              ; Capture keyboard or joystick input loading result
                          ; into A
  BIT 0,A                 ; If "left" pressed then...
  JR NZ,27198             ; Skip ahead to "move left" subroutine
  BIT 1,A                 ; If "right" pressed then...
  JR NZ,27236             ; Skip ahead to "move right" subroutine
  BIT 2,A                 ; If "up" pressed then...
  JP NZ,27252             ; Skip ahead to "jump" subroutine
  BIT 3,A                 ; If "down" pressed then...
  CALL NZ,55768           ; ...select Magic Knight's Room and USS Pisces'
                          ; Current Location if Cheat / Debug Mode is enabled
  BIT 4,A                 ; If "fire" pressed then...
  JP NZ,30001             ; ...display and handle main in-game menu
  CALL 53115              ; Erase Magic Knight from display, advance his
                          ; current position then redraw
  JP 27139                ; Loop back for next key / control press
; Left Pressed
  LD HL,23474             ; If "Magic Knight Can't Move Left" flag is set...
  BIT 0,(HL)              ; ...
  JR NZ,27139             ; ...then loop back to start of keyboard check
                          ; routine
  EX AF,AF'               ; Switch AF and AF'
  LD A,1                  ; Set Magic Knight Facing Left Flag...
  LD (23425),A            ; ...
  LD A,254                ; Set Magic Knight's x-velocity to minus 2...
  LD (25160),A            ; ...
  LD (27283),A            ; Prepare to set Magic Knight's x-velocity to minus 2
  EX AF,AF'               ; Switch AF and AF' (A now holds pressed controls
                          ; bitmap)
  BIT 2,A                 ; If "up" was also pressed...
  JR NZ,27256             ; ...then skip ahead to 27256 (jumping subroutine)
  XOR A                   ; Set Magic Knight's current y-velocity to zero...
  LD (25161),A            ; ...
  CALL 53115              ; Erase Magic Knight from display, advance his
                          ; current position then redraw
  CALL 27357              ; Handle Magic Knight's fall
  JR 27139                ; Loop back for next key / control press
; Right Pressed
  LD HL,23474             ; If "Magic Knight Can't Move Right" flag is set...
  BIT 1,(HL)              ; ...
  JR NZ,27139             ; ...then loop back to start of keyboard check
                          ; routine
  EX AF,AF'               ; Switch AF and AF'
  XOR A                   ; Reset Magic Knight Facing Left Flag...
  LD (23425),A            ; ...
  LD A,2                  ; Jump to 27213, setting Magic Knight's x-velocity to
                          ; 2...
  JR 27213                ; ...
; Up Pressed
  XOR A                   ; Prepare to set Magic Knight's x-velocity to zero...
  LD (27283),A            ; ...
  LD HL,37074             ; Point HL at start of Magic Knight's y-velocities
                          ; sequence table
  LD (37072),HL           ; Store current position in Magic Knight's
                          ; y-velocities sequence table at 37072
  LD A,(25157)            ; Load A with Magic Knight's current y-coordinate
                          ; (pixels)
  CP 8                    ; If y-coordinate is less than 8...
  JP C,27336              ; ...then jump to 27336 (exit loop as Magic Knight
                          ; can't get any higher!)
  LD HL,(37072)           ; Load HL with current position in Magic Knight's
                          ; y-velocities sequence table
  LD A,(HL)               ; Load the current y-velocity in the sequence into A
  NEG                     ; Negate (as Magic Knight is jumping upwards)
  OR A                    ; If A is zero...
  JR Z,27336              ; ...jump to 27336 (exit loop as we have reached the
                          ; end of the sequence)
  LD (25161),A            ; Load A into Magic Knight's y-velocity
; The operand of the instruction at 27282 represents the x-velocity value
; stored previously. This is modified by the instruction at 27253.
  LD A,0                  ; Set Magic Knight's x-velocity...
  LD (25160),A            ; ...
  CALL 27508              ; Kill Magic Knight's x-velocity if he cannot
                          ; horizontally pass through a block beside him
  LD A,(25160)            ; Load Magic Knight's x-velocity into B...
  LD B,A                  ; ...
  LD A,(23474)            ; Load Magic Knight movement flags into A
  XOR B                   ; Check:
  CP 255                  ; If x-velocity is -2 (left), and Magic Knight can't
                          ; move left...
  JP Z,27342              ; ...then jump ahead to 27342
  CP 253                  ; If x-velocity is -2 (left), and Magic Knight can't
                          ; move left or right...
  JP Z,27342              ; ...then jump ahead to 27342
  CP 1                    ; If x-velocity is +2 (right), and Magic Knight can't
                          ; move left or right...
  JP Z,27342              ; ...then jump ahead to 27342
  OR A                    ; If x-velocity is +2 (right), and Magic Knight can't
                          ; move right...
  JP Z,27342              ; ...then jump ahead to 27342
  CALL 27647              ; Kill Magic Knight's jump if he cannot vertically
                          ; pass through a block above him
  PUSH AF                 ; Store AF (A = "MK's jump was impeded" flag)
  CALL 53115              ; Erase Magic Knight from display, advance his
                          ; current position then redraw
  POP AF                  ; Restore AF (A = "MK's jump was impeded" flag)
  JR NZ,27336             ; If Magic Knight's jump was impeded by a block above
                          ; him then jump to 27336
  CALL 28457              ; Set Magic Knight's velocity to zero, if appropriate
                          ; move to new room, execute room-specific routine
  LD HL,(37072)           ; Load HL with current position in Magic Knight's
                          ; y-velocities sequence table
  INC HL                  ; Advance to next y-velocity in the sequence
  JR 27259                ; Loop back to 27259
  CALL 27352              ; Handle Magic Knight's fall, preserving x-velocity
  JP 27139                ; Loop back to start of keyboard check routine
  XOR A                   ; Set Magic Knight's x-velocity to zero...
  LD (25160),A            ; ...
  LD (27283),A            ; Prepare to set Magic Knight's x-velocity to zero
  JP 27317                ; Jump back to 27317

; Handle Magic Knight's Fall, Preserving x-Velocity
;
; Used by the routine at 27136.
  LD A,(27283)            ; Load Magic Knight's stored x-velocity
  JR 27358                ; Handle Magic Knight's fall

; Handle Magic Knight's Falls
;
; Used by the routine at 27136.
  XOR A                   ; Set A to zero
; This entry point is used by the routine at 27352.
  LD (27393),A            ; Prepare to set Magic Knight's x-velocity to A
  LD HL,37087             ; Point HL at end of table of y-velocities sequence
                          ; for jumping and falling
  LD (37072),HL           ; Store current position at 37072
  LD A,(23474)            ; If Magic Knight's movement flags are reset...
  OR A                    ; ...
  JR Z,27377              ; ...then skip ahead to 27377
  XOR A                   ; Prepare to set Magic Knight's x-velocity to zero...
  LD (27393),A            ; ...
  LD HL,(37072)           ; Load current position in y-velocities table into HL
  LD A,(HL)               ; Load current y-velocity from table into A
  CP 7                    ; If velocity is 7...
  JR Z,27389              ; ...then skip ahead to 27389
  DEC HL                  ; Step pointer back one byte in y-velocities table
  LD (37072),HL           ; Store pointer
  LD (25161),A            ; Load last y-velocity read from table into Magic
                          ; Knight's y-velocity
; The operand of the instruction at 27392 represents the x-velocity value
; stored previously. This is modified by the instructions at 27358, 27374 and
; 27502.
  LD A,0                  ; Set Magic Knight's x-velocity...
  LD (25160),A            ; ...
  LD A,(25156)            ; Load A with Magic Knight's current x-coordinate
                          ; (pixels)
  ADD A,4                 ; Add 4 to x-coordinate
  CALL 28625              ; Divide x-coordinate by eight, rounding down to
                          ; nearest integer
  LD C,A                  ; Load result (Magic Knight's x-coordinate in
                          ; characters) into C, setting B to zero...
  LD B,0                  ; ...
  LD A,(25157)            ; Load A with Magic Knight's current y-coordinate
                          ; (pixels)
  AND 7                   ; If y-coordinate is a multiple of eight...
  JR Z,27417              ; ...then skip ahead to 27417
  LD B,8                  ; Set B to 8, as we need to look one character block
                          ; lower due to Magic Knight spanning five, rather
                          ; than four, characters [y-coordinate is not a
                          ; multiple of eight]
  LD A,(25157)            ; Load A with Magic Knight's current y-coordinate
                          ; (pixels)
  ADD A,B                 ; Add B to current y-coordinate (i.e. y-coordinate of
                          ; highest full character block spanned by Magic
                          ; Knight)
  ADD A,32                ; Add 32 (as Magic Knight is 32 pixels high, so now
                          ; y-coordinate of highest full character block not
                          ; occupied by Magic Knight)
  CALL 28625              ; Divide A by eight, rounding down to nearest integer
  LD B,A                  ; Load result (y-coordinate in characters) into B
  CALL 54162              ; Point HL at Terrain Interaction Data for character
                          ; coordinates x=C, y=B (block that Magic Knight is
                          ; "falling through")
  LD A,(HL)               ; If this block, or the one to the right of it cannot
                          ; be passed vertically (downwards)...
  INC HL                  ; ...(i.e. Magic Knight has landed)...
  OR (HL)                 ; ...
  BIT 7,A                 ; ...
  JR NZ,27476             ; ...then skip ahead to 27476
  CALL 27508              ; Kill Magic Knight's x-velocity if he cannot
                          ; horizontally pass through a block beside him
  LD A,(25160)            ; Load Magic Knight's x-velocity into B...
  LD B,A                  ; ...
  LD A,(23474)            ; Load Magic Knight's movement flags into A
  XOR B                   ; Check:
  CP 255                  ; If x-velocity is -2 (left), and Magic Knight can't
                          ; move left...
  JP Z,27498              ; ...then jump ahead to 27498
  CP 253                  ; If x-velocity is -2 (left), and Magic Knight can't
                          ; move left or right...
  JP Z,27498              ; ...then jump ahead to 27498
  CP 1                    ; If x-velocity is +2 (right), and Magic Knight can't
                          ; move left or right...
  JP Z,27498              ; ...then jump ahead to 27498
  OR A                    ; If x-velocity is +2 (right), and Magic Knight can't
                          ; move right...
  JP Z,27498              ; ...then jump ahead to 27498
  CALL 53115              ; Erase Magic Knight from display, advance his
                          ; current position then redraw
  CALL 28457              ; Set Magic Knight's velocity to zero, if appropriate
                          ; move to new room, execute room-specific routine
  JP 27367                ; Loop back to 27367
  LD A,(25157)            ; Load A with Magic Knight's current y-coordinate
                          ; (pixels)
  AND 7                   ; Retain only pixel-within-character component (e.g.
                          ; 5 pixels down the pair of character blocks)
  NEG                     ; Negate (i.e. -5 pixels)
  AND 7                   ; Retain only pixel-within-character component (e.g.
                          ; 3 pixels up the pair of character blocks, or 3
                          ; pixels down to the ground)
  LD (25161),A            ; Set Magic Knight's y-velocity so that it will take
                          ; his feet to the ground
  CALL 53115              ; Erase Magic Knight from display, advance his
                          ; current position then redraw
  LD HL,0                 ; Set Magic Knight's x- and y-velocities to zero...
  LD (25160),HL           ; ...
  RET                     ; Return (Magic Knight has landed)
  XOR A                   ; Set Magic Knight's x-velocity to zero...
  LD (25160),A            ; ...
  LD (27393),A            ; Prepare to set Magic Knight's x-velocity to zero
  JP 27467                ; Loop back to 27467

; Kill Magic Knight's x-Velocity if he Cannot Horizontally Pass Through a Block
; Beside Him
;
; Used by the routines at 27136 and 27357.
  LD A,(23463)            ; Load B with Magic Knight's "temporary store"
                          ; movement flags...
  LD B,A                  ; ...
  LD A,(25156)            ; Load Magic Knight's x-coordinate into A
  CP 5                    ; If x-coordinate is less than 5...
  JP C,27527              ; ...then jump ahead to 27527
  CP 230                  ; If x-coordinate is greater than 230...
  JP NC,27527             ; ...then jump ahead to 27527
  LD B,0                  ; Set B (Magic Knight's Temporary Store Movement
                          ; Flags) to zero (i.e. Magic Knight is not at the
                          ; outer edges of his current room, so can move both
                          ; left and right)
  LD A,B                  ; Load Magic Knight's Temporary Store Movement Flags
                          ; into A
  LD (23474),A            ; Set Magic Knight's movement flags
  LD A,(25157)            ; Load Magic Knight's y-coordinate into B
  LD B,A                  ; ...
  LD A,(25161)            ; Add Magic Knight's y-velocity to y-coordinate in
                          ; A...
  ADD A,B                 ; ...
  LD (23483),A            ; Store this new (predicted) y-coordinate at 23483
  LD C,4                  ; Set C to 4 (as Magic Knight is normally four
                          ; characters tall)
  AND 7                   ; If predicted y-coordinate is divisible by eight...
  JR Z,27549              ; ...then skip ahead to 27549...
  INC C                   ; ...else Magic Knight must be airborne and at
                          ; non-integer y-coordinate, and so spans five
                          ; character blocks rather than four
  LD A,C                  ; Load A with number of vertical characters spanned
                          ; by Magic Knight...
  LD (27582),A            ; ...and update instructions at 27581...
  LD (27621),A            ; ...and 27620 with this value
  LD A,(25156)            ; Load Magic Knight's current x-coordinate into C...
  LD C,A                  ; ...
  LD A,(25160)            ; Add Magic Knight's x-velocity to x-coordinate in
                          ; A...
  ADD A,C                 ; ...
  LD (23482),A            ; Store this new (predicted) x-coordinate at 23482
  CALL 28625              ; Divide predicted x-coordinate by eight, rounding
                          ; down to nearest integer...
  LD C,A                  ; ...and load into C
  LD A,(23483)            ; Load predicted y-coordinate into A...
  CALL 28625              ; ...divide it by eight, rounding down to nearest
                          ; integer...
  LD (23483),A            ; ...store back at 23483...
  LD B,A                  ; ...and load into B
; The operand of the instruction at 27581 represents number of characters
; spanned by Magic Knight, vertically. This is modified by the instruction at
; 27550.
  LD A,0                  ; Load number of characters (vertically) to check for
                          ; impassibility
  PUSH AF                 ; Store remaining number of character blocks spanned
                          ; by Magic Knight vertically to check
  CALL 54162              ; Point HL at terrain interaction data for character
                          ; coordinates x=C, y=B
  BIT 6,(HL)              ; If Bit 6 of terrain data is set (i.e. Magic Knight
                          ; cannot pass block horizontally)...
  JR NZ,27598             ; ...then jump ahead to 27598
  INC B                   ; Advance check to next character down
  POP AF                  ; Restore remaining number of character blocks
                          ; spanned by Magic Knight vertically to check
  DEC A                   ; Decrease count of remaining character blocks by one
  JR NZ,27583             ; Loop back to 27583 to check next block down
  JR 27607                ; Skip over setting Magic Knight's Cannot Move Left
                          ; Flag as there are no obstructions to the left
  POP AF                  ; Restore AF
  LD A,(23474)            ; Set "Magic Knight Cannot Move Left" Flag...
  OR 1                    ; ...
  LD (23474),A            ; ...
  LD A,(23482)            ; Load Magic Knight's predicted x-coordinate (pixels)
                          ; into A...
  ADD A,15                ; ...and add 15...
  CALL 28625              ; ...divide by eight, rounding down to nearest
                          ; integer...
  LD C,A                  ; ...and load into C
  LD A,(23483)            ; Load Magic Knight's predicted y-coordinate (chars)
                          ; into B...
  LD B,A                  ; ...
; The operand of the instruction at 27620 represents number of characters
; spanned by Magic Knight, vertically. This is modified by the instruction at
; 27553.
  LD A,0                  ; Load number of characters (vertically) to check for
                          ; impassibility
  PUSH AF                 ; Store AF (remaining number of vertical characters
                          ; to check for impassibility)
  CALL 54162              ; Point HL at terrain interaction data for character
                          ; coordinates x=C, y=B
  BIT 6,(HL)              ; If Bit 6 is set (i.e. Magic Knight cannot pass
                          ; block horizontally)...
  JR NZ,27637             ; ...jump ahead to 27637
  INC B                   ; Increase y-coordinate by one character
  POP AF                  ; Restore AF
  DEC A                   ; Decrease number of remaining blocks to check
  JR NZ,27622             ; If number of remaining blocks to check is not zero
                          ; then loop back to 27622
  JR 27646                ; Exit routine
  POP AF                  ; Restore AF
  LD A,(23474)            ; Set "Magic Knight Cannot Move Right" flag...
  OR 2                    ; ...
  LD (23474),A            ; ...
  RET                     ; Return

; Kill Magic Knight's Jump if he Cannot Vertically Pass Through a Block Above
; Him
;
; Used by the routine at 27136. Output: A  Zero (if Magic Knight's jump was not
; impeded) or 1 (if the jump was impeded)
  LD A,(25157)            ; Load Magic Knight's current y-coordinate into B...
  LD B,A                  ; ...
  LD A,(25161)            ; Load A with Magic Knight's y-velocity
  ADD A,B                 ; Add y-velocity to y-coordinate in A
  CALL 28625              ; Divide A by eight, rounding down to nearest integer
  LD B,A                  ; Load Magic Knight's y-coordinate (CHARS) into B
  LD A,(25156)            ; Load Magic Knight's current x-coordinate into A
  ADD A,4                 ; Add 4 to x-coordinate (to get point roughly quarter
                          ; of the way through Magic Knight's total width)
  CALL 28625              ; Divide A by eight, rounding down to nearest integer
  LD C,A                  ; Load Magic Knight's current x-coordinate (CHARS)
                          ; into C
  CALL 54162              ; Point HL at terrain interaction data for character
                          ; coordinates x=C, y=B
  BIT 4,(HL)              ; If Bit 4 of Magic Knight's current position's
                          ; terrain data (block is impassable vertically,
                          ; upwards) is set then...
  JR NZ,27695             ; ...kill Magic Knight's y-velocity and exit routine
  INC HL                  ; Advance to next character block along in "terrain
                          ; interaction data"
  BIT 4,(HL)              ; If Bit 4 of this position's terrain data (block is
                          ; impassable vertically, upwards) is set then...
  JR NZ,27695             ; ...kill Magic Knight's y-velocity and exit routine
  DEC B                   ; Advance y-coordinate by one character (to get point
                          ; roughly three quarters of the way through Magic
                          ; Knight's total width)
  CALL 54162              ; Point HL at terrain interaction data for character
                          ; coordinates x=C, y=B
  BIT 4,(HL)              ; If Bit 4 of this position's terrain data (block is
                          ; impassable vertically, upwards) is set then...
  JR NZ,27695             ; ...kill Magic Knight's y-velocity and exit routine
  INC HL                  ; Advance to next character block along in "terrain
                          ; interaction data"
  BIT 4,(HL)              ; If Bit 4 of this position's terrain data (block is
                          ; impassable vertically, upwards) is set then...
  JR NZ,27695             ; ...kill Magic Knight's y-velocity and exit routine
  XOR A                   ; Set A to zero, as jump was not impeded
  RET                     ; Return
  XOR A                   ; Set Magic Knight's y-velocity to zero...
  LD (25161),A            ; ...
  LD A,1                  ; Set A to one
  OR A                    ; Reset zero flag
  RET                     ; Return

; Draw Top In-Game Window
;
; Used by the routines at 27762 and 31688.
  LD A,35                 ; Check if Magic Knight is carrying the Mirror
                          ; (35)...
  CALL 33645              ; ...
  LD HL,38298             ; Point HL at Info Window Text (not carrying Mirror
                          ; version)
  JR NZ,27716             ; If Magic Knight is not carrying the Mirror then
                          ; skip ahead to 27716
  LD HL,38544             ; Point HL at Info Window Text (carrying Mirror
                          ; version)
  PUSH HL                 ; Store HL (pointer to text to print)
  LD A,1                  ; Draw Window 1...
  CALL 34990              ; ...
  LD HL,16554             ; Load HL with Display File address corresponding to
                          ; (10, 5) (characters)...
  LD (54110),HL           ; ...and move Bitmap Virtual Text Cursor here
  LD HL,38357             ; Point HL at "KNIGHT-TYME" text...
  CALL 34762              ; ...and print to screen
  LD HL,16417             ; Load HL with Display File address corresponding to
                          ; (1, 1) (characters)...
  LD (54110),HL           ; ...and move Bitmap Virtual Text Cursor here
  POP HL                  ; Store HL (pointer to text to print)
  CALL 34762              ; Print window text
  CALL 34567              ; Draw Strength Bar at top of screen
  JP 34627                ; Draw objects in Magic Knight's inventory if he is
                          ; carrying the Mirror then return

; Print "KNIGHT-TYME" Text at Bottom of Command Summary Window
;
; Used by the routine at 54333.
  LD HL,16554             ; Load HL with Display File address corresponding to
                          ; (10, 5) (characters)...
  LD (54110),HL           ; ...and move Bitmap Virtual Text Cursor here
  LD HL,38357             ; Point HL at "KNIGHT-TYME" text...
  JP 34762                ; ...and print to screen, then return

; Move Magic Knight into Room A, Draw Room, Objects and Characters and
; Initialise Room-Specific Data
;
; Used by the routines at 26997 and 32252. Input:  A  (entry at 27762 only)
; Index of room to move Magic Knight into
  LD (23701),A            ; Update Magic Knight's current room to be room index
                          ; passed to this routine in A
; This entry point is used by the routines at 27136, 28323, 28506, 28554,
; 31688, 32252, 32895 and 55814.
  LD A,(25020)            ; Load Magic Knight's current strength into A...
  OR A                    ; ...and if not zero...
  JR NZ,27813             ; ...then skip ahead to 27813
  LD A,14                 ; If Magic Knight is carrying the McTablet Food
                          ; (14)...
  CALL 33645              ; ...
  JR Z,27784              ; ...then skip ahead to 27784
  LD HL,44643             ; Point HL at "YOU DIED OF EXHAUSTION" text
  JP NZ,55685             ; If Magic Knight is not carrying the McTablet Food
                          ; then jump to "Game over" window routine and return
                          ; to Control Selection Menu
  LD HL,45899             ; Point HL at "YOU HAD TO EAT SOME OF YOUR OWN
                          ; MCTABLETS..." text
  LD DE,37195             ; Adjust height of window 13 to accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (pointer to start of actual text)
  LD A,13                 ; Draw Window 13...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of actual text)
  CALL 34762              ; Print text at HL
  LD A,100                ; Set Magic Knight's current strength to 100...
  LD (25020),A            ; ...
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
  JR 27817                ; Skip ahead to 27817
  DEC A                   ; Decrease Magic Knight's current strength by one...
  LD (25020),A            ; ...
  CALL 27703              ; Draw Top In-Game Window
  LD A,(23701)            ; Load A with Magic Knight's current room
  AND 3                   ; Clear all but the lowest two bits to leave a value
                          ; 0-3...
  ADD A,68                ; ...add this to 68...
  LD (37102),A            ; ...and set the border attribute of Window 1 to this
                          ; value
  LD A,(23701)            ; Load A with Magic Knight's current room...
  INC A                   ; ...increase by one...
  AND 3                   ; ...clear all but the lowest two bits to leave a
                          ; value 0-3...
  ADD A,68                ; ...add this to 68...
  LD (37214),A            ; ...and set the border attribute of Window 15 to
                          ; this value
  LD HL,24064             ; Load character rows 0-5 in Terrain Interaction
                          ; Table with 254...
  LD DE,24065             ; ...i.e. prevent Magic Knight jumping above
                          ; ceilings...
  LD BC,192               ; ...
  LD (HL),254             ; ...
  LDIR                    ; ...
  LD BC,544               ; Load character rows 6-22 in Terrain Interaction
                          ; Table with 0...
  LD (HL),0               ; ...i.e. allow Magic Knight to pass through
                          ; freely...
  LDIR                    ; ...
  LD BC,31                ; Load character row 23 in Terrain Interaction Table
                          ; with 254...
  LD (HL),254             ; ...i.e. prevent Magic Knight falling through
                          ; floors...
  LDIR                    ; ...
  LD A,(23701)            ; Load A with Magic Knight's current room
  LD HL,50143             ; Point HL at start of Table of Room Layout Data
                          ; Pointers
  CALL 55730              ; Load address of layout data for Magic Knight's
                          ; current room into HL
  PUSH HL                 ; Store HL (pointer to room layout data for Magic
                          ; Knight's current room)
  CALL 35627              ; Clear Display File Below 7th Character Row (Play
                          ; Area)
  XOR A                   ; Set ATTR T system variable into 0 (black INK, black
                          ; PAPER)...
  LD (23695),A            ; ...
  LD H,A                  ; Copy this attribute into both bytes of HL...
  LD L,A                  ; ...
  CALL 28716              ; ...wait for interrupt then flood 7th - 23rd rows of
                          ; Attribute File with this attribute
  POP HL                  ; Restore HL (pointer to room layout data for Magic
                          ; Knight's current room)
  LD (27987),HL           ; Store address of start of room layout data by
                          ; modifying instruction at 27985
; This entry point is used by the routines at 27934, 28730, 28753, 28766 and
; 28785.
  LD A,(HL)               ; Read byte of room layout data
  OR A                    ; If byte is a zero (i.e. marker for end of layout
                          ; data)...
  JP Z,27951              ; ...then draw floor, paint attributes / Terrain
                          ; Interaction Data, draw MK, characters and objects
                          ; then return
  CP 251                  ; If byte is less than 251...
  JP C,27934              ; ...then skip ahead to 27934 (read layout parameters
                          ; and draw graphic in place, then jump back to 27894)
  CP 255                  ; If byte is 255 (print run of UDG)...
  JP Z,28730              ; ...then jump to 28730 (read start co-ordinates,
                          ; repeat count and UDG code, print run of UDGs, then
                          ; jump back to 27894)
  CP 254                  ; If byte is 254 (print a single UDG)...
  JP Z,28753              ; ...then jump to 28753 (read co-ordinates and UDG
                          ; code, print the UDG, then jump back to 27894)
  CP 253                  ; If byte is 253 (draw a line)...
  JP Z,28766              ; ...then jump to 28766 (draw a line, then jump back
                          ; to 27894)
  CP 252                  ; If byte is 252 (draw a horizontal line)...
  JP Z,28785              ; ...then jump to 28785 (draw a horizontal line, then
                          ; jump back to 27894)
  CP 251                  ; If byte is not 251 (used to draw walls)...
  JR NZ,27934             ; ...then skip ahead to 27934 (read layout parameters
                          ; and draw graphic in place, then jump back to 27894)
  LD BC,6                 ; Advance HL by six bytes to next entry in room
                          ; layout data...
  ADD HL,BC               ; ...
  JR 27894                ; Loop back to 27894 for next byte of room layout
                          ; data

; Room Drawing (001 - 250) - Read Layout Parameters and Draw Graphic in Place
;
; Used by the routine at 27762. Input:  A  Index of graphic to draw HL Current
; position in Room Layout Data
  INC HL                  ; Advance HL by three bytes to x- and
                          ; y-coordinates...
  INC HL                  ; ...
  INC HL                  ; ...
  LD E,(HL)               ; Load x- and y-coordinates (characters) for graphic
                          ; into DE...
  INC HL                  ; ...
  LD D,(HL)               ; ...
  INC HL                  ; Advance HL to Mirror Options...
  LD C,(HL)               ; ...and load into C
  INC HL                  ; Advance HL to next byte (start of next entry) in
                          ; Room Layout Data
  PUSH HL                 ; Store HL (current position in Room Layout Data)
  EX DE,HL                ; Swap DE (now current position in Room Layout Data)
                          ; and HL (x- and y-coordinates of graphic to draw)
  CALL 28631              ; Read Graphic Definition from Room Layout Data and
                          ; Draw
  POP HL                  ; Restore HL (current position in Room Layout Data)
  JR 27894                ; Loop back to 27894 for next byte of room layout
                          ; data

; Room Drawing (000) - Draw Floor, Paint Attributes / Terrain Interaction Data,
; Draw MK, Characters and Objects then Return
;
; Floods 7th - 23rd rows of Attribute File with attribute value in byte at
; HL+1.
  INC HL                  ; Advance HL to room attribute...
  LD A,(HL)               ; ...load into A...
  LD (23446),A            ; ...and store at 23446
  INC HL                  ; Advance HL to floor attribute
  PUSH HL                 ; Store HL (points to floor attribute data)
  LD H,A                  ; Load room attribute into both bytes of HL...
  LD L,A                  ; ...
  CALL 28716              ; Wait for interrupt then flood 7th - 23rd rows of
                          ; Attribute File with attribute in HL
  LD HL,20704             ; Load HL with Display File address corresponding to
                          ; (0, 23) (characters)...
  LD (54110),HL           ; ...and move Bitmap Virtual Text Cursor here
  POP HL                  ; Restore HL (points to floor attribute data)
  LD A,(HL)               ; Load floor attribute into A...
  LD (23695),A            ; ...and set ATTR T system variable to this value
  INC HL                  ; Advance HL to floor UDG code...
  LD A,(HL)               ; ...load into A...
  LD (54235),A            ; ...and also load into operand of instruction at
                          ; 54234
  LD HL,32                ; Load HL with 32 as we need to draw across 32
                          ; character blocks
  CALL 54231              ; Draw run of 32 characters (i.e. draw the room's
                          ; floor)
; The operand of the instruction at 27985 represents the address of start of
; room layout data for the current room. This is modified by the instruction at
; 27891.
  LD IX,0                 ; Load IX with start address of room layout data for
                          ; current room
; This entry point is used by the routines at 28095 and 29060.
  LD A,(IX+0)             ; Load first byte of room layout data instruction
  OR A                    ; If this byte is zero (i.e. last entry so no more
                          ; painting to do)...
  JP Z,28101              ; ...then draw all objects and characters in current
                          ; room, draw Magic Knight, set action flags and
                          ; validate I.D. card, then return
  CP 252                  ; If this byte is 252 or more...
  JP NC,29060             ; ...then skip IX over current Room Layout Data entry
                          ; and jump back to 27989 for next one
  INC IX                  ; Advance to RLE Attribute Data index and load into
                          ; L...
  LD L,(IX+0)             ; ...
  INC IX                  ; Advance to RLE Terrain Interaction Data index and
                          ; load into E...
  LD E,(IX+0)             ; ...
  INC IX                  ; Advance to x-coordinate...
  LD A,(IX+0)             ; ...
  LD (23493),A            ; ...and store at 23493
  INC IX                  ; Advance to y-coordinate...
  LD A,(IX+0)             ; ...
  LD (23494),A            ; ...and store at 23494
  LD H,0                  ; Load H with zero (RLE Attribute Data index already
                          ; in L)...
  ADD HL,HL               ; ...and multiply by four...
  ADD HL,HL               ; ...
  LD BC,51997             ; Point BC at start of Lookup Table for RLE Attribute
                          ; Data (Room Layout Graphics)...
  ADD HL,BC               ; ...and add HL as offset, loading result into HL
  EX DE,HL                ; Swap DE (now points to entry in RLE Attribute
                          ; Lookup Table at 51997) and HL (L now RLE Terrain
                          ; Interaction Data index)
  LD H,0                  ; Load H with zero (RLE Terrain Interaction Data
                          ; index already in L)...
  ADD HL,HL               ; ...and multiply by four...
  ADD HL,HL               ; ...
  LD BC,52397             ; Point BC at start of Lookup Table for RLE Terrain
                          ; Interaction Data (Room Layout Graphics)...
  ADD HL,BC               ; ...and add HL as offset, loading result into HL
  EX DE,HL                ; Swap DE (now points to entry in RLE Terrain
                          ; Interaction Lookup Table at 52397) and HL (now
                          ; points to entry in RLE Attribute Lookup Table at
                          ; 51997)
  PUSH DE                 ; Store DE (pointer to required entry in RLE Terrain
                          ; Interaction Lookup Table)
  INC IX                  ; Advance to Mirror Options...
  LD A,(IX+0)             ; ...and load into A
  PUSH IX                 ; Store IX (current position in room layout data)
  OR A                    ; If both mirror options are off...
; The following jumps handle the painting of the current room layout data
; entry's attribute and terrain interaction data. After this painting is
; completed, IX is advanced to the start of the next room layout data entry and
; a jump back to 27989 occurs to process this next entry.
  JP Z,28938              ; ...then paint room layout data entry's attributes
                          ; and terrain interaction data then process next
                          ; entry
  CP 1                    ; If Apply Vertical Mirror selected...
  JP Z,28906              ; ...then paint room layout data entry's attributes
                          ; and terrain interaction data applying vertical
                          ; mirror, then process next entry
  CP 2                    ; If Apply Horizontal Mirror selected...
  JP Z,28874              ; ...then paint room layout data entry's attributes
                          ; and terrain interaction data applying horizontal
                          ; mirror, then process next entry
  JP 28846                ; Otherwise, paint room layout data entry's
                          ; attributes and terrain interaction data applying
                          ; horizontal and vertical mirrors, then process next
                          ; entry

; Room Drawing Advance IX to Start of Next Room Layout Data Entry and Paint
; Attributes
;
; This routine is jumped to only by the routine at 28938, which in turn is only
; jumped to by the routine at 27951. In this latter routine, the instruction at
; 28045 pushes DE (pointer to required entry in RLE Terrain Interaction Lookup
; Table) onto the stack, and then the instruction at 28051 pushes IX (current
; position in room layout data) onto the stack.
  POP IX                  ; Restore IX (current position in room layout data)
  POP HL                  ; Restore HL (pointer to required entry in RLE
                          ; Terrain Interaction Lookup Table, PUSHed by
                          ; instruction at 28045)
  LD A,(IX+0)             ; Load Mirror Options into A
  PUSH IX                 ; Store IX (current position in room layout data)
  OR A                    ; If both mirror options are off...
  JP Z,29174              ; ...then paint room layout data entry's Terrain
                          ; Interaction Parameters, then advance to next entry
  CP 1                    ; If Apply Vertical Mirror selected...
  JP Z,29142              ; ...then paint room layout data entry's Terrain
                          ; Interaction Parameters, applying vertical mirror,
                          ; then advance to next entry
  CP 2                    ; If Apply Horizontal Mirror selected...
  JP Z,29110              ; ...then paint room layout data entry's Terrain
                          ; Interaction Parameters, applying horizontal mirror,
                          ; then advance to next entry
  JP 29082                ; Otherwise, paint room layout data entry's Terrain
                          ; Interaction Parameters, applying horizontal and
                          ; vertical mirrors, then advance to next entry

; Room Drawing Advance IX to Start of Next Room Layout Data Entry and Paint
; Terrain Interaction Data
;
; Used by the routine at 29174.
  POP IX                  ; Restore IX (current position in room layout data,
                          ; PUSHed by instruction at 28076)
  INC IX                  ; Advance IX by one byte to start of next room layout
                          ; data entry
  JR 27989                ; Process next room layout instruction (jump to
                          ; 27989)

; Draw All Objects and Characters in Current Room, Draw Magic Knight, Set
; Action Flags and Validate I.D. Card
;
; Used by the routine at 27951. Output: A  Index of Magic Knight's current room
  CALL 29272              ; If Magic Knight is on the bridge and USS Pisces is
                          ; not at Gangrole then draw viewscreen starfield
  CALL 28172              ; Print Magic Knight's current room's name at top of
                          ; screen
  CALL 28264              ; Prepare to execute room-specific routine for Magic
                          ; Knight's current room
  CALL 36077              ; Draw all objects in Magic Knight's current room
  CALL 28364              ; Draw all characters in Magic Knight's current room
  LD A,(23701)            ; Flag Magic Knight's current room as visited for
                          ; scoring purposes...
  LD E,A                  ; ...
  LD D,0                  ; ...
  LD HL,23502             ; ...
  ADD HL,DE               ; ...
  LD (HL),1               ; ...
  LD A,7                  ; Set system variable BORDCR to 7...
  LD (23624),A            ; ...
  XOR A                   ; Set border to black and reset speaker state...
  OUT (254),A             ; ...
  LD A,71                 ; Set ATTR T system variable to 71 (white INK, black
                          ; PAPER, BRIGHT)...
  LD (23695),A            ; ...
  RES 1,(IY+65)           ; Reset Characters Free to Move Flag (IY = 23610)
  RES 2,(IY+65)           ; Reset Unknown Flag (IY = 23610)
  LD A,(23480)            ; If Unknown / Unused Flag 2 is zero...
  OR A                    ; ...
  JR Z,28155              ; ...then jump to 28155 (see trivia)
  CALL 53150              ; Store background attributes if appropriate, then
                          ; draw Magic Knight to display
  XOR A                   ; Set Unknown / Unused Flag 2 to zero...
  LD (23480),A            ; ...
  CALL 28696              ; If Draw Communicate Window / Face Flag is set then
                          ; draw Communicate Window / Face
  CALL 34265              ; Set Magic Knight's available action flags and
                          ; validate I.D. Card if appropriate
  LD A,(23701)            ; Load A with Magic Knight's current room
  RET                     ; Return

; Print Magic Knight's Current Room's Name at Top of Screen
;
; The Room Name Bar displayed on the 7th character row defaults to an attribute
; value of 71 as per the instruction at 28172. However in cases where the
; current room has a name record defined in the table at 42765, the attribute
; defined in that record will override this default attribute. Therefore, the
; default attribute is only visible in rooms without names.
  LD A,71                 ; Set ATTR T system variable to 71 (white INK, black
                          ; PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD HL,16576             ; Load HL with Display File address corresponding to
                          ; (0, 6) (characters)...
  LD (54110),HL           ; ...and move Bitmap Virtual Text Cursor here
  LD HL,32                ; Load HL (repeat counter) with 32
  LD A,93                 ; Set character to be repeated to 93 (body of "Room
                          ; Name Bar")...
  LD (54235),A            ; ...
  CALL 54231              ; Print the character 32 times across width of screen
  LD HL,42765             ; Point HL at start of table of room names
  LD A,(23701)            ; Load B with Magic Knight's current room...
  LD B,A                  ; ...
  CALL 54269              ; Advance HL to name entry for Magic Knight's current
                          ; room
  LD A,(HL)               ; Load first value (attribute) into A
  OR A                    ; If attribute value is zero (i.e. no room name
                          ; defined)...
  RET Z                   ; ...then return
  LD (23695),A            ; Load system variable ATTR T to required attribute
                          ; value
  INC HL                  ; Advance HL to string length data...
  LD A,(HL)               ; ...and load into A
  INC HL                  ; Advance HL to first byte of string
  PUSH HL                 ; Store HL (pointer to first byte of room name
                          ; string)
  ADD A,4                 ; Add 4 to the string's length to accommodate space,
                          ; and "bar cap" characters (chars. 35 and 36) before
                          ; and after...
  LD B,A                  ; ...and load value into B
  LD A,32                 ; Load A with width of screen (characters) minus
                          ; length of room name string, spaces and bar caps...
  SUB B                   ; ...
  RRCA                    ; Divide value by two...
  AND 31                  ; ...and cap at 31
  LD C,A                  ; Load this value (length of one half of Room Name
                          ; Bar) into BC...
  LD B,0                  ; ...
  LD HL,16576             ; Point HL at top pixel row of character block at
                          ; coordinates (0, 6)
  ADD HL,BC               ; Add value in BC as offset...
  LD (54110),HL           ; ...and load this address into Bitmap Virtual Text
                          ; Cursor
  LD HL,22720             ; Point HL at Attribute File address for character
                          ; coordinates (0, 6)
  LD DE,22721             ; Point DE at Attribute File address for character
                          ; coordinates (1, 6)
  LD BC,31                ; Set repeat count to 31
; ATTR T is initially 71 (as set by instruction at 28174) and may have been
; changed to a new value as specified in room name entry in table at 42765
  LD A,(23695)            ; Load A with system variable ATTR T
  LD (HL),A               ; Fill entire row in Attribute File with this
                          ; attribute value...
  LDIR                    ; ...
  LD HL,42160             ; Point HL at text code for SPACE followed by Room
                          ; Name Bar End Cap (Right)
  CALL 34733              ; Print text at location HL to screen using full
                          ; screen width
  POP HL                  ; Restore HL (pointer to first byte of room name
                          ; string)
  CALL 34733              ; Print text at location HL to screen using full
                          ; screen width
  LD HL,42163             ; Point HL at text code for Room Name Bar End Cap
                          ; (Left) followed by SPACE
  JP 34733                ; Print text at location HL to screen using full
                          ; screen width and return

; Prepare to Execute Room-Specific Routine for Magic Knight's Current Room
;
; Used by the routine at 28101.
  LD A,(23701)            ; Load A with Magic Knight's current room
  LD HL,53429             ; Point HL at start of Table of Room-Specific Routine
                          ; Addresses
  CALL 55730              ; Advance HL to entry for Magic Knight's current room
                          ; and load into HL
  LD (28467),HL           ; Update jump in routine at 28457 to execute
                          ; room-specific routine
  RET                     ; Return

; Check Whether Magic Knight is Moving into a New Room and React if so
;
; Used by the routine at 28457.
  LD A,(25156)            ; Load A with Magic Knight's current x-coordinate
                          ; (pixels)
  CP 3                    ; If less than 3...
  JP C,28323              ; ...then skip to 28323 (move Magic Knight one room
                          ; to the left if possible then return)
  CP 230                  ; If 230 or more...
  JP NC,28346             ; ...then skip to 28346 (move Magic Knight one room
                          ; to the right if possible then return)
  RET                     ; Return

; Change Magic Knight's Current Room if Possible
;
; Used by the routines at 28323 and 28346. Input:  A  Magic Knight's new
; x-coordinate upon entering new room DE Exit that Magic Knight is leaving old
; room from; either 0 (left exit) or 1 (right exit) Output: F  Zero Flag set if
; Magic Knight can't leave his current room, reset otherwise
  PUSH AF                 ; Store new x-coordinate for later
  XOR A                   ; Set Magic Knight's Temporary Movement Flags to zero
                          ; (new room, so Magic Knight can move both left and
                          ; right)...
  LD (23463),A            ; ...
  LD HL,37022             ; Point HL to Room Connectivity Data Table
  LD A,(23701)            ; Load Magic Knight's current room's index into A...
  ADD A,A                 ; ...double it...
  LD C,A                  ; ...and load into BC...
  LD B,0                  ; ...
  ADD HL,BC               ; Add BC as offset to HL
  ADD HL,DE               ; Point to left or right exit from current room, as
                          ; determined by DE
  LD A,(HL)               ; Load new room number into A...
  CP 255                  ; ...and if this is 255 (i.e. Magic Knight can't
                          ; leave his current room)...
  JR Z,28320              ; ...set Zero Flag and exit routine...
  LD (23701),A            ; ...else update Magic Knight's current room to be
                          ; this new room index
  POP BC                  ; Restore new x-coordinate to B...
  LD A,B                  ; ...and load back into A
  OR A                    ; Reset Zero Flag
  RET                     ; Return
  POP BC                  ; Restore AF to BC...
  LD A,B                  ; ...and load A with contents of B to restore to what
                          ; it was on entering this routine
  RET                     ; Return

; Move Magic Knight One Room to the Left if Possible
;
; Used by the routine at 28277. Input:  A  (Entry at 28333 only) Magic Knight's
; new x-coordinate (pixels)
  LD DE,0                 ; Set DE to zero (dealing with current room's left
                          ; exit)
  LD A,228                ; Load A with Magic Knight's new x-coordinate when he
                          ; arrives in new room (228 is near right-hand side of
                          ; room)
  CALL 28291              ; Change Magic Knight's current room (if possible)
                          ; based upon left exit of his current room
  JR Z,28340              ; If Magic Knight can't leave his current room then
                          ; jump to 28340
; This entry point is used by the routine at 28346.
  LD (25156),A            ; Set Magic Knight's x-coordinate
  CALL 27765              ; Draw Magic Knight's current room, draw objects and
                          ; characters and initialise room-specific data
  RET                     ; Return
  LD A,1                  ; Set Magic Knight's Temporary Movement Flags to 1
                          ; (Magic Knight can't move left because he can't
                          ; leave his current room)...
  LD (23463),A            ; ...
  RET                     ; Return

; Move Magic Knight One Room to the Right if Possible
;
; Used by the routine at 28277.
  LD DE,1                 ; Set DE to one (dealing with current room's right
                          ; exit)
  LD A,5                  ; Load A with Magic Knight's new coordinate when he
                          ; arrives in new room (5 is near left-hand side of
                          ; room)
  CALL 28291              ; Change Magic Knight's current room (if possible)
                          ; based upon right exit of his current room
  JR Z,28358              ; If Magic Knight's can't leave his current room then
                          ; jump to 28358
  JR 28333                ; Set Magic Knight's x-coordinate, draw the room and
                          ; return
  LD A,2                  ; Set Magic Knight's Temporary Movement Flags to 2
                          ; (Magic Knight can't move right because he can't
                          ; leave his current room)...
  LD (23463),A            ; ...
  RET                     ; Return

; Draw all Characters in Magic Knight's Current Room
;
; Used by the routine at 28101.
  LD IX,25244             ; Point IX at start of Table of Characters' Current
                          ; Positions at 25244
  LD BC,4096              ; Load B with 16 and C (current character) with 0
                          ; (see trivia)
  LD A,(23701)            ; Load A with Magic Knight's current room
  CP (IX+0)               ; If Magic Knight and current character are in the
                          ; same room...
  CALL Z,28390            ; ...then draw character with index C
  INC C                   ; Increase C to advance to next character
  INC IX                  ; Advance IX to entry for next character...
  INC IX                  ; ...
  INC IX                  ; ...
  DJNZ 28371              ; Loop back to 28371 for next character
  RET                     ; Return

; Draw a character
;
; Used by the routine at 28364. Input:  C  A character index IX  That
; character's entry in Table of Characters' Current Positions at 25244
  PUSH BC                 ; Store BC
  PUSH IX                 ; Store IX
  LD A,C                  ; Load A with character's index...
  LD E,4                  ; ...and point HL at this character's Magic Level /
                          ; Attribute value (in Characters' Current Stats
                          ; Table)...
  CALL 33541              ; ...
  LD A,(HL)               ; Load character's Magic Level / Attribute into A...
  LD (28442),A            ; ...and modify instruction at 28441 with this value
  INC HL                  ; Advance HL to Character Graphic Index...
  LD A,(HL)               ; ...and load value into A
  OR A                    ; If this is zero...
  JR Z,28428              ; ...then skip ahead to 28428 (i.e. don't draw the
                          ; character)
  LD C,(IX+1)             ; Load C with character's x-coordinate (characters)
  LD B,(IX+2)             ; Load B with character's y-coordinate (characters)
  PUSH IX                 ; Store IX (pointer to character's entry in Table of
                          ; Characters' Current Positions)
  CALL 54411              ; Draw the graphic with lookup index A at character
                          ; coordinates (C, B) with width = 2 characters and
                          ; height = 4 characters
  POP IX                  ; Restore IX (pointer to character's entry in Table
                          ; of Characters' Current Positions)
  LD A,(23705)            ; If Player Attribute Update Flag is set (Player
                          ; Attribute Update mode)...
  OR A                    ; ...
  CALL NZ,28432           ; ...then paint the character's attributes
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  RET                     ; Return

; Paint a character's attributes
;
; Used by the routine at 28390. Input:  IX  A character's entry in Table of
; Characters' Current Positions at 25244
  LD C,(IX+1)             ; Load C with character's x-coordinate (characters)
  LD B,(IX+2)             ; Load B with character's y-coordinate (characters)
  CALL 54148              ; Load HL with Attribute File address for coordinates
                          ; (C, B)
; The operand of the instruction at 28441 represents the character's magic
; level / attribute value. This is modified by the instruction at 28400.
  LD A,0                  ; Load A with Magic Level / Attribute value
  LD B,4                  ; Load B with 4 (as characters are four characters
                          ; high)
  PUSH BC                 ; Store BC (B = remaining number of character rows to
                          ; paint)
  LD (HL),A               ; Paint character's attribute at coordinates (C,
                          ; B)...
  INC HL                  ; ...
  LD (HL),A               ; ...and at coordinates (C + 1, B)
  LD BC,31                ; Advance down one character row, and left one
                          ; character to coordinates (C, B + 1)...
  ADD HL,BC               ; ...
  POP BC                  ; Restore BC (B = remaining number of character rows
                          ; to paint)
  DJNZ 28445              ; Decrease remaining number of character rows to
                          ; paint and loop back to 28445
  RET                     ; Return

; Set Magic Knight's Velocity to Zero, if Appropriate Move to New Room, Execute
; Room-Specific Routine
;
; Used by the routines at 27136 and 27357.
  LD HL,0                 ; Set Magic Knight's current x- and y-velocities to
                          ; zero...
  LD (25160),HL           ; ...
  CALL 28277              ; Check whether Magic Knight is moving into a new
                          ; room and react if so
; The operand of the instruction at 28466 (jump destination) is the address of
; a room-specific routine. This is modified by the instruction at 28273.
  JP 28469                ; Jump to room-specific routine

; Room-Specific Routine Do Nothing
;
; Used by the routine at 28457.
  RET                     ; Return

; Room-Specific Routine Go to Game Over Routine if Magic Knight is not Wearing
; the Cloak of Invisibility
  LD A,1                  ; If Magic Knight is wearing the Cloak of
                          ; Invisibility (01)...
  CALL 33640              ; ...
  RET Z                   ; ...then return
  LD HL,44699             ; Point HL at "SECURITY SAW YOU..." text
  JP 55685                ; Jump to "Game over" window routine and return to
                          ; Control Selection Menu

; Room-Specific Routine Go to Game Over Routine if Magic Knight is not Wearing
; the Pair of Boots
  LD A,22                 ; If Magic Knight is wearing the Pair of Boots
                          ; (22)...
  CALL 33640              ; ...
  RET Z                   ; ...then return
  LD HL,44663             ; Point HL at "SECURITY HEARD YOU..." text
  JP 55685                ; Jump to "Game over" window routine and return to
                          ; Control Selection Menu

; Room-Specific Routine Go to Game Over Routine if Magic Knight is not Wearing
; the Gas Mask
  LD A,27                 ; If Magic Knight is wearing the Gas Mask (27)...
  CALL 33640              ; ...
  RET Z                   ; ...then return
  LD HL,44733             ; Point HL at "THE GAS PENETRATED YOUR ARMOUR..."
                          ; text
  JP 55685                ; Jump to "Game over" window routine and return to
                          ; Control Selection Menu

; Room-Specific Routine Show Tyme Guardians' Warning Message if not Already
; Shown
  LD A,(23472)            ; If Tyme Guardians' Warning Message Shown Flag is
                          ; set...
  BIT 2,A                 ; ...
  RET NZ                  ; ...then return
  OR 4                    ; Set Tyme Guardians' Warning Message Shown Flag...
  LD (23472),A            ; ...
  LD HL,46989             ; Point HL at "A LOUD BOOMING VOICE..." text
  LD DE,37195             ; Adjust height of window 13 to accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (pointer to start of text to print)
  LD A,13                 ; Draw Window 13...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)
  CALL 34762              ; Print text to screen
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
  JP 27765                ; Draw Magic Knight's current room, draw objects and
                          ; characters and initialise room-specific data and
                          ; return

; Room-Specific Routine Go to Game Over Routine if Magic Knight is not Carrying
; the Golden Sundial of Alpha
  LD A,13                 ; If Magic Knight is carrying the Golden Sundial of
                          ; Alpha (13)...
  CALL 33645              ; ...
  RET Z                   ; ...then return
  LD HL,44780             ; Point HL at "THE AUTO DEFENCE SYSTEMS HAVE REMOVED
                          ; YOU..." text
  JP 55685                ; Jump to "Game over" window routine and return to
                          ; Control Selection Menu

; Room-Specific Routine Show Tyme Guardians' Messages and Install Tyme Machine
; on USS Pisces
  LD A,(23472)            ; If Tyme Machine Installed Flag is set...
  BIT 1,A                 ; ...
  RET NZ                  ; ...then return
  OR 2                    ; Set Tyme Machine Installed Flag...
  LD (23472),A            ; ...
  LD A,(23397)            ; Increase Bonus Score by 5...
  ADD A,5                 ; ...
  LD (23397),A            ; ...
  LD A,24                 ; Set right exit from USS Pisces, 5 (The Airlock) to
                          ; USS Pisces, 6A (The Control Column)...
  LD (37033),A            ; ...
  LD HL,47114             ; Point HL at "THE TYME GUARDIANS ARE SHOCKED AT YOUR
                          ; ARRIVAL..." text
  LD DE,37195             ; Adjust height of window 13 to accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (pointer to start of text to print)
  LD A,13                 ; Draw Window 13...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)
  CALL 34762              ; Print text to screen
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
  LD HL,47250             ; Point HL at "YOU MUST RETURN TO YOUR OWN TIME..."
                          ; text
  LD DE,37323             ; Adjust height of window 29 to accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (pointer to start of text to print)
  LD A,29                 ; Draw Window 29...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)
  CALL 34762              ; Print text to screen
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
  JP 27765                ; Draw Magic Knight's current room, draw objects and
                          ; characters and initialise room-specific data and
                          ; return

; Divide A by Eight, Rounding Down to Nearest Integer
;
; Used by the routines at 27357, 27508, 27647, 33757, 34567 and 35525.
  RRCA                    ; Divide by eight...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...and remove remainder
  RET                     ; Return

; Room Drawing Read Graphic Definition from Room Layout Data and Draw
;
; Used by the routines at 27934, 28696 and 30145. Input:  A  Index of graphic
; to draw C  Mirror options (bit 0 = apply vertical mirror, bit 1 = apply
; horizontal mirror) H  y-coordinate (characters) L  x-coordinate (characters)
  PUSH BC                 ; Store BC (C = horizontal / vertical mirror options)
  PUSH HL                 ; Store HL (H = y-coordinate, L = x-coordinate)
  LD L,A                  ; Load four times index of graphic to draw into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  LD BC,55950             ; ...and add (in HL) to address of start of Graphics
                          ; Data Lookup Table at 55950 as an offset...
  ADD HL,BC               ; ...
  LD C,(HL)               ; Load width & height at this location into BC...
  INC HL                  ; ...
  LD B,(HL)               ; ...
  INC HL                  ; ...
  LD A,(HL)               ; Load address of graphic data into HL...
  INC HL                  ; ...
  LD H,(HL)               ; ...
  LD L,A                  ; ...
  LD (23447),HL           ; ...and store at 23447
  POP HL                  ; Restore HL (H = y-coordinate, L = x-coordinate)...
  LD (23493),HL           ; ...and store at 23493
  ADD HL,BC               ; Add width and height to get coordinates (x+1, y+1)
                          ; of bottom right of graphic to draw...
  LD (23495),HL           ; ...and store at 23495
  POP BC                  ; Restore BC (C = horizontal / vertical mirror
                          ; options)
  LD A,C                  ; If both mirror options are switched off...
  AND 3                   ; ...
  JP Z,28684              ; ...then skip ahead to 28684
  CP 1                    ; If only the "apply vertical mirror" option is
                          ; switched on...
  JP Z,28687              ; ...then skip ahead to 28687
  CP 2                    ; If only the "apply horizontal mirror" option is
                          ; switched on...
  JP Z,28690              ; ...then skip ahead to 28690
  CP 3                    ; If both mirror options are switched on...
  JP Z,28693              ; ...then skip ahead to 28693
  RET                     ; Return
  JP 52513                ; Set "Apply Vertical Mirror" Mode off, "Apply
                          ; Horizontal Mirror" Mode off, draw the graphic and
                          ; return
  JP 52535                ; Set "Apply Vertical Mirror" Mode on, "Apply
                          ; Horizontal Mirror" Mode off, draw the graphic and
                          ; return
  JP 52566                ; Set "Apply Vertical Mirror" Mode off, "Apply
                          ; Horizontal Mirror" Mode on, draw the graphic and
                          ; return
  JP 52596                ; Set "Apply Vertical Mirror" Mode on, "Apply
                          ; Horizontal Mirror" Mode on, draw the graphic and
                          ; return

; If Draw Communicate Window / Face Flag is Set then Draw Communicate Window /
; Face
;
; Used by the routine at 28101.
  LD A,(23461)            ; If Draw Communicate Window / Face Flag is reset...
  OR A                    ; ...
  RET Z                   ; ...then return
  LD A,26                 ; Draw Window 26...
  CALL 34990              ; ...
  LD C,0                  ; Load C with zero (Mirror Options = no mirror)
  LD A,62                 ; Load A with 62 (index of Viewscreen Face graphic)
  LD HL,2833              ; Load H with 11 and L with 17 (y- and x-coordinates
                          ; to draw)
  JP 28631                ; Draw Viewscreen Face graphic and return

; Wait for Interrupt then Flood 7th - 22nd Rows of Attribute File with
; Attribute in HL
;
; Used by the routines at 27762 and 27951. Input:  HL  Attribute to use
  HALT                    ; Wait for interrupt
  LD (35670),SP           ; Store stack pointer at 35669
  LD SP,23264             ; Point stack pointer at start of last row of
                          ; Attribute File
  LD BC,4098              ; Load B with 16 (repeat inner loop 16 times) and C
                          ; with 2 (repeat outer loop twice)
  JP 35663                ; Clear 7th to 23rd rows of Attribute File

; Room Drawing (255) - Read Start Co-Ordinates, Repeat Count and UDG Code and
; Print Run of Characters
;
; Used by the routine at 27762.
  CALL 28833              ; Move Virtual Bitmap Cursor to Co-Ordinates
                          ; Specified in Layout Data
  LD B,(HL)               ; Load repeat count into B...
  INC HL                  ; ...and advance HL to next parameter
  LD A,(HL)               ; Load UDG code to print into A...
  INC HL                  ; ...and advance HL to next parameter
  PUSH HL                 ; Store HL (current position in room layout data)
  PUSH BC                 ; Store BC (B = remaining number of UDGs to print)
  PUSH AF                 ; Store AF (A = UDG code to print)
  PUSH HL                 ; Store HL (current position in room layout data)
  CALL 54097              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  POP HL                  ; Restore HL (current position in room layout data)
  POP AF                  ; Restore AF (A = UDG code to print)
  POP BC                  ; Restore BC (B = remaining number of UDGs to print)
  DJNZ 28738              ; Decrease remaining number of UDGs to print and loop
                          ; back to 28738
  POP HL                  ; Restore HL (current position in room layout data)
  JP 27894                ; Jump back to 27894 for next byte of room layout
                          ; data

; Room Drawing (254) - Read Start Co-Ordinates and UDG Code and Print the UDG
;
; Used by the routine at 27762.
  CALL 28833              ; Move Virtual Bitmap Cursor to Co-Ordinates
                          ; Specified in Layout Data
  LD A,(HL)               ; Load UDG code to print into A...
  INC HL                  ; ...and advance HL to next parameter
  PUSH HL                 ; Store HL (current position in room layout data)
  CALL 54097              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  POP HL                  ; Restore HL (current position in room layout data)
  JP 27894                ; Jump back to 27894 for next byte of room layout
                          ; data

; Room Drawing (253) - Draw a Line
;
; Used by the routine at 27762.
  INC HL                  ; Advance data pointer by three bytes...
  INC HL                  ; ...
  INC HL                  ; ...
  LD C,(HL)               ; Load x-coordinate of start of line into C
  INC HL                  ; Advance HL to y-coordinate of start of line...
  LD B,(HL)               ; ...and load into B
  INC HL                  ; Advance HL to x-coordinate of end of line...
  LD E,(HL)               ; ...and load into E
  INC HL                  ; Advance HL to y-coordinate of end of line...
  LD D,(HL)               ; ...and load into D
  INC HL                  ; Advance HL to start of next room layout data entry
  PUSH HL                 ; Store HL (current position in room layout data)
  CALL 36543              ; Draw a line from (C, B) to (E, D)
  POP HL                  ; Restore HL (current position in room layout data)
  JP 27894                ; Jump back to 27894 for next byte of room layout
                          ; data

; Room Drawing (252) - Draw a Horizontal Line
;
; Used by the routine at 27762.
  INC HL                  ; Advance data pointer by three bytes...
  INC HL                  ; ...
  INC HL                  ; ...
  PUSH HL                 ; Transfer current position in room layout data from
                          ; HL to IX...
  POP IX                  ; ...
  LD L,(IX+0)             ; Load HL with y-coordinate (pixels)...
  LD H,0                  ; ...
  ADD HL,HL               ; ...and double
  LD BC,26240             ; Point BC at Table of Display File Addresses of
                          ; Start of Each Pixel Row...
  ADD HL,BC               ; ...and add doubled y-coordinate as offset in HL
  CALL 55735              ; Load address corresponding to start of pixel row at
                          ; this coordinate into HL
  INC IX                  ; Advance layout data pointer to next byte
  LD C,(IX+0)             ; Load BC with x-coordinate of start of line
                          ; (characters)...
  LD B,0                  ; ...
  ADD HL,BC               ; ...and add to HL as offset
  INC IX                  ; Advance layout data pointer to next byte
  LD A,(IX+0)             ; Load A with x-coordinate of end of line
                          ; (characters)
  SUB C                   ; Subtract start coord. from end coord. and add one
                          ; to get width...
  INC A                   ; ...
  LD B,A                  ; ...and load into B
  LD A,255                ; Load A with 255 (i.e. all bits set)
  LD (HL),A               ; Write a row of eight set pixels to the Display
                          ; File...
  INC HL                  ; ...and advance to next character to the right
  DJNZ 28822              ; Decrease B (remaining number of character blocks to
                          ; draw to) and loop back to 28822
  PUSH IX                 ; Transfer current position in room layout data from
                          ; IX to HL...
  POP HL                  ; ...
  INC HL                  ; Advance room layout data pointer to next
                          ; instruction in layout data
  JP 27894                ; Jump back to 27894 for next byte of room layout
                          ; data

; Room Drawing - Move Virtual Bitmap Cursor to Co-Ordinates Specified in Layout
; Data
;
; Used by the routines at 28730 and 28753. Input:  HL  Pointer to an
; instruction in room layout data Output: HL Pointer to next instruction in
; room layout data
  INC HL                  ; Advance HL by three bytes...
  INC HL                  ; ...
  INC HL                  ; ...
  LD C,(HL)               ; Load x- and y-coordinates into BC...
  INC HL                  ; ...
  LD B,(HL)               ; ...
  INC HL                  ; ...advancing to next position in room layout data
  PUSH HL                 ; Store HL (current position in room layout data)
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  POP HL                  ; Restore HL (current position in room layout data)
  RET                     ; Return

; Paint Room Layout Data Entry's Attributes, Applying Horizontal and Vertical
; Mirrors (Room Drawing)
;
; Used by the routine at 27951. Input:  HL  Points to entry in Lookup Table for
; RLE Attribute Data (Room Layout Graphics) (at 51997) Output: B y-coordinate
; of graphic's bottom C  x-coordinate of graphic's right
  PUSH HL                 ; Store HL (current entry in Lookup Table for RLE
                          ; Attribute Data)
  LD HL,23493             ; Modify instruction at 28984 to load x-coordinate of
                          ; graphic's left edge into A...
  LD (28985),HL           ; ...i.e. set end x-coordinate for painting
                          ; right-to-left
  LD HL,29026             ; Modify instruction at 28988 to jump to 29026...
  LD (28989),HL           ; ...i.e. advance HL up one character row in
                          ; Attribute File
  LD A,43                 ; Modify instruction at 28991 with opcode 43 (DEC
                          ; HL)...
  LD (28991),A            ; ...
  POP HL                  ; Restore HL (current entry in Lookup Table for RLE
                          ; Attribute Data)
  CALL 29036              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Attribute Data
  LD BC,(23495)           ; Load BC with coordinates of graphic's bottom-right
  JR 28964                ; Jump to attribute painting routine

; Paint Room Layout Data Entry's Attributes, Applying Horizontal Mirror (Room
; Drawing)
;
; Used by the routine at 27951. Input:  HL  Points to entry in Lookup Table for
; RLE Attribute Data (Room Layout Graphics) (at 51997) Output: B y-coordinate
; of graphic's bottom C  x-coordinate of graphic's left
  PUSH HL                 ; Store HL (current entry in Lookup Table for RLE
                          ; Attribute Data)
  LD HL,23495             ; Modify instruction at 28984 to load x-coordinate of
                          ; graphic's right edge into A...
  LD (28985),HL           ; ...i.e. set end x-coordinate for painting
                          ; left-to-right
  LD HL,29026             ; Modify instruction at 28988 to jump to 29026...
  LD (28989),HL           ; ...i.e. advance HL up one character row in
                          ; Attribute File
  LD A,35                 ; Modify instruction at 28991 with opcode 35 (INC
                          ; HL)...
  LD (28991),A            ; ...
  POP HL                  ; Restore HL (current entry in Lookup Table for RLE
                          ; Attribute Data)
  CALL 29036              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Attribute Data
  LD A,(23493)            ; Load C with x-coordinate of graphic's left edge...
  LD C,A                  ; ...
  LD A,(23496)            ; Load B with y-coordinate of graphic's bottom
                          ; edge...
  LD B,A                  ; ...
  JR 28964                ; Jump to attribute painting routine

; Paint Room Layout Data Entry's Attributes, Applying Vertical Mirror (Room
; Drawing)
;
; Used by the routine at 27951. Input:  HL  Points to entry in Lookup Table for
; RLE Attribute Data (Room Layout Graphics) (at 51997) Output: B y-coordinate
; of graphic's top C  x-coordinate of graphic's right
  PUSH HL                 ; Store HL (current entry in Lookup Table for RLE
                          ; Attribute Data)
  LD HL,23493             ; Modify instruction at 28984 to load x-coordinate of
                          ; graphic's left edge into A...
  LD (28985),HL           ; ...i.e. set end x-coordinate for painting
                          ; right-to-left
  LD HL,29005             ; Modify instruction at 28988 to jump to 29005...
  LD (28989),HL           ; ...i.e. advance HL down one character row in
                          ; Attribute File
  LD A,43                 ; Modify instruction at 28991 with opcode 43 (DEC
                          ; HL)...
  LD (28991),A            ; ...
  POP HL                  ; Restore HL (current entry in Lookup Table for RLE
                          ; Attribute Data)
  CALL 29036              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Attribute Data
  LD A,(23495)            ; Load C with x-coordinate of graphic's right edge...
  LD C,A                  ; ...
  LD A,(23494)            ; Load B with y-coordinate of graphic's top edge...
  LD B,A                  ; ...
  JR 28964                ; Jump to attribute painting routine

; Paint Room Layout Data Entry's Attributes (Room Drawing)
;
; Used by the routine at 27951. Input:  HL  Points to entry in Lookup Table for
; RLE Attribute Data (Room Layout Graphics) at 51997 DE  Points to entry in
; Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics) at 52397
  PUSH HL                 ; Store HL (Pointer to entry in Lookup Table for RLE
                          ; Attribute Data)
  LD HL,23495             ; Modify instruction at 28984 to load x-coordinate of
                          ; graphic's right edge into A...
  LD (28985),HL           ; ...i.e. set end x-coordinate for painting
                          ; left-to-right
  LD HL,29005             ; Modify instruction at 28988 to jump to 29005...
  LD (28989),HL           ; ...i.e. advance HL down one character row in
                          ; Attribute File
  LD A,35                 ; Modify instruction at 28991 with opcode 35 (INC
                          ; HL)...
  LD (28991),A            ; ...
  POP HL                  ; Restore HL (Pointer to entry in Lookup Table for
                          ; RLE Attribute Data)
  CALL 29036              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Attribute Data
  LD BC,(23493)           ; Load BC with x- and y-coordinates (top-left)
                          ; defined in current room layout data entry
; This entry point is used by the routines at 28846, 28874 and 28906. At this
; point, BC holds the initial coordinates in characters, from which to start
; painting attributes. IX points to the required RLE attribute data.
  PUSH BC                 ; Store BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  CALL 54148              ; Point HL at Attribute File address for character
                          ; coordinates (C, B)
  LD A,(IX+0)             ; Load A with repeat count value
  OR A                    ; If repeat count is zero...
  JP Z,29001              ; ...then jump to 29001
  LD B,A                  ; Load B with repeat count
  LD C,(IX+1)             ; Load C with attribute to paint
  LD (HL),C               ; Apply attribute in C to current Attribute File
                          ; location in HL
  LD A,L                  ; Load E with x-coordinate (characters) of current
                          ; Attribute File location...
  AND 31                  ; ...
  LD E,A                  ; ...
; The operand of the instruction at 28984 is modified by instructions at 28850,
; 28878, 28910, 28942, to 23493 (x-coordinate of left edge), 23495
; (x-coordinate of right edge), 23493 (x-coordinate of left edge), or 23495
; (x-coordinate of right edge) respectively.
  LD A,(23495)            ; Load A with end x-coordinate for painting...
  CP E                    ; ...and if this is the same as the x-coordinate...
; The operand of the instruction at 28988 (i.e. the destination of the jump) is
; modified by the instructions at 28856, 28884, 28916 and 28948 to be 29026
; (move up one character row), 29026 (move up one character row), 29005 (move
; down one character row) or 29005 (move down one character row) respectively.
  JP Z,29005              ; ...then jump to routine to move up or down one
                          ; character row
; The instruction at 28991 is modified by the instructions at 28861, 28889,
; 28921 and 28953 to 43 (DEC HL), 35 (INC HL), 43 (DEC HL) or 35 (INC HL)
; respectively.
  INC HL                  ; Advance HL to next (or previous) byte in Attribute
                          ; File
  DJNZ 28979              ; Decrease B (repeat count) and loop back to 28979 if
                          ; not zero
  INC IX                  ; Advance IX by two bytes in RLE attribute data...
  INC IX                  ; ...
  JP 28968                ; Loop back to 28968 for this new data
  POP BC                  ; Restore BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  JP 28070                ; Advance to next Room Layout Data entry and paint
                          ; its attributes
; Move down one character row
  EXX                     ; Switch registers
  LD A,(23496)            ; Load A with one more than y-coordinate of bottom
                          ; edge of area to paint...
  INC A                   ; ...
  POP BC                  ; Restore BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  INC B                   ; Increase B (i.e. move down a character row)
  PUSH BC                 ; Store BC (B = updated y-coordinate, C = initial
                          ; x-coordinate)
  CP B                    ; If B is the same as A (i.e. we are now outside the
                          ; area to be painted)...
  JP Z,29001              ; ...then jump to 29001
  CALL 54148              ; Load HL with Attribute File address for coordinates
                          ; (C, B) and load E with x-coordinate (characters)
  PUSH HL                 ; Store HL (new Attribute File Address)
  EXX                     ; Switch registers
  POP HL                  ; Restore HL (new Attribute File Address)
  JP 28992                ; Jump back to 28992 and continue painting
; Move up one character row
  EXX                     ; Switch registers
  LD A,(23494)            ; Load A with one less than y-coordinate of top edge
                          ; of area to paint...
  DEC A                   ; ...
  POP BC                  ; Restore BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  DEC B                   ; Increase B (i.e. move down a character row)
  JP 29012                ; Jump back to 29012

; Store Coordinates of Area to be Coloured and Point IX at RLE Attribute (or
; Terrain Interaction) Data (Room Drawing)
;
; Used by the routines at 28846, 28874, 28906, 28938, 29082, 29110, 29142 and
; 29174. Input:  HL Pointer to entry in Lookup Table for Attribute Data or
; Terrain Interaction Data Output: IX  Points to start of RLE attribute data
  LD BC,(23493)           ; Load BC with x- and y-coordinates (top-left)
                          ; defined in current room layout data entry
  LD A,(HL)               ; Load width as defined in attribute lookup data into
                          ; A...
  ADD A,C                 ; ...add to x-coordinate...
  DEC A                   ; ...subtract one to get x-coordinate of right of
                          ; graphic...
  LD (23495),A            ; ...and store at 23495
  INC HL                  ; Advance HL to height value in attribute lookup
                          ; data...
  LD A,(HL)               ; ...load into A...
  ADD A,B                 ; ...add to y-coordinate...
  LD (23496),A            ; ...and store at 23496
  INC HL                  ; Advance HL to address of attribute data...
  CALL 55735              ; ...load this address into HL...
  PUSH HL                 ; ...and copy the address from HL to IX...
  POP IX                  ; ...
  RET                     ; Return

; Skip IX Over Room Layout Data Entry for Which Painting (Attribute / Terrain
; Interaction) is Inappropriate
;
; Used by the routine at 27951. Input:  IX  Points to start of an instruction
; (252 - 255) in room layout data A First byte of the instruction
  INC IX                  ; Advance by six bytes to start of next
                          ; instruction...
  INC IX                  ; ...
  INC IX                  ; ...
  INC IX                  ; ...
  INC IX                  ; ...
  INC IX                  ; ...
  BIT 0,A                 ; If instruction number is even (i.e. instruction 252
                          ; or 254, each of which have five parameters)...
  JP Z,27989              ; ...then process next room layout instruction (jump
                          ; to 27989)...
  INC IX                  ; ...otherwise, advance by one more byte to skip over
                          ; sixth parameter (on instructions 253 or 255)...
  JP 27989                ; ...and process next room layout instruction (jump
                          ; to 27989)

; Paint Room Layout Data Entry's Terrain Interaction Parameters, Applying
; Horizontal and Vertical Mirrors (Room Drawing)
;
; Used by the routine at 28070. Input:  HL  Points to entry in Lookup Table for
; RLE Terrain Interaction Data (Room Layout Graphics) (at 52397) Output: B
; y-coordinate of graphic's bottom C  x-coordinate of graphic's right
  PUSH HL                 ; Store HL (current entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  LD HL,23493             ; Modify instruction at 29220 to load x-coordinate of
                          ; graphic's left edge into A...
  LD (29221),HL           ; ...i.e. set end x-coordinate for painting
                          ; right-to-left
  LD HL,29262             ; Modify instruction at 28988 to jump to 29262...
  LD (29225),HL           ; ...i.e. advance HL up one character row in Terrain
                          ; Interaction Data Table at 24064
  LD A,43                 ; Modify instruction at 29227 with opcode 43 (DEC
                          ; HL)...
  LD (29227),A            ; ...
  POP HL                  ; Restore HL (current entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  CALL 29036              ; Store coordinates of area to be painted and point
                          ; IX at RLE Terrain Interaction data
  LD BC,(23495)           ; Load BC with coordinates of graphic's bottom-right
  JR 29200                ; Jump to terrain interaction parameter painting
                          ; routine

; Paint Room Layout Data Entry's Terrain Interaction Parameters, Applying
; Horizontal Mirror (Room Drawing)
;
; Used by the routine at 28070. Input:  HL  Points to entry in Lookup Table for
; RLE Terrain Interaction Data (Room Layout Graphics) (at 51997) Output: B
; y-coordinate of graphic's bottom C  x-coordinate of graphic's left
  PUSH HL                 ; Store HL (current entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  LD HL,23495             ; Modify instruction at 29220 to load x-coordinate of
                          ; graphic's right edge into A...
  LD (29221),HL           ; ...i.e. set end x-coordinate for painting
                          ; left-to-right
  LD HL,29262             ; Modify instruction at 29224 to jump to 29262...
  LD (29225),HL           ; ...i.e. advance HL up one character row in Terrain
                          ; Interaction Data Table at 24064
  LD A,35                 ; Modify instruction at 29227 with opcode 35 (INC
                          ; HL)...
  LD (29227),A            ; ...
  POP HL                  ; Restore HL (current entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  CALL 29036              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Terrain Interaction Data
  LD A,(23493)            ; Load C with x-coordinate of graphic's left edge...
  LD C,A                  ; ...
  LD A,(23496)            ; Load B with y-coordinate of graphic's bottom
                          ; edge...
  LD B,A                  ; ...
  JR 29200                ; Jump to terrain interaction data painting routine

; Paint Room Layout Data Entry's Terrain Interaction Parameters, Applying
; Vertical Mirror (Room Drawing)
;
; Used by the routine at 28070. Input:  HL  Points to entry in Lookup Table for
; RLE Terrain Interaction Data (Room Layout Graphics) (at 51997) Output: B
; y-coordinate of graphic's top C  x-coordinate of graphic's right
  PUSH HL                 ; Store HL (current entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  LD HL,23493             ; Modify instruction at 29220 to load x-coordinate of
                          ; graphic's left edge into A...
  LD (29221),HL           ; ...i.e. set end x-coordinate for painting
                          ; right-to-left
  LD HL,29241             ; Modify instruction at 29224 to jump to 29241...
  LD (29225),HL           ; ...i.e. advance HL down one character row in
                          ; Terrain Interaction Data Table at 24064
  LD A,43                 ; Modify instruction at 29227 with opcode 43 (DEC
                          ; HL)...
  LD (29227),A            ; ...
  POP HL                  ; Restore HL (current entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  CALL 29036              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Terrain Interaction Data
  LD A,(23495)            ; Load C with x-coordinate of graphic's right edge...
  LD C,A                  ; ...
  LD A,(23494)            ; Load B with y-coordinate of graphic's top edge...
  LD B,A                  ; ...
  JR 29200                ; Jump to terrain interaction data painting routine

; Paint Room Layout Data Entry's Terrain Interaction Parameters then Advance to
; Next Entry (Room Drawing)
;
; Used by the routine at 28070. Input:  HL  Points to entry in Lookup Table for
; RLE Terrain Interaction Data (Room Layout Graphics) (at 52397)
  PUSH HL                 ; Store HL (Pointer to entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  LD HL,23495             ; Modify instruction at 29220 to load x-coordinate of
                          ; graphic's right edge into A...
  LD (29221),HL           ; ...i.e. set end x-coordinate for painting
                          ; left-to-right
  LD HL,29241             ; Modify instruction at 29224 to jump to 29241...
  LD (29225),HL           ; ...i.e. advance HL down one character row in
                          ; Terrain Interaction Data Table at 24064
  LD A,35                 ; Modify instruction at 29227 with opcode 35 (INC
                          ; HL)...
  LD (29227),A            ; ...
  POP HL                  ; Restore HL (Pointer to entry in Lookup Table for
                          ; RLE Terrain Interaction Data)
  CALL 29036              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Terrain Interaction Data
  LD BC,(23493)           ; Load BC with x- and y-coordinates (top-left)
                          ; defined in current room layout data entry
; This entry point is used by the routines at 29082, 29110 and 29142. At this
; point, BC holds the initial coordinates in characters, from which to start
; painting terrain interaction parameters. IX points to the required RLE
; terrain interaction data.
  PUSH BC                 ; Store BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  CALL 54162              ; Point HL at Terrain Interaction Data Table address
                          ; for character coordinates x=C, y=B
  LD A,(IX+0)             ; Load A with repeat count value
  OR A                    ; If repeat count is zero...
  JP Z,29237              ; ...then jump to 29237
  LD B,A                  ; Load B with repeat count
  LD C,(IX+1)             ; Load C with terrain interaction parameter to paint
  LD (HL),C               ; Apply terrain interaction parameter in C to current
                          ; Terrain Interaction Data Table location in HL
  LD A,L                  ; Load E with x-coordinate (characters) of current
                          ; Terrain Interaction Data location...
  AND 31                  ; ...
  LD E,A                  ; ...
; The operand of the instruction at 29220 is modified by instructions at 29086,
; 29114, 29146, 29178, to 23493 (x-coordinate of left edge), 23495
; (x-coordinate of right edge), 23493 (x-coordinate of left edge), or 23495
; (x-coordinate of right edge) respectively.
  LD A,(23495)            ; Load A with end x-coordinate for painting...
  CP E                    ; ...and if this is the same as the x-coordinate...
; The operand of the instruction at 29224 (i.e. the destination of the jump) is
; modified by the instructions at 29092, 29120, 29152 and 29184 to be 29262
; (move up one character row), 29262 (move up one character row), 29241 (move
; down one character row) or 29241 (move down one character row) respectively.
  JP Z,29241              ; ...then jump to routine to move up or down one
                          ; character row
; The instruction at 29227 is modified by the instructions at 29097, 29125,
; 29157 and 29189 to 43 (DEC HL), 35 (INC HL), 43 (DEC HL) or 35 (INC HL)
; respectively.
  INC HL                  ; Advance HL to next (or previous) byte in Terrain
                          ; Interaction Data Table
  DJNZ 29215              ; Decrease B (repeat count) and loop back to 29215 if
                          ; not zero
  INC IX                  ; Advance IX by two bytes in RLE terrain interaction
                          ; data...
  INC IX                  ; ...
  JP 29204                ; Loop back to 29204 for this new data
  POP BC                  ; Restore BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  JP 28095                ; Advance IX to start of next Room Layout Data entry
                          ; and jump back to 27989 to paint its attributes /
                          ; terrain interaction data
; Move down one character row
  EXX                     ; Switch registers
  LD A,(23496)            ; Load A with one more than y-coordinate of bottom
                          ; edge of area to paint...
  INC A                   ; ...
  POP BC                  ; Restore BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  INC B                   ; Increase B (i.e. move down a character row)
  PUSH BC                 ; Store BC (B = updated y-coordinate, C = initial
                          ; x-coordinate)
  CP B                    ; If B is the same as A (i.e. we are now outside the
                          ; area to be painted)...
  JP Z,29237              ; ...then jump to 29237
  CALL 54162              ; Load HL with Terrain Interaction Data Table address
                          ; for coordinates (C, B) and load E with x-coordinate
                          ; (characters)
  PUSH HL                 ; Store HL (new Terrain Interaction Data Table
                          ; Address)
  EXX                     ; Switch registers
  POP HL                  ; Restore HL (new Terrain Interaction Data Table
                          ; Address)
  JP 29228                ; Jump back to 29228 and continue painting
; Move up one character row
  EXX                     ; Switch registers
  LD A,(23494)            ; Load A with one less than y-coordinate of top edge
                          ; of area to paint...
  DEC A                   ; ...
  POP BC                  ; Restore BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  DEC B                   ; Increase B (i.e. move down a character row)
  JP 29248                ; Jump back to 29248

; If Magic Knight is on The Bridge and USS Pisces is not at Gangrole then Draw
; Viewscreen Starfield
;
; Used by the routine at 28101.
  LD A,(23701)            ; If Magic Knight's current room is not 1 (USS
                          ; Pisces, 1, The Bridge)...
  CP 1                    ; ...
  RET NZ                  ; ...then return
  LD A,(23700)            ; If the USS Pisces' current location is 20
                          ; (Gangrole)...
  CP 20                   ; ...
  RET Z                   ; ...then return
  LD A,255                ; Set MASK P and MASK T system variables to 255...
  LD (23696),A            ; ...to preserve attributes already on screen...
  LD (23694),A            ; ...
  LD A,(23700)            ; Load the USS Pisces' current location into H and
                          ; L...
  LD H,A                  ; ...so that HL points to an address in ROM
                          ; (pseudo-random data)...
  LD L,A                  ; ...
  LD B,50                 ; Load B with 50 (as we are PLOTting 50 stars)
  PUSH BC                 ; Store BC (remaining number of stars to PLOT)
  INC HL                  ; Advance HL by one byte
  LD A,(HL)               ; Load A with byte at HL
  AND 63                  ; Clear bits 6 and 7
  CP 56                   ; If this y-coordinate value is 56 or more...
  JP NC,29300             ; ...then loop back to 29300 to get next byte value
  LD B,A                  ; Load this pseudo-random value (0-55) into B
                          ; (y-coordinate)
  INC HL                  ; Advance HL by one byte
  LD A,(HL)               ; Load A with byte at HL
  AND 127                 ; Clear bit 7
  LD C,A                  ; Load this x-coordinate value (0-127) into C
                          ; (x-coordinate)
  PUSH HL                 ; Store HL (current address in ROM)
; Stars are PLOTted as pixels using the ROM PLOT routine. Therefore,
; coordinates are relative to the bottom-left of the display. The x-coordinate
; increases towards the right of the display while the y-coordinate increases
; towards the top. Stars are always PLOTted ABOVE the planet rendered on the
; viewscreen, therefore the lower-left bound of the rectangular area for
; displaying stars ("Star Area") under this system is (64, 56) pixels. The
; upper-right bound is (191, 111) pixels.
  LD HL,14400             ; Load H and L with the y- and x-coordinates (56 and
                          ; 64 pixels, respectively) of the lower-left of the
                          ; viewscreen's "Star Area"
  ADD HL,BC               ; Add B and C (pseudo-random values) to H and L
                          ; respectively as offsets
  PUSH HL                 ; Transfer values from H (56-111) and L (64-191)...
  POP BC                  ; ...to B and C
  CALL 8933               ; PLOT the pixel (x=C, y=B)
  POP HL                  ; Restore HL (current address in ROM)
  POP BC                  ; Restore BC (remaining number of stars to PLOT)
  DJNZ 29299              ; Decrease remaining number of stars and loop back to
                          ; 29299
  RET                     ; Return

; Process Command to Pick Up an Object
  CALL 54333              ; Print or update Command Summary Window at top of
                          ; screen
  LD DE,38824             ; Point DE at "PICK UP THE" text...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  LD HL,25286             ; Point HL at start of Objects' Current Positions
                          ; Table
  LD BC,3200              ; Load B with 12 and C with 128 [bug: Should be Load
                          ; B with 37 and C with 0, or LD BC, 9472]
  LD A,(23701)            ; Load A with Magic Knight's current room
  CP (HL)                 ; If current object's room is not the same as Magic
                          ; Knight's then...
  JR NZ,29352             ; ...skip ahead to 29352
  INC C                   ; Increase C (count of objects in Magic Knight's
                          ; current room)
  INC HL                  ; Advance HL to next object's position...
  INC HL                  ; ...
  INC HL                  ; ...
  DJNZ 29345              ; Decrease B and loop back for next object
  LD A,C                  ; Copy total number of objects into A...
  OR A                    ; ...and if this value is zero... [can't actually
                          ; happen because of bug at 29342]
  JP Z,55192              ; ...then display "THERE IS NOTHING IN THIS ROOM"
                          ; Window (13), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD HL,25286             ; Point HL at start of Objects' Current Positions
                          ; Table
  LD A,(23701)            ; Load A with Magic Knight's current room
  LD C,A                  ; ...and copy into C
  CALL 33757              ; Load Magic Knight's coordinates (in characters)
                          ; into DE
  XOR A                   ; Set A to zero
  EX AF,AF'               ; Switch A register
  LD B,50                 ; Load B with 50 (bug - should be 37 as there are
                          ; only 37 objects)
  LD A,C                  ; Load Magic Knight's current room into A
  CP (HL)                 ; If room of current object is not the same as Magic
                          ; Knight's current room...
  JR NZ,29401             ; ...then skip ahead to 29401 [advance to next
                          ; object]
  LD A,D                  ; Copy Magic Knight's y-coordinate into A
  INC HL                  ; Advance HL to current object's y-coordinate...
  INC HL                  ; ...
  CP (HL)                 ; ...and if this is not the same as Magic Knight's
                          ; y-coordinate...
  JR NZ,29403             ; ...then skip ahead to 29403 [advance to next
                          ; object]
  DEC HL                  ; Move HL back to object's x-coordinate
  LD A,E                  ; Load Magic Knight's x-coordinate into A
  DEC A                   ; Decrease x-coordinate by two...
  DEC A                   ; ...
  PUSH BC                 ; Store BC
  LD B,5                  ; Load B with 5 (as we are going to test 5 different
                          ; x-coordinates)
  CP (HL)                 ; If x-coordinate of object is the same as current
                          ; x-coordinate value...
  JR Z,29412              ; ...then skip ahead to 29412
  INC A                   ; Increase value of current x-coordinate (to test
                          ; next x-coordinate in range -2 to +2)
  DJNZ 29393              ; Decrease B (remaining number of x-coordinates to
                          ; test) and loop back to 29393
  POP BC                  ; Restore BC
  DEC HL                  ; Move HL back one byte to start of position data for
                          ; current object
  INC HL                  ; Advance HL by three bytes to move to next object...
  INC HL                  ; ...
  INC HL                  ; ...
  EX AF,AF'               ; Switch A register back (so now contains the index
                          ; of the object to test next)
  INC A                   ; Increase A [index of current object to test]
  EX AF,AF'               ; Switch A register
  DJNZ 29376              ; Loop back to 29376 for next object
  JP 55187                ; Display "THERE IS NOTHING NEAR ENOUGH" Window (13),
                          ; wait for fire to be pressed then jump to Main Game
                          ; Loop
; An object has been found within Magic Knight's reach so make this the current
; object
  POP BC                  ; Restore BC
  EX AF,AF'               ; Switch A register (so now contains index of first
                          ; object that is within Magic Knight's reach)
  LD (29526),A            ; Load index of this object into instruction at 29525
                          ; (i.e. set as Current Object)
  LD DE,33924             ; Point DE at character code to print name of Current
                          ; Object
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD HL,25168             ; Load A with index of object in Magic Knight's fifth
                          ; inventory slot (carrying)...
  LD A,(HL)               ; ...
  OR A                    ; If this is not zero (i.e. Magic Knight's hands are
                          ; full)...
  JP NZ,55165             ; ...then display "YOUR HANDS ARE FULL" window, wait
                          ; for fire to be pressed then jump to Main Game Loop
  CALL 33601              ; Check whether object has a weight greater than
                          ; Magic Knight's surplus strength...
  JP P,55177              ; ...and if it does then display "THE [name of
                          ; Current Object] IS TOO HEAVY FOR YOU" Window), wait
                          ; for fire to be pressed then jump to Main Game Loop
  LD A,(29526)            ; Load A with index of Current Object...
  LD C,A                  ; ...and copy into C
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,25164             ; Load object in C into Magic Knight's first empty
                          ; inventory (carrying) slot...
  CALL 33516              ; ...
  LD A,(29526)            ; Load A with index of Current Object...
  LD C,A                  ; ...and copy into C
  ADD A,A                 ; Multiply index by three in A...
  ADD A,C                 ; ...
  LD B,0                  ; Load three times object index into BC...
  LD C,A                  ; ...
  LD HL,25286             ; Point HL at start of Objects' Current Positions
                          ; Table
  ADD HL,BC               ; Add BC as offset to point HL at position data for
                          ; current object
  LD (HL),99              ; Set object's room to 99
; This entry point is used by the routines at 29488, 29619, 29756 and 31537.
  LD IX,25164             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,38809             ; Point HL at "YOU ARE NOW CARRYING" text
  CALL 33945              ; Display "Magic Knight's current inventory" window
                          ; as an information window
; This entry point is used by the routines at 29756, 30145, 31188, 31280,
; 31312, 32895, 33338 and 33725.
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
; This entry point is used by the routines at 29488, 29619, 29756, 30145,
; 30686, 30968, 31257, 31537, 55115 and 55364.
  CALL 34265              ; Set Magic Knight's available action flags and
                          ; validate I.D. Card if appropriate
  JP 27136                ; Jump to start of Main Game Loop

; Process Command to Drop an Object
  CALL 33834              ; Display "YOU ARE NOT CARRYING ANYTHING" Window and
                          ; set Zero Flag if Magic Knight's inventory
                          ; (carrying) is empty
  JP Z,29482              ; If MK's inventory (carrying) is empty then set his
                          ; available action flags, validate I.D. Card if
                          ; appropriate and jump to start of Main Game Loop
                          ; (29482)
  LD IX,25164             ; Point IX at start of Magic Knight's current
                          ; inventory (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,38904             ; Point HL at "DROP WHICH OBJECT ?" text
  LD DE,38916             ; Point DE at "DROP THE " text
  CALL 33952              ; Show list of objects in Magic Knight's inventory
                          ; (carrying) as a menu and load A with selected item
                          ; index
  LD HL,25164             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  CALL 33911              ; Print name of selected object in Magic Knight's
                          ; current inventory (carrying) in Command Summary
                          ; Window
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  BIT 1,(IY+89)           ; If "USE TRANSPORTER" command is enabled (i.e. Magic
                          ; Knight is standing on a transporter pad)... (IY =
                          ; 23610)
  JP NZ,55349             ; ...then display "YOU CANNOT DROP THE [Object] HERE"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
; The operand of the instruction at 29525 represents the index of the Current
; Object used in multiple routines. This is modified by the instructions at
; 29414 and 33916.
  LD A,0                  ; Load index of current object into A [Operand is
                          ; index of Current Object]
  CP 16                   ; If object is Quark Bomb...
  JP Z,29613              ; ...then skip ahead to 29613
  LD E,0                  ; Load E with 1 (prepare to check Drop Status Flag)
  CALL 33525              ; Point HL to byte 1 of the A-th record in Object
                          ; Properties Table
  BIT 4,(HL)              ; If object's Drop Status Flag is set...
  JP NZ,55197             ; ...then display "YOU CANNOT DROP THE [object]"
                          ; Window (13), wait for fire to be pressed then jump
                          ; to Main Game Loop
  BIT 7,(HL)              ; If object's Is Breakable Flag is set...
  JP NZ,29597             ; ...then skip ahead to 29597
  LD A,(29526)            ; Load A with index of Current Object
  LD C,A                  ; Copy into C
  PUSH BC                 ; Store BC (C = index of Current Object)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,25164             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  CALL 36254              ; Remove object C from Magic Knight's current
                          ; inventory (carrying)
  POP BC                  ; Restore BC (C = index of Current Object)
  LD A,C                  ; Load current object's index into A
  ADD A,A                 ; Multiply object index by 3...
  ADD A,C                 ; ...
  LD C,A                  ; ...and load back into C
  LD B,0                  ; Load B with zero
  LD HL,25286             ; Point HL at start of Objects' Current Positions
                          ; Table at 25286
  ADD HL,BC               ; Add three times Current Object's index as offset to
                          ; point HL at position data of current object
  LD A,(23701)            ; Load A with Magic Knight's current room
  LD (HL),A               ; Set object's current room to be same as Magic
                          ; Knight's
  INC HL                  ; Advance HL to x-coordinate of object
  LD B,0                  ; Set B to zero
  LD A,(25156)            ; Load A with Magic Knight's current x-coordinate
                          ; (pixels)
  AND 7                   ; Get x-coordinate in terms of pixels within current
                          ; character block (i.e. lowest 3 bits of
                          ; x-coordinate)
  JR Z,29586              ; If this is zero (i.e. Magic Knight at left-most
                          ; pixel in character block) then skip ahead to
                          ; 29586...
  INC B                   ; ...else increase B
  CALL 33757              ; Load Magic Knight's Coordinates (in Characters)
                          ; into DE
  LD A,B                  ; Load B into A
  ADD A,E                 ; Add Magic Knight's x-coordinate to A
  LD (HL),A               ; Set this as object's x-coordinate
  INC HL                  ; Advance HL to y-coordinate of object
  LD (HL),D               ; Set this to same as Magic Knight's y-coordinate
  JP 29467                ; Show Magic Knight's current inventory and jump back
                          ; to Main Game Loop
  LD A,(29526)            ; Load A with index of Current Object
  LD C,A                  ; Copy into C
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,25164             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  CALL 36254              ; Remove object C from Magic Knight's current
                          ; inventory (carrying)
  LD C,15                 ; Set object to drop to Broken Glass
  JR 29561                ; Jump back to 29561 to drop the Broken Glass
  LD HL,44862             ; Point HL at "YOU HAVE DESTROYED YOURSELF BY
                          ; DROPPING THE..." text
  JP 55685                ; Jump to "Game over" window routine and return to
                          ; Control Selection Menu

; Process Command to Take an Object
  LD HL,38647             ; Point HL at "TAKE AN OBJECT FROM ?" text (end of
                          ; sub-menu title, after "WHO DO YOU WANT TO ")
  LD DE,39015             ; Point DE (Command Summary Text Pointer) at "TAKE
                          ; SOMETHING FROM" text
  CALL 34122              ; Display and process input for Character Selection
                          ; Menu (current room's characters only), setting
                          ; Current Character
  JP Z,29482              ; If there are no characters in the room then set
                          ; MK's available action flags, validate I.D. Card if
                          ; appropriate and jump to start of Main Game Loop
                          ; (29482)
; The operand of the instruction at 29631 represents the index of the Current
; Character used in multiple routines. This is modified by the instructions at
; 30271, 33804, 33814, 33934 and 34226.
  LD A,0                  ; Point IX at current inventory of Current
                          ; Character...
  CALL 33585              ; ...
  LD A,(IX+0)             ; If the first inventory slot of the character is
                          ; empty...
  OR A                    ; ...
  JP Z,55202              ; ...then display "[Character]'S HANDS ARE EMPTY"
                          ; Window (13), wait for fire to be pressed then jump
                          ; to Main Game Loop
  PUSH IX                 ; Store IX (start of inventory)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,38998             ; Point HL at "TAKE WHICH OBJECT ?" text
  LD DE,0                 ; Load DE with zero (i.e. no Command Summary Text)
  CALL 33952              ; Show list of objects in character's inventory as a
                          ; menu and load A with selected item index
  PUSH AF                 ; Store AF (A = index of chosen object's inventory
                          ; slot)
  CALL 54333              ; Print or update Command Summary Window at top of
                          ; screen
  LD DE,39010             ; Point DE at "TAKE THE" text...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  POP AF                  ; Restore AF (A = index of chosen object's inventory
                          ; slot)
  POP HL                  ; Restore HL (previously IX, pointer to current
                          ; inventory of current character)
  CALL 33911              ; Print name of object in inventory slot A of
                          ; inventory data at HL in Command Summary Window
  LD DE,39023             ; Point DE at " FROM" text...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  LD A,(29632)            ; Load A with index of Current Character
  CALL 33937              ; Print character's name
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,253                ; Decrease Current Character's happiness by 3...
  CALL 33569              ; ...
  LD IX,44238             ; Point IX at Table of Characters' Wanted Objects
  CALL 33863              ; If Current Character wants Current Object...
  JP Z,55207              ; ...then display "[Character] WANTS TO KEEP THE
                          ; [Object]" Window (13), wait for fire to be pressed
                          ; then jump to Main Game Loop
  LD HL,25168             ; Load A with index of object in Magic Knight's fifth
                          ; inventory slot (carrying)...
  LD A,(HL)               ; ...
  OR A                    ; If this is not zero (i.e. Magic Knight's hands are
                          ; full)...
  JP NZ,55165             ; ...then display "YOUR HANDS ARE FULL" window, wait
                          ; for fire to be pressed then jump to Main Game Loop
  CALL 33601              ; Check whether object has a weight greater than
                          ; Magic Knight's surplus strength...
  JP P,55177              ; ...and if it does then display "THE [name of
                          ; Current Object] IS TOO HEAVY FOR YOU" Window, wait
                          ; for fire to be pressed then jump to Main Game Loop
  CALL 33500              ; Load A with Current Character's Happiness Level...
  CP 30                   ; and if this is less than 30...
  JP C,55207              ; ...then display "[Character] WANTS TO KEEP THE
                          ; [Object]" Window (13), wait for fire to be pressed
                          ; then jump to Main Game Loop
  LD A,(29632)            ; Point IX at current inventory of Current
                          ; Character...
  CALL 33585              ; ...
  PUSH IX                 ; Copy value from IX...
  POP HL                  ; ...to HL
  LD A,(29526)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (five inventory slots)
  CALL 36254              ; Remove object C from Current Character's inventory
  LD A,(29526)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,25164             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)...
  CALL 33516              ; ...and load object C into the first empty slot
  JP 29467                ; Show Magic Knight's current inventory and jump back
                          ; to Main Game Loop

; Process Command to Give an Object
  CALL 33834              ; Display "YOU ARE NOT CARRYING ANYTHING" Window and
                          ; set Zero Flag if Magic Knight's inventory
                          ; (carrying) is empty
  JP Z,29482              ; If MK's inventory (carrying) is empty then set his
                          ; available action flags, validate I.D. Card if
                          ; appropriate and jump to start of Main Game Loop
                          ; (29482)
  LD IX,25164             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,39065             ; Point HL at "GIVE WHICH OBJECT ?" text
  LD DE,39077             ; Point DE at "GIVE THE " text
  CALL 33952              ; Show list of objects in Magic Knight's inventory
                          ; (carrying) as a menu and load A with selected item
                          ; index
  LD HL,25164             ; Point HL at start of Characters' Current
                          ; Inventories Table
  CALL 33911              ; Print name of object in inventory slot A of
                          ; inventory data at HL in Command Summary Window
  LD DE,39082             ; Point DE at "TO" text...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  LD HL,38658             ; Point HL at "GIVE AN OBJECT TO ?" text
  LD DE,0                 ; Load DE with zero (i.e. no Command Summary Text)
  CALL 34122              ; Display and process input for Character Selection
                          ; Menu (current room's characters only), setting
                          ; Current Character
  JP Z,29482              ; If there are no characters in the room then set
                          ; MK's available action flags, validate I.D. Card if
                          ; appropriate and jump to start of Main Game Loop
                          ; (29482)
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD IX,44251             ; Point IX at Table of Characters' Unwanted Objects
  CALL 33863              ; If Current Character does not want Current
                          ; Object...
  JP Z,55222              ; ...then display "[Character] DOES NOT WANT THE
                          ; [Object]" Window (13), wait for fire to be pressed
                          ; then jump to Main Game Loop
  LD A,4                  ; Increase Current Character's happiness by 4...
  CALL 33569              ; ...
  LD A,(29526)            ; Load A with index of Current Object
  CP 14                   ; If the selected object is the McTablet Food...
  JP Z,29907              ; ...then skip ahead to 29907
  LD A,(29632)            ; Point IX at current inventory of Current
                          ; Character...
  CALL 33585              ; ...
  LD A,(IX+4)             ; If last inventory slot of character is not zero...
  OR A                    ; ...(i.e. last inventory slot is occupied)...
  JP NZ,55212             ; ...then display "[Character]'S HANDS ARE FULL"
                          ; Window (13), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD BC,1280              ; Load B with 5 (five inventory slots) and C with
                          ; zero
  LD A,(IX+0)             ; Load content of current inventory slot into A
  OR A                    ; If this inventory slot is empty...
  JR Z,29858              ; ...then skip ahead to 29858
  CALL 33487              ; Load A with weight of object in current slot...
  ADD A,C                 ; ...and add to C (running total weight)...
  LD C,A                  ; ...
  INC IX                  ; Advance to next inventory slot
  DJNZ 29843              ; Loop back to 29843 for next slot
  LD A,(29526)            ; Load A with index of Current Object
  CALL 33487              ; Load A with weight of object being given...
  ADD A,C                 ; ...and add this to total in C also...
  LD C,A                  ; ...
  LD A,(29632)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at character's current strength...
  CALL 33541              ; ...
  LD A,(HL)               ; Load strength into A...
  AND 127                 ; ...and reset Bit 7 (unused)
  CP C                    ; If character's strength is less than total weight
                          ; of objects...
  JP C,55217              ; ...then display "[Character] IS NOT STRONG ENOUGH"
                          ; Window (13), wait for fire to be pressed then jump
                          ; to Main Game Loop
  CALL 33500              ; Load A with Current Character's Happiness Level...
  CP 25                   ; ...and if this is less than 25...
  JP C,55222              ; ...then display "[Character] DOES NOT WANT THE
                          ; [Object]" Window (13), wait for fire to be pressed
                          ; then jump to Main Game Loop
  LD A,(29526)            ; Load A with index of Current Object...
  LD (IX+0),A             ; ...and load this object into the character's first
                          ; empty slot
  LD C,A                  ; Load index of object into C
  LD B,5                  ; Remove object C from Magic Knight's current
                          ; inventory (carrying)...
  LD HL,25164             ; ...
  CALL 36254              ; ...
  JP 29467                ; Show Magic Knight's current inventory and jump back
                          ; to Main Game Loop
  CALL 33546              ; Point IX at Current Character's current stats
  BIT 7,(IX+6)            ; If character's Asleep Flag is reset...
  JR Z,29930              ; ...then skip ahead to 29930
  LD A,28                 ; Draw Window 28...
  CALL 34990              ; ...
  LD HL,38361             ; Point HL at "[Current Character's name] IS ASLEEP"
                          ; text...
  CALL 34762              ; ...and print to screen
  JP 29479                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop
  LD C,25                 ; Set strength increment to 25
  LD A,(IX+0)             ; Load character's current strength into A...
  AND 127                 ; ...
  CALL 53703              ; Increase value by 25, up to maximum of 100
  LD C,A                  ; Load updated strength value into C
  LD A,(IX+0)             ; Load updated strength back into character's
                          ; stats...
  AND 128                 ; ...preserving bit 7 (see trivia)
  ADD A,C                 ; ...
  LD (IX+0),A             ; ...
  LD C,20                 ; Set stamina increment to 20
  LD A,(IX+2)             ; Load character's current stamina into A...
  AND 127                 ; ...
  CALL 53703              ; Increase value by 20, up to maximum of 100
  LD C,A                  ; Load updated stamina value into C
  LD A,(IX+2)             ; Load updated stamina back into character's stats...
  AND 128                 ; ...preserving bit 7 (see trivia)
  ADD A,C                 ; ...
  LD (IX+2),A             ; ...
  LD A,(23672)            ; Load A with LSB of FRAMES System Variable
                          ; (pseudo-random number)
  AND 3                   ; Discard all but lower two bits, leaving a random
                          ; number between 0 - 3 (inclusive)
  LD B,A                  ; Load this number into B
  LD HL,44276             ; Point HL at start of Character's Responses to
                          ; McTablet Flavours
  CALL 54269              ; Advance HL to B-th entry in list of zero-terminated
                          ; strings starting at HL
  LD DE,37195             ; Adjust height of window 13 to accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (pointer to start of text to print)
  LD A,13                 ; Draw Window 13...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)
  CALL 34762              ; Print text to screen
  JP 29479                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop

; Display and Handle Main In-Game Menu (When Fire is Pressed)
;
; Used by the routine at 27136.
  CALL 35386              ; Wait for Fire Button / Key to be Released
  CALL 35723              ; Play downward scale sound
  CALL 34265              ; Set Magic Knight's available action flags and
                          ; validate I.D. Card if appropriate
  LD BC,2048              ; Set B = 8 (eight action flags) and C = 0 (count of
                          ; set flags)
  LD A,(23698)            ; Load A with Available In-Game Menu Command Flags
                          ; (part 1)
  RLCA                    ; Pop a bit into Carry Flag
  JR NC,30020             ; If Magic Knight action flag is not set then skip
                          ; ahead to 30020 to repeat loop for next flag...
  INC C                   ; ...else increase count of set flags
  DJNZ 30016              ; Loop back for next bit until all eight are done
  LD B,8                  ; Set B = 8 (another eight action flags)
  LD A,(23699)            ; Load A with Available In-Game Menu Command Flags
                          ; (part 2)
  RLCA                    ; Pop a bit into Carry Flag
  JR NC,30031             ; If Magic Knight action flag is not set then skip
                          ; ahead to 30031 to repeat loop for next flag...
  INC C                   ; ...else increase count of set flags
  DJNZ 30027              ; Loop back for next bit until all eight are done
  LD A,8                  ; Load A with 8 (as minimal command window has bottom
                          ; y-coordinate of 8)
  ADD A,C                 ; Increase A by number of extra commands available
  LD C,A                  ; Load value back into C
  LD A,(37091)            ; Load A with y-coordinate (characters) of top of
                          ; menu window
  ADD A,C                 ; Update y-coordinate of bottom of window according
                          ; to number of extra commands...
  LD (37092),A            ; ...
  LD A,0                  ; Display main in-game menu window (window number
                          ; zero)...
  CALL 34982              ; ...
  LD HL,38685             ; Print "COMMANDS AVAILABLE:-" followed by first five
                          ; commands (Pick up, drop, etc.) that are always
                          ; available...
  CALL 34762              ; ...
  LD HL,38734             ; Point HL at zero immediately preceding list of
                          ; conditional entry (Main in-Game Menu) texts
  LD A,(23698)            ; Load A with Available In-Game Menu Command Flags
                          ; (part 1)
  CALL 30123              ; Print currently available additional In-Game Menu
                          ; command options (part 1)
  LD A,(23699)            ; Load A with Available In-Game Menu Command Flags
                          ; (part 2)
  CALL 30123              ; Print currently available additional In-Game Menu
                          ; command options (part 2)
  CALL 35296              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  CP 5                    ; If index of selected item is less than 5 (i.e. is a
                          ; permanent, yellow entry)...
  JR C,30097              ; ...then skip ahead to 30097
  SUB 4                   ; Subtract 4 from index to get index within currently
                          ; available conditional entries...
  LD B,A                  ; ...and load this value into B
  LD C,0                  ; Load C with zero
  LD HL,(23698)           ; Load HL with Available In-Game Menu Command Flags
; At this point, B is initialised to the index of the selected menu option
; among the currently available conditional entries. The following loop loads C
; with the index of the selected action's Action Flag (bit) in the WORD value
; at 23698.
  RR H                    ; Perform 16-bit rotation (right) through HL and into
                          ; Carry Flag...
  RR L                    ; ...so that Carry Flag contains "current" Action
                          ; Flag
  INC C                   ; Increase C (index of current Action Flag)
  JR NC,30085             ; If current Action Flag is not set then loop back to
                          ; 30085...
  DJNZ 30085              ; ...otherwise decrease B then loop back to 30085
  LD A,C                  ; Load index of appropriate Action Flag into A
  ADD A,4                 ; Add 4, to restore original index value (i.e.
                          ; reverse of instruction at 30077)
; At this point, A holds either the index of the appropriate Action Flag plus
; four, or the index of the originally selected menu item if less than 5. In
; either case, A contains the index of the command to initiate. Code between
; 30097 and 30105 is not necessary; see trivia.
  LD HL,36749             ; Point HL at List of Command Indices
  LD B,A                  ; Load index of selected command into B, setting C to
                          ; zero...
  LD C,0                  ; ...
  LD A,(HL)               ; If current entry in List of Command Indices is the
                          ; same as the index of the selected command...
  CP B                    ; ...
  JR Z,30111              ; ...then skip ahead to 30111
  INC C                   ; Increase C (index of command index)
  INC HL                  ; Advance HL to next command index in list
  JR 30103                ; Loop back to 30103
  PUSH BC                 ; Store BC (B = selected command index, C = index of
                          ; selected command index)
  CALL 35690              ; Play upward scale sound
  POP BC                  ; Restore BC (B = selected command index, C = index
                          ; of selected command index)
  LD A,C                  ; Load index (of selected command index) into A
  LD HL,36765             ; Point HL at start of Table of Command Routine
                          ; Addresses
  JP 55726                ; Advance HL by A words, load HL with word at
                          ; location HL as address and jump to it

; Print Currently Available Additional In-Game Menu Command Options
;
; Used by the routine at 30001. Input:  A  Available In-Game Menu Command Flags
; (part 1 or part 2) HL  Points to 38734 if dealing with Flags part 1. Points
; to 38777 if dealing with Flags part 2.
  LD B,8                  ; Load B with 8 (as there are 8 flags)
  PUSH BC                 ; Store BC (B = remaining number of flags to process)
  RRCA                    ; Rotate least significant bit of A (i.e. current
                          ; flag) into Carry Flag
  PUSH AF                 ; Store AF (current flag in Carry and remaining flags
                          ; in A)
  CALL 54242              ; Advance HL to byte after first zero from address in
                          ; HL onwards
  POP AF                  ; Restore AF (current flag in Carry and remaining
                          ; flags in A)
  JR NC,30141             ; If current flag is reset then skip ahead to 30141
  PUSH HL                 ; Store HL (current position in Additional Menu Items
                          ; texts)
  PUSH AF                 ; Store AF (current flag in Carry and remaining flags
                          ; in A)
  CALL 34762              ; Print text at HL (current additional menu item)
  POP AF                  ; Restore AF (current flag in Carry and remaining
                          ; flags in A)
  POP HL                  ; Restore HL (current position in Additional Menu
                          ; Items texts)
  POP BC                  ; Restore BC (B = remaining number of flags to
                          ; process)
  DJNZ 30125              ; Decrease B and loop back to 30125 for next flag
  RET                     ; Return

; Process Command to Examine Yourself / A Character / An Object / USS Pisces
  CALL 54333              ; Print or update Command Summary Window at top of
                          ; screen
  LD DE,39152             ; Point DE at "EXAMINE"...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  LD A,16                 ; Draw "EXAMINE WHAT?" Menu Window...
  CALL 34982              ; ...
  LD HL,39154             ; Point HL at "EXAMINE WHAT ?" menu text...
  CALL 34762              ; ...and print to screen
  CALL 35296              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  OR A                    ; If "OBJECT" selected...
  JP Z,30432              ; ...then skip ahead to 30432
  CP 1                    ; If "CHARACTER" selected...
  JP Z,30300              ; ...then skip ahead to 30300
  CP 2                    ; If "YOURSELF" selected...
  JP Z,30250              ; ...then skip ahead to 30250
; Examine USS Pisces
  LD A,17                 ; Set bottom edge of Window 20 to 17...
  LD (37252),A            ; ...
  LD DE,39524             ; Point DE at "USS PISCES" text...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(23701)            ; Load A with Magic Knight's current room...
  CP 12                   ; ...and if this is at least 12... [bug: Should be CP
                          ; 11]
  JP NC,55267             ; ...then display "YOU CANNOT EXAMINE THE USS PISCES
                          ; IF..." Window (29), wait for fire to be pressed
                          ; then jump to Main Game Loop
  LD A,20                 ; Draw Window 20 ("EXAMINE OBJECT" / "EXAMINE USS
                          ; PISCES" Window)...
  CALL 34990              ; ...
  LD HL,39283             ; Point HL at "      EXAMINE" text...
  CALL 34762              ; ...and print to screen
  LD HL,25012             ; Point HL at USS Pisces' current stats
  CALL 30533              ; Insert numeric stats (at HL) of USS Pisces into
                          ; "Examine USS Pisces" window text
  LD HL,39359             ; Point HL at USS Pisces Stats text...
  CALL 34762              ; ...and print to screen
  LD C,0                  ; Load C with 0 (don't apply mirror)
  LD A,64                 ; Load A with 64 (graphic index of left half of USS
                          ; Pisces Picture)
  LD HL,2061              ; Load H (y-coordinate) with 8 and L (x-coordinate)
                          ; with 13
  CALL 28631              ; Draw the left half of the USS Pisces picture
  LD C,1                  ; Load C with 1 (apply vertical mirror)
  LD A,64                 ; Load A with 64 (graphic index of left half of USS
                          ; Pisces Picture)
  LD HL,2065              ; Load H (y-coordinate) with 8 and L (x-coordinate)
                          ; with 17
  CALL 28631              ; Draw the right half of the USS Pisces picture
  JP 29479                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop
; Examine Yourself
  LD A,16                 ; Set left edge of Window 19 ("Examine Portrait
                          ; Frame") to 16...
  LD (37241),A            ; ...
  LD DE,39352             ; Point DE at "YOURSELF"...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,18                 ; Draw Window 18...
  CALL 34990              ; ...
  LD A,205                ; Set Current Character index to 205 (i.e. -51)...
  LD (29632),A            ; ...as index of "MAGIC KNIGHT" text is -51 relative
                          ; to start of characters' names at 44088
  LD HL,47501             ; Point HL at percentage completion text
  LD DE,47513             ; Point DE at time left text
  CALL 33657              ; Insert current time and score into "Time Left" and
                          ; "Percentage Completion" texts
  LD HL,25020             ; Point HL at start of Magic Knight's Current Stats
  LD A,1                  ; Set Graphic Index to 1...
  LD (30412),A            ; ...and store as operand to instruction at 30411
  LD A,(25162)            ; Load character's Magic Level / Attribute value
                          ; into...
  LD (37248),A            ; ...content attribute slot of Window 19 (EXAMINE
                          ; Portrait Frame)
  JP 30353                ; Skip ahead to 30353 (display window as in Examine
                          ; Character)
; Examine Character
  LD A,17                 ; Set left edge of Window 19 ("Examine Portrait
                          ; Frame") to 17...
  LD (37241),A            ; ...
  LD HL,38665             ; Point HL at "EXAMINE ?" text (end of sub-menu
                          ; title, after "WHO DO YOU WANT TO ")
  LD DE,0                 ; Load DE with zero (i.e. no Command Summary Text)
  CALL 34122              ; Display and process input for Character Selection
                          ; Menu (current room's characters only), setting
                          ; Current Character
  JP Z,29482              ; If there are no characters in the room then set
                          ; MK's available action flags, validate I.D. Card if
                          ; appropriate and jump to start of Main Game Loop
                          ; (29482)
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,5                  ; Increase Current Character's happiness by 5...
  CALL 33569              ; ...
  LD A,18                 ; Draw Window 18...
  CALL 34990              ; ...
  LD A,(29632)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at start of character's stats...
  CALL 33541              ; ...
  PUSH HL                 ; Transfer address from HL...
  POP IX                  ; ...into IX
  LD A,(IX+5)             ; Load Character Graphic Index into A...
  LD (30412),A            ; ...and modify operand of instruction at 30411 to
                          ; match
  LD A,(IX+4)             ; Load character's Magic Level / Attribute value
                          ; into...
  LD (37248),A            ; ...content attribute slot of Window 19 (EXAMINE
                          ; Portrait Frame)
  CALL 30583              ; Insert numeric stats (at HL) of a character into
                          ; "EXAMINE CHARACTER" window text
  PUSH HL                 ; Store HL (points to start of character's current
                          ; stats)
  LD HL,39187             ; Print Examine Character window text (i.e. "EXAMINE
                          ; [CHARACTER] ... STRENGTH XX..." text)...
  CALL 34762              ; ...
  POP IX                  ; Restore IX (points to start of character's current
                          ; stats)
  LD A,(IX+6)             ; Load A with character's Asleep Flag (bit 7)...
  AND 128                 ; ...
  RRCA                    ; Divide value (0 for awake / 128 for asleep) by 8...
  RRCA                    ; ...
  RRCA                    ; ...to give 0 for awake / 16 for asleep
  LD B,A                  ; Load this awake / asleep offset value into B
  LD A,(IX+7)             ; Load A with index of character's Current Status
                          ; Text...
  AND 15                  ; ...
  ADD A,B                 ; Add value in B to this index to select between
                          ; "awake" and "asleep" versions...
  LD B,A                  ; ...and place result back in B to get index of
                          ; string required
  LD HL,47491             ; Point HL at start of characters' "current status"
                          ; texts
  CALL 54269              ; Advance HL to B-th entry in list of zero-terminated
                          ; strings starting at HL...
  CALL 34762              ; ...and print
  LD A,(30412)            ; If Character Graphic Index is zero...
  OR A                    ; ...
  JP Z,30420              ; ...then skip ahead to 30420
  LD A,19                 ; Draw Window 19 (EXAMINE Portrait Frame)...
  CALL 34990              ; ...
  LD BC,(23493)           ; Load BC with top-left coordinate of current window
  LD A,71                 ; Load ATTR T system variable with 71 (white INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
; The operand of the instruction at 30411 represents the Character's Graphic
; Index. This is modified by the instructions at 30288 and 30344.
  LD A,0                  ; Load A with character's Graphic Index...
  CP 1                    ; ...and if this is 1 (i.e. Magic Knight)...
  JR Z,30423              ; ...then skip ahead to 30423
  CALL 54411              ; Draw the graphic with lookup index A at character
                          ; coordinates (C, B) with width = 2 characters and
                          ; height = 4 characters
  JP 29479                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop
  XOR A                   ; Draw a Graphic with Lookup Index 0 at Character
                          ; Coordinates (C, B) with width = 3 characters and
                          ; height = 4 characters...
  LD DE,1027              ; ...(Magic Knight Facing Right, Frame 1)...
  CALL 54414              ; ...
  JR 30420                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop
; Examine Object
  CALL 33834              ; Display "YOU ARE NOT CARRYING ANYTHING" Window and
                          ; set Zero Flag if Magic Knight's inventory
                          ; (carrying) is empty
  JP Z,29482              ; If MK's inventory (carrying) is empty then set his
                          ; available action flags, validate I.D. Card if
                          ; appropriate and jump to start of Main Game Loop
                          ; (29482)
  LD A,15                 ; Set bottom edge of Window 20 to 15...
  LD (37252),A            ; ...
  LD IX,25164             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,39140             ; Point HL at "EXAMINE WHICH OBJECT ?" text
  LD DE,0                 ; Load DE with zero (i.e. no Command Summary Text)
  CALL 33952              ; Show list of objects in Magic Knight's inventory
                          ; (carrying) as a menu and load A with selected item
                          ; index
  LD HL,25164             ; Point HL at start of Characters' Current
                          ; Inventories Table
  CALL 33911              ; Print name of object in inventory slot A of
                          ; inventory data at HL in Command Summary Window
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(29526)            ; Load A with index of Current Object
  LD E,0                  ; Point HL to the start of the Current Object's
                          ; record in Object Properties Table...
  CALL 33525              ; ...
  PUSH HL                 ; Store HL (pointer to Current Object's properties)
  CALL 30643              ; Insert numeric / text properties of the object into
                          ; "Examine Object" Window Text
  LD A,20                 ; Draw Window 20 ("EXAMINE OBJECT" / "EXAMINE USS
                          ; PISCES" Window)...
  CALL 34990              ; ...
  LD HL,39283             ; Point HL at "      EXAMINE" text...
  CALL 34762              ; ...and print to screen
  LD A,(29526)            ; Load B with index of Current Object...
  LD B,A                  ; ...
  CALL 54266              ; ...and point HL at its entry in Table of Object
                          ; Names
  CALL 34762              ; Print the Current Object's name
  LD HL,39288             ; Point HL at Object Properties text...
  CALL 34762              ; ...and print to screen
  POP IX                  ; Restore IX (pointer to Current Object's properties)
  LD A,(IX+6)             ; Set content attribute of Window 21 (frame around
                          ; object in "EXAMINE OBJECT" Window)...
  LD (37264),A            ; ...to match attribute of object
  LD A,21                 ; Draw Window 21...
  CALL 34990              ; ...
  LD BC,(23493)           ; Load BC with top-left coordinate of current window
  INC B                   ; Increase y-coordinate by 1 (as object positions are
                          ; based upon their bottom-left corner)
  LD A,(29526)            ; Load A with index of Current Object
  CALL 36104              ; Set Terrain Interaction Data for character blocks
                          ; spanned by object and draw the object
  JP 29479                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop

; Insert Numeric Stats (at HL) of USS Pisces into "Examine USS Pisces" Window
; Text
;
; Used by the routine at 30145. Input:  HL  Pointer to USS Pisces' Current
; Stats
  PUSH HL                 ; Store HL (pointer to start of USS Pisces' current
                          ; stats)
  LD A,(HL)               ; Load Life Support level into A
  PUSH HL                 ; Store HL (pointer to USS Pisces' current Life
                          ; Support level)
  LD HL,39439             ; Point HL at position in USS Pisces Stats Text (at
                          ; 39359) at which to insert Life Support level...
  CALL 34697              ; ...and splice the value in
  POP HL                  ; Restore HL (pointer to USS Pisces' current Life
                          ; Support level)
  INC HL                  ; Advance HL to USS Pisces' current Star Drive Fuel
                          ; level...
  LD A,(HL)               ; ...and load value into A
  PUSH HL                 ; Store HL (pointer to USS Pisces' current Star Drive
                          ; Fuel level)
  LD HL,39462             ; Point HL at position in USS Pisces Stats Text (at
                          ; 39359) at which to insert Star Drive Fuel level...
  CALL 34697              ; ...and splice the value in
  POP HL                  ; Restore HL (pointer to USS Pisces' current Star
                          ; Drive Fuel level)
  INC HL                  ; Advance HL to USS Pisces' current Impulse Drive
                          ; level...
  LD A,(HL)               ; ...and load value into A
  PUSH HL                 ; Store HL (pointer to USS Pisces' current Impulse
                          ; Drive level)
  LD HL,39486             ; Point HL at position in USS Pisces Stats Text (at
                          ; 39359) at which to insert Impulse Drive level...
  CALL 34697              ; ...and splice the value in
  POP HL                  ; Restore HL (pointer to USS Pisces' current Impulse
                          ; Drive level)
  INC HL                  ; Advance HL to USS Pisces' current Shields level...
  LD A,(HL)               ; ...and load value into A
  PUSH HL                 ; Store HL (pointer to USS Pisces' current Shields
                          ; level)
  LD HL,39506             ; Point HL at position in USS Pisces Stats Text (at
                          ; 39359) at which to insert Shields level...
  CALL 34697              ; ...and splice the value in
  POP HL                  ; Restore HL (pointer to USS Pisces' current Shields
                          ; level)
  INC HL                  ; Advance HL to USS Pisces' current Transputer
                          ; level...
  LD A,(HL)               ; ...and load value into A
  LD HL,39519             ; Point HL at position in USS Pisces Stats Text (at
                          ; 39359) at which to insert Transputer level...
  CALL 34697              ; ...and splice the value in
  POP HL                  ; Restore HL (pointer to start of USS Pisces' current
                          ; stats)
  RET                     ; Return

; Insert Numeric Stats (at HL) of a Character into "Examine Character" Window
; Text
;
; Used by the routine at 30145. Input:  HL  Address of start of a character's
; current stats
  PUSH HL                 ; Store HL (address of start of character's stats)
  LD A,(HL)               ; Load character's Strength into A...
  AND 127                 ; ...and remove bit 7 (unused)
  PUSH HL                 ; Store HL (Strength position in character's stats)
  LD HL,39201             ; Point HL at start of " 99 " segment for Strength in
                          ; Character's Stats Text at 39187
  CALL 34697              ; Splice numeric Strength data as a string into
                          ; Character's Stats Text
  POP HL                  ; Restore HL (Strength position in character's stats)
  INC HL                  ; Advance HL to Happiness position
  LD A,(HL)               ; Load character's Happiness into A...
  AND 127                 ; ...and remove bit 7 (unused)
  PUSH HL                 ; Store HL (Happiness position in character's stats)
  LD HL,39220             ; Point HL at start of " 99 " segment for Happiness
                          ; in Character's Stats Text at 39187
  CALL 34697              ; Splice numeric Happiness data as a string into
                          ; Character's Stats Text
  POP HL                  ; Restore HL (Happiness position in character's
                          ; stats)
  INC HL                  ; Advance HL to Stamina position
  LD A,(HL)               ; Load character's Stamina into A...
  AND 127                 ; ...and remove bit 7 (Characters Can't Move Flag
                          ; [Gordon Only, see routine at 53731])
  PUSH HL                 ; Store HL (Stamina position in character's stats)
  LD HL,39237             ; Point HL at start of " 99 " segment for Stamina in
                          ; Character's Stats Text at 39187
  CALL 34697              ; Splice numeric Stamina data as a string into
                          ; Character's Stats Text
  POP HL                  ; Restore HL (Stamina position in character's stats)
  INC HL                  ; Advance HL to Charisma position
  LD A,(HL)               ; Load character's Charisma into A...
  AND 127                 ; ...and remove bit 7 (Can Help Flag)
  PUSH HL                 ; Store HL (Charisma position in character's stats)
  LD HL,39255             ; Point HL at start of " 99 " segment for Charisma in
                          ; Character's Stats Text at 39187
  CALL 34697              ; Splice numeric Charisma data as a string into
                          ; Character's Stats Text
  POP HL                  ; Restore HL (Charisma position in character's stats)
  INC HL                  ; Advance HL to Magic Level position
  LD A,(HL)               ; Load character's Magic Level / attribute value into
                          ; A...
  AND 127                 ; ...and remove bit 7 (FLASH Flag)
  LD HL,39275             ; Point HL at start of " 99 " segment for Magic Level
                          ; in Character's Stats Text at 39187
  CALL 34697              ; Splice numeric Magic Level data as a string into
                          ; Character's Stats Text
  POP HL                  ; Restore HL (address of start of character's stats)
  RET                     ; Return

; Insert Numeric / Text Stats of an Object into "Examine Object" Window Text
;
; Used by the routine at 30145. Input:  HL  Address of start of an object's
; properties
  LD A,(HL)               ; Load A with weight of the object...
  AND 15                  ; ...stripping out flag values
  PUSH HL                 ; Store HL (address of start of object's properties)
  LD HL,39301             ; Point HL at numeric part of "WEIGHT" string...
  CALL 34697              ; ...and overwrite with weight value
  POP HL                  ; Restore HL (address of start of object's
                          ; properties)
  LD A,147                ; Load A with (Common Word Index for text "YES")
  BIT 6,(HL)              ; If Can Blow Flag is set...
  JR NZ,30661             ; ...then skip ahead to 30661
  INC A                   ; Increase A to 148 (Common Word Index for text "NO")
  LD (39320),A            ; Insert Common Word Index in A into the "BLOW" field
                          ; of the string
  LD A,147                ; Load A with (Common Word Index for text "YES")
  BIT 5,(HL)              ; If Can Read Flag is set...
  JR NZ,30671             ; ...then skip ahead to 30671
  INC A                   ; Increase A to 148 (Common Word Index for text "NO")
  LD (39333),A            ; Insert Common Word Index in A into the "READ" field
                          ; of the string
  INC HL                  ; Advance HL to second byte in record
  LD A,147                ; Load A with (Common Word Index for text "YES")
  BIT 3,(HL)              ; If Can Be Worn Flag is set...
  JR NZ,30682             ; ...then skip ahead to 30682
  INC A                   ; Increase A to 148 (Common Word Index for text "NO")
  LD (39346),A            ; Insert Common Word Index in A into the "WEAR" field
                          ; of the string
  RET                     ; Return

; Process Command to Command a Character
  LD HL,38669             ; Point HL at "COMMAND ?" text (end of sub-menu
                          ; title, after "WHO DO YOU WANT TO ")
  LD DE,39574             ; Point DE (Command Summary Text Pointer) at "COMMAND
                          ; " text
  CALL 34122              ; Display and process input for Character Selection
                          ; Menu (current room's characters only), setting
                          ; Current Character
  JP Z,29482              ; If there are no characters in the room then set
                          ; MK's available action flags, validate I.D. Card if
                          ; appropriate and jump to start of Main Game Loop
                          ; (29482)
  LD DE,39082             ; Point DE at "TO"...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  LD A,23                 ; Draw  "WHICH COMMAND DO YOU WANT TO USE?" Menu
                          ; Window...
  CALL 34982              ; ...
  LD HL,39577             ; Print "WHICH COMMAND DO YOU WANT TO USE" Menu
                          ; text...
  CALL 34762              ; ...
  CALL 35296              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  LD (30797),A            ; Load index of selected command into operand of
                          ; instruction at 30796...
  LD B,A                  ; ...and into B
  CALL 54256              ; Point HL at start of B-th entry in list of "COMMAND
                          ; A CHARACTER" commands at 39626
  EX DE,HL                ; Swap HL and DE (Command Summary Text Pointer, now
                          ; at selected command string)
  CALL 54283              ; Print text at DE in Command Summary Window at top
                          ; of screen
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,250                ; Decrease Current Character's happiness by 6...
  CALL 33569              ; ...
  LD A,27                 ; If Magic Knight is wearing the Gas Mask (27)...
  CALL 33640              ; ...
  JP Z,55322              ; ...then display "[Character] HEARS A MUFFLED
                          ; VOICE..." Window (12), wait for fire to be pressed
                          ; then jump to Main Game Loop
  LD A,(29632)            ; Load A with index of Current Character
  LD E,6                  ; Point HL at Current Character's Flags...
  CALL 33541              ; ...
  LD A,(HL)               ; Load Flags into A
  AND 3                   ; If Is Artificial Flag is set and Dislikes Starfleet
                          ; Flag is reset...
  CP 2                    ; ...
  JR Z,30791              ; ...then skip ahead to 30791
  EX AF,AF'               ; Switch AF and AF' (character's "Is Artificial" and
                          ; "Dislikes Starfleet" flags now in A')
  LD A,1                  ; If Magic Knight is wearing the Cloak of
                          ; Invisibility (01)...
  CALL 33640              ; ...
  JP Z,55303              ; ...then display "[Character] HEARS A VOICE AND
                          ; IGNORES IT" Window, and Jump to Main Game Loop
  EX AF,AF'               ; Switch AF and AF' (character's "Is Artificial" and
                          ; "Dislikes Starfleet" flags now in A)
  OR A                    ; If character is not artificial, and likes
                          ; Starfleet...
  JR Z,30783              ; ...then skip ahead to 30783
  LD A,3                  ; If Magic Knight is wearing the Valid I.D. Card
                          ; (03)...
  CALL 33640              ; ...
  JP Z,55317              ; ...then display "[Character] DOES NOT LIKE
                          ; STARFLEET SO HE IGNORES YOU" Window (12), wait for
                          ; fire to be pressed then jump to Main Game Loop
  JR 30791                ; Skip ahead to 30791
  LD A,3                  ; If Magic Knight is not wearing the Valid I.D. Card
                          ; (03)...
  CALL 33640              ; ...
  JP NZ,55312             ; ...then display "[Character] DOES NOT RECOGNISE
                          ; YOUR AUTHORITY" Window (12), wait for fire to be
                          ; pressed then jump to Main Game Loop
  LD A,7                  ; Increase Current Character's happiness by 7...
  CALL 33569              ; ...
; The operand of the instruction at 30796 is the index of the currently
; selected command from the "COMMAND A CHARACTER TO" menu. This is modified by
; the instruction at 30718.
  LD A,0                  ; Load A with index of selected "COMMAND A CHARACTER
                          ; TO" command
  LD HL,30804             ; Point HL at start of Table of "Command a Character"
                          ; Routine Addresses
  JP 55726                ; Advance HL by A words, load HL with word at
                          ; location HL as address and jump to it

; Table of Routine Addresses for Magic Knight Commanding Characters
  DEFW 30810              ; Send Current Character to Sleep if Possible
  DEFW 30842              ; Wake Current Character Up if Possible
  DEFW 30874              ; Have a Character Help if Possible

; Send Current Character to Sleep if Possible
  CALL 33546              ; Point IX at Current Character's current stats
  BIT 7,(IX+6)            ; If character's Asleep Flag is set...
  JP NZ,55227             ; ...then display "[Character] IS ALREADY ASLEEP"
                          ; window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD A,(IX+2)             ; If character's stamina is 70 or more...
  AND 127                 ; ...
  CP 70                   ; ...
  JP NC,55232             ; ...then display "[Character] IS TOO WAKEFUL TO
                          ; SLEEP" window (29), wait for fire to be pressed
                          ; then jump to Main Game Loop
  LD B,30                 ; If character's happiness is less than 30 then Show
                          ; "[Character] DOES NOT WANT TO BE COMMANDED..." and
                          ; Jump to Main Game Loop...
  CALL 33558              ; ...
  SET 7,(IX+6)            ; Set character's Asleep Flag
  JP 55354                ; Display "[Character] HAS GONE TO SLEEP" Window
                          ; (29), wait for fire to be pressed then jump to Main
                          ; Game Loop

; Wake Current Character Up if Possible
  CALL 33546              ; Point IX at Current Character's current stats
  BIT 7,(IX+6)            ; If character's Asleep Flag is reset...
  JP Z,55242              ; ...then display "[Character] IS ALREADY AWAKE"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD A,(IX+2)             ; If character's stamina is less than 30...
  AND 127                 ; ...
  CP 30                   ; ...
  JP C,55247              ; ...then display "[Character] IS TOO TIRED TO WAKE
                          ; UP" Window (29), wait for fire to be pressed then
                          ; jump to Main Game Loop
  LD B,30                 ; If character's happiness is less than 30 then Show
                          ; "[Character] DOES NOT WANT TO BE COMMANDED..." and
                          ; Jump to Main Game Loop...
  CALL 33558              ; ...
  RES 7,(IX+6)            ; Reset character's Asleep Flag
  JP 55359                ; Display "[Character] HAS WOKEN UP" Window (29),
                          ; wait for fire to be pressed then jump to Main Game
                          ; Loop

; Have a Character Help if Possible
  CALL 33725              ; Display "[Character] IS ASLEEP" Window and jump to
                          ; Main Game Loop if Current Character is asleep, else
                          ; return here and continue
  LD A,32                 ; Load A with 32 (ASCII code for SPACE)...
  LD (42169),A            ; ...and append onto end of "[Character] CANNOT HELP
                          ; YOU" text at 42166
  CALL 33546              ; Point IX at Current Character's current stats
  BIT 7,(IX+3)            ; If character's Can Help Flag is reset...
  JP Z,55252              ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD A,(IX+2)             ; If character's stamina is less than 10...
  AND 127                 ; ...
  CP 10                   ; ...
  JP C,55257              ; ...then display "[Character] IS TOO TIRED TO HELP
                          ; YOU" Window (29), wait for fire to be pressed then
                          ; jump to Main Game Loop
  LD B,10                 ; If character's happiness is less than 10 then Show
                          ; "[Character] DOES NOT WANT TO BE COMMANDED..." and
                          ; Jump to Main Game Loop...
  CALL 33558              ; ...
  LD A,(29632)            ; Load A with index of Current Character
  LD HL,30916             ; Point HL at start of Table of Addressed of
                          ; Characters' Help Routines
  JP 55726                ; Advance HL by A words, load HL with word at
                          ; location HL as address and jump to it

; Table of Start Addresses of Routines for Characters Being Commanded to Help
  DEFW 33100              ; Gordon
  DEFW 33140              ; Sarab
  DEFW 33170              ; Klink
  DEFW 33170              ; S3 E3
  DEFW 33290              ; Hooper
  DEFW 33304              ; Murphy
  DEFW 33318              ; Sharon
  DEFW 33332              ; Forbin
  DEFW 33338              ; Derby IV
  DEFW 33448              ; Swiftfoot
  DEFW 33462              ; Julie 8
  DEFW 33468              ; Hectorr

; Process Command to Launch Tyme Machine
  LD A,(23700)            ; If USS Pisces' current location is Gangrole (20)...
  CP 20                   ; ...
  JP Z,30954              ; ...then skip ahead to 30954
  LD HL,47460             ; Point HL at "YOU AND THE TYME MACHINE CRASHED TO
                          ; THE SURFACE OF..." text
  JP 55685                ; Jump to "Game over" window routine and return to
                          ; Control Selection Menu
  LD A,(23403)            ; If Tyme Machine Charged Flag is set...
  AND 2                   ; ...
  JP NZ,31468             ; ...then show "WELL DONE MAGIC KNIGHT" screen,
                          ; jumping to Game Over on key-press
  LD HL,47406             ; Point HL at "AS YOU FELL TOWARDS GANGROLE THE TYME
                          ; MACHINE OVERLOADED..." text
  JP 55685                ; Jump to "Game over" window routine and return to
                          ; Control Selection Menu

; Process Command to Read an Object
  LD IX,25164             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,40943             ; Point HL at "READ WHICH OBJECT ?" text
  LD DE,40956             ; Point DE at "READ THE " text
  CALL 33952              ; Show list of objects in Magic Knight's inventory
                          ; (carrying) as a menu and load A with selected item
                          ; index
  LD HL,25164             ; Point HL at start of Characters' Current
                          ; Inventories Table
  CALL 33911              ; Print name of object in inventory slot A of
                          ; inventory data at HL in Command Summary Window
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(29526)            ; Load A with index of Current Object
  CP 24                   ; If Current Object is the Starfleet Manual (24)...
  JP Z,31029              ; ...then skip ahead to 31029
  CP 7                    ; If Current Object is the Gadget X (07)...
  JP Z,31035              ; ...then skip ahead to 31035
  LD E,0                  ; Point HL at start of record for object with index A
                          ; in Object Properties Table...
  CALL 33525              ; ...
  BIT 5,(HL)              ; If Can Read Flag is reset...
  JP Z,55282              ; ...then display "THERE IS NO WRITING FOR ME TO
                          ; READ" Window (12), Wait for Fire to be Pressed then
                          ; Jump to Main Game Loop
  INC HL                  ; Advance HL to read-text index for object...
  INC HL                  ; ...
  INC HL                  ; ...
  LD A,(HL)               ; ...and load into A
  AND 31                  ; Clear bits 5, 6 and 7...
  LD B,A                  ; ...and load index into B
  CALL 54251              ; Point HL at start of B-th entry in List of
                          ; Read-Texts of Readable Objects
  CALL 55364              ; Display Window 02 with object's read-text, wait for
                          ; fire to be pressed then jump to Main Game Loop...

; Data block at 31028
  DEFB 2                  ; ...

; Routine at 31029
;
; Used by the routine at 30968.
  CALL 26926              ; Display Instructions windows
  JP 29482                ; Set Magic Knight's available action flags, validate
                          ; I.D. Card if appropriate and jump to start of Main
                          ; Game Loop
; This entry point is used by the routine at 30968.
  CALL 26745              ; Display and handle Gadget X Menu
  JP 29482                ; Set Magic Knight's available action flags, validate
                          ; I.D. Card if appropriate and jump to start of Main
                          ; Game Loop

; Process Command to Cast a Spell
  CALL 54333              ; Print or update Command Summary Window at top of
                          ; screen
  LD DE,41705             ; Point DE at "CAST A SPELL"...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  LD HL,41711             ; Point HL at byte before "WHICH SPELL DO YOU WANT TO
                          ; CAST?" full menu text
  LD DE,37307             ; Adjust height of window 27 to accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (pointer to menu text to print)
  LD A,27                 ; Draw Menu Window 27...
  CALL 34982              ; ...
  POP HL                  ; Restore HL (pointer to menu text to print)
  CALL 34762              ; Print text to screen
  CALL 35296              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  LD (31105),A            ; Store index of spell selected in this routine at
                          ; 31104
  CALL 54333              ; Print or update Command Summary Window at top of
                          ; screen
  LD HL,41794             ; Point HL at "CAST REMOVE BARRIERS" text (i.e. first
                          ; in list of "CAST [SPELL]" strings)
  LD A,(31105)            ; Load index of spell selected into B...
  LD B,A                  ; ...
  CALL 54269              ; ...and advance HL to relevant "CAST [SPELL]" string
  EX DE,HL                ; Swap DE (now points to "CAST [SPELL]" text) and
                          ; HL...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  LD A,(31105)            ; Load index of spell selected into A
  CP 2                    ; If selected spell is 2 (FORTIFY CHARACTER)...
  JR Z,31104              ; ...then skip ahead to 31104
  CP 5                    ; If selected spell is not 5 (or 2, i.e. any spell
                          ; except FORTIFY CHARACTER)...
  CALL NZ,55115           ; ...then display Execute / Reject Command window and
                          ; return here if Execute chosen, else exit to Main
                          ; Game Loop
; The operand of the instruction at 31104 represents the index of the selected
; spell. This is modified by the instruction at 31072.
  LD A,0                  ; Load A with index of selected spell
  LD HL,31112             ; Point HL at table of Cast a Spell routine addresses
  JP 55726                ; Load HL with address of appropriate Cast a Spell
                          ; Routine and jump to it

; Table of Cast a Spell Routine Addresses
  DEFW 31122              ; Remove Barriers
  DEFW 31188              ; Consult Oracle
  DEFW 31257              ; Fortify Character
  DEFW 31280              ; Fortify Yourself
  DEFW 31312              ; Lightning Bolt

; Cast Remove Barriers if Possible, else Display Failure Message
  LD A,(23403)            ; If Barriers Removed Flag is set...
  AND 1                   ; ...
  JP NZ,55262             ; ...then display "THERE ARE NO BARRIERS TO BE
                          ; REMOVED HERE." Window (29), wait for fire to be
                          ; pressed then jump to Main Game Loop
  LD A,(23701)            ; If Magic Knight's current room is not 09 (Retreat,
                          ; 2, Barrier Room)...
  CP 9                    ; ...
  JP NZ,55262             ; ...then display "THERE ARE NO BARRIERS TO BE
                          ; REMOVED HERE." Window (29), wait for fire to be
                          ; pressed then jump to Main Game Loop
  LD A,12                 ; If Magic Knight is not wearing the Magic Talisman
                          ; (12)...
  CALL 33640              ; ...
  JP NZ,55332             ; ...then display "YOU CANNOT CAST THAT SPELL NOW..."
                          ; Window (10), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD A,(25024)            ; Load Magic Knight's current magic level into A...
  AND 127                 ; ...
  CP 55                   ; If this is less than 55...
  JP C,55332              ; ...then display "YOU CANNOT CAST THAT SPELL NOW..."
                          ; Window (10), wait for fire to be pressed then jump
                          ; to Main Game Loop
  SUB 55                  ; Subtract 55 from Magic Level...
  LD B,A                  ; ...and load into B
  LD A,(25024)            ; Load A with unused bit...
  AND 128                 ; ...
  OR B                    ; ...combine with remaining Magic Level value...
  LD (25024),A            ; ...and store
  CALL 55651              ; Flash border and screen (as in cast a spell)
  LD A,(23403)            ; Set Barriers Removed Flag...
  OR 1                    ; ...
  LD (23403),A            ; ...
  LD HL,50956             ; Set Room Layout Data Pointer address for Retreat, 2
                          ; to address of "Without Barrier" version of Room 09
                          ; (50956)...
  LD (50161),HL           ; ...
  JP 55344                ; Display "THE BARRIER HAS FADED INTO NOTHINGNESS"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop

; Cast Consult Oracle if Possible, else Display Failure Message
  LD A,29                 ; If Magic Knight is not carrying the Bag of Runes
                          ; (29)...
  CALL 33645              ; ...
  JP NZ,55332             ; ...then display "YOU CANNOT CAST THAT SPELL NOW..."
                          ; Window (10), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD A,(25024)            ; Load Magic Knight's current magic level into A...
  AND 127                 ; ...
  CP 30                   ; If this is less than 30...
  JP C,55332              ; ...then display "YOU CANNOT CAST THAT SPELL NOW..."
                          ; Window (10), wait for fire to be pressed then jump
                          ; to Main Game Loop
  SUB 30                  ; Subtract 30 from Magic Level...
  LD B,A                  ; ...and load into B
  LD A,(25024)            ; Load A with unused bit...
  AND 128                 ; ...
  OR B                    ; ...combine with remaining Magic Level value...
  LD (25024),A            ; ...and store (see trivia)
  LD A,(23471)            ; If index of previous "Consult Oracle" text shown is
                          ; not 9...
  CP 9                    ; ...
  JR NZ,31227             ; ...then skip ahead to 31227
  LD A,255                ; Load A with 255 (will be "increased" to zero in
                          ; next instruction)
  INC A                   ; Increase value of A (index of next "Consult Oracle"
                          ; text to show)...
  LD (23471),A            ; ...and store
  LD B,A                  ; Load B with text index
  LD HL,45949             ; Point HL at start of list of "Consult Oracle" texts
                          ; at 45949
  CALL 54269              ; Advance HL to B-th entry in this list
  LD DE,37323             ; Adjust height of window 29 to accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (pointer to start of text to print)
  LD A,29                 ; Draw Window 29...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)
  CALL 34762              ; Print the text
  JP 29479                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop

; Cast Fortify Character if Possible, else Display Failure Message
  LD HL,38674             ; Point HL at "FORTIFY?" text (to append to title of
                          ; Character Selection Menu)
  LD DE,41814             ; Point DE at "CAST FORTIFY SPELL ON " (Command
                          ; Summary Text Pointer)
  CALL 34122              ; Display and process input for Character Selection
                          ; Menu (current room's characters only), setting
                          ; Current Character
  JP Z,29482              ; If there are no characters in the room then set
                          ; MK's available action flags, validate I.D. Card if
                          ; appropriate and jump to start of Main Game Loop
                          ; (29482)
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  CALL 33546              ; Point IX at Current Character's current stats...
  PUSH IX                 ; ...and copy address into HL...
  POP HL                  ; ...
  JR 31283                ; Jump to 31283 (fortify stats at HL and return to
                          ; Main Game Loop)

; Cast Fortify Yourself if Possible, else Display Failure Message Input:  HL
; (Entry at 31283 only) Pointer to a character's current stats
  LD HL,25020             ; Point HL at Magic Knight's current stats
; This entry point is used by the routine at 31257.
  LD B,4                  ; Load B with 4 (as we are fortifying four stats)
  LD C,25                 ; Load C with 25 (increment for stats)
  LD A,(HL)               ; Load current stat into A...
  CALL 53703              ; ...increment A by 25, capping at 100...
  LD (HL),A               ; ...and store
  INC HL                  ; Advance HL to next stat
  DJNZ 31285              ; Decrease B (remaining number of stats to fortify)
                          ; and loop back to 31285
  LD A,(25024)            ; Load B with unused bit...
  AND 128                 ; ...
  LD B,A                  ; ...
  XOR A                   ; Set A (Magic Level) to zero (see trivia)
  OR B                    ; Recombine unused bit...
  LD (25024),A            ; ...and store
  CALL 55651              ; Flash border and screen (as in cast a spell)
  JP 29479                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop

; Cast Lightning Bolt if Possible, else Display Failure Message
  LD A,(25024)            ; Load Magic Knight's current magic level into A...
  AND 127                 ; ...
  CP 65                   ; If this is less than 65...
  JP C,55332              ; ...then display "YOU CANNOT CAST THAT SPELL NOW..."
                          ; Window (10), wait for fire to be pressed then jump
                          ; to Main Game Loop
  SUB 65                  ; Subtract 65 from Magic Level...
  LD B,A                  ; ...and load into B
  LD A,(25024)            ; Load A with unused bit...
  AND 128                 ; ...
  OR B                    ; ...combine with remaining Magic Level value...
  LD (25024),A            ; ...and store
  CALL 55651              ; Flash border and screen (as in cast a spell)
  LD HL,46894             ; Point HL at "YOUR LIGHTNING BOLT HAS ALERTED THE
                          ; SECURITY SYSTEM..." text
  LD A,(23701)            ; Load A with Magic Knight's current room
  CP 7                    ; If Magic Knight's current room is Retreat, 0,
                          ; "Murphy's Moon" (07)...
  JP Z,55685              ; ...then jump to "Game over" window routine and
                          ; return to Control Selection Menu
  CP 8                    ; If Magic Knight's current room is Retreat, 1
                          ; (08)...
  JP Z,55685              ; ...then jump to "Game over" window routine and
                          ; return to Control Selection Menu
  CP 21                   ; If Magic Knight's current room is Monopole, 0,
                          ; "Hooper's Emergency Exit" (21)...
  JP Z,55685              ; ...then jump to "Game over" window routine and
                          ; return to Control Selection Menu
  CP 22                   ; If Magic Knight's current room is Monopole, 1,
                          ; "This Way to Hooper ==>>" (22)...
  JP Z,55685              ; ...then jump to "Game over" window routine and
                          ; return to Control Selection Menu
  CP 24                   ; If Magic Knight's current room is not USS Pisces,
                          ; 6A, "The Control Column" (24)...
  JR NZ,31392             ; ...then skip ahead to 31392
  LD A,(23403)            ; If Tyme Machine Charged Flag is set...
  AND 2                   ; ...
  JR NZ,31392             ; ...then skip ahead to 31392
  OR 3                    ; Set Tyme Machine Charged and Barriers Removed
                          ; flags... (bug)
  LD (23403),A            ; ...
  LD A,(23397)            ; Increase Bonus Score by 10...
  ADD A,10                ; ...
  LD (23397),A            ; ...
  LD HL,46682             ; Point HL at "YOUR LIGHTNING BOLT HAS HIT THE
                          ; ANCIENT TYME MACHINE..." text
  JR 31449                ; Display text in message window and return to Main
                          ; Game Loop
  LD HL,46598             ; Point HL at "YOU HAVE THROWN A LIGHTNING BOLT
                          ; BUT..." text
  LD A,(23701)            ; Load B with Magic Knight's current room...
  LD B,A                  ; ...
  LD A,(25340)            ; Load A with current room of Part of a Sundial
                          ; (1)...
  CP B                    ; ...and if this is not the same as Magic Knight's
                          ; current room...
  JR NZ,31449             ; ...then display text in message window and return
                          ; to Main Game Loop
  LD A,(25343)            ; Load A with current room of Part of a Sundial
                          ; (2)...
  CP B                    ; ...and if this is not the same as Magic Knight's
                          ; current room...
  JR NZ,31449             ; ...then display text in message window and return
                          ; to Main Game Loop
  LD A,(25346)            ; Load A with current room of Part of a Sundial
                          ; (3)...
  CP B                    ; ...and if this is not the same as Magic Knight's
                          ; current room...
  JR NZ,31449             ; ...then display text in message window and return
                          ; to Main Game Loop
  LD A,99                 ; Set current room of three Sundial parts to 99 (i.e.
                          ; out of game area)...
  LD (25340),A            ; ...
  LD (25343),A            ; ...
  LD (25346),A            ; ...
  LD A,B                  ; Load A with Magic Knight's current room...
  LD (25325),A            ; ...and set this as the current room of the Golden
                          ; Sundial of Alpha
  LD HL,(25344)           ; Copy x- and y-coordinates of Part of a Sundial
                          ; (2)...
  LD (25326),HL           ; ...to Golden Sundial of Alpha
  LD A,(23397)            ; Increase Bonus Score by 10...
  ADD A,10                ; ...
  LD (23397),A            ; ...
  LD HL,46804             ; Point HL at "THE SEGMENTS OF THE GOLDEN SUNDIAL OF
                          ; ALPHA..." text
  LD DE,37323             ; Adjust height of Window 29 to accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (pointer to start of text to print)
  LD A,29                 ; Draw Window 29...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)...
  CALL 34762              ; ...and print
  JP 29479                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop

; Show "WELL DONE MAGIC KNIGHT" Screen, Jumping to Game Over on Key-Press
;
; Used by the routine at 30940.
  IM 1                    ; Set Interrupt Mode 1
  LD A,(23397)            ; Increase Bonus Score by 5...
  ADD A,5                 ; ...
  LD (23397),A            ; ...
  CALL 55651              ; Flash border and screen (as in cast a spell)
  LD HL,16384             ; Blank out top two thirds of Display File...
  LD DE,16385             ; ...
  LD BC,4095              ; ...
  LD (HL),L               ; ...
  LDIR                    ; ...
  LD A,71                 ; Load A with 71 (white INK, black PAPER, BRIGHT)...
  CALL 35677              ; ...and flood Attribute File with this attribute
  LD A,22                 ; Draw Window 22...
  CALL 34990              ; ...
  LD HL,38366             ; Point HL at "WELL DONE..." text...
  CALL 34762              ; ...and print to screen
  LD HL,0                 ; Set Magic Knight's x- and y-velocities to zero...
  LD (25160),HL           ; ...
  LD HL,19320             ; Set Magic Knight's x-coordinate to 120 and
                          ; y-coordinate to 75...
  LD (25156),HL           ; ...
  XOR A                   ; Set unused data at 25158 to zero...
  LD (25158),A            ; ...
  CALL 53150              ; Store background attributes if appropriate, then
                          ; draw Magic Knight to display
  CALL 54575              ; If keypress was enqueued then load A with index of
                          ; last key pressed, otherwise wait for keypress and
                          ; load A with index
  LD HL,44571             ; Point HL at "YOU HAVE ESCAPED FROM THE FUTURE..."
                          ; text
  JP 55685                ; Jump to "Game over" window routine and return to
                          ; Control Selection Menu

; Process Command to Wear / Unwear an Object
  LD A,11                 ; Draw Window 11...
  CALL 34982              ; ...
  LD HL,41830             ; Point HL at Wear/Unwear Menu text...
  CALL 34762              ; ...and print to screen
  CALL 35296              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  JR NZ,31627             ; If UNWEAR selected then skip ahead to 31627
  CALL 33834              ; Display "YOU ARE NOT CARRYING ANYTHING" Window and
                          ; set Zero Flag if Magic Knight's inventory
                          ; (carrying) is empty
  JP Z,29482              ; If MK's inventory (carrying) is empty then set his
                          ; available action flags, validate I.D. Card if
                          ; appropriate and jump to start of Main Game Loop
                          ; (29482)
  LD IX,25164             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,41848             ; Point HL at "WEAR WHICH OBJECT ?" text
  LD DE,41841             ; Point DE at "WEAR THE " text
  CALL 33952              ; Show list of objects in Magic Knight's inventory
                          ; (carrying) as a menu and load A with selected item
                          ; index
  LD HL,25164             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  CALL 33911              ; Print name of object in inventory slot A of
                          ; inventory data at HL in Command Summary Window
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD HL,25173             ; If last slot in Magic Knight's current inventory
                          ; (wearing) is not empty...
  LD A,(HL)               ; ...
  OR A                    ; ...
  JP NZ,55170             ; ...then display "YOU ARE WEARING TOO MUCH" Window
                          ; (13), wait for fire to be pressed then jump to Main
                          ; Game Loop
  LD A,(29526)            ; Load A with index of Current Object
  LD E,1                  ; If object's Can Wear Flag is reset...
  CALL 33525              ; ...
  BIT 3,(HL)              ; ...
  JP Z,55182              ; ...then display "YOU CANNOT WEAR THAT" Window (13),
                          ; wait for fire to be pressed then jump to Main Game
                          ; Loop
  LD A,(29526)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (five inventory slots)
  PUSH BC                 ; Store BC (B = number of slots to process, C =
                          ; Current Object)
  LD HL,25164             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  CALL 36254              ; Remove object C from this inventory
  POP BC                  ; Restore BC (B = number of slots to process, C =
                          ; Current Object)
  LD HL,25169             ; Point HL at Magic Knight's current inventory
                          ; (wearing)...
  CALL 33516              ; ...and load object C into the first empty slot
  JP 29467                ; Show Magic Knight's current inventory and jump back
                          ; to Main Game Loop
  CALL 33824              ; Display "YOU ARE NOT WEARING ANYTHING" Window and
                          ; set Zero Flag if Magic Knight's inventory (wearing)
                          ; is empty
  JP Z,29482              ; If MK's inventory (wearing) is empty then set his
                          ; available action flags, validate I.D. Card if
                          ; appropriate and jump to start of Main Game Loop
                          ; (29482)
  LD IX,25169             ; Point IX at Magic Knight's current inventory
                          ; (wearing)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,41846             ; Point HL at "UNWEAR WHICH OBJECT ?" text
  LD DE,41839             ; Point DE at "UNWEAR THE " text
  CALL 33952              ; Show list of objects in Magic Knight's inventory
                          ; (wearing) as a menu and load A with selected item
                          ; index
  LD HL,25169             ; Point HL at Magic Knight's current inventory
                          ; (wearing)
  CALL 33911              ; Print name of object in inventory slot A of
                          ; inventory data at HL in Command Summary Window
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD HL,25168             ; Load A with index of object in Magic Knight's fifth
                          ; inventory slot (carrying)...
  LD A,(HL)               ; ...
  OR A                    ; If this is not zero (i.e. Magic Knight's hands are
                          ; full)...
  JP NZ,55165             ; ...then display "YOUR HANDS ARE FULL" window, wait
                          ; for fire to be pressed then jump to Main Game Loop
  LD A,(29526)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (five inventory slots)
  PUSH BC                 ; Store BC (B = number of slots to process, C =
                          ; Current Object)
  LD HL,25169             ; Point HL at Magic Knight's current inventory
                          ; (wearing)
  CALL 36254              ; Remove object C from Magic Knight's current
                          ; inventory (wearing)
  POP BC                  ; Restore BC (B = number of slots to process, C =
                          ; Current Object)
  LD HL,25164             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)...
  CALL 33516              ; ...and load Object C into the first empty slot
  JP 29467                ; Show Magic Knight's current inventory and jump back
                          ; to Main Game Loop

; Process Command to Move Starship
  LD A,255                ; Set MASK P and MASK T system variables to 255...
  LD (23696),A            ; ...to preserve attributes already on screen...
  LD (23694),A            ; ...
  CALL 54333              ; Print or update Command Summary Window at top of
                          ; screen
  LD DE,41888             ; Point DE at "MOVE THE STARSHIP TO"...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  LD A,(23700)            ; Load D with USS Pisces' Current Location...
  LD D,A                  ; ...
  LD HL,53329             ; Point HL at Starship Location Connectivity Data
  LD BC,16384             ; Load B with 64 and C with zero
  LD A,(HL)               ; Load current location index in Starship Location
                          ; Connectivity Data into A...
  CP D                    ; ...and if this is the same as the USS Pisces'
                          ; Current Location...
  JR Z,31723              ; ...then skip ahead to 31723
  INC HL                  ; Advance HL to next location index
  INC C                   ; Increase C
  DJNZ 31715              ; Loop back to 31715
  LD A,C                  ; Load C (index of index of USS Pisces' Current
                          ; Location!) into instruction at 31766 as operand...
  LD (31767),A            ; ...
  LD BC,9                 ; Load BC with 9
  OR A                    ; Reset Carry Flag
  SBC HL,BC               ; Move HL back nine bytes to cell to current
                          ; location's north-west
  LD DE,23436             ; Point DE at the List of Currently Available
                          ; Destinations
  LD B,3                  ; Load B with 3
  PUSH BC                 ; Store BC (B = current repeat counter)
  LD A,(HL)               ; Copy entry from Starship Location Connectivity Data
                          ; to List of Currently Available Destinations...
  LD (DE),A               ; ...
  INC DE                  ; Advance List of Currently Available Destinations
                          ; pointer
  INC HL                  ; Advance Starship Location Connectivity Data pointer
                          ; east one unit
  LD A,B                  ; If repeat counter is 2...
  CP 2                    ; ...
  JR Z,31751              ; ...then skip ahead to 31751 (skip over current
                          ; location as we are already here!)
  LD A,(HL)               ; Copy entry from Starship Location Connectivity Data
                          ; to List of Currently Available Destinations...
  LD (DE),A               ; ...
  INC DE                  ; Advance List of Currently Available Destinations
                          ; pointer
  INC HL                  ; Advance Starship Location Connectivity Data pointer
                          ; east one unit
  LD A,(HL)               ; Copy entry from Starship Location Connectivity Data
                          ; to List of Currently Available Destinations...
  LD (DE),A               ; ...
  INC DE                  ; Advance List of Currently Available Destinations
                          ; pointer
  LD BC,6                 ; Advance Starship Location Connectivity Data pointer
                          ; by 6 bytes (i.e. south one and west two units)...
  ADD HL,BC               ; ...
  POP BC                  ; Restore BC (B = current repeat counter)
  DJNZ 31738              ; Loop back to 31738 for next iteration
  LD IX,23436             ; Point IX at start of List of Currently Available
                          ; Destinations
  LD A,0                  ; Load A with index of index of USS Pisces' Current
                          ; Location as stored by instruction at 31723
  CP 8                    ; If index is less than 8 (i.e. already on
                          ; northern-most row of grid)...
  JP C,32200              ; ...then remove starship destination entries for
                          ; locations to the north-west, north and north-east
  CP 24                   ; If index is 24 or more (i.e. already on
                          ; southern-most row of grid)...
  JP NC,32213             ; ...then remove starship destination entries for
                          ; locations to the south-west, south and south-east
; This entry point is used by the routines at 32200 and 32213.
  LD A,(31767)            ; Load A with index of index of USS Pisces' Current
                          ; Location as stored by instruction at 31723
  AND 7                   ; If lowest three bits are reset...
  OR A                    ; ...(i.e. already on western-most column of grid)...
  JP Z,32226              ; ...then remove starship destination entries for
                          ; locations to the north-west, west and south-west
  CP 7                    ; If lowest three bits are set (i.e. already on
                          ; eastern-most column of grid)...
  JP Z,32239              ; ...then remove starship destination entries for
                          ; locations to the north-east, east and south-east
; This entry point is used by the routines at 32226 and 32239. Code here
; compacts the List of Currently Available Destinations at 23436 by removing
; mid-list zeroes.
  LD HL,23436             ; Point HL at start of List of Currently Available
                          ; Destinations
  LD DE,23436             ; Point DE at start of List of Currently Available
                          ; Destinations
  LD BC,2048              ; Set B = 8 (as List of Currently Available
                          ; Destinations can have at most eight entries) and C
                          ; = 0
  LD A,(HL)               ; If current Available Destination List entry is
                          ; zero...
  OR A                    ; ...
  JR Z,31808              ; ...then skip ahead to 31808 (advance HL to next
                          ; list position)
  LD (DE),A               ; Set byte at DE to value read from HL
  INC C                   ; Increase C (current number of entries in tidied
                          ; list)
  INC DE                  ; Advance DE to next list position
  INC HL                  ; Advance HL to next list position
  DJNZ 31801              ; Decrease B (remaining list entries to process) and
                          ; loop back to 31801
  LD A,9                  ; Load A with 9...
  ADD A,C                 ; ...plus number of entries in List of Currently
                          ; Available Destinations
  PUSH BC                 ; Store BC (C = number of available destinations)
  LD (37292),A            ; Set y-coordinate of bottom of "WHERE TO ?" Window
                          ; (Window 25) to value stored in A
  LD A,1                  ; Set Initial (and minimum allowed) y-coordinate of
                          ; Hand Cursor to 1 for Window 25...
  LD (37295),A            ; ...
  LD A,25                 ; Draw "WHERE TO?" Menu Window...
  CALL 34982              ; ...
  LD HL,41899             ; Point HL at "WHERE TO ?" text...
  CALL 34762              ; ...and print to screen
  POP BC                  ; Restore BC (C = number of available destinations)
; Print list of available destinations as options in "WHERE TO ?" Window
  LD HL,23436             ; Point HL at start of List of Currently Available
                          ; Destinations
  LD B,C                  ; Load B with number of available destinations
  LD A,(HL)               ; Load location index from current position in List
                          ; of Currently Available Destinations
  PUSH HL                 ; Store HL (current position in List of Currently
                          ; Available Destinations)
  PUSH BC                 ; Store BC (B = remaining number of available
                          ; destinations)
  PUSH AF                 ; Store AF (A = index of a location read from
                          ; destinations list)
  LD HL,38351             ; Move cursor to start of next character row within
                          ; window, then right by two characters...
  CALL 34762              ; ...
  POP AF                  ; Restore AF (A = index of a location read from
                          ; destinations list)
  LD B,A                  ; Load B with location index...
  CALL 54261              ; ...and point HL at that location's name
  CALL 34762              ; Print the location's name in the menu window
  POP BC                  ; Restore BC (B = remaining number of available
                          ; destinations)
  POP HL                  ; Restore HL (current position in List of Currently
                          ; Available Destinations)
  INC HL                  ; Advance HL to next location in list
  DJNZ 31839              ; Loop back to 31839 to print next name in list
  CALL 35296              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  LD C,A                  ; Load BC with index of selected destination...
  LD B,0                  ; ...
  LD HL,23436             ; Point HL at start of List of Currently Available
                          ; Destinations...
  ADD HL,BC               ; ...and advance to entry for selected destination
  LD A,(HL)               ; Store this location index as operand of instruction
                          ; at 32034...
  LD (32035),A            ; ...
  LD B,A                  ; Load B with location's index
  CALL 54261              ; Point HL at the location's name
  EX DE,HL                ; Switch HL and DE (DE now points to location's
                          ; name)...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  LD DE,38233             ; Point DE at "AT"...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  LD DE,37291             ; Point DE at y-coordinate of top edge of Window
                          ; 25...
  LD A,14                 ; ...and set this window's height to 14...
  CALL 33782              ; ...
  LD A,2                  ; Set Initial (and minimum allowed) y-coordinate of
                          ; Hand Cursor to 2 for Window 25...
  LD (37295),A            ; ...
  LD A,25                 ; Draw Menu Window 25...
  CALL 34982              ; ...
  LD HL,41928             ; Point HL at "MOVE STARSHIP" Speed Selection Menu
                          ; Heading text...
  CALL 34762              ; ...and print to screen
  LD HL,41943             ; Point HL at "MOVE STARSHIP" Speed Selection Menu
                          ; Options text...
  CALL 34762              ; ...and print to screen
  CALL 35296              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  LD (23484),A            ; Store selected speed index at 23484
  LD HL,41984             ; Point HL at start of list of Speed Strings
  LD B,A                  ; Load B with index of selected speed
  CALL 54269              ; Advance HL to B-th entry in list of Speed Strings
  EX DE,HL                ; Switch HE and DE (DE now points to Speed String for
                          ; selected speed)...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  CALL 33788              ; If Gordon and Sarab are both asleep then reset Zero
                          ; Flag, otherwise increase their happiness by five if
                          ; not
  JP NZ,55291             ; If Zero Flag is reset then display "GORDON AND
                          ; SARAB ARE BOTH ASLEEP" Window (12), wait for fire
                          ; to be pressed then jump to Main Game Loop
  LD A,27                 ; If Magic Knight is wearing the Gas Mask (27)...
  CALL 33640              ; ...
  JP Z,55327              ; ...then display "GORDON AND SARAB CANNOT UNDERSTAND
                          ; YOU" Window (12), wait for fire to be pressed then
                          ; jump to Main Game Loop
  CALL 36415              ; Reset all stars to point of origin and generate new
                          ; velocities and movement data
  LD A,189                ; Set Current Starship Location in " LOCATION : [name
                          ; of Current Starship Location]" text at 38298...
  LD (38307),A            ; ...to "IN TRANSIT" (189)
  CALL 27765              ; Draw Magic Knight's current room, draw objects and
                          ; characters and initialise room-specific data
  CALL 32065              ; Scroll viewscreen content down 24 pixel rows then
                          ; display acceleration / deceleration effect (i.e.
                          ; leave orbit)
  LD A,(23484)            ; Load A with selected speed index...
  NEG                     ; ...multiply by minus one...
  ADD A,10                ; ...and add 10 to give a delay constant between 1
                          ; (fastest) to 10 (slowest)
  LD (36350),A            ; Update operand to instruction at 36349 to hold
                          ; delay constant value
  LD A,(23484)            ; Load A with selected speed index plus one...
  INC A                   ; ...
  ADD A,A                 ; Load E with this value multiplied by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD E,A                  ; ...
  LD BC,1                 ; Load B with zero and C (remaining number of blocks
                          ; of 256 timesteps to process) with 1
  PUSH BC                 ; Store BC (B = remaining number of timesteps to
                          ; process)
  PUSH DE                 ; Store DE (E = eight times [speed index + 1])
  CALL 36321              ; Advance positions of stars on viewscreen by one
                          ; timestep
  POP DE                  ; Restore DE (E = eight times [speed index + 1])
  LD A,(23435)            ; Load A with fraction remaining of current unit of
                          ; star drive fuel
  SUB E                   ; Subtract E (eight times [speed index + 1])...
  LD (23435),A            ; ...and store
  JR NC,32017             ; If unit of star drive fuel was not completely
                          ; depleted then skip ahead to 32017
  LD A,(25013)            ; Decrease USS Pisces' Star Drive Fuel by one...
  DEC A                   ; ...
  LD (25013),A            ; ...
  LD HL,44953             ; Point HL at "YOU RAN OUT OF STAR DRIVE FUEL..."
                          ; text
  JP Z,55685              ; If no star drive fuel remains then jump to "Game
                          ; over" window routine and return to Control
                          ; Selection Menu
  POP BC                  ; Restore BC (B = remaining number of timesteps to
                          ; process)
  DJNZ 31989              ; Decrease remaining number of timesteps to process
                          ; and loop back to 31989 if not zero
  DEC C                   ; Decrease C (remaining number of blocks of 256
                          ; timesteps to process)
  JR NZ,31989             ; If C is not zero (i.e. there are more blocks of
                          ; timesteps to process) then loop back to 31989
  CALL 35782              ; Play "USS Pisces has Arrived" sound
  CALL 32124              ; Display acceleration / deceleration effect then
                          ; scroll viewscreen content up 24 pixel rows (i.e.
                          ; enter orbit)
  LD A,28                 ; Set Current Starship Location in " LOCATION : [name
                          ; of Current Starship Location]" text at 38298...
  LD (38307),A            ; ...to the name of the Current Starship Location
                          ; (28)
; The operand of the instruction at 32034 represents the selected destination
; from the "MOVE STARSHIP" command. This is modified by the instruction at
; 31873.
  LD A,0                  ; Load A with selected destination location index...
  LD (23700),A            ; ...and set this as the USS Pisces' current location
  CP 5                    ; If A is 5 (i.e. location is Starbase 1)...
  CALL Z,32055            ; ...then set unknown flag and set A to zero
  CP 27                   ; If A is 27 (location index of Starbase 2 in 128k
                          ; version)... (see trivia)
  CALL Z,32055            ; ...then set unknown flag and set A to zero
  CALL 27703              ; Draw Top In-Game Window
  JP 55277                ; Display "THE STARSHIP HAS ARRIVED AT [Starship
                          ; Location]" Window (12), wait for fire to be pressed
                          ; then jump to Main Game Loop

; Set Unknown Flag
;
; Used by the routine at 31688. Output: A  Always zero
  LD A,(23402)            ; Set Unknown / Unused Flag 1...
  OR 1                    ; ...
  LD (23402),A            ; ...
  XOR A                   ; Set A to zero
  RET                     ; Return

; Scroll Viewscreen Content Down 24 Pixel Rows then Display Acceleration /
; Deceleration Effect (i.e. Leave Orbit)
;
; Used by the routine at 31688.
  LD HL,6151              ; Set left and right x-coordinates of region to
                          ; scroll to 7 and 24 (characters) respectively...
  LD (23489),HL           ; ...
  LD HL,36416             ; Set top and bottom y-coordinates of region to
                          ; scroll to 64 and 142 (pixels) respectively...
  LD (23491),HL           ; ...
  LD DE,25877             ; Point DE at end of temporary storage area (i.e.
                          ; last pixel-row's data)
  LD B,24                 ; Load B with 24 (number of pixels to scroll
                          ; viewscreen content down)
  PUSH BC                 ; Store BC (B = remaining number of pixels to scroll
                          ; viewscreen content down)
  PUSH DE                 ; Store DE (address of current position in temporary
                          ; storage area)
  HALT                    ; Wait for two interrupts...
  HALT                    ; ...
  CALL 55436              ; Scroll a region of the Display File down a pixel
                          ; row without wrapping
  POP DE                  ; Restore DE (address of current position in
                          ; temporary storage area)
  PUSH DE                 ; Store DE (address of current position in temporary
                          ; storage area)
  LD HL,22055             ; Point HL at 7th pixel row of character block at 7,
                          ; 17 (left-most byte of bottom pixel row of
                          ; viewscreen contents)
  LD BC,18                ; Load B with 18 (as viewscreen contents are 18
                          ; characters wide) and C with zero
  LDIR                    ; Copy bitmap data in bottom pixel row of viewscreen
                          ; content to temporary storage area
  LD HL,20423             ; Point HL at Display File address for pixel row two
                          ; above top of planet graphic (leftmost character in
                          ; viewscreen content)
  LD DE,18439             ; Point DE at Display File address for top pixel row
                          ; in viewscreen content (leftmost character block)
  LD BC,18                ; Copy viewscreen content bitmap data from pixel row
                          ; two above top of planet graphic to top pixel row in
                          ; viewscreen content...
  LDIR                    ; ...
  POP HL                  ; Restore HL (address of current position in
                          ; temporary storage area, was previously in DE)
  OR A                    ; Reset Carry Flag
  LD BC,18                ; Move HL back 18 bytes...
  SBC HL,BC               ; ...
  EX DE,HL                ; Swap DE (now points to current position in
                          ; temporary storage area) and HL
  POP BC                  ; Restore BC (B = remaining number of pixels to
                          ; scroll viewscreen content down)
  DJNZ 32082              ; Decrease remaining number of pixel rows to scroll
                          ; viewscreen content down, and loop back to 32082 if
                          ; not zero
  JP 35828                ; Display acceleration / deceleration effect on USS
                          ; Pisces viewscreen and return

; Display Acceleration / Deceleration Effect then Scroll Viewscreen Content Up
; 24 Pixel Rows (i.e. Enter Orbit)
;
; Used by the routine at 31688.
  CALL 35828              ; Display acceleration / deceleration effect on USS
                          ; Pisces viewscreen
  LD A,(32035)            ; Load A with selected destination
  CALL 32158              ; Prepare viewscreen for USS Pisces' arrival at
                          ; destination
  LD HL,25463             ; Point HL at start of temporary storage area
  LD B,24                 ; Load B with 24 (number of pixels to scroll
                          ; viewscreen content up)
  PUSH BC                 ; Store BC (B = remaining number of pixels to scroll
                          ; viewscreen content up)
  HALT                    ; Wait for two interrupts...
  HALT                    ; ...
  LD DE,22055             ; Point DE at 7th pixel row of character block at 7,
                          ; 17 (left-most byte of bottom pixel row of
                          ; viewscreen contents)
  LD BC,18                ; Load B with 18 (as viewscreen contents are 18
                          ; characters wide) and C with zero
  LDIR                    ; Copy bitmap data in temporary storage area to
                          ; bottom pixel row of viewscreen content
  PUSH HL                 ; Store HL (current position in temporary storage
                          ; area)
  CALL 55401              ; Scroll viewscreen contents up a pixel row without
                          ; wrapping
  POP HL                  ; Restore HL (current position in temporary storage
                          ; area)
  POP BC                  ; Restore BC (B = remaining number of pixels to
                          ; scroll viewscreen content up)
  DJNZ 32138              ; Decrease B (remaining number of pixels to scroll
                          ; viewscreen content up) and loop back to 32138 if
                          ; not zero
  RET                     ; Return

; Prepare Viewscreen for USS Pisces' Arrival at Destination
;
; Used by the routine at 32124. Input:  A  A destination index
  ADD A,A                 ; Double destination index...
  LD C,A                  ; ...and load into BC...
  LD B,0                  ; ...
  LD HL,25398             ; Point HL at first attribute entry in Table of
                          ; Current Planetary Data...
  ADD HL,BC               ; ...and add BC as offset
  LD A,(HL)               ; Load A with attribute of planet at new location
  LD (52196),A            ; Set colour of planet on viewscreen to this value
  LD (35948),A            ; Prepare to fill a region with the attribute in A
  LD HL,6151              ; Set left and right x-coordinates of region to
                          ; scroll to 7 and 24 (characters) respectively...
  LD (23489),HL           ; ...
  LD HL,36416             ; Set top and bottom y-coordinates of region to
                          ; scroll to 64 and 142 (pixels) respectively...
  LD (23491),HL           ; ...
  LD HL,2055              ; Set top-left of area to fill to (7, 8)
                          ; (characters)...
  LD (23493),HL           ; ...
  LD HL,4376              ; Set bottom-right of area to fill to (24, 17)
                          ; (characters)...
  LD (23495),HL           ; ...
  JP 35940                ; Fill a region of Attribute File with specified
                          ; attribute and return

; Remove Starship Destination Entries for Locations to the North-West, North
; and North-East
;
; Used by the routine at 31688.
  XOR A                   ; Set three bytes from IX onwards to zero...
  LD (IX+0),A             ; ...i.e. remove connectivity to the north-west...
  LD (IX+1),A             ; ...north...
  LD (IX+2),A             ; ...and north-east
  JP 31778                ; Return to "MOVE STARSHIP" routine

; Remove Starship Destination Entries for Locations to the South-West, South
; and South-East
;
; Used by the routine at 31688.
  XOR A                   ; Set three bytes from IX+5 onwards to zero...
  LD (IX+5),A             ; ...i.e. remove connectivity to the south-west...
  LD (IX+6),A             ; ...south...
  LD (IX+7),A             ; ...and south-east
  JP 31778                ; Return to "MOVE STARSHIP" routine

; Remove Starship Destination Entries for Locations to the North-West, West and
; South-West
;
; Used by the routine at 31688.
  XOR A                   ; Relative to IX, set bytes 0, 3 and 5 to zero...
  LD (IX+0),A             ; ...i.e. remove connectivity to the north-west...
  LD (IX+3),A             ; ...west...
  LD (IX+5),A             ; ...and south-west
  JP 31792                ; Return to "MOVE STARSHIP" routine

; Remove Starship Destination Entries for Locations to the North-East, East and
; South-East
;
; Used by the routine at 31688.
  XOR A                   ; Relative to IX, set bytes 2, 4 and 7 to zero...
  LD (IX+2),A             ; ...i.e. remove connectivity to the north-east...
  LD (IX+4),A             ; ...east...
  LD (IX+7),A             ; ...and south-east
  JP 31792                ; Return to "MOVE STARSHIP" routine

; Process Command to Use Transporter
  CALL 54333              ; Print or update Command Summary Window at top of
                          ; screen
  LD DE,42015             ; Point DE at "SEND TRANSPORTER CONTENTS"...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  LD DE,42145             ; Point DE at "TO"...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  LD DE,37227             ; Point DE at y-coordinate of top edge of Window 17
                          ; in Window Data Table at 37089...
  LD A,13                 ; ...and set this window's height to 13...
  CALL 33782              ; ...
  LD A,17                 ; Draw Window 17...
  CALL 34990              ; ...
  LD HL,42032             ; Point HL at "ENTER TRANSPORTER COORDINATES" Menu
                          ; text...
  CALL 34762              ; ...and print to screen
  LD A,127                ; Set ATTR T system variable to 127 (white INK, white
                          ; PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD DE,18438             ; Load D with 72 (pixels) and E with 6 (characters)
  CALL 32694              ; Handle vertical scrolling digit selection for
                          ; x-coordinate and load A with selected digit's ASCII
                          ; code
  LD (42174),A            ; Set x-coordinate value (as ASCII character code) in
                          ; "YOU HAVE ARRIVED AT..." text at 42171
  LD DE,18440             ; Load D with 72 (pixels) and E with 8 (characters)
  CALL 32694              ; Handle vertical scrolling digit selection for
                          ; x-coordinate and load A with selected digit's ASCII
                          ; code
  LD (42176),A            ; Set y-coordinate value (as ASCII character code) in
                          ; "YOU HAVE ARRIVED AT..." text at 42171
  LD DE,18442             ; Load D with 72 (pixels) and E with 10 (characters)
  CALL 32694              ; Handle vertical scrolling digit selection for
                          ; x-coordinate and load A with selected digit's ASCII
                          ; code
  LD (42178),A            ; Set z-coordinate value (as ASCII character code) in
                          ; "YOU HAVE ARRIVED AT..." text at 42171
  LD A,78                 ; Set ATTR T system variable to 78 (yellow INK, blue
                          ; PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD DE,42173             ; Point DE at "X.Y.Z."...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(23451)            ; If Transporter Repaired Flag is reset...
  BIT 0,A                 ; ...
  JP Z,32521              ; ...then skip ahead to 32521
  LD HL,32543             ; Point HL at Table of Transporter Pad Data
  LD BC,8                 ; Load BC with 8 (as each transporter pad entry is
                          ; eight bytes wide)
  LD A,(23700)            ; If current transporter pad is at the same location
                          ; as the USS Pisces...
  CP (HL)                 ; ...
  JR Z,32360              ; ...then skip ahead to 32360
  LD A,99                 ; If current transporter pad's current location is 99
                          ; (end marker)...
  CP (HL)                 ; ...
  JR Z,32360              ; ...then skip ahead to 32360
  ADD HL,BC               ; Advance HL by eight bytes to next transporter pad
                          ; entry
  JR 32346                ; Loop back to 32346 for next transporter pad
  INC HL                  ; Advance HL to transporter pad's x-coordinate
                          ; (ASCII)
  LD A,(42174)            ; Load A with ASCII x-coordinate value from "YOU HAVE
                          ; ARRIVED AT..." text at 42171...
  CP 48                   ; ...and if this is 48 ("0", i.e. first digit in USS
                          ; Pisces' transporter coordinates)...
  JP Z,32449              ; ...then skip ahead to 32449
  CP (HL)                 ; If current transporter pad's ASCII x-coordinate is
                          ; not the same as x-coordinate value in A...
  JP NZ,32482             ; ...then skip ahead to 32482
  LD A,(42176)            ; Load A with ASCII y-coordinate value from "YOU HAVE
                          ; ARRIVED AT..." text at 42171
  INC HL                  ; Advance HL to transporter pad's ASCII y-coordinate
  CP (HL)                 ; If current transporter pad's ASCII y-coordinate is
                          ; not the same as y-coordinate value in A...
  JP NZ,32482             ; ...then skip ahead to 32482
  LD A,(42178)            ; Load A with ASCII z-coordinate value from "YOU HAVE
                          ; ARRIVED AT..." text at 42171
  INC HL                  ; Advance HL to transporter pad's ASCII z-coordinate
  CP (HL)                 ; If current transporter pad's ASCII z-coordinate is
                          ; not the same as z-coordinate value in A...
  JP NZ,32482             ; ...then skip ahead to 32482
  INC HL                  ; Advance HL to transporter pad's room
  LD A,(HL)               ; Set operand of instruction at 32427 to index of
                          ; pad's room...
  LD (32428),A            ; ...
  INC HL                  ; Advance HL to destination x-coordinate (for Magic
                          ; Knight)
  LD A,(HL)               ; Set operand of instruction at 32417 to destination
                          ; x-coordinate...
  LD (32418),A            ; ...
  INC HL                  ; Advance HL to destination y-coordinate (for Magic
                          ; Knight)
  LD A,(HL)               ; Set operand of instruction at 32422 to destination
                          ; y-coordinate...
  LD (32423),A            ; ...
  CALL 27765              ; Draw Magic Knight's current room, draw objects and
                          ; characters and initialise room-specific data
  CALL 32623              ; Set top-left and bottom-right of area to cycle
                          ; attributes (for transporter effect)
  XOR A                   ; Prepare to fill a region with attribute 0 (black
                          ; INK, black PAPER)...
  LD (35948),A            ; ...
  CALL 32602              ; Display transporter glow effect
; The operand of the instruction at 32417 is Magic Knight's new x-coordinate.
; This is modified by the instructions at 32396 and 32472.
  LD A,0                  ; Set Magic Knight's x-coordinate (pixels) to
                          ; transporter pad arrival point
  LD (25156),A            ; ...
; The operand of the instruction at 32422 is Magic Knight's new y-coordinate.
; This is modified by the instructions at 32401 and 32477.
  LD A,0                  ; Set Magic Knight's y-coordinate (pixels) to
                          ; transporter pad arrival point
  LD (25157),A            ; ...
; The operand of the instruction at 32427 is the index of the room to move
; Magic Knight into. This is modified by the instructions at 32391 and 32467.
  LD A,0                  ; Move Magic Knight into room A, draw room and
                          ; initialise room-specific data...
  CALL 27762              ; ...
  CALL 32623              ; Set top-left and bottom-right of area to cycle
                          ; attributes (for transporter effect)
  CALL 32602              ; Display transporter glow effect
  LD A,7                  ; Prepare to fill a region with attribute 7 (white
                          ; INK, black PAPER)...
  LD (35948),A            ; ...
  CALL 35940              ; Fill a region of Attribute File with specified
                          ; attribute
  JP 55272                ; Display "YOU HAVE ARRIVED AT X.Y.Z." Window (17),
                          ; wait for fire to be pressed then jump to Main Game
                          ; Loop
  LD A,(42176)            ; Load A with y-coordinate value (as ASCII character
                          ; code) from "YOU HAVE ARRIVED AT..." text at
                          ; 42171...
  CP 48                   ; ...and if this is not 48 ("0")...
  JP NZ,32482             ; ...then skip ahead to 32482
  LD A,(42178)            ; Load A with z-coordinate value (as ASCII character
                          ; code) from "YOU HAVE ARRIVED AT..." text at 42171
  CP 48                   ; ...and if this is not 48 ("0")...
  JP NZ,32482             ; ...then skip ahead to 32482
  LD A,2                  ; Set operand of instruction at 32427 to 2 (USS
                          ; Pisces, 2, The Transporter Room)...
  LD (32428),A            ; ...
  LD A,120                ; Set operand of instruction at 32417 to 120
                          ; (x-coordinate of middle of USS Pisces' transporter
                          ; pad)...
  LD (32418),A            ; ...
  LD A,120                ; Set operand of instruction at 32422 to 120
                          ; (y-coordinate of USS Pisces' transporter pad)...
  LD (32423),A            ; ...
  JR 32404                ; Jump back to 32404 to beam Magic Knight back to USS
                          ; Pisces
  CALL 27765              ; Draw Magic Knight's current room, draw objects and
                          ; characters and initialise room-specific data
  CALL 32623              ; Set top-left and bottom-right of area to cycle
                          ; attributes (for transporter effect)
  CALL 32602              ; Display transporter glow effect
  LD HL,45157             ; Point HL at "IT WOULD MAKE MORE SENSE TO ENTER
                          ; COORDINATES..." text
  PUSH HL                 ; Store HL (pointer to "IT WOULD MAKE MORE SENSE TO
                          ; ENTER COORDINATES..." text)
  LD DE,37187             ; Prepare to adjust height of window 12 to
                          ; accommodate text
  LD HL,45013             ; Point HL at "THE TRANSPORTER SENDS YOU TO
                          ; SUFFOCATE..." text
  CALL 33774              ; Adjust height of window 12 to accommodate text
  PUSH HL                 ; Store HL (pointer to "THE TRANSPORTER SENDS YOU TO
                          ; SUFFOCATE..." / "THE TRANSPORTER IS BROKEN" text)
  LD A,12                 ; Draw Window 12...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to "THE TRANSPORTER SENDS YOU
                          ; TO SUFFOCATE..." / "THE TRANSPORTER IS BROKEN"
                          ; text)
  CALL 34762              ; Print text to screen
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
  POP HL                  ; Restore HL (pointer to "IT WOULD MAKE MORE SENSE TO
                          ; ENTER COORDINATES..." / "THE TRANSPORTER HAS
                          ; MALFUNCTIONED..." text)
  JP 55685                ; Jump to "Game over" window routine and return to
                          ; Control Selection Menu
; Magic Knight has used the transporter while it is broken
  CALL 27765              ; Draw Magic Knight's current room, draw objects and
                          ; characters and initialise room-specific data
  CALL 32623              ; Set top-left and bottom-right of area to cycle
                          ; attributes (for transporter effect)
  CALL 32602              ; Display transporter glow effect
  LD HL,45059             ; Point HL at "THE TRANSPORTER HAS MALFUNCTIONED..."
                          ; text
  PUSH HL                 ; Store HL (pointer to "THE TRANSPORTER HAS
                          ; MALFUNCTIONED..." text)
  LD DE,37187             ; Prepare to adjust height of window 12 to
                          ; accommodate text
  LD HL,42147             ; Point HL at "THE TRANSPORTER IS BROKEN" text
  JP 32501                ; Jump back to 32501 (display GAME OVER message and
                          ; return to Control Selection Menu)

; Table of Transporter Pad Data
;
; Eight values:
  DEFB 3,49,56,52,21,16,120,0 ; Monopole, "1", "8", "4", Monopole, 0 (Hooper's
                              ; Emergency Exit), (16, 120)
  DEFB 5,49,50,51,11,16,120,0 ; Starbase 1, "1", "2", "3", Starbase 1, 0 (The
                              ; Transporter Room), (16, 120)
  DEFB 14,56,57,54,16,16,120,0 ; Outpost, "8", "9", "6", Outpost, 0 (Ye Olde
                               ; Transporter), (16, 120)
  DEFB 17,56,52,49,7,16,120,0 ; Retreat, "8", "4", "1", Retreat, 0 (Murphy's
                              ; Moon), (16, 120)
  DEFB 99,90              ; End Marker

; Table of Transporter Pad Locations
;
; In order to set the "USE TRANSPORTER" Menu Command Flag when Magic Knight is
; standing on a transporter pad, his coordinates need to be checked against a
; list of pad locations. For each pad, this list contains an entry specifying
; the pad's room number, the x-coordinates of its left and right edges and a
; y-coordinate. If, for any entry, Magic Knight's room number matches the value
; in byte 0, his x-coordinate is between the values specified in bytes 1 and 2,
; and his y-coordinate is the same as in byte 3 then the "USE TRANSPORTER" Menu
; Command Flag will be set.
  DEFB 90,90,1,1          ; Unused / Start Marker
  DEFB 2,88,152,120       ; USS Pisces, 2 (The Transporter Room)
  DEFB 7,16,40,120        ; Retreat, 0 (Murphy's Moon)
  DEFB 11,16,40,120       ; Starbase 1, 0 (The Transporter Room)
  DEFB 16,16,40,120       ; Outpost, 0 (Ye Olde Transporter)
  DEFB 21,16,40,120       ; Monopole, 0 (Hooper's Emergency Exit)
  DEFB 255                ; End Marker

; Update and Increment Predefined Region's Attribute 64 Times (Transporter
; Effect)
;
; Used by the routine at 32252.
  LD B,64                 ; Load B with 64 as we are changing the attribute of
                          ; the filled area 64 times
  PUSH BC                 ; Store BC (B = remaining number of attribute
                          ; changes)
  HALT                    ; Wait for interrupt
  LD A,(35948)            ; Load A with old fill attribute
  ADD A,8                 ; Add 8 to increment PAPER colour
  AND 120                 ; Ensure that attribute value is capped at 120 (white
                          ; PAPER, BRIGHT) and mask out INK and FLASH bits
  LD (35948),A            ; Store updated attribute value
  CALL 35940              ; Fill a region of Attribute File with specified
                          ; attribute
  POP BC                  ; Restore BC (B = remaining number of attribute
                          ; changes)
  DJNZ 32604              ; Decrease B and loop back to 32604 if not zero
  RET                     ; Return

; Set Top-Left and Bottom-Right of Area to Cycle Attributes (for Transporter
; Effect)
;
; Used by the routine at 32252.
  LD HL,2571              ; Set top-left of area for transporter effect to (11,
                          ; 10) characters...
  LD (23493),HL           ; ...
  LD HL,4628              ; Set bottom-right of area for transporter effect to
                          ; (20, 18) characters...
  LD (23495),HL           ; ...
  LD A,(23701)            ; If Magic Knight's current room is 2 (USS Pisces, 2,
                          ; The Transporter Room)...
  CP 2                    ; ...
  RET Z                   ; ...then return
  LD HL,2561              ; Set top-left of area for transporter effect to (1,
                          ; 10) characters...
  LD (23493),HL           ; ...
  LD HL,4613              ; Set bottom-right of area for transporter effect to
                          ; (5, 18) characters...
  LD (23495),HL           ; ...
  LD A,(23701)            ; If Magic Knight's current room is not 36 (index of
                          ; "YE OLDE TRANSPORTER" room in 128k version - see
                          ; trivia)
  CP 36                   ; ...
  RET NZ                  ; ...then return
  LD HL,4870              ; Set top-left of area for transporter effect to (6,
                          ; 19) characters...
  LD (23493),HL           ; ...
  LD HL,5640              ; Set bottom-right of area for transporter effect to
                          ; (8, 22) characters...
  LD (23495),HL           ; ...
  RET                     ; Return

; ASCII Digit Sequences for "Enter Transport Coordinates" Routine
  DEFB 0
  DEFM "0123456789"
  DEFM "0123456789"
  DEFB 0

; Handle Vertical Scrolling Digit Selection (Use Transporter Menu) and Load
; Selected Digit's ASCII Code into A
;
; Used by the routine at 32252. Input:  D  y-coordinate in pixels E
; x-coordinate in characters Output: A  ASCII code of selected digit
  LD IX,32683             ; Point IX at start of second ASCII digit sequence
                          ; for transport coordinate selection
  LD A,E                  ; Set x-coordinate of left and right of region to
                          ; scroll to value in E (6, 8 or 10 characters
                          ; depending upon value in E)...
  LD (23489),A            ; ...
  LD (23490),A            ; ...
  LD A,D                  ; Set y-coordinate of top of region to scroll to
                          ; value in D (72 pixels)...
  LD (23491),A            ; ...
  ADD A,39                ; Set y-coordinate of bottom of region to scroll to
                          ; value in D plus 39 (pixels)...
  LD (23492),A            ; ...
  CALL 54942              ; Capture keyboard or joystick input loading result
                          ; into A
  BIT 2,A                 ; If up was pressed...
  JR NZ,32761             ; ...then skip ahead to 32761
  BIT 3,A                 ; If down was pressed...
  JR NZ,32814             ; ...then skip ahead to 32814
  BIT 4,A                 ; If fire was not pressed...
  JR Z,32714              ; ...then jump back to 32714
  PUSH IX                 ; Store IX (current position in digit sequence)
  LD A,(23489)            ; Load C with x-coordinate of left and right of
                          ; region to scroll (characters)...
  LD C,A                  ; ...
  LD A,(23491)            ; Load A with y-coordinate of top of region to scroll
                          ; (pixels)...
  ADD A,16                ; ...plus 16
  RRCA                    ; Divide result by 8...
  RRCA                    ; ...
  RRCA                    ; ...
  LD B,A                  ; ...and load result (y-coordinate of "selected"
                          ; coordinate value in characters) into B
  CALL 54148              ; Load HL with Attribute File address for coordinates
                          ; (C, B)...
  LD (HL),71              ; ...and apply attribute 71 (white INK, black PAPER,
                          ; BRIGHT)
  CALL 35690              ; Play upward scale sound
  CALL 35723              ; Play downward scale sound
  POP IX                  ; Restore IX (current position in digit sequence)
  LD A,(IX+0)             ; Load (ASCII code of) currently selected digit into
                          ; A
  RET                     ; Return
; Up pressed
  LD B,8                  ; Load B with 8, as we are scrolling by eight pixels
  PUSH BC                 ; Store BC (B = remaining number of pixels to scroll)
  PUSH IX                 ; Store IX (current position in digit sequence)
  CALL 32886              ; Make a click sound (reset Port 254 EAR Bit, wait
                          ; for interrupt then set EAR Bit of Port 254)
  CALL 55408              ; Scroll a region of the Display File up a pixel row
                          ; with wrapping
  CALL 32886              ; Make a click sound (reset Port 254 EAR Bit, wait
                          ; for interrupt then set EAR Bit of Port 254)
  POP IX                  ; Restore IX (current position in digit sequence)
  POP BC                  ; Restore BC (B = remaining number of pixels to
                          ; scroll)
  DJNZ 32763              ; Decrease B (remaining number of pixels to scroll)
                          ; and loop back to 32763 if not zero
  INC IX                  ; Increase IX to point to next digit in sequence
  LD A,(IX+2)             ; Load digit that is two after current one into A...
  OR A                    ; ...and if this is zero (end marker)...
  CALL Z,32867            ; ...then subtract ten from IX to wrap from 9 to 0
  LD A,(23489)            ; Load C with x-coordinate of left and right of
                          ; region to scroll (characters)...
  LD C,A                  ; ...
  LD A,(23492)            ; Load A with y-coordinate of bottom of region to
                          ; scroll (pixels)...
  RRCA                    ; ...divide by 8...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...cap at 31 to give y-coordinate in characters,
                          ; one character below bottom of the three visible
                          ; "scrolling" digits...
  LD B,A                  ; ...and load result into B
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  LD A,(IX+2)             ; Load A with digit two after currently selected one
; By this point, the system variable ATTR T has been set to 127 (white INK,
; white PAPER, BRIGHT) by the instruction at 32286, so the character is printed
; but is invisible.
  CALL 54097              ; Print character in A
  JP 32714                ; Loop back to 32714 for next keyboard / joystick
                          ; input
; Down pressed
  LD B,8                  ; Load B with 8, as we are scrolling by eight pixels
  PUSH BC                 ; Store BC (B = remaining number of pixels to scroll)
  PUSH IX                 ; Store IX (current position in digit sequence)
  CALL 32886              ; Make a click sound (reset Port 254 EAR Bit, wait
                          ; for interrupt then set EAR Bit of Port 254)
  CALL 55442              ; Scroll a region of the Display File down a pixel
                          ; row with wrapping
  CALL 32886              ; Make a click sound (reset Port 254 EAR Bit, wait
                          ; for interrupt then set EAR Bit of Port 254)
  POP IX                  ; Restore IX (current position in digit sequence)
  POP BC                  ; Restore BC (B = remaining number of pixels to
                          ; scroll)
  DJNZ 32816              ; Decrease B (remaining number of pixels to scroll)
                          ; and loop back to 32816 if not zero
  DEC IX                  ; Decrease IX to point to previous digit in sequence
  LD A,(IX-2)             ; Load digit that is two before current one into A...
  OR A                    ; ...and if this is zero (end marker)...
  CALL Z,32880            ; ...then add ten to IX to wrap from 0 to 9
  LD A,(23489)            ; Load C with x-coordinate of left and right of
                          ; region to scroll (characters)...
  LD C,A                  ; ...
  LD A,(23491)            ; Load A with y-coordinate of top of region to scroll
                          ; (pixels)...
  RRCA                    ; ...divide by 8...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...cap at 31 to give y-coordinate in characters,
                          ; one character above top of the three visible
                          ; "scrolling" digits...
  LD B,A                  ; ...and load result into B
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  LD A,(IX-2)             ; Load A with digit two before currently selected one
; By this point, the system variable ATTR T has been set to 127 (white INK,
; white PAPER, BRIGHT) by the instruction at 32286, so the character is printed
; but is invisible.
  CALL 54097              ; Print character in A
  JP 32714                ; Loop back to 32714 for next keyboard / joystick
                          ; input

; Subtract Ten from IX
;
; Used by the routine at 32694. Input:  IX  A value Output: IX  The input value
; minus 10
  LD BC,10                ; Load B with 10
  XOR A                   ; Reset Carry Flag
  PUSH IX                 ; Transfer value from IX to HL...
  POP HL                  ; ...
  SBC HL,BC               ; Subtract 10 from HL
  PUSH HL                 ; Transfer value from HL to IX...
  POP IX                  ; ...
  RET                     ; Return

; Add Ten to IX
;
; Used by the routine at 32694. Input:  IX  A value Output: IX  The input value
; plus 10
  LD BC,10                ; Load B with 10
  ADD IX,BC               ; Add to IX
  RET                     ; Return

; Reset Port 254 EAR Bit, Wait for Interrupt then Set EAR Bit of Port 254
;
; Used by the routine at 32694.
  XOR A                   ; Reset all bits of Port 254 (including EAR bit)...
  OUT (254),A             ; ...
  HALT                    ; Wait for interrupt
  LD A,16                 ; Set EAR bit of Port 254...
  OUT (254),A             ; ...
  RET                     ; Return

; Process Command to Communicate
  LD A,(23700)            ; Load B with USS Pisces' current location...
  LD B,A                  ; ...
  LD HL,48004             ; Point HL at start of Planets' "REQUEST HELP"
                          ; Strings
  CALL 54269              ; Advance HL to "REQUEST HELP" string for current
                          ; location
  LD A,(HL)               ; Load first byte of data (usually height of text)
                          ; into A...
  OR A                    ; ...and if this zero (i.e. the current location is
                          ; not valid for communication)...
  JP Z,55298              ; ...then display "THERE IS NOBODY WITHIN SUB-SPACE
                          ; COMMUNICATOR RANGE" Window (12), wait for fire to
                          ; be pressed then jump to Main Game Loop
  CALL 54333              ; Print or update Command Summary Window at top of
                          ; screen
  LD DE,42180             ; Point DE at "COMMUNICATE WITH"...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  LD HL,42191             ; Point HL at "CHOOSE COMMUNICATION" menu text
  LD DE,37091             ; Adjust height of Main Menu (Game) / "Choose
                          ; Communication" Window to accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (pointer to start of text to print)
  XOR A                   ; Draw "Choose Communication" Menu Window...
  CALL 34982              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)
  CALL 34762              ; Print text to screen
  CALL 35296              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  LD (32984),A            ; Store index of selected menu item as operand of
                          ; instruction at 32983...
  LD B,A                  ; ...and load into B
  LD HL,42300             ; Point HL at "REQUEST HELP" text
  CALL 54269              ; Advance HL to "REFUEL STARSHIP" text if refuel
                          ; option was selected
  EX DE,HL                ; Swap HL and DE (DE now points to "REQUEST HELP" or
                          ; "REFUEL STARSHIP" text)...
  CALL 54283              ; ...and print in Command Summary Window at top of
                          ; screen
  CALL 55115              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  CALL 33788              ; If Gordon and Sarab are both asleep then reset Zero
                          ; Flag, otherwise increase their happiness by five if
                          ; not
  JP NZ,55291             ; If Zero Flag is reset then display "GORDON AND
                          ; SARAB ARE BOTH ASLEEP" Window (12), wait for fire
                          ; to be pressed then jump to Main Game Loop
  LD A,27                 ; If Magic Knight is wearing the Gas Mask (27)...
  CALL 33640              ; ...
  JP Z,55327              ; ...then display "GORDON AND SARAB CANNOT UNDERSTAND
                          ; YOU" Window (12), wait for fire to be pressed then
                          ; jump to Main Game Loop
  LD A,1                  ; Set Draw Communicate Window / Face Flag...
  LD (23461),A            ; ...
  CALL 27765              ; Draw Magic Knight's current room, draw objects and
                          ; characters and initialise room-specific data
  XOR A                   ; Reset Draw Communicate Window / Face Flag...
  LD (23461),A            ; ...
; The operand of the instruction at 32983 represents the index of the option
; selected from "CHOOSE COMMUNICATION" menu. This is modified by the
; instruction at 32940.
  LD A,0                  ; Load A with selected menu option index
  CP 1                    ; If "REFUEL STARSHIP" was selected...
  JP Z,33019              ; ...then skip ahead to 33019
; Request Help Option Selected
  LD A,(23700)            ; Load B with index of USS Pisces' current
                          ; location...
  LD B,A                  ; ...
  LD HL,48004             ; Point HL at start of Planets' "REQUEST HELP"
                          ; Strings
  CALL 54269              ; Advance HL to B-th entry in this list
  LD DE,37211             ; Adjust height of Window 15 to accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (pointer to start of text to print)
  LD A,15                 ; Draw Window 15...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)
  CALL 34762              ; Print text to screen
  JP 29479                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop
; Refuel Starship Option Selected
  LD A,1                  ; Draw Window 1...
  CALL 34990              ; ...
  LD HL,42216             ; Point HL at "REFUEL STARSHIP REQUESTED" text...
  CALL 34762              ; ...and print to screen
  LD A,(23700)            ; Load BC with double index of USS Pisces' current
                          ; location...
  ADD A,A                 ; ...
  LD C,A                  ; ...
  LD B,0                  ; ...
  LD HL,25397             ; Point HL at start of Current Planetary Data...
  ADD HL,BC               ; ...and add BC as offset
  LD B,200                ; Load B with 200 (as USS Pisces can hold 200 units
                          ; of fuel)
  LD A,(HL)               ; Load A with current location's available fuel
                          ; level...
  OR A                    ; ...and if this is zero...
  JP Z,33084              ; ...then skip ahead to 33084
  CP 255                  ; If available fuel level is 255 (i.e. unlimited)...
  JP Z,33072              ; ...then skip ahead to 33072
  LD B,A                  ; Load B with current location's available fuel level
  LD A,(25013)            ; Load A with USS Pisces' current Star Drive Fuel
                          ; level
  CP 200                  ; If A is 200...
  JR Z,33067              ; ...then skip ahead to 33067
  INC A                   ; Increase A (USS Pisces' fuel) by one
  DEC B                   ; Decrease B (planet's fuel) by one
  JR Z,33093              ; If B is zero then skip ahead to 33093
  JR 33057                ; Loop back to 33057
  LD (HL),B               ; Store updated (i.e. reduced) value for planet's
                          ; fuel
  LD B,A                  ; Load B with USS Pisces' new fuel level
  LD HL,42282             ; Point HL at "THE USS PISCES IS FULLY REFUELED"
                          ; text...
  LD HL,42282             ; ... (see trivia)
  LD A,B                  ; Set USS Pisces' new fuel level...
  LD (25013),A            ; ...
  CALL 34762              ; Print text to screen
  JR 33016                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop
  LD HL,42226             ; Point HL at "SORRY MAGIC KNIGHT WE ARE OUT OF FUEL"
                          ; text...
  CALL 34762              ; ...and print to screen
  JP 33016                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop
  LD (HL),B               ; Store updated (i.e. zero) value for planet's fuel
  LD HL,42240             ; Point HL at "...WE DO NOT HAVE ENOUGH FUEL..." text
  LD B,A                  ; Load B with USS Pisces' new fuel level
  JR 33075                ; Jump back to 33075

; "Command Character to Help" Routine for Gordon
  LD E,31                 ; If Current Character is carrying the Pewter Tankard
                          ; (31)...
  CALL 33896              ; ...
  JR Z,33113              ; ...then skip ahead to 33113
  LD HL,39947             ; Point HL at "I WOULD LIKE YOU TO FETCH MY
                          ; TANKARD..." text
  JP 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop
  LD A,(23700)            ; If the USS Pisces is not currently at Starbase 1
                          ; (05)...
  CP 5                    ; ...
  JP NZ,55252             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD A,(23451)            ; If Transporter Repaired Flag is set...
  BIT 0,A                 ; ...
  JP NZ,55252             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  OR 1                    ; Set Transporter Repaired Flag...
  LD (23451),A            ; ...
  LD HL,39995             ; Point HL at "I HAVE RE-ROUTED THE TRANSPORTER
                          ; CONTROL SYSTEM..." text
  JP 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; "Command Character to Help" Routine for Sarab
  LD HL,25174             ; If Gordon is carrying the Star Map...
  LD A,6                  ; ...
  CALL 33648              ; ...
  JR Z,33156              ; ...then skip ahead to 33156
  LD HL,40067             ; Point HL at "GORDON WILL NEED THE STARMAP..." text
  JP 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop
  LD A,(23451)            ; If Transporter Repaired Flag is set...
  BIT 0,A                 ; ...
  JP NZ,55252             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD HL,40180             ; Point HL at "REPAIRS ARE NEEDED..." text
  JP 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; "Command Character to Help" Routine for Klink and S3 E3
  LD A,(29632)            ; Load A with index of Current Character...
  LD (23434),A            ; ...and store at 23434 (see trivia)
  LD A,3                  ; If Magic Knight is wearing the Valid I.D. Card
                          ; (03)...
  CALL 33640              ; ...
  JP Z,55252              ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD A,(23451)            ; If I.D. Card Validated Flag is reset...
  BIT 4,A                 ; ...
  JP Z,33195              ; ...then skip ahead to 33195
  JP 55252                ; Display "[Character] CANNOT HELP YOU" Window (29),
                          ; wait for fire to be pressed then jump to Main Game
                          ; Loop
  LD E,8                  ; If Current Character is not carrying the Camera
                          ; (8)...
  CALL 33896              ; ...
  JP NZ,55252             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD E,4                  ; If Current Character is not carrying the Instant
                          ; Film (4)...
  CALL 33896              ; ...
  JP NZ,55252             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD A,(29632)            ; Load BC with five times index of Current
                          ; Character...
  LD C,A                  ; ...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD B,0                  ; ...
  LD IX,25174             ; Point IX at start of Characters' Current
                          ; Inventories Table...
  ADD IX,BC               ; ...and add BC as offset to point to start of
                          ; Current Character's inventory
  LD A,(IX+4)             ; If this character has no free inventory slots...
  OR A                    ; ...
  JP NZ,55252             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD (33282),IX           ; Modify operand of the instruction at 33281 to
                          ; address of start of Current Character's current
                          ; inventory
  LD A,1                  ; If Magic Knight is not wearing the Cloak of
                          ; Invisibility (01)...
  CALL 33640              ; ...
  JR NZ,33259             ; ...then skip ahead to 33259
  LD A,(23451)            ; If Photograph of Inside of Starship Taken Flag is
                          ; set...
  BIT 1,A                 ; ...
  JP NZ,55252             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD B,2                  ; Load B with 2 (as Photograph of Inside of Starship
                          ; Taken Flag is in bit 1)
  LD A,9                  ; Load A with 9 (index of Photograph of inside of
                          ; starship)
  JR 33271                ; Skip ahead to 33271
  LD A,(23451)            ; If Photograph of Magic Knight Taken Flag is set...
  BIT 2,A                 ; ...
  JP NZ,55252             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD B,4                  ; Load B with 4 (as Photograph of Magic Knight Taken
                          ; Flag is in bit 2)
  LD A,5                  ; Load A with 5 (index of Photograph of Magic Knight)
  LD C,A                  ; Load C with object index from A
  LD A,(23451)            ; Load A with current Score Progress Flags
  OR B                    ; Set Flag(s) according to value in B...
  LD (23451),A            ; ...
  LD B,5                  ; Load B with 5 (five inventory slots)
; The operand of the instruction at 33281 represents the address of the start
; of the current inventory of the Current Character. This is modified by the
; instruction at 33234.
  LD HL,0                 ; Point HL at start of Current Character's current
                          ; inventory as stored previously
  CALL 33516              ; Load object C into the first empty inventory slot
                          ; of Current Character
  JP 55339                ; Display "[Character] HAS TAKEN YOUR PHOTO" Window
                          ; (10), wait for fire to be pressed then jump to Main
                          ; Game Loop

; "Command Character to Help" Routine for Hooper
  LD E,29                 ; If Current Character is not carrying the Bag of
                          ; Runes (29)...
  CALL 33896              ; ...
  JP NZ,55252             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD HL,40326             ; Point HL at "I REMEMBER WHEN YOU COULD BUY..." text
  JP 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; "Command Character to Help" Routine for Murphy
  LD E,30                 ; If Current Character is not carrying the Bag of
                          ; Potatoes (30)...
  CALL 33896              ; ...
  JP NZ,55252             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD HL,40414             ; Point HL at "THE GOLDEN SUNDIAL OF ALPHA WAS
                          ; SPLIT..." text
  JP 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; "Command Character to Help" Routine for Sharon
  LD E,23                 ; If Current Character is not carrying the Chocolate
                          ; Heart (23)...
  CALL 33896              ; ...
  JP NZ,55252             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD HL,40489             ; Point HL at "THANKS FOR THE HEART BIG BOY!..." text
  JP 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; "Command Character to Help" Routine for Forbin
  LD HL,40562             ; Point "SHARONN WANTS TO KNOW..." text
  JP 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; "Command Character to Help" Routine for Derby IV
  LD A,(23451)            ; If Blank I.D. Card Obtained Flag is set...
  BIT 3,A                 ; ...
  JR NZ,33421             ; ...then skip ahead to 33421
  OR 8                    ; Set Blank I.D. Card Obtained Flag...
  LD (23451),A            ; ...
  LD HL,25292             ; Point HL at current position of Blank I.D. Card...
  LD (HL),3               ; ...and set its room to 03 (USS Pisces, 3, The
                          ; Transputer Room)
  LD DE,37307             ; Point DE at height data for Window 27
  LD HL,45236             ; Point HL at "HELLO MAGIC KNIGHT. AS A TEMPORALY
                          ; MISPLACED..." text
  CALL 33774              ; Adjust height of window (pointed to by DE) to
                          ; accommodate text
  PUSH HL                 ; Store HL (pointer to start of text to print)
  LD A,27                 ; Draw Window 27...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)
  CALL 34762              ; Print text to screen
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
  LD DE,37227             ; Load DE with address of y-coordinate of top edge of
                          ; Window 17 in Window Data Table at 37089
  LD HL,45395             ; Point HL at "FROM TIME TO TIME I WILL BE ABLE
                          ; TO..." text
  CALL 33774              ; Adjust height of 17 window to accommodate text
  PUSH HL                 ; Store HL (pointer to start of text to print)
  LD A,17                 ; Draw Window 17...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)
  CALL 34762              ; Print text to screen
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
  LD DE,37307             ; Point DE at height data for Window 27
  LD HL,45517             ; Point HL at "WHIRRRRR........ PLOP !..." text
  CALL 33774              ; Adjust height of 27 window to accommodate text
  PUSH HL                 ; Store HL (pointer to start of text to print)
  LD A,27                 ; Draw Window 27...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)
  CALL 34762              ; Print text to screen
  JP 29479                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop
  BIT 4,A                 ; If I.D. Card Validated Flag is set...
  JP NZ,55252             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD DE,37307             ; Point DE at height data for Window 27
  LD HL,45629             ; Point HL at "[Character] SAYS 'STICK YOUR PHOTO ON
                          ; THE I.D. CARD..." text
  CALL 33774              ; Adjust height of Window 27 to accommodate text
  PUSH HL                 ; Store HL (pointer to start of text to print)
  LD A,27                 ; Draw Window 27...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)
  CALL 34762              ; Print text to screen
  JP 29479                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop

; "Command Character to Help" Routine for Swiftfoot
  LD E,22                 ; If Current Character is not carrying the Pair of
                          ; Boots (22)...
  CALL 33896              ; ...
  JP NZ,55252             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for fire to be pressed then jump
                          ; to Main Game Loop
  LD HL,40600             ; Point HL at "MY BOOTS COULD BE USEFUL..." text
  JP 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; "Command Character to Help" Routine for Julie 8
  LD HL,40651             ; Point HL at "[Character] SAYS 'HARK WHAT LIGHT THRU
                          ; YONDER PORTHOLE..." text
  JP 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; "Command Character to Help" Routine for Hectorr
  LD E,10                 ; If Current Character is carrying the Pot of Glue
                          ; (10)...
  CALL 33896              ; ...
  JR Z,33481              ; ...then skip ahead to 33481
  LD HL,40747             ; Point HL at "[Character] SAYS 'FORSOOTH THERE IS
                          ; STICKY STUFF NEARBY..." text
  JP 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop
  LD HL,40819             ; Point HL at "[Character] SAYS 'COME ON THEN! COME
                          ; ON THEN!..." text
  JP 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Load A with weight of object A
;
; Used by the routines at 29756 and 33601. Input:  A  Index of object of
; interest Output: A  Weight of object of interest
  PUSH HL                 ; Store HL
  PUSH DE                 ; Store DE
  LD E,0                  ; Point HL to the first byte of the A-th record in
                          ; Object Properties Table...
  CALL 33525              ; ...
  LD A,(HL)               ; Load data at this location into A
  AND 15                  ; Discard all but the Weight bits
  POP DE                  ; Restore DE
  POP HL                  ; Restore HL
  RET                     ; Return

; Load A with Current Character's Happiness Level
;
; Used by the routines at 29619 and 29756. Output: A  Happiness of Current
; Character
  LD A,(29632)            ; Load A with index of Current Character
  PUSH HL                 ; Store HL
  PUSH DE                 ; Store DE
  LD E,1                  ; Point HL at Current Character's Happiness...
  CALL 33541              ; ...
  LD A,(HL)               ; ...and load Happiness into A
  AND 127                 ; Reset Bit 7 (unused)
  POP DE                  ; Restore DE
  POP HL                  ; Restore HL
  RET                     ; Return

; Load Object C into the First Empty Inventory Slot of a Character
;
; Used by the routines at 29330, 29619, 31537, 33170 and 34265. Input:  B
; Number of inventory slots to process C  Index of an object to load into a
; character's inventory HL  Points to (usually the start of) a record in the
; Characters' Current Inventories Table at 25164
  LD A,(HL)               ; If current inventory slot is empty...
  OR A                    ; ...
  JR Z,33523              ; ...then skip ahead to 33523
  INC HL                  ; Advance to next inventory slot
  DJNZ 33516              ; If there are still slots to process then loop back
                          ; to 33516
  LD (HL),C               ; Load item into current inventory slot
  RET                     ; Return

; Point HL to the E-th byte of the A-th record in Object Properties Table
;
; Used by the routines at 29488, 30145, 30968, 31537, 33487, 34484 and 34627.
; Input:  A  Index of required record (i.e. table entry number), first is zero
; E  Index of required field within record (i.e. byte number), first is zero HL
; (entry at 33528 only) Points to Table of Characters' Current Stats (Gordon's
; entry, i.e. not including Magic Knight) Output: HL Points to required field
; within record of interest
  LD HL,37441             ; Point HL at start of Table of Object Properties
; This entry point is used by the routine at 33541.
  PUSH HL                 ; Store HL (points to current position in a table of
                          ; 8-byte-wide records)
  ADD A,A                 ; Multiply A (record number) by eight and load into
                          ; HL...
  ADD A,A                 ; ...
  LD L,A                  ; ...
  LD H,0                  ; ...
  ADD HL,HL               ; ...
  LD D,0                  ; Set D to zero (DE = field number)
  ADD HL,DE               ; Add field number to HL to give exact offset to
                          ; record and field of interest
  POP DE                  ; Restore DE (points to current position in a table
                          ; of 8-byte-wide records)...
  ADD HL,DE               ; ...and add to offset value already in HL
  RET                     ; Return

; Point HL at E-th Byte on A-th Record of Characters' Current Stats Table
; (Excluding Magic Knight)
;
; Used by the routines at 28390, 29756, 30145, 30686, 33500, 33546, 33725 and
; 53731.
  LD HL,25028             ; Point HL at Table of Characters' Current Stats
                          ; (Gordon's entry, i.e. not including Magic
                          ; Knight)...
  JR 33528                ; ...and advance to the E-th byte of the A-th entry
                          ; in this table of 8-byte-wide records, then return

; Point IX at Current Character's Current Stats
;
; Used by the routines at 29756, 30810, 30842, 30874, 31257 and 33569. Output:
; HL  Address of start of Current Character's stats IX Address of start of
; Current Character's stats
  LD A,(29632)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at Current Character's current strength...
  CALL 33541              ; ...
  PUSH HL                 ; Transfer address from HL...
  POP IX                  ; ...to IX
  RET                     ; Return

; If Character's Happiness is Lower than B then Show "[Character] DOES NOT WANT
; TO BE COMMANDED..." and Jump to Main Game Loop
;
; Used by the routines at 30810, 30842 and 30874. Input:  IX  Pointer to start
; of a character's current stats B  Happiness threshold
  LD A,(IX+1)             ; If character's current happiness is at or above the
                          ; threshold value...
  AND 127                 ; ...
  CP B                    ; ...
  RET NC                  ; ...then return
  POP AF                  ; Remove return value from top of stack as we are not
                          ; RETurning
  JP 55237                ; Display "[Character] DOES NOT WANT TO BE COMMANDED
                          ; BY YOU" Window (29), wait for fire to be pressed
                          ; then jump to Main Game Loop

; Increase Current Character's Happiness by Amount A
;
; Used by the routines at 29619, 29756, 30145, 30686 and 33788. Input:  A
; Value by which to change character's Happiness
  PUSH AF                 ; Store AF (A = increment value)
  CALL 33546              ; Point IX at Current Character's current stats
  POP AF                  ; Restore AF (A = increment value)
  LD C,A                  ; Load increment value into C
  LD A,(IX+1)             ; Add increment value to Current Character's
                          ; Happiness...
  CALL 53703              ; ...
  LD (IX+1),A             ; ...and store
  RET                     ; Return

; Point IX at Current Inventory of Character A
;
; Used by the routines at 29619, 29756 and 33896. Input:  A  Index of a
; character Output: IX  Points to current inventory of character A
  PUSH DE                 ; Store DE
  LD E,A                  ; Multiply character index by five (as each character
                          ; has five inventory slots)...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,E                 ; ...
  LD E,A                  ; ...and load into DE...
  LD D,0                  ; ...
  LD IX,25174             ; Point IX at Gordon's entry in Characters' Current
                          ; Inventories Table (i.e. first entry for non-player
                          ; characters)
  ADD IX,DE               ; Add five times character index to this as offset
  POP DE                  ; Restore DE
  RET                     ; Return

; Test Whether Current Object is too Heavy for Magic Knight to Pick Up (or
; Take)
;
; Used by the routines at 29330 and 29619. Output: F  S Flag set if object is
; light enough to be picked up, reset otherwise
  LD IX,25164             ; Point IX at start of Magic Knight's current
                          ; inventory
  LD A,(25020)            ; Load Magic Knight's current strength into A
  PUSH AF                 ; Store AF (A = Magic Knight's current strength)
  LD BC,1280              ; Load B with 5 (as five inventory slots to check)
                          ; and C (total weight carried) with zero
  LD A,(IX+0)             ; Load object in current inventory slot
  OR A                    ; If no object present...
  JR Z,33627              ; ...skip ahead to 33627...
  CALL 33487              ; Load A with weight of object A
  ADD A,C                 ; Add C to this...
  LD C,A                  ; ...and load result into C (total weight so far)
  INC IX                  ; Advance to next inventory slot
  DJNZ 33612              ; Loop back for next inventory slot
  POP AF                  ; Restore AF (A = Magic Knight's current strength)
  AND 127                 ; Ensure that strength is capped at 127 and that Sign
                          ; Flag is reset
  SUB C                   ; Subtract total weight of Magic Knight's carried
                          ; objects from his strength to get "surplus"
                          ; strength...
  LD C,A                  ; ...and load into C
  LD A,(29526)            ; Load A with index of Current Object (i.e. object
                          ; Magic Knight is trying to pick up)
  CALL 33487              ; Load A with weight of object A
  CP C                    ; Set Sign Flag if surplus strength exceeds weight of
                          ; object, otherwise reset
  RET                     ; Return

; Check Whether Magic Knight is Wearing an Object
;
; Used by the routines at 28470, 28482, 28494, 30686, 31122, 31688, 32895,
; 33170, 34265 and 53498. Input:  A  Index of an object Output: F  Zero Flag
; set if object is present in inventory, reset otherwise
  LD HL,25169             ; Point HL at start of Magic Knight's Inventory
                          ; (Wearing)
  JR 33648                ; Jump to 33648 (set Zero Flag if Magic Knight is
                          ; wearing object A, reset otherwise)

; Check Whether Magic Knight is Carrying an Object
;
; Used by the routines at 27703, 27762, 28542, 31188, 34265, 34567 and 34627.
; Input:  A  Index of an object HL  (entry at 33648) Pointer to start of a
; character's inventory Output: F  Zero Flag set if object is present in
; inventory, reset otherwise
  LD HL,25164             ; Point HL at start of Magic Knight's current
                          ; Inventory (carrying)
; This entry point is used by the routines at 33140, 33640, 33896 and 34265.
  LD B,5                  ; Load B with 5 (as characters have five inventory
                          ; slots)
  CP (HL)                 ; If object at current inventory slot is the object
                          ; of interest...
  RET Z                   ; ...then return with zero flag set
  INC HL                  ; Advance HL to next inventory slot
  DJNZ 33650              ; Decrease B (remaining number of inventory slots to
                          ; check) and loop back to 33650
  OR A                    ; Reset zero flag, as object is not present
  RET                     ; Return

; Insert Current Time and Score into "Time Left" and "Percentage Completion"
; Texts
;
; Used by the routines at 30145 and 55685. Input:  HL  Points to percentage
; completion text (47492 or 44506) DE  Points to time left text (47492 or
; 44506)
  PUSH DE                 ; Store DE
  PUSH HL                 ; Store HL
  LD HL,23502             ; Point HL at Visited Rooms table
  LD BC,12800             ; Set B=50, C=0 (see trivia)
  LD A,(HL)               ; Load A with value at HL
  ADD A,C                 ; Add this to C...
  LD C,A                  ; ...
  INC HL                  ; Advance to next byte
  DJNZ 33665              ; Loop back to 33665 (adding together 50 values from
                          ; 23502 onwards to get score for exploring rooms)
  DEC C                   ; Decrease exploration score by one (due to no score
                          ; for The Transporter Room)
  LD A,C                  ; Double count of rooms visited...
  ADD A,A                 ; ...
  LD C,A                  ; ...
  LD A,(23451)            ; If I.D. Card Validated Flag is reset...
  BIT 4,A                 ; ...
  JP Z,33687              ; ...then skip ahead to 33687
  LD A,10                 ; Add ten percent to score in C...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD A,(23451)            ; If Transporter Repaired Flag is reset...
  AND 1                   ; ...
  JR Z,33698              ; ...then skip ahead to 33698
  LD A,10                 ; Add ten percent to score in C...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD A,(23403)            ; If Barriers Removed Flag is reset...
  AND 1                   ; ...
  JR Z,33709              ; ...then skip ahead to 33709
  LD A,2                  ; Add two percent to score in C...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD A,(23397)            ; Add Bonus Score to total...
  ADD A,C                 ; ...
  POP HL
  CALL 34697              ; Splice numeric data A as a string into a string at
                          ; HL
  LD A,(23457)            ; Load A with number of days left
  POP HL                  ; Restore HL (originally DE, time left text)
  CALL 34697              ; Splice numeric data A as a string into a string at
                          ; HL
  RET                     ; Return

; Display "[Character] IS ASLEEP" Window and Jump to Main Game Loop if Current
; Character is Asleep, else Return
;
; Used by the routine at 30874. Output: A  Zero if character is awake
  PUSH HL                 ; Store HL
  LD A,(29632)            ; Load A with index of Current Character
  LD E,6                  ; Point HL at character's Flags...
  CALL 33541              ; ...
  BIT 7,(HL)              ; If character is awake...
  JR Z,33754              ; ...then skip ahead to 33754
  LD A,28                 ; Draw Window 28...
  CALL 34990              ; ...
  LD HL,38361             ; Point HL at "[Current Character's name] IS ASLEEP"
                          ; text...
  CALL 34762              ; ...and print to screen
  POP HL                  ; Restore HL
  POP HL                  ; Remove value from top of stack as we are not
                          ; RETurning
  JP 29479                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop
  POP HL                  ; Restore HL
  XOR A                   ; Set A to zero
  RET                     ; Return

; Load Magic Knight's Coordinates (in Characters) into DE
;
; Used by the routines at 29330 and 29488. Output: D  y-coordinate (characters)
; E  x-coordinate (characters)
  LD A,(25157)            ; Load Magic Knight's current y-coordinate into A
  CALL 28625              ; Divide A by eight, rounding down to nearest integer
  ADD A,3                 ; Add 3 (as Magic Knight is four characters tall)
  LD D,A                  ; And load result into D
  LD A,(25156)            ; Load Magic Knight's current x-coordinate into A
  CALL 28625              ; Divide A by eight, rounding down to nearest integer
  LD E,A                  ; Load result into E
  RET                     ; Return

; Adjust Height (at DE) of a Window to Accommodate Text
;
; Used by the routines at 27762, 28506, 28554, 29756, 31041, 31188, 31312,
; 32252, 32895, 33338, 33834, 34122, 34265, 55364 and 55685. Input:  HL  Points
; to height byte preceding text data DE  Points to third byte of an entry in
; table at 37089 (i.e. y-coordinate of top edge of a window) Output: HL  Points
; to first byte of text data (i.e. input HL value plus one)
  LD A,(HL)               ; Load height data into C...
  LD C,A                  ; ...
  LD A,(DE)               ; Load y-coordinate in characters of window of
                          ; interest into A
  ADD A,C                 ; Add height to window's top y-coordinate to get
                          ; required bottom y-coordinate
  INC DE                  ; Advance DE to y-coordinate of bottom edge of
                          ; window...
  LD (DE),A               ; ...and load calculated bottom y-coordinate into
                          ; address in DE
  INC HL                  ; Advance HL to first byte of actual text data
  RET                     ; Return

; Set a Window's Height to A
;
; Used by the routines at 31688 and 32252. Input:  A  A window height DE
; Location of a window's top y-coordinate data
  LD C,A                  ; Load window height into C
  LD A,(DE)               ; Load window's top y-coordinate into A
  ADD A,C                 ; Add C to give bottom y-coordinate
  INC DE                  ; Advance DE to window's bottom y-coordinate data...
  LD (DE),A               ; ...and update with new height value in A
  RET                     ; Return

; Check Whether Gordon and Sarab are Both Asleep, and Increase Their Happiness
; by Five if Not
;
; Used by the routines at 31688 and 32895. Output: A  Non-zero if Gordon and
; Sarab are both asleep. Zero otherwise. F  Zero Flag reset if Gordon and Sarab
; are both asleep. Set otherwise.
  LD A,(25034)            ; If Gordon's Asleep Flag is reset...
  BIT 7,A                 ; ...
  JR Z,33803              ; ...then skip ahead to 33803
  LD A,(25042)            ; If Sarab's Asleep Flag is reset...
  BIT 7,A                 ; ...
  JR Z,33803              ; ...then skip ahead to 33803
  RET                     ; Return
  XOR A                   ; Set Current Character to Gordon...
  LD (29632),A            ; ...
  LD A,5                  ; Increase Gordon's happiness by 5...
  CALL 33569              ; ...
  LD A,1                  ; Set Current Character to Sarab...
  LD (29632),A            ; ...
  LD A,5                  ; Increase Gordon's happiness by 5...
  CALL 33569              ; ...
  XOR A                   ; Set A to zero
  RET                     ; Return

; Display "YOU ARE NOT WEARING ANYTHING" Window and Set Zero Flag if Magic
; Knight's Inventory (Wearing) is Empty
;
; Used by the routine at 31537.
  LD A,(25169)            ; If Magic Knight's first inventory slot (wearing) is
                          ; not empty...
  OR A                    ; ...
  RET NZ                  ; ...then return
  LD HL,38598             ; Point HL at "YOU ARE NOT WEARING ANYTHING" text
  JR 33842                ; Display "YOU ARE NOT WEARING ANYTHING" Window, wait
                          ; for Fire to be pressed and return

; Display "YOU ARE NOT CARRYING ANYTHING" Window and Set Zero Flag if Magic
; Knight's Inventory (Carrying) is Empty
;
; Used by the routines at 29488, 29756, 30145 and 31537. Output: F Zero Flag
; set if Magic Knight's (first) inventory (slot) is empty. Reset otherwise
  LD A,(25164)            ; Load A with index of first object in Magic Knight's
                          ; (Carrying) inventory...
  OR A                    ; ...and if this is zero...
  RET NZ                  ; ...then return
  LD HL,38582             ; Point HL at "YOU ARE NOT CARRYING ANYTHING" text
; This entry point is used by the routine at 33824.
  LD DE,37195             ; Adjust height of window 13 to accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (pointer to text to print)
  LD A,13                 ; Draw Window 13...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to text to print)
  CALL 34762              ; Print text to screen
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
  XOR A                   ; Load A with zero
  RET                     ; Return

; Check Whether Current Object is Wanted / Unwanted by Current Character
;
; This routine checks whether the Current Object is associated with the Current
; Character in either the Table of Characters' Wanted Objects (IX = 44238) or
; the Table of Characters' Unwanted Objects (IX = 44251). Input:  IX Points to
; Table of Characters' Wanted (IX = 44238) or Unwanted (IX = 44251) Objects
; Output: F  Zero Flag set if match found, reset otherwise
  HALT                    ; Wait for interrupt
  LD A,(IX+0)             ; If current entry's character index is 255 (End
                          ; Marker)...
  CP 255                  ; ...
  JP Z,33894              ; ...then skip ahead to 33894
  LD A,(29632)            ; If current entry's character index is not the same
                          ; as the Current Character...
  CP (IX+0)               ; ...
  JR NZ,33888             ; ...then skip ahead to 33888 (advance to next
                          ; character-object pair record)
  LD A,(29526)            ; If current entry's object index is the same as
                          ; Current Object...
  CP (IX+1)               ; ...
  JR Z,33895              ; ... then return (with Zero Flag set)
  INC IX                  ; Advance to next character-object pair to check...
  INC IX                  ; ...
  JR 33864                ; Loop back to 33864
  OR A                    ; Reset Zero Flag as no match was found
  RET                     ; Return

; Check Whether Current Character is Carrying an Object
;
; Used by the routines at 33100, 33170, 33290, 33304, 33318, 33448 and 33468.
; Input:  E  Index of an object Output: F  (via jumped-to routine at 33645)
; Zero Flag set if object is present in inventory, reset otherwise
  LD A,(29632)            ; Load A with index of Current Character
  PUSH DE                 ; Store DE (E = index of object to check for)
  CALL 33585              ; Point IX at current inventory of character with
                          ; index A...
  PUSH IX                 ; ...and copy into HL...
  POP HL                  ; ...
  POP DE                  ; Restore DE (E = index of object to check for)
  LD A,E                  ; Load index of object to check for into A
  JP 33648                ; Check if object is in inventory data at HL and
                          ; (re)set Zero Flag accordingly

; Print Name of Object in Inventory Slot A of Inventory Data at HL in Command
; Summary Window
;
; Used by the routines at 29488, 29619, 29756, 30145, 30968 and 31537. Input:
; A  Index of an inventory slot, with first slot being zero HL Points to start
; of a character's inventory
  LD E,A                  ; Load inventory slot number into DE...
  LD D,0                  ; ...
  ADD HL,DE               ; Add to HL as offset
  LD A,(HL)               ; Load index of object in that slot into A
  LD (29526),A            ; Set this object as the Current Object
  LD DE,33924             ; Point DE at instruction to print name of Current
                          ; Object...
  JR 33940                ; ...print in Command Summary Window at top of screen
                          ; and return

; Code for Printing Routine to Display Name of Current Object
  DEFM 29,0               ; name of Current Object

; Update Current Character Based Upon Selection Made in Menu
;
; Used by the routine at 34122. Input:  A  Index of selected character from a
; character-selection menu
  LD HL,23404             ; Point HL at list of characters in room of interest
  LD E,A                  ; Load DE with index of selected item in menu...
  LD D,0                  ; ...
  ADD HL,DE               ; Add this as offset in table of characters in room
                          ; to point to character of interest
  LD A,(HL)               ; Load index of this character into A
  LD (29632),A            ; Modify operand of instruction at 29631 to use this
                          ; particular character (i.e. set Current Character)
; This entry point is used by the routine at 29619.
  LD DE,33943             ; Point DE at instruction to print name of Current
                          ; Character
; This entry point is used by the routine at 33911.
  JP 54283                ; Print text at DE in Command Summary Window at top
                          ; of screen and return

; Code for Printing Routine to Display Name of Current Character
  DEFM 31,0               ; name of Current Character

; Display a Character's Inventory Window as an Information Window
;
; Used by the routine at 29330. Input:  IX  Points to a character's inventory
; (usually Magic Knight)
  LD A,111                ; Modify instruction at 34017 to display as
                          ; information window, rather than menu window...
  LD (34018),A            ; ...
  JR 33984                ; Jump into inventory window drawing routine

; Show List of Objects (Window or Menu) and Handle Selection if a Menu
;
; Used by the routines at 29488, 29619, 29756, 30145, 30968 and 31537. Input:
; B  Number of inventory slots to check DE  Points to summary command text
; (i.e. "DROP THE ", "GIVE THE ", "READ THE ", "WEAR THE " or "UNWEAR THE "),
; or 0 for no summary text HL  (entry via 33952) Points to full command text
; (e.g. "DROP WHICH OBJECT?", or "YOU ARE NOW CARRYING") HL (entry via 33984)
; Points to "YOU ARE NOW CARRYING" text IX  Points to a character's inventory
; Output: A  Zero-based index of selected menu item
  CALL 54051              ; Store all registers on the stack
  CALL 35723              ; Play downward scale sound
  CALL 54079              ; Restore all registers from the stack
  LD A,(IX+0)             ; Load first object in character's inventory into A
  OR A                    ; If nothing in first slot...
  JP Z,34087              ; ...jump ahead to 34087 (unused code block - see
                          ; trivia)
  LD A,105                ; Modify instruction at 34017 with 105, denoting
                          ; window as a menu rather than information window...
  LD (34018),A            ; ...
  PUSH BC                 ; Store BC (B = number of inventory slots)
  PUSH HL                 ; Store HL
  PUSH IX                 ; Store IX
  CALL 54322              ; Print Command Summary Text at DE (e.g. "DROP THE ")
                          ; in Command Summary Window
  POP IX                  ; Restore IX
  POP HL                  ; Restore HL
  POP BC                  ; Restore BC
; This entry point is used by the routine at 33945.
  LD C,0                  ; Load C (object counter) with zero
  PUSH BC                 ; Store BC (B = number of inventory slots)
  PUSH IX                 ; Store IX (points to start of inventory)
  LD A,(IX+0)             ; Load object from character's inventory (slot number
                          ; C) into A
  OR A                    ; If nothing in this slot...
  JR Z,34000              ; ...then jump ahead to 34000
  INC C                   ; Increase count of objects in inventory
  INC IX                  ; Advance IX to next slot
  DJNZ 33989              ; Loop back to 33989 for next slot
  POP IX                  ; Restore IX (points to start of inventory)
  LD A,C                  ; Copy number of objects into A
  OR A                    ; If number of objects is zero...
  JP Z,34096              ; ...then jump ahead to 34096
  LD A,(37123)            ; Load A with y-coordinate of top edge of Window 04
  ADD A,C                 ; Add number of objects to this y-coordinate
  ADD A,3                 ; Add an additional 3 to this total (menu window
                          ; padding)
  LD (37124),A            ; Set y-coordinate of bottom edge of Window 04 to
                          ; accommodate list of C objects
  PUSH HL                 ; Store HL (e.g. pointer to "DROP WHICH OBJECT?"
                          ; text)
; The operand of the instruction at 34017 represents the "Draw Hand Menu
; Cursor" Flag. This is modified by the instructions at 33947 and 33970.
  LD A,0                  ; Load A with menu / static window value
  CP 105                  ; If this is not 105 (i.e. window is not a menu, but
                          ; a simple information window)...
  JR NZ,34030             ; ...then skip ahead to 34030
  LD A,4                  ; Draw Window 4 as a menu window...
  CALL 34982              ; ...
  JR 34035                ; ...and skip over "draw an information window"
                          ; section
  LD A,4                  ; Draw Window 4 as an information window...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to full command text)...
  PUSH IX                 ; Store IX (points to start of inventory)
  CALL 34762              ; Print text to screen
  POP IX                  ; Restore IX (points to start of inventory)
  POP BC                  ; Restore BC (B = number of remaining inventory
                          ; slots)
  PUSH BC                 ; Store BC (B = number of remaining inventory slots)
  LD A,(IX+0)             ; Load index of object in current inventory into A
  OR A                    ; If index is zero (i.e. inventory slot is empty)...
  JP Z,34077              ; ...then skip ahead to 34077
  LD B,A                  ; Copy index into B
  PUSH IX                 ; Store IX (pointer to start of inventory)
  LD HL,38351             ; Point HL to text printing instruction to move
                          ; cursor to start of next character row within
                          ; window, then right by two characters
  PUSH BC                 ; Store BC (B = index of an object)
  CALL 34762              ; Print text to screen (i.e. move text printing
                          ; cursor right by two characters)
  POP BC                  ; Restore BC (B = index of an object)
  CALL 54266              ; Point HL at object B's name in Table of Object
                          ; Names...
  CALL 34762              ; ...and print to screen
  POP IX                  ; Restore IX (pointer to start of inventory)
  INC IX                  ; Advance IX to next inventory slot
  POP BC                  ; Restore BC (B = number of remaining inventory
                          ; slots)
  DJNZ 34044              ; Repeat loop for next object in inventory,
                          ; decreasing B (number of remaining inventory slots)
  PUSH BC                 ; Store BC (B = 0)
  POP BC                  ; Restore BC (B = number of remaining inventory slots
  LD A,(34018)            ; If window is a menu, rather than information
                          ; window...
  CP 105                  ; ...
  CALL Z,35296            ; ...process keyboard / joystick input on a menu and
                          ; load A with selected item index
  RET                     ; ...and return
; This jump point can never be reached, as a separate routine already checks
; for an empty inventory before code execution reaches this routine - see
; trivia
  LD A,13                 ; Prepare to display Window 13
  POP HL                  ; Remove RETurn address from stack (as we are not
                          ; RETurning)
  LD HL,44862             ; Point HL at "YOU HAVE DESTROYED YOURSELF BY
                          ; DROPPING THE..." text
  JP 55364                ; Display Window 13 with text at HL, wait for Fire to
                          ; be pressed then jump to Main Game Loop
  PUSH HL                 ; Store HL (pointer to "YOU ARE NOW CARRYING" text)
  LD A,(37123)            ; Load A with y-coordinate of top edge of Window 04
  ADD A,4                 ; Add 4 to this y-coordinate
  LD (37124),A            ; Set y-coordinate of bottom edge of Window 04 to
                          ; accommodate three rows of text
  LD A,4                  ; Draw Window 4...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to "YOU ARE NOW CARRYING" text)
  CALL 34762              ; ...and print to screen
  LD HL,42373             ; Point HL at "NOTHING AT ALL" text...
  CALL 34762              ; ...and print to screen
  POP BC                  ; Restore BC (number of inventory slots, PUSHed by
                          ; instruction at 33986)
  RET                     ; Return

; Display and Process Input for Character Selection Menu (Current Room's
; Characters Only)
;
; Used by the routines at 29619, 29756, 30145, 30686 and 31257. Input:  HL
; Pointer to text to append to menu's title string, after "WHO DO YOU WANT TO "
; DE  Command Summary Text Pointer (second row of text in Command Summary
; Window) Output: A  1 if there is at least one character in the room, zero
; otherwise F  Reset if there is at least one character in the room, set
; otherwise
  PUSH HL                 ; Store HL (pointer to text to append to menu's title
                          ; string)
  PUSH BC                 ; Store BC
  PUSH IX                 ; Store IX
  PUSH DE                 ; Store DE (Command Summary Text Pointer)
  CALL 35731              ; Play Short Downward Scale Sound
  POP DE                  ; Restore DE (Command Summary Text Pointer)
  CALL 54322              ; Print text at Command Summary Text Pointer (e.g.
                          ; "COMMAND ") in Command Summary Window
  LD A,(23701)            ; Load A with Magic Knight's current room...
  CALL 34512              ; ...and create list of characters in this room at
                          ; 23404, loading A with number of characters
  JR NZ,34170             ; If there are characters in this room then skip
                          ; ahead to 34170
  LD HL,38628             ; Point HL at "THERE IS NOBODY IN THIS ROOM" text
  LD DE,37195             ; Adjust height of window 13 to accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (pointer to start of text to print)
  LD A,13                 ; Draw Window 13...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)
  CALL 34762              ; Print text at HL
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  POP HL                  ; Restore HL (pointer to text to append to menu's
                          ; title string)
  XOR A                   ; Set A to zero and set Zero Flag
  RET                     ; Return
  ADD A,4                 ; Add four to number of characters in current room
                          ; (for menu size padding)...
  LD C,A                  ; ...and load value into C
  LD A,(37115)            ; Load A with window's top y-coordinate
  ADD A,C                 ; Add 4 + number of characters...
  LD (37116),A            ; ...and set window's bottom y-coordinate to this
                          ; value
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  LD A,3                  ; Draw Window 3 as a menu window...
  CALL 34982              ; ...
  LD HL,38610             ; Point HL at "WHO DO YOU WANT TO " text...
  CALL 34762              ; ...and print to screen
  POP HL                  ; Restore HL (pointer to text to append to menu's
                          ; title string, as at beginning of this routine)
  CALL 34762              ; Append this text to menu's title
  LD IX,23404             ; Point IX at list of characters in room
  LD B,16                 ; Load B with 16 (16 characters) (see trivia)
  PUSH BC                 ; Store BC (B = remaining characters to process)
  LD A,(IX+0)             ; Load A with index of current character in list...
  CP 255                  ; ...and if this is 255 (End Marker)...
  JP Z,34254              ; ...then skip ahead to 34254
  LD HL,38351             ; Point HL at text printing instructions to move
                          ; cursor to start of next character row within
                          ; window, then right by two characters
  PUSH IX                 ; Store IX (current position in list of characters in
                          ; room)
  CALL 34762              ; Print text at HL to screen (i.e. move cursor)
  POP IX                  ; Restore IX (current position in list of characters
                          ; in room)
  LD A,(IX+0)             ; Load A with index of current character in list...
  LD (29632),A            ; Set this character as the Current Character
  LD HL,33943             ; Point HL at instruction to print name of Current
                          ; Character
  PUSH IX                 ; Store IX (current position in list of characters in
                          ; room)
  CALL 34762              ; Print text to screen
  POP IX                  ; Restore IX (current position in list of characters
                          ; in room)
  INC IX                  ; Advance IX to next character in list
  POP BC                  ; Restore BC (B = remaining characters to process)
  DJNZ 34204              ; Decrease B and loop back to 34204
  CALL 35296              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  CALL 33926              ; Update Current Character based upon selection made
                          ; in menu
  LD A,1                  ; Load A with 1
  OR A                    ; Reset Zero Flag
  RET                     ; Return
  POP BC                  ; Restore BC (B = remaining characters to process)
  CALL 35296              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  CALL 33926              ; Update Current Character based upon selection made
                          ; in menu
  LD A,1                  ; Load A with 1
  OR A                    ; Reset Zero Flag
  RET                     ; Return

; Set Magic Knight's Available Action Flags and Validate I.D. Card if
; Appropriate
;
; Used by the routines at 26997, 28101, 29330 and 30001.
  LD HL,1                 ; Reset all Available In-Game Menu Command Flags
                          ; except "COMMAND A CHARACTER" which is always set...
  LD (23698),HL           ; ...
  LD A,(25024)            ; If Magic Knight's Magic Level is zero...
  OR A                    ; ...
  JR Z,34281              ; ...then skip ahead to 34281
  SET 5,(IY+88)           ; Set "CAST A SPELL" Menu Command Flag (IY = 23610)
  LD A,(23701)            ; If Magic Knight's current room is not 1 (The
                          ; Bridge, USS Pisces 1)...
  CP 1                    ; ...
  JR NZ,34320             ; ...then skip ahead to 34320
  LD A,1                  ; If Magic Knight is wearing the Cloak of
                          ; Invisibility (01)...
  CALL 33640              ; ...
  JR Z,34320              ; ...then skip ahead to 34320
  LD A,3                  ; If Magic Knight is not wearing the Valid ID Card
                          ; (03)...
  CALL 33640              ; ...
  JR NZ,34320             ; ...then skip ahead to 34320
  SET 2,(IY+89)           ; Set "COMMUNICATE" Menu Command Flag (IY = 23610)
  LD HL,25174             ; If Gordon is not carrying the Star Map...
  LD A,6                  ; ...
  CALL 33648              ; ...
  JR NZ,34320             ; ...then skip ahead to 34320
  SET 0,(IY+89)           ; Set "MOVE STARSHIP" Menu Command Flag (IY = 23610)
  LD A,(23701)            ; Load E with Magic Knight's current room...
  LD E,A                  ; ...
  LD BC,4                 ; Load BC with 4 (as each Transporter Pad Location
                          ; entry is composed of 4 bytes)
  LD HL,32577             ; Point HL at Table of Transporter Pad Locations
                          ; (32577)
  ADD HL,BC               ; Advance HL by four bytes to next entry
  LD A,(HL)               ; If first byte (Room Number) is 255 (End Marker)...
  CP 255                  ; ...
  JR Z,34363              ; ...then skip ahead to 34363 (end of data reached)
  CP E                    ; If current transporter pad's room is not in the
                          ; same room as Magic Knight...
  JR NZ,34330             ; ...then loop back to 34330 for next transporter pad
  INC HL                  ; Advance HL to pad's left x-coordinate
  LD A,(25156)            ; If Magic Knight's current x-coordinate (pixels) is
                          ; less than this...
  CP (HL)                 ; ...
  JP C,34363              ; ...then skip ahead to 34363 (Magic Knight not on a
                          ; transporter pad)
  INC HL                  ; Advance HL to pad's right x-coordinate
  CP (HL)                 ; If Magic Knight's current x-coordinate (pixels) is
                          ; not less than this...
  JP NC,34363             ; ...then skip ahead to 34363 (Magic Knight not on a
                          ; transporter pad)
  INC HL                  ; Advance HL to pad's y-coordinate
  LD A,(25157)            ; If Magic Knight's current y-coordinate (pixels) is
                          ; not the same as this...
  CP (HL)                 ; ...
  JR NZ,34363             ; ...then skip ahead to 34363 (Magic Knight not on a
                          ; transporter pad)
  SET 1,(IY+89)           ; Set "USE TRANSPORTER" Menu Command Flag (IY =
                          ; 23610)
  XOR A                   ; Load C with weights / flags of all Magic Knight's
                          ; carried objects, OR-ed Together...
  CALL 34484              ; ...
  BIT 5,C                 ; ...and if Can Be Read Flag is not set for any of
                          ; the objects...
  JR Z,34375              ; ...then skip ahead to 34375
  SET 3,(IY+88)           ; Set "READ SOMETHING" Menu Command Flag (IY = 23610)
  LD A,1                  ; Load C with flags (2) of all Magic Knight's carried
                          ; objects, OR-ed Together...
  CALL 34484              ; ...
  BIT 3,C                 ; ...and if Can Be Worn Flag is set for at least one
                          ; of the objects...
  JR NZ,34390             ; ...then skip ahead to 34390
  LD A,(25169)            ; If Magic Knight's first inventory slot (wearing) is
                          ; empty...
  OR A                    ; ...
  JR Z,34394              ; ...then skip ahead to 34394
  SET 7,(IY+88)           ; Set "WEAR/UNWEAR OBJECT" Menu Command Flag (IY =
                          ; 23610)
  LD A,2                  ; If Magic Knight is not carrying the Blank I.D. Card
                          ; (02)...
  CALL 33645              ; ...
  JR NZ,34473             ; ...then skip ahead to 34473
  LD A,10                 ; If Magic Knight is not carrying the Pot of Glue
                          ; (10)...
  CALL 33645              ; ...
  JR NZ,34473             ; ...then skip ahead to 34473
  LD A,5                  ; If Magic Knight is not carrying the Photograph (of
                          ; Magic Knight) (05)...
  CALL 33645              ; ...
  JR NZ,34473             ; ...then skip ahead to 34473
  LD C,5                  ; Remove Photograph (of Magic Knight) from Magic
                          ; Knight's current inventory (carrying)...
  LD B,5                  ; ...
  LD HL,25164             ; ...
  PUSH HL                 ; ...storing HL (pointer to start of Magic Knight's
                          ; current inventory)...
  CALL 36254              ; ...
  POP HL                  ; ...and restoring HL (pointer to start of Magic
                          ; Knight's current inventory)
  PUSH HL                 ; Store HL (pointer to start of Magic Knight's
                          ; current inventory)
  LD C,2                  ; Remove Blank ID Card from Magic Knight's current
                          ; inventory...
  LD B,5                  ; ...
  CALL 36254              ; ...
  POP HL                  ; Restore HL (pointer to start of Magic Knight's
                          ; current inventory)
  LD C,3                  ; Load Valid ID Card into the first empty inventory
                          ; slot of Magic Knight...
  LD B,5                  ; ...
  CALL 33516              ; ...
  LD A,(23451)            ; Set I.D. Card Validated Flag...
  OR 16                   ; ...
  LD (23451),A            ; ...
  LD HL,45771             ; Point HL at "YOU HAVE HAD AN ACCIDENT WITH THE
                          ; GLUE..." text
  LD DE,37227             ; Adjust height of window 17 to accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (pointer to start of text)
  LD A,17                 ; Draw Window 17 as a Menu Window...
  CALL 34982              ; ... (bug)
  POP HL                  ; Restore HL (pointer to start of text)
  CALL 34762              ; Print text to screen
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
  LD A,(23701)            ; If Magic Knight's current room is not 24 (The
                          ; Control Column, USS Pisces, 6A)...
  CP 24                   ; ...
  RET NZ                  ; ...then return
  SET 1,(IY+88)           ; Set "LAUNCH TYME MACHINE" Menu Command Flag (IY =
                          ; 23610)
  RET                     ; Return

; Load C with Property of Index A for All Magic Knight's Carried Objects, OR-ed
; Together
;
; Used by the routine at 34265. Input:  A  Index of required property of
; objects Output: C  Flags of all objects held, OR-ed together
  LD (34500),A            ; Modify instruction at 34499 with index of required
                          ; property
  LD IX,25164             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  LD BC,1280              ; Load B with 5 and C with 0 (i.e. reset all bits in
                          ; C)
  LD A,(IX+0)             ; If Magic Knight's current inventory slot is
                          ; empty...
  OR A                    ; ...
  RET Z                   ; ...then return
; The operand of the instruction at 34499 represents the index of the required
; property. This is modified by the instruction at 34484.
  LD E,1                  ; Load E with index of required property
  CALL 33525              ; Point HL to the E-th byte of the A-th record in
                          ; Object Properties Table
  LD A,(HL)               ; Load A with value of required property (flags)...
  OR C                    ; ...and set corresponding bits of C...
  LD C,A                  ; ...
  INC IX                  ; Advance IX to next inventory slot...
  DJNZ 34494              ; ...and loop back to 34494 for next object
  RET                     ; Return

; Create List of Characters in Room A at 23404 and Load A with Number of
; Characters
;
; Used by the routine at 34122. Input:  A  Room index Output: A  Number of
; characters in room F  Zero Flag set if no characters in room, reset otherwise
  LD (34541),A            ; Modify instruction at 34540 with room index
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  PUSH DE                 ; Store DE
  PUSH IX                 ; Store IX
  LD A,255                ; Set A to 255 (End Marker)
  LD HL,23419             ; Point HL at end of Table of Characters in Room of
                          ; Interest
  LD B,15                 ; Load B with 15 (as we are clearing 15 entries in
                          ; the list)
  LD (HL),A               ; Set value at address in HL to 255
  DEC HL                  ; Move HL back one byte
  DJNZ 34527              ; Loop back to 34527
  LD IX,25244             ; Point IX at start of Table of Characters' Current
                          ; Positions at 25244
  LD D,0                  ; Set D (index of current character) to zero
  LD C,D                  ; Set C (count of characters in room of interest) to
                          ; zero
  LD B,12                 ; Load B with 12 (as there are 12 characters in the
                          ; game)
; The operand of the instruction at 34540 represents a room index. This is
; modified by the instruction at 34512.
  LD A,0                  ; Load A with room index
  CP (IX+0)               ; If current character's current room is not the room
                          ; of interest...
  JR NZ,34550             ; ...then skip ahead to 34550
  INC C                   ; Increase C (count of number of characters in room
                          ; of interest)
  LD (HL),D               ; Load index of current character into address in HL
  INC HL                  ; Advance HL by one byte
  INC IX                  ; Advance IX to next character's position data...
  INC IX                  ; ...
  INC IX                  ; ...
  INC D                   ; Increase index of current character (i.e. advance
                          ; to next character)
  DJNZ 34540              ; Loop back to 34540
  LD A,C                  ; Load number of characters in room of interest into
                          ; A
  OR A                    ; Set zero flag is there are no characters in room,
                          ; otherwise reset
  POP IX                  ; Restore IX
  POP DE                  ; Restore DE
  POP BC                  ; Restore BC
  POP HL                  ; Restore HL
  RET                     ; Return

; Draw Strength Bar at Top of Screen
;
; Used by the routine at 27703.
  LD A,35                 ; If Magic Knight is not carrying the Mirror (35)...
  CALL 33645              ; ...
  RET NZ                  ; ...then return
  LD HL,16482             ; Point HL at Display File Address for top pixel row
                          ; of cell at (2, 3) (characters)
  LD A,(25020)            ; Load A with Magic Knight's strength
  CALL 28625              ; Divide A by eight, rounding down to nearest integer
  AND 15                  ; If lowest four bits are reset (i.e. don't need to
                          ; draw part of a character block)...
  JR Z,34603              ; ...then skip ahead to 34603
  LD B,A                  ; Load number of full character blocks to draw into B
  LD A,255                ; Load A with 255 (draw row of eight pixels)
  PUSH HL                 ; Store HL (current Display File position in health
                          ; bar block)
  PUSH BC                 ; Store BC (B = remaining number of full character
                          ; blocks to draw)
  LD B,4                  ; Load B with 4 (health bar has 4 stripes)
  LD (HL),A               ; Draw a byte (i.e. a "block" of 8 health units) to
                          ; health bar
  INC H                   ; Advance HL two rows down (as bar is made of
                          ; alternating horizontal stripes)...
  INC H                   ; ...
  DJNZ 34593              ; Decrease B (number of stripes to draw) and loop
                          ; back to 34593 if not zero
  POP BC                  ; Restore BC (B = remaining number of full character
                          ; blocks to draw)
  POP HL                  ; Restore HL (current Display File position in health
                          ; bar block)
  INC HL                  ; Advance HL (horizontally) one character to draw
                          ; next full block
  DJNZ 34589              ; Decrease B (remaining number of full character
                          ; blocks to draw) and loop back to 34589 if not zero
  LD A,(25020)            ; Load A with Magic Knight's strength
  AND 7                   ; Get fractional part (i.e. amount by which strength
                          ; is more than a multiple of eight)
  JR NZ,34613             ; If this is not zero, then skip ahead to 34613
  XOR A                   ; Set A to zero
  JR 34619                ; Skip ahead to draw the blank rows (see trivia)
  LD B,A                  ; Load fractional part of strength into B
  XOR A                   ; Set A to zero
  SCF                     ; Set the Carry Flag
  RRA                     ; Move carry Flag bit into MSB of A
  DJNZ 34615              ; Decrease B and loop back if not zero (i.e. place a
                          ; bit at the LHS of A for each unit of strength that
                          ; is left!)
  LD B,4                  ; Load B with 4 (health bar has 4 stripes)
  LD (HL),A               ; Draw a byte (i.e. a "block" of 8 health units) to
                          ; health bar
  INC H                   ; Advance HL two rows down (as bar is made of
                          ; alternating horizontal stripes)...
  INC H                   ; ...
  DJNZ 34621              ; Loop back to 34621 to draw next row
  RET                     ; Return

; Draw Objects in Magic Knight's Inventory if he is Carrying the Mirror
;
; Used by the routine at 27703.
  LD A,35                 ; If Magic Knight is not carrying the Mirror (35)...
  CALL 33645              ; ...
  RET NZ                  ; ...then return
  LD HL,25164             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD DE,784               ; Load DE with x- and y-coordinates respectively to
                          ; start drawing object graphics (D, or x = 3, E, or y
                          ; = 16)
  PUSH BC                 ; Store BC (B = remaining number of inventory slots
                          ; to process)
  PUSH HL                 ; Store HL (pointer to current position in Magic
                          ; Knight's current inventory)
  PUSH DE                 ; Store DE (coordinates in characters to draw object)
  LD A,(HL)               ; Load index of object in current slot in Magic
                          ; Knight's inventory into A
  OR A                    ; If this is zero...
  JR Z,34693              ; ...then restore registers and return
  LD E,6                  ; Load 6 (index of objects' attribute property) into
                          ; E
  CALL 33525              ; Point HL at the attribute property of the object in
                          ; the current inventory slot
  LD A,(HL)               ; Load attribute into ATTR T system variable...
  LD (23695),A            ; ...
  INC HL                  ; Advance HL to point to graphic index property...
  LD A,(HL)               ; ...and load into A
  POP BC                  ; Restore BC (coordinates in characters to draw
                          ; object, was in DE)
  PUSH BC                 ; Store BC (coordinates in characters to draw object)
  PUSH BC                 ; Store BC (coordinates in characters to draw object)
  CALL 54406              ; Draw an object with lookup index A at character
                          ; coordinates (C, B)
  POP BC                  ; Restore BC (coordinates in characters to draw
                          ; object)
  CALL 54148              ; Load HL with Attribute File address for coordinates
                          ; (C, B)
  LD A,(23695)            ; Load A with value stored in ATTR T system
                          ; variable...
  LD (HL),A               ; ...and apply this attribute to Attribute File at
                          ; coordinates (C, B)...
  INC HL                  ; ...
  LD (HL),A               ; ...(C + 1, B)...
  LD BC,31                ; ...
  ADD HL,BC               ; ...
  LD (HL),A               ; ...(C, B + 1)...
  INC HL                  ; ...
  LD (HL),A               ; ...and (C + 1, B + 1)
  POP DE                  ; Restore DE (coordinates in characters to draw
                          ; object)
  LD A,E                  ; Advance right by three characters (i.e. add three
                          ; to x-coordinate in E)...
  ADD A,3                 ; ...
  LD E,A                  ; ...
  POP HL                  ; Restore HL (pointer to current position in Magic
                          ; Knight's current inventory)
  INC HL                  ; Advance HL to next inventory slot
  POP BC                  ; Restore BC (B = remaining number of inventory slots
                          ; to process)
  DJNZ 34641              ; Decrease B, and loop back to 34641 if not zero
  RET                     ; Return
  POP DE                  ; Restore DE (coordinates in characters to draw
                          ; object)
  POP HL                  ; Restore HL (pointer to current position in Magic
                          ; Knight's current inventory)
  POP BC                  ; Restore BC (B = remaining number of inventory slots
                          ; to process)
  RET                     ; Return

; Splice Numeric Data A as a String into a String at HL
;
; Used by the routines at 30533, 30583, 30643 and 33657. Input:  A Numeric
; value to put into string HL Address of string to modify
  PUSH HL                 ; Store HL (address of string to modify)
  LD HL,23464             ; Point HL at destination location for ASCII string
  LD B,0                  ; Load numeric value into BC...
  LD C,A                  ; ...
  CALL 35591              ; Convert numeric value BC to ASCII string at address
                          ; in HL (23464)
  LD HL,23466             ; Point HL at third digit in converted five-digit
                          ; string
  LD C,2                  ; Load C with 2 (as we can have up to two leading
                          ; zeroes on a three-digit number)
  LD A,(HL)               ; Load ASCII character at HL into A
  CP 48                   ; If character is not a zero ("0")...
  JR NZ,34723             ; ...then skip ahead to 34723
  LD (HL),32              ; Replace the zero character with a space (i.e.
                          ; remove leading zeroes from number)
  INC HL                  ; Advance to next character in string
  DEC C                   ; Decrease C (number of remaining digits to process)
  JR NZ,34712             ; Loop back to 34712 if there are still digits to
                          ; process
  POP DE                  ; Restore pointer to "numeric text" (originally in HL
                          ; at start of this routine) into DE
  LD HL,23466             ; Point HL at string just created
  LD BC,3                 ; Splice ASCII string number just generated into
                          ; "numeric data" text
  LDIR                    ; ...
  RET                     ; Return

; Print Text at Location HL to Screen Using Full Screen Width
;
; Used by the routines at 28172 and 54505. Input:  HL  Text to print
  LD A,(23495)            ; Load A with x-coordinate of right edge of current
                          ; window to draw (characters)
  PUSH AF                 ; Store AF (A = x-coordinate of right edge of current
                          ; window)
  LD A,31                 ; Set right-edge x-coordinate value at 23495 to 31...
  LD (23495),A            ; ...
  LD A,(23493)            ; Load A with x-coordinate of left edge of current
                          ; window to draw (characters)
  PUSH AF                 ; Store AF (A = x-coordinate of left edge of current
                          ; window)
  XOR A                   ; Set left-edge x-coordinate value at 23493 to
                          ; zero...
  LD (23493),A            ; ...
  CALL 34762              ; Print text at location HL to screen
  POP AF                  ; Restore x-coordinate of left edge of current
                          ; window...
  LD (23493),A            ; ...to 23493
  POP AF                  ; Restore x-coordinate of right edge of current
                          ; window...
  LD (23495),A            ; ...to 23495
  RET                     ; Return

; Print Text at Location HL to Screen
;
; Used by the routines at 26745, 26884, 26926, 27703, 27750, 27762, 28506,
; 28554, 29756, 30001, 30123, 30145, 30686, 31041, 31188, 31312, 31468, 31537,
; 31688, 32252, 32895, 33338, 33725, 33834, 33952, 34122, 34265, 34733, 54283,
; 54333, 55115, 55138, 55364 and 55685. Input:  HL  Points to text data to
; print
  LD IX,24005             ; Point IX at start of Temporary Text Buffer
  LD A,255                ; Prepare Recursion Depth Counter for loop...
  LD (23488),A            ; ...
; This entry point is used by the routine at 34887.
  LD A,(23488)            ; Increase Recursion Depth Counter...
  INC A                   ; ...
  LD (23488),A            ; ...
  PUSH HL                 ; Store HL
  CALL 54215              ; Update Attribute Virtual Text Cursor based upon
                          ; current Bitmap Virtual Text Cursor
  POP HL                  ; Restore HL
  DEC HL                  ; Prepare pointer to text to print for loop
; This entry point is used by the routines at 34858, 34934 and 36602.
  LD A,(23488)            ; Start of loop - load Recursion Depth Counter into
                          ; A...
  CP 255                  ; ...and if this is 255 (i.e. no more text to
                          ; print)...
  RET Z                   ; ...then return
  INC HL                  ; Advance to next character to be printed
  LD A,(HL)               ; Get character from string
  OR A                    ; If character is a "0"...
  JP Z,34861              ; ...then return from current level of text printing
  CP 32                   ; If the character is a "32" (SPACE)...
  JP Z,36602              ; ...then print word in Temporary Text Buffer to
                          ; screen, wrapping text if necessary, then jump to
                          ; 34784 to load next word
  CP 31                   ; If the character is a "31"...
  JP Z,34968              ; ...then print the Current Character's name
  CP 29                   ; If the character is a "29"...
  JP Z,34958              ; ...then print the Current Object's name
  CP 28                   ; If the character is a "28"...
  JP Z,34948              ; ...then print the Current Starship Location's name
  CP 19                   ; If the character is a "19"...
  JP Z,34918              ; ...then toggle BRIGHT Flag then loop back to 34784
                          ; for next data
  CP 18                   ; If the character is a "18"...
  JP Z,34922              ; ...then toggle FLASH Flag then loop back to 34784
                          ; for next data
  CP 17                   ; If the character is a "17"...
  JP Z,34930              ; ...then change PAPER colour based upon following
                          ; data byte then loop back to 34784 for next data
  CP 16                   ; If the character is a "16"...
  JP Z,34934              ; ...then change INK colour based upon following data
                          ; byte then loop back to 34784 for next data
  CP 14                   ; If the character is a "14" (Carriage return / line
                          ; feed to start of next character row down within
                          ; window)...
  JP Z,36602              ; ...then print word in Temporary Text Buffer to
                          ; screen, wrapping text if necessary, then jump to
                          ; 34784 to load next word
  CP 13                   ; If the character is a "13" (Carriage return / line
                          ; feed to start of next character row down)...
  JP Z,36602              ; ...then print word in Temporary Text Buffer to
                          ; screen, wrapping text if necessary, then jump to
                          ; 34784 to load next word
  CP 91                   ; If value is 91 or greater (i.e. special
                          ; character)...
  JP NC,34887             ; ...then print an entry from the Common Words Table
  LD (IX+0),A             ; Load character into temporary text buffer
  INC IX                  ; Advance to next position in temporary text buffer
  JR 34784                ; Loop back to 34784

; Return from recursive text-printing
;
; Used by the routine at 34887.
  POP HL                  ; Restore HL (pointer to current position in text to
                          ; print)
  JR 34784                ; Jump back into text printing routine to process
                          ; next character in parent string

; Text Printing Return from current level of text printing
;
; Used by the routine at 34762.
  PUSH AF                 ; Store AF
  LD A,(23488)            ; Load Recursion Depth Counter into B...
  LD B,A                  ; ...
  POP AF                  ; Restore AF
  OR B                    ; If Recursion Depth Counter is not zero (i.e. we are
                          ; not at the end of the top-level string)...
  JR NZ,34879             ; ...then skip ahead to 34879
  DEC A                   ; Decrease Recursion Depth Counter to 255, as we have
                          ; reached the end of the top-level string...
  LD (23488),A            ; ...
  LD A,255                ; Load A with 255 (End Marker)
  JP 36602                ; Print word in Temporary Text Buffer to screen,
                          ; wrapping text if necessary, then jump to 34784 to
                          ; return
  LD A,(23488)            ; Decrease Recursion Depth Counter...
  DEC A                   ; ...
  LD (23488),A            ; ...
  RET                     ; Return

; Text Printing Print an entry from the Common Words Table
;
; Used by the routines at 34762 and 34968. Input:  A  (Entry at 34887 only) 91
; + Index of required entry in Common Words Table A  (Entry at 34893 only)
; Index of required entry in list of texts HL  (Entry at 34893 only) Start
; address of a list of texts
  PUSH HL                 ; Store HL (pointer to current position in text to
                          ; print)
  LD HL,43196             ; Point HL at start of Common Words Table
  SUB 91                  ; Subtract 91 to get absolute index of required entry
                          ; in table
; This entry point is used by the routines at 34948 and 34958.
  JR Z,34913              ; If index is zero (i.e. first entry is required)
                          ; then skip ahead to 34913
  CP 100                  ; If index is at least 100...
  CALL NC,34976           ; ...then advance HL to second part of Common Words
                          ; Table and subtract 100 from required index (see
                          ; trivia)
  JR Z,34913              ; If index is zero (i.e. first entry is required)
                          ; then skip ahead to 34913
  LD B,A                  ; Load index into B
  PUSH BC                 ; Store BC (B = Remaining number of strings to skip,
                          ; initially set to index of required entry in Common
                          ; Words Table)
  LD BC,65535             ; Set BC to 65535 (repeat count for CPIR)
  XOR A                   ; Set A to zero
  CPIR                    ; Advance HL until (HL) = A, i.e. a zero (end of
                          ; string) is found
  POP BC                  ; Restore BC (B = Remaining number of strings to
                          ; skip)
  DJNZ 34903              ; Loop back to 34903
  CALL 34771              ; Call text printing routine recursively to print the
                          ; common word
  JR 34858                ; Restore HL (pointer to current position in text to
                          ; print) then jump back into text printing routine to
                          ; process next character in parent string

; Text Printing Toggle BRIGHT Flag
;
; Used by the routine at 34762.
  LD B,64                 ; Load B with 64 (BRIGHT flag)
  JR 34924                ; Skip ahead to 34924 (toggle BRIGHT flag, store ATTR
                          ; T system variable and jump back to start of text
                          ; printing loop to process next data byte)

; Text Printing Toggle FLASH Flag
;
; Used by the routine at 34762.
  LD B,128                ; Load B with 128 (FLASH flag)
; This entry point is used by the routine at 34918.
  LD A,(23695)            ; Load A with current ATTR T system variable value
  XOR B                   ; Toggle FLASH flag
  JR 34942                ; Store ATTR T system variable and jump back to start
                          ; of text printing loop to process next data byte

; Text Printing Change PAPER Colour
;
; Used by the routine at 34762.
  LD B,199                ; Load B with attribute mask (FLASH, BRIGHT and all
                          ; INK bits set, all PAPER bits reset)
  JR 34936                ; Change PAPER colour then jump back to start of text
                          ; printing loop to process next data byte

; Text Printing Change INK Colour
;
; Used by the routine at 34762.
  LD B,248                ; Load B with attribute mask (FLASH, BRIGHT and all
                          ; PAPER bits set, all INK bits reset)
; This entry point is used by the routine at 34930.
  INC HL                  ; Advance HL pointer to next byte in text data
  LD A,(23695)            ; Load ATTR T system variable value into A
  AND B                   ; Apply mask to reset all INK bits
  OR (HL)                 ; Set INK bits as defined in next text data byte
; This entry point is used by the routine at 34922.
  LD (23695),A            ; Store new value of ATTR T
  JP 34784                ; Jump back to start of text printing loop to process
                          ; next data byte

; Print the Current Starship Location's Name
;
; Used by the routine at 34762.
  PUSH HL                 ; Store HL (current position in text data)
  LD HL,43031             ; Point HL at start of Table of Starship Destination
                          ; Names
  LD A,(23700)            ; Load A with Current Starship Location
  OR A                    ; Set Zero Flag if location index is zero
  JR 34893                ; Jump back to print this location's name

; Print the Current Object's Name
;
; Used by the routine at 34762.
  PUSH HL                 ; Store HL (current position in text data)
  LD HL,42373             ; Point HL at start of Table of Object Names
  LD A,(29526)            ; Load A with index of Current Object
  OR A                    ; Set Zero Flag is object index is zero
  JR 34893                ; Jump back to print this object's name

; Print the Current Character's Name
;
; Used by the routine at 34762.
  LD A,(29632)            ; Load A with index of Current Character
  ADD A,195               ; Add 195 (as 195 is the index of the first of the
                          ; list of characters' names in the Common Words
                          ; Table)
  JP 34887                ; Print an entry (A) from the Common Words Table

; Subtract 100 from Common Word Index and Jump to Second Part of Common Words
; Table
;
; This routine is redundant in that if it is skipped (via a RET at 34976) the
; game continues to function normally. (See trivia) Input:  A  Index of common
; word required Output: A  Modified common word index (as input, minus 100)
  LD HL,44061             ; Advance to second part of Common Words Table
  SUB 100                 ; Subtract 100 from index required
  RET                     ; Return

; Draw a Menu Window
;
; Used by the routines at 26745, 26884, 30001, 30145, 30686, 31041, 31537,
; 31688, 32895, 33952, 34122, 34265 and 55115.
  EX AF,AF'               ; Swap AF register (A holds index of window to draw)
  LD A,105                ; Load the value 105 into 35086 (i.e. set "Draw Menu
                          ; (Hand) Cursor" 'flag' to true)...
  LD (35087),A            ; ...
  JR 34996                ; Draw the window

; Draw a Window
;
; Used by the routines at 26745, 26884, 26926, 27703, 27762, 28506, 28554,
; 28696, 29756, 30145, 31188, 31312, 31468, 32252, 32895, 33338, 33725, 33834,
; 33952, 34122, 54333, 55138, 55364 and 55685. Input:  A  Index of window to
; draw
  EX AF,AF'               ; Switch AF and AF'
  LD A,111                ; Reset "Draw Hand Menu Cursor" Flag (later in this
                          ; routine)...
  LD (35087),A            ; ...
; This entry point is used by the routine at 34982.
  SET 1,(IY+65)           ; Set Characters Free to Move Flag (IY = 23610)
  EX AF,AF'               ; Restore original AF (with A being index of window)
  LD (54334),A            ; Set this index as the "current" window index
  LD L,A                  ; Load HL with A value (index of required window)...
  LD H,0                  ; ...
  ADD HL,HL               ; Multiply index by eight (as each window's data
                          ; takes up eight bytes in table at 37089)...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  LD BC,37089             ; Set BC to start of window data table
  ADD HL,BC               ; Calculate location of start of required window's
                          ; data
  LD E,(HL)               ; Load E with x-coordinate of left edge (characters)
  INC HL                  ; Load C with x-coordinate of right edge
                          ; (characters)...
  LD C,(HL)               ; ...
  INC HL                  ; Load D with y-coordinate of top edge
                          ; (characters)...
  LD D,(HL)               ; ...
  INC HL                  ; Load B with y-coordinate of bottom edge
                          ; (characters)...
  LD B,(HL)               ; ...
  LD (23493),DE           ; Store values for later use...
  LD (23495),BC           ; ...
  INC HL                  ; Load A with window's upper edge border style...
  LD A,(HL)               ; ...
  LD (54235),A            ; Store for later use in routine at 54231
  INC HL                  ; Load A with window's border attribute...
  LD A,(HL)               ; ...
  EX AF,AF'               ; Exchange AF and AF'
  INC HL                  ; Load A with starting y-coordinate of hand cursor...
  LD A,(HL)               ; ...
  LD (23456),A            ; Store for later use
  INC HL                  ; Load A with window's content attribute...
  LD A,(HL)               ; ...
  LD (23481),A            ; Store for later use
  EX AF,AF'               ; Exchange AF and AF' (restoring border attribute to
                          ; A and putting background colour in A')
  CALL 35123              ; Draw window frame
  LD HL,23493             ; Point HL at previously stored values
  INC (HL)                ; Increase top-left x-coordinate
  INC HL                  ; Increase top-left y-coordinate...
  INC (HL)                ; ...
  INC HL                  ; Decrease bottom-right x-coordinate...
  DEC (HL)                ; ...
  INC HL                  ; Decrease bottom-right y-coordinate...
  DEC (HL)                ; ...
  LD A,(23481)            ; Load window content attribute into A
  LD (35948),A            ; Prepare to fill a region with the attribute in A
  LD (23695),A            ; Update ATTR T system variable with window content
                          ; attribute
  CALL 35940              ; Fill a region of Attribute File with specified
                          ; attribute
  CALL 35994              ; Blank the interior of the window (Display File)
  LD HL,23493             ; Load x-coordinate of left of interior of window
                          ; into C...
  LD C,(HL)               ; ...
  INC HL                  ; Load y-coordinate of top of interior of window into
                          ; B...
  LD B,(HL)               ; ...
  CALL 54132              ; Move Bitmap Virtual Cursor (bitmap) to top-left of
                          ; interior or window and load address into HL
  PUSH HL                 ; Store HL (address in Display File of top-left of
                          ; interior of window)
; The operand of the instruction at 35086 represents the "Draw Hand Menu
; Cursor" Flag. This is modified by the instructions at 34985 and 34993.
  LD A,0                  ; Load A with "Draw Hand Menu Cursor" Flag
  CP 105                  ; If value is not 105...
  JP NZ,35114             ; ...then jump to 35114 (i.e. don't draw the hand
                          ; cursor)
; Window is a menu (105)
  LD BC,(23493)           ; Load B with y-coordinate of top edge and C with
                          ; x-coordinate of left edge
  LD A,(23456)            ; Load A with starting y-coordinate of hand cursor
  ADD A,B                 ; Add y-coordinate of top of area to this...
  LD B,A                  ; ...and place back into B
  LD A,2                  ; Load A with 2 (graphic lookup index of Menu Hand
                          ; Cursor graphic in table at 55950)
  LD DE,514               ; Load D (graphic width) with 2 and E (graphic
                          ; height) with 2
  PUSH IX                 ; Store IX
  CALL 54414              ; Draw a Graphic with Lookup Index A at Character
                          ; Coordinates (C, B) with width = E characters and
                          ; height = D characters
  POP IX                  ; Restore IX
  XOR A                   ; Set A to zero
  LD (23479),A            ; Set hand cursor's current y-coordinate to zero
                          ; (i.e. defaults to top of its movement range within
                          ; current window)
  POP HL                  ; Restore HL (address in Display File of top-left of
                          ; interior of window)
  LD (54110),HL           ; Set memory location to start printing character in
                          ; character printing routine
  RET                     ; Return

; Draw a Window Frame
;
; Used by the routine at 34990.
  LD (23695),A            ; Store border attribute in ATTR T system variable
  LD A,(23493)            ; Load A with x-coordinate of left of window
  LD C,A                  ; Copy into C
  LD A,(23495)            ; Load A with x-coordinate of right of window
  SUB C                   ; Get distance between left and right coordinates
  DEC A                   ; Subtract 1 to get width of window top-edge (not
                          ; including corner pieces)
  LD C,A                  ; Transfer this to BC...
  LD B,0                  ; ...
  PUSH BC                 ; Store BC (width of top edge of window, not
                          ; including corner pieces)
  LD BC,(23493)           ; Load B with y-coordinate of top edge and C with
                          ; x-coordinate of left edge
  INC C                   ; Increase C by one (as top edge strictly starts one
                          ; to the right of this x-coordinate - the left-most
                          ; is actually a corner piece, not an edge)
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  POP HL                  ; Restore HL (width of top edge of window, not
                          ; including corner pieces)
  PUSH HL                 ; Store HL (width of top edge of window, not
                          ; including corner pieces)
  HALT                    ; Wait for interrupt
  CALL 35285              ; Draw upper window frame edge then increment the
                          ; border character index in routine at 54231
  LD A,(23493)            ; Load C with x-coordinate of left of window...
  LD C,A                  ; ...
  LD A,(23496)            ; Load B with y-coordinate of bottom of window...
  LD B,A                  ; ...
  INC C                   ; Increase C by one (as bottom edge strictly starts
                          ; one to the right of this x-coordinate - the
                          ; left-most is actually a corner piece, not an edge)
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  POP HL                  ; Restore HL (width of bottom edge of window)...
  CALL 35285              ; Draw lower window frame edge then increment the
                          ; border character index in routine at 54231
  LD A,(23494)            ; Load y-coordinate of top of window into B...
  LD B,A                  ; ...
  LD A,(23496)            ; Load y-coordinate of bottom of window into A
  SUB B                   ; Subtract B...
  DEC A                   ; ...and decrease by one to get length of left-edge
                          ; (not including corner pieces)
  PUSH AF                 ; Store AF (A = remaining length of left / right
                          ; edges)
  LD BC,(23493)           ; Load B with y-coordinate of top edge and C with
                          ; x-coordinate of left edge
  ADD A,B                 ; Add A and B to get y-coordinate of character to
                          ; draw in left edge...
  LD B,A                  ; ...and load into B
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  LD A,(54235)            ; Load A with index of character (left edge) to draw
  CALL 54097              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  LD HL,(54110)           ; Load HL with address of Bitmap Virtual Text Cursor
  LD A,L                  ; Load A with LSB of Display File address (virtual
                          ; attribute cursor location)
  AND 224                 ; Decrease to nearest multiple of 32 (i.e. start of
                          ; character row)...
  LD L,A                  ; ...and place back in L
  LD A,(23495)            ; Load A with x-coordinate of right edge of window
                          ; (characters)
  OR L                    ; Add this x-coordinate to value in HL...
  LD L,A                  ; ...
  LD (54110),HL           ; ...and update address of Bitmap Virtual Text Cursor
  LD A,(54235)            ; Load A with index of character (left edge) to
                          ; draw...
  INC A                   ; ...and increment index to get index of right-edge
                          ; character
  CALL 54097              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  POP AF                  ; Restore AF (A = remaining length of left / right
                          ; edges)
  DEC A                   ; Decrease remaining length
  JP NZ,35178             ; If remaining length is not zero then loop back to
                          ; 35178
  LD A,(23495)            ; Load C with x-coordinate of right edge of window
                          ; (characters)...
  LD C,A                  ; ...
  LD A,(23494)            ; Load y-coordinate of top edge of window into B...
  LD B,A                  ; ...
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  LD A,(54235)            ; Load A with index of character (left-edge) to
                          ; draw...
  INC A                   ; ...and increment (to get right-edge character)
  CALL 35291              ; Increment index again (to get top-right corner
                          ; character) and store at 54234
  CALL 54097              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  LD BC,(23495)           ; Load B with y-coordinate of window's bottom edge
                          ; and C with x-coordinate of window's right-edge
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  CALL 35288              ; Increment index of window frame character currently
                          ; in use to get bottom-right corner character
  CALL 54097              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  LD A,(23493)            ; Load C with x-coordinate of left edge of current
                          ; window to draw (characters)...
  LD C,A                  ; ...
  LD A,(23496)            ; Load B with y-coordinate of window's bottom edge...
  LD B,A                  ; ...
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  CALL 35288              ; Increment index of window frame character currently
                          ; in use to get bottom-left corner character
  CALL 54097              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  LD BC,(23493)           ; Load B with y-coordinate of top-edge of window and
                          ; C with x-coordinate of left-edge of window
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  CALL 35288              ; Increment index of window frame character currently
                          ; in use to get top-left corner character
  JP 54097                ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor and return

; Draw an upper or lower window frame edge then increment the border character
; index
;
; Used by the routine at 35123. Input:  A  (Input, 35291) Previous border edge
; character index used HL  (Input, 35285) Width of window edge to draw
; (characters, minus 1)
  CALL 54231              ; Draw an Edge of Frame of a Window
; This entry point is used by the routine at 35123.
  LD A,(54235)            ; Load A with window edge border character previously
                          ; used
; This entry point is used by the routine at 35123.
  INC A                   ; Increase index of window edge border character to
                          ; use next...
  LD (54235),A            ; ...and store at 54234
  RET                     ; Return

; Process Keyboard / Joystick Input on a Menu and Load A with Selected Item
; Index
;
; Used by the routines at 26670, 26745, 30001, 30145, 30686, 31041, 31537,
; 31688, 32895, 33952, 34122 and 55115. Output: A  Selected menu item index
; (zero-based)
  LD A,(35087)            ; Check whether to draw hand cursor on menu...
  CP 105                  ; ...and if not...
  RET NZ                  ; ...then return
  LD A,(23493)            ; Load A with x-coordinate of left edge of current
                          ; window to draw (characters)...
  LD (23489),A            ; ...and store at 23489
  INC A                   ; Increase by one character...
  LD (23490),A            ; ...and store for later use
  LD A,(23456)            ; Load starting y-coordinate of hand cursor into A...
  LD B,A                  ; and copy into B
  LD A,(23494)            ; Load y-coordinate of current window's top-left
                          ; corner into A...
  ADD A,B                 ; ...add to B...
  ADD A,A                 ; ...and multiply by 8 to get y-coordinate of top of
                          ; hand cursor in pixels...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (23491),A            ; Then store for later use
  LD A,(23496)            ; Load y-coordinate of current window's bottom edge
                          ; into A...
  ADD A,A                 ; ...multiply by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,7                 ; ...then add 7 to get y-coordinate of absolute
                          ; bottom of window in pixels
  LD (23492),A            ; ...and store for later
  LD A,(23494)            ; Load y-coordinate of current window's top-left
                          ; corner into A...
  LD B,A                  ; ...and copy into B
  LD A,(23496)            ; Load y-coordinate of current window's bottom-right
                          ; corner into A...
  SUB B                   ; ...subtract B...
  DEC A                   ; ...then subtract one to get height of window, not
                          ; including frame
  LD B,A                  ; Copy this into B
  LD A,(23456)            ; Load A with initial y-coordinate of hand cursor
                          ; relative to current window...
  SUB B                   ; ...subtract B...
  NEG                     ; ...and negate to give vertical distance available
                          ; to hand cursor to move
  ADD A,A                 ; Multiply this by eight to convert from characters
                          ; to pixels...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (23475),A            ; ...and store at 23475
  LD A,(23479)            ; Load A with current y-coordinate of hand cursor
                          ; relative to its starting position (pixels)...
  CALL 35525              ; ...and invert INK and PAPER bits to highlight
                          ; currently active menu item at this position
; This entry point is used by the routines at 35397 and 35459.
  CALL 54942              ; Capture keyboard or joystick input loading result
                          ; into A
  HALT                    ; Wait for interrupt
  BIT 2,A                 ; If "up" pressed then...
  JP NZ,35397             ; ...jump to routine to move Hand Cursor up and
                          ; update menu item highlighting
  BIT 3,A                 ; If "down" pressed then...
  JP NZ,35459             ; ...jump to routine to move Hand Cursor down and
                          ; update menu item highlighting
  BIT 4,A                 ; If "fire" has not been pressed then...
  JR Z,35365              ; Loop back to 35365
  JP 35497                ; Load A with (zero-based) index of selected menu
                          ; item and return

; Wait for Fire Button / Key to be Released
;
; Used by the routines at 30001, 35497 and 55138.
  PUSH AF                 ; Store AF
  HALT                    ; Wait for interrupt
  CALL 54942              ; Capture keyboard or joystick input loading result
                          ; into A
  BIT 4,A                 ; If fire button / key pressed...
  JR NZ,35387             ; ...loop back to 35387
  POP AF                  ; Restore AF
  RET                     ; Return

; Move Hand Cursor Up and Update Menu Item Highlighting
;
; Used by the routine at 35296.
  LD A,(23479)            ; Load menu hand cursor's current y-coordinate into A
  OR A                    ; If coordinate is zero...
  JP Z,35365              ; ...then jump to 35365 (return to menu input
                          ; handling routine)
  LD (23478),A            ; Store y-coordinate (pixels) at 23478
  PUSH AF                 ; Store AF (A = Menu Hand Cursor's y-coordinate, in
                          ; pixels)
  ADD A,5                 ; Add five (as the "finger" of the cursor naturally
                          ; points five pixels below the cursor's actual
                          ; position)
  RRCA                    ; Divide this new y-coordinate by eight to get
                          ; y-coordinate in characters...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  LD C,A                  ; Load this y-coordinate into C
  POP AF                  ; Restore AF (A = Menu Hand Cursor's y-coordinate, in
                          ; pixels)
  DEC A                   ; Decrease y-coordinate (pixels) by two...
  DEC A                   ; ...
  LD (23479),A            ; Store new y-coordinate (in pixels)
  PUSH BC                 ; Store BC (C = y-coordinate, in characters and
                          ; before move, of Menu Hand Cursor's finger)
  CALL 55401              ; Scroll a region of the Display File up two pixel
                          ; rows without wrapping...
  CALL 55401              ; ...
; This entry point is used by the routine at 35459.
  POP BC                  ; Restore BC (C = y-coordinate, in characters and
                          ; before move, of Menu Hand Cursor's finger)
  LD A,(23479)            ; Load menu hand cursor's new y-coordinate (in
                          ; pixels) into A
  ADD A,5                 ; Add five (as the "finger" of the cursor naturally
                          ; points five pixels below the cursor's actual
                          ; position)
  RRCA                    ; Divide this new y-coordinate by eight to get
                          ; y-coordinate in characters...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  CP C                    ; If new y-coordinate of Menu Hand Cursor (in
                          ; characters) is the same as its previous
                          ; y-coordinate...
  JP Z,35365              ; ...then jump to 35365 (return to menu input
                          ; handling routine)
  LD A,(23478)            ; Load A with previous y-coordinate in pixels...
  CALL 35525              ; ...and invert INK and PAPER bits to remove
                          ; highlighting at this location
  LD A,(23479)            ; Load A with new y-coordinate in pixels...
  CALL 35525              ; and invert INK and PAPER bits to apply highlighting
                          ; at this location
  JP 35365                ; Jump to 35365 (return to menu input handling
                          ; routine)

; Move Hand Cursor Down and Update Menu Item Highlighting
;
; Used by the routine at 35296.
  LD A,(23479)            ; Load menu hand cursor's current y-coordinate into A
  LD HL,23475             ; If height available to Menu Hand Cursor to move
                          ; down (in pixels, stored at 23475) is the same as
                          ; the cursor's current y-coordinate...
  CP (HL)                 ; ...i.e. the cursor cannot move any further down...
  JP Z,35365              ; ...then jump to 35365 (return to menu input
                          ; handling routine)
  LD (23478),A            ; Store y-coordinate (pixels) at 23478
  PUSH AF                 ; Store AF (A = Menu Hand Cursor's y-coordinate, in
                          ; pixels)
  ADD A,5                 ; Add five (as the "finger" of the cursor naturally
                          ; points five pixels below the cursor's actual
                          ; position)
  RRCA                    ; Divide this new y-coordinate by eight to get
                          ; y-coordinate in characters...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  LD C,A                  ; Load this y-coordinate into C
  POP AF                  ; Restore AF (A = Menu Hand Cursor's y-coordinate, in
                          ; pixels)
  INC A                   ; Increase y-coordinate (pixels) by two...
  INC A                   ; ...
  LD (23479),A            ; Store new y-coordinate (in pixels)
  PUSH BC                 ; Store BC (C = y-coordinate, in characters and
                          ; before move, of Menu Hand Cursor's finger)
  CALL 55436              ; Scroll a region of the Display File down two pixel
                          ; rows without wrapping...
  CALL 55436              ; ...
  JP 35429                ; Jump to 35429 (update menu highlighting as
                          ; appropriate then jump to menu input handling
                          ; routine)

; Load A with (Zero-Based) Index of Selected Menu Item
;
; Used by the routine at 35296. Output: A  Selected menu item index
; (zero-based)
  CALL 35386              ; Wait for Fire Button / Key to be Released
  LD BC,(23476)           ; Load BC with absolute coordinates (characters) of
                          ; start of row of text of interest in menu
  LD A,(23456)            ; Load C with initial y-coordinate of top of Hand
                          ; Cursor relative to current window (characters)...
  LD C,A                  ; ...
  LD A,(23494)            ; Load A with y-coordinate of top edge of current
                          ; window (characters)...
  ADD A,C                 ; ...add C...
  INC A                   ; ...and add 1 to get absolute y-coordinate of first
                          ; item in menu
  LD C,A                  ; Store y-coordinate in C
  LD A,B                  ; Load A with y-coordinate of row of text of interest
                          ; in menu
  SUB C                   ; Subtract absolute y-coordinate of first item in
                          ; menu to give zero-based index of selected item
  PUSH AF                 ; Store AF (A = selected item index)
  LD A,(23479)            ; Load A with current y-coordinate of hand cursor
                          ; relative to its starting position (pixels)...
  CALL 35525              ; ...and use to de-highlight selected menu item
  POP AF                  ; Restore AF (A = selected item index)
  RET                     ; Return

; Invert INK and PAPER bits to (De-)Highlight Currently Active Menu Item
;
; Used by the routines at 35296, 35397 and 35497. Input:  A  y-coordinate of
; Menu Hand Cursor (pixels)
  PUSH AF                 ; Store AF (A = y-coordinate of Menu Hand Cursor)
  LD A,(23493)            ; Load A with x-coordinate of left edge of current
                          ; window to draw (characters)
  ADD A,2                 ; Add 2, as Menu Hand Cursor is two characters
                          ; wide...
  LD C,A                  ; ...and load into C (x-coordinate of start of row of
                          ; text in menu)
  POP AF                  ; Restore AF (A = y-coordinate of Menu Hand Cursor)
  ADD A,5                 ; Add five (as the "finger" of the cursor naturally
                          ; points five pixels below the cursor's actual
                          ; position)
  CALL 28625              ; Divide this new y-coordinate by eight to get
                          ; y-coordinate in characters
  LD B,A                  ; Load this y-coordinate into B
  LD A,(23456)            ; Load initial y-coordinate of top of hand cursor
                          ; relative to current window, into A
  ADD A,B                 ; Add this to y-coordinate of "finger"
  LD B,A                  ; Load this into B, so that B now contains
                          ; y-coordinate of "finger" relative to top of window
                          ; (characters)
  LD A,(23494)            ; Load y-coordinate of top edge of current window
                          ; into A
  ADD A,B                 ; Add...
  INC A                   ; ...then add one (for window frame at top) so we now
                          ; have absolute y-coordinate of "finger"
  LD B,A                  ; Load into B
  LD (23476),BC           ; Store coordinates at 23476
  CALL 54148              ; Point HL at Attribute File address for character
                          ; coordinates x=C, y=B
  LD A,(23493)            ; Load B with x-coordinate of left edge of current
                          ; window to draw (characters)...
  LD B,A                  ; ...
  LD A,(23495)            ; Load A with x-coordinate of right edge of current
                          ; window...
  SUB B                   ; ...and subtract x-coordinate of left edge to get
                          ; width
  DEC A                   ; Decrease width by one to take into account window
                          ; frame width...
  LD B,A                  ; ...and load into B
  LD A,(HL)               ; Load attribute at current position in Attribute
                          ; File into A
  AND 56                  ; Reset INK, BRIGHT and FLASH bits, preserving PAPER
                          ; only
  RRCA                    ; Shift PAPER bits into INK bit slots...
  RRCA                    ; ...
  RRCA                    ; ...
  LD C,A                  ; Store this value (new INK colour) in C
  LD A,(HL)               ; Load attribute at current position in Attribute
                          ; File into A
  RLCA                    ; Shift all bits right by three (i.e. INK bits now
                          ; contain former PAPER colour)...
  RLCA                    ; ...
  RLCA                    ; ...
  AND 56                  ; Reset INK, BRIGHT and FLASH bits, preserving PAPER
                          ; only (i.e. PAPER bits now contain former INK
                          ; colour)
  OR C                    ; Merge modified PAPER value back in, to give new
                          ; attribute (i.e. swapped INK and PAPER colours)...
  LD C,A                  ; ...and load into C
  LD A,(HL)               ; Load attribute at current position in Attribute
                          ; File into A
  AND 192                 ; Reset INK and PAPER bits, preserving BRIGHT and
                          ; FLASH only...
  OR C                    ; ...and merge in swapped INK and PAPER values
  LD (HL),A               ; Write this new attribute value back to the
                          ; Attribute File
  INC HL                  ; Advance HL to next byte in Attribute File
  DJNZ 35586              ; Decrease B (remaining number of characters to
                          ; invert) and loop back to 35586 for next character
                          ; block
  RET                     ; Return

; Convert Numeric Value BC to ASCII String at Location HL
;
; Used by the routine at 34697. Input:  BC  A numeric value HL  Points to
; location to hold a five-character string
  PUSH DE                 ; Store DE
  LD DE,53419             ; Point DE at table of powers of ten
  PUSH BC                 ; Store BC (value)
  PUSH HL                 ; Store HL (location to hold string)
  PUSH HL                 ; Store HL (location to hold string)
  LD H,B                  ; Load BC (value) into HL...
  LD L,C                  ; ...
  EX DE,HL                ; Swap DE (now value) and HL (now pointer to table of
                          ; powers of ten)
  LD C,(HL)               ; Read WORD at HL (power of ten) into BC...
  INC HL                  ; ...and advance HL by two bytes...
  LD B,(HL)               ; ...
  INC HL                  ; ...
  EX DE,HL                ; Swap DE (now pointer to next power of ten) and HL
                          ; (now value)
  LD A,47                 ; Load A with 47 (ASCII code immediately prior to
                          ; that for zero, "0")
  INC A                   ; Increase A to next ASCII character
  OR A                    ; (Re)Set carry flag
  SBC HL,BC               ; Subtract (BC [power of ten] + carry flag) from HL
                          ; (value)
  JR NC,35608             ; If carry flag was not set then loop back to 35608
  ADD HL,BC               ; Add power of ten back to HL
  EX (SP),HL              ; Swap value on top of stack (now remaining value)
                          ; with HL (now location to hold string)
  LD (HL),A               ; Store ASCII code in string and advance HL to next
                          ; slot...
  INC HL                  ; ...
  EX (SP),HL              ; Swap value on top of stack (pointer to current
                          ; position in string) with HL (now remaining value)
  DEC C                   ; Decrease C to check if last power of ten (i.e. 1)
                          ; has been reached...
  JR NZ,35600             ; ...and if not, then loop back to 35600 for next
                          ; power of ten
  POP HL                  ; Restore HL
  POP HL                  ; Restore HL
  POP BC                  ; Restore BC
  POP DE                  ; Restore DE
  RET                     ; Return

; Clear Display File Below 7th Character Row (Play Area)
;
; Used by the routine at 27762.
  LD HL,16608             ; Load HL with Display File address corresponding to
                          ; (0, 7) (characters)...
  LD (54110),HL           ; ...and move Bitmap Virtual Text Cursor here
  LD HL,32                ; Load HL (width parameter) with 32
  LD A,L                  ; Load A with 32 (SPACE character code)...
  LD (54235),A            ; ...and modify instruction at 54234 with this
                          ; operand
  CALL 54231              ; Draw 32 SPACE characters across the screen to clear
                          ; bottom character row of top third of Display File,
                          ; then set HL to zero
  LD BC,8                 ; Clear bottom two thirds of Display File...
  JP 35656                ; ...

; Clear Display File
;
; When this routine is entered via 35649 and 35656, B is set to zero. Upon
; reaching the DJNZ instruction (end of inner loop) at 35664, B is already
; zero, so the loop will execute 256 times, clearing one twelfth of the Display
; File (two bytes cleared per PUSH, 256 PUSHes per loop).
  LD HL,0                 ; Load zero (all bits reset) into HL
  LD BC,12                ; Load B with 0 (repeat inner loop 256 times) and C
                          ; with 12 (repeat outer loop 12 times)
  DI                      ; Disable interrupts
; This entry point is used by the routine at 35627.
  LD (35670),SP           ; Store stack pointer at 35669
  LD SP,22528             ; Point stack pointer at start of attribute section
                          ; of video memory
; This entry point is used by the routine at 28716.
  PUSH HL                 ; Decrease current stack pointer position by two and
                          ; load two zeroes into it
  DJNZ 35663              ; Loop back for next iteration
  DEC C                   ; Decrease C...
  JR NZ,35663             ; ...and repeat if C is still greater than zero, to
                          ; clear the remaining eleven twelfths of the Display
                          ; File
  LD SP,0                 ; Restore stack pointer to original value [Operand
                          ; set by instructions at 28717 and 35656]
  EI                      ; Enable interrupts
  RET                     ; Return

; Flood Attribute File with Value in ATTR T System Variable
;
; Used by the routine at 26884. Input:  A  (Input, entry at 35677) Attribute to
; flood Attribute File with
  LD A,(23695)            ; Load ATTR T system variable into A
; This entry point is used by the routine at 31468.
  LD HL,22528             ; Load HL with start of attribute section of video
                          ; memory
  LD DE,22529             ; Load DE with next byte up
  LD BC,767               ; Load BC with length of data to copy (767 bytes =
                          ; length of attribute area of video memory minus one)
  LD (HL),A               ; Load memory at HL with this attribute...
  LDIR                    ; ...and repeat 767 times
  RET                     ; Return

; Set Parameters for and Play Upward Scale Sound
;
; The value of A (set to zero at the start of this routine, or set to 1 before
; jumps from other routines into 35695) is a delay constant that determines the
; speed at which the sound is played. Input:  A  (Entry at 35695 only) Delay
; constant
  XOR A                   ; Set A to 0
  LD B,13                 ; Set B to 13 (DEC C)
  LD H,A                  ; Set HL to 0...
  LD L,A                  ; ...
; This entry point is used by the routines at 35723 and 35731.
  LD (35709),A            ; Modify instruction at 35708 with value of delay
                          ; constant
  LD A,B                  ; Load B into A
  LD (35717),A            ; Set instruction at 35717
  LD (35718),HL           ; Set instructions at 35718 and 35719
  CALL 35819              ; Load A with current border colour
; The operand of the instruction at 35708 represents the value of the delay
; constant. This is modified by the instruction at 35695.
  LD C,0                  ; Load C with delay constant
  OUT (254),A             ; Set border colour, and reset ear/speaker
  XOR 16                  ; Invert ear/speaker bit of A
  LD B,C                  ; Load C (delay constant) into B...
  DJNZ 35715              ; ...and delay
; The instructions at 35717 - 35719 represent the manipulation of the delay
; constant between iterations of this routine. These instructions may decrease
; C by one, increase C by three or do nothing. These instructions are modified
; by the instructions at 35699 and 35702.
  DEC C                   ; Decrease / increase delay constant for next pass,
                          ; increasing / decreasing pitch of tone respectively
  NOP                     ; Do nothing, or increase delay constant (modified by
                          ; instruction at 35702)
  NOP                     ; Do nothing, or increase delay constant (modified by
                          ; instruction at 35702)
  JR NZ,35710             ; If delay constant is not zero, then loop back to
                          ; continue playing tone
  RET                     ; Return

; Set Parameters for and Play Downward Scale Sound
;
; Used by the routines at 26884, 30001, 32694 and 33952.
  XOR A                   ; Set parameters...
  LD B,12                 ; ...(INC C)...
  LD H,A                  ; ...
  LD L,A                  ; ...
  INC A                   ; ...
  JR 35695                ; ...and play sound

; Set Parameters for and Play Short Downward Scale Sound
;
; Used by the routine at 34122.
  LD A,1                  ; Set parameters...
  LD B,12                 ; ...(INC C)...
  LD H,B                  ; ...
  LD L,B                  ; ...
  JR 35695                ; ...and play sound

; Play Hiss-Type Sound
;
; Used by the routines at 55115 and 55138.
  CALL 35819
  EX AF,AF'
  LD H,0
  LD BC,128
  EX AF,AF'
  OUT (254),A
  XOR 16
  EX AF,AF'
  LD L,0
  LD D,L
  LD E,H
  AND A
  SBC HL,DE
  SBC HL,DE
  LD DE,254
  ADD HL,DE
  LD A,L
  SUB H
  JR C,35772
  DEC A
  LD H,A
  DEC A
  JR NZ,35773
  DEC BC
  LD A,B
  OR C
  JR NZ,35748
  RET

; Set Parameters (for "USS Pisces has Arrived" sound) and Jump to Playing
; Routine
;
; Used by the routine at 31688.
  LD HL,8390              ; Load HL with bytecodes for instruction "ADD A,32"
  LD DE,255               ; Load D with 0 and E with 255
  JR 35796                ; Jump to audio playing routine

; Set Parameters (for Cheat / Debug Routine Sound) and Play
;
; Used by the routine at 55768.
  LD HL,1222              ; Load HL with bytecodes for instruction "ADD A,4"
  LD DE,0                 ; Load D with 0 and E with 0
; This entry point is used by the routine at 35782.
  CALL 35819              ; Load A with current border colour
  LD (35811),HL           ; Set instruction at 35811 to "ADD A,4" or "ADD A,32"
                          ; depending upon value in HL
  OUT (254),A             ; Set current border colour and reset speaker state
  XOR 16                  ; Flip "speaker" bit
  LD B,E                  ; Copy E into B
  DJNZ 35807              ; Delay for period determined by B
  EX AF,AF'               ; Switch AF and AF'
  LD A,E                  ; Copy E into A
  XOR 128                 ; Change E (delay constant)...
  LD E,A                  ; ...
  EX AF,AF'               ; Switch AF and AF' again
  DEC D                   ; Decrease D (initially zero)...
  JR NZ,35802             ; ...and repeat loop (256 times)
  RET                     ; Return

; Get Current Border Colour in A
;
; Used by the routines at 35690, 35739 and 35790. Output: A  Current border
; colour (0 - 7)
  LD A,(23624)            ; Get border & BASIC cursor area attribute
  RRCA                    ; Clear bits for 1, 2 and 4 to leave (border colour *
                          ; 8) only...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 7                   ; Ensure all other bits are cleared
  RET                     ; Return

; Display Acceleration / Deceleration Effect on USS Pisces Viewscreen
;
; Used by the routines at 32065 and 32124.
  LD HL,2055              ; Set x- and y-coordinates of top-left of region to
                          ; fill to (7, 8)...
  LD (23493),HL           ; ...
  LD HL,4376              ; Set x- and y-coordinates of bottom-right of region
                          ; to fill to (24, 17)...
  LD (23495),HL           ; ...
  LD A,71                 ; Set attribute to use in fill to 71 (white INK,
                          ; black PAPER, BRIGHT)...
  LD (35948),A            ; ...
  HALT                    ; Wait for interrupt
  CALL 35940              ; Fill the defined region of Attribute File (i.e.
                          ; viewscreen contents) with attribute 71
  CALL 35882              ; Draw Viewscreen "tunnel" rectangles
  XOR A                   ; Set attribute to use in fill to 0 (black INK, black
                          ; PAPER)...
  LD (35948),A            ; ...
  LD B,16                 ; Load B with 16 (repeat counter)
  PUSH BC                 ; Store BC (B = remaining number of attribute
                          ; updates)
  LD A,(35948)            ; Add eight to attribute value used to fill
                          ; viewscreen contents (i.e. increment PAPER
                          ; component)...
  ADD A,8                 ; ...
  AND 56                  ; Ensure that INK, BRIGHT and FLASH bits are all
                          ; reset
  OR 71                   ; Set INK component to WHITE and set BRIGHT flag
  LD (35948),A            ; Store updated attribute value
  HALT                    ; Wait for interrupt
  CALL 35940              ; Fill the defined region of Attribute File (i.e.
                          ; viewscreen contents) with current attribute value
  POP BC                  ; Restore BC (B = remaining number of attribute
                          ; updates)
  DJNZ 35858              ; Decrease remaining number of attribute updates and
                          ; loop back to 35858 if not zero
  CALL 35882              ; Draw Viewscreen "tunnel" rectangles
  RET                     ; Return

; Draw Viewscreen "Tunnel" Rectangles
;
; Used by the routine at 35828.
  LD HL,35903             ; Point HL at Table of Definitions (Coordinates) of
                          ; Viewscreen "Tunnel" Rectangles
  LD A,(HL)               ; Load A with x-coordinate of right edge of
                          ; rectangle...
  OR A                    ; ...and if this is zero...
  RET Z                   ; ...then return
  LD E,A                  ; Load E with x-coordinate of right edge of rectangle
  INC HL                  ; Advance HL to y-coordinate of bottom edge of
                          ; rectangle...
  LD D,(HL)               ; ...and load into D
  INC HL                  ; Advance HL to x-coordinate of left edge of
                          ; rectangle...
  LD C,(HL)               ; ...and load into C
  INC HL                  ; Advance HL to y-coordinate of top edge of
                          ; rectangle...
  LD B,(HL)               ; ...and load into B
  PUSH HL                 ; Store HL (current position in rectangle definition
                          ; data)
  CALL 36573              ; Draw a Rectangle with Opposite Vertices at (C, B)
                          ; and (E, D) (Pixels)
  POP HL                  ; Restore HL (current position in rectangle
                          ; definition data)
  INC HL                  ; Advance HL to start of next rectangle's definition
                          ; data
  JR 35885                ; Loop back to 35885 to draw next rectangle

; Table of Definitions (Coordinates) of Viewscreen "Tunnel" Rectangles
  DEFB 121,74,135,66
  DEFB 114,78,142,62
  DEFB 107,82,149,58
  DEFB 100,86,156,54
  DEFB 93,90,163,50
  DEFB 86,94,170,46
  DEFB 79,98,177,42
  DEFB 72,102,184,38
  DEFB 65,106,191,34
  DEFB 0                  ; End Marker

; Fill a Region of Attribute File with Specified Attribute (e.g. Background
; Colour and Colour of Text Within)
;
; Used by the routines at 32158, 32252, 32602, 34990 and 35828.
  LD BC,(23493)           ; Load BC with the coordinates of the top-left corner
                          ; of the area to fill
  CALL 54148              ; Load HL with Attribute File address for coordinates
                          ; (C, B)
; The operand of the instruction at 35947 is an attribute value. This is
; modified by the instructions at 32170, 32411, 32440, 32613, 35064, 35842,
; 35853 and 35868.
  LD A,0                  ; Load attribute to place into A
  LD (HL),A               ; Apply attribute data to Attribute File address in
                          ; HL
  LD A,(23495)            ; Load A with x-coordinate of right side of area to
                          ; fill
  CP C                    ; Check if left and right edges are at same
                          ; x-coordinate (i.e. zero width)...
  JP Z,35970              ; ...and if so, skip to 35970
  INC C                   ; Increase C
  LD A,C                  ; Copy C into A
  AND 31                  ; Ensure current x-coordinate doesn't exceed 31 (i.e.
                          ; width of screen)
  LD C,A                  ; Place back into C
  LD A,L                  ; Get LSB of Attribute File address
  AND 224                 ; Decrease to nearest multiple of 32 (i.e. start of
                          ; character row in Attribute File)
  ADD A,C                 ; Add x-offset (i.e. current x-coordinate, C)
  LD L,A                  ; Update HL with x-offset
  JP 35947                ; Loop back to 35947 to print next attribute block
  LD A,(23493)            ; Get x-coordinate of left of area to fill
  LD C,A                  ; Store in C
  LD A,(23496)            ; Get y-coordinate of bottom of area to fill
  CP B                    ; Compare with y-coordinate of top of area to fill
  RET Z                   ; If no difference between current y-coordinate and
                          ; y-coordinate of bottom of area to fill then exit
                          ; function and return
  INC B                   ; Advance current y-coordinate down one unit
  LD A,B                  ; Copy current y-coordinate into A...
  CP 24                   ; ...and ensure it doesn't exceed 24 (i.e. height of
                          ; screen)...
  JP NZ,35988             ; ...if it doesn't then skip ahead to 35988...
  LD B,0                  ; ...else set current y-coord to zero (top of screen)
  CALL 54148              ; Load HL with Attribute File address for coordinates
                          ; (C, B)
  JP 35947                ; Loop back to print next attribute block row

; Blank the Interior of an Area of the Display File (i.e. Set Bytes to Zero)
;
; Used by the routine at 34990.
  PUSH IX                 ; Store IX
  LD BC,(23493)           ; Load B with y-coordinate of top, and C with
                          ; x-coordinate of left of area to fill
  LD DE,(23495)           ; Load D with y-coordinate of bottom, and E with
                          ; x-coordinate of right of area to fill
  LD L,C                  ; Load HL with x-coordinate of left of area to
                          ; fill...
  LD H,0                  ; ...
  LD (36054),HL           ; ...and store as operand of instruction at 36053
  LD A,D                  ; Load A with y-coordinate of bottom of area to
                          ; fill...
  SUB B                   ; ...subtract B (y-coordinate of top of area to
                          ; fill)...
  INC A                   ; ...and add one to give number of rows to fill
  ADD A,A                 ; Multiply A by eight to get number of pixel rows to
                          ; fill...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (36045),A            ; ...and store as operand of instruction at 36044
  LD A,B                  ; Load A with y-coordinate of top of area to fill
                          ; (characters)...
  ADD A,A                 ; ...and multiply by eight to get y-coordinate in
                          ; pixels...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; Load y-coordinate (pixels) into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Double HL (as entries in table at 26240 are two
                          ; bytes wide)
  PUSH DE                 ; Store DE (coordinates of bottom right of area to
                          ; fill)
  LD DE,26240             ; Point DE at Table of Display File Addresses of
                          ; Start of Each Pixel Row
  ADD HL,DE               ; Add HL as offset, in HL
  POP DE                  ; Restore DE (coordinates of bottom right of area to
                          ; fill)
  PUSH HL                 ; Copy pointer to entry in table of Display File
                          ; addresses for start of pixel row at top of area to
                          ; fill from HL to IX...
  POP IX                  ; ...
  LD A,E                  ; Load A with x-coordinate of right of area to fill
                          ; (characters)...
  SUB C                   ; ...subtract C (x-coordinate of left of area to
                          ; fill)...
  LD L,A                  ; ...and load into HL...
  LD H,0                  ; ...
  LD (36061),HL           ; ...and store as operand of instruction at 36060
; The operand of the instruction at 36044 represents the number of pixel rows
; to fill. This is modified by the instruction at 36016.
  LD B,0                  ; Load B with number of pixel rows to fill
  PUSH BC                 ; Store BC (B = remaining number of pixel rows to
                          ; fill)
  LD L,(IX+0)             ; Load HL with Display File address of start of
                          ; current pixel row...
  LD H,(IX+1)             ; ...
; The operand of the instruction at 36053 represents the x-coordinate of the
; area to fill (characters). This is modified by the instruction at 36007.
  LD BC,0                 ; Load BC with x-coordinate of area to fill
                          ; (characters)...
  ADD HL,BC               ; ...and add to HL as offset
  PUSH HL                 ; Copy Display File address of left-most byte of top
                          ; pixel row of area to fill from HL to DE...
  POP DE                  ; ...
  INC DE                  ; Advance DE to next address in Display File
; The operand of the instruction at 36060 represents the width, minus 1, of the
; area to fill (characters). This is modified by the instruction at 36041.
  LD BC,0                 ; Load BC with width, minus 1, of area to fill
                          ; (characters)
  LD (HL),0               ; Set content of this address to zero...
  LDIR                    ; ...and repeat for remaining BC addresses, clearing
                          ; entire pixel row within specified x-coordinates
  POP BC                  ; Restore BC (B = remaining number of pixel rows to
                          ; fill)
  INC IX                  ; Advance IX by two bytes to point to start address
                          ; of next pixel row down in Display File...
  INC IX                  ; ...
  DJNZ 36046              ; Decrease B (remaining number of pixel rows to fill)
                          ; and loop back to 36046 if not zero
  POP IX                  ; Restore IX
  RET                     ; Return

; Draw all Objects in Magic Knight's Current Room
;
; Used by the routine at 28101.
  LD IX,25286             ; Point IX at start of Objects' Current Positions
                          ; Table
  LD C,0                  ; Set current object to zero
  LD B,36                 ; Set counter to 36 (as there are 37 objects,
                          ; including "Nothing at All", but the last, the "10
                          ; MW Laser" never appears outside Klink's inventory)
  LD A,(23701)            ; Load A with Magic Knight's current room
  CP (IX+0)               ; If object and Magic Knight are in the same room...
  CALL Z,36115            ; ...then set Terrain Interaction Data for character
                          ; blocks spanned by that object and draw
  INC C                   ; Increase C
  INC IX                  ; Advance to next object...
  INC IX                  ; ...
  INC IX                  ; ...
  DJNZ 36085              ; ...and loop back to 36085 for next object
  RET                     ; Return

; Set Terrain Interaction Data for Character Blocks Spanned by an Object and
; Draw the Object
;
; Used by the routine at 30145. Input:  A  Index of object to draw (entry at
; 36104 only) B  y-coordinate (entry at 36104 only) C  x-coordinate (entry at
; 36104 only) IX  Position data for an object (entry at 36115 only)
  LD IX,23296             ; Store object's position data temporarily at 23296 -
                          ; 23298...
  LD (IX+1),C             ; ...x-coordinate...
  LD (IX+2),B             ; ...y-coordinate...
  LD C,A                  ; Load index of object of interest into C
; This entry point is used by the routine at 36077.
  PUSH BC                 ; Store BC
  PUSH IX                 ; Store IX
  LD A,C                  ; Load HL with eight times current object index...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; ...
  LD H,0                  ; ...
  ADD HL,HL               ; ...
  LD DE,37448             ; Point DE at last byte (graphic index) of "Nothing
                          ; at All" properties
  ADD HL,DE               ; Add eight times current object index as offset
  LD A,(HL)               ; Load graphic index into A
  PUSH AF                 ; Store AF (A = graphic index)
  DEC HL                  ; Move pointer back one byte to point at attribute of
                          ; object...
  LD A,(HL)               ; ...
  LD (23695),A            ; ...and copy into System Variable ATTR T
  DEC HL                  ; Move pointer back one byte to point at object's
                          ; Terrain Interaction Parameter...
  LD A,(HL)               ; ...and store at 23473...
  LD (23473),A            ; ...
  DEC HL                  ; Move pointer back one byte to point at object's
                          ; Attribute Flags...
  LD A,(HL)               ; ...load into A...
  AND 15                  ; ...clear upper four bits...
  LD (36184),A            ; ...and store as operand of instruction at 36183
  LD C,(IX+1)             ; Load C with x-coordinate of current object
  LD B,(IX+2)             ; Load B with y-coordinate of current object
  DEC B                   ; Decrease y-coordinate by one to point to object's
                          ; top-left character block
  POP AF                  ; Restore AF (A = graphic index)
  PUSH IX                 ; Store IX (pointer to position data for object)
  PUSH BC                 ; Store BC (x- and y-coordinates of object's top-left
                          ; character block)
  CALL 54406              ; Draw object with lookup index A at character
                          ; coordinates (C, B)
  POP BC                  ; Restore BC (x- and y-coordinates of object's
                          ; top-left character block)
  PUSH BC                 ; Store BC (x- and y-coordinates of object's top-left
                          ; character block)
  LD A,B                  ; If object's y-coordinate is 4 (i.e. drawn in window
                          ; at top while carrying mirror)...
  CP 4                    ; ...
  JR Z,36176              ; ...then skip ahead to 36176
  LD A,(23705)            ; If Player Attribute Update Flag is reset (Player
                          ; Attribute Ignore mode)...
  OR A                    ; ...
  JP Z,36211              ; ...then skip ahead to 36211
  CALL 54148              ; Load HL with Attribute File address for coordinates
                          ; (C, B)
  LD A,(23695)            ; Load E with value of system variable ATTR T...
  LD E,A                  ; ...
; The operand of the instruction at 36183 represents the object's Attribute
; Flags. This is modified by the instruction at 36145.
  LD A,0                  ; Load A with object's Attribute Flags
  BIT 0,A                 ; If Paint Top-Left Flag is reset...
  JR Z,36190              ; ...then skip ahead to 36190
  LD (HL),E               ; Paint top-left character block of object with
                          ; object attribute
  INC HL                  ; Increase HL to move to top-right character block
  BIT 1,A                 ; If Paint Top-Right Flag is reset...
  JR Z,36196              ; ...then skip ahead to 36196
  LD (HL),E               ; Paint top-right character block of object with
                          ; object attribute
  LD BC,31                ; Advance HL by 31 bytes...
  ADD HL,BC               ; ...to point to bottom-left character block of
                          ; object
  BIT 2,A                 ; If Paint Bottom-Left Flag is reset...
  JR Z,36205              ; ...then skip ahead to 36205
  LD (HL),E               ; Paint bottom-left character block of object with
                          ; object attribute
  INC HL                  ; Increase HL to move to bottom-right character block
  BIT 3,A                 ; If Paint Bottom-Right Flag is reset...
  JR Z,36211              ; ...then skip ahead to 36211
  LD (HL),E               ; Paint bottom-right character block of object with
                          ; object attribute
  POP BC                  ; Store BC (x- and y-coordinates of object's top-left
                          ; character block)
  CALL 54162              ; Point HL at terrain interaction data for character
                          ; coordinates x=C, y=B
  LD A,(23473)            ; Load E with object's Terrain Interaction
                          ; Parameter...
  LD E,A                  ; ...
  LD A,(36184)            ; Load A with object's Attribute Flags
  BIT 0,A                 ; If Paint Top-Left Flag is reset...
  JR Z,36227              ; ...then skip ahead to 36227
  LD (HL),E               ; "Paint" object's Terrain Interaction Parameter into
                          ; Terrain Interaction Data Table for top-left
                          ; character block
  INC HL                  ; Increase HL to move to top-right character block
  BIT 1,A                 ; If Paint Top-Right Flag is reset...
  JR Z,36233              ; ...then skip ahead to 36233
  LD (HL),E               ; "Paint" object's Terrain Interaction Parameter into
                          ; Terrain Interaction Data Table for top-right
                          ; character block
  LD BC,31                ; Advance HL by 31 bytes...
  ADD HL,BC               ; ...to point to bottom-left character block of
                          ; object
  BIT 2,A                 ; If Paint Bottom-Left Flag is reset...
  JR Z,36242              ; ...then skip ahead to 36242
  LD (HL),E               ; "Paint" object's Terrain Interaction Parameter into
                          ; Terrain Interaction Data Table for bottom-left
                          ; character block
  INC HL                  ; Increase HL to move to bottom-right character block
  BIT 3,A                 ; If Paint Bottom-Right Flag is reset...
  JR Z,36248              ; ...then skip ahead to 36248
  LD (HL),E               ; "Paint" object's Terrain Interaction Parameter into
                          ; Terrain Interaction Data Table for bottom-right
                          ; character block
  POP IX                  ; Restore IX (pointer to position data for object)
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  RET                     ; Return

; Remove Object C from a Character's Inventory and Tidy Up Remaining Entries
;
; Used by the routines at 29488, 29619, 29756, 31537 and 34265. Input:  B
; Number of inventory slots to check C  Index of object to be removed HL
; Pointer to a character's current inventory
  LD A,(HL)               ; Load A with inventory object
  CP C                    ; If this matches index in C...
  JR Z,36262              ; ...then skip ahead to 36262
  INC HL                  ; Advance to next inventory slot...
  DJNZ 36254              ; ...and loop back to 36254 for next slot
  RET                     ; Return if object not found
  INC HL                  ; Advance to next inventory slot
  LD A,(HL)               ; Load object at this slot into A
  DEC HL                  ; Move back to previous slot again
  LD (HL),A               ; Place object from next slot into current one
  INC HL                  ; Advance to next slot again
  DJNZ 36262              ; Loop back to 36262 (i.e. repeat for all remaining
                          ; slots)
  DEC HL                  ; Move back to previous slot (i.e. final slot for
                          ; this character)...
  XOR A                   ; ...and set to empty...
  LD (HL),A               ; ...
  RET                     ; Return

; Reset Star to Point of Origin and Generate a New Direction and Movement Data
;
; Used by the routines at 36321 and 36415. Input:  IX  Points to an entry in
; table of stars' movement data at 24832
  CALL 55740              ; Set new random seed and load LSB of this (random
                          ; value) into A and E
  AND 31                  ; Discard bits five to seven
  SUB 15                  ; Subtract 15
  LD B,A                  ; Load result into B (random number -15 to 16)
                          ; (y-component of star's direction)
  CALL 55740              ; Set new random seed and load LSB of this (random
                          ; value) into A and E
  AND 31                  ; Discard bits five to seven
  SUB 15                  ; Subtract 15
  LD C,A                  ; Load result into C (random number -15 to 16)
                          ; (x-component of star's direction)
  LD A,128                ; Add to 128 (set bit 7) in C...
  ADD A,C                 ; ...
  LD C,A                  ; ...(random number 113 to 144)
  LD A,B                  ; Add 70 to B...
  ADD A,70                ; ...
  LD B,A                  ; ...(random number 55 to 86)
  CP 70                   ; If A is not 70 (i.e. y-direction component is not
                          ; zero)...
  JR NZ,36306             ; ...skip ahead to 36306
  LD C,A                  ; If A (loaded into C) is 128... [bug: this
                          ; instruction only executed if A is 87, so how could
                          ; it ever be 128 here? This should actually be LD
                          ; A,C, preventing stars having zero for both
                          ; direction components]
  CP 128                  ; ...
  JR Z,36273              ; ...then restart this routine to generate two new
                          ; random numbers/seeds
  LD DE,18048             ; Load D (initial y-coordinate) with 70 and E
                          ; (initial x-coordinate) with 128
  PUSH DE                 ; Store DE
  CALL 36434              ; Set up star's movement data based upon starting
                          ; position and direction
  POP DE                  ; Restore DE
  LD (IX+0),E             ; Set star's initial coordinates as (128, 70)...
  LD (IX+1),D             ; ...
  RET                     ; Return

; Advance Positions of Stars on Viewscreen by One Timestep
;
; Used by the routine at 31688.
  LD A,70                 ; Load A with y-coordinate of viewscreen centre
                          ; (pixels)
  RRCA                    ; Divide by 8 to get y-coordinate in characters...
  RRCA                    ; ...
  RRCA                    ; ...
  NEG                     ; Negate and add 21...
  ADD A,21                ; ...to adjust for fact that PLOT origin is at
                          ; bottom-left of screen
  LD B,A                  ; Load y-coordinate (characters) into B
  LD A,128                ; Load A with x-coordinate of viewscreen centre
                          ; (pixels)
  RRCA                    ; Divide by 8 to get x-coordinate in characters...
  RRCA                    ; ...
  RRCA                    ; ...
  LD C,A                  ; Load x-coordinate (characters) into C
  CALL 54148              ; Load HL with Attribute File address for coordinates
                          ; (C, B) (characters)
  LD (HL),0               ; Set attribute at this location to zero (black INK,
                          ; black PAPER) to hide stars' origin
  LD IX,24832             ; Point IX at start of table of stars' movement data
  LD B,20                 ; Load B with 20 (as there are 20 stars to process)
  PUSH BC                 ; Store BC (B = remaining number of stars to process)
; The operand of the instruction at 36349 represents a delay constant. This is
; modified by the instruction at 31975.
  LD C,0                  ; Load C with delay constant, outer loop
  LD B,30                 ; Load B with 30 (delay constant, inner loop)
  DJNZ 36353              ; Pause for 30 cycles
  DEC C                   ; Decrease C by one
  JR NZ,36351             ; If C is not zero then loop back to 36351
  LD B,(IX+1)             ; Load B with star's current y-coordinate
  LD C,(IX+0)             ; Load C with star's current x-coordinate
  CALL 8933               ; PLOT the star to remove it from display (x=C, y=B)
  CALL 36499              ; Load BC with new (y,x) coordinates of a star
                          ; depending upon the signs and magnitudes of its
                          ; direction
  LD A,B                  ; If new y-coordinate is less than 33...
  CP 33                   ; ...
  JR C,36388              ; ...then reset star to point of origin and generate
                          ; a new direction and movement data and jump ahead to
                          ; 36406
  CP 112                  ; If new y-coordinate is 112 or more...
  JR NC,36388             ; ...then reset star to point of origin and generate
                          ; a new direction and movement data and jump ahead to
                          ; 36406
  LD A,C                  ; If new x-coordinate is less than 56...
  CP 56                   ; ...
  JR C,36388              ; ...then reset star to point of origin and generate
                          ; a new direction and movement data and jump ahead to
                          ; 36406
  CP 198                  ; If new x-coordinate is less than 198...
  JR C,36393              ; ...then skip ahead to 36393
  CALL 36273              ; Reset star to point of origin and generate a new
                          ; direction and movement data
  JR 36406                ; Advance to next star
  LD A,C                  ; If new x-coordinate is zero...
  AND A                   ; ...
  JR Z,36388              ; ...then reset star to point of origin and generate
                          ; a new direction and movement data and jump ahead to
                          ; 36406
  LD (IX+0),C             ; Update star's coordinates in table at 24832 with
                          ; new position data...
  LD (IX+1),B             ; ...
  CALL 8933               ; PLOT the star to add it to display (x=C, y=B)
  POP BC                  ; Restore BC (B = remaining number of stars to
                          ; process)
  LD DE,9                 ; Advance IX by nine bytes to data for next star...
  ADD IX,DE               ; ...
  DJNZ 36348              ; Decrease remaining number of stars to process and
                          ; loop back to 36348
  RET                     ; Return

; Reset All Stars to Point of Origin and Generate New Velocities and Movement
; Data
;
; Used by the routine at 31688.
  LD IX,24832             ; Point IX at start of table of stars' movement data
  LD B,20                 ; Load B with 20 (as there are 20 stars to process)
  PUSH BC                 ; Store BC (B = remaining number of stars to process)
  CALL 36273              ; Reset star to point of origin and generate a new
                          ; direction and movement data
  LD DE,9                 ; Load DE with 9
  ADD IX,DE               ; Advance IX by 9 bytes
  POP BC                  ; Restore BC
  DJNZ 36421              ; Decrease B and repeat loop
  RET                     ; Return

; Set Up Star Movement Data Based Upon Starting Position and Direction
;
; Used by the routine at 36273. Input:  B  y component of star direction added
; to initial y-coordinate (random number 55 to 86) C  x component of star
; direction added to initial x-coordinate (random number 113 to 144) D Initial
; y-coordinate of star (70) (pixels) E  Initial x-coordinate of star (128)
; (pixels) IX  Points to an entry in table of stars' movement data at 24832
  LD A,B                  ; Load (DIR-Y + INIT-Y) into A
  SUB D                   ; Subtract initial y-coordinate to leave y-component
                          ; of direction in A
  LD D,1                  ; Set D to 1 (because star is moving up)
  JR NC,36444             ; If y-component is positive (i.e. star is moving up)
                          ; then skip ahead to 36444
  CPL                     ; Negate negative y-direction component...
  INC A                   ; ...
  LD D,255                ; Set D to -1 (because star is moving down)
  LD B,A                  ; Load magnitude of y-component into B
  LD A,C                  ; Load (DIR-X + INIT-X) into A
  SUB E                   ; Subtract initial x-coordinate to leave x-component
                          ; of direction in A
  LD E,1                  ; Set D to 1 (because star is moving 1 pixel right)
  JR NC,36455             ; If x-component is positive (i.e. star is moving
                          ; right) then skip ahead to 36455
  CPL                     ; Negate negative x-direction component...
  INC A                   ; ...
  LD E,255                ; Set E to -1 (because star is moving 1 pixel left)
  LD C,A                  ; Load magnitude of x-component into C
  LD (IX+3),D             ; Store y-direction at byte 4
  LD (IX+2),E             ; Store x-direction at byte 3
  LD (IX+5),D             ; Store y-direction at byte 6
  LD (IX+4),E             ; Store x-direction at byte 5
  LD A,C                  ; Load magnitude of x-component into A
  CP B                    ; If magnitude of y-component is less than or equal
                          ; to magnitude of x-component...
  JR NC,36481             ; ...then skip ahead to 36481
  LD (IX+8),C             ; Store magnitude of x-component at byte 9
  LD (IX+2),0             ; Set byte 3 to zero
  JR 36491                ; Skip ahead to 36491
  OR C                    ; If magnitude of x-component is zero...
  RET Z                   ; ...then return
  LD (IX+8),B             ; Store magnitude of y-component at byte 9
  LD B,C                  ; Load magnitude of x-component into B
  LD (IX+3),0             ; Store zero at byte 4
  LD (IX+7),B             ; Store magnitude of x-/y-component at byte 8
  LD A,B                  ; Load magnitude of x-/y-component into A...
  LD (IX+6),A             ; ...and store at byte 7
  RET                     ; Return

; Move a Star Depending Upon the Signs and Magnitudes of its "Direction"
;
; Each time this routine runs, we add the smaller of the x- and y-magnitudes to
; the running "ratio" value in (IX+6). Input:  IX  Points to entry in Star Data
; table at 24832 Output: B  New y-coordinate to plot C  New x-coordinate to
; plot
  LD A,(IX+6)             ; Load current "ratio" value into A
  ADD A,(IX+8)            ; Add smaller of x- and y-component magnitudes
  JR C,36512              ; If result is crosses the 255-0 boundary then skip
                          ; ahead to 36512
  CP (IX+7)               ; If result is less than larger of x- and y-component
                          ; magnitudes...
  JR C,36523              ; ...then skip ahead to 36523 (move star only on axis
                          ; with larger magnitude)
  SUB (IX+7)              ; Subtract larger of x- and y-magnitudes
  LD H,(IX+5)             ; Load y-step into H...
  LD L,(IX+4)             ; ...and x-step into H (moving star on BOTH axes)
  JR 36529                ; Skip ahead to 36529
  LD H,(IX+3)             ; Load 0 / y-step into H
  LD L,(IX+2)             ; Load 0 / x-step into H
  LD (IX+6),A             ; Update "ratio" value
  LD A,(IX+1)             ; Add previous y-coordinate...
  ADD A,H                 ; ...to y-step...
  LD B,A                  ; ...in B
  LD A,(IX+0)             ; Add previous x-coordinate...
  ADD A,L                 ; ...to x-step...
  LD C,A                  ; ...in C
  RET                     ; Return

; Draw a Line From (C, B) to (E, D)
;
; Used by the routines at 28766 and 36573. Input:  B  y-coordinate of start of
; line C  x-coordinate of start of line D  y-coordinate of end of line E
; x-coordinate of end of line
  LD (23677),DE           ; Load contents of DE into system variable COORDS
                          ; (start point of line)
  LD A,B                  ; Subtract y-coordinate of start of line from
                          ; y-coordinate of end of line...
  SUB D                   ; ...to get delta-y
  LD D,1                  ; Set direction of vertical change to +1 (upward)
  JR NC,36557             ; If delta-y is positive (i.e. upward) then skip
                          ; ahead to 36557
  CPL                     ; Multiply delta-y by -1 (downward) to get absolute
                          ; magnitude...
  INC A                   ; ...
  LD D,255                ; Set direction of vertical change to -1 (downward)
  LD B,A                  ; Load B with magnitude of difference in y-coordinate
                          ; between start and end of line
  LD A,C                  ; Subtract x-coordinate of start of line from
                          ; y-coordinate of end of line...
  SUB E                   ; ...to get delta-x
  LD E,1                  ; Set direction of horizontal change to +1
                          ; (rightward)
  JR NC,36568             ; If delta-x is positive (i.e. rightward) then skip
                          ; ahead to 36568
  CPL                     ; Multiply delta-x by -1 (leftward) to get absolute
                          ; magnitude...
  INC A                   ; ...
  LD E,255                ; Set direction of vertical change to -1 (leftward)
  LD C,A                  ; Load C with magnitude of difference in x-coordinate
                          ; between start and end of line
  CALL 9402               ; Draw the line (ROM routine)
  RET                     ; Return

; Draw a Rectangle with Opposite Vertices at (C, B) and (E, D) (Pixels)
;
; Used by the routine at 35882. Input:  B  y-coordinate of vertex 1 C
; x-coordinate of vertex 1 D  y-coordinate of vertex 2 E  x-coordinate of
; vertex 2
  PUSH DE                 ; Draw a line from (E, B) to (E, D)...
  PUSH BC                 ; ...
  LD C,E                  ; ...
  CALL 36543              ; ...
  POP BC                  ; ...
  POP DE                  ; ...
  PUSH DE                 ; Draw a line from (C, D) to (E, D)...
  PUSH BC                 ; ...
  LD B,D                  ; ...
  CALL 36543              ; ...
  POP BC                  ; ...
  POP DE                  ; ...
  PUSH DE                 ; Draw a line from (C, B) to (E, B)...
  PUSH BC                 ; ...
  LD D,B                  ; ...
  CALL 36543              ; ...
  POP BC                  ; ...
  POP DE                  ; ...
  LD E,C                  ; Draw a line from (C, B) to (C, D)...
  CALL 36543              ; ...
  RET                     ; Return

; Print word in Temporary Text Buffer to screen, wrapping text if necessary,
; then process next word
;
; This routine prints the string of characters stored in the Temporary Text
; Buffer. If the string is longer than the available space to the right of the
; Virtual Text Cursor, then the cursor is wrapped, moving down to the next
; character row and to the left edge of the current window. Input:  A  A
; word-ending character (e.g. a SPACE) from a character string IX  Points to
; current position in Temporary Text buffer at 24005
  LD (IX+0),A             ; Store character in temporary text buffer
  PUSH HL                 ; Store HL (pointer to current position in text to
                          ; print)
  LD HL,(54110)           ; Load HL with address of Bitmap Virtual Text Cursor
  LD A,L                  ; Load x-coordinate of the cursor into B, decreasing
                          ; by one...
  DEC A                   ; ...
  AND 31                  ; ...
  LD B,A                  ; ...
  LD A,(23495)            ; Load x-coordinate of right edge of current window
                          ; into A
  SUB B                   ; Subtract B to get distance to right-edge of window
                          ; in A
  PUSH AF                 ; Store AF (A = distance to right-edge of window)
  LD HL,24005             ; Point HL at start of Temporary Text Buffer
  LD C,0                  ; Set C to zero
  LD A,(HL)               ; Load character from current position in Temporary
                          ; Text Buffer into A
  CP 32                   ; If character is 32 (SPACE)...
  JR Z,36645              ; ...then skip ahead to 36645 as end of word reached
  CP 13                   ; If character is 13 (Carriage return / line feed to
                          ; start of next character row down)...
  JR Z,36645              ; ...then skip ahead to 36645 as end of word reached
  CP 14                   ; If character is 14 (Carriage return / line feed to
                          ; start of next character row down within window)...
  JR Z,36645              ; ...then skip ahead to 36645 as end of word reached
  CP 255                  ; If character is 255 (End Marker)...
  JR Z,36645              ; ...then skip ahead to 36645 as end of word reached
  INC C                   ; Increase C (number of characters to print)
  INC HL                  ; Advance to next character in Temporary Text Buffer
  JR 36624                ; Loop back to 36624
  POP AF                  ; Restore AF (A = distance to right-edge of window)
  SUB C                   ; Subtract C (number of characters)
  CALL C,36731            ; If result is negative (i.e. more characters than
                          ; space) then move Virtual Text Cursors (Attribute
                          ; and Bitmap) down to left edge of next row of window
  LD HL,24004             ; Point HL at byte before start of Temporary Text
                          ; Buffer
  INC HL                  ; Advance to next byte in Temporary Text Buffer
  LD A,(HL)               ; Load character from current position in Temporary
                          ; Text Buffer into A
  CP 255                  ; If character is 255 (End Marker)...
  JR Z,36723              ; ...then skip ahead to 36723 (reset Temporary Text
                          ; Buffer and load next word into it)
  CP 32                   ; If character is 32 (SPACE)...
  JR Z,36704              ; ...then skip ahead to 36704
  CP 13                   ; If character is 13 (Carriage return / line feed to
                          ; start of next character row down)...
  JP Z,36691              ; ...then skip ahead to 36691
  CP 14                   ; If character is 14 (Carriage return / line feed to
                          ; start of next character row down within window)...
  JP Z,36699              ; ...then skip ahead to 36699
  CP 9                    ; If character is 9 (Move Virtual Text Cursor right
                          ; one character)...
  JP Z,36683              ; ...then skip ahead to 36683
  CALL 54097              ; Print the character
  JR 36653                ; Loop back to 36653
; Move Virtual Text Cursor right one character (9)
  PUSH HL                 ; Store HL (current position in Temporary Text
                          ; Buffer)
  CALL 54176              ; Advance Bitmap Virtual Text Cursor right by one
                          ; character
  POP HL                  ; Restore HL (current position in Temporary Text
                          ; Buffer)
  JP 36653                ; Jump to 36653 for next character
; Carriage return / line feed to start of next character row down (13)
  CALL 54192              ; Advance Bitmap Virtual Text Cursor to start of next
                          ; character row
  CALL 54215              ; Update Attribute Virtual Text Cursor based upon
                          ; current Bitmap Virtual Text Cursor
  JR 36723                ; Skip ahead to 36723 (reset Temporary Text Buffer
                          ; and load next word into it)
; Carriage return / line feed to start of next character row down within window
; (14)
  CALL 36731              ; Move Virtual Text Cursors (Attribute and Bitmap)
                          ; down to left edge of next row of window
  JR 36723                ; Skip ahead to 36723 (reset Temporary Text Buffer
                          ; and load next word into it)
; Print a SPACE (32)
  LD HL,(54110)           ; Load HL with address of Bitmap Virtual Text Cursor
  LD A,L                  ; Strip out higher-order bits in L to leave only
                          ; x-coordinate component...
  AND 31                  ; ...
  LD L,A                  ; ...
  LD A,(23495)            ; Load A with x-coordinate of right edge of current
                          ; window plus one...
  INC A                   ; ...
  CP L                    ; If this is the same as the x-coordinate of the
                          ; Bitmap Virtual Text Cursor...
  JR Z,36723              ; ...then  skip ahead to 36723 (reset Temporary Text
                          ; Buffer and load next word into it, i.e. no need to
                          ; print a SPACE)
  LD A,32                 ; Print a SPACE character (chr. 32)...
  CALL 54097              ; ...
; End Marker (255)
  POP HL                  ; Restore HL (pointer to current position in text to
                          ; print)
  LD IX,24005             ; Point IX at start of Temporary Text Buffer
  JP 34784                ; Jump back to 34784 to load next word into Temporary
                          ; Text Buffer

; Move Virtual Text Cursors (Attribute and Bitmap) down to left edge of next
; row of window
;
; Used by the routine at 36602.
  CALL 54192              ; Advance Bitmap Virtual Text Cursor to start of next
                          ; character row
  LD HL,(54110)           ; Load HL with address of Bitmap Virtual Text Cursor
  LD A,(23493)            ; Load A with x-coordinate of left edge of window
  ADD A,L                 ; Add this to address in HL to move cursor to left
                          ; edge of window...
  LD L,A                  ; ...
  LD (54110),HL           ; ...and place the result back at 54109
  CALL 54215              ; Update Attribute Virtual Text Cursor based upon
                          ; current Bitmap Virtual Text Cursor
  RET                     ; Return

; List of Command Indices
;
; See trivia
  DEFB 0,1,2,3,4,5,6,7
  DEFB 8,9,10,11,12,13,14,15

; Routine Start Addresses for Magic Knight's Commands (Main Menu)
  DEFW 29330              ; (00) - Process Command to Pick Up an Object
  DEFW 29488              ; (01) - Process Command to Drop an Object
  DEFW 29619              ; (02) - Process Command to Take an Object
  DEFW 29756              ; (03) - Process Command to Give an Object
  DEFW 30145              ; (04) - Process Command to Examine Yourself / A
                          ; Character / An Object / USS Pisces
  DEFW 30686              ; (05) - Process Command to Command a Character
  DEFW 30940              ; (06) - Process Command to Launch Tyme Machine
  DEFW 29482              ; (07) - Unused [Set MK's available action flags,
                          ; validate I.D. Card if appropriate and jump to start
                          ; of Main Game Loop]
  DEFW 30968              ; (08) - Process Command to Read an Object
  DEFW 29482              ; (09) - Unused [Set MK's available action flags,
                          ; validate I.D. Card if appropriate and jump to start
                          ; of Main Game Loop]
  DEFW 31041              ; (10) - Process Command to Cast a Spell
  DEFW 29482              ; (11) - Unused [Set MK's available action flags,
                          ; validate I.D. Card if appropriate and jump to start
                          ; of Main Game Loop]
  DEFW 31537              ; (12) - Process Command to Wear / Unwear an Object
  DEFW 31688              ; (13) - Process Command to Move Starship
  DEFW 32252              ; (14) - Process Command to Use Transporter
  DEFW 32895              ; (15) - Process Command to Communicate

; Magic Knight's Initial Data
;
; See also 25156 for Magic Knight's Current Data
  DEFB 120                ; x-coordinate (pixels)
  DEFB 100                ; y-coordinate (pixels)
  DEFB 0                  ; Unused
  DEFB 0                  ; Index of current frame
  DEFB 0                  ; x-velocity (pixels) [walking / jumping sideways,
                          ; usually 2 for right and 254 / -2 for left]
  DEFB 0                  ; y-velocity (pixels) [jumping]
  DEFB 71                 ; Attribute
  DEFB 0                  ; Unused

; Characters' Initial Inventories
;
; See also 25164 for Characters' Current Inventories
  DEFB 7,0,0,0,0          ; Magic Knight (carrying)
  DEFB 28,1,0,0,0         ; Magic Knight (wearing)
  DEFB 4,0,0,0,0          ; Gordon
  DEFB 14,0,0,0,0         ; Sarab
  DEFB 36,0,0,0,0         ; Klink
  DEFB 10,0,0,0,0         ; S3 E3
  DEFB 12,18,0,0,0        ; Hooper
  DEFB 20,0,0,0,0         ; Murphy
  DEFB 27,17,0,0,0        ; Sharon
  DEFB 0,0,0,0,0          ; Forbin
  DEFB 23,0,0,0,0         ; Derby IV
  DEFB 0,0,0,0,0          ; Swiftfoot
  DEFB 0,0,0,0,0          ; Julie 8
  DEFB 0,0,0,0,0          ; Hectorr

; Characters' Initial Positions
;
; Twelve groups of three bytes, one group per character (excluding Magic
; Knight). The values are:
  DEFB 1,10,19            ; Gordon
  DEFB 1,20,19            ; Sarab
  DEFB 2,4,19             ; Klink
  DEFB 3,4,19             ; S3 E3
  DEFB 23,20,19           ; Hooper
  DEFB 10,4,19            ; Murphy
  DEFB 6,4,19             ; Sharon
  DEFB 11,14,19           ; Forbin
  DEFB 3,12,19            ; Derby IV
  DEFB 15,7,19            ; Swiftfoot
  DEFB 12,4,19            ; Julie 8
  DEFB 15,4,19            ; Hectorr

; Objects' Initial Positions
;
; Thirty-seven groups of three bytes, one group per object. The values are:
  DEFB 99,0,0             ; (00) - Nothing at all
  DEFB 99,0,0             ; (01) - Cloak of Invisibility
  DEFB 99,10,22           ; (02) - Blank I.D. Card
  DEFB 99,2,22            ; (03) - Valid I.D. Card
  DEFB 99,0,22            ; (04) - Instant Film
  DEFB 99,0,22            ; (05) - Photograph (of Magic Knight)
  DEFB 5,5,14             ; (06) - Star Map
  DEFB 99,0,22            ; (07) - Gadget X
  DEFB 0,14,18            ; (08) - Camera
  DEFB 99,0,22            ; (09) - Photograph (of inside of starship)
  DEFB 99,0,22            ; (10) - Pot of Glue
  DEFB 4,15,14            ; (11) - 5W Resistor
  DEFB 99,0,22            ; (12) - Magic Talisman
  DEFB 99,0,22            ; (13) - Golden Sundial of Alpha
  DEFB 99,0,22            ; (14) - McTablet Food
  DEFB 99,0,22            ; (15) - Broken Glass
  DEFB 15,24,14           ; (16) - Quark Bomb
  DEFB 99,5,14            ; (17) - Advert
  DEFB 99,0,22            ; (18) - Part of a Sundial (1)
  DEFB 22,12,22           ; (19) - Part of a Sundial (2)
  DEFB 99,0,22            ; (20) - Part of a Sundial (3)
  DEFB 12,15,22           ; (21) - Brass Ankh
  DEFB 15,5,14            ; (22) - Pair of Boots
  DEFB 99,0,22            ; (23) - Chocolate Heart
  DEFB 5,20,14            ; (24) - Starfleet Manual
  DEFB 14,10,22           ; (25) - Ancient Scroll
  DEFB 3,1,22             ; (26) - Tower Fish
  DEFB 99,0,22            ; (27) - Gas Mask
  DEFB 99,0,22            ; (28) - Shield
  DEFB 15,16,22           ; (29) - Bag of Runes
  DEFB 14,21,22           ; (30) - Bag of Potatoes
  DEFB 5,4,14             ; (31) - Pewter Tankard
  DEFB 14,16,22           ; (32) - Axe
  DEFB 6,15,22            ; (33) - Wrist Terminal
  DEFB 4,5,14             ; (34) - Torch
  DEFB 2,25,22            ; (35) - Mirror
  DEFB 99,0,22            ; (36) - 10MW Laser

; Room Connectivity Data
;
; Two values per room:
  DEFB 255,1              ; (00) - USS Pisces, 0 (The Recreation Room)
  DEFB 0,2                ; (01) - USS Pisces, 1 (The Bridge)
  DEFB 1,3                ; (02) - USS Pisces, 2 (The Transporter Room)
  DEFB 2,4                ; (03) - USS Pisces, 3 (The Transputer Room)
  DEFB 3,5                ; (04) - USS Pisces, 4 (Cargo Hold)
  DEFB 4,6                ; (05) - USS Pisces, 5 (The Airlock)
  DEFB 5,255              ; (06) - USS Pisces, 6 (The Life Boat)
  DEFB 255,8              ; (07) - Retreat, 0 (Murphy's Moon)
  DEFB 7,9                ; (08) - Retreat, 1
  DEFB 8,10               ; (09) - Retreat, 2 (Barrier Room)
  DEFB 9,255              ; (10) - Retreat, 3
  DEFB 255,12             ; (11) - Starbase 1, 0 (The Transporter Room)
  DEFB 11,13              ; (12) - Starbase 1, 1 (McTablet Takeaway Food)
  DEFB 12,14              ; (13) - Starbase 1, 2
  DEFB 13,15              ; (14) - Starbase 1, 3
  DEFB 14,255             ; (15) - Starbase 1, 4 (Fuel and Cargo Area)
  DEFB 255,17             ; (16) - Outpost, 0 (Ye Olde Transporter)
  DEFB 16,18              ; (17) - Outpost, 1 (The Main Defence System)
  DEFB 17,19              ; (18) - Outpost, 2
  DEFB 18,20              ; (19) - Outpost, 3 (The Proof of Power)
  DEFB 19,255             ; (20) - Outpost, 4 (The Tyme Guardians)
  DEFB 255,22             ; (21) - Monopole, 0 (Hooper's Emergency Exit)
  DEFB 21,23              ; (22) - Monopole, 1 (This Way to Hooper ==>>)
  DEFB 22,255             ; (23) - Monopole, 2 (Here is Hooper)
  DEFB 5,255              ; (24) - USS Pisces, 6A (The Control Column)

; Store for address of current position in Magic Knight's y-velocities sequence
; table at 37074
  DEFW 0

; Magic Knight's y-Velocities Sequence for Jumping and Falling
;
; This is the sequence of y-velocity increments / decrements applied to Magic
; Knight's y-coordinate when he is jumping or falling. The data is
; zero-terminated.
  DEFB 7,7
  DEFB 6,6
  DEFB 5,5
  DEFB 4,4
  DEFB 3,3
  DEFB 2,2
  DEFB 1,1
  DEFB 0

; Window Data
;
; Eight bytes per window. The meaning of the data is:
  DEFB 0,23,6,20,116,79,1,79 ; (00) Main Menu (Game) Window / "Choose
                             ; Communication" Window
  DEFB 0,31,0,5,116,67,0,71 ; (01) Starship Summary Window (top of screen)
  DEFB 0,25,6,15,116,68,0,79 ; (02)
  DEFB 0,26,6,18,116,68,2,79 ; (03)
  DEFB 0,25,6,20,116,70,1,79 ; (04) List of objects window (menu or info)
  DEFB 5,26,16,21,116,66,0,70 ; (05) "KNIGHT-TYME A NEW GRAPHIC ADVENTURE..."
                              ; window below Control Selection Window
  DEFB 4,27,3,12,116,70,0,69 ; (06) Control Selection Window
  DEFB 0,31,3,12,116,70,2,79 ; (07) "REDEFINE THE GAME" Window
  DEFB 3,28,2,12,116,84,0,14 ; (08)
  DEFB 5,26,0,12,116,115,0,69 ; (09)
  DEFB 0,23,6,9,116,68,0,71 ; (10)
  DEFB 0,19,6,10,116,76,0,70 ; (11) "EXECUTE / REJECT COMMAND" Window
  DEFB 0,16,6,10,116,98,0,104 ; (12)
  DEFB 0,18,6,9,116,67,0,70 ; (13)
  DEFB 4,27,21,23,116,70,0,205 ; (14)
  DEFB 0,31,0,5,116,70,0,69 ; (15)
  DEFB 0,15,6,13,116,98,1,112 ; (16) "EXAMINE WHAT?" Window
  DEFB 0,18,6,14,116,68,5,120 ; (17)
  DEFB 0,22,6,18,116,67,0,120 ; (18) "EXAMINE YOURSELF" / "EXAMINE CHARACTER"
                              ; Window
  DEFB 17,20,9,14,116,68,0,71 ; (19) Frame around portrait of character on
                              ; "EXAMINE CHARACTER" and "EXAMINE YOURSELF"
                              ; windows
  DEFB 0,22,6,15,116,67,0,120 ; (20) "EXAMINE OBJECT" / "EXAMINE USS PISCES"
                              ; Window
  DEFB 2,5,10,13,116,69,0,69 ; (21) Frame around object in "EXAMINE OBJECT"
                             ; Window
  DEFB 0,31,14,23,116,67,0,79 ; (22)
  DEFB 0,22,6,13,116,77,2,78 ; (23) "WHICH COMMAND DO YOU WANT TO USE?"
                             ; ("COMMAND [CHARACTER] TO...") Window
  DEFB 4,27,7,18,116,104,0,104 ; (24) Game Over Window
  DEFB 0,18,6,17,116,77,1,71 ; (25) "WHERE TO ?" Window / Speed Selection
                             ; Window
  DEFB 16,23,10,16,116,104,0,120 ; (26)
  DEFB 0,26,6,16,116,87,2,87 ; (27)
  DEFB 0,10,6,9,116,104,0,104 ; (28)
  DEFB 0,19,6,9,116,68,2,71 ; (29)

; USS Pisces' Initial Stats
;
; See also USS Pisces' Current Stats at 25012.
  DEFB 70                 ; Life Support (%)
  DEFB 200                ; Star Drive Fuel
  DEFB 82                 ; Impulse Drive (%)
  DEFB 50                 ; Shields (%)
  DEFB 62                 ; Transputer (%)
  DEFB 0                  ; Unused
  DEFB 0                  ; Unused
  DEFB 0                  ; Unused

; Characters' Initial Stats
;
; Nine groups of eight bytes, one group per character (including Magic Knight).
; The values are capped at 100:
  DEFB 70,17,82,14,62,0,0,1 ; Magic Knight
  DEFB 100,70,30,148,0,0,68,2 ; Gordon
  DEFB 100,65,41,158,0,0,68,3 ; Sarab
  DEFB 100,60,52,128,70,70,6,4 ; Klink
  DEFB 100,55,63,128,69,70,6,5 ; S3 E3
  DEFB 100,50,74,200,68,0,69,6 ; Hooper
  DEFB 100,45,75,200,67,72,5,7 ; Murphy
  DEFB 100,40,76,200,70,69,4,8 ; Sharon
  DEFB 100,40,76,138,68,80,4,9 ; Forbin
  DEFB 100,100,100,128,0,0,70,10 ; Derby IV
  DEFB 100,50,50,200,67,71,4,11 ; Swiftfoot
  DEFB 100,50,50,200,70,72,4,12 ; Julie 8 (see trivia)
  DEFB 100,50,50,228,68,81,4,13 ; Hectorr

; Table of Object Properties
;
; Thirty seven groups of eight bytes, one group per object (including "Nothing
; at All"). The values are:
  DEFB 0,0,0,0,0,0,0,0    ; (00) - Nothing at all
  DEFB 33,72,0,0,0,0,1,33 ; (01) - Cloak of Invisibility
  DEFB 33,72,0,1,12,0,70,13 ; (02) - Blank I.D. Card
  DEFB 33,72,0,2,12,0,70,13 ; (03) - Valid I.D. Card
  DEFB 33,64,0,3,15,0,70,20 ; (04) - Instant Film
  DEFB 33,64,0,4,15,0,71,7 ; (05) - Photograph (of Magic Knight)
  DEFB 1,64,0,0,12,0,71,8 ; (06) - Star Map
  DEFB 33,64,0,0,15,0,70,29 ; (07) - Gadget X
  DEFB 1,72,0,0,15,0,70,12 ; (08) - Camera
  DEFB 33,64,0,6,15,0,71,6 ; (09) - Photograph (of inside of starship)
  DEFB 49,0,0,7,15,0,70,21 ; (10) - Pot of Glue
  DEFB 33,64,0,8,12,0,70,22 ; (11) - 5W Resistor
  DEFB 1,168,0,0,15,0,70,15 ; (12) - Magic Talisman
  DEFB 33,72,0,10,15,0,70,16 ; (13) - Golden Sundial of Alpha
  DEFB 33,64,0,9,12,0,71,27 ; (14) - McTablet Food
  DEFB 1,64,0,0,12,0,71,28 ; (15) - Broken Glass
  DEFB 33,96,0,14,15,0,7,25 ; (16) - Quark Bomb
  DEFB 33,64,0,12,15,128,70,4 ; (17) - Advert
  DEFB 1,64,0,0,4,0,70,31 ; (18) - Part of a Sundial (1)
  DEFB 1,64,0,0,4,0,70,31 ; (19) - Part of a Sundial (2)
  DEFB 1,96,0,0,4,0,70,31 ; (20) - Part of a Sundial (3)
  DEFB 1,72,0,0,15,0,68,23 ; (21) - Brass Ankh
  DEFB 34,72,0,11,13,0,66,11 ; (22) - Pair of Boots
  DEFB 33,64,0,5,15,0,66,3 ; (23) - Chocolate Heart
  DEFB 33,64,0,0,15,0,70,10 ; (24) - Starfleet Manual
  DEFB 1,64,0,0,15,0,71,9 ; (25) - Ancient Scroll
  DEFB 1,64,0,0,12,0,6,17 ; (26) - Tower Fish
  DEFB 1,72,0,0,15,0,7,32 ; (27) - Gas Mask
  DEFB 1,72,0,0,15,0,68,14 ; (28) - Shield
  DEFB 1,64,0,0,15,0,67,18 ; (29) - Bag of Runes
  DEFB 1,64,0,0,15,0,70,18 ; (30) - Bag of Potatoes
  DEFB 1,64,0,0,15,0,71,24 ; (31) - Pewter Tankard
  DEFB 65,96,0,0,15,0,70,26 ; (32) - Axe
  DEFB 33,72,0,13,12,0,70,19 ; (33) - Wrist Terminal
  DEFB 1,64,0,0,10,0,6,30 ; (34) - Torch
  DEFB 129,192,0,0,15,0,71,5 ; (35) - Mirror
  DEFB 1,64,0,0,12,0,69,15 ; (36) - 10MW Laser

; Initial Control Selection Menu Text
  DEFM 16,7,14            ; KEYBOARD KEMPSTON JOYSTICK CURSOR JOYSTICK SINCLAIR
                          ; JOYSTICK 1 CHANGE GAME OPTIONS INSTRUCTIONS PLAY
                          ; GAME
  DEFM 93,211,14
  DEFM 93,212,14
  DEFM 93,213,14
  DEFM 93,214,14
  DEFM 16,6,93,"CHANGE ",103," OPTIONS",14
  DEFM 16,5,93,95,"STRUCTIONS",14
  DEFM 93,"PLAY ",103
  DEFM 0

; Instructions Text
  DEFM "AFTER RELEAS",207," GIMBAL ",116," " ; AFTER RELEASING GIMBAL THE
                                             ; WIZARD IN SPELLBOUND YOU FIND
                                             ; YOURSELF ABOARD THE USS PISCES A
                                             ; 25TH CENTURY STARSHIP ON A
                                             ; PEACEFUL TRADE MISSION. YOU MUST
                                             ; FIND A WAY TO RETURN TO YOUR OWN
                                             ; TIME. ** GOOD LUCK MAGIC KNIGHT
                                             ; **
  DEFM "WIZARD ",95," ",132,105," F",95,"D "
  DEFM 105,"RSELF ABOARD ",116," ",146," "
  DEFM 97,"25TH CENTURY ",145," ON ",97
  DEFM "PEACEFUL TRADE MISSION.",14
  DEFM 105," MUST F",95,"D ",97,"WAY ",99,"RETURN "
  DEFM 99,105,"R OWN ",129,".",14
  DEFM "**  GOOD LUCK ",144,"  **"
  DEFM 0
  DEFM 110," ",116," KEYS ",125,":-",91,14 ; THE KEYS ARE :- N = LEFT     M =
                                           ; RIGHT A = JUMP/UP  Z = DOWN - =
                                           ; MENU (FIRE)
  DEFM 190
  DEFM 0
  DEFM " TH",115,103," FEATURES",14 ; THIS GAME FEATURES WINDIMATION+ STARRING
                                    ; YOU AS MAGIC KNIGHT WITH GORDON    SARAB
                                    ; KLINK     S3 E3 HOOPER MURPHY SHARON
                                    ; FORBIN DERBY IV  SWIFTFOOT JULIE 8
                                    ; HECTORR (see trivia)
  DEFM 110," ",134,"+",14
  DEFM 110,"  ",16,4,18," STARR",207," ",18,92,14
  DEFM 16,7," ",105," AS ",144,14
  DEFM 110,110,"  ",16,5,"WITH",14
  DEFM 16,7," ",195,110," ",196,14
  DEFM " ",197,110,"  ",198,14
  DEFM " ",199,110," ",200,14
  DEFM " ",201,110," ",202,14
  DEFM " ",203,"  ",204,14
  DEFM " ",205,110,206
  DEFM 0

; "REDEFINE THE GAME" Window Text
  DEFM 110,110,"REDEF",95,"E ",116," ",103,14 ; REDEFINE THE GAME REDEFINE
                                              ; KEYBOARD PLAYER ATTRIBUTE
                                              ; IGNORE PLAYER ATTRIBUTE UPDATE
                                              ; SAVE THE GAME LOAD AN OLD GAME
  DEFM 14,14
  DEFM 16,5,93,"REDEF",95,"E ",211,14
  DEFM 93,136,135,"IG",148,"RE",14
  DEFM 93,136,135,"UPDATE",14
  DEFM 16,6,93,"SAVE ",116," ",103,14
  DEFM 93,"LOAD ",98,"OLD ",103
  DEFM 0
; "Redefine Keys Window" Text
  DEFM "ENTER NEW KEY CHOICE",14 ; ENTER NEW KEY CHOICE OR PRESS ENTER TO EXIT
                                 ; N = LEFT     M = RIGHT A = JUMP/UP  Z = DOWN
                                 ; - = MENU (FIRE)
  DEFM "OR PRESS ENTER ",99,"EXIT",91
  DEFM 190
  DEFM 0
  DEFM "SAVE & LOAD ",125,148,"T " ; SAVE & LOAD ARE NOT ALLOWED HERE. START A
                                   ; GAME THEN READ GADGET X
  DEFM "ALLOWED HERE.",14
  DEFM "START ",97,103," ",116,"N "
  DEFM 114," GADGET X"
  DEFM 0

; Miscellaneous Texts
  DEFM " AT "             ; AT
  DEFM 0
  DEFM 92," ",142,16,6," ",97,"NEW",14 ; KNIGHT-TYME A NEW GRAPHIC ADVENTURE BY
                                       ; DAVID JONES COPYRIGHT 1986 (see
                                       ; trivia)
  DEFM " GRAPHIC ADVENTURE",14
  DEFM 16,7,110,"BY DAVID ",173,14
  DEFM 110,"COPYRIGHT 1986"
  DEFM 0
  DEFM 14                 ; STARSHIP USS PISCES LOCATION : {name of Current
                          ; Starship Location}
  DEFM 16,7," ",145," ",146,14
  DEFM 133,28
  DEFM 0
  DEFM "PRESS FIRE ",99,"CONT",95,"UE" ; PRESS FIRE TO CONTINUE
  DEFM 0
  DEFM 14                 ; EXECUTE COMMAND REJECT COMMAND
  DEFM 93,"EXECUTE ",100,14
  DEFM 93,"REJECT ",100
  DEFM 0
  DEFM 14                 ; carriage return / line feed}{move text cursor right
                          ; by two characters
  DEFM 93
  DEFM 0
  DEFM 100,14             ; COMMAND
  DEFM 0
  DEFM 16,6,142           ; KNIGHT-TYME
  DEFM 0
  DEFM 31," ",115,122     ; name of Current Character} IS ASLEEP
  DEFM 0
  DEFM "WELL DONE ",105," HAVE MANAGED ",99 ; WELL DONE YOU HAVE MANAGED TO
                                            ; ESCAPE THROUGH THE BLACK HOLE.
                                            ; BUT UPON REACHING HOME YOU FIND
                                            ; THAT THE OFF-WHITE KNIGHT HAS
                                            ; BEEN CAUSING HAVOC BY MESSING
                                            ; AROUND WITH THE WEATHER. PRESS
                                            ; ANY KEY TO CONTINUE
  DEFM "ESCAPE THROUGH ",116," BLACK HOLE.",14
  DEFM "BUT UPON REACH",207," HOME ",105," "
  DEFM "F",95,"D THAT ",116," OFF-WHITE KNIGHT "
  DEFM 151,"BEEN CAUS",207," HAVOC BY "
  DEFM "MESS",207," AROUND WITH ",116," "
  DEFM "WEA",116,"R.",14
  DEFM 110,"PRESS ANY KEY ",99,"CONT",95,"UE"
  DEFM 0
  DEFM 14                 ; STRENGTH     1  2  3 4 5
  DEFM "  STRENGTH",110,"  1  2  3  4  5",14
  DEFM " ",16,2,17,32,110,110,110," "
  DEFM 0
  DEFM 3                  ; Required height of window = 2 (3 - 1)
  DEFM 105," ",125,148,"T CARRY",207," ",127 ; YOU ARE NOT CARRYING ANYTHING
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 105," ",125,148,"T " ; YOU ARE NOT WEARING ANYTHING
  DEFM 119,207," ",127
  DEFM 0
  DEFM 16,6,"WHO DO ",105," WANT ",99 ; WHO DO YOU WANT TO
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 116,"RE ",115,148,"BODY ",95," TH",115,208 ; THERE IS NOBODY IN THIS
                                                  ; ROOM
  DEFM 0
  DEFM 117,98,149,"FROM ?",14 ; TAKE AN OBJECT FROM ?
  DEFM 0
  DEFM 118,98,149,99,"?",14 ; GIVE AN OBJECT TO ?
  DEFM 0
  DEFM 101,"?",14         ; EXAMINE ?
  DEFM 0
  DEFM 100," ?",14        ; COMMAND ?
  DEFM 0
  DEFM "FORTIFY ?",14     ; FORTIFY ?
  DEFM 0

; Main In-Game Menu Strings
;
; Permanent entries:
  DEFM 16,4,100,"S AVAILABLE :-",91 ; COMMANDS AVAILABLE :- PICK UP AN OBJECT
                                    ; DROP AN OBJECT TAKE AN OBJECT GIVE AN
                                    ; OBJECT EXAMINE
  DEFM 16,6,93,"PICK UP ",98,149,14
  DEFM 93,120,98,149,14
  DEFM 93,117,98,149,14
  DEFM 93,118,98,149,14
  DEFM 93,101
  DEFM 0
; Conditional entries:
  DEFM 94,93,100," ",97,"CHARACTER",0 ; COMMAND A CHARACTER
  DEFM 94,93,"LAUNCH ",166,0 ; LAUNCH TYME MACHINE
  DEFM 0                  ; Unused
  DEFM 94,93,114," ",139,0 ; READ SOMETHING
  DEFM 0                  ; Unused
  DEFM 94,93,174," ",97,175,0 ; CAST A SPELL
  DEFM 0                  ; Unused
  DEFM 94,93,119,"/UN",119," ",149,0 ; WEAR/UNWEAR OBJECT
  DEFM 94,93,"MOVE ",145,0 ; MOVE STARSHIP
  DEFM 94,93,"USE ",141,0 ; USE TRANSPORTER
  DEFM 94,93,140,"E",0    ; COMMUNICATE

; Text Relating to "Pick Up" Command
  DEFM 92,105," ",125,148,"W CARRY",207,94 ; YOU ARE NOW CARRYING
  DEFM 0
  DEFM 92,"PICK UP ",116," " ; PICK UP THE
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 116,"RE ",115,150,95," TH",115,208 ; THERE IS NOTHING IN THIS ROOM
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 116,"RE ",115,150,"NEAR E",148,"UGH" ; THERE IS NOTHING NEAR ENOUGH
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 105,"R H",112,"S ",125,"FULL" ; YOUR HANDS ARE FULL
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 116," ",29," ",115,"TOO HEAVY FOR ",105 ; THE {name of Current Object}
                                               ; IS TOO HEAVY FOR YOU
  DEFM 0

; Text Relating to "Drop" Command
  DEFM 92,120,"WHICH ",149,"?",94 ; DROP WHICH OBJECT ?
  DEFM 0
  DEFM 92,120,116," "     ; DROP THE
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 105," ",121," ",120,116," ",29 ; YOU CANNOT DROP THE {name of Current
                                      ; Object}
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 105," ",121," ",120 ; YOU CANNOT DROP THE {name of Current Object} HERE
                           ; BECAUSE IT WOULD INTERFERE WITH THE TRANSPORTERS
                           ; FLUX GENERATOR. (bug)
  DEFM 116," ",29," HERE "
  DEFM "BECAUSE IT WOULD "
  DEFM 95,"TERFERE WITH ",116," "
  DEFM 141,"S FLUX "
  DEFM "GENERATOR."
  DEFM 0

; Text Relating to "Take" Command
  DEFM 92,117,"WHICH ",149,"?",94 ; TAKE WHICH OBJECT ?
  DEFM 0
  DEFM 92,117,116," "     ; TAKE THE
  DEFM 0
  DEFM 117,139,"FROM "    ; TAKE SOMETHING FROM
  DEFM 0
  DEFM " FROM "           ; FROM
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31,"'S H",112,"S ",125,"EMPTY" ; name of Current Character}'S HANDS ARE
                                      ; EMPTY
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31," WANTS ",99,"KEEP ",116," ",29 ; name of Current Character} WANTS TO
                                          ; KEEP THE {name of Current Object
  DEFM 0

; Text Relating to "Give" Command
  DEFM 92,118,"WHICH ",149,"?",94 ; GIVE WHICH OBJECT ?
  DEFM 0
  DEFM 92,118,116," "     ; GIVE THE
  DEFM 0
  DEFM " ",99             ; TO
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31,"'S H",112,"S ",125,"FULL" ; name of Current Character}'S HANDS ARE
                                     ; FULL
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," ",115,148,"T STRONG E",148,"UGH" ; name of Current Character} IS
                                             ; NOT STRONG ENOUGH
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31," DOES ",148,"T WANT ",116," ",29 ; name of Current Character} DOES
                                            ; NOT WANT THE {name of Current
                                            ; Object
  DEFM 0

; Text Relating to "Examine" Command
  DEFM 92,101,"WHICH ",149,"?",94 ; EXAMINE WHICH OBJECT ?
  DEFM 0
  DEFM 101                ; EXAMINE
  DEFM 0
  DEFM 101,"WHAT ?",91    ; EXAMINE WHAT ? OBJECT CHARACTER YOURSELF USS PISCES
  DEFM 93,149,14
  DEFM 93,"CHARACTER",14
  DEFM 93,105,"RSELF",14
  DEFM 93,146
  DEFM 0
; Character's Stats Text
  DEFM 101,31,91          ; EXAMINE {name of Current Character} STRENGTH 99
                          ; HAPPINESS 99 STAMINA 99 CHARISMA 99 MAGIC LVL.  99
  DEFM "STRENGTH",110,16,4," 99 ",16,0,14
  DEFM "HAPP",95,"ESS  ",16,4," 99 ",16,0,14
  DEFM "STAM",95,"A",110," ",16,4," 99 ",16,0,14
  DEFM "CHARISMA",110,16,4," 99 ",16,0,14
  DEFM "MAGIC LVL. ",16,4," 99 ",16,0,91
  DEFM 0
  DEFM 110,110,101,14     ; EXAMINE
  DEFM 0
; Object's Stats Text
  DEFM 91,110,110,"WEIGHT",110," ",16,4," 99  ",16,0,14 ; WEIGHT 99 BLOW . READ
                                                        ; . WEAR .
  DEFM 110,110,"BLOW",110,110," ",16,4,". ",16,0,14
  DEFM 110,110,114," ",110,110,16,4,". ",16,0,14
  DEFM 110,110,119,110,110," ",16,4,". ",16,0,91
  DEFM 0
  DEFM 105,"RSELF"        ; YOURSELF
  DEFM 0
; USS Pisces Stats Text
  DEFM 146,"  ",16,3,17,0,110,110,"  ",14 ; USS PISCES LIFE SUPPORT % STAR
                                          ; DRIVE FUEL IMPULSE DRIVE % SHIELDS
                                          ; % TRANSPUTER %
  DEFM 17,120,110,110,110,110,17,0," ",16,4,110,110,16,3," ",14
  DEFM 17,120,110,110,110,110,17,0," ",16,4,110,110,16,3," ",14
  DEFM 17,120,110,110,110,110,17,0,110,110,"  ",14
  DEFM 16,0,17,120,"LIFE SUPPORT",110,"  ",16,4,"   %",14
  DEFM 16,0,"STAR DRIVE ",193,"  ",16,4,"    ",14
  DEFM 16,0,"IMPULSE DRIVE",110," ",16,4,"   %",14
  DEFM 16,0,"SHIELDS",110,110,110," ",16,4,"   %",14
  DEFM 16,0,178,110,110," ",16,4,"   %"
  DEFM 0
  DEFM 146                ; USS PISCES
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM 105," ",121," ",101 ; YOU CANNOT EXAMINE THE USS PISCES IF YOU ARE NOT
                           ; ABOARD THE MAIN SECTION OF THE SHIP
  DEFM 116," ",146," IF "
  DEFM 105," ",125,148,"T ABOARD "
  DEFM 116," MA",95," SECTION "
  DEFM 111,116," SHIP"
  DEFM 0

; Text Relating to "Command" Command
  DEFM 100," "            ; COMMAND
  DEFM 0
  DEFM "WHICH ",100," DO ",105," WANT ",99,"USE ?",14,14 ; WHICH COMMAND DO YOU
                                                         ; WANT TO USE ? GO TO
                                                         ; SLEEP WAKE UP HELP
                                                         ; (see trivia)
  DEFM 93,"GO ",99,"SLEEP",14
  DEFM 93,"WAKE UP",14
  DEFM 93,104
  DEFM 0
  DEFM "GO ",99,"SLEEP"   ; GO TO SLEEP
  DEFM 0
  DEFM "WAKE UP"          ; WAKE UP
  DEFM 0
  DEFM 104                ; HELP
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31," HEARS ",97,"VOICE ",112," IG",148,"RES IT" ; name of Current
                                                       ; Character} HEARS A
                                                       ; VOICE AND IGNORES IT
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31," DOES ",148,"T RECOGNISE ",105,"R AUTHORITY" ; name of Current
                                                        ; Character} DOES NOT
                                                        ; RECOGNISE YOUR
                                                        ; AUTHORITY
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM 31," DOES ",148,"T LIKE ",172," SO HE IG",148,"RES ",105 ; name of
                                                                ; Current
                                                                ; Character}
                                                                ; DOES NOT LIKE
                                                                ; STARFLEET SO
                                                                ; HE IGNORES
                                                                ; YOU
  DEFM 0
  DEFM 7                  ; Height = 7
  DEFM 31," HEARS ",97    ; name of Current Character} HEARS A MUFFLED VOICE
                          ; BUT CANNOT UNDERSTAND WHAT YOU ARE TRYING TO SAY
  DEFM "MUFFLED VOICE "
  DEFM "BUT ",121," "
  DEFM "UNDERST",112," WHAT "
  DEFM 105," ",125,"TRY",207," "
  DEFM 99,"SAY"
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31," DOES ",148,"T WANT ",99,"BE ",100,"ED BY ",105 ; name of Current
                                                           ; Character} DOES
                                                           ; NOT WANT TO BE
                                                           ; COMMANDED BY YOU
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," ",115,"AL",114,"Y ",122 ; name of Current Character} IS ALREADY
                                    ; ASLEEP
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31," ",115,"TOO WAKEFUL ",99,"SLEEP" ; name of Current Character} IS TOO
                                            ; WAKEFUL TO SLEEP
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," ",151,"GONE ",99,"SLEEP" ; name of Current Character} HAS GONE TO
                                     ; SLEEP
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," ",115,"AL",114,"Y AWAKE" ; name of Current Character} IS ALREADY
                                     ; AWAKE
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," ",115,"TOO TIRED ",99,"WAKE UP" ; name of Current Character} IS TOO
                                            ; TIRED TO WAKE UP
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," ",151,"WOKEN UP" ; name of Current Character} HAS WOKEN UP
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31," ",115,"TOO TIRED ",99,104," ",105 ; name of Current Character} IS
                                              ; TOO TIRED TO HELP YOU
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM 31," ",102,"'I WOULD LIKE ",105," " ; name of Current Character} SAYS 'I
                                           ; WOULD LIKE YOU TO FETCH MY TANKARD
                                           ; FOR ME MAGIC KNIGHT'
  DEFM 99,"FETCH MY TANKARD FOR ME ",144,"'"
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 31," ",102,"'I HAVE RE-ROUTED ",116," " ; name of Current Character}
                                               ; SAYS 'I HAVE RE-ROUTED THE
                                               ; TRANSPORTER CONTROL SYSTEM AS
                                               ; DIRECTED BY THE STARBASE
                                               ; OVERHAUL TRANSPUTER'
  DEFM 141," CONTROL SYSTEM AS DIRECTED BY ",116," "
  DEFM 177," OVERHAUL ",178,"'"
  DEFM 0
  DEFM 11                 ; Height = 11
  DEFM 31," ",102         ; name of Current Character} SAYS 'GORDON WILL NEED
                          ; THE STARMAP BEFORE WE CAN MOVE THE STARSHIP
                          ; ANYWHERE. YOU WILL NEED TO GET THE ADVERT BEFORE
                          ; YOU CAN GET THE STARMAP.'
  DEFM "'",195," WILL NEED "
  DEFM 116," STARMAP "
  DEFM "BEFORE ",113,"CAN "
  DEFM "MOVE ",116," ",145," "
  DEFM "ANYWHERE. ",105," "
  DEFM "WILL NEED ",99,"GET "
  DEFM 116," ADVERT BEFORE "
  DEFM 105," CAN GET ",116," "
  DEFM "STARMAP.'"
  DEFM 0
  DEFM 13                 ; Height = 13
  DEFM 31," ",102,"'SOME " ; name of Current Character} SAYS 'SOME REPAIRS ARE
                           ; NEEDED. WE WILL NEED TO REACH A STARBASE BEFORE
                           ; THEY CAN BE DONE. THE BROKEN EQUIPMENT WILL NOT
                           ; CAUSE PROBLEMS WITH MOVING THE USS PISCES.'
  DEFM "REPAIRS ",125
  DEFM "NEEDED. ",113,"WILL "
  DEFM "NEED ",99,"REACH ",97
  DEFM 177," BEFORE "
  DEFM 116,"Y C",98,"BE DONE. "
  DEFM 116," BROKEN "
  DEFM "EQUIPMENT WILL "
  DEFM 148,"T CAUSE "
  DEFM "PROBLEMS WITH "
  DEFM "MOV",207," ",116," "
  DEFM 146,".'"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," ",151,"TAKEN ",105,"R PHOTO" ; name of Current Character} HAS TAKEN
                                         ; YOUR PHOTO
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 31," ",102,"'I "   ; name of Current Character} SAYS 'I REMEMBER WHEN
                          ; YOU COULD BUY A LOAF OF BREAD FOR 5000 SOLAR
                          ; CREDITS AND STILL HAVE CHANGE!'
  DEFM "REMEMBER WHEN ",105," "
  DEFM "COULD BUY ",97,"LOAF "
  DEFM 111,"B",114," FOR 5000 "
  DEFM "SOLAR CREDITS ",112," "
  DEFM "STILL HAVE "
  DEFM "CHANGE!'"
  DEFM 0
  DEFM 9                  ; Height = 9
  DEFM 31," ",102,"'",116," " ; name of Current Character} SAYS 'THE GOLDEN
                              ; SUNDIAL OF ALPHA. WAS SPLIT INTO THREE PARTS
                              ; AND THEY WILL NEED A GREAT POWER TO JOIN THEM
                              ; AGAIN' (bug)
  DEFM 162," "
  DEFM "WAS SPLIT "
  DEFM 95,99,"THREE PARTS "
  DEFM 112," ",116,"Y WILL "
  DEFM "NEED ",97,"GREAT "
  DEFM "POWER ",99,"JO",95," "
  DEFM 116,"M AGA",95,"'"
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 31," ",102         ; name of Current Character} SAYS 'THANKS FOR THE
                          ; HEART BIG BOY! THE GAS MASK WILL BE HANDY ON
                          ; HOOPERS ASTEROID.' (bug)
  DEFM "'THANKS FOR ",116," "
  DEFM "HEART BIG BOY! "
  DEFM 116," GAS MASK WILL "
  DEFM "BE H",112,"Y ON "
  DEFM 199,"S "
  DEFM "ASTEROID.'"
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM 31," ",102         ; name of Current Character} SAYS 'SHARONN WANTS TO
                          ; KNOW THAT YOU CARE FOR HER.' (bug)
  DEFM "'",201,"N WANTS ",99
  DEFM "K",148,"W THAT ",105," "
  DEFM "C",125,"FOR HER.'"
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM 31," ",102,"'MY "  ; name of Current Character} SAYS 'MY BOOTS COULD BE
                          ; USEFUL IF YOU USE THEM WELL.'
  DEFM "BOOTS COULD BE "
  DEFM "USEFUL IF ",105," USE "
  DEFM "THEM WELL.'"
  DEFM 0
  DEFM 9                  ; Height = 9
  DEFM 31," ",102,"'HARK " ; name of Current Character} SAYS 'HARK WHAT LIGHT
                           ; THRU YONDER PORTHOLE BREAKS. TIS THE GALACTIC EAST
                           ; AND ROMIE 0 IS THE LOCAL STAR.'
  DEFM "WHAT LIGHT THRU "
  DEFM "YONDER PORTHOLE "
  DEFM "BREAKS. TIS ",116," "
  DEFM "GALACTIC EAST ",112," "
  DEFM "ROMIE 0 ",115,116," "
  DEFM "LOCAL STAR.'"
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 31," ",102         ; name of Current Character} SAYS 'FORSOOTH THERE IS
                          ; STICKY STUFF NEARBY. I WOULD TAKE IT FROM YOU MAGIC
                          ; KNIGHT IF YOU WISH'
  DEFM "'FORSOOTH ",116,"RE "
  DEFM 115,"STICKY STUFF "
  DEFM "NEARBY. I WOULD "
  DEFM 117,"IT FROM ",105," "
  DEFM 144," IF "
  DEFM 105," WISH'"
  DEFM 0
  DEFM 12                 ; Height = 12
  DEFM 31," ",102,"'COME " ; name of Current Character} SAYS 'COME ON THEN!
                           ; COME ON THEN!... {name of Current Character}!
                           ; WHO'S A PRETTY BOY THEN? LUMPS OF NINETEEN.
                           ; N.N.N...NINETEEN. I'M NOT REALLY SURE WHATS GOING
                           ; ON!' (bug)
  DEFM "ON ",116,"N! COME ON "
  DEFM 116,"N!... ",31,"! "
  DEFM "WHO'S ",97,"PRETTY "
  DEFM "BOY ",116,"N? LUMPS "
  DEFM 111,"N",95,"ETEEN. "
  DEFM "N.N.N...N",95,"ETEEN. "
  DEFM "I'M ",148,"T REALLY "
  DEFM "SURE WHATS GO",207," "
  DEFM "ON!'"
  DEFM 0

; Text Relating to "Read" Command
  DEFM 92,114," WHICH ",149,"?",94 ; READ WHICH OBJECT ?
  DEFM 0
  DEFM 92,114," ",116," " ; READ THE
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 116,"RE ",115,148," " ; THERE IS NO WRITING FOR ME TO READ
  DEFM "WRIT",207," FOR ME "
  DEFM 99,114
  DEFM 0

; List of Read-Texts of Readable Objects 00: Cloak of Invisibility (note: text
; is not in yellow INK here - perhaps because it isn't actually being read!)
  DEFM 4                  ; Height = 4
  DEFM 29,14,14           ; name of Current Object} I SEE NO CLOAK
  DEFM "I SEE ",148," CLOAK"
  DEFM 0
; 01: Blank I.D. Card
  DEFM 7                  ; Height = 7
  DEFM 92,29,91           ; name of Current Object} STARFLEET COMMANDER
                          ; ................... AUTHORIZED BY
                          ; ...................
  DEFM 172," ",100,"ER",14
  DEFM 165
  DEFM 182
  DEFM 165
  DEFM 0
; 02: Valid I.D. Card
  DEFM 8                  ; Height = 8
  DEFM 92,29,91           ; name of Current Object} STARFLEET COMMANDER **
                          ; MAGIC KNIGHT ** AUTHORIZED BY KING JONES OF THE
                          ; GALACTIC FEDERATION
  DEFM 172," ",100,"ER",14
  DEFM "** ",144," **",14
  DEFM 182
  DEFM "K",207," ",173," ",111,116," "
  DEFM "GALACTIC ",168
  DEFM 0
; 03: Instant Film
  DEFM 4                  ; Height = 4 (bug)
  DEFM 92,29,91           ; name of Current Object} 100 ASA. USE BEFORE APRIL
                          ; 2485 AD
  DEFM "100 ASA. USE BEFORE "
  DEFM "APRIL 2485 AD"
  DEFM 0
; 04: Photograph (of Magic Knight)
  DEFM 7                  ; Height = 7
  DEFM 92,29,91           ; name of Current Object} NO WRITING HERE. BUT THERE
                          ; IS A VERY CUTE PICTURE OF A SHORT GUY IN ARMOUR
  DEFM 148," WRIT",207," HERE. BUT "
  DEFM 116,"RE ",115,97,"VERY CUTE "
  DEFM "PICTURE ",111,97,"SHORT GUY "
  DEFM 95," ARMOUR"
  DEFM 0
; 05: Chocolate Heart
  DEFM 5                  ; Height = 5
  DEFM 92,29,91           ; name of Current Object} THE LABEL READS 'ICH LIEBE
                          ; DICH'
  DEFM 116," LABEL ",114,"S 'ICH "
  DEFM "LIEBE DICH'"
  DEFM 0
; 06: Photograph (of inside of starship)
  DEFM 7                  ; Height = 7
  DEFM 92,29,91           ; name of Current Object} NO WRITING HERE, IN FACT
                          ; ALL THERE IS, IS A PHOTO OF THE INSIDE OF THE
                          ; STARSHIP
  DEFM 148," WRIT",207," HERE, ",95," FACT "
  DEFM "ALL ",116,"RE IS, ",115,97,"PHO",99
  DEFM 111,116," ",95,"SIDE ",111,116," "
  DEFM 145
  DEFM 0
; 07: Pot of Glue
  DEFM 6                  ; Height = 6
  DEFM 92,29,91           ; name of Current Object} STICKY STUFF. FIND IT AND
                          ; YOU WILL HAVE TO KEEP IT
  DEFM "STICKY STUFF. F",95,"D IT "
  DEFM 112," ",105," WILL HAVE ",99
  DEFM "KEEP IT"
  DEFM 0
; 08: 5W Resistor
  DEFM 5                  ; Height = 5
  DEFM 92,29,91           ; name of Current Object} COLOUR CODE READS 1.5K OHM
  DEFM "COLOUR CODE ",114,"S 1.5K "
  DEFM "OHM"
  DEFM 0
; 09: McTablet Food
  DEFM 10                 ; Height = 10
  DEFM 92,29,91           ; name of Current Object} THE LABEL READS 'MCTABLET
                          ; CONDENSED MEALS A COMPLETE NUTRIENT COURSE IN ONE
                          ; HANDY TABLET' THERE IS A PICTURE OF A CLOWN HERE AS
                          ; WELL !
  DEFM 116," LABEL ",114,"S "
  DEFM "'",171," CONDENSED "
  DEFM "MEALS ",97,"COMPLETE "
  DEFM "NUTRIENT COURSE ",95," ONE "
  DEFM "H",112,"Y TABLET' ",116,"RE ",115,97
  DEFM "PICTURE ",111,97,"CLOWN HERE "
  DEFM "AS WELL !"
  DEFM 0
; 10: Golden Sundial of Alpha
  DEFM 7                  ; Height = 7
  DEFM 92,29,91           ; name of Current Object} THE {name of Current
                          ; Object} HAS A MESSAGE INSCRIBED ON THE BASE. IT
                          ; SAYS 'GOLDEN SUNDIAL OF ALPHA..' (bug)
  DEFM 116," ",29," "
  DEFM "HAS ",97,"MESSAGE ",95,"SCRIBED ON ",116," "
  DEFM "BASE. IT ",102,"'"
  DEFM 162,".'"
  DEFM 0
; 11: Pair of Boots
  DEFM 5                  ; Height = 5
  DEFM 92,29,91           ; name of Current Object} SIZE 10, CUSHION SOLE SPACE
                          ; BOOT
  DEFM "SIZE 10, CUSHION SOLE "
  DEFM "SPACE BOOT"
  DEFM 0
; 12: Advert
  DEFM 9                  ; Height = 9
  DEFM 92,29,91           ; name of Current Object} GAME CONCEPT AND PROGRAM BY
                          ; DAVID JONES. OTHER GAMES FROM MASTERTRONIC STARRING
                          ; MAGIC KNIGHT ARE :-FINDERS KEEPERS AND SPELLBOUND
  DEFM 16,7
  DEFM 103," CONCEPT ",112," PROGRAM "
  DEFM "BY "
  DEFM 16,6,18
  DEFM "DAVID ",173,". "
  DEFM 18,16,7
  DEFM "O",116,"R "
  DEFM 103,"S FROM ",143," "
  DEFM "STARR",207," ",144," "
  DEFM 125,":-F",95,"DERS KEEPERS "
  DEFM 112," ",132
  DEFM 0
; 13: Wrist Terminal
  DEFM 7                  ; Height = 7
  DEFM 92,29,91           ; name of Current Object} THERE IS A MESSAGE HERE. IT
                          ; SAYS 'HOOPERS ASTEROID TRANSPORTER COORDINATES ARE
                          ; X1Y8Z4.' (bug)
  DEFM 116,"RE ",115,97,"MESSAGE HERE. "
  DEFM "IT ",102,"'",199,"S "
  DEFM "ASTEROID ",141," "
  DEFM 163,125,"X1Y8Z4.'"
  DEFM 0
; 14: Quark Bomb
  DEFM 5                  ; Height = 5
  DEFM 92,29,91           ; name of Current Object} 250 GIGATON {name of
                          ; Current Object}. BOMB ARMED
  DEFM "250 GIGATON ",29,".",14
  DEFM 18," BOMB ARMED ",18
  DEFM 0

; Text Relating to "Cast a Spell" Command
  DEFM 92,174," ",97,175  ; CAST A SPELL
  DEFM 0
  DEFM 9                  ; Height = 9
  DEFM "WHICH ",175," DO ",105," WANT " ; WHICH SPELL DO YOU WANT TO CAST ?
                                        ; REMOVE BARRIERS CONSULT ORACLE
                                        ; FORTIFY CHARACTER FORTIFY YOURSELF
                                        ; LIGHTNING BOLT
  DEFM 99,174," ?",91
  DEFM 93,179,14
  DEFM 93,180,14
  DEFM 93,181,14
  DEFM 93,176,14
  DEFM 93,183
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 105," ",121," ",174," THAT " ; YOU CANNOT CAST THAT SPELL NOW. MAYBE YOU
                                    ; NEED MORE SPELL POWER
  DEFM 175," ",148,"W. MAYBE ",105," "
  DEFM "NEED MORE ",175," POWER"
  DEFM 0
  DEFM 174," ",179,0      ; CAST REMOVE BARRIERS
  DEFM 174," ",180,0      ; CAST CONSULT ORACLE
  DEFM 174," ",181,0      ; CAST FORTIFY CHARACTER
  DEFM 174," ",176,0      ; CAST FORTIFY YOURSELF
  DEFM 174," ",183,0      ; CAST LIGHTNING BOLT
  DEFM 174," FORTIFY ",175," ON ",0 ; CAST FORTIFY SPELL ON

; Text Relating to "WEAR/UNWEAR OBJECT" Command
  DEFM 14                 ; WEAR UNWEAR
  DEFM 93,119,14
  DEFM 93,"UN",119
  DEFM 0
  DEFM "UN",119," ",116," " ; UNWEAR THE
  DEFM 0
  DEFM "UN",119," WHICH ",149,"?",14 ; UNWEAR WHICH OBJECT ?
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 105," ",125,119,207," TOO MUCH" ; YOU ARE WEARING TOO MUCH
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 105," ",121," ",119," THAT" ; YOU CANNOT WEAR THAT
  DEFM 0

; Text Relating to "MOVE STARSHIP" Command
  DEFM "MOVE ",116," ",145," ",99 ; MOVE THE STARSHIP TO
  DEFM 0
  DEFM "WHERE ",99,"?",14 ; WHERE TO ?
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 116," ",145," ",151 ; THE STARSHIP HAS ARRIVED AT {name of Current
                           ; Starship Location}
  DEFM "ARRIVED AT ",28
  DEFM 0
; "MOVE STARSHIP" Speed Selection Menu Heading Text
  DEFM "WHAT ",138,"SPEED ?",91 ; WHAT TYME DISTORT SPEED ?
  DEFM 0
; "MOVE STARSHIP" Speed Selection Menu Options Text
  DEFM 93,138,"1",14      ; TYME DISTORT 1 TYME DISTORT 2 TYME DISTORT 3 TYME
                          ; DISTORT 4 TYME DISTORT 5 TYME DISTORT 6 TYME
                          ; DISTORT 7 TYME DISTORT 8 TYME DISTORT 9 TYME
                          ; DISTORT 10
  DEFM 93,138,"2",14
  DEFM 93,138,"3",14
  DEFM 93,138,"4",14
  DEFM 93,138,"5",14
  DEFM 93,138,"6",14
  DEFM 93,138,"7",14
  DEFM 93,138,"8",14
  DEFM 93,138,"9",14
  DEFM 93,138,"10"
  DEFM 0
  DEFM 138,"1",0          ; TYME DISTORT 1
  DEFM 138,"2",0          ; TYME DISTORT 2
  DEFM 138,"3",0          ; TYME DISTORT 3
  DEFM 138,"4",0          ; TYME DISTORT 4
  DEFM 138,"5",0          ; TYME DISTORT 5
  DEFM 138,"6",0          ; TYME DISTORT 6
  DEFM 138,"7",0          ; TYME DISTORT 7
  DEFM 138,"8",0          ; TYME DISTORT 8
  DEFM 138,"9",0          ; TYME DISTORT 9
  DEFM 138,"10",0         ; TYME DISTORT 10

; Text Relating to "USE TRANSPORTER" Command
  DEFM "SEND ",141," CONTENTS " ; SEND TRANSPORTER CONTENTS
  DEFM 0
  DEFM "ENTER ",141," ",163,14 ; ENTER TRANSPORTER COORDINATES 8 8 8 9 9 9
                               ; X0Y0Z0 1 1 1 2 2 2 MOVE THE REELS UP OR DOWN
                               ; USING THE JOYSTICK AND PRESS FIRE TO CHOOSE.
  DEFM 93,16,7,110,"8 8 8",14
  DEFM 16,0,93,110,"9 9 9",14
  DEFM 93,"  X0Y0Z0",14
  DEFM 93,110,"1 1 1",14
  DEFM 93,16,7,110,"2 2 2",14
  DEFM 16,0,"MOVE ",116," REELS UP "
  DEFM "OR DOWN US",207," ",116," "
  DEFM 215,112," "
  DEFM "PRESS FIRE ",99
  DEFM "CHOOSE."
  DEFM 0
  DEFM 99                 ; TO
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 116," ",141," "    ; THE TRANSPORTER IS BROKEN
  DEFM 115,"BROKEN"
  DEFM 0

; Miscellaneous Text
  DEFM 35," ",0           ; room name bar end cap (right)
  DEFM " ",36,0           ; room name bar end cap (left)
  DEFM 3                  ; Height = 3
  DEFM 31,186," "         ; name of Current Character} CANNOT HELP YOU
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 187                ; YOU HAVE ARRIVED AT X.Y.Z.
  DEFM "X.Y.Z."
  DEFM 0

; Text Relating to "COMMUNICATE" Command
  DEFM 140,"E WITH ",28,14 ; COMMUNICATE WITH {name of Current Starship
                           ; Location}
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM "CHOOSE ",140,"ION",91 ; CHOOSE COMMUNICATION REQUEST HELP REFUEL
                              ; STARSHIP
  DEFM 93,192," ",104,14
  DEFM 93,"RE",193," ",145
  DEFM 0
  DEFM "RE",193," ",145," ",192,"ED" ; REFUEL STARSHIP REQUESTED
  DEFM 0
  DEFM 14                 ; SORRY MAGIC KNIGHT WE ARE OUT OF FUEL
  DEFM 194," ",144," ",113,125,"OUT ",111,193
  DEFM 0
  DEFM 14                 ; Height = 14
  DEFM 194," ",144," "    ; SORRY MAGIC KNIGHT WE DO NOT HAVE ENOUGH FUEL TO
                          ; FILL UP YOUR TANK
  DEFM 113,"DO ",148,"T "
  DEFM "HAVE E",148,"UGH "
  DEFM 193," ",99
  DEFM "FILL UP ",105,"R "
  DEFM "TANK"
  DEFM 0
  DEFM 14                 ; Height = 14
  DEFM 116," ",146," ",115,"FULLY RE",193,"ED" ; THE USS PISCES IS FULLY
                                               ; REFUELED
  DEFM 0
  DEFM 192," ",104,0      ; REQUEST HELP
  DEFM "RE",193," ",145,0 ; REFUEL STARSHIP
  DEFM 6                  ; Height = 6
  DEFM 116,"RE ",115,148,"BODY WITH",95," SUB-SPACE ",140,"OR RANGE" ; THERE IS
                                                                     ; NOBODY
                                                                     ; WITHIN
                                                                     ; SUB-SPACE
                                                                     ; COMMUNICATOR
                                                                     ; RANGE
  DEFM 0

; Text Relating to "MOVE STARSHIP" Command
  DEFM 4                  ; Height = 4
  DEFM 185,125,"BOTH ",122 ; GORDON AND SARAB ARE BOTH ASLEEP
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 185,121," UNDERST",112," ",105 ; GORDON AND SARAB CANNOT UNDERSTAND YOU
  DEFM 0

; Object names
;
; Zero-terminated strings
  DEFM 14,150,"AT ALL ",0 ; NOTHING AT ALL
  DEFM "CLOAK ",111,"INVISIBILITY",0 ; CLOAK OF INVISIBILITY
  DEFM "BLANK I.D. CARD",0 ; BLANK I.D. CARD
  DEFM "VALID I.D. CARD",0 ; VALID I.D. CARD
  DEFM "INSTANT FILM",0   ; INSTANT FILM
  DEFM "PHOTOGRAPH",0     ; PHOTOGRAPH
  DEFM "STAR MAP",0       ; STAR MAP
  DEFM "GADGET X",0       ; GADGET X
  DEFM "CAMERA",0         ; CAMERA
  DEFM "PHOTOGRAPH",0     ; PHOTOGRAPH
  DEFM "POT ",111,"GLUE",0 ; POT OF GLUE
  DEFM "5W RESISTOR",0    ; 5W RESISTOR
  DEFM "MAGIC TALISMAN",0 ; MAGIC TALISMAN
  DEFM "GOLDEN SUNDIAL",0 ; GOLDEN SUNDIAL
  DEFM 171," FOOD",0      ; MCTABLET FOOD
  DEFM "BROKEN GLASS",0   ; BROKEN GLASS
  DEFM "QUARK BOMB",0     ; QUARK BOMB
  DEFM "ADVERT",0         ; ADVERT
  DEFM 152,0              ; PART OF A SUNDIAL
  DEFM 152,0              ; PART OF A SUNDIAL
  DEFM 152,0              ; PART OF A SUNDIAL
  DEFM "BRASS ANKH",0     ; BRASS ANKH
  DEFM "PAIR ",111,"BOOTS",0 ; PAIR OF BOOTS
  DEFM "CHOCOLATE HEART",0 ; CHOCOLATE HEART
  DEFM 172," MANUAL",0    ; STARFLEET MANUAL
  DEFM "ANCIENT SCROLL",0 ; ANCIENT SCROLL
  DEFM "TOWER FISH",0     ; TOWER FISH
  DEFM "GAS MASK",0       ; GAS MASK
  DEFM "SHIELD",0         ; SHIELD
  DEFM "BAG ",111,"RUNES",0 ; BAG OF RUNES
  DEFM "BAG ",111,"POTATOES",0 ; BAG OF POTATOES
  DEFM "PEWTER TANKARD",0 ; PEWTER TANKARD
  DEFM "AXE",0            ; AXE
  DEFM "WRIST TERMINAL",0 ; WRIST TERMINAL
  DEFM "TORCH",0          ; TORCH
  DEFM "MIRROR",0         ; MIRROR
  DEFM "10 MW LASER",0    ; 10 MW LASER

; Room names
;
; Strings are zero-terminated. For rooms without a name, the entry is a single
; zero byte. For rooms with names, the first two bytes of the entry are data,
; and the text string itself starts at the third byte. The data structure is:
  DEFM 71,19,116," RECREATION ",208,0 ; THE RECREATION ROOM
  DEFM 71,10,116," BRIDGE",0 ; THE BRIDGE
  DEFM 71,20,116," ",141," ",208,0 ; THE TRANSPORTER ROOM
  DEFM 71,19,116," ",178," ",208,0 ; THE TRANSPUTER ROOM
  DEFM 71,10,"CARGO HOLD",0 ; CARGO HOLD
  DEFM 71,11,116," AIRLOCK",0 ; THE AIRLOCK
  DEFM 71,13,116," LIFE BOAT",0 ; THE LIFE BOAT
  DEFM 103,12,200,"'S MOON",0 ; MURPHY'S MOON
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 71,20,116," ",141," ",208,0 ; THE TRANSPORTER ROOM
  DEFM 71,22,171," TAKEAWAY FOOD",0 ; MCTABLET TAKEAWAY FOOD
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 71,17,193," & CARGO AREA",0 ; FUEL & CARGO AREA
  DEFM 71,19,"YE OLDE ",141,0 ; YE OLDE TRANSPORTER
  DEFM 71,23,116," MA",95," DEFENCE SYSTEM",0 ; THE MAIN DEFENCE SYSTEM
  DEFM 0                  ; Unused
  DEFM 71,18,116," PRO",111,111,"POWER",0 ; THE PROOF OF POWER
  DEFM 71,18,116," ",167,0 ; THE TYME GUARDIANS
  DEFM 71,23,199,"'S EMERGENCY EXIT",0 ; HOOPER'S EMERGENCY EXIT
  DEFM 71,24,"TH",115,"WAY ",99,199," ==>>",0 ; THIS WAY TO HOOPER ==>>
  DEFM 71,14,"HERE ",115,199,0 ; HERE IS HOOPER
  DEFM 71,18,116," CONTROL COLUMN",0 ; THE CONTROL COLUMN

; Starship Destination Names
;
; Zero-terminated strings
  DEFM 0                  ; Unused
  DEFM "DENEB",0          ; DENEB
  DEFM "GATH",0           ; GATH
  DEFM 108,0              ; MONOPOLE
  DEFM "PORTHOS",0        ; PORTHOS
  DEFM "STARBASE 1",0     ; STARBASE 1
  DEFM "LYNX",0           ; LYNX
  DEFM "NIRVANA",0        ; NIRVANA
  DEFM "LIMBO",0          ; LIMBO
  DEFM "EDEN",0           ; EDEN
  DEFM 106,0              ; HERSCHELL
  DEFM "TRANTORE",0       ; TRANTORE
  DEFM "PLOP PLOP",0      ; PLOP PLOP
  DEFM "BRIGHTSTAR",0     ; BRIGHTSTAR
  DEFM "OUTPOST",0        ; OUTPOST
  DEFM "POLARIS",0        ; POLARIS
  DEFM "B",207,"O",0      ; BINGO
  DEFM 107,0              ; RETREAT
  DEFM "DRAGON EGG",0     ; DRAGON EGG
  DEFM "ARIDIA",0         ; ARIDIA
  DEFM "GANGROLE",0       ; GANGROLE
  DEFM "NAFF",0           ; NAFF
  DEFM "REEF",0           ; REEF
  DEFM "ME",148,"PAUSIA",0 ; MENOPAUSIA
  DEFM "PL",95,"KIT",0    ; PLINKIT

; Common Words Table, Part 1
;
; This data block contains a list of zero-terminated (sub-)strings. Other text
; blocks reference this table when a particular string is required. This
; reduces the space requirements for storage of all of the game's text.
  DEFM 14,14,0            ; carriage return / line feed}{carriage return / line
                          ; feed
  DEFM 16,6,0             ; change INK colour to yellow
  DEFM 9,9,0              ; move text cursor right by two characters
  DEFM 14,16,7,0          ; carriage return / line feed}{change INK colour to
                          ; white
  DEFM "IN",0             ; IN
  DEFM " = ",0            ; =
  DEFM "A ",0             ; A
  DEFM "AN ",0            ; AN
  DEFM "TO ",0            ; TO
  DEFM "COMMAND",0        ; COMMAND
  DEFM "EXAMINE ",0       ; EXAMINE
  DEFM "SAYS ",0          ; SAYS
  DEFM "GAME",0           ; GAME
  DEFM "HELP",0           ; HELP
  DEFM "YOU",0            ; YOU
  DEFM "HERSCHELL",0      ; HERSCHELL
  DEFM "RETREAT",0        ; RETREAT
  DEFM "MONOPOLE",0       ; MONOPOLE
  DEFM "ECCENTRIC",0      ; ECCENTRIC
  DEFM "   ",0
  DEFM "OF ",0            ; OF
  DEFM "AND",0            ; AND
  DEFM "WE ",0            ; WE
  DEFM "READ",0           ; READ
  DEFM "IS ",0            ; IS
  DEFM "THE",0            ; THE
  DEFM "TAKE ",0          ; TAKE
  DEFM "GIVE ",0          ; GIVE
  DEFM "WEAR",0           ; WEAR
  DEFM "DROP ",0          ; DROP
  DEFM "CANNOT",0         ; CANNOT
  DEFM "ASLEEP",0         ; ASLEEP
  DEFM "DREAMING ",0      ; DREAMING
  DEFM "ABOUT ",0         ; ABOUT
  DEFM "ARE ",0           ; ARE
  DEFM "ASTRONOMER",0     ; ASTRONOMER
  DEFM "ANYTHING",0       ; ANYTHING
  DEFM "HELLO ",0         ; HELLO
  DEFM "TIME",0           ; TIME
  DEFM 0                  ; Unused
  DEFM "SECURITY",0       ; SECURITY
  DEFM "SPELLBOUND ",0    ; SPELLBOUND
  DEFM " LOCATION : ",0   ; LOCATION :
  DEFM "WINDIMATION",0    ; WINDIMATION
  DEFM "ATTRIBUTE ",0     ; ATTRIBUTE
  DEFM "PLAYER ",0        ; PLAYER
  DEFM "GREETINGS ",0     ; GREETINGS
  DEFM "TYME DISTORT ",0  ; TYME DISTORT
  DEFM "SOMETHING ",0     ; SOMETHING
  DEFM "COMMUNICAT",0     ; COMMUNICAT
  DEFM "TRANSPORTER",0    ; TRANSPORTER
  DEFM "KNIGHT-TYME",0    ; KNIGHT-TYME
  DEFM "MASTERTRONIC",0   ; MASTERTRONIC
  DEFM "MAGIC KNIGHT",0   ; MAGIC KNIGHT
  DEFM "STARSHIP",0       ; STARSHIP
  DEFM "USS PISCES",0     ; USS PISCES
  DEFM "YES",0            ; YES
  DEFM "NO",0             ; NO
  DEFM "OBJECT ",0        ; OBJECT
  DEFM "NOTHING ",0       ; NOTHING
  DEFM "HAS ",0           ; HAS
  DEFM "PART OF A SUNDIAL",0 ; PART OF A SUNDIAL
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM "GOLDEN SUNDIAL ",111,"ALPHA.",0 ; GOLDEN SUNDIAL OF ALPHA. (bug)
  DEFM "COORDINATES ",0   ; COORDINATES
  DEFM 116,"RE ",115,150,"USEFUL FROM ",116," ORACLE NOW",0 ; THERE IS NOTHING
                                                            ; USEFUL FROM THE
                                                            ; ORACLE NOW
  DEFM "...................",14,0 ; ...................
  DEFM "TYME MACHINE",0   ; TYME MACHINE
  DEFM "TYME GUARDIANS",0 ; TYME GUARDIANS
  DEFM "FEDERATION ",0    ; FEDERATION
  DEFM "HERE",0           ; HERE
  DEFM "YET",0            ; YET
  DEFM "MCTABLET",0       ; MCTABLET
  DEFM "STARFLEET",0      ; STARFLEET
  DEFM "JONES",0          ; JONES
  DEFM "CAST",0           ; CAST
  DEFM "SPELL",0          ; SPELL
  DEFM "FORTIFY ",105,"RSELF",0 ; FORTIFY YOURSELF
  DEFM "STARBASE",0       ; STARBASE
  DEFM "TRANSPUTER",0     ; TRANSPUTER
  DEFM "REMOVE BARRIERS",0 ; REMOVE BARRIERS
  DEFM "CONSULT ORACLE",0 ; CONSULT ORACLE
  DEFM "FORTIFY CHARACTER",0 ; FORTIFY CHARACTER
  DEFM "AUTHORIZED BY",14,0 ; AUTHORIZED BY
  DEFM "LIGHTNING BOLT",0 ; LIGHTNING BOLT
  DEFM 0                  ; Unused
  DEFM 195," ",112," ",196," ",0 ; GORDON AND SARAB
  DEFM " CANNOT ",104," ",105," ",0 ; CANNOT HELP YOU
  DEFM 105," HAVE ARRIVED AT ",0 ; YOU HAVE ARRIVED AT
  DEFM "CONTROL : ",0     ; CONTROL :
  DEFM "IN TRANSIT",0     ; IN TRANSIT
  DEFM " N",96,"LEFT",110,"  M",96,"RIGHT",91 ; N = LEFT M = RIGHT A = JUMP/UP
                                              ; Z = DOWN - = MENU (FIRE)
  DEFM " A",96,"JUMP/UP  Z",96,"DOWN",91
  DEFM " -",96,"MENU (FIRE)",0

; Common Words Table, Part 2
;
; This data block contains a list of zero-terminated (sub-)strings. Other text
; blocks reference this table when a particular string is required. This
; reduces the space requirements for storage of all of the game's text.
  DEFM "CITIZEN",0        ; CITIZEN
  DEFM "REQUEST",0        ; REQUEST
  DEFM "FUEL",0           ; FUEL
  DEFM "SORRY",0          ; SORRY
  DEFM "GORDON",0         ; GORDON
  DEFM "SARAB",0          ; SARAB
  DEFM "KLINK",0          ; KLINK
  DEFM "S3 E3",0          ; S3 E3
  DEFM "HOOPER",0         ; HOOPER
  DEFM "MURPHY",0         ; MURPHY
  DEFM "SHARON",0         ; SHARON
  DEFM "FORBIN",0         ; FORBIN
  DEFM "DERBY IV",0       ; DERBY IV
  DEFM "SWIFTFOOT",0      ; SWIFTFOOT
  DEFM "JULIE 8",0        ; JULIE 8
  DEFM "HECTORR",0        ; HECTORR
  DEFM "ING",0            ; ING
  DEFM "ROOM",0           ; ROOM
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM "KEYBOARD",0       ; KEYBOARD
  DEFM "KEMPSTON ",215,0  ; KEMPSTON JOYSTICK
  DEFM "CURSOR ",215,0    ; CURSOR JOYSTICK
  DEFM "SINCLAIR ",215,"1",0 ; SINCLAIR JOYSTICK 1
  DEFM "JOYSTICK ",0      ; JOYSTICK

; Table of Characters' Wanted Objects
;
; Each entry is comprised of two bytes. The End Marker is denoted by a value of
; 255 in the first byte.
  DEFB 0,6                ; Gordon, Star Map
  DEFB 2,36               ; Klink, 10MW Laser
  DEFB 4,29               ; Hooper, Bag of Runes
  DEFB 5,30               ; Murphy, Bag of Potatoes
  DEFB 6,23               ; Sharon, Chocolate Heart
  DEFB 11,10              ; Hectorr, Pot of Glue
  DEFB 255                ; End Marker

; Table of Characters' Unwanted Objects
;
; Each entry is comprised of two bytes. The End Marker is denoted by a value of
; 255 in the first byte.
  DEFB 0,10               ; Gordon, Pot of Glue
  DEFB 1,6                ; Sarab, Star Map
  DEFB 1,10               ; Sarab, Pot of Glue
  DEFB 2,10               ; Klink, Pot of Glue
  DEFB 3,10               ; S3 E3, Pot of Glue
  DEFB 4,10               ; Hooper, Pot of Glue
  DEFB 5,10               ; Murphy, Pot of Glue
  DEFB 6,10               ; Sharon, Pot of Glue
  DEFB 7,10               ; Forbin, Pot of Glue
  DEFB 8,10               ; Derby IV, Pot of Glue
  DEFB 9,10               ; Swiftfoot, Pot of Glue
  DEFB 10,10              ; Julie 8, Pot of Glue
  DEFB 255                ; End Marker

; Character's Responses to McTablet Flavours
  DEFM 6                  ; Height = 6
  DEFM 31," ",102         ; name of Current Character} SAYS 'GREAT ! CHEESE AND
                          ; ONION FLAVOUR MCTABLET IS MY FAVOURITE'
  DEFM "'GREAT ! CHEESE "
  DEFM 112," ONION FLAVOUR "
  DEFM 171," ",115,"MY "
  DEFM "FAVOURITE'"
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 31," ",102,"'I DO " ; name of Current Character} SAYS 'I DO NOT LIKE
                           ; ORIGINAL SALTY FLAVOUR MCTABLET BUT AT LEAST IT
                           ; CONTAINS NO ANIMAL PRODUCTS'
  DEFM 148,"T LIKE ORIG",95,"AL "
  DEFM "SALTY FLAVOUR "
  DEFM 171," BUT AT "
  DEFM "LEAST IT CONTA",95,"S "
  DEFM 148," ANIMAL "
  DEFM "PRODUCTS'"
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31," ",102,"'BEEF " ; name of Current Character} SAYS 'BEEF AND ONION
                           ; MCTABLET! YUK!!'
  DEFM 112," ONION "
  DEFM 171,"! YUK!!'"
  DEFM 0
  DEFM 7                  ; Height = 7
  DEFM 31," ",102         ; name of Current Character} SAYS 'YUMMY ! YOU CAN
                          ; ALMOST TASTE THE SIDE SALAD IN THIS T-BONE STEAK
                          ; MCTABLET'
  DEFM "'YUMMY ! ",105," C",98
  DEFM "ALMOST TASTE ",116," "
  DEFM "SIDE SALAD ",95," "
  DEFM "TH",115,"T-BONE STEAK "
  DEFM 171,"'"
  DEFM 0

; Cyan "Game Over" Window Texts and Transporter Problem Messages
  DEFM 103," OVER",14     ; GAME OVER TOTAL COMPLETION 000 % TIME LEFT 30 DAYS
  DEFM "TOTAL COMPLETION 000 % "
  DEFM 129," LEFT 30 DAYS",91
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM "BREAK KEY PRESSED" ; BREAK KEY PRESSED
  DEFM 0
  DEFM 11                 ; Height = 11
  DEFM 105," HAVE ESCAPED FROM " ; YOU HAVE ESCAPED FROM THE FUTURE AND ARE
                                 ; HEADING BACK TO YOUR OWN TIME. TO BE
                                 ; CONTINUED....
  DEFM 116," FUTURE ",112," ",125
  DEFM "HEAD",207," BACK ",99,105,"R "
  DEFM "OWN ",129,".",91
  DEFM 99,"BE CONT",95,"UED...."
  DEFM 0
  DEFM 6                  ; Height = 5
  DEFM 105," DIED ",111,"EXHAUSTION" ; YOU DIED OF EXHAUSTION
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 131," HEARD ",105," ",112," " ; SECURITY HEARD YOU AND THREW YOU OUT OF
                                     ; THE AIRLOCK
  DEFM "THREW ",105," OUT ",111,116," "
  DEFM "AIRLOCK"
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 131," SAW ",105," ",112," " ; SECURITY SAW YOU AND BLASTED YOU INTO
                                   ; SPACE DUST
  DEFM "BLASTED ",105," ",95,99,"SPACE "
  DEFM "DUST"
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 116," GAS PENETRATED " ; THE GAS PENETRATED YOUR ARMOUR AND YOU DIED
                              ; HORRIBLY.
  DEFM 105,"R ARMOUR ",112," ",105," "
  DEFM "DIED HORRIBLY."
  DEFM 0
  DEFM 12                 ; Height = 12
  DEFM 116," AU",99,"DEFENCE " ; THE AUTO DEFENCE SYSTEMS HAVE REMOVED YOU FROM
                               ; THIS SPACE/TIME CONTINUUM. YOU NEEDED THE
                               ; GOLDEN SUNDIAL OF ALPHA. TO PASS (bug)
  DEFM "SYSTEMS HAVE REMOVED "
  DEFM 105," FROM TH",115
  DEFM "SPACE/",129," CONT",95,"UUM. "
  DEFM 105," NEEDED ",116," "
  DEFM 162," ",99,"PASS"
  DEFM 0
  DEFM 11                 ; Height = 11
  DEFM 105," HAVE DESTROYED " ; YOU HAVE DESTROYED YOURSELF BY DROPPING THE
                              ; {name of Current Object}. THERE IS UTTER CHAOS
                              ; FOR 3.14 PARSECS IN ALL DIRECTIONS
  DEFM 105,"RSELF BY DROPP",207," "
  DEFM 116," ",29,". "
  DEFM 116,"RE ",115,"UTTER CHAOS "
  DEFM "FOR 3.14 PARSECS ",95," "
  DEFM "ALL DIRECTIONS"
  DEFM 0
  DEFM 9                  ; Height = 9
  DEFM 105," R",98,"OUT ",111,"STAR " ; YOU RAN OUT OF STAR DRIVE FUEL AND HAVE
                                      ; STRANDED YOURSELF IN DEEP SPACE
  DEFM "DRIVE FUEL ",112," HAVE "
  DEFM "STR",112,"ED ",105,"RSELF ",95," "
  DEFM "DEEP SPACE"
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM 116," ",141," "    ; THE TRANSPORTER SENDS YOU TO SUFFOCATE IN THE COLD
                          ; OF OUTER SPACE
  DEFM "SENDS ",105," ",99
  DEFM "SUFFOCATE ",95," "
  DEFM 116," COLD ",111
  DEFM "OUTER SPACE"
  DEFM 0
  DEFM 12                 ; Height = 12
  DEFM 116," ",141," ",151 ; THE TRANSPORTER HAS MALFUNCTIONED AND SPREAD YOUR
                           ; ATOMS ACROSS THE COSMOS IN THE SHAPE OF A
                           ; BUTTERFLY. WHAT A PRETTY WAY TO DIE !
  DEFM "MALFUNCTIONED ",112," "
  DEFM "SP",114," ",105,"R ATOMS "
  DEFM "ACROSS ",116," COSMOS ",95," "
  DEFM 116," SHAPE ",111,97
  DEFM "BUTTERFLY. WHAT ",97
  DEFM "PRETTY WAY ",99,"DIE !"
  DEFM 0
  DEFM 10                 ; Height = 10
  DEFM "IT WOULD MAKE MORE " ; IT WOULD MAKE MORE SENSE TO ENTER COORDINATES
                             ; THAT LAND YOU ON A TRANSPORTER PAD OF SOME SORT
                             ; !
  DEFM "SENSE ",99,"ENTER "
  DEFM 163,"THAT L",112," "
  DEFM 105," ON ",97,141," "
  DEFM "PAD ",111,"SOME SORT !"
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM 105," R",98,"OUT ",111,129 ; YOU RAN OUT OF TIME
  DEFM 0

; Derby IV Dialogue and I.D. Card Messages
  DEFM 11                 ; Height = 11
  DEFM 31," ",102,"'",128 ; name of Current Character} SAYS 'HELLO MAGIC
                          ; KNIGHT. AS A TEMPORALY MISPLACED PERSON YOU ARE
                          ; ALSO UNWITTINGLY A STOWAWAY ON THIS STARSHIP.
                          ; FORTUNATELY FOR YOU MY PROGRAMMERS FORESAW YOUR
                          ; ARRIVAL AND HAVE GIVEN ME A CHANCE TO HELP YOU.
                          ; (bug)
  DEFM 144,". AS ",97
  DEFM "TEMPORALY MISPLACED "
  DEFM "PERSON ",105," ",125,"ALSO "
  DEFM "UNWITT",207,"LY ",97,"STOWAWAY ON "
  DEFM "TH",115,145,". "
  DEFM "FORTUNATELY FOR ",105," MY "
  DEFM "PROGRAMMERS FORESAW ",105,"R "
  DEFM "ARRIVAL ",112," HAVE GIVEN ME "
  DEFM 97,"CHANCE ",99,104," ",105,"."
  DEFM 0
  DEFM 11                 ; Height = 11
  DEFM "FROM ",129," ",99,129," " ; FROM TIME TO TIME I WILL BE ABLE TO GIVE
                                  ; YOU ADVICE. FOR THE MOMENT THE ONLY HELP I
                                  ; CAN GIVE YOU IS THIS BLANK I.D. CARD WHICH
                                  ; YOU WILL HAVE TO GET AUTHORIZED'
  DEFM "I WILL BE ABLE ",99
  DEFM 118,105," ADVICE. "
  DEFM "FOR ",116," MOMENT "
  DEFM 116," ONLY ",104," I "
  DEFM "C",98,118,105," ",115
  DEFM "TH",115,"BLANK I.D. "
  DEFM "CARD WHICH ",105," "
  DEFM "WILL HAVE ",99,"GET "
  DEFM "AUTHORIZED'"
  DEFM 0
  DEFM 7                  ; Height = 7
  DEFM "WHIRRRRR........ PLOP !",14 ; WHIRRRRR........ PLOP ! A PIECE OF
                                    ; PLASTICARD HAS FALLEN FROM A SLOT IN THE
                                    ; TRANSPUTER. IT HAS A SECTION SAYING
                                    ; 'REGISTER YOUR I.D. HERE'
  DEFM 97,"PIECE ",111,"PLASTICARD ",151
  DEFM "FALLEN FROM ",97,"SLOT ",95," ",116," "
  DEFM 178,". IT ",151,97
  DEFM "SECTION SAY",207," 'REGISTER "
  DEFM 105,"R I.D. HERE'"
  DEFM 0
  DEFM 9                  ; Height = 9
  DEFM 31," ",102,"'STICK ",105,"R " ; name of Current Character} SAYS 'STICK
                                     ; YOUR PHOTO ON THE I.D. CARD SO THAT THE
                                     ; NON-ELECTRONIC CREW WILL TAKE NOTICE OF
                                     ; YOU. I HAVE FIXED IT SO THAT YOU WILL BE
                                     ; QUITE AN IMPORTANT STARFLEET OFFICIAL.'
  DEFM "PHO",99,"ON ",116," I.D. CARD SO "
  DEFM "THAT ",116," ",148,"N-ELECTRONIC "
  DEFM "CREW WILL ",117,148,"TICE ",111
  DEFM 105,". I HAVE FIXED IT SO "
  DEFM "THAT ",105," WILL BE QUITE ",98
  DEFM "IMPORTANT ",172," "
  DEFM "OFFICIAL.'"
  DEFM 0
  DEFM 11                 ; Height = 10
  DEFM "OOOPS!.. ",105," HAVE " ; OOOPS!.. YOU HAVE HAD AN ACCIDENT WITH THE
                                ; GLUE! THE PHOTO HAS BECOME STUCK TO THE BLANK
                                ; I.D. CARD. IT WOULD SEEM THAT YOU HAVE BEEN
                                ; QUITE LUCKY.
  DEFM "HAD ",98,"ACCIDENT "
  DEFM "WITH ",116," GLUE! "
  DEFM 116," PHO",99,151
  DEFM "BECOME STUCK ",99
  DEFM 116," BLANK I.D. "
  DEFM "CARD. IT WOULD "
  DEFM "SEEM THAT ",105," "
  DEFM "HAVE BEEN QUITE "
  DEFM "LUCKY."
  DEFM 0

; "Eat Own McTablets" Message
  DEFM 5                  ; Height = 4
  DEFM 105," HAD ",99,"EAT " ; YOU HAD TO EAT SOME OF YOUR OWN MCTABLETS TO
                             ; KEEP YOUR STRENGTH UP.
  DEFM "SOME ",111,105,"R OWN "
  DEFM 171,"S ",99,"KEEP "
  DEFM 105,"R STRENGTH UP."
  DEFM 0

; "CAST A SPELL" Messages Consult Oracle (00)
  DEFM 4                  ; Height = 4
  DEFM 116," ORACLE ",115,148,"T " ; THE ORACLE IS NOT ABLE TO HELP AT THE
                                   ; MOMENT
  DEFM "ABLE ",99,104," AT "
  DEFM 116," MOMENT"
  DEFM 0
; Consult Oracle (01)
  DEFM 4                  ; Height = 4
  DEFM 164                ; THERE IS NOTHING USEFUL FROM THE ORACLE NOW
  DEFM 0
; Consult Oracle (02)
  DEFM 4                  ; Height = 4
  DEFM 164                ; THERE IS NOTHING USEFUL FROM THE ORACLE NOW
  DEFM 0
; Consult Oracle (03)
  DEFM 14                 ; Height = 14
  DEFM 116," "            ; THE GOLDEN SUNDIAL OF ALPHA. WAS THE SYMBOL OF THE
                          ; TYME GUARDIANS POWER. NOBODY KNOWS FOR CERTAIN
                          ; WHERE IT IS NOWBUT THERE ARE RUMOURS THAT IT WAS
                          ; BROKEN UP FOR SCRAP WHEN THE TYME GUARDIANS WERE
                          ; OFFICIALLY DISBANDED. (bug)
  DEFM 162," WAS ",116," "
  DEFM "SYMBOL ",111,116," "
  DEFM 167," POWER. "
  DEFM 148,"BODY K",148,"WS FOR "
  DEFM "CERTA",95," WHERE IT "
  DEFM 115,148,"WBUT ",116,"RE "
  DEFM 125,"RUMOURS THAT "
  DEFM "IT WAS BROKEN UP "
  DEFM "FOR SCRAP WHEN ",116," "
  DEFM 167," "
  DEFM "WERE OFFICIALLY "
  DEFM "DISB",112,"ED."
  DEFM 0
; Consult Oracle (04)
  DEFM 4                  ; Height = 4
  DEFM 164                ; THERE IS NOTHING USEFUL FROM THE ORACLE NOW
  DEFM 0
; Consult Oracle (05)
  DEFM 10                 ; Height = 10
  DEFM 116," ORACLE HAS " ; THE ORACLE HAS LOCATED THE TYME GUARDIANS AT A
                          ; PLACE CALLED OUTPOST. THEY HAVE BEEN THERE IN
                          ; HIDING SINCE THE END OF THE 23RD CENTURY.
  DEFM "LOCATED ",116," "
  DEFM 167," "
  DEFM "AT ",97,"PLACE CALLED "
  DEFM "OUTPOST. ",116,"Y HAVE "
  DEFM "BEEN ",116,"RE ",95," "
  DEFM "HID",207," S",95,"CE ",116," "
  DEFM "END ",111,116," 23RD "
  DEFM "CENTURY."
  DEFM 0
; Consult Oracle (06)
  DEFM 8                  ; Height = 8
  DEFM 116," ORACLE SEES " ; THE ORACLE SEES DANGER ON SOME PLANETS. SECURITY
                           ; SYSTEMS MUST BE BYPASSED. SOME SILENT BOOTS COULD
                           ; PROVE USEFUL.
  DEFM "DANGER ON SOME "
  DEFM "PLANETS. ",131," "
  DEFM "SYSTEMS MUST BE "
  DEFM "BYPASSED. SOME "
  DEFM "SILENT BOOTS COULD "
  DEFM "PROVE USEFUL."
  DEFM 0
; Consult Oracle (07)
  DEFM 8                  ; Height = 8
  DEFM 116,"RE ",115,97,"SUNDIAL " ; THERE IS A SUNDIAL TO BE MENDED. YOU MUST
                                   ; APPLY A LARGE BURST OF ENERGY TO THE
                                   ; SEGMENTS BEFORE THEY WILL MERGE
  DEFM 99,"BE MENDED. ",105," "
  DEFM "MUST APPLY ",97,"LARGE "
  DEFM "BURST ",111,"ENERGY ",99
  DEFM 116," SEGMENTS "
  DEFM "BEFORE ",116,"Y WILL "
  DEFM "MERGE"
  DEFM 0
; Consult Oracle (08)
  DEFM 4                  ; Height = 4
  DEFM "IT ",104,"S ",99,"BE " ; IT HELPS TO BE UNSEEN IN SOME PLACES
  DEFM "UNSEEN ",95," SOME "
  DEFM "PLACES"
  DEFM 0
; Consult Oracle (09)
  DEFM 5                  ; Height = 5
  DEFM 97,"GAS MASK WILL " ; A GAS MASK WILL SAVE YOUR LIFE IF YOU USE IT IN
                           ; THE RIGHT PLACE
  DEFM "SAVE ",105,"R LIFE IF "
  DEFM 105," USE IT ",95," ",116," "
  DEFM "RIGHT PLACE"
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 116,"RE ",125,148," " ; THERE ARE NO BARRIERS TO BE REMOVED HERE.
  DEFM "BARRIERS ",99,"BE "
  DEFM "REMOVED HERE."
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 116," BARRIER HAS " ; THE BARRIER HAS FADED INTO NOTHINGNESS
  DEFM "FADED ",95,99
  DEFM 148,"TH",207,"NESS"
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 105," HAVE THROWN ",97 ; YOU HAVE THROWN A LIGHTNING BOLT BUT THERE WAS
                              ; NO OBVIOUS TARGET SO IT DISSIPATED HARMLESSLY
                              ; IN THE AIR.
  DEFM 183," BUT "
  DEFM 116,"RE WAS ",148," "
  DEFM "OBVIOUS TARGET SO "
  DEFM "IT DISSIPATED "
  DEFM "HARMLESSLY ",95," ",116," "
  DEFM "AIR."
  DEFM 0
  DEFM 12                 ; Height = 12
  DEFM 105,"R ",183," "   ; YOUR LIGHTNING BOLT HAS HIT THE ANCIENT TYME
                          ; MACHINE AND GIVEN IT ENOUGH ENERGY TO TRAVEL ABOUT
                          ; 1200 YEARS BACKWARD IN TIME. ALL YOU HAVE TO DO NOW
                          ; IS TO FIND THE ROUTE HOME.
  DEFM "HAS HIT ",116," "
  DEFM "ANCIENT ",166," "
  DEFM 112," GIVEN "
  DEFM "IT E",148,"UGH ENERGY "
  DEFM 99,"TRAVEL ",124
  DEFM "1200 YEARS "
  DEFM "BACKWARD ",95," ",129,". "
  DEFM "ALL ",105," HAVE ",99,"DO "
  DEFM 148,"W ",115,99,"F",95,"D ",116," "
  DEFM "ROUTE HOME."
  DEFM 0
  DEFM 11                 ; Height = 11
  DEFM 116," SEGMENTS ",111 ; THE SEGMENTS OF THE GOLDEN SUNDIAL OF ALPHA. HAVE
                            ; BEEN WELDED INTO ONE UNIT BY THE AWESOME POWER OF
                            ; YOUR LIGHTNING BOLT. BEHOLD! HERE IS THE GOLDEN
                            ; SUNDIAL OF ALPHA.. (bug)
  DEFM 116," ",162," "
  DEFM "HAVE BEEN WELDED ",95,99
  DEFM "ONE UNIT BY ",116," "
  DEFM "AWESOME POWER ",111
  DEFM 105,"R ",183,". "
  DEFM "BEHOLD! HERE "
  DEFM 115,116," "
  DEFM 162,"."
  DEFM 0
  DEFM 14                 ; Height = 14 (bug)
  DEFM 105,"R ",183," "   ; YOUR LIGHTNING BOLT HAS ALERTED THE SECURITY SYSTEM
                          ; TO YOUR PRESENCE. A BIGGER LIGHTNING BOLT HAS JUST
                          ; BLASTED YOU OUT OF MORTAL EXISTENCE.
  DEFM "HAS ALERTED "
  DEFM 116," ",131," "
  DEFM "SYSTEM ",99,105,"R "
  DEFM "PRESENCE. ",97,"BIGGER "
  DEFM 183," HAS "
  DEFM "JUST BLASTED ",105," "
  DEFM "OUT ",111,"MORTAL "
  DEFM "EXISTENCE."
  DEFM 0

; Tyme Guardians Messages
  DEFM 13                 ; Height = 12
  DEFM 97,"LOUD BOOM",207," " ; A LOUD BOOMING VOICE ECHOES ABOUT THE ROOM
                              ; 'HAIL VISITOR! BE WARNED THAT THE GOLDEN
                              ; SUNDIAL OF ALPHA. IS THE ONLY PASSPORT TO
                              ; SAFETY IF YOU WISH TO TRAVEL FURTHER AND LIVE!'
                              ; (bug)
  DEFM "VOICE ECHOES "
  DEFM 124,116," ",208," "
  DEFM "'HAIL VISITOR! BE "
  DEFM "WARNED THAT ",116," "
  DEFM 162
  DEFM " ",115,116," "
  DEFM "ONLY PASSPORT ",99
  DEFM "SAFETY IF ",105," "
  DEFM "WISH ",99,"TRAVEL "
  DEFM "FURTHER ",112," "
  DEFM "LIVE!'"
  DEFM 0
  DEFM 13                 ; Height = 13
  DEFM 116," ",167," "    ; THE TYME GUARDIANS ARE SHOCKED AT YOUR ARRIVAL AND
                          ; AFTER THE PANIC HAS DIED DOWN THEY SAY 'MAGIC
                          ; KNIGHT YOU HAVE PUT US ALL IN GRAVE DANGER THROUGH
                          ; YOUR MISSUSE OF THE OLDE MAJICK. (bug)
  DEFM 125,"SHOCKED AT "
  DEFM 105,"R ARRIVAL ",112," "
  DEFM "AFTER ",116," PANIC "
  DEFM "HAS DIED DOWN ",116,"Y "
  DEFM "SAY '",144," "
  DEFM 105," HAVE PUT US "
  DEFM "ALL ",95," GRAVE "
  DEFM "DANGER THROUGH "
  DEFM 105,"R MISSUSE ",111
  DEFM 116," OLDE MAJICK."
  DEFM 0
  DEFM 14                 ; Height = 14
  DEFM 105," MUST RETURN ",99 ; YOU MUST RETURN TO YOUR OWN TIME BEFORE THE
                              ; DAMAGE IS IRREVERSIBLE. OUR EMERGENCY TYME
                              ; MACHINE IS BEING FITTED TO THE AIRLOCK OF THE
                              ; USS PISCES AT THIS VERY MOMENT. GO QUICKLY
                              ; THERE IS NO TIME OR TYME TO WASTE!'
  DEFM 105,"R OWN ",129," "
  DEFM "BEFORE ",116," DAMAGE "
  DEFM 115,"IRREVERSIBLE. "
  DEFM "OUR EMERGENCY ",166," "
  DEFM 115,"BE",207," "
  DEFM "FITTED ",99,116," "
  DEFM "AIRLOCK ",111,116," "
  DEFM 146," AT TH",115
  DEFM "VERY MOMENT. GO "
  DEFM "QUICKLY ",116,"RE ",115
  DEFM 148," ",129," OR TYME ",99
  DEFM "WASTE!'"
  DEFM 0

; Tyme Machine-Related "Game Over" Texts
  DEFM 9                  ; Height = 9
  DEFM "AS ",105," FELL TOWARDS " ; AS YOU FELL TOWARDS GANGROLE THE TYME
                                  ; MACHINE OVERLOADED AND BLEW UP.
  DEFM "GANGROLE ",116," ",166," "
  DEFM "OVERLOADED ",112," "
  DEFM "BLEW UP."
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 105," ",112," ",116," ",166," " ; YOU AND THE TYME MACHINE CRASHED TO
                                       ; THE SURFACE OF {name of Current
                                       ; Starship Location}
  DEFM "CRASHED ",99,116," "
  DEFM "SURFACE ",111,28
  DEFM 0

; Characters' "Current Status" Texts
;
; First group of texts are strings used when characters are awake. Second group
; are for characters that are asleep.
  DEFM 0                  ; Unused
; (01) Magic Knight
  DEFM "PROGRESS 000 %",14 ; PROGRESS 000 % TIME LEFT 30 DAYS
  DEFM 129," LEFT 30 DAYS"
  DEFM 0
; (02) Gordon (awake)
  DEFM 195," ",115,"AT ",116," HELM CONTROL" ; GORDON IS AT THE HELM CONTROL
  DEFM 0
; (03) Sarab (awake)
  DEFM 196," ",115,"DEPUTY HELMSMAN" ; SARAB IS DEPUTY HELMSMAN
  DEFM 0
; (04) Klink (awake)
  DEFM 197," ",115,97,"ROBODROID" ; KLINK IS A ROBODROID
  DEFM 0
; (05) S3 E3 (awake)
  DEFM 198," ",151,97,"FAMOUS COUS",95 ; S3 E3 HAS A FAMOUS COUSIN
  DEFM 0
; (06) Hooper (awake)
  DEFM 199," USED ",99,"M",95,"E TRILITHIUM" ; HOOPER USED TO MINE TRILITHIUM
  DEFM 0
; (07) Murphy (awake)
  DEFM 200," LIKES POTATOES" ; MURPHY LIKES POTATOES
  DEFM 0
; (08) Sharon (awake)
  DEFM 201," COMES FROM VALHALLA" ; SHARON COMES FROM VALHALLA
  DEFM 0
; (09) Forbin (awake)
  DEFM 202," ",115,"QUITE CLEVER" ; FORBIN IS QUITE CLEVER
  DEFM 0
; (10) Derby IV (awake)
  DEFM 203," RUNS AT 200 GHZ" ; DERBY IV RUNS AT 200 GHZ
  DEFM 0
; (11) Swiftfoot (awake)
  DEFM 204," FEELS LIKE ",97,"BIT ",111,97,"HEEL" ; SWIFTFOOT FEELS LIKE A BIT
                                                  ; OF A HEEL
  DEFM 0
; (12) Julie 8 (awake)
  DEFM 205," ",115,"VERY ROMANTIC FOR ",98,112,"ROID" ; JULIE 8 IS VERY
                                                      ; ROMANTIC FOR AN ANDROID
  DEFM 0
; (13) Hectorr (awake)
  DEFM 206," ",115,97,"FEATHERED ALIEN" ; HECTORR IS A FEATHERED ALIEN
  DEFM 0
; (14) Unused
  DEFM 0
; (15) Unused
  DEFM 0
; (16) Unused
  DEFM 0
; (17) Unused
  DEFM 0
; (18) Gordon (asleep)
  DEFM 195," ",115,122," AT ",116," HELM CONTROL" ; GORDON IS ASLEEP AT THE
                                                  ; HELM CONTROL
  DEFM 0
; (19) Sarab (asleep)
  DEFM 196," ",115,97,"S",148,"R",207," DEPUTY HELMSMAN" ; SARAB IS A SNORING
                                                         ; DEPUTY HELMSMAN
  DEFM 0
; (20) Klink (asleep)
  DEFM 197," ",115,97,148,"N FUNCTION",207," ROBODROID" ; KLINK IS A NON
                                                        ; FUNCTIONING ROBODROID
  DEFM 0
; (21) S3 E3 (asleep)
  DEFM 198," ",151,"BLEEPED ",95,99,116," L",112," ",111,148,"DE" ; S3 E3 HAS
                                                                  ; BLEEPED
                                                                  ; INTO THE
                                                                  ; LAND OF
                                                                  ; NODE
  DEFM 0
; (22) Hooper (asleep)
  DEFM 199," ",115,123,124,"M",95,207 ; HOOPER IS DREAMING ABOUT MINING
  DEFM 0
; (23) Murphy (asleep)
  DEFM 200," ",115,122    ; MURPHY IS ASLEEP
  DEFM 0
; (24) Sharon (asleep)
  DEFM 201," ",115,123,124,"VALHALLA" ; SHARON IS DREAMING ABOUT VALHALLA
  DEFM 0
; (25) Forbin (asleep)
  DEFM 202," ",115,"TOTALLY ZONKED OUT" ; FORBIN IS TOTALLY ZONKED OUT
  DEFM 0
; (26) Derby IV (asleep)
  DEFM 203," RUNS AT 0 MHZ WHEN SWITCHED OFF (LIKE ",148,"W)" ; DERBY IV RUNS
                                                              ; AT 0 MHZ WHEN
                                                              ; SWITCHED OFF
                                                              ; (LIKE NOW)
                                                              ; (bug)
  DEFM 0
; (27) Swiftfoot (asleep)
  DEFM 204," ",115,95," ",116," MIDST ",111,97,"DREAM" ; SWIFTFOOT IS IN THE
                                                       ; MIDST OF A DREAM
  DEFM 0
; (28) Julie 8 (asleep)
  DEFM 205," ",115,123,124,"ROMIE 0" ; JULIE 8 IS DREAMING ABOUT ROMIE 0
  DEFM 0
; (29) Hectorr (asleep)
  DEFM 206," ",115,123,124,"RAVENS" ; HECTORR IS DREAMING ABOUT RAVENS
  DEFM 0

; Planets' "REQUEST HELP" Strings (00) Unused
  DEFM 0
; (01) Deneb
  DEFM 6                  ; Height = 6 (see trivia)
  DEFM "TH",115,115,97,"RECORDED MESSAGE. " ; THIS IS A RECORDED MESSAGE. THE
                                            ; SPACE PLAGUE HAS STRUCK HERE. I
                                            ; AM THE LAST SURVIVOR. KEEP CLEAR
                                            ; THERE IS NO KNOWN CURE.
  DEFM 116," SPACE PLAGUE ",151,"STRUCK "
  DEFM "HERE. I AM ",116," LAST SURVIVOR. "
  DEFM "KEEP CLEAR ",116,"RE ",115,148," K",148,"WN "
  DEFM "CURE."
  DEFM 0
; (02) Gath
  DEFM 6                  ; Height = 6
  DEFM "HAIL ",145,", FABI",98,116," " ; HAIL STARSHIP, FABIAN THE HUMAN TRADER
                                       ; CLONE HERE. SORRY I CANNOT HELP YOU
                                       ; BUT MY BROTHER VESUVIUS MIGHT BE ABLE
                                       ; TO, HE IS ON EDEN
  DEFM "HUM",98,"TRADER CLONE HERE. SORRY "
  DEFM "I",186,"BUT MY "
  DEFM "BRO",116,"R VESUVIUS MIGHT BE ABLE "
  DEFM "TO, HE ",115,"ON EDEN"
  DEFM 0
; (03) Monopole
  DEFM 5                  ; Height = 5
  DEFM 199," ",102,"'GO AWAY !! " ; HOOPER SAYS 'GO AWAY !! STARFLEET ARE
                                  ; NOTHING BUT TROUBLE TO DECENT FOLKS' AND
                                  ; BREAKS COMMUNICATION
  DEFM 172," ",125,150,"BUT "
  DEFM "TROUBLE ",99,"DECENT FOLKS' ",112," "
  DEFM "BREAKS ",140,"ION"
  DEFM 0
; (04) Porthos
  DEFM 4                  ; Height = 4
  DEFM 128,"EARTH BE",207,". ",28," ",115 ; HELLO EARTH BEING. {name of Current
                                          ; Starship Location} IS PLEASED TO
                                          ; WELCOME YOU BUT WE CANNOT HELP YOU
  DEFM "PLEASED ",99,"WELCOME ",105," BUT ",113
  DEFM 186
  DEFM 0
; (05) Starbase 1
  DEFM 5                  ; Height = 5
  DEFM "AHOY ",116,"RE ",144,", WHY " ; AHOY THERE MAGIC KNIGHT, WHY NOT BEAM
                                      ; DOWN FOR SOME SHORE LEAVE ? COORDINATES
                                      ; ARE X1Y2Z3
  DEFM 148,"T BEAM DOWN FOR SOME SHORE "
  DEFM "LEAVE ?",14
  DEFM 163,125,"X1Y2Z3"
  DEFM 0
; (06) Lynx
  DEFM 8                  ; Height = 8
  DEFM "TH",115,115,"RADIO ",28," ON 234 KHZ " ; THIS IS RADIO {name of Current
                                               ; Starship Location} ON 234 KHZ
                                               ; AND 97.2 FM. AND HERE IS AN
                                               ; URGENT NEWSFLASH FOR MAGIC
                                               ; KNIGHT 'MURPHY THE ECCENTRIC
                                               ; LIVES ON RETREAT AND THE
                                               ; TRANSPORTER COORDINATES ARE
                                               ; X8Y4Z1.'
  DEFM 112," 97.2 FM. ",112," HERE ",115,98
  DEFM "URGENT NEWSFLASH FOR ",144," "
  DEFM "'",200," ",116," ",109," "
  DEFM "LIVES ON ",107," ",112," ",116," "
  DEFM 141," ",163,125
  DEFM "X8Y4Z1.'"
  DEFM 0
; (07) Nirvana
  DEFM 5                  ; Height = 5
  DEFM 137,146,", MAY "   ; GREETINGS USS PISCES, MAY ALLAH GREET YOUR SPIRIT
                          ; IN HEAVEN, I CANNOT HELP YOU MAGIC KNIGHT
  DEFM "ALLAH GREET ",105,"R SPIRIT ",95," "
  DEFM "HEAVEN, I",186
  DEFM 144
  DEFM 0
; (08) Limbo
  DEFM 5                  ; Height = 5
  DEFM "MAY ",116," FORD BE WITH ",105," " ; MAY THE FORD BE WITH YOU MAGIC
                                           ; KNIGHT. WE ARE TOLD THAT THE
                                           ; PLANET HERSCHELL IS FAMOUS FOR
                                           ; IT'S ASTRONOMERS (bug)
  DEFM 144,". ",113,125,"TOLD THAT ",116," "
  DEFM "PLANET ",106," ",115,"FAMOUS FOR "
  DEFM "IT'S ",126,"S"
  DEFM 0
; (09) Eden
  DEFM 5                  ; Height = 5
  DEFM 128,"MATEY, DR VESUVIUS HERE " ; HELLO MATEY, DR VESUVIUS HERE ON PLANET
                                      ; {name of Current Starship Location}
                                      ; APPARENTLY HOOPER THE ECCENTRIC LIVES
                                      ; ON A PLANET CALLED 'NAFF'
  DEFM "ON PLANET ",28," APPARENTLY "
  DEFM 199," ",116," ",109," LIVES ON "
  DEFM 97,"PLANET CALLED 'NAFF'"
  DEFM 0
; (10) Herschell
  DEFM 7                  ; Height = 7
  DEFM 137,144,", I HAVE " ; GREETINGS MAGIC KNIGHT, I HAVE A MESSAGE FROM OUR
                           ; CHIEF ASTRONOMER. SHE SAYS 'GANGROLE IS A BLACK
                           ; HOLE WITH A HIGH RATE OF ROTATION AND A VERY
                           ; STRONG MAGNETIC FIELD'
  DEFM 97,"MESSAGE FROM OUR CHIEF "
  DEFM 126,". SHE ",102,"'GANGROLE "
  DEFM 115,97,"BLACK HOLE WITH ",97,"HIGH "
  DEFM "RATE ",111,"ROTATION ",112," ",97,"VERY "
  DEFM "STRONG MAGNETIC FIELD'"
  DEFM 0
; (11) Trantore
  DEFM 10                 ; Height = 10
  DEFM "TRANSMISSION..... RE: " ; TRANSMISSION..... RE: TYME GUARDIANS
                                ; TRANSPORTER COORDINATES . DO NOT BELIEVE
                                ; THOSE GIVEN BY THE TYME GUARDIANS. THEY ARE A
                                ; TRAP FOR THE UNWARY VISITOR. ADD 1 TO EACH
                                ; DIGIT IN THE SEQUENCE ... XMIT FROM GALACTIC
                                ; CITIZENS ADVICE CENTRE ... MSG END.
  DEFM 167," ",141," "
  DEFM 163,". DO ",148,"T BELIEVE "
  DEFM "THOSE GIVEN BY ",116," "
  DEFM 167,". ",116,"Y ",125,97,"TRAP FOR "
  DEFM 116," UNWARY VISITOR. ADD 1 ",99
  DEFM "EACH DIGIT ",95," ",116," SEQUENCE ... "
  DEFM "XMIT FROM GALACTIC ",191,"S "
  DEFM "ADVICE CENTRE ... MSG END."
  DEFM 0
; (12) Plop Plop
  DEFM 7                  ; Height = 7
  DEFM "TH",115,115,97,"RECORDED MESSAGE. " ; THIS IS A RECORDED MESSAGE. THIS
                                            ; PLANET IS INHABITED BY DOLPHINS
                                            ; WHO LEFT EARTH WAY BACK IN THE
                                            ; 22ND CENTURY WHEN IT WAS
                                            ; DESTROYED TO MAKE WAY FOR A
                                            ; MCTABLET MEGASTORE.
  DEFM "TH",115,"PLANET ",115,95,"HABITED BY "
  DEFM "DOLPH",95,"S WHO LEFT EARTH WAY "
  DEFM "BACK ",95," ",116," 22ND CENTURY WHEN "
  DEFM "IT WAS DESTROYED ",99,"MAKE WAY "
  DEFM "FOR ",97,171," MEGASTORE."
  DEFM 0
; (13) Brightstar
  DEFM 8                  ; Height = 8
  DEFM "TH",115,115,116," ",28," " ; THIS IS THE {name of Current Starship
                                   ; Location} COMMUNICATION CENTRE, WE HAVE
                                   ; BEEN INFORMED OF YOUR SITUATION MAGIC
                                   ; KNIGHT. WE SUGGEST THAT YOU TRAVEL
                                   ; IMMEDIATELY TO HERSCHELL TO PICK UP VITAL
                                   ; INFORMATION
  DEFM 140,"ION CENTRE, ",113,"HAVE "
  DEFM "BEEN ",95,"FORMED ",111,105,"R "
  DEFM "SITUATION ",144,". ",113
  DEFM "SUGGEST THAT ",105," TRAVEL "
  DEFM "IMMEDIATELY ",99,106," ",99
  DEFM "PICK UP VITAL ",95,"FORMATION"
  DEFM 0
; (14) Outpost
  DEFM 4                  ; Height = 4
  DEFM 116," ",167," SLEEP HERE. " ; THE TYME GUARDIANS SLEEP HERE. ENTER AT
                                   ; YOUR PERIL. THE COORDINATES ARE Z5Y8X7.
  DEFM "ENTER AT ",105,"R PERIL. ",116," "
  DEFM 163,125,"Z5Y8X7."
  DEFM 0
; (15) Polaris
  DEFM 6                  ; Height = 6
  DEFM 128,144,". APPARENTLY " ; HELLO MAGIC KNIGHT. APPARENTLY HOOPER USED TO
                               ; BE A CITIZEN OF THE PERSONS REPUBLIC OF
                               ; PLINKIT BEFORE HE BECAME AN ASTEROID MINER.
  DEFM 199," USED ",99,"BE A ",191," ",111
  DEFM 116," PERSONS REPUBLIC ",111
  DEFM "PL",95,"KIT BEFORE HE BECAME ",98
  DEFM "ASTEROID M",95,"ER."
  DEFM 0
; (16) Bingo
  DEFM 8                  ; Height = 8
  DEFM "TH",115,"PLANET ",115,116," PROPERTY ",111 ; THIS PLANET IS THE
                                                   ; PROPERTY OF ARTHUR
                                                   ; SCRUNGE. THE WINNER OF THE
                                                   ; DAILY SOLAR NEWSPAPER 20
                                                   ; BILLION CREDIT GAME.
                                                   ; ARTHUR IS NOT AT HOME JUST
                                                   ; NOW BUT THE SLAVE DROIDS
                                                   ; ARE READY TO REFUEL YOUR
                                                   ; STARSHIP. (bug)
  DEFM "ARTHUR SCRUNGE. ",116," W",95,"NER ",111
  DEFM 116," DAILY SOLAR NEWSPAPER 20 "
  DEFM "BILLION CREDIT GAME. ARTHUR ",115
  DEFM 148,"T AT HOME JUST ",148,"W BUT ",116," "
  DEFM "SLAVE DROIDS ",125,"READY ",99
  DEFM "REFUEL ",105,"R ",145,"."
  DEFM 0
; (17) Retreat
  DEFM 5                  ; Height = 5
  DEFM "TH",115,115,200," HERE.. GO AWAY " ; THIS IS MURPHY HERE.. GO AWAY
                                           ; MAGIC KNIGHT, I DO NOT HAVE ANY
                                           ; TRUCK WITH STARFLEET PEOPLE
  DEFM 144,", I DO ",148,"T HAVE "
  DEFM "ANY TRUCK WITH ",172," "
  DEFM "PEOPLE"
  DEFM 0
; (18) Dragon Egg
  DEFM 4                  ; Height = 4
  DEFM "WARN",207," ",99,"ALL CARBON BASED " ; WARNING TO ALL CARBON BASED LIFE
                                             ; FORMS. DO NOT BEAM DOWN HERE.
                                             ; THIS IS A NEUTRON STAR !
  DEFM "LIFE FORMS. DO ",148,"T BEAM DOWN "
  DEFM "HERE. TH",115,115,97,"NEUTRON STAR !"
  DEFM 0
; (19) Aridia
  DEFM 6                  ; Height = 6 (see trivia)
  DEFM "TH",115,115,"A RECORDED MESSAGE. " ; THIS IS A RECORDED MESSAGE. THE
                                           ; SPACE PLAGUE HAS STRUCK HERE. I AM
                                           ; THE LAST SURVIVOR. KEEP CLEAR
                                           ; THERE IS NO KNOWN CURE.
  DEFM 116," SPACE PLAGUE ",151,"STRUCK "
  DEFM "HERE. I AM ",116," LAST SURVIVOR. "
  DEFM "KEEP CLEAR ",116,"RE ",115,148," K",148,"WN "
  DEFM "CURE."
  DEFM 0
; (20) Gangrole
  DEFM 0
; (21) Naff
  DEFM 9                  ; Height = 9
  DEFM 128,144," I AM ZOBBF. " ; HELLO MAGIC KNIGHT I AM ZOBBF. I EXPECT YOU
                               ; ARE LOOKING FOR HOOPER. HE MOVED ON AFTER HIS
                               ; 'SECRET' BECAME KNOWN. THE RUMOURS SAY THAT HE
                               ; FOUND A SECTION OF THE GOLDEN SUNDIAL OF
                               ; ALPHA. WHILE MINING FOR QUARKANIUM. (bug)
  DEFM "I EXPECT ",105," ",125,"LOOK",207," FOR "
  DEFM 199,". HE MOVED ON AFTER H",115
  DEFM "'SECRET' BECAME K",148,"WN. ",116," "
  DEFM "RUMOURS SAY THAT HE FOUND ",97
  DEFM "SECTION ",111,116," "
  DEFM 162," WHILE M",95,207," FOR "
  DEFM "QUARKANIUM."
  DEFM 0
; (22) Reef
  DEFM 0
; (23) Menopausia
  DEFM 7                  ; Height = 7
  DEFM "TH",115,115,28," WEA",116,"R " ; THIS IS {name of Current Starship
                                       ; Location} WEATHER STATION. WE ARE
                                       ; EXPECTING PARTICLE STORMS IN THE
                                       ; REGION OF BRIGHTSTAR AND LIMBO. PLEASE
                                       ; ENSURE THAT YOUR SHIELDS ARE
                                       ; OPERATIONAL
  DEFM "STATION. ",113,125,"EXPECT",207," "
  DEFM "PARTICLE STORMS ",95," ",116," ","REGION "
  DEFM 111,"BRIGHTSTAR ",112," LIMBO. "
  DEFM "PLEASE ENSURE THAT ",105,"R "
  DEFM "SHIELDS ",125,"OPERATIONAL"
  DEFM 0
; (24) Plinkit
  DEFM 5                  ; Height = 5
  DEFM 137,"FROM ",116," PERSONS " ; GREETINGS FROM THE PERSONS REPUBLIC OF
                                   ; {name of Current Starship Location}. OUR
                                   ; SPACE IS YOURS AND YOUR FRIENDSHIP IS
                                   ; VALUED MAGIC KNIGHT
  DEFM "REPUBLIC ",111,28,". OUR SPACE "
  DEFM 115,105,"RS ",112," ",105,"R FRIENDSHIP "
  DEFM 115,"VALUED ",144
  DEFM 0

; Room Layout Data Pointers
  DEFW 50193              ; (00) - USS Pisces, 0 (The Recreation Room)
  DEFW 50253              ; (01) - USS Pisces, 1 (The Bridge)
  DEFW 50372              ; (02) - USS Pisces, 2 (The Transporter Room)
  DEFW 50425              ; (03) - USS Pisces, 3 (The Transputer Room)
  DEFW 50489              ; (04) - USS Pisces, 4 (Cargo Hold)
  DEFW 50535              ; (05) - USS Pisces, 5 (The Airlock)
  DEFW 50607              ; (06) - USS Pisces, 6 (The Life Boat)
  DEFW 50667              ; (07) - Retreat, 0 (Murphy's Moon)
  DEFW 50762              ; (08) - Retreat, 1
  DEFW 50850              ; (09) - Retreat, 2
  DEFW 51056              ; (10) - Retreat, 3
  DEFW 51150              ; (11) - Starbase 1, 0 (The Transporter Room)
  DEFW 51203              ; (12) - Starbase 1, 1 (McTablet Takeaway Food)
  DEFW 51243              ; (13) - Starbase 1, 2
  DEFW 51265              ; (14) - Starbase 1, 3
  DEFW 51281              ; (15) - Starbase 1, 4 (Fuel and Cargo Area)
  DEFW 51315              ; (16) - Outpost, 0 (Ye Olde Transporter)
  DEFW 51362              ; (17) - Outpost, 1 (The Main Defence System)
  DEFW 51414              ; (18) - Outpost, 2
  DEFW 51442              ; (19) - Outpost, 3 (The Proof of Power)
  DEFW 51500              ; (20) - Outpost, 4 (The Tyme Guardians)
  DEFW 51558              ; (21) - Monopole, 0 (Hooper's Emergency Exit)
  DEFW 51653              ; (22) - Monopole, 1 (This Way to Hooper ==>>)
  DEFW 51819              ; (23) - Monopole, 2 (Here is Hooper)
  DEFW 51919              ; (24) - USS Pisces, 6A (The Control Column)

; Room Layout Data (00) - USS Pisces, 0 (The Recreation Room)
  DEFB 55,5,5,11,19,0     ; Draw table (55) with attribute data index of 5,
                          ; terrain interaction data index of 5 at (11, 19)
  DEFB 52,2,2,4,16,1      ; Draw large chair (52) with attribute data index of
                          ; 2, terrain interaction data index of 2 at ( 4, 16),
                          ; and apply vertical mirror (1)
  DEFB 52,2,2,20,16,0     ; Draw large chair (52) with attribute data index of
                          ; 2, terrain interaction data index of 2 at (20, 16)
  DEFB 54,12,0,13,7,0     ; Draw chandelier (54) with attribute data index of
                          ; 12, terrain interaction data index of 0 at (13, 7)
  DEFB 64,17,0,20,8,0     ; Draw left half of USS Pisces picture (64) with
                          ; attribute data index of 17, terrain interaction
                          ; data index of 0 at (20, 8)
  DEFB 64,17,0,24,8,1     ; Draw right half of USS Pisces picture (64) with
                          ; attribute data index of 17, terrain interaction
                          ; data index of 0 at (24, 8), and apply vertical
                          ; mirror (1)
  DEFB 253,0,0,2,119,2,0  ; Draw line from (2, 119) to (2, 0)
  DEFB 253,0,0,5,119,5,0  ; Draw line from (5, 119) to (5, 0)
  DEFB 251,14,14,0,7,0    ; Draw wall at (0, 7)
  DEFB 0,71,94,92         ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 92

; Room Layout Data (01) - USS Pisces, 1 (The Bridge)
  DEFB 50,6,17,7,15,0     ; Draw Left Half of Planet (50) with attribute data
                          ; index of 6, terrain interaction data index of 17 at
                          ; (7, 15)
  DEFB 50,6,17,16,15,1    ; Draw Right Half of Planet (50) with attribute data
                          ; index of 6, terrain interaction data index of 17 at
                          ; (16, 15), and apply vertical mirror (1)
  DEFB 252,0,0,163,0,31   ; Draw a horizontal line at y = 163 pixels, from x =
                          ; 0 characters to x = 31 characters
  DEFB 40,1,0,5,18,0      ; Draw Gordon (or Sarab) at Control Panel (40) with
                          ; attribute data index of 1, terrain interaction data
                          ; index of 0 at (5, 18)
  DEFB 40,1,0,16,18,1     ; Draw Sarab (or Gordon) at Control Panel (40) with
                          ; attribute data index of 1, terrain interaction data
                          ; index of 0 at (16, 18), and apply vertical mirror
                          ; (1)
  DEFB 61,9,0,6,7,0       ; Draw Left Edge of Viewscreen (61) with attribute
                          ; data index of 9, terrain interaction data index of
                          ; 0 at (6, 7)
  DEFB 61,9,0,25,7,1      ; Draw Right Edge of Viewscreen (61) with attribute
                          ; data index of 9, terrain interaction data index of
                          ; 0 at (25, 7), and apply vertical mirror (1)
  DEFB 252,0,0,56,0,31    ; Draw a horizontal line at y = 56 pixels, from x = 0
                          ; characters to x = 31 characters
  DEFB 252,0,0,61,7,24    ; Draw a horizontal line at y = 61 pixels, from x = 7
                          ; characters to x = 24 characters
  DEFB 252,0,0,62,7,24    ; Draw a horizontal line at y = 62 pixels, from x = 7
                          ; characters to x = 24 characters
  DEFB 252,0,0,63,7,24    ; Draw a horizontal line at y = 63 pixels, from x = 7
                          ; characters to x = 24 characters
  DEFB 49,3,0,2,14,0      ; Draw Wall-Mounted Telephone (49) with attribute
                          ; data index of 3, terrain interaction data index of
                          ; 0 at (2, 14)
  DEFB 68,0,0,28,11,0     ; Draw Balls Picture (68) with attribute data index
                          ; of 0, terrain interaction data index of 0 at (28,
                          ; 11)
  DEFB 255,0,0,0,22,32,91 ; Start at (0, 22) and print run of 32 characters
                          ; (char. code 91) (railings along floor)
  DEFB 254,0,0,5,21,91    ; Move to (5, 21) and print character code 91
  DEFB 254,0,0,7,21,91    ; Move to (7, 21) and print character code 91
  DEFB 254,0,0,24,21,91   ; Move to (24, 21) and print character code 91
  DEFB 254,0,0,26,21,91   ; Move to (26, 21) and print character code 91
  DEFB 251,23,0,0,7,0     ; Draw (invisible) wall at (0, 7)
  DEFB 0,70,94,92         ; Flood room with attribute 70 (yellow INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 92

; Room Layout Data (02) - USS Pisces, 2 (The Transporter Room)
  DEFB 41,7,7,10,18,0     ; Draw left half of lower transporter pad (41) with
                          ; attribute data index of 7, terrain interaction data
                          ; index of 7 at (10, 18)
  DEFB 41,7,7,16,18,1     ; Draw right half of lower transporter pad (41) with
                          ; attribute data index of 7, terrain interaction data
                          ; index of 7 at (16, 18), and apply vertical mirror
                          ; (1)
  DEFB 41,24,7,10,6,2     ; Draw left half of upper transporter pad (41) with
                          ; attribute data index of 24, terrain interaction
                          ; data index of 7 at (10, 6), and apply horizontal
                          ; mirror (2)
  DEFB 41,24,7,16,6,3     ; Draw right half of upper transporter pad (41) with
                          ; attribute data index of 24, terrain interaction
                          ; data index of 7 at (16, 6), and apply horizontal
                          ; and vertical mirrors (3)
  DEFB 255,0,0,10,22,12,92 ; Start at (10, 22) and print run of 12 characters
                           ; (char. code 92) (base of transporter pad)
  DEFB 64,17,0,23,8,0     ; Draw left half of USS Pisces picture (64) with
                          ; attribute data index of 17, terrain interaction
                          ; data index of 0 at (23, 8)
  DEFB 64,17,0,27,8,1     ; Draw right half of USS Pisces picture (64) with
                          ; attribute data index of 17, terrain interaction
                          ; data index of 0 at (27, 8), and apply vertical
                          ; mirror (1)
  DEFB 49,3,0,5,14,0      ; Draw Wall-Mounted Telephone (49) with attribute
                          ; data index of 3, terrain interaction data index of
                          ; 0 at (5, 14)
  DEFB 0,71,94,92         ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 92

; Room Layout Data (03) - USS Pisces, 3 (The Transputer Room)
  DEFB 56,18,0,6,10,0     ; Draw Left half of transputer panel (56) with
                          ; attribute data index of 18, terrain interaction
                          ; data index of 0 at (6, 10)
  DEFB 56,18,0,9,10,1     ; Draw right half of transputer panel (56) with
                          ; attribute data index of 18, terrain interaction
                          ; data index of 0 at (9, 10), and apply vertical
                          ; mirror (1)
  DEFB 56,18,0,20,10,0    ; Draw left half of transputer panel (56) with
                          ; attribute data index of 18, terrain interaction
                          ; data index of 0 at (20, 10)
  DEFB 56,18,0,23,10,1    ; Draw right half of transputer panel (56) with
                          ; attribute data index of 18, terrain interaction
                          ; data index of 0 at (23, 10), and apply vertical
                          ; mirror (1)
  DEFB 65,0,0,6,20,0      ; Draw left half of transputer panel base (65) with
                          ; attribute data index of 0, terrain interaction data
                          ; index of 0 at (6, 20)
  DEFB 65,0,0,9,20,1      ; Draw right half of transputer panel base (65) with
                          ; attribute data index of 0, terrain interaction data
                          ; index of 0 at (9, 20), and apply vertical mirror
                          ; (1)
  DEFB 65,0,0,20,20,0     ; Draw left half of transputer panel base (65) with
                          ; attribute data index of 0, terrain interaction data
                          ; index of 0 at (20, 20)
  DEFB 65,0,0,23,20,1     ; Draw right half of transputer panel base (65) with
                          ; attribute data index of 0, terrain interaction data
                          ; index of 0 at (23, 20), and apply vertical mirror
                          ; (1)
  DEFB 64,17,0,12,8,0     ; Draw left half of USS Pisces picture (64) with
                          ; attribute data index of 17, terrain interaction
                          ; data index of 0 at (12, 8)
  DEFB 64,17,0,16,8,1     ; Draw right half of USS Pisces picture (64) with
                          ; attribute data index of 17, terrain interaction
                          ; data index of 0 at (16, 8), and apply vertical
                          ; mirror (1)
  DEFB 0,71,94,92         ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 92

; Room Layout Data (04) - USS Pisces, 4 (Cargo Hold)
  DEFB 57,8,16,1,15,0     ; Draw cargo container (57) with attribute data index
                          ; of 8, terrain interaction data index of 16 at (1,
                          ; 15)
  DEFB 57,8,16,11,15,0    ; Draw cargo container (57) with attribute data index
                          ; of 8, terrain interaction data index of 16 at (11,
                          ; 15)
  DEFB 53,4,0,22,10,0     ; Draw wall-mounted rifle (53) with attribute data
                          ; index of 4, terrain interaction data index of 0 at
                          ; (22, 10)
  DEFB 53,4,0,24,10,0     ; Draw wall-mounted rifle (53) with attribute data
                          ; index of 4, terrain interaction data index of 0 at
                          ; (24, 10)
  DEFB 53,4,0,26,10,0     ; Draw wall-mounted rifle (53) with attribute data
                          ; index of 4, terrain interaction data index of 0 at
                          ; (26, 10)
  DEFB 64,17,0,12,8,0     ; Draw left half of USS Pisces picture (64) with
                          ; attribute data index of 17, terrain interaction
                          ; data index of 0 at (12, 8)
  DEFB 64,17,0,16,8,1     ; Draw right half of USS Pisces picture (64) with
                          ; attribute data index of 17, terrain interaction
                          ; data index of 0 at (16, 8), and apply vertical
                          ; mirror (1)
  DEFB 0,71,86,92         ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 86
                          ; (yellow INK, red PAPER, BRIGHT), and UDG 92 (bug)

; Room Layout Data (05) - USS Pisces, 5 (The Airlock)
  DEFB 64,17,0,23,8,0     ; Draw left half of USS Pisces picture (64) with
                          ; attribute data index of 17, terrain interaction
                          ; data index of 0 at (23, 8)
  DEFB 64,17,0,27,8,1     ; Draw right half of USS Pisces picture (64) with
                          ; attribute data index of 17, terrain interaction
                          ; data index of 0 at (27, 8), and apply vertical
                          ; mirror (1)
  DEFB 66,16,0,10,16,0    ; Draw plant (66) with attribute data index of 16,
                          ; terrain interaction data index of 0 at (10, 16)
  DEFB 67,0,0,12,21,0     ; Draw plant pot (67) with attribute data index of 0,
                          ; terrain interaction data index of 0 at (12, 21)
  DEFB 55,5,5,16,19,0     ; Draw table (55) with attribute data index of 5,
                          ; terrain interaction data index of 5 at (16, 19)
  DEFB 55,5,5,23,19,0     ; Draw table (55) with attribute data index of 5,
                          ; terrain interaction data index of 5 at (23, 19)
  DEFB 55,5,5,19,15,0     ; Draw table (55) with attribute data index of 5,
                          ; terrain interaction data index of 5 at (19, 15)
  DEFB 57,8,16,1,15,0     ; Draw cargo container (57) with attribute data index
                          ; of 8, terrain interaction data index of 16 at (1,
                          ; 15)
  DEFB 253,0,0,253,119,253,24 ; Draw line from (253, 119) to (253, 24)
  DEFB 253,0,0,250,119,250,24 ; Draw line from (250, 119) to (250, 24)
  DEFB 251,15,15,31,7,0   ; Draw wall at (0, 7)
  DEFB 0,71,94,92         ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 92

; Room Layout Data (06) - USS Pisces, 6 (The Life Boat)
  DEFB 63,22,0,6,12,0     ; Draw wall-mounted helmet (63) with attribute data
                          ; index of 22, terrain interaction data index of 0 at
                          ; (6, 12)
  DEFB 63,21,0,14,12,0    ; Draw wall-mounted helmet (63) with attribute data
                          ; index of 21, terrain interaction data index of 0 at
                          ; (14, 12)
  DEFB 63,19,0,22,12,0    ; Draw wall-mounted helmet (63) with attribute data
                          ; index of 19, terrain interaction data index of 0 at
                          ; (22, 12)
  DEFB 64,17,0,12,8,0     ; Draw left half of USS Pisces picture (64) with
                          ; attribute data index of 17, terrain interaction
                          ; data index of 0 at (12, 8)
  DEFB 64,17,0,16,8,1     ; Draw right half of USS Pisces picture (64) with
                          ; attribute data index of 17, terrain interaction
                          ; data index of 0 at (16, 8), and apply vertical
                          ; mirror (1)
  DEFB 253,0,0,2,119,2,24 ; Draw line from (2, 119) to (2, 24)
  DEFB 253,0,0,5,119,5,24 ; Draw line from (5, 119) to (5, 24)
  DEFB 251,15,15,0,7,0    ; Draw wall at (0, 7)
  DEFB 251,14,14,31,7,0   ; Draw wall at (31, 7)
  DEFB 0,71,94,111        ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 111

; Room Layout Data (07) - Retreat, 0 (Murphy's Moon)
  DEFB 41,7,7,1,18,1      ; Draw left half of lower transporter pad (41) with
                          ; attribute data index of 7, terrain interaction data
                          ; index of 7 at (1, 18), and apply vertical mirror
                          ; (1)
  DEFB 41,24,7,1,6,3      ; Draw left half of upper transporter pad (41) with
                          ; attribute data index of 24, terrain interaction
                          ; data index of 7 at (1, 6), and apply horizontal and
                          ; vertical mirrors (3)
  DEFB 255,0,0,1,22,6,92  ; Start at (1, 22) and print run of 6 characters
                          ; (char. code 92) (base of transporter pad)
  DEFB 44,0,0,7,7,0       ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (7, 7)
  DEFB 44,0,0,10,7,1      ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (10, 7), and apply vertical mirror (1)
  DEFB 47,0,0,13,7,0      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (13, 7)
  DEFB 48,0,0,16,7,1      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (16, 7), and apply vertical mirror (1)
  DEFB 47,0,0,19,7,1      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (19, 7), and apply vertical mirror (1)
  DEFB 42,0,0,22,7,1      ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (22, 7), and apply vertical mirror (1)
  DEFB 48,0,0,25,7,1      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (25, 7), and apply vertical mirror (1)
  DEFB 42,0,0,29,7,0      ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (29, 7)
  DEFB 60,11,0,8,13,0     ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (8, 13)
  DEFB 60,11,0,23,13,0    ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (23, 13)
  DEFB 51,29,0,27,11,0    ; Draw security camera (51) with attribute data index
                          ; of 29, terrain interaction data index of 0 at (27,
                          ; 11)
  DEFB 251,14,14,0,7,0    ; Draw wall at (0, 7)
  DEFB 0,68,96,100        ; Flood room with attribute 68 (green INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 96 (black
                          ; INK, green PAPER, BRIGHT), and UDG 100

; Room Layout Data (08) - Retreat, 1
  DEFB 42,0,0,0,7,1       ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (0, 7), and apply vertical mirror (1)
  DEFB 42,0,0,2,7,0       ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (2, 7)
  DEFB 43,0,0,5,7,0       ; Draw cavern ceiling part 2 (43) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (5, 7)
  DEFB 44,0,0,7,7,0       ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (7, 7)
  DEFB 45,0,0,10,7,1      ; Draw cavern ceiling part 4 (45) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (10, 7), and apply vertical mirror (1)
  DEFB 44,0,0,12,7,1      ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (12, 7), and apply vertical mirror (1)
  DEFB 45,0,0,15,7,0      ; Draw cavern ceiling part 4 (45) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (15, 7)
  DEFB 47,0,0,17,7,1      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (17, 7), and apply vertical mirror (1)
  DEFB 48,0,0,20,7,0      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (20, 7)
  DEFB 48,0,0,24,7,1      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (24, 7), and apply vertical mirror (1)
  DEFB 46,0,0,28,7,0      ; Draw cavern ceiling part 5 (46) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (28, 7)
  DEFB 47,0,0,29,7,0      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (29, 7)
  DEFB 60,11,0,8,13,0     ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (8, 13)
  DEFB 60,11,0,23,13,0    ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (23, 13)
  DEFB 0,68,96,100        ; Flood room with attribute 68 (green INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 96 (black
                          ; INK, green PAPER, BRIGHT), and UDG 100

; Room Layout Data (09) - Retreat, 2 (With Barrier)
  DEFB 42,0,0,0,7,1       ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (0, 7), and apply vertical mirror (1)
  DEFB 42,0,0,2,7,0       ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (2, 7)
  DEFB 43,0,0,5,7,0       ; Draw cavern ceiling part 2 (43) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (5, 7)
  DEFB 44,0,0,7,7,0       ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (7, 7)
  DEFB 45,0,0,10,7,0      ; Draw cavern ceiling part 4 (45) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (10, 7)
  DEFB 46,0,0,12,7,0      ; Draw cavern ceiling part 5 (46) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (12, 7)
  DEFB 47,0,0,13,7,0      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (13, 7)
  DEFB 47,0,0,16,7,1      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (16, 7), and apply vertical mirror (1)
  DEFB 48,0,0,19,7,0      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (19, 7)
  DEFB 48,0,0,23,7,1      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (23, 7), and apply vertical mirror (1)
  DEFB 44,0,0,27,7,0      ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (27, 7)
  DEFB 45,0,0,30,7,0      ; Draw cavern ceiling part 4 (45) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (30, 7)
  DEFB 47,0,0,13,17,2     ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (13, 17), and apply horizontal mirror (2)
  DEFB 47,0,0,16,17,3     ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (16, 17), and apply horizontal and vertical mirrors
                          ; (3)
  DEFB 60,11,0,8,13,0     ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (8, 13)
  DEFB 60,11,0,23,13,0    ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (23, 13)
  DEFB 251,13,13,15,7,0   ; Draw barrier at (15, 7)
  DEFB 0,68,96,100        ; Flood room with attribute 68 (green INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 96 (black
                          ; INK, green PAPER, BRIGHT), and UDG 100

; Room Layout Data (09A) - Retreat, 2 (Without Barrier)
  DEFB 42,0,0,0,7,1       ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (0, 7), and apply vertical mirror (1)
  DEFB 42,0,0,2,7,0       ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (2, 7)
  DEFB 43,0,0,5,7,0       ; Draw cavern ceiling part 2 (43) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (5, 7)
  DEFB 44,0,0,7,7,0       ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (7, 7)
  DEFB 45,0,0,10,7,0      ; Draw cavern ceiling part 4 (45) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (10, 7)
  DEFB 46,0,0,12,7,0      ; Draw cavern ceiling part 5 (46) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (12, 7)
  DEFB 47,0,0,13,7,0      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (13, 7)
  DEFB 47,0,0,16,7,1      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (16, 7), and apply vertical mirror (1)
  DEFB 48,0,0,19,7,0      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (19, 7)
  DEFB 48,0,0,23,7,1      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (23, 7), and apply vertical mirror (1)
  DEFB 44,0,0,27,7,0      ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (27, 7)
  DEFB 45,0,0,30,7,0      ; Draw cavern ceiling part 4 (45) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (30, 7)
  DEFB 47,0,0,13,17,2     ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (13, 17), and apply horizontal mirror (2)
  DEFB 47,0,0,16,17,3     ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (16, 17), and apply horizontal and vertical mirrors
                          ; (3)
  DEFB 60,11,0,8,13,0     ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (8, 13)
  DEFB 60,11,0,23,13,0    ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (23, 13)
  DEFB 0,68,96,100        ; Flood room with attribute 68 (green INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 96 (black
                          ; INK, green PAPER, BRIGHT), and UDG 100

; Room Layout Data (10) - Retreat, 3
  DEFB 42,0,0,0,7,1       ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (0, 7), and apply vertical mirror (1)
  DEFB 42,0,0,2,7,0       ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (2, 7)
  DEFB 43,0,0,5,7,0       ; Draw cavern ceiling part 2 (43) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (5, 7)
  DEFB 44,0,0,7,7,0       ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (7, 7)
  DEFB 45,0,0,10,7,1      ; Draw cavern ceiling part 4 (45) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (10, 7), and apply vertical mirror (1)
  DEFB 44,0,0,12,7,1      ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (12, 7), and apply vertical mirror (1)
  DEFB 45,0,0,15,7,0      ; Draw cavern ceiling part 4 (45) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (15, 7)
  DEFB 47,0,0,17,7,1      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (17, 7), and apply vertical mirror (1)
  DEFB 48,0,0,20,7,0      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (20, 7)
  DEFB 48,0,0,24,7,1      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (24, 7), and apply vertical mirror (1)
  DEFB 46,0,0,28,7,0      ; Draw cavern ceiling part 5 (46) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (28, 7)
  DEFB 47,0,0,29,7,0      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (29, 7)
  DEFB 60,11,0,8,13,0     ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (8, 13)
  DEFB 60,11,0,23,13,0    ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (23, 13)
  DEFB 251,31,14,31,7,0   ; Draw wall at (31, 7)
  DEFB 0,68,96,100        ; Flood room with attribute 68 (green INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 96 (black
                          ; INK, green PAPER, BRIGHT), and UDG 100

; Room Layout Data (11) - Starbase 1, 0 (The Transporter Room)
  DEFB 41,7,7,1,18,1      ; Draw left half of lower transporter pad (41) with
                          ; attribute data index of 7, terrain interaction data
                          ; index of 7 at (1, 18), and apply vertical mirror
                          ; (1)
  DEFB 41,24,7,1,6,3      ; Draw left half of upper transporter pad (41) with
                          ; attribute data index of 24, terrain interaction
                          ; data index of 7 at (1, 6), and apply horizontal and
                          ; vertical mirrors (3)
  DEFB 255,0,0,1,22,6,92  ; Start at (1, 22) and print run of 6 characters
                          ; (char. code 92) (base of transporter pad)
  DEFB 56,18,0,20,10,0    ; Draw left half of transputer panel (56) with
                          ; attribute data index of 18, terrain interaction
                          ; data index of 0 at (20, 10)
  DEFB 56,18,0,23,10,1    ; Draw right half of transputer panel (56) with
                          ; attribute data index of 18, terrain interaction
                          ; data index of 0 at (23, 10), and apply vertical
                          ; mirror (1)
  DEFB 65,0,0,20,20,0     ; Draw left half of transputer panel base (65) with
                          ; attribute data index of 0, terrain interaction data
                          ; index of 0 at (20, 20)
  DEFB 65,0,0,23,20,1     ; Draw right half of transputer panel base (65) with
                          ; attribute data index of 0, terrain interaction data
                          ; index of 0 at (23, 20), and apply vertical mirror
                          ; (1)
  DEFB 251,14,14,0,7,0    ; Draw wall at (0, 7)
  DEFB 0,71,94,108        ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 108

; Room Layout Data (12) - Starbase 1, 1 (McTablet Takeaway Food)
  DEFB 75,26,0,2,14,0     ; Draw control panel (75) with attribute data index
                          ; of 26, terrain interaction data index of 0 at (2,
                          ; 14)
  DEFB 75,26,0,10,14,0    ; Draw control panel (75) with attribute data index
                          ; of 26, terrain interaction data index of 0 at (10,
                          ; 14)
  DEFB 75,26,0,18,14,0    ; Draw control panel (75) with attribute data index
                          ; of 26, terrain interaction data index of 0 at (18,
                          ; 14)
  DEFB 75,26,0,26,14,0    ; Draw control panel (75) with attribute data index
                          ; of 26, terrain interaction data index of 0 at (26,
                          ; 14)
  DEFB 84,0,0,6,10,0      ; Draw picture 1 (84) with attribute data index of 0,
                          ; terrain interaction data index of 0 at (6, 10)
  DEFB 85,0,0,21,10,0     ; Draw picture 2 (85) with attribute data index of 0,
                          ; terrain interaction data index of 0 at (21, 10)
  DEFB 0,71,94,108        ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 108

; Room Layout Data (13) - Starbase 1, 2
  DEFB 55,5,5,11,19,0     ; Draw table (55) with attribute data index of 5,
                          ; terrain interaction data index of 5 at (11, 19)
  DEFB 84,0,0,6,10,0      ; Draw picture 1 (84) with attribute data index of 0,
                          ; terrain interaction data index of 0 at (6, 10)
  DEFB 85,0,0,21,10,0     ; Draw picture 2 (85) with attribute data index of 0,
                          ; terrain interaction data index of 0 at (21, 10)
  DEFB 0,71,94,108        ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 108

; Room Layout Data (14) - Starbase 1, 3
  DEFB 84,0,0,4,10,0      ; Draw picture 1 (84) with attribute data index of 0,
                          ; terrain interaction data index of 0 at (4, 10)
  DEFB 85,0,0,23,10,0     ; Draw picture 2 (85) with attribute data index of 0,
                          ; terrain interaction data index of 0 at (23, 10)
  DEFB 0,71,94,108        ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 108

; Room Layout Data (15) - Starbase 1, 4 (Fuel and Cargo Area)
  DEFB 57,8,16,1,15,0     ; Draw cargo container (57) with attribute data index
                          ; of 8, terrain interaction data index of 16 at (1,
                          ; 15)
  DEFB 82,33,0,12,17,0    ; Draw patterned column (82) with attribute data
                          ; index of 33, terrain interaction data index of 0 at
                          ; (12, 17)
  DEFB 82,33,0,18,17,1    ; Draw patterned column (82) with attribute data
                          ; index of 33, terrain interaction data index of 0 at
                          ; (18, 17), and apply vertical mirror (1)
  DEFB 57,8,16,21,15,0    ; Draw cargo container (57) with attribute data index
                          ; of 8, terrain interaction data index of 16 at (21,
                          ; 15)
  DEFB 251,14,14,31,7,0   ; Draw wall at (31, 7)
  DEFB 0,71,94,108        ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 108

; Room Layout Data (16) - Outpost, 0 (Ye Olde Transporter)
  DEFB 41,7,7,1,18,1      ; Draw left half of lower transporter pad (41) with
                          ; attribute data index of 7, terrain interaction data
                          ; index of 7 at (1, 18), and apply vertical mirror
                          ; (1)
  DEFB 41,24,7,1,6,3      ; Draw left half of upper transporter pad (41) with
                          ; attribute data index of 24, terrain interaction
                          ; data index of 7 at (1, 6), and apply horizontal and
                          ; vertical mirrors (3)
  DEFB 255,0,0,1,22,6,92  ; Start at (1, 22) and print run of 6 characters
                          ; (char. code 92) (base of transporter pad)
  DEFB 251,14,14,0,7,0    ; Draw wall at (0, 7)
  DEFB 88,34,0,13,11,0    ; Draw left half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (13, 11)
  DEFB 88,34,0,16,11,1    ; Draw right half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (16, 11), and apply
                          ; vertical mirror (1)
  DEFB 88,34,0,29,11,0    ; Draw left half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (29, 11)
  DEFB 0,71,94,109        ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 109

; Room Layout Data (17) - Outpost, 1 (The Main Defence System)
  DEFB 88,34,0,13,11,2    ; Draw left half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (13, 11), and apply
                          ; horizontal mirror (2)
  DEFB 88,34,0,16,11,3    ; Draw right half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (16, 11), and apply
                          ; horizontal and vertical mirrors (3)
  DEFB 88,34,0,0,11,1     ; Draw right half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (0, 11), and apply
                          ; vertical mirror (1)
  DEFB 88,34,0,29,11,0    ; Draw left half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (29, 11)
  DEFB 87,0,0,7,19,0      ; Draw left half of reel-to-reel tape device (87)
                          ; with attribute data index of 0, terrain interaction
                          ; data index of 0 at (7, 19)
  DEFB 87,0,0,10,19,1     ; Draw right half of reel-to-reel tape device (87)
                          ; with attribute data index of 0, terrain interaction
                          ; data index of 0 at (10, 19), and apply vertical
                          ; mirror (1)
  DEFB 87,0,0,13,19,0     ; Draw left half of reel-to-reel tape device (87)
                          ; with attribute data index of 0, terrain interaction
                          ; data index of 0 at (13, 19)
  DEFB 87,0,0,16,19,1     ; Draw right half of reel-to-reel tape device (87)
                          ; with attribute data index of 0, terrain interaction
                          ; data index of 0 at (16, 19), and apply vertical
                          ; mirror (1)
  DEFB 0,71,94,109        ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 109

; Room Layout Data (18) - Outpost, 2
  DEFB 88,34,0,13,11,0    ; Draw left half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (13, 11)
  DEFB 88,34,0,16,11,1    ; Draw right half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (16, 11), and apply
                          ; vertical mirror (1)
  DEFB 88,34,0,0,11,1     ; Draw right half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (0, 11), and apply
                          ; vertical mirror (1)
  DEFB 88,34,0,29,11,0    ; Draw left half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (29, 11)
  DEFB 0,71,94,109        ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 109

; Room Layout Data (19) - Outpost, 3 (The Proof of Power)
  DEFB 88,34,0,13,11,0    ; Draw left half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (13, 11)
  DEFB 88,34,0,16,11,1    ; Draw right half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (16, 11), and apply
                          ; vertical mirror (1)
  DEFB 88,34,0,0,11,1     ; Draw right half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (0, 11), and apply
                          ; vertical mirror (1)
  DEFB 88,34,0,29,11,0    ; Draw left half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (29, 11)
  DEFB 89,35,18,1,20,2    ; Draw Tyme Guardians' Symbol 2 (89) with attribute
                          ; data index of 35, terrain interaction data index of
                          ; 18 at (1, 20), and apply horizontal mirror (2)
  DEFB 89,35,18,7,20,2    ; Draw Tyme Guardians' Symbol 2 (89) with attribute
                          ; data index of 35, terrain interaction data index of
                          ; 18 at (7, 20), and apply horizontal mirror (2)
  DEFB 89,35,18,13,20,2   ; Draw Tyme Guardians' Symbol 2 (89) with attribute
                          ; data index of 35, terrain interaction data index of
                          ; 18 at (13, 20), and apply horizontal mirror (2)
  DEFB 89,35,18,19,20,2   ; Draw Tyme Guardians' Symbol 2 (89) with attribute
                          ; data index of 35, terrain interaction data index of
                          ; 18 at (19, 20), and apply horizontal mirror (2)
  DEFB 89,35,18,25,20,2   ; Draw Tyme Guardians' Symbol 2 (89) with attribute
                          ; data index of 35, terrain interaction data index of
                          ; 18 at (25, 20), and apply horizontal mirror (2)
  DEFB 0,71,94,109        ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 109

; Room Layout Data (20) - Outpost, 4 (The Tyme Guardians)
  DEFB 88,34,0,13,11,0    ; Draw left half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (13, 11)
  DEFB 88,34,0,16,11,1    ; Draw right half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (16, 11), and apply
                          ; vertical mirror (1)
  DEFB 88,34,0,0,11,1     ; Draw right half of Tyme Guardians' Symbol 1 (88)
                          ; with attribute data index of 34, terrain
                          ; interaction data index of 0 at (0, 11), and apply
                          ; vertical mirror (1)
  DEFB 251,14,14,31,7,0   ; Draw wall at (31, 7)
  DEFB 73,0,0,6,18,0      ; Draw Tyme Guardian (73) with attribute data index
                          ; of 0, terrain interaction data index of 0 at (6,
                          ; 18)
  DEFB 73,0,0,11,18,0     ; Draw Tyme Guardian (73) with attribute data index
                          ; of 0, terrain interaction data index of 0 at (11,
                          ; 18)
  DEFB 73,0,0,16,18,0     ; Draw Tyme Guardian (73) with attribute data index
                          ; of 0, terrain interaction data index of 0 at (16,
                          ; 18)
  DEFB 73,0,0,21,18,0     ; Draw Tyme Guardian (73) with attribute data index
                          ; of 0, terrain interaction data index of 0 at (21,
                          ; 18)
  DEFB 73,0,0,26,18,0     ; Draw Tyme Guardian (73) with attribute data index
                          ; of 0, terrain interaction data index of 0 at (26,
                          ; 18)
  DEFB 0,71,94,109        ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 109

; Room Layout Data (21) - Monopole, 0 (Hooper's Emergency Exit)
  DEFB 41,7,7,1,18,1      ; Draw left half of lower transporter pad (41) with
                          ; attribute data index of 7, terrain interaction data
                          ; index of 7 at (1, 18), and apply vertical mirror
                          ; (1)
  DEFB 41,24,7,1,6,3      ; Draw left half of upper transporter pad (41) with
                          ; attribute data index of 24, terrain interaction
                          ; data index of 7 at (1, 6), and apply horizontal and
                          ; vertical mirrors (3)
  DEFB 255,0,0,1,22,6,92  ; Start at (1, 22) and print run of 6 characters
                          ; (char. code 92) (base of transporter pad)
  DEFB 44,0,0,7,7,0       ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (7, 7)
  DEFB 44,0,0,10,7,1      ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (10, 7), and apply vertical mirror (1)
  DEFB 47,0,0,13,7,0      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (13, 7)
  DEFB 48,0,0,16,7,1      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (16, 7), and apply vertical mirror (1)
  DEFB 47,0,0,19,7,1      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (19, 7), and apply vertical mirror (1)
  DEFB 42,0,0,22,7,1      ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (22, 7), and apply vertical mirror (1)
  DEFB 48,0,0,25,7,1      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (25, 7), and apply vertical mirror (1)
  DEFB 42,0,0,29,7,0      ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (29, 7)
  DEFB 60,11,0,8,13,0     ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (8, 13)
  DEFB 60,11,0,23,13,0    ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (23, 13)
  DEFB 51,29,0,27,11,0    ; Draw security camera (51) with attribute data index
                          ; of 29, terrain interaction data index of 0 at (27,
                          ; 11)
  DEFB 251,14,14,0,7,0    ; Draw wall at (0, 7)
  DEFB 0,71,120,100       ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 120
                          ; (black INK, white PAPER, BRIGHT), and UDG 100

; Room Layout Data (22) - Monopole, 1 (This Way to Hooper ==>>)
  DEFB 42,0,0,0,7,1       ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (0, 7), and apply vertical mirror (1)
  DEFB 42,0,0,2,7,0       ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (2, 7)
  DEFB 43,0,0,5,7,0       ; Draw cavern ceiling part 2 (43) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (5, 7)
  DEFB 44,0,0,7,7,0       ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (7, 7)
  DEFB 45,0,0,10,7,1      ; Draw cavern ceiling part 4 (45) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (10, 7), and apply vertical mirror (1)
  DEFB 44,0,0,12,7,1      ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (12, 7), and apply vertical mirror (1)
  DEFB 45,0,0,15,7,0      ; Draw cavern ceiling part 4 (45) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (15, 7)
  DEFB 47,0,0,17,7,1      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (17, 7), and apply vertical mirror (1)
  DEFB 48,0,0,20,7,0      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (20, 7)
  DEFB 48,0,0,24,7,1      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (24, 7), and apply vertical mirror (1)
  DEFB 46,0,0,28,7,0      ; Draw cavern ceiling part 5 (46) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (28, 7)
  DEFB 47,0,0,29,7,0      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (29, 7)
  DEFB 44,0,0,0,18,2      ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (0, 18), and apply horizontal mirror (2)
  DEFB 46,0,0,3,19,2      ; Draw cavern ceiling part 5 (46) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (3, 19), and apply horizontal mirror (2)
  DEFB 44,0,0,4,18,2      ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (4, 18), and apply horizontal mirror (2)
  DEFB 44,0,0,7,18,2      ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (7, 18), and apply horizontal mirror (2)
  DEFB 42,0,0,10,17,2     ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (10, 17), and apply horizontal mirror (2)
  DEFB 47,0,0,13,17,3     ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (13, 17), and apply horizontal and vertical mirrors
                          ; (3)
  DEFB 47,0,0,16,17,2     ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (16, 17), and apply horizontal mirror (2)
  DEFB 47,0,0,19,17,3     ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (19, 17), and apply horizontal and vertical mirrors
                          ; (3)
  DEFB 48,0,0,22,18,2     ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (22, 18), and apply horizontal mirror (2)
  DEFB 45,0,0,26,20,2     ; Draw cavern ceiling part 4 (45) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (26, 20), and apply horizontal mirror (2)
  DEFB 46,0,0,28,19,2     ; Draw cavern ceiling part 5 (46) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (28, 19), and apply horizontal mirror (2)
  DEFB 43,0,0,29,19,2     ; Draw cavern ceiling part 2 (43) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (29, 19), and apply horizontal mirror (2)
  DEFB 46,0,0,31,19,2     ; Draw cavern ceiling part 5 (46) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (31, 19), and apply horizontal mirror (2)
  DEFB 60,11,0,8,13,0     ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (8, 13)
  DEFB 60,11,0,23,13,0    ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (23, 13)
  DEFB 0,71,120,100       ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 120
                          ; (black INK, white PAPER, BRIGHT), and UDG 100

; Room Layout Data (23) - Monopole, 2 (Here is Hooper)
  DEFB 44,0,0,0,7,0       ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (0, 7)
  DEFB 42,0,0,2,7,0       ; Draw cavern ceiling part 1 (42) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (2, 7)
  DEFB 43,0,0,5,7,0       ; Draw cavern ceiling part 2 (43) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (5, 7)
  DEFB 44,0,0,7,7,0       ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (7, 7)
  DEFB 45,0,0,10,7,0      ; Draw cavern ceiling part 4 (45) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (10, 7)
  DEFB 46,0,0,12,7,0      ; Draw cavern ceiling part 5 (46) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (12, 7)
  DEFB 47,0,0,13,7,0      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (13, 7)
  DEFB 47,0,0,16,7,0      ; Draw cavern ceiling part 6 (47) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (16, 7)
  DEFB 48,0,0,19,7,0      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (19, 7)
  DEFB 48,0,0,23,7,0      ; Draw cavern ceiling part 7 (48) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (23, 7)
  DEFB 44,0,0,27,7,0      ; Draw cavern ceiling part 3 (44) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (27, 7)
  DEFB 45,0,0,30,7,0      ; Draw cavern ceiling part 4 (45) with attribute data
                          ; index of 0, terrain interaction data index of 0 at
                          ; (30, 7)
  DEFB 60,11,0,8,13,0     ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (8, 13)
  DEFB 60,11,0,23,13,0    ; Draw wall-mounted plaque (60) with attribute data
                          ; index of 11, terrain interaction data index of 0 at
                          ; (23, 13)
  DEFB 59,27,0,20,16,0    ; Draw Hooper (59) with attribute data index of 27,
                          ; terrain interaction data index of 0 at (20, 16)
  DEFB 251,30,14,31,7,0   ; Draw wall at (31, 7)
  DEFB 0,71,120,100       ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 120
                          ; (black INK, white PAPER, BRIGHT), and UDG 100

; Room Layout Data (24) - USS Pisces, 6A (The Control Column)
  DEFB 89,35,0,13,11,0    ; Draw Tyme Guardians' Symbol 2 (89) with attribute
                          ; data index of 35, terrain interaction data index of
                          ; 0 at (13, 11)
  DEFB 67,0,0,8,15,0      ; Draw Tyme Machine Control Column block (67) with
                          ; attribute data index of 0, terrain interaction data
                          ; index of 0 at (8, 15)
  DEFB 67,0,0,8,17,0      ; Draw Tyme Machine Control Column block (67) with
                          ; attribute data index of 0, terrain interaction data
                          ; index of 0 at (8, 17)
  DEFB 67,0,0,8,19,0      ; Draw Tyme Machine Control Column block (67) with
                          ; attribute data index of 0, terrain interaction data
                          ; index of 0 at (8, 19)
  DEFB 67,0,0,8,21,0      ; Draw Tyme Machine Control Column block (67) with
                          ; attribute data index of 0, terrain interaction data
                          ; index of 0 at (8, 21)
  DEFB 53,4,0,22,10,0     ; Draw wall-mounted rifle (53) with attribute data
                          ; index of 4, terrain interaction data index of 0 at
                          ; (22, 10)
  DEFB 53,4,0,24,10,0     ; Draw wall-mounted rifle (53) with attribute data
                          ; index of 4, terrain interaction data index of 0 at
                          ; (24, 10)
  DEFB 53,4,0,26,10,0     ; Draw wall-mounted rifle (53) with attribute data
                          ; index of 4, terrain interaction data index of 0 at
                          ; (26, 10)
  DEFB 253,0,0,2,119,2,24 ; Draw line from (2, 119) to (2, 24)
  DEFB 253,0,0,5,119,5,24 ; Draw line from (5, 119) to (5, 24)
  DEFB 251,15,15,0,7,0    ; Draw wall at (0, 7)
  DEFB 251,14,14,31,7,0   ; Draw wall at (31, 7)
  DEFB 0,71,94,110        ; Flood room with attribute 71 (white INK, black
                          ; PAPER, BRIGHT), draw floor with attribute 94
                          ; (yellow INK, magenta PAPER, BRIGHT), and UDG 110

; Lookup Table for RLE Attribute Data (Room Layout Graphics)
;
; Each entry is comprised of four bytes:
  DEFB 1,1,173,203        ; (00) - 52141 - No colouring
  DEFB 11,15,174,203      ; (01) - 52142 - Gordon / Sarab at Helm
  DEFB 5,7,199,203        ; (02) - 52167 - Large Chair
  DEFB 2,4,216,203        ; (03) - 52184 - Wall-Mounted Telephone
  DEFB 2,9,219,203        ; (04) - 52187 - Wall-Mounted Rifle
  DEFB 7,4,224,203        ; (05) - 52192 - Table
  DEFB 9,3,227,203        ; (06) - 52195 - Half of Planet
  DEFB 6,5,230,203        ; (07) - 52198 - Lower Part of Transporter Pad
  DEFB 9,4,237,203        ; (08) - 52205 - Cargo Container
  DEFB 1,11,244,203       ; (09) - 52212 - Left / Right Edge of Viewscreen
  DEFB 32,1,253,203       ; (10) - 52221 - Unused
  DEFB 2,2,0,204          ; (11) - 52224 - Wall-Mounted Plaque
  DEFB 3,7,5,204          ; (12) - 52229 - Chandelier
  DEFB 2,16,30,204        ; (13) - 52254 - Barrier
  DEFB 1,15,37,204        ; (14) - 52261 - Wall (1, full-length)
  DEFB 1,11,37,204        ; (15) - 52261 - Wall (2, short)
  DEFB 6,5,40,204         ; (16) - 52264 - Plant
  DEFB 4,4,43,204         ; (17) - 52267 - Half of USS Pisces Picture
  DEFB 3,10,54,204        ; (18) - 52278 - Half of Transputer Panel
  DEFB 4,5,83,204         ; (19) - 52307 - Wall-Mounted Helmet (1)
  DEFB 4,5,86,204         ; (20) - 52310 - Unused
  DEFB 4,5,89,204         ; (21) - 52313 - Wall-Mounted Helmet (2)
  DEFB 4,5,92,204         ; (22) - 52316 - Wall-Mounted Helmet (3)
  DEFB 32,1,95,204        ; (23) - 52319 - Wall (3) (invisible, used to paint
                          ; upper part of The Bridge)
  DEFB 6,4,98,204         ; (24) - 52322 - Upper Part of Transporter Pad
  DEFB 0,0,0,0            ; (25) - Unused
  DEFB 4,5,105,204        ; (26) - 52329 - Control Panel
  DEFB 6,7,116,204        ; (27) - 52340 - Hooper
  DEFB 0,0,0,0            ; (28) - Unused
  DEFB 5,3,143,204        ; (29) - 52367 - Security Camera
  DEFB 1,15,146,204       ; (30) - 52370 - Wall (4, full-length)
  DEFB 1,15,149,204       ; (31) - 52373 - Wall (5, full-length)
  DEFB 0,0,0,0            ; (32) - Unused
  DEFB 3,6,152,204        ; (33) - 52376 - Patterned Column
  DEFB 3,5,155,204        ; (34) - 52379 - Half of Tyme Guardians' Symbol (1)
  DEFB 6,3,166,204        ; (35) - 52390 - Half of Tyme Guardians' Symbol (2)

; RLE Attribute Data (Room Layout Graphics)
;
; Run Length Encoded data used to paint attributes, with two bytes per entry
; (or a one-byte end marker represented by a zero). Records are comprised of:
; (00) - No colouring
  DEFB 0                  ; End Marker
; (01) - Gordon / Sarab at Helm
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 10,69              ; 10 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 4,70               ; 4 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 1,71               ; 1 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 2,69               ; 2 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 2,71               ; 2 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 6,70               ; 6 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 4,71               ; 4 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 3,78               ; 3 x 78 (yellow INK, blue PAPER, BRIGHT)
  DEFB 4,70               ; 4 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 4,68               ; 4 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 3,70               ; 3 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (02) - Large Chair
  DEFB 3,71               ; 3 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 2,68               ; 2 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 3,71               ; 3 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 2,68               ; 2 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 3,71               ; 3 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 2,68               ; 2 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 10,68              ; 10 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 10,70              ; 10 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (03) - Wall-Mounted Telephone
  DEFB 8,66               ; 8 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (04) - Wall-Mounted Rifle
  DEFB 8,69               ; 8 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 10,70              ; 10 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (05) - Table
  DEFB 7,66               ; 7 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (06) - Half of Planet
  DEFB 27,68              ; 27 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (07) - Half of Transporter Pad
  DEFB 1,71               ; 1 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 5,7                ; 5 x  7 (white INK, black PAPER)
  DEFB 24,70              ; 24 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (08) - Cargo Container
  DEFB 36,69              ; 36 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 9,70               ; 9 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 27,69              ; 27 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (09) - Left / Right Edge of Viewscreen
  DEFB 5,69               ; 5 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,101              ; 1 x 101 (cyan INK, green PAPER, BRIGHT)
  DEFB 1,93               ; 1 x 93 (cyan INK, magenta PAPER, BRIGHT)
  DEFB 4,69               ; 4 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (10) - Unused
  DEFB 32,69              ; 32 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (11) - Wall-Mounted Plaque
  DEFB 2,70               ; 2 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 2,71               ; 2 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (12) - Chandelier
  DEFB 4,69               ; 4 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 1,69               ; 1 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 1,69               ; 1 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 4,69               ; 4 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 1,69               ; 1 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 1,69               ; 1 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (13) - Barrier
  DEFB 6,124              ; 6 x 124 (green INK, white PAPER, BRIGHT)
  DEFB 20,120             ; 20 x 120 (black INK, white PAPER, BRIGHT)
  DEFB 6,124              ; 6 x 124 (green INK, white PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (14 / 15) - Wall (1, full-length / 2, short)
  DEFB 17,112             ; 17 x 112 (black INK, yellow PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (16) - Plant
  DEFB 30,68              ; 30 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (17) - USS Pisces Picture
  DEFB 5,67               ; 5 x 67 (magenta INK, black PAPER, BRIGHT)
  DEFB 3,68               ; 3 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 1,67               ; 1 x 67 (magenta INK, black PAPER, BRIGHT)
  DEFB 3,68               ; 3 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 4,67               ; 4 x 67 (magenta INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (18) - Transputer Panel
  DEFB 4,70               ; 4 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 2,66               ; 2 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 2,66               ; 2 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 2,67               ; 2 x 67 (magenta INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 2,68               ; 2 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 2,66               ; 2 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 2,7                ; 2 x  7 (white INK, black PAPER)
  DEFB 3,70               ; 3 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 6,69               ; 6 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (19) - Wall-Mounted Helmet (1)
  DEFB 20,71              ; 20 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (20) - Unused
  DEFB 20,70              ; 20 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (21) - Wall-Mounted Helmet (2)
  DEFB 20,69              ; 20 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (22) - Wall-Mounted Helmet (3)
  DEFB 20,68              ; 20 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (23) - Wall (3) (invisible, used to paint upper part of The Bridge)
  DEFB 32,69              ; 32 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (24) - Half of Transporter Pad
  DEFB 1,71               ; 1 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 5,7                ; 5 x  7 (white INK, black PAPER)
  DEFB 18,70              ; 18 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (26) - Control Panel
  DEFB 4,68               ; 4 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 9,70               ; 9 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 2,101              ; 2 x 101 (cyan INK, green PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 4,77               ; 4 x 77 (cyan INK, blue PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (27) - Hooper
  DEFB 2,71               ; 2 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 3,70               ; 3 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 1,68               ; 1 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 5,71               ; 5 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 5,71               ; 5 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 2,7                ; 2 x  7 (white INK, black PAPER)
  DEFB 1,71               ; 1 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 2,67               ; 2 x 67 (magenta INK, black PAPER, BRIGHT)
  DEFB 7,70               ; 7 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 6,69               ; 6 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 6,71               ; 6 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (29) - Security Camera
  DEFB 15,71              ; 15 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (30) - Wall (4, full-length)
  DEFB 17,127             ; 17 x 127 (white INK, white PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (31) - Wall (5, full-length)
  DEFB 17,100             ; 17 x 100 (green INK, green PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (33) - Patterned Column
  DEFB 18,66              ; 18 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (34) - Tyme Guardians' Symbol (1)
  DEFB 8,2                ; 8 x  2 (red INK, black PAPER)
  DEFB 1,69               ; 1 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 2,2                ; 2 x  2 (red INK, black PAPER)
  DEFB 1,69               ; 1 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 3,2                ; 3 x  2 (red INK, black PAPER)
  DEFB 0                  ; End Marker
; (35) - Tyme Guardians' Symbol (2)
  DEFB 2,68               ; 2 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 2,66               ; 2 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 14,68              ; 14 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker

; Lookup Table for RLE Terrain Interaction Parameter Data (Room Layout
; Graphics)
;
; Each entry is comprised of four bytes:
  DEFB 1,1,173,203        ; (00) - 52141 - No interaction
  DEFB 11,15,174,203      ; (01) - 52142 - Unused
  DEFB 5,7,249,204        ; (02) - 52473 - Large Chair
  DEFB 2,4,216,203        ; (03) - 52184 - Unused
  DEFB 2,9,219,203        ; (04) - 52187 - Unused
  DEFB 7,4,6,205          ; (05) - 52486 - Table
  DEFB 9,3,227,203        ; (06) - 52195 - Unused
  DEFB 6,4,9,205          ; (07) - 52489 - Half of Transporter Pad (Upper or
                          ; Lower)
  DEFB 9,4,237,203        ; (08) - 52205 - Unused
  DEFB 1,11,244,203       ; (09) - 52212 - Unused
  DEFB 32,1,253,203       ; (10) - 52221 - Unused
  DEFB 2,2,0,204          ; (11) - 52224 - Unused
  DEFB 3,7,5,204          ; (12) - 52229 - Unused
  DEFB 2,16,14,205        ; (13) - 52494 - Barrier
  DEFB 1,15,17,205        ; (14) - 52497 - Wall (1, full-length)
  DEFB 1,11,17,205        ; (15) - 52497 - Wall (2, short)
  DEFB 9,4,20,205         ; (16) - 52500 - Cargo Container
  DEFB 9,3,25,205         ; (17) - 52505 - Half of Planet
  DEFB 6,1,28,205         ; (18) - 52508 - Tyme Guardians' Symbol (2)

; RLE Terrain Interaction Parameter Data (Room Layout Graphics)
;
; Run Length Encoded data used to paint terrain interaction parameters, with
; two bytes per entry (or a one-byte end marker represented by a zero). Records
; are comprised of: (02) - Large Chair
  DEFB 9,0                ; 9 x 0 (no interaction)
  DEFB 1,255              ; 1 x 255 (impassable horizontally, upwards and
                          ; downwards / preserve attribute)
  DEFB 3,0                ; 3 x 0 (no interaction)
  DEFB 2,255              ; 2 x 255 (impassable horizontally, upwards and
                          ; downwards / preserve attribute)
  DEFB 5,0                ; 5 x 0 (no interaction)
  DEFB 5,128              ; 5 x 128 (impassable downwards)
  DEFB 0                  ; End Marker
; (05) - Table
  DEFB 7,128              ; 7 x 128 (impassable downwards)
  DEFB 0                  ; End Marker
; (07) - Transporter Pad
  DEFB 7,0                ; 7 x 0 (no interaction)
  DEFB 5,128              ; 5 x 128 (impassable downwards)
  DEFB 0                  ; End Marker
; (13) - Barrier
  DEFB 32,96              ; 32 x 96 (impassable horizontally / preserve
                          ; attribute)
  DEFB 0                  ; End Marker
; (14 / 15) - Wall (1, full-length) / Wall (2, short)
  DEFB 17,96              ; 17 x 96 (impassable horizontally / preserve
                          ; attribute)
  DEFB 0                  ; End Marker
; (16) - Cargo Container
  DEFB 3,0                ; 3 x 0 (no interaction)
  DEFB 3,128              ; 3 x 128 (impassable downwards)
  DEFB 0                  ; End Marker
; (17) - Half of Planet
  DEFB 27,127             ; 27 x 127 (impassable horizontally and upwards /
                          ; preserve attribute)
  DEFB 0                  ; End Marker
; (18) - Tyme Guardians' Symbol (2)
  DEFB 12,0               ; 12 x 0 (no interaction)
  DEFB 6,128              ; 6 x 128 (impassable downwards)
  DEFB 0                  ; End Marker

; Room Drawing Set "Apply Vertical Mirror" Mode off, "Apply Horizontal Mirror"
; Mode off and Draw a Graphic
;
; Used by the routine at 28631.
  XOR A                   ; Load 52672 with opcode for "NOP"...
  LD (52672),A            ; ...
  LD H,A                  ; Load 52672 and 52672 with opcode for "NOP"
  LD L,A                  ; ...
  LD (52673),HL           ; ...
  LD (23450),A            ; Reset both Horizontal and Vertical Mirror Flags
  LD (23449),A            ; Set Pixel Row Counter to zero
  LD BC,(23493)           ; Load BC with x- and y-coordinates of graphic to
                          ; draw
  JP 52635                ; Jump to 52635 (draw the graphic then return)

; Room Drawing Set "Apply Vertical Mirror" Mode on, "Apply Horizontal Mirror"
; Mode off and Draw a Graphic
;
; Used by the routine at 28631.
  LD A,205                ; Load 52672 with opcode for "CALL"...
  LD (52672),A            ; ...
  LD HL,52924             ; Load 52672 (i.e. operand of instruction at 52672)
                          ; with address of start of "Reverse the order of the
                          ; bits in A" routine...
  LD (52673),HL           ; ...
  XOR A                   ; Set Pixel Row Counter to zero...
  LD (23449),A            ; ...
  INC A                   ; Set Apply Vertical Mirror Flag and reset Apply
                          ; Horizontal Mirror Flag...
  LD (23450),A            ; ...
  LD A,(23494)            ; Load B with y-coordinate of graphic to draw...
  LD B,A                  ; ...
  LD A,(23495)            ; Load C with x-coordinate of graphic to draw...
  DEC A                   ; ...and decrease by one...
  LD C,A                  ; ...
  JP 52635                ; Jump to 52635 (draw the graphic then return)

; Room Drawing Set "Apply Vertical Mirror" Mode off, "Apply Horizontal Mirror"
; Mode on and Draw a Graphic
;
; Used by the routine at 28631.
  XOR A                   ; Load 52672 with opcode for "NOP"...
  LD (52672),A            ; ...
  LD H,A                  ; Load 52672 and 52672 with opcode for "NOP"
  LD L,A                  ; ...
  LD (52673),HL           ; ...
  LD A,2                  ; Reset Apply Vertical Mirror Flag and set Apply
                          ; Horizontal Mirror Flag...
  LD (23450),A            ; ...
  LD A,7                  ; Set Pixel Row Counter to 7...
  LD (23449),A            ; ...
  LD A,(23493)            ; Load C with x-coordinate of left edge of current
                          ; graphic to draw...
  LD C,A                  ; ...
  LD A,(23496)            ; Load B with y-coordinate + 1 for current graphic...
  LD B,A                  ; ...
  JP 52622                ; Jump to 52622 (set coordinates, draw the graphic
                          ; then return)

; Room Drawing Set "Apply Vertical Mirror" Mode on, "Apply Horizontal Mirror"
; Mode on and Draw a Graphic
;
; Used by the routine at 28631.
  LD A,205                ; Load 52672 with opcode for "CALL"...
  LD (52672),A            ; ...
  LD HL,52924             ; Load 52672 (i.e. operand of instruction at 52672)
                          ; with address of start of "Reverse the order of the
                          ; bits in A" routine...
  LD (52673),HL           ; ...
  LD A,7                  ; Set Pixel Row Counter to 7...
  LD (23449),A            ; ...
  LD A,3                  ; Set both Horizontal and Vertical Mirror Flags...
  LD (23450),A            ; ...
  LD BC,(23495)           ; Load BC with coordinates (each +1) of bottom-right
                          ; of graphic to draw
  DEC C                   ; Decrease x-coordinate by one
; This entry point is used by the routine at 52566.
  LD (23444),BC           ; Store coordinates at which to draw graphic at 23444
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  LD A,7                  ; Advance HL down to bottom pixel row in its current
                          ; character block (as we are drawing up from the
                          ; bottom)...
  ADD A,H                 ; ...
  LD H,A                  ; ...
  JR 52642                ; Jump to 52642 (draw the graphic then return)

; Room Drawing Draw a Graphic
;
; Used by the routines at 52513 and 52535. Input:  BC  x- and y-coordinates HL
; (Entry at 52642 only) Address in Display File to start drawing
  LD (23444),BC           ; Store x- and y-coordinates of character block
                          ; currently being drawn at 23444
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
; This entry point is used by the routine at 52596.
  PUSH HL                 ; Store HL (address in Display File to print
                          ; character)
  LD HL,52717             ; Load HL with 52717 (address of "Advance HL to next
                          ; Display File Address to be drawn to (Apply
                          ; Horizontal Mirror Flag reset)" routine)
  LD A,(23450)            ; Load A with Apply Horizontal and Apply Vertical
                          ; Mirror Flags
  AND 2                   ; If Apply Horizontal Mirror Flag is reset...
  JR Z,52656              ; ...then skip ahead to 52656
  LD HL,52820             ; Load HL with 52820 (address of "Advance HL to next
                          ; Display File Address to be drawn to (Apply
                          ; Horizontal Mirror Flag set)" routine)
  LD (52715),HL           ; Change destination for JP instruction at 52714 to
                          ; value in HL...
  POP HL                  ; Restore HL (address in Display File to print
                          ; character)
  LD DE,(23447)           ; Load DE with graphic data address
; This entry point is used by the routine at 52689.
  LD A,(DE)               ; Load A with a byte of graphic data
  OR A                    ; If data is zero...
  JR Z,52689              ; ...then read repeat counter value, x, and draw x
                          ; rows of reset pixels
  CP 255                  ; If data is 255...
  JR Z,52710              ; ...then read repeat counter value, x, and draw x
                          ; rows of set pixels
; The three-byte instruction at 52672 is modified by the instructions at 52514,
; 52537, 52567 and 52598. Initially it is as shown below, however upon
; modification it can take the following forms:
; +-------------+------------+-------------------------------------------------+
; | Instruction | Mirror     | Effect                                          |
; |             | Options    |                                                 |
; +-------------+------------+-------------------------------------------------+
; | 52514       | None       | NOP / NOP / NOP (do nothing)                    |
; | 52537       | Apply      | CALL 52924 (Reverse the order of the bits in A) |
; |             | Vertical   |                                                 |
; | 52567       | Apply      | NOP / NOP / NOP (do nothing)                    |
; |             | Horizontal |                                                 |
; | 52598       | Both       | CALL 52924 (Reverse the order of the bits in A) |
; +-------------+------------+-------------------------------------------------+
  CALL 52924              ; Reverse the order of the bits in A [This
                          ; instruction is modified by the instructions at
                          ; 52514, 52537, 52567 and 52598]
  CALL 52686              ; Load byte of graphic data in A into Display File
                          ; address in HL
  INC DE                  ; Advance DE to next byte of graphic data
  CALL 52714              ; Advance HL to next location in Display File (up or
                          ; down one pixel)...
  JP Z,52664              ; ...and if this new location is not outside
                          ; dimensions of the graphic then loop back to 52664
; This entry point is used by the routine at 52689.
  RET                     ; Return

; Load Contents of A into Memory Location Pointed to by HL
;
; Used by the routines at 52635 and 52689. Input:  A  A byte of (e.g. graphic)
; data HL  An address (e.g. in Display File)
  NOP                     ; Do nothing (see trivia)
  LD (HL),A               ; Load byte of graphic data into Display File address
                          ; HL
  RET                     ; Return

; Read (From Graphic Data) Repeat Counter Value, x, and Draw x Rows of Reset
; Pixels
;
; Used by the routine at 52635. Input:  DE  Current position in graphic data
  LD C,0                  ; Set C to zero (all bits reset)
; This entry point is used by the routine at 52710.
  INC DE                  ; Advance graphic data pointer
  LD A,(DE)               ; Load next data byte (repeat counter) into A
  INC DE                  ; Advance graphic data pointer
  LD B,A                  ; Load B (repeat counter) with value in A
  LD A,C                  ; Load A with zero (i.e. all eight pixel bits reset)
  CALL 52686              ; Load byte of graphic data in A into Display File
                          ; address in HL
  CALL 52714              ; Advance HL to next location in Display File (up or
                          ; down one pixel)...
  JP NZ,52685             ; ...and if this new location is outside dimensions
                          ; of the graphic then jump to 52685 (return)
  DJNZ 52695              ; Decrease repeat counter and loop back to 52695 if
                          ; not zero
  JP 52664                ; Jump back to 52664 to process next graphic data
                          ; byte

; Read (From Graphic Data) Repeat Counter Value, x, and Draw x Rows of Set
; Pixels
;
; Used by the routine at 52635.
  LD C,255                ; Load C with 255 (all bits set)
  JR 52691                ; Read repeat counter value, x, and draw x rows of
                          ; set pixels

; Room Drawing Jump to routine to advance HL to next Display File address to be
; drawn to
;
; Destination of jump (i.e. WORD value at 52715) depends upon whether or not
; the Apply Horizontal Mirror Flag is set. If the flag is set, then the jump
; destination is 52820, otherwise, the jump destination is 52717. Input: HL A
; Display File address
  JP 52717                ; Advance HL to next Display File Address to be drawn
                          ; to, depending upon state of Apply Horizontal Mirror
                          ; Flag and return

; Room Drawing Advance HL to next Display File address to be drawn to (Apply
; Horizontal Mirror Flag reset)
;
; Used when Apply Horizontal Mirror Flag is reset Input:  HL  A Display File
; address Output: A  1 (if returning via 52792, drawing complete), otherwise
; zero F  Zero Flag reset (if returning via 52792, drawing complete)
  LD A,(23449)            ; Increase Pixel Row Counter...
  INC A                   ; ...
  AND 7                   ; ...and reset to zero if it exceeds 7...
  LD (23449),A            ; ...
  JR Z,52731              ; If new value of Pixel Row Counter is zero (i.e. we
                          ; have rolled over to a new character block) then
                          ; advance HL to next character block to be drawn and
                          ; return
  INC H                   ; Increase Display File address by 256 bytes (i.e.
                          ; move to next pixel row down)
  XOR A                   ; Set A to zero
  RET                     ; Return
; This next section advances HL to next character block to be drawn
  LD A,(23450)            ; Load A with Horizontal and Vertical Mirror Flags
  AND 1                   ; If Apply Vertical Mirror Flag is set...
  JP NZ,52793             ; ...then skip ahead to 52793
  PUSH BC                 ; Store BC
  LD A,(23444)            ; Load x-coordinate of character block currently
                          ; being drawn into A...
  INC A                   ; ...increase by one...
  LD B,A                  ; ...and load into B
  LD A,(23495)            ; Load (x-coordinate + 1) of right of graphic being
                          ; drawn into A
  CP B                    ; If both x-coordinates are the same (i.e. we have
                          ; moved beyond graphic's right edge)...
  JR Z,52765              ; ...then jump to 52765
  LD A,B                  ; Store increased x-coordinate at 23444...
  LD (23444),A            ; ...
  LD BC,(23444)           ; Load BC with coordinates of new character block to
                          ; draw
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  XOR A                   ; Set A to zero
  POP BC                  ; Restore BC
  RET                     ; Return
; This next section advances HL to next character row to be drawn
  LD A,(23493)            ; Load A with x-coordinate of left of graphic to
                          ; draw...
  LD (23444),A            ; ...and set current x-coordinate to match
  LD A,(23445)            ; Load current y-coordinate into C, increasing by
                          ; one...
  INC A                   ; ...
  LD C,A                  ; ...
  LD A,(23496)            ; Load (y-coordinate + 1) of bottom of graphic being
                          ; drawn into A
  CP C                    ; If both y-coordinates are the same (i.e. we have
                          ; moved beyond graphic's bottom edge)...
  JR Z,52788              ; ...then skip ahead to 52788
  LD A,C                  ; Store increased y-coordinate at 23445...
  LD (23445),A            ; ...
  JR 52755                ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL then return
; This entry point is used by the routine at 52820.
  LD A,1                  ; Load A with 1
  OR A                    ; Reset Zero Flag
  POP BC                  ; Restore BC
  RET                     ; Return
; This next section advances HL to next character block to be drawn where the
; Apply Vertical Mirror Flag is set
  PUSH BC                 ; Store BC
  LD A,(23444)            ; Load x-coordinate of character block currently
                          ; being drawn into A...
  DEC A                   ; ...decrease by one...
  LD B,A                  ; ...and load into B
  LD A,(23493)            ; Load x-coordinate of left of graphic being drawn
                          ; into A...
  DEC A                   ; ...and decrease by one
  CP B                    ; If both x-coordinates are the same (i.e. we have
                          ; moved beyond graphic's left edge)...
  JR Z,52813              ; ...then jump to 52813
  LD A,B                  ; Store decreased x-coordinate at 23444...
  LD (23444),A            ; ...
  JP 52755                ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL then return
  LD A,(23495)            ; Load x-coordinate of right of graphic being drawn
                          ; into A...
  DEC A                   ; ...
  JP 52768                ; Move current character position down one character
                          ; row and return

; Room Drawing Advance HL to next Display File address to be drawn to (Apply
; Horizontal Mirror Flag set)
;
; Used when Apply Horizontal Mirror Flag is set Input:  HL  A Display File
; address Output: A  1 (if returning via 52792, drawing complete), otherwise
; zero F  Zero Flag reset (if returning via 52792, drawing complete)
  LD A,(23449)            ; Increase Pixel Row Counter...
  DEC A                   ; ...
  AND 7                   ; ...and reset to 7 if it falls below zero...
  LD (23449),A            ; ...
  CP 7                    ; If new value of Pixel Row Counter is 7 (i.e. we
                          ; have rolled over to a new character block)...
  JR Z,52836              ; ...then advance HL to next character block to be
                          ; drawn and return
  DEC H                   ; Decrease Display File address by 256 bytes (i.e.
                          ; move to next pixel row up)
  XOR A                   ; Set A to zero
  RET                     ; Return
; This next section advances HL to next character block to be drawn
  LD A,(23450)            ; Load A with Horizontal and Vertical Mirror Flags
  AND 1                   ; If Apply Vertical Mirror Flag is set...
  JP NZ,52897             ; ...then skip ahead to 52897
  PUSH BC                 ; Store BC
  LD A,(23444)            ; Load x-coordinate of character block currently
                          ; being drawn into A...
  INC A                   ; ...increase by one...
  LD B,A                  ; ...and load into B
  LD A,(23495)            ; Load (x-coordinate + 1) of right of graphic being
                          ; drawn into A
  CP B                    ; If both x-coordinates are the same (i.e. we have
                          ; moved beyond graphic's right edge)...
  JR Z,52874              ; ...then jump to 52874
  LD A,B                  ; Store increased x-coordinate at 23444...
  LD (23444),A            ; ...
  LD BC,(23444)           ; Load BC with coordinates of new character block to
                          ; draw
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  LD A,7                  ; Advance HL down seven pixel rows to bottom of
                          ; character block...
  ADD A,H                 ; ...
  LD H,A                  ; ...
  XOR A                   ; Set A to zero
  POP BC                  ; Restore BC
  RET                     ; Return
; This next section advances HL to next character row to be drawn
  LD A,(23493)            ; Load A with x-coordinate of left of graphic to
                          ; draw...
  LD (23444),A            ; ...and set current x-coordinate to match
  LD A,(23445)            ; Load current y-coordinate into C, decreasing by
                          ; one...
  DEC A                   ; ...
  LD C,A                  ; ...
  LD A,(23494)            ; Load y-coordinate of top of graphic being drawn
                          ; into A
  CP C                    ; If both y-coordinates are the same (i.e. we have
                          ; moved beyond graphic's top edge)...
  JR Z,52788              ; ...then jump to 52788 (load A with 1, reset Zero
                          ; Flag and return)
  LD A,C                  ; Store increased y-coordinate at 23445...
  LD (23445),A            ; ...
  JR 52860                ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL then return
; This next section advances HL to next character block to be drawn where the
; Apply Vertical Mirror Flag is set
  PUSH BC                 ; Store BC
  LD A,(23444)            ; Load x-coordinate of character block currently
                          ; being drawn into A...
  DEC A                   ; ...decrease by one...
  LD B,A                  ; ...and load into B
  LD A,(23493)            ; Load x-coordinate of left of graphic being drawn
                          ; into A...
  DEC A                   ; ...and decrease by one
  CP B                    ; If both x-coordinates are the same (i.e. we have
                          ; moved beyond graphic's left edge)...
  JR Z,52917              ; ...then jump to 52917
  LD A,B                  ; Store decreased x-coordinate at 23444...
  LD (23444),A            ; ...
  JP 52860                ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL then return
  LD A,(23495)            ; Load x-coordinate of right of graphic being drawn
                          ; into A...
  DEC A                   ; ...
  JP 52877                ; Move current character position down one character
                          ; row and return

; Reverse the order of the bits in A
;
; For example, if A is 3 (00000011) at input, then at output, A will be 192
; (11000000). Input:  A  A bitmap Output: A  A vertically mirrored bitmap
  PUSH BC                 ; Store BC
  LD B,8                  ; Load B with 8 (eight bits)
  LD C,0                  ; Load C with zero
  RRA                     ; Shift bit right out of A and into Carry Flag
  RL C                    ; Shift bit left out of Carry Flag and into C
  DJNZ 52929              ; Loop back to 52929 for next bit
  LD A,C                  ; Load modified bitmap back into A
  POP BC                  ; Restore BC
  RET                     ; Return

; Store Background Bitmap Data at Magic Knight's Current Location
;
; Used by the routine at 53150.
  LD DE,23813             ; Point DE at Table of Bitmap Data for Magic Knight
                          ; at his Current Location
  LD A,(25157)            ; Load HL with double Magic Knight's current
                          ; y-coordinate (pixels)...
  LD L,A                  ; ...
  LD H,0                  ; ...
  ADD HL,HL               ; ...
  LD BC,26240             ; Point BC at Table of Display File Addresses of
                          ; Start of Each Pixel Row
  ADD HL,BC               ; Add double y-coordinate as offset in HL
  LD (23420),HL           ; Store pointer to entry for pixel row at Magic
                          ; Knight's current y-coordinate
  LD A,(25156)            ; Load A with Magic Knight's current x-coordinate
                          ; (pixels)
  RRCA                    ; Divide by two
  PUSH AF                 ; Store AF (A = Magic Knight's current x-coordinate
                          ; in pixels, divided by two)
  AND 3                   ; Clear all but the lowest three bits...
  LD (25159),A            ; ...and store the remaining value as Magic Knight's
                          ; current frame index
  POP AF                  ; Restore AF (A = Magic Knight's current x-coordinate
                          ; in pixels, divided by two)
  RRCA                    ; Divide Magic Knight's current x-coordinate in
                          ; pixels by eight and remove remainder...
  RRCA                    ; ...
  AND 31                  ; ...
  LD (23422),A            ; Store value (Magic Knight's current x-coordinate in
                          ; characters) at 23422...
  LD C,A                  ; ...and load into C
  LD B,32                 ; Load B with 32 (as Magic Knight is 32 pixels tall)
  LD IX,(23420)           ; Load IX with pointer to entry for pixel row at
                          ; Magic Knight's current y-coordinate
  PUSH BC                 ; Store BC (B = remaining number of pixel rows to
                          ; store, C = MK's x-coordinate in characters)
  LD L,(IX+0)             ; Load Display File address of pixel row at IX into
                          ; HL...
  INC IX                  ; ...and advance IX to entry for next pixel row
                          ; down...
  LD H,(IX+0)             ; ...
  INC IX                  ; ...
  LD B,0                  ; Set B to zero (BC = Magic Knight's current
                          ; x-coordinate in characters)
  ADD HL,BC               ; Add BC to HL as offset
  LD A,(HL)               ; Copy three bytes of graphic data from Display File
                          ; address...
  LD (DE),A               ; ...into Table of Background Bitmap Data...
  INC HL                  ; ...as Magic Knight can only occupy three
                          ; consecutive character blocks horizontally...
  INC DE                  ; ...
  LD A,(HL)               ; ...
  LD (DE),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(HL)               ; ...
  LD (DE),A               ; ...
  INC DE                  ; ...
  POP BC                  ; Restore BC (B = remaining number of pixel rows to
                          ; store, C = MK's x-coordinate in characters)
  DJNZ 52979              ; Decrease B (remaining number of pixel rows to
                          ; store) and loop back to 52979 if non-zero for next
                          ; pixel row
  LD HL,23813             ; Copy contents of Table of Bitmap Data for Magic
                          ; Knight at his Current Location to Table of
                          ; Background Bitmap Data 23909...
  LD DE,23909             ; ...
  LD BC,96                ; ...
  LDIR                    ; ...
  RET                     ; Return

; Overlay Graphic Data for MK's Current Frame on Table of Bitmap Data for MK at
; his Current Location
;
; Used by the routine at 53150.
  LD A,(25159)            ; Load Magic Knight's current frame index into A...
  LD B,A                  ; ...multiply by 48...
  ADD A,A                 ; ...
  ADD A,B                 ; ...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; ...load into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; ...and double again to give 96 times original
                          ; value, as graphic data for MK's frames are 96 bytes
                          ; each
  LD A,(23425)            ; If Magic Knight Facing Left Flag is reset...
  OR A                    ; ...
  JR Z,53043              ; ...then skip ahead to 53043
  LD BC,384               ; Advance HL by 384 bytes...
  ADD HL,BC               ; ...i.e. prepare to use left-facing graphic data,
                          ; rather than right-facing...
  PUSH HL                 ; Copy value in HL to IX...
  POP IX                  ; ...
  LD DE,63988             ; Point DE at start of graphic data for Magic Knight
                          ; facing right, frame 1 (mask)
  ADD HL,DE               ; Add HL as offset in HL (HL now points to start of
                          ; graphic data for Magic Knight's current frame mask)
  LD DE,63220             ; Point DE at start of graphic data for Magic Knight
                          ; facing right, frame 1
  ADD IX,DE               ; Add IX as offset in IX (IX now points to start of
                          ; graphic data for Magic Knight's current frame)
  LD DE,23813             ; Point DE at Table of Bitmap Data for Magic Knight
                          ; at his Current Location
  LD B,96                 ; Load B with 96, as Magic Knight's bitmap graphic
                          ; data is 96 bytes per frame
  LD A,(DE)               ; Load current background bitmap byte into A
  AND (HL)                ; Apply mask to bitmap data
  OR (IX+0)               ; Overlay Magic Knight bitmap graphic data
  LD (DE),A               ; Store result back into Table of Background Bitmap
                          ; Data
  INC HL                  ; Advance HL to next byte in Magic Knight mask bitmap
                          ; data
  INC DE                  ; Advance DE to next byte in background graphic
                          ; bitmap data
  INC IX                  ; Advance IX to next byte in Magic Knight graphic
                          ; bitmap data
  DJNZ 53060              ; Decrease B (remaining number of bytes to process)
                          ; and loop back to 53060
  RET                     ; Return

; Draw Bitmap Data for Magic Knight Overlaid on Background to Display File
;
; Used by the routine at 53150. Input:  DE  (Entry at 53076 only) Address of
; Table of Background Bitmap Data (23909)
  LD DE,23813             ; Point DE at Table of Bitmap Data for Magic Knight
                          ; at his Current Location
; This entry point is used by the routine at 53115.
  LD IX,(23420)           ; Load IX with pointer to entry in Table of Display
                          ; File Addresses for pixel row at Magic Knight's
                          ; current y-coordinate
  LD A,(23422)            ; Load C with Magic Knight's current x-coordinate
                          ; (characters)...
  LD C,A                  ; ...
  LD B,32                 ; Load B with 32 (as Magic Knight is 32 pixels tall)
  PUSH BC                 ; Store BC (B = remaining number of pixel rows to
                          ; draw, C = MK's x-coordinate in characters)
  LD L,(IX+0)             ; Load Display File address of pixel row at IX into
                          ; HL...
  INC IX                  ; ...and advance IX to entry for next pixel row
                          ; down...
  LD H,(IX+0)             ; ...
  INC IX                  ; ...
  LD B,0                  ; Set B to zero (BC = Magic Knight's current
                          ; x-coordinate in characters)
  ADD HL,BC               ; Add BC to HL as offset
  LD A,(DE)               ; Copy three bytes of graphic data from Table of
                          ; Bitmap Data for Magic Knight at his Current
                          ; Location...
  LD (HL),A               ; ...into Display File...
  INC HL                  ; ...as Magic Knight can only occupy three
                          ; consecutive character blocks horizontally...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC DE                  ; ...
  POP BC                  ; Restore BC (B = remaining number of pixel rows to
                          ; store, C = MK's x-coordinate in characters)
  DJNZ 53086              ; Decrease B (remaining number of pixel rows to draw)
                          ; and loop back to 53086 if non-zero for next pixel
                          ; row
  RET                     ; Return

; Erase Magic Knight from Display, Advance his Current Position then Redraw
;
; Used by the routines at 27136 and 27357.
  PUSH IX                 ; Store IX
  LD DE,23909             ; Point DE at Table of Background Bitmap Data
  HALT                    ; Wait for interrupt
  CALL 53076              ; Restore background bitmap data (i.e. remove Magic
                          ; Knight bitmap data from display)
  LD A,(23705)            ; If Player Attribute Update Flag is set...
  OR A                    ; ...
  CALL NZ,53278           ; ...then restore background attribute data at Magic
                          ; Knight's current location
  POP IX                  ; Restore IX
  LD HL,25156             ; Point HL at Magic Knight's current x-coordinate
  LD A,(25160)            ; Load A with Magic Knight's current x-velocity...
  ADD A,(HL)              ; ...and add to this Magic Knight's current
                          ; x-coordinate
  LD (HL),A               ; Set this as Magic Knight's new x-coordinate
  INC HL                  ; Advance HL to Magic Knight's y-coordinate
  LD A,(25161)            ; Load A with Magic Knight's current y-velocity...
  ADD A,(HL)              ; ...and add to this Magic Knight's current
                          ; y-coordinate
  LD (HL),A               ; Set this as Magic Knight's new y-coordinate
  XOR A                   ; Set A to zero (see trivia)
  JR 53152                ; Store background attributes if appropriate, then
                          ; draw Magic Knight to display, then return

; Store Background Attributes if Appropriate, then Draw Magic Knight to Display
;
; Used by the routines at 28101 and 31468.
  LD A,1                  ; Load A with 1 (see trivia)
; This entry point is used by the routine at 53115.
  PUSH IX                 ; Store IX
  LD A,(23705)            ; If Player Attribute Update Flag is set (Player
                          ; Attribute Update mode)...
  OR A                    ; ...
  CALL NZ,53185           ; ...then store background attribute data at Magic
                          ; Knight's current location
  CALL 52937              ; Store background bitmap data at Magic Knight's
                          ; current location
  CALL 53019              ; Overlay graphic data for MK's current frame on
                          ; Table of Bitmap Data for MK at his Current Location
  CALL 53073              ; Draw bitmap data for Magic Knight overlaid on
                          ; background to Display File
  LD A,(23422)            ; Store Magic Knight's current x-coordinate
                          ; (characters) at 23423...
  LD (23423),A            ; ...
  LD A,(25157)            ; Store Magic Knight's current y-coordinate (pixels)
                          ; at 23424...
  LD (23424),A            ; ...
  POP IX                  ; Restore IX
  RET                     ; Return

; Store Background Attribute Data at Magic Knight's Current Location
;
; Used by the routine at 53150.
  LD DE,24037             ; Point DE at Table of Background Attribute data
  LD A,(25157)            ; Load A with Magic Knight's current y-coordinate
                          ; (pixels)
  AND 248                 ; Clear lowest three bits to round down to nearest
                          ; multiple of 8
  LD L,A                  ; Load this value into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Multiply by four to obtain 32 x y-coordinate
                          ; (characters)...
  ADD HL,HL               ; ...
  LD A,(25156)            ; Load A with Magic Knight's current x-coordinate
                          ; (pixels)
  RRCA                    ; Divide this by eight, rounding down to nearest
                          ; integer...
  RRCA                    ; ...to convert from pixels to characters...
  RRCA                    ; ...
  AND 31                  ; ...
  LD C,A                  ; Load x-coordinate (characters) into BC...
  LD B,0                  ; ...
  ADD HL,BC               ; Add x-coordinate to 32 x y-coordinate in HL
  PUSH HL                 ; Store HL (32 x y-coordinate in characters)
  LD BC,22528             ; Add this to start address of Attribute File...
  ADD HL,BC               ; ...so that HL points to required byte in Attribute
                          ; File
  EX (SP),HL              ; Put Attribute File address on top of stack and load
                          ; HL with 32 x y-coordinate
  LD BC,24064             ; Point BC at start of Terrain Interaction Data
                          ; Table...
  ADD HL,BC               ; ...and add 32 x y-coordinate as offset in HL
  EX (SP),HL              ; Restore Attribute File address to HL...
  POP IX                  ; ...and load IX with Terrain Interaction address
  LD A,(25162)            ; Load C with Magic Knight's attribute...
  LD C,A                  ; ...
  LD B,4                  ; Load B with 4 as Magic Knight is four characters
                          ; tall
  PUSH BC                 ; Store BC (B = remaining number of character rows)
  LD A,(HL)               ; Copy byte from Attribute File...
  LD (DE),A               ; ...into Table of Background Attribute Data
  BIT 5,(IX+0)            ; If Preserve Attribute Terrain Interaction Flag is
                          ; set for this character...
  JP NZ,53240             ; ...then skip ahead to 53240
  LD (HL),C               ; Set current Attribute File byte to match Magic
                          ; Knight's attribute
  INC HL                  ; Advance current position in Attribute File
  INC DE                  ; Advance current position in Table of Background
                          ; Attribute Data
  LD A,(HL)               ; Copy byte from Attribute File...
  LD (DE),A               ; ...into Table of Background Attribute Data
  BIT 5,(IX+1)            ; If Preserve Attribute Terrain Interaction Flag is
                          ; set for this character...
  JP NZ,53252             ; ...then skip ahead to 53252
  LD (HL),C               ; Set current Attribute File byte to match Magic
                          ; Knight's attribute
  INC HL                  ; Advance current position in Attribute File
  INC DE                  ; Advance current position in Table of Background
                          ; Attribute Data
  LD A,(HL)               ; Copy byte from Attribute File...
  LD (DE),A               ; ...into Table of Background Attribute Data
  BIT 5,(IX+2)            ; If Preserve Attribute Terrain Interaction Flag is
                          ; set for this character...
  JP NZ,53264             ; ...then skip ahead to 53264
  LD (HL),C               ; Set current Attribute File byte to match Magic
                          ; Knight's attribute
  INC DE                  ; Advance current position in Table of Background
                          ; Attribute Data
  LD BC,30                ; Advance current position in Attribute File by 30
                          ; bytes...
  ADD HL,BC               ; ...i.e. down one character and left two characters
  LD BC,32                ; Advance current position in Terrain Interaction
                          ; Data Table by 32 bytes...
  ADD IX,BC               ; ...i.e. down one character
  POP BC                  ; Restore BC (B = remaining number of character rows)
  DJNZ 53229              ; If character rows remain then loop back to 53229
  RET                     ; Return

; Restore Background Attribute Data at Magic Knight's Current Location
;
; Used by the routine at 53115.
  LD DE,24037             ; Point DE at Table of Background Attribute Data
  LD A,(25157)            ; Load A with Magic Knight's current y-coordinate
                          ; (pixels)
  AND 248                 ; Clear lowest three bits to round down to nearest
                          ; multiple of 8
  LD L,A                  ; Load this value into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Multiply by four to obtain 32 x y-coordinate
                          ; (characters)...
  ADD HL,HL               ; ...
  LD A,(25156)            ; Load A with Magic Knight's current x-coordinate
                          ; (pixels)
  RRCA                    ; Divide this by eight, rounding down to nearest
                          ; integer...
  RRCA                    ; ...to convert from pixels to characters...
  RRCA                    ; ...
  AND 31                  ; ...
  LD C,A                  ; Load x-coordinate (characters) into BC...
  LD B,0                  ; ...
  ADD HL,BC               ; Add x-coordinate to 32 x y-coordinate in HL...
  LD BC,22528             ; ...then add this to start address of Attribute
                          ; File...
  ADD HL,BC               ; ...so that HL points to required byte in Attribute
                          ; File
  LD B,4                  ; Load B with 4 as Magic Knight is four characters
                          ; tall
  PUSH BC                 ; Store BC (B = remaining number of character rows)
  LD A,(DE)               ; Copy byte from Table of Background Attribute
                          ; Data...
  LD (HL),A               ; ...into Attribute File
  INC HL                  ; Advance current position in Attribute File
  INC DE                  ; Advance current position in Table of Background
                          ; Attribute Data
  LD A,(DE)               ; Copy byte from Table of Background Attribute
                          ; Data...
  LD (HL),A               ; ...into Attribute File
  INC HL                  ; Advance current position in Attribute File
  INC DE                  ; Advance current position in Table of Background
                          ; Attribute Data
  LD A,(DE)               ; Copy byte from Table of Background Attribute
                          ; Data...
  LD (HL),A               ; ...into Attribute File
  INC DE                  ; Advance current position in Table of Background
                          ; Attribute Data
  LD BC,30                ; Advance current position in Attribute File by 30
                          ; bytes...
  ADD HL,BC               ; ...i.e. down one character and left two characters
  POP BC                  ; Restore BC (B = remaining number of character rows)
  DJNZ 53309              ; If character rows to be coloured remain then loop
                          ; back to 53309
  RET                     ; Return

; Starship Location Connectivity Data
;
; The various locations that the USS Pisces can travel to are laid out on a
; grid, eight units by four units. When the USS Pisces is at a given location
; on the grid, it can move only to the eight adjacent locations (north,
; north-east, east, south-east, south, south-west, west and north-west).
  DEFB 1,2,3,4,22,6,7,0   ; Deneb,      Gath,    Monopole,   Porthos, Reef,
                          ; Lynx,     Nirvana, NULL
  DEFB 8,9,0,10,12,11,14,16 ; Limbo,      Eden,    NULL,       Herschell, Plop
                            ; Plop, Trantore, Outpost, Bingo
  DEFB 13,15,5,0,0,17,24,0 ; Brightstar, Polaris, Starbase 1, NULL, NULL,
                           ; Retreat,  Plinkit, NULL
  DEFB 18,0,19,20,21,0,0,23 ; Dragon Egg, NULL,    Aridia,     Gangrole, Naff,
                            ; NULL,     NULL, Menopausia

; Initial Planetary Data
;
; Two bytes per location. The bytes' meanings are:
  DEFB 0,0                ; (00) - Unused
  DEFB 0,66               ; (01) - Deneb
  DEFB 0,70               ; (02) - Gath
  DEFB 0,66               ; (03) - Monopole
  DEFB 50,6               ; (04) - Porthos
  DEFB 255,71             ; (05) - Starbase 1
  DEFB 70,7               ; (06) - Lynx
  DEFB 25,71              ; (07) - Nirvana
  DEFB 30,70              ; (08) - Limbo
  DEFB 80,68              ; (09) - Eden
  DEFB 255,68             ; (10) - Herschell
  DEFB 80,65              ; (11) - Trantore
  DEFB 0,69               ; (12) - Plop Plop
  DEFB 10,71              ; (13) - Brightstar
  DEFB 0,7                ; (14) - Outpost
  DEFB 20,7               ; (15) - Polaris
  DEFB 255,71             ; (16) - Bingo
  DEFB 0,7                ; (17) - Retreat
  DEFB 0,4                ; (18) - Dragon Egg
  DEFB 0,66               ; (19) - Aridia
  DEFB 0,0                ; (20) - Gangrole
  DEFB 20,71              ; (21) - Naff
  DEFB 0,69               ; (22) - Reef
  DEFB 0,66               ; (23) - Menopausia
  DEFB 255,6              ; (24) - Plinkit

; Table of Start Addresses of Input Device Reading Routines
  DEFW 54950              ; Address of keyboard reading routine
  DEFW 54999              ; Address of Kempston Joystick reading routine
  DEFW 55030              ; Address of Cursor Joystick reading routine
  DEFW 55067              ; Address of Sinclair Joystick 1 reading routine

; Powers of Ten (Used by Routine at 35591) for Converting Numbers to ASCII
; String
  DEFW 10000
  DEFW 1000
  DEFW 100
  DEFW 10
  DEFW 1

; Addresses of Room-Specific Routines
  DEFW 28469              ; (00) Do Nothing - USS Pisces, 0 (The Recreation
                          ; Room)
  DEFW 28469              ; (01) Do Nothing - USS Pisces, 1 (The Bridge)
  DEFW 28469              ; (02) Do Nothing - USS Pisces, 2 (The Transporter
                          ; Room)
  DEFW 28469              ; (03) Do Nothing - USS Pisces, 3 (The Transputer
                          ; Room)
  DEFW 28469              ; (04) Do Nothing - USS Pisces, 4 (Cargo Hold)
  DEFW 28469              ; (05) Do Nothing - USS Pisces, 5 (The Airlock)
  DEFW 28469              ; (06) Do Nothing - USS Pisces, 6 (The Life Boat)
  DEFW 28470              ; (07) Go to Game Over Routine if Magic Knight is not
                          ; Wearing the Cloak of Invisibility - Retreat, 0
                          ; (Murphy's Moon)
  DEFW 28482              ; (08) Go to Game Over Routine if Magic Knight is not
                          ; Wearing the Pair of Boots - Retreat, 1
  DEFW 28469              ; (09) Do Nothing - Retreat, 2
  DEFW 28469              ; (10) Do Nothing - Retreat, 3
  DEFW 28469              ; (11) Do Nothing - Starbase 1, 0 (The Transporter
                          ; Room)
  DEFW 28469              ; (12) Do Nothing - Starbase 1, 1 (McTablet Takeaway
                          ; Food)
  DEFW 28469              ; (13) Do Nothing - Starbase 1, 2
  DEFW 28469              ; (14) Do Nothing - Starbase 1, 3
  DEFW 28469              ; (15) Do Nothing - Starbase 1, 4 (Fuel and Cargo
                          ; Area)
  DEFW 28494              ; (16) Go to Game Over Routine if Magic Knight is not
                          ; Wearing the Gas Mask - Outpost, 0 (Ye Olde
                          ; Transporter)
  DEFW 28482              ; (17) Go to Game Over Routine if Magic Knight is not
                          ; Wearing the Pair of Boots - Outpost, 1 (The Main
                          ; Defence System)
  DEFW 28506              ; (18) Show Tyme Guardians' Warning Message if not
                          ; Already Shown - Outpost, 2
  DEFW 28542              ; (19) Go to Game Over Routine if Magic Knight is not
                          ; Carrying the Golden Sundial of Alpha - Outpost, 3
                          ; (The Proof of Power)
  DEFW 28554              ; (20) Show Tyme Guardians' Messages and Install Tyme
                          ; Machine on USS Pisces - Outpost, 4 (The Tyme
                          ; Guardians)
  DEFW 28470              ; (21) Go to Game Over Routine if Magic Knight is not
                          ; Wearing the Cloak of Invisibility - Monopole, 0
                          ; (Hooper's Emergency Exit)
  DEFW 28494              ; (22) Go to Game Over Routine if Magic Knight is not
                          ; Wearing the Gas Mask - Monopole, 1 (This Way to
                          ; Hooper ==>>)
  DEFW 28469              ; (23) Do Nothing - Monopole, 2 (Here is Hooper)
  DEFW 28469              ; (24) Do Nothing - USS Pisces, 6A (The Control
                          ; Column)

; Call Time-Dependent Routines [Main Interrupt Routine]
;
; Used by the routine at 65524.
  CALL 54051              ; Store all registers on the stack
  BIT 0,(IY+65)           ; If Game In Progress Flag is reset... (IY = 23610)
  JP Z,53492              ; ...then skip ahead to 53492
  CALL 53498              ; Update game time, time left and move characters if
                          ; appropriate
  CALL 54079              ; Restore all registers from the stack
  JP 56                   ; Jump to ROM maskable interrupt routine (update
                          ; frame counter, read keyboard and then return from
                          ; interrupt routine)

; Update Game Time, Time Left and Move Characters if Appropriate
;
; Used by the routine at 53479.
  LD A,(23460)            ; If number of 1/50 seconds elapsed in current minute
                          ; is divisible by eight...
  AND 7                   ; ...
  CALL Z,53731            ; ...then move character whose turn it is to move, if
                          ; allowed
  LD A,(23460)            ; [EVERY 1/50 SECOND] Increase number of elapsed 1/50
                          ; seconds
  INC A                   ; ...
  LD (23460),A            ; ...
  CP 50                   ; If new value isn't 50...
  RET NZ                  ; ...then return
  XOR A                   ; [EVERY 1 SECOND] Else, set the value to zero (start
                          ; of next full second)...
  LD (23460),A            ; ...
  LD A,(23459)            ; Increase number of seconds elapsed...
  INC A                   ; ...
  LD (23459),A            ; ...
  CP 60                   ; If new value isn't 60...
  RET NZ                  ; ...then return
  XOR A                   ; [EVERY 1 MINUTE] Else, set the value to zero (start
                          ; of next minute)...
  LD (23459),A            ; ...
  CALL 53585              ; Update All Characters' Stats (Deteriorate or
                          ; Regenerate) and Wake Up / Send to Sleep if Required
  CALL 53573              ; Increase Magic Knight's current Magic Level by 10
                          ; (capped at 100)
  LD A,12                 ; If Magic Knight is wearing the Magic Talisman
                          ; (12)...
  CALL 33640              ; ...
  CALL Z,53573            ; ...then increase Magic Knight's current Magic Level
                          ; by another 10 (capped at 100)
  LD A,(23458)            ; Increase number of minutes elapsed...
  INC A                   ; ...
  LD (23458),A            ; ...
  CP 5                    ; If new value isn't 5...
  RET NZ                  ; ...then return
  XOR A                   ; [EVERY 5 MINUTES] Else, set the value to zero
                          ; (start of next "day")...
  LD (23458),A            ; ...
  LD A,(23457)            ; Decrease number of days left...
  DEC A                   ; ...
  LD (23457),A            ; ...
  JP Z,53937              ; If zero then show "Out of time" game over message
                          ; and return to Control Selection Menu
  RET                     ; Return

; Increase Magic Knight's Current Magic Level by 10 (Up to Maximum of 100)
;
; Used by the routine at 53498.
  LD A,(25024)            ; Load A with Magic Knight's current Magic Level
  LD C,10                 ; Add 10 to this value, capping at 100...
  CALL 53703              ; ...
  LD (25024),A            ; Store updated value for Magic Level
  RET                     ; Return

; Update All Characters' Stats (Deteriorate or Regenerate) and Wake Up / Send
; to Sleep if Required
;
; Used by the routine at 53498.
  LD DE,8                 ; Load DE with 8 (as data is 8 bytes long)
  LD HL,53955             ; Point HL at start of characters' Stat Regeneration
                          ; Data Table
  LD IX,25028             ; Point IX at Gordon's current stats (2nd entry in
                          ; Characters' Current Stats Table, as first is Magic
                          ; Knight's)
  LD B,16                 ; Load B with 16 (16 characters) (see trivia)
  BIT 7,(IX+6)            ; If current character is awake...
  JR Z,53607              ; ...then skip ahead to 53607
  INC HL                  ; Advance HL by four bytes to stat deterioration
                          ; data...
  INC HL                  ; ...
  INC HL                  ; ...
  INC HL                  ; ...
  LD C,(HL)               ; Load stat change value into C
  LD A,(IX+0)             ; Load current character's strength into A
  CALL 53703              ; Update character's strength as they tire (awake) or
                          ; regenerate (asleep)...
  LD (IX+0),A             ; ...
  INC HL                  ; Advance HL to next (happiness) data
  LD C,(HL)               ; Load stat change value into C
  LD A,(IX+1)             ; Load current character's happiness into A
  CALL 53703              ; Update character's happiness as they tire (awake)
                          ; or regenerate (asleep)...
  LD (IX+1),A             ; ...
  INC HL                  ; Advance HL to next (stamina) data
  LD C,(HL)               ; Load stat change value into C
  LD A,(IX+2)             ; Load current character's stamina into A
  CALL 53703              ; Update character's stamina as they tire (awake) or
                          ; regenerate (asleep)...
  LD (IX+2),A             ; ...
  INC HL                  ; Advance HL to next (charisma) data
  LD C,(HL)               ; Load stat change value into C
  LD A,(IX+3)             ; Load current character's charisma into A
  CALL 53703              ; Update character's charisma as they tire (awake) or
                          ; regenerate (asleep)...
  LD (IX+3),A             ; ...
  INC HL                  ; Advance HL to next block of data
  BIT 7,(IX+6)            ; If current character is asleep...
  JR NZ,53661             ; ...then we have already moved into data for next
                          ; character, so skip ahead to 53661
  INC HL                  ; Else, we are now in same character's "asleep" data,
                          ; so need to advance HL by four bytes to get to next
                          ; character's data...
  INC HL                  ; ...
  INC HL                  ; ...
  INC HL                  ; ...
  ADD IX,DE               ; Advance IX by eight bytes to next character's stats
  DJNZ 53597              ; Loop back to 53597
  LD DE,8                 ; Load DE with 8
  LD IX,25028             ; Point IX to Gordon's current stats
  LD B,16                 ; Load B with 16 (16 characters) (see trivia)
  LD C,0                  ; Load C with zero (to denote first character,
                          ; Gordon)
  LD A,(IX+2)             ; Load current character's stamina into A
  AND 127                 ; If stamina (bits 0-6) is not zero...
  JR NZ,53689             ; ...then skip ahead to 53689
  SET 7,(IX+6)            ; Else send character to sleep
  JR 53697                ; Skip ahead to 53697
  CP 100                  ; If stamina is not 100...
  JR NZ,53697             ; ...then skip ahead to 53697
  RES 7,(IX+6)            ; Else wake character up
  ADD IX,DE               ; Advance IX to next character's stats
  INC C                   ; Increase C for next character
  DJNZ 53676              ; Loop back to 53676 for next character
  RET                     ; Return

; Update Characters' Stats as They Tire (Awake) or Regenerate (Asleep)
;
; Used by the routines at 29756, 31280, 33569, 53573 and 53585. Input:  A  A
; character's stat (strength, stamina, happiness or spell power) C An increment
; (while asleep) or decrement (while awake) for that stat Output: A  New value
; of stat
  PUSH AF                 ; Store AF (A = value of character's stat)
  AND 128                 ; Capture MSB in stat value and store in instruction
                          ; at 53728...
  LD (53729),A            ; ...
  POP AF                  ; Restore AF (A = value of character's stat)
  AND 127                 ; Discard MSB of stat value
  ADD A,C                 ; Add change value
  OR A                    ; Check Sign Flag
  JP P,53720              ; If sign flag reset (i.e. MSB of result is reset and
                          ; result is positive) then jump ahead to 53720
  XOR A                   ; else stat must have dropped below zero, so set stat
                          ; to zero (as it can't be less than 0)
  JR 53728                ; Skip ahead to 53728
  CP 100                  ; If new value of stat is less than or equal to
                          ; 100...
  JR Z,53728              ; ...then skip ahead to 53728...
  JR C,53728              ; ...
  LD A,100                ; ...else set stat to 100 (as it can't be greater
                          ; than 100)
; The operand of the instruction at 53728 represents bit 7 of the input value
; in A. This is modified by the instruction at 53706.
  OR 0                    ; Restore previously stored MSB state
  RET                     ; Return

; Move Character Whose Turn it is to Move, if Allowed
;
; Alternate characters move in opposite directions on alternate days.
  CALL 53871              ; Update index of character whose turn it is to be
                          ; updated and load into A
  LD E,6                  ; Point HL at this character's flags...
  CALL 33541              ; ...
  LD A,(HL)               ; ...and load flags into A
  AND 192                 ; If character is asleep, or character can't move...
  RET NZ                  ; ...then return
  LD E,2                  ; Point HL at Gordon's stamina (A=0)... (see trivia)
  CALL 33541              ; ...
  LD A,(HL)               ; ...and load into A
  BIT 7,A                 ; If Bit 7 of Gordon's stamina is set...
  RET NZ                  ; ...then return
  LD A,(23455)            ; Load BC with three times index of character whose
                          ; turn it is to be updated...
  LD C,A                  ; ...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD B,0                  ; ...
  LD HL,25244             ; Point HL at start of Table of Characters' Current
                          ; Positions at 25244
  ADD HL,BC               ; Add BC to HL as offset
  LD A,(23701)            ; If Magic Knight is not in the same room as this
                          ; character...
  CP (HL)                 ; ...
  JP NZ,53777             ; ...then skip ahead to 53777
  BIT 1,(IY+65)           ; If Characters Free to Move Flag is reset (IY =
                          ; 23610)...
  RET Z                   ; ...then return
  LD A,(23455)            ; Load B with index of character whose turn it is to
                          ; be updated...
  LD B,A                  ; ...
  LD A,(23457)            ; Load A with number of days left...
  ADD A,B                 ; ...and add index of character to be updated
  BIT 0,A                 ; If result is even...
  JP Z,53824              ; ...then skip ahead to 53824
; Move character left
  LD A,(HL)               ; Load A with character's current room
  PUSH HL                 ; Store HL (pointer to character's current room)
  LD HL,37022             ; Point HL to left exit value of first entry in Room
                          ; Connectivity Data Table
  CALL 53861              ; Get index of destination room for character and
                          ; load into A and instruction at 53812
  LD (53813),A            ; Load value into instruction at 53812 (see trivia)
  POP HL                  ; Restore HL (pointer to character's current room)
  INC HL                  ; Advance HL to character's x-coordinate
  LD A,(HL)               ; Load x-coordinate into A...
  DEC A                   ; ...and decrease
  CALL 53886              ; If character has a disallowed x-coordinate in the
                          ; "Barrier Room" then return to routine that called
                          ; this one
  OR A                    ; If character's x-coordinate is not zero...
  JP NZ,53859             ; ...then skip ahead to 53859
; The operand of the instruction at 53812 represents the character's
; destination room when moving left. This is modified by the instructions at
; 53798 and 53867.
  LD A,0                  ; Load B with character's destination room...
  LD B,A                  ; ...
  CP 255                  ; ...and if this is 255 (i.e. no room available)...
  RET Z                   ; ...then return
  LD A,29                 ; Set character's x-coordinate to 29 (right-hand side
                          ; of new room)...
  LD (HL),A               ; ...
  DEC HL                  ; Move HL back to character's room
  LD (HL),B               ; Set current room to new room index
  RET                     ; Return
; Move character right
  LD A,(HL)               ; Load A with character's current room
  PUSH HL                 ; Store HL (pointer to character's current room)
  LD HL,37023             ; Point HL to right exit value of first entry in Room
                          ; Connectivity Data Table
  CALL 53861              ; Get index of destination room for character and
                          ; load into A and instruction at 53812
  LD (53848),A            ; Load value into instruction at 53847
  POP HL                  ; Restore HL (pointer to character's current room)
  INC HL                  ; Advance HL to character's x-coordinate
  LD A,(HL)               ; Load x-coordinate into A...
  INC A                   ; ...and increase
  CALL 53886              ; If character has a disallowed x-coordinate in the
                          ; "Barrier Room" then return to routine that called
                          ; this one
  CP 30                   ; If character's x-coordinate is not 30...
  JP NZ,53859             ; ...then skip ahead to 53859
; The operand of the instruction at 53847 represents the character's
; destination room when moving right. This is modified by the instruction at
; 53832.
  LD A,0                  ; Load B with character's destination room...
  LD B,A                  ; ...
  CP 255                  ; ...and if this is 255 (i.e. no room available)...
  RET Z                   ; ...then return
  LD A,1                  ; Set character's x-coordinate to 1 (left-hand side
                          ; of new room)...
  LD (HL),A               ; ...
  DEC HL                  ; Move HL back to character's room
  LD (HL),B               ; Set current room to new room index
  RET                     ; Return
  LD (HL),A               ; Store updated x-coordinate for character
  RET                     ; Return

; Get Index of Destination Room for a Character and Load into A and Instruction
; at 53812
;
; Used by the routine at 53731. Input:  A  A room index HL  Points to one of
; the two bytes of the first entry of the Room Connectivity Data Table at 37022
; Output: A  New room index
  ADD A,A                 ; Load double room index into BC...
  LD C,A                  ; ...
  LD B,0                  ; ...
  ADD HL,BC               ; Add BC to HL as offset
  LD A,(HL)               ; Load A with room index at HL...
  LD (53813),A            ; ...and modify the instruction at 53812 with this
                          ; value
  RET                     ; Return

; Update Index of Character Whose Turn it is to be Updated
;
; Used by the routine at 53731. Output: A  Updated index of character whose
; turn it is to be updated
  LD A,(23455)            ; Increment index of character whose turn it is to be
                          ; updated...
  INC A                   ; ...
  LD (23455),A            ; ...
  CP 12                   ; If new character index is not 12...
  RET NZ                  ; ...then return
  XOR A                   ; Set new character index to 0, as there are only 12
                          ; characters...
  LD (23455),A            ; ...
  RET                     ; Return

; If Character has a Disallowed x-Coordinate in the "Barrier Room" then Return
; Twice
;
; Used by the routine at 53731. Input:  A  A character's x-coordinate HL
; Pointer to character's x-coordinate in Characters' Current Positions Table at
; 25244 Output: A  A character's x-coordinate (same as input) HL  Pointer to
; character's x-coordinate in Characters' Current Positions Table at 25244
; (same as input)
  PUSH HL                 ; Store HL (pointer to character's x-coordinate)
  PUSH AF                 ; Store AF (A = character's x-coordinate)
  LD E,A                  ; Load x-coordinate into A
  DEC HL                  ; Move HL back to character's current room
  LD A,(HL)               ; If character's room is not 9 (barrier room on
                          ; Murphy's Moon)...
  CP 9                    ; ...
  JP NZ,53922             ; ...then skip ahead to 53922
  LD A,(23403)            ; If Barriers Removed Flag is set...
  AND 1                   ; ...
  JP NZ,53922             ; ...then skip ahead to 53922
  LD HL,53929             ; Point HL at list of disallowed character
                          ; x-coordinates in barrier room (Murphy's Moon)
  LD A,E                  ; Load A with character's x-coordinate
  CP (HL)                 ; If character's x-coordinate is the same as the
                          ; current disallowed x-coordinate...
  JP Z,53925              ; ...then skip ahead to 53925
  EX AF,AF'               ; Swap AF and AF'
  LD A,(HL)               ; Load A with current x-coordinate entry...
  CP 255                  ; ...and if this is 255 (End Marker)...
  JR Z,53922              ; ...then skip ahead to 53922
  EX AF,AF'               ; Swap AF and AF'
  INC HL                  ; Advance HL to next x-coordinate entry
  JR 53908                ; Loop back to 53908
  POP AF                  ; Restore AF (A = character's x-coordinate)
  POP HL                  ; Restore HL (pointer to character's x-coordinate)
  RET                     ; Return
  POP AF                  ; Restore AF (A = character's x-coordinate)
  POP HL                  ; Restore HL (pointer to character's x-coordinate)
  POP AF                  ; Remove return address from top of stack...
  RET                     ; ...and return to routine that called the routine
                          ; that called this one

; List of Disallowed Character x-Coordinates in Barrier Room (Murphy's Moon)
  DEFB 12,13,14,15,16,17,18,255

; End Game Due to Running Out of Time
;
; Used by the routine at 53498.
  LD HL,45224             ; Point HL at "YOU RAN OUT OF TIME" text...
  LD (53949),HL           ; ...and store as operand in instruction at 53948
  POP AF                  ; Remove return address (call to this routine) from
                          ; top of stack
  CALL 54079              ; Restore all registers from the stack
  POP AF                  ; Remove return address (call to interrupt routine)
                          ; from top of stack
; The operand of the instruction at 53948 represents the address of the Game
; Over text to use. This is modified by the instruction at 53940.
  LD HL,0                 ; Restore address of "YOU RAN OUT OF TIME" text to HL
  EI                      ; Enable interrupts
  JP 55685                ; Jump to "Game over" window routine and return to
                          ; Control Selection Menu

; Characters' Rates of Stat Regeneration
;
; Stats are in order:
  DEFB 255,255,253,252,10,8,15,10 ; Gordon    (-1, -1, -3, -4, 10, 8, 15, 10)
  DEFB 250,255,255,255,5,3,4,1 ; Sarab     (-6, -1, -1, -1,  5, 3,  4, 1)
  DEFB 253,0,252,251,3,0,4,8 ; Klink     (-3,  0, -4, -5,  3, 0,  4, 8)
  DEFB 253,0,252,252,7,0,3,9 ; S3 E3     (-3,  0, -4, -4,  7, 0,  3, 9)
  DEFB 255,255,253,255,10,2,10,1 ; Hooper    (-1, -1, -3, -1, 10, 2, 10, 1)
  DEFB 253,255,252,250,8,4,4,8 ; Murphy    (-3, -1, -4, -6,  8, 4,  4, 8)
  DEFB 253,255,252,252,8,4,4,3 ; Sharon    (-3, -1, -4, -4,  8, 4,  4, 3)
  DEFB 253,255,252,252,8,4,4,3 ; Forbin    (-3, -1, -4, -4,  8, 4,  4, 3)
  DEFB 253,0,252,252,8,0,4,3 ; Derby IV  (-3,  0, -4, -4,  8, 0,  4, 3)
  DEFB 253,255,252,252,8,4,4,3 ; Swiftfoot (-3, -1, -4, -4,  8, 4,  4, 3)
  DEFB 253,255,252,252,8,4,4,3 ; Julie 8   (-3, -1, -4, -4,  8, 4,  4, 3)
  DEFB 253,255,252,252,8,4,4,3 ; Hectorr   (-3, -1, -4, -4,  8, 4,  4, 3)

; Store all Registers on the Stack
;
; Used by the routines at 33952 and 53479.
  EX (SP),HL              ; Place HL onto stack in place of top entry (the
                          ; address of the CALL to this routine is now in HL)
  PUSH DE                 ; Store registers AF, BC & DE...
  PUSH BC                 ; ...
  PUSH AF                 ; ...
  EX AF,AF'               ; Store shadow registers too...
  EXX                     ; ...
  PUSH HL                 ; ...
  PUSH DE                 ; ...
  PUSH BC                 ; ...
  PUSH AF                 ; ...
  EX AF,AF'               ; ...
  EXX                     ; ...
  PUSH IX                 ; Store IX
  PUSH IY                 ; Store IY
  PUSH HL                 ; Store HL (address of call to this routine)
  PUSH AF                 ; Store AF
  LD HL,23                ; Restore original value of HL (as switched with top
                          ; of stack at beginning of this routine)...
  ADD HL,SP               ; ...
  LD A,(HL)               ; ...
  DEC HL                  ; ...
  LD L,(HL)               ; ...
  LD H,A                  ; ...
  POP AF                  ; Restore AF
  RET                     ; Return

; Restore All Registers from the Stack
;
; Used by the routines at 33952, 53479 and 53937.
  POP HL                  ; Restore registers HL, IY & IX (HL has address of
                          ; call to this routine, i.e. 54079)...
  POP IY                  ; ...
  POP IX                  ; ...
  EX AF,AF'               ; Restore shadow registers too...
  EXX                     ; ...
  POP AF                  ; ...
  POP BC                  ; ...
  POP DE                  ; ...
  POP HL                  ; ...
  EX AF,AF'               ; ...
  EXX                     ; ...
  POP AF                  ; Restore AF, BC, DE...
  POP BC                  ; ...
  POP DE                  ; ...
  EX (SP),HL              ; Put HL (address of call to 54079) back on stack in
                          ; preparation for RET and take off original value of
                          ; HL
  RET                     ; Return

; Print text/graphic character in A and advance Bitmap Virtual Text Cursor
;
; Used by the routines at 28730, 28753, 32694, 35123, 36602, 54231, 54598 and
; 54647. Input:  A Index of character to print
  PUSH HL                 ; Store HL
  LD DE,64500             ; Point to (effective) start Character Set graphics
  ADD A,A                 ; Load index of character into HL and multiply by
                          ; 8...
  LD H,0                  ; ...
  LD L,A                  ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  ADD HL,DE               ; ...and add to DE to obtain memory location of
                          ; required character in the character set
  EX DE,HL                ; Swap values (DE now holds memory location of
                          ; character to print and HL holds 64500)
; The operand of the instruction at 54109 represents the address of the Bitmap
; Virtual Text Cursor. This is modified by the instructions at 27725, 27737,
; 27753, 27966, 28180, 28230, 35119, 35206, 35630, 36742, 54188, 54297, 54532
; and 54549.
  LD HL,0                 ; Load (video) memory location to start printing
                          ; character into HL
  LD B,8                  ; For eight bytes (i.e. full height of character)...
  LD A,(DE)               ; ...get graphic data from character set...
  LD (HL),A               ; ...and load into video memory...
  INC DE                  ; ...move to next pixel row in character set...
  INC H                   ; ...and move to next pixel row in video memory
  DJNZ 54114              ; Loop back to 54114
  CALL 54215              ; Update Attribute Virtual Text Cursor based upon
                          ; current Bitmap Virtual Text Cursor
  LD A,(23695)            ; Obtain attribute data stored previously (71 =
                          ; bright white)
  LD (HL),A               ; Apply attribute to character just printed
  CALL 54176              ; Advance Bitmap Virtual Text Cursor right by one
                          ; character
  POP HL                  ; Restore HL
  RET                     ; Return

; Move Virtual Cursor (Bitmap) to Display File for Coordinates x=C, y=B and
; Load Address into HL
;
; Used by the routines at 28833, 32694, 34990, 35123, 52596, 52635, 52717,
; 52820, 54598 and 54647. Input:  B  y-coordinate (characters) C x-coordinate
; (characters) Output: HL  Virtual Cursor (Bitmap) Display File address
  LD A,B                  ; Load y-coordinate into A
  AND 24                  ; AND 24 to determine which third of the bitmap
                          ; memory we are in (A = 0, 8 or 16. Can't be 24 as
                          ; this is greater than y-resolution in characters,
                          ; 0-23)
  ADD A,64                ; Load HL with bitmap Display File address of start
                          ; of appropriate third of display...
  LD H,A                  ; ...(16,384, 18,432 or 20,480)
  LD A,B                  ; Load y-coordinate back into A
  AND 7                   ; AND 7 to determine which of the 8 character rows
                          ; within the third we are interested in
  RRCA                    ; Multiply by 8 to get pixel row required...
  RRCA                    ; ...
  RRCA                    ; ...
  ADD A,C                 ; Add x-coordinate
  LD L,A                  ; Add to value currently in HL
  JR 54188                ; Store the updated address of Bitmap Virtual Text
                          ; Cursor and return

; Point HL at Terrain Interaction Data, or Attribute File address for Character
; Coordinates x=C, y=B
;
; The operand in the instruction at 54157 is usually 88 (corresponding to a
; Attribute File lookup). It is only changed to 94 (corresponding to a Terrain
; Interaction Data lookup) by the routine at 54162, and is returned to a value
; of 88 before that routine concludes. Input:  B  y-coordinate (chars) C
; x-coordinate (chars) Output: DE points to entry in data table with
; coordinates (C, 0) HL  points to entry in data table with coordinates (C, B)
  LD A,B                  ; Load y-coordinate into A
  ADD A,A                 ; Multiply this by 8...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; Copy 8 times y-coordinate into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Multiply by 4...
  ADD HL,HL               ; ...to give 32 times original y-coordinate in HL
; The operand of the instruction at 54157 determines whether we are dealing
; with the Attribute File (88), or the current Terrain Interaction Data (94).
; It is modified by the instructions at 54164 and 54172.
  LD D,88                 ; Point DE at start of data, plus x-coordinate offset
                          ; in C...
  LD E,C                  ; ...
  ADD HL,DE               ; Add 32 times y-coordinate as offset in HL
  RET                     ; Return

; Point HL at Terrain Interaction Data for Character Coordinates x=C, y=B
;
; Used by the routines at 27357, 27508, 27647, 29174 and 36104. Input:  B
; y-coordinate (chars) C x-coordinate (chars) Output: HL  points to entry in
; Terrain Interaction Data
  LD A,94                 ; Set most significant byte in Terrain Interaction
                          ; Data / Attribute File lookup routine to 94 (Terrain
                          ; Interaction Table)...
  LD (54158),A            ; ...
  CALL 54148              ; Point HL at Terrain Interaction Data for Character
                          ; Coordinates x=C, y=B
  LD A,88                 ; Set most significant byte in Terrain Interaction
                          ; Data / Attribute File lookup routine to 88,
                          ; (Attribute File)...
  LD (54158),A            ; ...
  RET                     ; Return

; Advance Bitmap Virtual Text Cursor right by one character
;
; Used by the routines at 36602 and 54097.
  LD HL,(54110)           ; Load HL with address of Bitmap Virtual Text
                          ; Cursor...
  INC HL                  ; ...and increase (for next character)
  LD A,L                  ; Load LSB of HL into A...
  OR A                    ; ...and check whether it is zero
  JR NZ,54188             ; If it is not zero (i.e. advancing down a character
                          ; row will not take us into a different third of
                          ; bitmap video memory) then skip ahead to 54188
  LD A,H                  ; Add 7 to MSB of video memory address...
  ADD A,7                 ; ...as advancing by one at 54179 took video memory
                          ; pointer back up to 2nd pixel row of the current
                          ; third of the display...
  LD H,A                  ; ...when in fact we need to move to top pixel row of
                          ; the NEXT third of the display (i.e. 7 x 32 x 8 = 7
                          ; x 256 bytes on from this!)
; This entry point is used by the routines at 54132, 54192, 54283 and 54333.
  LD (54110),HL           ; Store the updated address of Bitmap Virtual Text
                          ; Cursor
  RET                     ; Return

; Advance Bitmap Virtual Text Cursor to start of next character row
;
; Used by the routines at 36602 and 36731.
  LD HL,(54110)           ; Load HL with address of Bitmap Virtual Text Cursor
  LD A,L                  ; Get LSB of video memory address in A
  ADD A,32                ; Add 32 (i.e. move down one character row)
  JP C,54206              ; If we have encountered the bottom of the current
                          ; third of the display, then skip ahead to 54206
  AND 224                 ; Decrease to nearest multiple of 32 (i.e. start of a
                          ; character row)
  LD L,A                  ; Place modified address back into HL
  JR 54188                ; Store at 54110 and return
  AND 224                 ; Decrease to nearest multiple of 32 (i.e. start of a
                          ; character row)
  LD L,A                  ; Place modified address back into L
  LD A,H                  ; Load MSB of video memory address into A
  ADD A,8                 ; Increase by 8 (as we're moving one text row, or
                          ; EIGHT pixel rows down)
  LD H,A                  ; Place modified address back into HL
  JR 54188                ; Store at 54110 and return

; Update Attribute Virtual Text Cursor based upon current Bitmap Virtual Text
; Cursor
;
; Used by the routines at 34762, 36602, 36731 and 54097.
  LD HL,(54110)           ; Load HL with address of Bitmap Virtual Text Cursor
  LD A,H                  ; Load H into A...
  AND 31                  ; ...and cap at 31, to give screen third of interest
                          ; (H=0-7, top third; H=8-15, middle third; H=16-23,
                          ; bottom third)
  RRCA                    ; Divide by eight to get character row within the
                          ; third...
  RRCA                    ; ...
  RRCA                    ; ...
  ADD A,88                ; Add 22,528 to HL to move into attribute section of
                          ; video memory
  LD H,A                  ; L still contains offset of x characters, so points
                          ; to start of attributes for area where room name was
                          ; just printed
  LD (23498),HL           ; Store memory location for later use
  RET                     ; Return

; Draw a Run of Characters (e.g. Edge of Frame of a Window)
;
; Used by the routines at 27951, 28172, 35285, 35627 and 54505. Input:  HL
; Repeat count for printing character (e.g. width of window in characters minus
; 1)
  LD A,H                  ; Check whether remaining window's width is zero...
  OR L                    ; ...and if it is...
  RET Z                   ; ...then return without doing anything
; The operand of the instruction at 54234 represents the index of a character
; set character to draw. This is modified by the instructions at 27976, 28188,
; 35031, 35292, 35637 and 54537.
  LD A,0                  ; Else, load A with the character index
  CALL 54097              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  DEC HL                  ; Decrease remaining width
  JR 54231                ; Loop back to 54231

; Advance HL to Byte After First Zero From Address in HL Onwards
;
; Used by the routine at 30123. Input:  HL  Pointer to search starting point
; Output: HL  Pointer to byte after first zero at or after HL input
  PUSH BC                 ; Store BC
  LD BC,65535             ; Set range to 65535
  XOR A                   ; Load A (value to search for) to zero
  CPIR                    ; Advance HL to byte after first zero found
  POP BC                  ; Restore BC
  RET                     ; Return

; Point HL at Start of B-th Entry in List of Read-Texts of Readable Objects
;
; Used by the routine at 30968. Input:  B  Index of read-text required
  LD HL,40986             ; Point HL at start of List of Read-Texts of Readable
                          ; Objects
  JR 54269                ; Advance HL to B-th entry in list of zero-terminated
                          ; strings starting at HL and return

; Point HL at Start of B-th Entry in List of "COMMAND A CHARACTER" Commands at
; 39626
;
; Used by the routine at 30686.
  LD HL,39626             ; Point HL at first of the "COMMAND A CHARACTER"
                          ; commands (i.e. "GO TO SLEEP")
  JR 54269                ; Advance HL to B-th entry in list of zero-terminated
                          ; strings starting at HL and return

; Point HL at Start of B-th Entry in List of Starship Destination Names at
; 43031
;
; Used by the routine at 31688. Input:  B  Index of a location
  LD HL,43031             ; Point HL at start of Table of Starship Destination
                          ; Names
  JR 54269                ; Advance HL to B-th entry in list of zero-terminated
                          ; strings starting at HL and return

; Point HL at B-th Entry in Table of Object Names
;
; Used by the routines at 30145 and 33952. Input:  B  Index of required text
; string HL  (entry via 54269) address of start of a table of zero-terminated
; strings Output: HL  Points to string of index B (input)
  LD HL,42373             ; Point HL at start of Table of Object Names
; This entry point is used by the routines at 28172, 29756, 30145, 31041,
; 31188, 31688, 32895, 54251, 54256 and 54261.
  LD A,B                  ; Load string index into A
  OR A                    ; Return if index is zero...
  RET Z                   ; ...
  PUSH BC                 ; Store BC
  LD BC,65535             ; Load BC (loop counter) with 65535
  XOR A                   ; Set A to zero
  CPIR                    ; Advance HL to start of next zero-terminated string
  POP BC                  ; Store BC
  DJNZ 54272              ; Decrease B (remaining number of object names to
                          ; skip over) and loop back to 54272
  RET                     ; Return

; Print Text at DE (Command Summary) in Command Summary Window at Top of Screen
;
; Used by the routines at 29330, 29619, 29756, 30145, 30686, 31041, 31688,
; 32252, 32895, 33926 and 54322. Input:  DE  Points to command text
  PUSH DE                 ; Store DE (Pointer to command text to print)
  LD A,70                 ; Set ATTR T system variable to 70 (yellow INK, black
                          ; PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD HL,(54110)           ; Load HL with address of Bitmap Virtual Text Cursor
  EX (SP),HL              ; Swap registers so that HL points to text to be
                          ; printed, and (SP) i.e. PUSHed value) contains
                          ; Display File address to start printing character
  LD DE,(23703)           ; Load DE with new Display File address to print
                          ; character...
  LD (54110),DE           ; ...and update Bitmap Virtual Text Cursor with this
                          ; location
  PUSH HL                 ; Store HL (pointer to text to be printed)
  CALL 54377              ; Swap x- and y-coordinates of current window with
                          ; those of Command Summary Window in temporary
                          ; storage at 23426
  POP HL                  ; Restore HL (pointer to text to be printed)
  CALL 34762              ; Print text to screen
  CALL 54377              ; Restore x- and y-coordinates of current window from
                          ; temporary storage at 23426
  LD HL,(54110)           ; Load HL with new address in Bitmap Virtual Text
                          ; Cursor (i.e. after text just printed)...
  LD (23703),HL           ; ...and store back at 23703
  POP HL                  ; Restore HL (Display File address to start printing
                          ; character as swapped by instruction at 54292)
  JP 54188                ; Store the updated address of Bitmap Virtual Text
                          ; Cursor and return

; Print Command Summary Text (Text at DE, e.g. "COMMAND ") in Command Summary
; Window
;
; Used by the routines at 33952 and 34122. Input:  DE  Pointer to text to print
  LD A,D                  ; If DE is zero (i.e. no Command Summary Text)...
  OR E                    ; ...
  RET Z                   ; ...then return
  PUSH DE                 ; Store DE (Command Summary Text Pointer)
  CALL 54333              ; Print or update Command Summary Window at top of
                          ; screen
  POP DE                  ; Restore DE (Command Summary Text Pointer)...
  JP 54283                ; ...and print in Command Summary Window at top of
                          ; screen and return

; Print or Update Command Summary Window at Top of Screen
;
; Used by the routines at 29330, 29619, 30145, 31041, 31688, 32252, 32895 and
; 54322. The operand of the instruction at 54333 represents the index of the
; window being drawn. This is modified by the instructions at 35001 and 54371.
  LD A,0                  ; Load index of window being drawn into A
  PUSH AF                 ; Store AF (A = index of Current Window)
  LD HL,(54110)           ; Load HL with address of Bitmap Virtual Text
                          ; Cursor...
  PUSH HL                 ; ...and store
  CALL 54377              ; Store x- and y-coordinates of current window
                          ; temporarily at 23426
  LD A,1                  ; Draw Window 1 (Command Summary Window at top of
                          ; screen)...
  HALT                    ; ...and wait for interrupt...
  CALL 34990              ; ...
  LD HL,38354             ; Point HL to ("COMMAND") text...
  CALL 34762              ; ...and print to screen
  LD HL,(54110)           ; Load HL with address of Bitmap Virtual Text Cursor
  PUSH HL                 ; Store HL (address of Bitmap Virtual Text Cursor)
  CALL 27750              ; Print "KNIGHT-TYME" text at bottom of Command
                          ; Summary Window
  POP HL                  ; Restore HL (address of Bitmap Virtual Text Cursor)
  LD (23703),HL           ; Store this location as the location to print text
                          ; to in the Command Summary Window
  CALL 54377              ; Restore x- and y-coordinates of current window from
                          ; 23426
  POP HL                  ; Restore HL (address of Bitmap Virtual Text Cursor)
  POP AF                  ; Restore AF (A = index of Current Window)
  LD (54334),A            ; Restore index of Current Window to 54334 (was
                          ; updated to 1 by call at 54346)
  JP 54188                ; Store the updated address of Bitmap Virtual Text
                          ; Cursor and return

; Swap x- and y-coordinates of current window / graphic with values in
; temporary storage (at 23426)
;
; This routine is used when there are two windows being updated (e.g. Command
; Summary Window at top of screen, and "EXAMINE" window). It is used to keep
; track of the dimensions of two windows simultaneously
  LD HL,(23426)           ; Swap x- and y-coordinates of top-left of window /
                          ; graphic currently at 23493 with values in temporary
                          ; store at 23426...
  LD DE,(23493)           ; ...
  LD (23426),DE           ; ...
  LD (23493),HL           ; ...
  LD HL,(23428)           ; Swap x- and y-coordinates of bottom-right of window
                          ; / graphic currently at 23495 with values in
                          ; temporary store at 23428...
  LD DE,(23495)           ; ...
  LD (23428),DE           ; ...
  LD (23495),HL           ; ...
  RET                     ; Return

; Draw a Graphic with Lookup Index A, Width of 2 and Height of 2 at Character
; Coordinates (C, B)
;
; Used by the routines at 34627 and 36104. Input:  A  Index of graphic to draw
; in graphic data lookup table at 55950 B  y-coordinate (characters) for
; printing item C  x-coordinate (characters) for printing item
  LD DE,514               ; Load D and E with 2
  JR 54414                ; Draw a Graphic with Lookup Index A at Character
                          ; Coordinates (C, B) with width = 2 characters and
                          ; height = 2 characters and return

; Draw a Graphic with Lookup Index A at Character Coordinates (C, B)
;
; Used by the routines at 28390 and 30145. Input:  A  Index of graphic to draw
; in graphic data lookup table at 55950 B  y-coordinate (characters) for
; printing item C  x-coordinate (characters) for printing item D  (entry at
; 54414) Graphic height (characters) E  (entry at 54414) Graphic width
; (characters)
  LD DE,1026              ; Set D (height) to 4 and E to 2 (width)
; This entry point is used by the routines at 30145, 34990 and 54406.
  PUSH HL                 ; Store HL
  PUSH DE                 ; Store DE
  PUSH AF                 ; Store AF
  LD A,C                  ; Load x-coordinate to draw item into instruction at
                          ; 54477...
  LD (54478),A            ; ...
  LD A,B                  ; Multiply y-coordinate by 8...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; ...and load into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Double again (so now 16 times y-coordinate, as 8
                          ; pixels in a character block, and two bytes per
                          ; entry in data at 26240)
  LD DE,26240             ; Point DE at Table of Display File Addresses of
                          ; Start of Each Pixel Row
  ADD HL,DE               ; Advance by 16 times y-coordinate to point HL at
                          ; entry for start of item's current pixel row
  PUSH HL                 ; Transfer this value into IX...
  POP IX                  ; ...
  POP AF                  ; Restore A (graphic index of item to draw)...
  LD L,A                  ; ...and load into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Multiply by four (as there are two WORD entries for
                          ; each graphic in the table at 55950)...
  ADD HL,HL               ; ...
  LD BC,55950             ; Point BC at start of Graphics Data Lookup Table at
                          ; 55950...
  ADD HL,BC               ; ...and add offset to point to entry for item of
                          ; interest
  LD E,(HL)               ; Load graphic data address for this graphic into
                          ; DE...
  INC HL                  ; ...
  LD D,(HL)               ; ...
  INC HL                  ; ...
  CALL 55735              ; Load next value in table (address of graphic data
                          ; for this object's mask) into HL
  POP BC                  ; Restore BC (B = height, C = width)
  LD A,B                  ; Load height into A...
  ADD A,A                 ; ...and multiply by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  EX AF,AF'               ; Swap A and A'
  LD B,C                  ; Copy graphic width into B...
  LD A,C                  ; ...and A'...
  LD (54481),A            ; ...and modify instruction at 54480 with this value
                          ; also
  EX AF,AF'               ; Swap A and A'
  EX DE,HL                ; Swap DE (now pointer to object's mask graphic data)
                          ; and HL (now pointer to object's graphic data)
  EXX                     ; Switch registers
  LD C,A                  ; Load C with eight times graphic's height
  PUSH BC                 ; Store BC (C = remaining number of pixel rows to
                          ; draw, initially eight times graphic's height)
  LD L,(IX+0)             ; Load HL' with Display File address of start of
                          ; pixel row at object's y-coordinate...
  LD H,(IX+1)             ; ...
  LD B,0                  ; Set B' to zero
; The operand of the instruction at 54477 represents the x-coordinate at which
; to draw the item. This is modified by the instruction at 54418.
  LD C,0                  ; Set C' to x-coordinate of item
  ADD HL,BC               ; Add x-coordinate as offset to address of start of
                          ; pixel row in HL' (HL' now points at Display File
                          ; address to begin drawing)
; The operand of the instruction at 54480 represents the width of the graphic
; to draw. This is modified by the instruction at 54461.
  LD B,0                  ; Load B with graphic width
  EXX                     ; Switch registers
  LD A,(DE)               ; Load graphic data byte from graphic mask data into
                          ; A
  EXX                     ; Switch registers
  AND (HL)                ; Modify mask data by AND-ing with data already
                          ; present in Display File (to allow scenery in
                          ; background to show as set pixels are transparent)
  EXX                     ; Switch registers
  OR (HL)                 ; Modify modified mask data by OR-ing with object
                          ; graphic data byte from graphic data
  INC HL                  ; Advance HL to next byte in object graphic data
  INC DE                  ; Advance DE to next byte in object graphic mask data
  EXX                     ; Switch registers
  LD (HL),A               ; Load masked graphic data byte into Display File
  INC HL                  ; Advance HL to next byte in Display File
  DJNZ 54482              ; Loop back to 54482 for next column of object
                          ; graphic data
  INC IX                  ; Advance IX by two bytes to next address in Table of
                          ; Addresses of Starts of Pixel Rows...
  INC IX                  ; ...
  POP BC                  ; Restore BC (C = remaining number of pixel rows to
                          ; draw)
  DEC C                   ; Decrease remaining number pixel rows to draw
  JR NZ,54468             ; If not zero (i.e. still need to draw at least one
                          ; more pixel row of graphic data) then loop back to
                          ; 54468
  POP HL                  ; Restore HL
  RET                     ; Return

; Update Currently Selected Input Device
;
; Used by the routines at 26670 and 26884. Input:  A  Index of currently
; selected input device D  Index of previously selected input device (valid for
; call at 26729 only)
  LD B,A                  ; Load B with index of currently selected input
                          ; device...
  CP 1                    ; ...and if this is 1 (Kempston Joystick)...
  CALL Z,54564            ; ...then if Kempston Joystick is not present, revert
                          ; to previously selected input device
  LD A,B                  ; Load A with currently selected input device
  LD HL,53411             ; Point HL at start of Table of Start Addresses of
                          ; Input Device Reading Routines
  CALL 55730              ; Load HL with A-th entry from table (i.e. the
                          ; routine for the currently selected input device)...
  LD (54948),HL           ; ...and update jump (at 54947) in input reading
                          ; routine to this address
  LD A,(54560)            ; Load index of currently selected input device into
                          ; A
  ADD A,211               ; Add 211 (index in Common Words Table for first
                          ; "control method" string)
  LD (54562),A            ; Store as text code at 54561
  LD HL,18636             ; Load HL with Display File address corresponding to
                          ; (12, 14) (characters)...
  LD (54110),HL           ; ...and move Bitmap Virtual Text Cursor here
  LD A,32                 ; Set character to be repeated to 32 (SPACE)...
  LD (54235),A            ; ...
  LD HL,20                ; Load HL with 20 as we need to draw across 20
                          ; character blocks
  CALL 54231              ; Draw run of 20 SPACE characters (i.e. clear old
                          ; "CONTROL : ..." text)
  LD HL,18626             ; Load HL with Display File address corresponding to
                          ; (2, 14) (characters)...
  LD (54110),HL           ; ...and move Bitmap Virtual Text Cursor here
  LD HL,54561             ; Point HL at Current Control Text (Control Selection
                          ; Screen)
  CALL 34733              ; Print text at location HL to screen using full
                          ; screen width
  XOR A                   ; Set A to zero
  RET                     ; Return

; Index of Currently Selected Input Device
  DEFB 0

; Current Control Text (on Control Selection Screen)
  DEFM 188,212,0          ; CONTROL : KEMPSTON JOYSTICK

; If Kempston Joystick is Not Present then Revert to Previously Selected Input
; Device
;
; Used by the routine at 54505. Input:  B  Index of currently selected input
; device D  Index of previously selected input device Output: B  Index of
; currently selected input device if Kempston Joystick is present, otherwise
; index of previously selected input device
  IN A,(31)               ; Load A with current Kempston Joystick state
  AND 224                 ; If bits 5, 6 and 7 (i.e. unused bits) are reset,
                          ; indicating presence of Kempston Joystick...
  RET Z                   ; ...then return
  LD A,D                  ; Load A with index of previously selected input
                          ; device...
  LD (54560),A            ; ...set as currently selected input device...
  LD B,A                  ; ...and load into B
  RET                     ; Return

; If Keypress Was Enqueued then Return Index of Last Key Pressed, Else Wait for
; Keypress and Return Index
;
; Used by the routines at 31468 and 54647. Output: A  Index of key pressed The
; operand of the instruction at 54575 represents an enqueued keypress. This is
; modified by the instructions at 54593 and 54656.
  LD A,0                  ; Load A with enqueued key index...
  OR A                    ; ...and if not zero...
  JR NZ,54584             ; ...then skip ahead to 54584
  XOR A                   ; Clear last pressed key...
  LD (23560),A            ; ...
  HALT                    ; Wait for interrupt
  LD A,(23560)            ; Load last pressed key into A...
  OR A                    ; ...and if this is zero (i.e. no key pressed)...
  JR Z,54584              ; ...then loop back to 54584
  EX AF,AF'               ; Switch AF and AF'
  XOR A                   ; Set enqueued key index to zero...
  LD (54576),A            ; ...
  EX AF,AF'               ; Switch AF and AF'
  RET                     ; Return

; Print Current Control Keys to Screen
;
; Used by the routines at 26926 and 54647.
  LD HL,54894             ; Point HL at list of current keyboard control
                          ; characters
  LD BC,1541              ; Print LEFT key at (5, 6)...
  CALL 54631              ; ...
  LD BC,1554              ; Print RIGHT key at (18, 6)...
  CALL 54631              ; ...
  LD BC,2053              ; Print JUMP/UP key at (5, 8)...
  CALL 54631              ; ...
  LD BC,2066              ; Print DOWN key at (18, 8)...
  CALL 54631              ; ...
  LD BC,2565              ; Print MENU (FIRE) key at (5, 10)...
  JP 54631                ; ... (see trivia)
  PUSH HL                 ; Store HL (current position in list of current
                          ; keyboard control characters)
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  POP HL                  ; Restore HL (current position in Current Keyboard
                          ; Controls)
  LD A,(HL)               ; Load current keyboard control character into A
  INC HL                  ; Advance HL by one byte to next keyboard control
  CP 32                   ; If current keyboard control character is not 32
                          ; (SPACE)...
  JR NZ,54644             ; ...then skip ahead to 54644
  LD A,127                ; Load A with 127 (index of "SP" graphic in character
                          ; set)
  JP 54097                ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor and return

; Redefine Keyboard Controls
;
; Used by the routine at 26745.
  CALL 54598              ; Print current control keys to Screen
  CALL 54575              ; If keypress was enqueued then load A with index of
                          ; last key pressed, otherwise wait for keypress and
                          ; load A with index
  CP 13                   ; If key pressed was 13 (ENTER)...
  RET Z                   ; ...then return
  LD (54576),A            ; Set enqueued key index to index of key pressed
  LD B,5                  ; Load B with 5 (as there are five controls)
  LD HL,54894             ; Point HL at start of list of current keyboard
                          ; control characters
  LD (HL),0               ; Set current keyboard control character to zero
  INC HL                  ; Advance to next keyboard control character
  DJNZ 54664              ; Decrease B (remaining number of keyboard control
                          ; characters to clear) and loop back to 54664 if not
                          ; zero
  LD BC,1280              ; Load B with 5 and C with zero
  LD HL,54894             ; Point HL at start of list of current keyboard
                          ; control characters
  PUSH BC                 ; Store BC (B = remaining number of controls to
                          ; define, C = number of controls defined)
  PUSH HL                 ; Store HL (current position in List of Keyboard
                          ; Control Characters)
  LD A,C                  ; Load number of controls defined (0, 1, 2, 3 or 4)
                          ; into A
  AND 6                   ; Reset all but bits 1 and 2 (to give 0, 2 or 4)
  ADD A,6                 ; Add 6 (to give 6, 8 or 10, the y-coordinates in
                          ; characters of displayed keyboard controls)...
  LD B,A                  ; ...and load into B
  LD A,C                  ; Load A with number of controls defined (0, 1, 2, 3
                          ; or 4)
  AND 1                   ; Reset all but bit 0 (to give 0 or 1)
  PUSH AF                 ; Store AF (A = bit 0 of number of controls defined)
  ADD A,A                 ; Double A (to give 0 or 2)...
  LD C,A                  ; ...and load into C
  POP AF                  ; Restore AF (A = bit 0 of number of controls
                          ; defined)
  PUSH AF                 ; Store AF (A = bit 0 of number of controls defined)
  ADD A,C                 ; Add C to A (to give 0 or 3)
  ADD A,A                 ; Multiply A by four...
  ADD A,A                 ; ...to give 0 or 12...
  LD C,A                  ; ...and load into C
  POP AF                  ; Restore AF (A = bit 0 of number of controls
                          ; defined)
  ADD A,C                 ; Add value in C to A (to give 0 or 13)
  ADD A,5                 ; Add 5 (to give 5 or 18, the x-coordinates in
                          ; characters of displayed keyboard controls)...
  LD C,A                  ; ...and load into C
  PUSH BC                 ; Store BC (coordinates in characters of current
                          ; control being defined)
  CALL 54148              ; Load HL with Attribute File address for coordinates
                          ; (C, B)...
  LD A,(HL)               ; ...and set the FLASH Flag for this address...
  OR 128                  ; ...
  LD (HL),A               ; ...
  POP BC                  ; Restore BC (coordinates in characters of current
                          ; control being defined)
  PUSH BC                 ; Store BC (coordinates in characters of current
                          ; control being defined)
  CALL 54132              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  CALL 54575              ; If keypress was enqueued then load A with index of
                          ; last key pressed, otherwise wait for keypress and
                          ; load A with index
  CP 32                   ; If key pressed was SPACE...
  JP Z,54744              ; ...then skip ahead to 54744
  CP 48                   ; If index of key pressed is less than 48 (i.e. below
                          ; "0")...
  JP M,54708              ; ...then jump back to 54708 (i.e. wait for next key
                          ; press and try again)
  CP 91                   ; If index of key pressed is 91 or higher (i.e. above
                          ; "Z")...
  JP P,54708              ; ...then jump back to 54708 (i.e. wait for next key
                          ; press and try again)
  CP 58                   ; If index of key pressed is less than 58 (i.e. "9"
                          ; or below)...
  JP M,54744              ; ...then skip ahead to 54744
  CP 65                   ; If index of key pressed is 65 or higher (i.e. "A"
                          ; or above)...
  JP P,54744              ; ...then skip ahead to 54744
  JP 54708                ; Jump back to 54708 (i.e. wait for next key press
                          ; and try again)
  CALL 54876              ; Set Zero Flag if key pressed is already assigned to
                          ; a control, otherwise reset
  JP Z,54708              ; If key pressed is already assigned then jump back
                          ; to 54708 (i.e. wait for next key press and try
                          ; again)
  LD (23398),A            ; Store pressed key index at 23398
  CP 32                   ; If key was not SPACE...
  JR NZ,54759             ; ...then skip ahead to 54759
  LD A,127                ; Load A with 127 (index in character set of "SP" UDG
                          ; at 65516)
  CALL 54097              ; Print text character in A and advance Bitmap
                          ; Virtual Text Cursor
  POP BC                  ; Restore BC (coordinates in characters of current
                          ; control being defined)
  CALL 54148              ; Load HL with Attribute File address for coordinates
                          ; (C, B)...
  LD A,(HL)               ; ...and reset the FLASH Flag for this address...
  AND 127                 ; ...
  LD (HL),A               ; ...
  POP HL                  ; Restore HL (current position in List of Keyboard
                          ; Control Characters)
  LD A,(23398)            ; Load A with index of previously defined key...
  LD (HL),A               ; ...and store in List of Keyboard Control Characters
  INC HL                  ; Advance HL to next entry in List of Keyboard
                          ; Control Characters
  POP BC                  ; Restore BC (B = remaining number of controls to
                          ; define, C = number of controls defined)
  INC C                   ; Increase C (number of controls defined)
  DJNZ 54675              ; Decrease B (remaining number of controls to define)
                          ; and loop back to 54675 if not zero
  LD B,5                  ; Load B with 5 (as each keyboard half-row holds five
                          ; keys)
  LD HL,54953             ; Load HL with address of operand of instruction at
                          ; 54952 (MSB of "input address" for keyboard half-row
                          ; reading for LEFT)...
  LD (23398),HL           ; ...and store at 23398
  LD HL,54894             ; Point HL at start of list of current keyboard
                          ; control characters
  PUSH BC                 ; Store BC (B = remaining number of control keys to
                          ; check)
  PUSH HL                 ; Store HL (pointer to current position in list of
                          ; current keyboard control characters)
  LD IX,54902             ; Point IX at Lists of Characters on Each Keyboard
                          ; Half-Row
  LD A,(HL)               ; Load A with current keyboard control character
                          ; index
  LD C,0                  ; Set C (index in list of half-rows) to zero
  CP (IX+0)               ; If current keyboard control character index is the
                          ; same as the current character in keyboard half-row
                          ; groups...
  JR Z,54810              ; ...then skip ahead to 54810
  INC C                   ; Increase C (index in list of half-rows)
  INC IX                  ; Advance to next entry in list of half-rows
  JR 54800                ; Loop back to 54800
  LD A,C                  ; Load A with index of current control key in list of
                          ; half-rows
; At this point we know the index of the current key in the list of half-rows.
; We now need to identify which half row it belongs to.
  LD B,0                  ; Set B (keyboard half-row index) to zero
  SUB 5                   ; If index of key in current half-row is less than 5
                          ; (i.e. key is in the current half-row)...
  JP M,54821              ; ...then skip ahead to 54821
  INC B                   ; Increase B (keyboard half-row index)
  JR 54813                ; Loop back to 54813
; The MSB in the "input address" for the various keyboard half-rows obeys the
; progression (254, 253, 251, 247, 239, 223, 191, 127).
  LD A,B                  ; Load A with index of keyboard half-row containing
                          ; current key
  PUSH BC                 ; Store BC (B = index of keyboard half-row, C = index
                          ; of key in list of half-rows)
  INC B                   ; Increase B
  LD HL,128               ; Load HL with 128
  ADD HL,HL               ; Double value in HL
  DJNZ 54827              ; Decrease B (index of keyboard half-row) and loop
                          ; back to 54827 if not zero
; HL now contains the value (128 * 2^n) where n is the (1-based) index of the
; relevant half-row. H contains (2^m), where m is the (zero-based) index of the
; relevant half-row.
  LD A,255                ; Load A with 255
  SUB H                   ; Subtract H (2^m) to give MSB of input address for
                          ; relevant half-row
  LD HL,(23398)           ; Load HL with address of operand of instruction to
                          ; modify (54952)...
  LD (HL),A               ; ...and set operand to value in A
; Next we need to modify the second part of the opcode for the instruction that
; checks the set bit in A to determine which key in the half-row was pressed.
; The range of opcode values are:
; +--------------+-------------+
; | Opcode Value | Instruction |
; +--------------+-------------+
; | 71           | BIT 0,A     |
; | 79           | BIT 1,A     |
; | 87           | BIT 2,A     |
; | 95           | BIT 3,A     |
; | 103          | BIT 4,A     |
; +--------------+-------------+
  INC HL                  ; Advance HL by four bytes to operand of instruction
                          ; at 54956...
  INC HL                  ; ...
  INC HL                  ; ...
  INC HL                  ; ...
  LD (23398),HL           ; ...and store at 23398
  POP BC                  ; Restore BC (B = index of keyboard half-row, C =
                          ; index of key in list of half-rows)
  LD A,B                  ; Load B with five times index of keyboard half-row
                          ; (value currently in B)...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,B                 ; ...
  LD B,A                  ; ... (B is now 0, 5, 10, 15, 20, 25, 30 or 35)
  LD A,C                  ; Load A with index of key in list of half-rows...
  SUB B                   ; ...and subtract B (5 times index of half-row) to
                          ; give index of key within current half-row
  ADD A,A                 ; Multiply this index by 8 (opcode interval between
                          ; successive "BIT n,A" and "BIT n+1,A"
                          ; instructions)...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,71                ; ...and add 71 (opcode for "BIT 0,A")
  LD HL,(23398)           ; Load HL with address of operand / opcode for "BIT
                          ; n,A" instruction...
  LD (HL),A               ; ...and set "n" accordingly
  LD BC,5                 ; Advance HL by five bytes to operand of next "LD
                          ; B,x" instruction (i.e. MSB of "input address" for
                          ; next control)...
  ADD HL,BC               ; ...
  LD (23398),HL           ; ...and store at 23398
  POP HL                  ; Restore HL (pointer to current position in list of
                          ; current keyboard control characters, PUSHed at
                          ; 54792)
  INC HL                  ; Advance HL to next keyboard control character
  POP BC                  ; Store BC (B = remaining number of control keys to
                          ; check, PUSHed at 54791)
  DJNZ 54791              ; Decrease B (remaining number of control keys to
                          ; check) and loop back to 54791 for next control key
                          ; if not zero
  JP 55138                ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed and return

; Set Zero Flag if Key Pressed is Already Assigned to a Control, Otherwise
; Reset
;
; Used by the routine at 54647. Input:  A  Index of key pressed Output: F Zero
; Flag set if pressed key is already assigned, otherwise reset
  PUSH BC                 ; Store BC
  PUSH HL                 ; Store HL
  LD HL,54894             ; Point HL at start of list of current keyboard
                          ; control characters
  LD B,5                  ; Load B with 5 (as there are five controls to
                          ; process)
  CP (HL)                 ; If key pressed is the same as current control key
                          ; index...
  JR Z,54891              ; ...then skip ahead to 54891
  INC HL                  ; Advance HL to next entry in list of current
                          ; keyboard control characters
  DJNZ 54883              ; Decrease B (remaining number of control characters
                          ; to process) and loop back to 54883 if not zero
  CP 0                    ; Reset Zero Flag
  POP HL                  ; Restore HL
  POP BC                  ; Restore BC
  RET                     ; Return

; Current Keyboard Controls
  DEFB 78                 ; Left
  DEFB 77                 ; Right
  DEFB 65                 ; Jump / Up
  DEFB 90                 ; Down
  DEFB 32                 ; Menu (Fire)
  DEFB 32,32,32           ; Unused

; Lists of Characters on Each Keyboard Half-Row
  DEFM 45,"ZXCV"          ; (00) - IN 65278 (B = 254, C = 254)
  DEFM "ASDFG"            ; (01) - IN 65022 (B = 253, C = 254)
  DEFM "QWERT"            ; (02) - IN 64510 (B = 251, C = 254)
  DEFM "12345"            ; (03) - IN 63486 (B = 247, C = 254)
  DEFM "09876"            ; (04) - IN 61438 (B = 239, C = 254)
  DEFM "POIUY"            ; (05) - IN 57342 (B = 223, C = 254)
  DEFM 45,"LKJH"          ; (06) - IN 49150 (B = 191, C = 254)
  DEFM " ",45,"MNB"       ; (07) - IN 32766 (B = 127, C = 254)

; Capture Keyboard Input, or Jump to Joystick Reading Routine, Loading Result
; into A
;
; Used by the routines at 27136, 32694, 35296, 35386, 55138 and 55768. Output:
; A  Stored keypress (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD HL,23487             ; Point HL at input control flags and reset all
  LD (HL),0               ; ...
; The operand of the instruction at 54947 represents the start address of the
; input reading routine for the currently selected input device. This is
; modified by the instruction at 54518.
  JP 54950                ; Jump to appropriate keyboard / joystick reading
                          ; routine

; Capture Keyboard Input
;
; Used by the routine at 54942. Output: A  Stored keypress (bits: 0=LEFT,
; 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD C,254                ; Load C with 254 (as all keyboard half-row "input
                          ; addresses" have C = 254)
; The operand of the instruction at 54952 represents the MSB of the "input
; address" to use in reading the keyboard for the currently defined LEFT key.
; This is modified by the routine at 54647.
  LD B,127                ; Load B with MSB of "input address"
  IN A,(C)                ; Read keyboard
; The operand of the instruction at 54956 represents the index of the bit to
; use in reading the keyboard. It is modified by the routine at 54647.
  BIT 3,A                 ; "N" key pressed so...
  CALL Z,55100            ; ...store a LEFT input from control device
  LD B,127                ; Load B with MSB of "input address"
  IN A,(C)                ; Read keyboard
  BIT 2,A                 ; "M" key pressed so...
  CALL Z,55103            ; ...store a RIGHT input from control device
  LD B,253                ; IN 65022 reads the half row A to G...
  IN A,(C)                ; Read keyboard
  BIT 0,A                 ; "A" key pressed so...
  CALL Z,55106            ; ...store an UP input from control device
  LD B,254                ; IN 65278 reads the half row CAPS SHIFT to V
  IN A,(C)                ; Read keyboard
  BIT 1,A                 ; "Z" key pressed so...
  CALL Z,55109            ; ...store a DOWN input from control device
  LD B,127                ; IN 32766 reads the half row SPACE to B
  IN A,(C)                ; Read keyboard
  BIT 0,A                 ; SPACE bar pressed so...
  CALL Z,55112            ; ...store a FIRE input from control device
  LD A,(HL)               ; Load stored input into A
  RET                     ; Return

; Capture Kempston Joystick Input Output: A  Stored keypress (bits: 0=LEFT,
; 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD C,31                 ; Load 31 (Kempston port number) into A
  IN A,(C)                ; Read byte from port 31 (i.e. read state of
                          ; joystick)
  BIT 0,A                 ; If joystick moved right...
  CALL NZ,55103           ; ...store a RIGHT input from control device
  BIT 1,A                 ; If joystick moved left...
  CALL NZ,55100           ; ...store a LEFT input from control device
  BIT 2,A                 ; If joystick moved down...
  CALL NZ,55109           ; ...store a DOWN input from control device
  BIT 3,A                 ; If joystick moved up...
  CALL NZ,55106           ; ...store an UP input from control device
  BIT 4,A                 ; If fire button pressed...
  CALL NZ,55112           ; ...store a FIRE input from control device
  LD A,(HL)               ; Return stored joystick movement in A
  RET                     ; Return

; Capture Cursor Joystick Input Output: A  Stored keypress (bits: 0=LEFT,
; 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD C,254                ; IN 63486 reads the half row 1 to 5
  LD B,247                ; ...
  IN A,(C)                ; Read keyboard/joystick
  BIT 4,A                 ; If joystick moved left ("5" key pressed)...
  CALL Z,55100            ; ...store a LEFT input from control device
  LD B,239                ; IN 61438 reads the half row O to 6
  IN A,(C)                ; Read keyboard/joystick
  BIT 2,A                 ; If joystick moved right ("8" key pressed)...
  CALL Z,55103            ; ...store a RIGHT input from control device
  BIT 4,A                 ; If joystick moved down ("6" key pressed)...
  CALL Z,55109            ; ...store a DOWN input from control device
  BIT 3,A                 ; If joystick moved up ("7" key pressed)...
  CALL Z,55106            ; ...store an UP input from control device
  BIT 0,A                 ; If fire button pressed ("0" key pressed)...
  CALL Z,55112            ; ...store a FIRE input from control device
  LD A,(HL)               ; Return stored joystick movement in A
  RET                     ; Return

; Capture Sinclair Joystick 1 Input Output: A  Stored keypress (bits: 0=LEFT,
; 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD C,254                ; IN 61438 reads the half row O to 6
  LD B,239                ; ...
  IN A,(C)                ; ...
  BIT 4,A                 ; If joystick moved left ("6" key pressed)...
  CALL Z,55100            ; ...store a LEFT input from control device
  BIT 3,A                 ; If joystick moved right ("7" key pressed)...
  CALL Z,55103            ; ...store a RIGHT input from control device
  BIT 2,A                 ; If joystick moved down ("8" key pressed)...
  CALL Z,55109            ; ...store a DOWN input from control device
  BIT 1,A                 ; If joystick moved down ("9" key pressed)...
  CALL Z,55106            ; ...store an UP input from control device
  BIT 0,A                 ; If fire button pressed ("0" key pressed)...
  CALL Z,55112            ; ...store a FIRE input from control device
  LD A,(HL)               ; Return stored joystick movement in A
  RET                     ; Return

; Store a LEFT Input from Control Device
;
; Used by the routines at 54950, 54999, 55030 and 55067. Input:  HL Pointer to
; Input Control Flags (23487)
  SET 0,(HL)              ; Set Left Pressed Flag
  RET                     ; Return

; Store a RIGHT Input from Control Device
;
; Used by the routines at 54950, 54999, 55030 and 55067. Input:  HL Pointer to
; Input Control Flags (23487)
  SET 1,(HL)              ; Set Right Pressed Flag
  RET                     ; Return

; Store an UP Input from Control Device
;
; Used by the routines at 54950, 54999, 55030 and 55067. Input:  HL Pointer to
; Input Control Flags (23487)
  SET 2,(HL)              ; Set Up Pressed Flag
  RET                     ; Return

; Store a DOWN Input from Control Device
;
; Used by the routines at 54950, 54999, 55030 and 55067. Input:  HL Pointer to
; Input Control Flags (23487)
  SET 3,(HL)              ; Set Down Pressed Flag
  RET                     ; Return

; Store a FIRE Input from Control Device
;
; Used by the routines at 54950, 54999, 55030 and 55067. Input:  HL Pointer to
; Input Control Flags (23487)
  SET 4,(HL)              ; Set Fire Pressed Flag
  RET                     ; Return

; Display Execute / Reject Command Window and Return if Execute Chosen, Else
; Exit to Main Game Loop
;
; Used by the routines at 29330, 29488, 29619, 29756, 30145, 30686, 30968,
; 31041, 31257, 31537, 31688, 32252 and 32895.
  CALL 35739              ; Play Hiss-Type Sound
  LD A,11                 ; Draw "EXECUTE / REJECT COMMAND" Window...
  CALL 34982              ; ...
  LD HL,38329             ; Point to "EXECUTE COMMAND..." text...
  CALL 34762              ; ...and print to screen
  CALL 35296              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index...
  OR A                    ; ...and if this is 0 (i.e. Execute Command)...
  RET Z                   ; ...then return
  POP HL                  ; Remove return address from stack
  JP 29482                ; Set Magic Knight's available action flags, validate
                          ; I.D. Card if appropriate and jump to start of Main
                          ; Game Loop

; Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
;
; Used by the routines at 26745, 26855, 26926, 27762, 28506, 28554, 29330,
; 32252, 33338, 33834, 34122, 34265, 54647, 55364 and 55685.
  CALL 35739              ; Play Hiss-Type Sound
  LD A,14                 ; Draw Window 14 ("PRESS FIRE TO CONTINUE")...
  CALL 34990              ; ...
  LD HL,38309             ; Point HL at "PRESS FIRE TO CONTINUE" text string...
  CALL 34762              ; ...and print to screen
  CALL 54942              ; Capture keyboard or joystick input loading result
                          ; into A
  BIT 4,A                 ; If bit 4 (Fire Button Flag) is not set...
  JR Z,55152              ; ...then loop back to 55152
  CALL 35386              ; Wait for Fire Button / Key to be Released
  JP 35690                ; Play upward scale sound and return

; Display "YOUR HANDS ARE FULL" Window (13), Wait for Fire to be Pressed then
; Jump to Main Game Loop
;
; Used by the routines at 29330, 29619 and 31537.
  LD HL,38868             ; Point HL at "YOUR HANDS ARE FULL" text
  JR 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "YOU ARE WEARING TOO MUCH" Window (13), Wait for Fire to be Pressed
; then Jump to Main Game Loop
;
; Used by the routine at 31537. Input:  HL  (Entry at 55173 only) Text to print
; in window
  LD HL,41860             ; Point HL at "YOU ARE WEARING TOO MUCH" text
; This entry point is used by the routines at 33100, 33140, 33290, 33304,
; 33318, 33332, 33448, 33462, 33468, 55165, 55177, 55182, 55187, 55192, 55197,
; 55202, 55207, 55212, 55217 and 55222.
  CALL 55364              ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop...

; Data block at 55176
  DEFB 13                 ; ...

; Display "THE [object] IS TOO HEAVY FOR YOU" Window (13), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routines at 29330 and 29619.
  LD HL,38882             ; Point HL at "THE [name of current object] IS TOO
                          ; HEAVY FOR YOU" text
  JR 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "YOU CANNOT WEAR THAT" Window (13), Wait for Fire to be Pressed then
; Jump to Main Game Loop
;
; Used by the routine at 31537.
  LD HL,41876             ; Point HL at "YOU CANNOT WEAR THAT" text
  JR 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "THERE IS NOTHING NEAR ENOUGH" Window (13), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routine at 29330.
  LD HL,38850             ; Point HL at "THERE IS NOTHING NEAR ENOUGH" text
  JR 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "THERE IS NOTHING IN THIS ROOM" Window (13), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routine at 29330.
  LD HL,38836             ; Point HL at "THERE IS NOTHING IN THIS ROOM" text
  JR 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "YOU CANNOT DROP THE [object]" Window (13), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routine at 29488.
  LD HL,38921             ; Point HL at "YOU CANNOT DROP THE [name of current
                          ; object]" text
  JR 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character]'S HANDS ARE EMPTY" Window (13), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routine at 29619.
  LD HL,39030             ; Point HL at "[Name of Current Character]'S HANDS
                          ; ARE EMPTY" text
  JR 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] WANTS TO KEEP THE [Object]" Window (13), Wait for Fire
; to be Pressed then Jump to Main Game Loop
;
; Used by the routine at 29619.
  LD HL,39046             ; Point HL at "[Name of Current Character] WANTS TO
                          ; KEEP THE [name of Current Object]" text
  JR 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character]'S HANDS ARE FULL" Window (13), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routine at 29756.
  LD HL,39085             ; Point HL at "[Name of Current Character]'S HANDS
                          ; ARE FULL" text
  JR 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] IS NOT STRONG ENOUGH" Window (13), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routine at 29756.
  LD HL,39100             ; Point HL at "[Name of Current Character] IS NOT
                          ; STRONG ENOUGH" text
  JR 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] DOES NOT WANT THE [Object]" Window (13), Wait for Fire
; to be Pressed then Jump to Main Game Loop
;
; Used by the routine at 29756.
  LD HL,39120             ; Point HL at "[Name of Current Character] DOES NOT
                          ; WANT THE [name of Current Object]" text
  JR 55173                ; Display Window 13 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] IS ALREADY ASLEEP" Window (29), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routine at 30810.
  LD HL,39827             ; Point HL at "[Name of Current Character] IS ALREADY
                          ; ASLEEP" text
  JR 55308                ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] IS TOO WAKEFUL TO SLEEP" Window (29), Wait for Fire to
; be Pressed then Jump to Main Game Loop
;
; Used by the routine at 30810.
  LD HL,39838             ; Point HL at "[Name of Current Character] IS TOO
                          ; WAKEFUL TO SLEEP" text
  JR 55308                ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] DOES NOT WANT TO BE COMMANDED BY YOU" Window (29), Wait
; for Fire to be Pressed then Jump to Main Game Loop
;
; Used by the routine at 33558.
  LD HL,39798             ; Point HL at "[Name of Current Character] DOES NOT
                          ; WANT TO BE COMMANDED BY YOU" text
  JR 55308                ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] IS ALREADY AWAKE" Window (29), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routine at 30842.
  LD HL,39877             ; Point HL at "[Name of Current Character] IS ALREADY
                          ; AWAKE" text
  JR 55308                ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] IS TOO TIRED TO WAKE UP" Window (29), Wait for Fire to
; be Pressed then Jump to Main Game Loop
;
; Used by the routine at 30842.
  LD HL,39892             ; Point HL at "[Name of Current Character] IS TOO
                          ; TIRED TO WAKE UP" text
  JR 55308                ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] CANNOT HELP YOU" Window (29), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routines at 30874, 33100, 33140, 33170, 33290, 33304, 33318,
; 33338 and 33448.
  LD HL,42166             ; Point HL at "[Name of Current Character] CANNOT
                          ; HELP YOU " text
  JR 55308                ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] IS TOO TIRED TO HELP YOU" Window (29), Wait for Fire to
; be Pressed then Jump to Main Game Loop
;
; Used by the routine at 30874.
  LD HL,39928             ; Point HL at "[Name of Current Character] IS TOO
                          ; TIRED TO HELP YOU" text
  JR 55308                ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "THERE ARE NO BARRIERS TO BE REMOVED HERE." Window (29), Wait for
; Fire to be Pressed then Jump to Main Game Loop
;
; Used by the routine at 31122.
  LD HL,46531             ; Point HL at "THERE ARE NO BARRIERS TO BE REMOVED
                          ; HERE." text
  JR 55308                ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "YOU CANNOT EXAMINE THE USS PISCES IF..." Window (29), Wait for Fire
; to be Pressed then Jump to Main Game Loop
;
; Used by the routine at 30145.
  LD HL,39526             ; Point HL at "YOU CANNOT EXAMINE THE USS PISCES
                          ; IF..." text
  JR 55308                ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "YOU HAVE ARRIVED AT X.Y.Z." Window (17), Wait for Fire to be Pressed
; then Jump to Main Game Loop
;
; Used by the routine at 32252.
  LD HL,42171             ; Point HL at "YOU HAVE ARRIVED AT X.Y.Z." text
  JR 55287                ; Display Window 17 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop...

; Display "THE STARSHIP HAS ARRIVED AT [Starship Location]" Window (12), Wait
; for Fire to be Pressed then Jump to Main Game Loop
;
; Used by the routine at 31688.
  LD HL,41909             ; Point HL at "THE STARSHIP HAS ARRIVED AT [name of
                          ; Current Starship Location]" text
  JR 55294                ; Display Window 12 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "THERE IS NO WRITING FOR ME TO READ" Window (12), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routine at 30968.
  LD HL,40962             ; Point HL at "THERE IS NO WRITING FOR ME TO READ"
                          ; text...
  JR 55294                ; Display Window 12 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display Window 17 with Text at HL, Wait for Fire to be Pressed then Jump to
; Main Game Loop
;
; Used by the routine at 55272. Input:  HL  Text to print in window
  CALL 55364              ; Display Window 17 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop...

; Data block at 55290
  DEFB 17                 ; ...

; Display "GORDON AND SARAB ARE BOTH ASLEEP" Window (12), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routines at 31688 and 32895. Input:  HL  (Entry at 55294 only)
; Text to print in window
  LD HL,42348             ; Point HL at "GORDON AND SARAB ARE BOTH ASLEEP" text
; This entry point is used by the routines at 55277, 55282, 55298, 55303,
; 55312, 55317, 55322 and 55327.
  CALL 55364              ; Display Window 12 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop...

; Data block at 55297
  DEFB 12                 ; ...

; Display "THERE IS NOBODY WITHIN SUB-SPACE COMMUNICATOR RANGE" Window (12),
; Wait for Fire to be Pressed then Jump to Main Game Loop
;
; Used by the routine at 32895.
  LD HL,42310             ; Point HL at "THERE IS NOBODY WITHIN SUB-SPACE
                          ; COMMUNICATOR RANGE" text
  JR 55294                ; Display Window 12 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] HEARS A VOICE AND IGNORES IT" Window (12), Wait for Fire
; to be Pressed then Jump to Main Game Loop
;
; Used by the routine at 30686.
  LD HL,39646             ; Point HL at "[Name of Current Character] HEARS A
                          ; VOICE AND IGNORES IT" text
  JR 55294                ; Display Window 12 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display Window 29 with Text at HL, Wait for Fire to be Pressed then Jump to
; Main Game Loop
;
; Used by the routines at 55227, 55232, 55237, 55242, 55247, 55252, 55257,
; 55262, 55267, 55344, 55349, 55354 and 55359. Input:  HL Text to print in
; window
  CALL 55364              ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop...

; Data block at 55311
  DEFB 29                 ; ...

; Display "[Character] DOES NOT RECOGNISE YOUR AUTHORITY" Window (12), Wait for
; Fire to be Pressed then Jump to Main Game Loop
;
; Used by the routine at 30686.
  LD HL,39674             ; Point HL at "[Name of Current Character] DOES NOT
                          ; RECOGNISE YOUR AUTHORITY" text
  JR 55294                ; Display Window 12 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] DOES NOT LIKE STARFLEET SO HE IGNORES YOU" Window (12),
; Wait for Fire to be Pressed then Jump to Main Game Loop
;
; Used by the routine at 30686.
  LD HL,39708             ; Point HL at "[Name of Current Character] DOES NOT
                          ; LIKE STARFLEET SO HE IGNORES YOU " text
  JR 55294                ; Display Window 12 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] HEARS A MUFFLED VOICE..." Window (12), Wait for Fire to
; be Pressed then Jump to Main Game Loop
;
; Used by the routine at 30686.
  LD HL,39741             ; Point HL at "[Name of Current Character] HEARS A
                          ; MUFFLED VOICE..." text
  JR 55294                ; Display Window 12 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "GORDON AND SARAB CANNOT UNDERSTAND YOU" Window (12), Wait for Fire
; to be Pressed then Jump to Main Game Loop
;
; Used by the routines at 31688 and 32895.
  LD HL,42358             ; Point HL at "GORDON AND SARAB CANNOT UNDERSTAND
                          ; YOU" text
  JR 55294                ; Display Window 12 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "YOU CANNOT CAST THAT SPELL NOW..." Window (10), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routines at 31122, 31188 and 31312. Input:  HL  (Entry at 55335
; only) Text to print in window
  LD HL,41750             ; Point HL at "YOU CANNOT CAST THAT SPELL NOW..."
                          ; text
; This entry point is used by the routine at 55339.
  CALL 55364              ; Display Window 10 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop...

; Data block at 55338
  DEFB 10                 ; ...

; Display "[Character] HAS TAKEN YOUR PHOTO" Window (10), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routine at 33170.
  LD HL,40307             ; Point HL at "[Name of Current Character] HAS TAKEN
                          ; YOUR PHOTO" text
  JR 55335                ; Display Window 10 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "THE BARRIER HAS FADED INTO NOTHINGNESS" Window (29), Wait for Fire
; to be Pressed then Jump to Main Game Loop
;
; Used by the routine at 31122.
  LD HL,46566             ; Point HL at "THE BARRIER HAS FADED INTO
                          ; NOTHINGNESS" text
  JR 55308                ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "YOU CANNOT DROP THE [Object] HERE" Window (29), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routine at 29488.
  LD HL,38931             ; Point HL at "YOU CANNOT DROP THE [name of current
                          ; object] HERE " text
  JR 55308                ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] HAS GONE TO SLEEP" Window (29), Wait for Fire to be
; Pressed then Jump to Main Game Loop
;
; Used by the routine at 30810.
  LD HL,39861             ; Point HL at "[Name of Current Character] HAS GONE
                          ; TO SLEEP" text
  JR 55308                ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] HAS WOKEN UP" Window (29), Wait for Fire to be Pressed
; then Jump to Main Game Loop
;
; Used by the routine at 30842.
  LD HL,39915             ; Point HL at "[Name of Current Character] HAS WOKEN
                          ; UP" text
  JR 55308                ; Display Window 29 with text at HL, wait for fire to
                          ; be pressed then jump to Main Game Loop

; Display an Information Window with Text at HL, Wait for Fire to be Pressed
; then Jump to Main Game Loop
;
; This routine is CALLed by the instructions at 31025, 55173, 55287, 55294,
; 55308 and 55335. Immediately after each of these calls is a byte of data
; representing the index of the window to draw. This data is read in this
; routine by loading the RETurn address (where the data is held) into DE and
; then performing a LD A,(DE). Input:  HL  Points to text to print in the
; window
  POP DE                  ; Remove value on top of stack, as we are not
                          ; RETurning to this address, but reading data from it
  LD A,(DE)               ; Load A with window index data...
  LD (55387),A            ; ...and modify instruction at 55386 with this index
  PUSH HL                 ; Store HL (pointer to text to print)
  LD L,A                  ; Load eight times window index into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  LD DE,37091             ; Point DE at y-coordinate of top of window in first
                          ; entry of Window Data table at 37089...
  ADD HL,DE               ; ...and add HL as offset in HL
  EX DE,HL                ; Swap DE (now points to y-coordinate of top of
                          ; required window) and HL (now points to first entry
                          ; in Window Data table)
  POP HL                  ; Restore HL (pointer to text to print)
  CALL 33774              ; Adjust height of window to accommodate text
  PUSH HL                 ; Store HL (pointer to start of text data)
; The operand of the instruction at 55386 represents a window index. This is
; modified by the instruction at 55366.
  LD A,0                  ; Draw window with index specified in data
                          ; previously...
  CALL 34990              ; ...
  POP HL                  ; Restore HL (pointer to start of text data)
  CALL 34762              ; Print text to screen
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for fire to be pressed
  JP 29482                ; Set Magic Knight's available action flags, validate
                          ; I.D. Card if appropriate and jump to start of Main
                          ; Game Loop

; Scroll a Region of the Display File Up a Pixel Row Without Wrapping
;
; Used by the routines at 32124 and 35397.
  LD HL,55407             ; Load HL with address of routine at 55407 (return)
  JP 55470                ; Jump to 55470 (scroll a region of the Display File
                          ; up a pixel row then return)

; Do Nothing (Return)
;
; Used by the routines at 55470 and 55559.
  RET                     ; Return

; Scroll a Region of the Display File Up a Pixel Row With Wrapping
;
; Used by the routine at 32694.
  LD HL,55414             ; Load HL with address of routine at 55414 (restore
                          ; copied bitmap data from top of region to scroll to
                          ; bottom of region to scroll)
  JP 55470                ; Jump to 55470 (scroll a region of the Display File
                          ; up a pixel row then return)

; Restore Copied Bitmap Data from Top of Region to Scroll to Bottom of Region
; to Scroll
;
; (See trivia) Input:  B  Width of region to scroll (characters) HL  Points to
; bottom pixel row (left-most character) of region to scroll
  LD DE,23296             ; Point DE at copied bitmap data at 23296
  EX DE,HL                ; Swap DE (now points to bottom pixel row in region
                          ; to scroll) and HL (now points to copied bitmap data
                          ; at 23296)
  LDIR                    ; Copy previously stored bitmap data into bottom
                          ; pixel row of region to scroll
  RET                     ; Return

; Unused routine
;
; See trivia and functionally identical routine at 55455.
  LD A,255
  XOR (HL)
  LD (HL),A
  INC HL
  DJNZ 55421
  POP HL
  LD DE,23296
  EX DE,HL
  LDIR
  RET

; Scroll a Region of the Display File Down a Pixel Row Without Wrapping
;
; Used by the routines at 32065 and 35459.
  LD HL,55407             ; Load HL with address of routine at 55407 (return)
  JP 55559                ; Jump to 55559 (scroll a region of the Display File
                          ; down a pixel row then return)

; Scroll a Region of the Display File Down a Pixel Row With Wrapping
;
; Used by the routine at 32694.
  LD HL,55448             ; Load HL with address of routine at 55448 (restore
                          ; copied bitmap data from bottom of region to scroll
                          ; to top of region to scroll)
  JP 55559                ; Jump to 55559 (scroll a region of the Display File
                          ; down a pixel row then return)

; Restore Copied Bitmap Data from Bottom of Region to Scroll to Top of Region
; to Scroll
;
; (See trivia) Input:  B  Width of region to scroll (characters) HL  Points to
; top pixel row (left-most character) of region to scroll
  LD DE,23296             ; Point DE at copied bitmap data at 23296
  EX DE,HL                ; Swap DE (now points to bottom pixel row in region
                          ; to scroll) and HL (now points to copied bitmap data
                          ; at 23296)
  LDIR                    ; Copy previously stored bitmap data into bottom
                          ; pixel row of region to scroll
  RET                     ; Return

; Unused routine
;
; See trivia and functionally identical routine at 55421.
  LD A,255
  XOR (HL)
  LD (HL),A
  INC HL
  DJNZ 55455
  POP HL
  LD DE,23296
  EX DE,HL
  LDIR
  RET

; Scroll a Region of the Display File Up a Pixel Row
;
; Used by the routines at 55401 and 55408. Input:  HL  Address to jump to at
; the end of this routine (instruction at 55556)
  LD (55557),HL           ; Modify jump (at 55556) destination to address
                          ; stored in HL
  LD A,(23491)            ; Load y-coordinate of top of region to scroll
                          ; (pixels) into C...
  LD C,A                  ; ...
  LD DE,26240             ; Point DE at Table of Display File Addresses of
                          ; Start of Each Pixel Row
  LD H,0                  ; Load HL with double y-coordinate of top of region
                          ; to scroll...
  LD L,A                  ; ...(as entries in table at 26240 are two bytes
                          ; wide)...
  ADD HL,HL               ; ...
  ADD HL,DE               ; ...and add to DE as offset in HL
  LD E,(HL)               ; Load Display File address of pixel row of interest
                          ; into DE...
  INC HL                  ; ...
  LD D,(HL)               ; ...
  EX DE,HL                ; Swap HL (now Display File address of start of A-th
                          ; pixel row) and DE (now points to entry in table at
                          ; 26240)
  LD A,(23492)            ; Load y-coordinate of bottom of region to scroll
                          ; (pixels) into A...
  SUB C                   ; ...and subtract C to get height of region to scroll
                          ; (pixels)
  EX AF,AF'               ; Swap AF and AF' (A' now holds height of region to
                          ; scroll in pixels)
  LD A,(23489)            ; Load C with x-coordinate of left edge of region to
                          ; scroll (characters)...
  LD C,A                  ; ...
  LD A,L                  ; Add this x-coordinate value as offset (via OR) to
                          ; HL...
  OR C                    ; ...
  LD L,A                  ; ...
  LD A,(23490)            ; Load A with x-coordinate of right edge of region to
                          ; scroll (characters)
  SUB C                   ; Subtract C...
  INC A                   ; ...and add one to get width (characters) of region
                          ; to scroll
  LD B,0                  ; Load BC with width of region to scroll
                          ; (characters)...
  LD C,A                  ; ...
  PUSH BC                 ; Store BC (width of region to scroll in characters)
  PUSH HL                 ; Store HL (current position in Display File, at left
                          ; edge of top pixel row in region to scroll)
  LD DE,23296             ; Point DE at 23296
  LDIR                    ; Copy BC bytes of data from HL to DE
  POP HL                  ; Restore HL (current position in Display File, at
                          ; left edge of top pixel row in region to scroll)
  POP BC                  ; Restore BC (width of region to scroll in
                          ; characters)
  EXX                     ; Swap all registers (B' = width of region to scroll
                          ; in characters)
  EX AF,AF'               ; Swap AF and AF' (A now holds height of region to
                          ; scroll in pixels)
  JP Z,55555              ; If height of region to scroll in pixels is zero
                          ; then skip ahead to 55555
  LD B,A                  ; Load B with height of region to scroll in pixels
  EXX                     ; Swap all registers (B = width of region to scroll,
                          ; B' = remaining number of pixel rows to scroll)
  LD A,H                  ; Load D and A with H plus 1 and E with L...
  INC A                   ; ...
  LD D,A                  ; ...
  LD E,L                  ; ...
  AND 7                   ; If any of three least significant bits in A are set
                          ; (i.e. at least one of the three least significant
                          ; bits in H were also set)...
  JP NZ,55545             ; ...then skip ahead to 55545
; At least one of the three least significant bits of H are set, meaning we
; could be at the top of a third of the display
  LD A,E                  ; Move DE on by 32 bytes to move up one character row
                          ; (eight rows of pixels)...
  ADD A,32                ; ...
  LD E,A                  ; ...
  JP C,55545              ; If L hasn't gone over 256 (i.e. we haven't moved 32
                          ; bytes on from the top pixel row of the bottom
                          ; character row of a third) then skip ahead to
                          ; 55545...
  LD A,D                  ; ...else move up by a third...
  SUB 8                   ; ...
  LD D,A                  ; ...
  EX DE,HL                ; Swap DE (now points to start of upper pixel row)
                          ; and HL (now points to start of lower pixel row)
  PUSH HL                 ; Store HL (pointer to lower pixel row)
  PUSH BC                 ; Store BC (B = width of region to scroll, in
                          ; characters)
  LDIR                    ; Copy row of bitmap data up a row from HL to DE
  POP BC                  ; Restore BC (B = width of region to scroll, in
                          ; characters)
  POP HL                  ; Store HL (pointer to upper pixel row)
  EXX                     ; Swap all registers (B = remaining number of pixel
                          ; rows to scroll, B' = width of region to scroll)
  DJNZ 55524              ; Loop back to 55524 to copy next row of pixels up
  EXX                     ; Swap all registers
; The operand of the instruction at 55556 is the address to jump to upon
; completion of this routine. This is modified by the instruction at 55470, set
; to the value in HL at the start of this routine. The possible values are
; 55407 (return) or 55414 (restore copied bitmap data to bottom of region to
; scroll, then return).
  JP 55407                ; Jump to address that was in HL at start of this
                          ; routine (return, or place copied bitmap data at
                          ; bottom of scrolled region then return)

; Scroll a Region of the Display File Down a Pixel Row
;
; Used by the routines at 55436 and 55442. Input:  HL  Address to jump to at
; the end of this routine (instruction at 55648)
  LD (55649),HL           ; Modify jump (at 55648) destination to address
                          ; stored in HL
  LD A,(23492)            ; Load y-coordinate of bottom of region to scroll
                          ; (pixels) into A and C...
  LD C,A                  ; ...
  LD DE,26240             ; Point DE at Table of Display File Addresses of
                          ; Start of Each Pixel Row
  LD H,0                  ; Load HL with double y-coordinate of bottom of
                          ; region to scroll...
  LD L,A                  ; ...(as entries in table at 26240 are two bytes
                          ; wide)...
  ADD HL,HL               ; ...
  ADD HL,DE               ; ...and add to DE as offset in HL
  LD E,(HL)               ; Load Display File address of pixel row of interest
                          ; into DE...
  INC HL                  ; ...
  LD D,(HL)               ; ...
  EX DE,HL                ; Swap HL (now Display File address of start of A-th
                          ; pixel row) and DE (now points to entry in table at
                          ; 26240)
  LD A,(23491)            ; Load y-coordinate of top of region to scroll
                          ; (pixels) into B...
  LD B,A                  ; ...
  LD A,C                  ; Load y-coordinate of bottom of region to scroll
                          ; into A...
  SUB B                   ; ...and subtract B to get height of region to scroll
                          ; (pixels)
  EX AF,AF'               ; Swap AF and AF' (A' now holds height of region to
                          ; scroll in pixels)
  LD A,(23489)            ; Load C with x-coordinate of left edge of region to
                          ; scroll (characters)...
  LD C,A                  ; ...
  LD A,L                  ; Add this x-coordinate value as offset (via OR) to
                          ; HL...
  OR C                    ; ...
  LD L,A                  ; ...
  LD A,(23490)            ; Load A with x-coordinate of right edge of region to
                          ; scroll (characters)
  SUB C                   ; Subtract C...
  INC A                   ; ...and add one to get width (characters) of region
                          ; to scroll
  LD B,0                  ; Load BC with width of region to scroll
                          ; (characters)...
  LD C,A                  ; ...
  PUSH BC                 ; Store BC (width of region to scroll in characters)
  PUSH HL                 ; Store HL (current position in Display File, at left
                          ; edge of bottom pixel row in region to scroll)
  LD DE,23296             ; Point DE at 23296
  LDIR                    ; Copy BC bytes of data from HL to DE
  POP HL                  ; Restore HL (current position in Display File, at
                          ; left edge of bottom pixel row in region to scroll)
  POP BC                  ; Restore BC (width of region to scroll in
                          ; characters)
  EXX                     ; Swap all registers (B' = width of region to scroll
                          ; in characters)
  EX AF,AF'               ; Swap AF and AF' (A now holds height of region to
                          ; scroll in pixels)
  JP Z,55647              ; If height of region to scroll in pixels is zero
                          ; then skip ahead to 55647
  LD B,A                  ; Load B with height of region to scroll in pixels
  EXX                     ; Swap all registers (B = width of region to scroll,
                          ; B' = remaining number of pixel rows to scroll)
  LD A,H                  ; Load D and A with H minus 1 and E with L...
  DEC A                   ; ...
  LD E,L                  ; ...
  LD D,A                  ; ...
  CPL                     ; Invert all bits in A
  AND 7                   ; If any of three least significant bits in A are set
                          ; (i.e. at least one of the three least significant
                          ; bits in H were also set)...
  JP NZ,55637             ; ...then skip ahead to 55637
; At least one of the three least significant bits of H are set, meaning we
; could be at the top of a third of the display
  LD A,E                  ; Move DE back by 32 bytes to move up one character
                          ; row (eight rows of pixels)...
  SUB 32                  ; ...
  LD E,A                  ; ...
  JP C,55637              ; If E hasn't gone under zero (i.e. we haven't moved
                          ; 32 bytes back from the top character row of a
                          ; third) then skip ahead to 55637...
  LD A,D                  ; ...else move down by a third...
  ADD A,8                 ; ...
  LD D,A                  ; ...
  EX DE,HL                ; Swap DE (now points to start of lower pixel row)
                          ; and HL (now points to start of upper pixel row)
  PUSH HL                 ; Store HL (pointer to upper pixel row)
  PUSH BC                 ; Store BC (B = width of region to scroll, in
                          ; characters)
  LDIR                    ; Copy row of bitmap data down a row from HL to DE
  POP BC                  ; Restore BC (B = width of region to scroll, in
                          ; characters)
  POP HL                  ; Store HL (pointer to upper pixel row)
  EXX                     ; Swap all registers (B = remaining number of pixel
                          ; rows to scroll, B' = width of region to scroll)
  DJNZ 55615              ; Loop back to 55615 to copy next row of pixels down
  EXX                     ; Swap all registers
; The operand of the instruction at 55648 is the address to jump to upon
; completion of this routine. This is modified by the instruction at 55559, set
; to the value in HL at the start of this routine. The possible values are
; 55407 (return) or 55448 (restore copied bitmap data to top of region to
; scroll, then return).
  JP 55407                ; Jump to address that was in HL at start of this
                          ; routine (return, or place copied bitmap data at top
                          ; of scrolled region then return)

; Flash Border and Screen (as in Cast a Spell)
;
; Used by the routines at 31122, 31280, 31312 and 31468.
  LD B,96                 ; Load B with 96 (number of times to repeat routine)
  LD DE,576               ; Load DE with 576 (number of bytes to modify - i.e.
                          ; bottom 18 rows)
  LD HL,22720             ; Point HL at start of 7th row in Attribute File
  LD A,(HL)               ; Load attribute byte into A
  AND 248                 ; Clear three lowest bits (i.e. INK colour)
                          ; preserving only PAPER, BRIGHT and FLASH bits
  LD C,A                  ; Place modified value into C
  LD A,(HL)               ; Get original attribute from screen again
  INC A                   ; Increase by one
  AND 7                   ; Clear all bits except the lowest three (i.e. INK
                          ; colour)
  OUT (254),A             ; Set border colour to A
  OR C                    ; Combine other bits back in
  OUT (254),A             ; Update border / speaker state
  LD (HL),A               ; Load modified value back into Attribute File
  INC HL                  ; Move to next byte in Attribute File
  DEC DE                  ; Reduce DE (reducing number of attribute bytes left
                          ; to modify)
  LD A,D                  ; If DE is not zero (i.e. there are more attribute
                          ; bytes to modify)...
  OR E                    ; ...
  JR NZ,55659             ; ...then loop back to 55659
  DJNZ 55653              ; Loop back for another pass
  XOR A                   ; Set A to zero
  OUT (254),A             ; Reset border to black and reset speaker state
  RET                     ; Return

; Display Cyan "Game Over" Window and Return to Control Selection Menu
;
; Used by the routines at 27136, 27762, 28470, 28482, 28494, 28542, 29488,
; 30940, 31312, 31468, 31688, 32252 and 53937. Input:  HL Points to location of
; a string
  RES 0,(IY+65)           ; Reset Game In Progress Flag (IY = 23610)
  LD DE,37283             ; Adjust height of window 24 ("Game Over" Window) to
                          ; accommodate text...
  CALL 33774              ; ...
  PUSH HL                 ; Store HL (points to first character of text to
                          ; display)
  LD A,24                 ; Draw Window 24 ("Game Over" Window)...
  CALL 34990              ; ...
  LD HL,44530             ; Point to string for percentage completion
  LD DE,44542             ; Point to string for time left
  CALL 33657              ; Insert current time and score into "Time Left" and
                          ; "Percentage Completion" texts
  LD HL,44506             ; Point HL at "GAME OVER / TOTAL COMPLETION XX% /
                          ; TIME LEFT XX DAYS" text...
  CALL 34762              ; ...and print to screen
  POP HL                  ; Restore HL (points to first character of text to
                          ; display)
  CALL 34762              ; Print text to screen
  CALL 55138              ; Display "PRESS FIRE TO CONTINUE" Window and Wait
                          ; for Fire to be Pressed
  JP 26670                ; Display and handle Input Device Selection Menu

; Advance HL by A Words, Load HL with Word at Location HL as Address and Jump
; to it
;
; Used by the routines at 30001, 30686, 30874 and 31041. Input:  A  An index HL
; First entry in list of addresses
  CALL 55730              ; Load address with index A in a list of addresses at
                          ; HL into HL
  JP (HL)                 ; Jump to address in HL

; Load address with index A in a list of addresses at HL into HL
;
; Used by the routines at 27762, 28264, 54505 and 55726. Input:  A Index of
; required entry in list (0 is first) HL  Address of start of list Output: HL
; A-th address in list at HL (input)
  ADD A,A                 ; Double offset value...
  LD D,0                  ; ...and load into DE...
  LD E,A                  ; ...
  ADD HL,DE               ; Add doubled offset to address in HL
; This entry point is used by the routines at 28785, 29036 and 54411.
  LD A,(HL)               ; Load address at HL into HL...
  INC HL                  ; ...
  LD H,(HL)               ; ...
  LD L,A                  ; ...
  RET                     ; Return

; Set New Random Seed and Load A and E with a Random Number
;
; Used by the routines at 36273 and 55760. Output: A  LSB of new random seed E
; LSB of new random seed
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  LD BC,(23671)           ; Load system variables Seed (hi) and Frames (1) into
                          ; BC
  LD HL,(23670)           ; Load system variable Seed into HL
  ADD HL,BC               ; Add these together
  LD A,H                  ; Add together H and L in A...
  ADD A,L                 ; ...
  LD L,A                  ; ...and load into L
  LD (23670),HL           ; Place new HL back into system variable Seed
  POP BC                  ; Restore BC
  POP HL                  ; Restore HL
  LD E,A                  ; Load LSB of new seed into E
  RET                     ; Return

; Unused routine
;
; This routine generates a random seed / random number up to B. Input:  B  Cap
; value
  CALL 55740              ; Set new random seed and load A and E with a random
                          ; number
  CP B                    ; If random seed is greater than or equal to B...
  JR NC,55760             ; ...then loop back to 55760
  LD E,A                  ; Load value into E
  RET                     ; Return

; Select Magic Knight's Room and USS Pisces' Current Location (Cheat / Debug
; Routine)
;
; Used by the routine at 27136. Input:  A  Keyboard / joystick input
  LD (55776),A            ; Store keyboard / joystick input at 55775
  LD A,(23728)            ; Set Zero Flag if Cheat Mode Enabled Flag is reset
                          ; (see trivia)...
  OR A                    ; ...
; The operand of the instruction at 55775 represents the most recent keyboard /
; joystick input. This is modified by the instruction at 55768.
  LD A,0                  ; Restore keyboard / joystick input to A
  RET Z                   ; Return is Zero Flag was set
  POP HL                  ; Remove return address from top of Stack
  CALL 35790              ; Set parameters (for Cheat Routine Sound) and play
; This entry point is used by the routine at 55814.
  LD A,2                  ; Set BORDER to red...
  OUT (254),A             ; ...
  CALL 54942              ; Capture keyboard or joystick input loading result
                          ; into A
  BIT 0,A                 ; If left pressed...
  JR NZ,55819             ; ...then jump to 55819 (decrease Magic Knight's
                          ; current room index, wrapping around to 24 if below
                          ; zero)
  BIT 1,A                 ; If right pressed...
  JR NZ,55836             ; ...then jump to 55836 (increase Magic Knight's
                          ; current room index, wrapping around to zero if
                          ; above 24)
  BIT 2,A                 ; If up pressed...
  JP NZ,55869             ; ...then jump to 55869 (increase USS Pisces' current
                          ; location index, wrapping around to 1 if above 24)
  BIT 3,A                 ; If down pressed...
  JP NZ,55853             ; ...then jump to 55853 (decrease USS Pisces' current
                          ; location index, wrapping around to 24 if below 1)
  BIT 4,A                 ; If fire pressed...
  JP NZ,55887             ; ...then jump to 55887 (exit Cheat / Debug Mode)
  JR 55782                ; Loop back to 55782

; Cheat / Debug Routine Draw Magic Knight's Current Room then Jump Back into
; Cheat Routine Main Loop
;
; Used by the routines at 55819, 55836, 55853 and 55869.
  CALL 27765              ; Draw Magic Knight's current room, draw objects and
                          ; characters and initialise room-specific data
  JR 55782                ; Jump back into Cheat Routine main loop

; Cheat / Debug Routine Decrease Magic Knight's Current Room Index, Wrapping
; Around to 24 if Below Zero
;
; Used by the routine at 55768.
  LD A,(23701)            ; Decrease index of Magic Knight's current room...
  DEC A                   ; ...
  LD (23701),A            ; ...
  JP P,55814              ; If new room index is not less than zero then draw
                          ; Magic Knight's current room then jump back into
                          ; Cheat Routine Main Loop
  LD A,24                 ; Set new room index to 24...
  LD (23701),A            ; ...
  JR 55814                ; Draw Magic Knight's current room then jump back
                          ; into Cheat Routine Main Loop

; Cheat / Debug Routine Increase Magic Knight's Current Room Index, Wrapping
; Around to Zero if Above 24
;
; Used by the routine at 55768.
  LD A,(23701)            ; Increase index of Magic Knight's current room...
  INC A                   ; ...
  LD (23701),A            ; ...
  CP 25                   ; If new room index is 25...
  JR NZ,55814             ; ...then draw Magic Knight's current room then jump
                          ; back into Cheat Routine Main Loop
  XOR A                   ; Set new room index to zero...
  LD (23701),A            ; ...
  JR 55814                ; Draw Magic Knight's current room then jump back
                          ; into Cheat Routine Main Loop

; Cheat / Debug Routine Decrease USS Pisces' Current Location Index, Wrapping
; Around to 24 if Below 1
;
; Used by the routine at 55768.
  LD A,(23700)            ; Decrease index of USS Pisces' current location...
  DEC A                   ; ...
  LD (23700),A            ; ...
  JR NZ,55814             ; If new location index is not zero then draw Magic
                          ; Knight's current room then jump back into Cheat
                          ; Routine Main Loop
  LD A,24                 ; Set new location index to 24...
  LD (23700),A            ; ...
  JR 55814                ; Draw Magic Knight's current room then jump back
                          ; into Cheat Routine Main Loop

; Cheat / Debug Routine Increase USS Pisces' Current Location Index, Wrapping
; Around to 1 if Above 24
;
; Used by the routine at 55768.
  LD A,(23700)            ; Increase index of USS Pisces' current location...
  INC A                   ; ...
  LD (23700),A            ; ...
  CP 25                   ; If new location index is 25...
  JR NZ,55814             ; ...then draw Magic Knight's current room then jump
                          ; back into Cheat Routine Main Loop
  LD A,1                  ; Set new location index to 1...
  LD (23700),A            ; ...
  JR 55814                ; Draw Magic Knight's current room then jump back
                          ; into Cheat Routine Main Loop

; Cheat / Debug Routine Exit Cheat / Debug Mode
;
; Used by the routine at 55768.
  XOR A                   ; Set BORDER to black...
  OUT (254),A             ; ...
  CALL 35690              ; Play upward scale sound
  JP 27136                ; Jump to start of Main Game Loop

; Unused
  DEFB 0,0,215,130,0,0,216,130
  DEFB 0,0,217,130,0,0,218,130
  DEFB 0,0,219,130,0,0

; Graphics (02 x 02) Unknown / Unused Mask
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255

; Graphic Lookup Data
;
; Table of addresses of start of graphic data for game graphics.
  DEFW 63220,63220        ; (00) - Graphics (Standard): (03 x 04) Magic Knight
                          ; Facing Right, Frame 1
  DEFW 0,0                ; (01) - Unused
  DEFW 56310,56310        ; (02) - Graphics (Standard): (02 x 02) Menu Hand
                          ; Cursor
  DEFW 56342,56374        ; (03) - Graphics (Standard): (02 x 02) Chocolate
                          ; Heart and mask
  DEFW 56406,56438        ; (04) - Graphics (Standard): (02 x 02) Advert and
                          ; mask
  DEFW 56470,56438        ; (05) - Graphics (Standard): (02 x 02) Mirror and
                          ; mask
  DEFW 56502,56438        ; (06) - Graphics (Standard): (02 x 02) Photograph
                          ; (inside of starship) and mask
  DEFW 56534,56438        ; (07) - Graphics (Standard): (02 x 02) Photograph
                          ; (Magic Knight) and mask
  DEFW 56566,56438        ; (08) - Graphics (Standard): (02 x 02) Star Map and
                          ; mask
  DEFW 56598,56438        ; (09) - Graphics (Standard): (02 x 02) Ancient
                          ; Scroll and mask
  DEFW 56630,56438        ; (10) - Graphics (Standard): (02 x 02) Starfleet
                          ; Manual and mask
  DEFW 56662,56694        ; (11) - Graphics (Standard): (02 x 02) Pair of Boots
                          ; and mask
  DEFW 56726,56758        ; (12) - Graphics (Standard): (02 x 02) Camera and
                          ; mask
  DEFW 56790,56822        ; (13) - Graphics (Standard): (02 x 02) Blank / Valid
                          ; ID Card and mask
  DEFW 56854,56886        ; (14) - Graphics (Standard): (02 x 02) Shield and
                          ; mask
  DEFW 56918,56950        ; (15) - Graphics (Standard): (02 x 02) Magic
                          ; Talisman / 10MW Laser and mask
  DEFW 56982,57014        ; (16) - Graphics (Standard): (02 x 02) Golden
                          ; Sundial of Alpha and mask
  DEFW 57046,57078        ; (17) - Graphics (Standard): (02 x 02) Tower Fish
                          ; and mask
  DEFW 57110,57142        ; (18) - Graphics (Standard): (02 x 02) Bag of Runes
                          ; / Potatoes and mask
  DEFW 57174,57206        ; (19) - Graphics (Standard): (02 x 02) Wrist
                          ; Terminal and mask
  DEFW 57238,57270        ; (20) - Graphics (Standard): (02 x 02) Instant Film
                          ; and mask
  DEFW 57302,57334        ; (21) - Graphics (Standard): (02 x 02) Pot of Glue
                          ; and mask
  DEFW 57366,57398        ; (22) - Graphics (Standard): (02 x 02) 5W Resistor
                          ; and mask
  DEFW 57430,57462        ; (23) - Graphics (Standard): (02 x 02) Brass Ankh
                          ; and mask
  DEFW 57494,57526        ; (24) - Graphics (Standard): (02 x 02) Pewter
                          ; Tankard and mask
  DEFW 57558,57590        ; (25) - Graphics (Standard): (02 x 02) Quark Bomb
                          ; and mask
  DEFW 57622,57654        ; (26) - Graphics (Standard): (02 x 02) Axe and mask
  DEFW 57686,57718        ; (27) - Graphics (Standard): (02 x 02) McTablet Food
                          ; and mask
  DEFW 57750,57782        ; (28) - Graphics (Standard): (02 x 02) Broken Glass
                          ; and mask
  DEFW 57814,57846        ; (29) - Graphics (Standard): (02 x 02) Gadget X and
                          ; mask
  DEFW 57878,57910        ; (30) - Graphics (Standard): (02 x 02) Torch and
                          ; mask
  DEFW 57942,57974        ; (31) - Graphics (Standard): (02 x 02) Part of a
                          ; Sundial and mask
  DEFW 58006,58038        ; (32) - Graphics (Standard): (02 x 02) Gas Mask and
                          ; mask
  DEFW 56666,56538        ; (33) - Unknown / Unused (see trivia)
  DEFW 56698,56538        ; (34) - Unknown / Unused (see trivia)
  DEFW 56730,56538        ; (35) - Unknown / Unused (see trivia)
  DEFW 56762,56794        ; (36) - Unknown / Unused (see trivia)
  DEFW 56826,56858        ; (37) - Unknown / Unused (see trivia)
  DEFW 56890,56922        ; (38) - Unknown / Unused (see trivia)
  DEFW 56954,56986        ; (39) - Unknown / Unused (see trivia)
  DEFW 1035,58070         ; (40) - Graphics (Compacted): (11 x 04) Gordon /
                          ; Sarab at Control Panel
  DEFW 1030,58339         ; (41) - Graphics (Compacted): (06 x 04) Transporter
                          ; Pad
  DEFW 1283,58405         ; (42) - Graphics (Compacted): (03 x 05) Cavern
                          ; Ceiling Part (1)
  DEFW 770,58497          ; (43) - Graphics (Compacted): (02 x 03) Cavern
                          ; Ceiling Part (2)
  DEFW 1027,58528         ; (44) - Graphics (Compacted): (03 x 04) Cavern
                          ; Ceiling Part (3)
  DEFW 514,58598          ; (45) - Graphics (Compacted): (02 x 02) Cavern
                          ; Ceiling Part (4)
  DEFW 769,58622          ; (46) - Graphics (Compacted): (01 x 03) Cavern
                          ; Ceiling Part (5)
  DEFW 1283,58644         ; (47) - Graphics (Compacted): (03 x 05) Cavern
                          ; Ceiling Part (6)
  DEFW 1028,58707         ; (48) - Graphics (Compacted): (04 x 04) Cavern
                          ; Ceiling Part (7)
  DEFW 1026,58793         ; (49) - Graphics (Compacted): (02 x 04) Wall-Mounted
                          ; Telephone
  DEFW 777,58849          ; (50) - Graphics (Compacted): (09 x 03) Left Half of
                          ; Planet (as shown on viewscreen)
  DEFW 773,59031          ; (51) - Graphics (Compacted): (05 x 03) Security
                          ; Camera
  DEFW 1797,59149         ; (52) - Graphics (Compacted): (05 x 07) Large Chair
  DEFW 2306,59296         ; (53) - Graphics (Compacted): (02 x 09) Wall-Mounted
                          ; Rifle
  DEFW 1795,59429         ; (54) - Graphics (Compacted): (03 x 07) Chandelier
  DEFW 1031,59585         ; (55) - Graphics (Compacted): (07 x 04) Table
  DEFW 2563,59677         ; (56) - Graphics (Compacted): (03 x 10) Half
                          ; Transputer Panel
  DEFW 2057,59879         ; (57) - Graphics (Compacted): (09 x 08) Cargo
                          ; Container
  DEFW 0,0                ; (58) - Unused
  DEFW 1798,60186         ; (59) - Graphics (Compacted): (06 x 07) Hooper
  DEFW 514,60432          ; (60) - Graphics (Compacted): (02 x 02) Wall-Mounted
                          ; Plaque
  DEFW 2817,60459         ; (61) - Graphics (Compacted): (01 x 11) Left Edge of
                          ; Viewscreen
  DEFW 1286,60541         ; (62) - Graphics (Compacted): (06 x 05) Face (shown
                          ; upon Communicate command)
  DEFW 1284,60735         ; (63) - Graphics (Compacted): (04 x 05) Wall-Mounted
                          ; Helmet
  DEFW 1028,60871         ; (64) - Graphics (Compacted): (04 x 04) Left Half of
                          ; USS Pisces Picture
  DEFW 771,60970          ; (65) - Graphics (Compacted): (03 x 03) Transputer
                          ; Base (Left Half)
  DEFW 1286,61021         ; (66) - Graphics (Compacted): (06 x 05) Plant
  DEFW 514,61209          ; (67) - Graphics (Compacted): (02 x 02) Plant Pot /
                          ; Tyme Machine Control Column block
  DEFW 1284,61237         ; (68) - Graphics (Compacted): (04 x 05) Balls
                          ; Picture
  DEFW 61392,61456        ; (69) - Graphics (Standard): (02 x 04) Sharon and
                          ; mask
  DEFW 61520,61584        ; (70) - Graphics (Standard): (02 x 04) S3 E3 / Klink
                          ; and mask
  DEFW 61648,61712        ; (71) - Graphics (Standard): (02 x 04) Swiftfoot and
                          ; mask
  DEFW 61776,61840        ; (72) - Graphics (Standard): (02 x 04) Murphy /
                          ; Julie 8 and mask
  DEFW 1284,61904         ; (73) - Graphics (Compacted): (04 x 05) Tyme
                          ; Guardian
  DEFW 1026,58893         ; (74) - Graphics (Compacted): (02 x 04) Middle
                          ; Section of Planet (unused)
  DEFW 1284,62013         ; (75) - Graphics (Compacted): (04 x 05) Control
                          ; Panel
  DEFW 773,59131          ; (76) - Graphics (Compacted): (05 x 03) Unused
  DEFW 1027,62181         ; (77) - Graphics (Compacted): (03 x 04) Wall-Mounted
                          ; Device
  DEFW 2306,59396         ; (78) - Graphics (Compacted): (02 x 09) Unused
  DEFW 1795,59529         ; (79) - Graphics (Compacted): (03 x 07) Unused
  DEFW 62278,62342        ; (80) - Graphics (Standard): (02 x 04) Forbin and
                          ; mask
  DEFW 62406,62470        ; (81) - Graphics (Standard): (02 x 04) Hectorr and
                          ; mask
  DEFW 1539,62534         ; (82) - Graphics (Compacted): (03 x 06) Patterned
                          ; Column
  DEFW 0,0                ; (83) - Unused
  DEFW 773,62658          ; (84) - Graphics (Compacted): (05 x 03) Picture (1)
  DEFW 773,62760          ; (85) - Graphics (Compacted): (05 x 03) Picture (2)
  DEFW 2817,60559         ; (86) - Graphics (Compacted): (01 x 11) Unused
  DEFW 1027,62869         ; (87) - Graphics (Compacted): (03 x 04) Left half of
                          ; Reel-to-Reel Tape Device
  DEFW 1283,62978         ; (88) - Graphics (Compacted): (03 x 05) Left half of
                          ; Tyme Guardians' Symbol (1)
  DEFW 774,63088          ; (89) - Graphics (Compacted): (06 x 03) Tyme
                          ; Guardians' Symbol (2)

; Graphics (02 x 02) Menu Hand Cursor
  DEFB 0,0,12,0,30,0,63,0
  DEFB 127,128,255,24,254,232,108,8
  DEFB 56,16,20,72,4,164,5,82
  DEFB 2,169,1,69,0,131,0,0

; Graphics Objects
;
; All object graphics are (2 x 2). Chocolate Heart
  DEFB 0,0,0,0,0,0,28,56
  DEFB 62,124,127,254,127,254,127,238
  DEFB 127,230,63,198,63,196,31,140
  DEFB 31,24,14,48,7,224,1,128
; Chocolate Heart (Mask)
  DEFB 255,255,255,255,193,131,128,1
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,128,1,128,1
  DEFB 192,3,192,3,224,7,240,15
; Advert
  DEFB 0,0,127,254,64,138,72,254
  DEFB 92,130,78,254,64,130,127,138
  DEFB 68,178,127,178,72,130,127,254
  DEFB 64,146,127,254,68,130,127,254
; Advert / Mirror / Photograph / Star Map / Ancient Scroll / Starfleet Manual
; (Mask)
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Mirror
  DEFB 0,0,82,74,76,50,63,252
  DEFB 48,12,81,10,18,8,84,10
  DEFB 48,12,81,10,18,8,84,10
  DEFB 48,12,63,252,76,50,82,74
; Photograph (Blank)
  DEFB 0,0,127,254,127,254,96,6
  DEFB 96,6,96,6,96,6,96,6
  DEFB 96,6,96,6,96,6,96,6
  DEFB 96,6,96,6,127,254,127,254
; Photograph (Magic Knight)
  DEFB 0,0,127,254,127,254,96,6
  DEFB 99,230,101,86,101,86,101,86
  DEFB 102,182,99,198,96,6,99,198
  DEFB 103,230,96,6,127,254,127,254
; Star Map
  DEFB 0,0,127,254,104,22,80,10
  DEFB 96,6,74,2,85,242,85,82
  DEFB 85,242,64,66,64,66,64,66
  DEFB 96,6,80,10,104,22,127,254
; Ancient Scroll
  DEFB 0,0,127,254,255,255,127,254
  DEFB 32,4,45,228,44,4,45,100
  DEFB 44,196,32,36,47,84,32,36
  DEFB 32,84,127,254,255,255,127,254
; Starfleet Manual
  DEFB 0,0,31,254,96,4,127,254
  DEFB 127,252,127,252,125,188,125,188
  DEFB 126,124,126,124,125,188,127,252
  DEFB 127,252,124,62,127,252,31,254
; Pair of Boots
  DEFB 0,0,0,0,0,0,0,0
  DEFB 31,0,63,0,58,0,62,0
  DEFB 58,0,63,28,57,50,63,242
  DEFB 127,250,127,254,121,254,120,252
; Pair of Boots (Mask)
  DEFB 255,255,255,255,255,255,192,255
  DEFB 128,255,128,255,128,255,128,255
  DEFB 128,193,128,128,128,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Camera
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,7,192,108,96,107,174
  DEFB 75,162,107,174,108,110,87,222
  DEFB 88,62,127,254,64,2,127,254
; Camera (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 240,31,128,15,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; ID Card
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,127,254,127,130,97,130
  DEFB 127,130,127,130,97,130,127,254
; Blank / Valid ID Card (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Shield
  DEFB 0,0,64,2,96,6,126,126
  DEFB 127,254,103,230,115,206,121,158
  DEFB 63,252,63,252,30,120,28,56
  DEFB 13,176,7,224,3,192,1,128
; Shield (Mask)
  DEFB 31,248,15,240,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 128,1,128,1,128,1,192,3
  DEFB 192,3,224,7,240,15,248,31
; Magic Talisman
  DEFB 0,0,1,128,3,192,3,192
  DEFB 7,224,7,224,14,112,13,176
  DEFB 13,176,14,112,7,224,7,224
  DEFB 3,192,3,192,1,128,1,128
; Magic Talisman (Mask)
  DEFB 252,63,248,31,248,31,240,15
  DEFB 240,15,224,7,224,7,224,7
  DEFB 224,7,224,7,224,7,240,15
  DEFB 240,15,248,31,248,31,252,63
; Golden Sundial of Alpha
  DEFB 0,0,0,0,0,0,3,192
  DEFB 31,248,61,188,97,134,97,254
  DEFB 97,254,96,6,60,60,31,248
  DEFB 3,192,7,224,15,240,31,248
; Golden Sundial of Alpha (Mask)
  DEFB 255,255,255,255,248,31,192,3
  DEFB 128,1,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,128,1
  DEFB 192,3,224,7,192,3,192,3
; Tower Fish
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 15,1,63,198,79,236,223,252
  DEFB 255,252,95,236,63,198,15,1
; Tower Fish (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,224,252
  DEFB 128,16,0,0,0,0,0,1
  DEFB 0,1,0,0,0,0,128,16
; Bag of Runes / Potatoes
  DEFB 0,0,0,0,0,0,10,80
  DEFB 21,168,8,16,5,160,15,240
  DEFB 26,88,56,28,114,78,100,38
  DEFB 96,6,114,78,63,252,31,248
; Bag of Runes / Potatoes (Mask)
  DEFB 255,255,255,255,224,7,192,3
  DEFB 192,3,192,3,224,7,192,3
  DEFB 128,1,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,128,1
; Wrist Terminal
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,3,192,6,96
  DEFB 124,190,125,62,6,96,3,192
; Wrist Terminal (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,248,31,240,15,0,0
  DEFB 0,0,0,0,0,0,240,15
; Instant Film
  DEFB 0,0,0,0,0,0,7,224
  DEFB 14,112,3,192,12,16,15,240
  DEFB 3,240,0,112,0,112,0,112
  DEFB 8,112,15,240,15,240,7,224
; Instant Film (Mask)
  DEFB 255,255,255,255,240,15,224,7
  DEFB 224,7,224,7,224,7,224,7
  DEFB 224,7,224,7,224,7,224,7
  DEFB 224,7,224,7,224,7,224,7
; Pot of Glue
  DEFB 0,0,0,0,0,0,0,0
  DEFB 15,240,15,240,7,224,7,224
  DEFB 127,254,77,168,93,170,93,168
  DEFB 93,170,85,170,76,136,127,254
; Pot of Glue (Mask)
  DEFB 255,255,255,255,255,255,224,7
  DEFB 224,7,224,7,224,7,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; 5W Resistor
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,31,248
  DEFB 21,120,117,126,85,122,95,250
; 5W Resistor (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,192,3,192,3
  DEFB 0,0,0,0,0,0,0,0
; Brass Ankh
  DEFB 0,0,7,224,15,240,28,56
  DEFB 24,24,24,24,12,48,6,96
  DEFB 127,254,127,254,3,192,3,192
  DEFB 3,192,3,192,3,192,3,192
; Brass Ankh (Mask)
  DEFB 240,15,224,7,192,3,192,3
  DEFB 193,131,193,131,192,3,224,7
  DEFB 0,0,0,0,0,0,248,31
  DEFB 248,31,248,31,248,31,248,31
; Pewter Tankard
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,56,127,252,127,204,127,140
  DEFB 127,140,127,152,127,176,127,224
  DEFB 63,64,30,96,63,32,127,128
; Pewter Tankard (Mask)
  DEFB 255,255,255,255,255,255,255,131
  DEFB 0,1,0,1,0,1,0,1
  DEFB 0,1,0,1,0,3,0,7
  DEFB 0,15,128,15,0,15,0,15
; Quark Bomb
  DEFB 0,0,0,56,0,192,1,0
  DEFB 1,0,3,192,7,224,8,48
  DEFB 27,216,24,56,27,216,27,216
  DEFB 8,48,15,240,7,224,3,192
; Quark Bomb (Mask)
  DEFB 255,131,255,3,252,3,252,31
  DEFB 248,31,240,15,224,7,224,7
  DEFB 192,3,192,3,192,3,192,3
  DEFB 192,3,224,7,224,7,240,15
; Axe
  DEFB 0,0,0,0,0,0,0,0
  DEFB 59,0,55,128,15,192,63,224
  DEFB 127,224,95,192,111,176,119,104
  DEFB 63,100,30,114,12,58,0,28
; Axe (Mask)
  DEFB 255,255,255,255,255,255,128,127
  DEFB 128,63,128,31,128,15,128,7
  DEFB 0,15,0,7,0,3,0,1
  DEFB 0,0,128,0,192,0,225,128
; McTablet Food
  DEFB 0,0,126,0,102,0,90,0
  DEFB 102,0,90,0,102,0,90,0
  DEFB 102,0,90,0,102,0,90,0
  DEFB 102,0,90,0,102,0,126,0
; McTablet Food (Mask)
  DEFB 0,255,0,255,0,255,0,255
  DEFB 0,255,0,255,0,255,0,255
  DEFB 0,255,0,255,0,255,0,255
  DEFB 0,255,0,255,0,255,0,255
; Broken Glass
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,13,84,50,204,127,254
; Broken Glass (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 224,1,128,1,0,0,0,0
; Gadget X
  DEFB 0,0,112,14,120,30,124,62
  DEFB 62,124,31,248,15,240,7,224
  DEFB 7,224,15,240,31,248,62,124
  DEFB 124,62,120,30,112,14,0,0
; Gadget X (Mask)
  DEFB 7,224,3,192,1,128,0,0
  DEFB 0,0,128,1,192,3,224,7
  DEFB 224,7,192,3,128,1,0,0
  DEFB 0,0,1,128,3,192,7,224
; Torch
  DEFB 0,0,0,60,0,60,0,62
  DEFB 0,62,0,62,0,62,0,60
  DEFB 0,60,0,60,0,110,0,94
  DEFB 0,94,0,94,0,94,0,126
; Torch (Mask)
  DEFB 255,129,255,129,255,128,255,128
  DEFB 255,128,255,128,255,128,255,128
  DEFB 255,129,255,0,255,0,255,0
  DEFB 255,0,255,0,255,0,255,0
; Part of a Sundial
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,16,0,16,0,16,0
  DEFB 56,0,56,0,124,0,124,0
; Part of a Sundial (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 199,255,199,255,199,255,131,255
  DEFB 131,255,1,255,1,255,1,255
; Gas Mask
  DEFB 0,0,30,120,63,252,115,206
  DEFB 97,134,96,6,97,134,51,204
  DEFB 30,120,36,36,34,68,28,56
  DEFB 6,96,4,32,15,240,15,240
; Gas Mask (Mask)
  DEFB 192,3,128,1,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 128,1,128,1,128,1,128,1
  DEFB 192,3,224,7,224,7,224,7

; Graphics (Compacted) Scenery Part 1 (11 x 04) Gordon / Sarab at Control Panel
  DEFB 0,8,7,3,1,0,5,255
  DEFB 3,0,5,255,3,0,5,255
  DEFB 3,8,24,56,216,244,224,223
  DEFB 63,191,191,255,3,15,247,249
  DEFB 250,250,254,254,254,255,3,16
  DEFB 60,31,7,7,255,3,0,2
  DEFB 128,224,224,255,3,0,5,255
  DEFB 3,0,21,126,66,126,106,126
  DEFB 194,126,16,252,212,214,214,212
  DEFB 212,252,8,252,120,32,120,248
  DEFB 243,239,223,127,63,63,31,31
  DEFB 239,240,240,252,248,248,240,240
  DEFB 231,31,31,1,3,7,15,63
  DEFB 255,3,128,192,224,224,224,192
  DEFB 192,128,31,113,110,232,238,241
  DEFB 127,8,255,1,199,187,139,187
  DEFB 199,255,1,1,0,2,3,239
  DEFB 60,120,127,56,63,127,234,127
  DEFB 48,112,231,60,255,2,170,213
  DEFB 45,45,255,1,60,252,252,172
  DEFB 252,204,206,254,112,255,4,253
  DEFB 121,1,1,248,255,7,63,255
  DEFB 8,252,240,193,129,129,129,128
  DEFB 63,112,232,215,129,145,239,8
  DEFB 247,192,214,247,234,234,247,8
  DEFB 255,1,243,243,255,1,131,131
  DEFB 255,1,1,0,8,255,2,0
  DEFB 14,252,252,0,1,1,1,1
  DEFB 1,1,31,124,127,255,5,213
  DEFB 42,255,6,171,84,255,6,248
  DEFB 62,254,255,5,127,127,96,1
  DEFB 1,1,1,1,255,2,8,245
  DEFB 240,27,251,14,255,2,1,227
  DEFB 63,227,254,14,0
; (06 x 04) Transporter Pad
  DEFB 0,13,3,31,8,0,3,7
  DEFB 127,255,2,16,0,3,254,255
  DEFB 3,32,0,4,240,254,255,1
  DEFB 64,0,6,192,128,0,3,1
  DEFB 1,3,3,3,255,40,7,7
  DEFB 15,15,15,31,31,31,255,43
  DEFB 18,255,7,73,255,7,36,255
  DEFB 7,146,255,7,73,255,7,36
  DEFB 255,4
; (03 x 05) Cavern Ceiling Part (1)
  DEFB 255,4,129,240,28,6,255,1
  DEFB 254,254,127,255,3,127,255,7
  DEFB 252,2,2,3,0,5,255,3
  DEFB 239,103,119,51,35,248,248,248
  DEFB 248,248,240,240,208,0,8,51
  DEFB 59,59,63,31,27,27,25,208
  DEFB 144,176,48,32,160,160,224,0
  DEFB 8,29,29,29,29,12,12,12
  DEFB 14,224,224,224,224,192,192,64
  DEFB 64,0,8,7,7,7,7,1
  DEFB 1,1,1,192,192,192,192,192
  DEFB 128,128,128,0
; (02 x 03) Cavern Ceiling Part (2)
  DEFB 255,4,127,31,207,99,255,8
  DEFB 97,113,57,59,27,25,29,25
  DEFB 248,240,192,192,192,192,0,2
  DEFB 31,31,30,14,12,0,11
; (03 x 04) Cavern Ceiling Part (3)
  DEFB 255,7,223,255,13,251,251,251
  DEFB 207,227,241,48,60,12,14,14
  DEFB 255,7,158,243,243,243,225,225
  DEFB 225,241,99,14,7,7,7,6
  DEFB 6,0,2,30,199,241,124,120
  DEFB 25,28,28,7,230,238,236,252
  DEFB 240,112,112,0,8,28,14,14
  DEFB 14,14,15,7,7,96,224,192
  DEFB 192,64,192,192,0,1
; (02 x 02) Cavern Ceiling Part (4)
  DEFB 255,7,246,255,3,247,225,252
  DEFB 226,227,240,243,227,199,206,248
  DEFB 240,0,1,193,129,128,0,5
; (01 x 03) Cavern Ceiling Part (5)
  DEFB 255,1,223,255,4,127,127,255
  DEFB 1,254,254,252,221,79,71,102
  DEFB 114,60,28,24,0,4
; (03 x 05) Cavern Ceiling Part (6)
  DEFB 255,6,253,220,255,13,248,248
  DEFB 240,222,135,131,131,131,3,1
  DEFB 1,127,127,127,63,63,191,191
  DEFB 163,240,224,128,0,5,1,1
  DEFB 1,1,0,4,130,206,254,254
  DEFB 250,242,246,228,0,16,100,112
  DEFB 116,100,120,120,56,56,0,16
  DEFB 56,56,24,24,24,0,11
; (04 x 04) Cavern Ceiling Part (7)
  DEFB 255,2,239,231,112,12,6,6
  DEFB 255,5,127,127,127,255,5,251
  DEFB 243,243,255,2,252,248,255,1
  DEFB 252,252,176,7,3,3,1,0
  DEFB 4,63,191,159,159,255,2,254
  DEFB 254,247,246,135,15,125,76,70
  DEFB 71,48,32,32,96,96,64,192
  DEFB 192,0,8,126,126,126,110,100
  DEFB 97,113,126,199,131,131,131,128
  DEFB 128,0,2,192,128,0,14,28
  DEFB 28,28,24,24,0,19
; (02 x 04) Wall-Mounted Telephone
  DEFB 126,129,255,2,171,255,1,171
  DEFB 255,1,0,8,171,255,3,147
  DEFB 147,147,147,0,3,128,128,128
  DEFB 192,224,147,147,147,147,147,147
  DEFB 215,126,32,112,16,48,16,48
  DEFB 16,48,1,7,2,7,0,4
  DEFB 16,48,16,48,144,224,0,2
; (09 x 03) Left Half of Planet (as shown on viewscreen)
  DEFB 0,38,3,31,0,4,31,255
  DEFB 2,254,0,3,127,255,1,252
  DEFB 225,12,0,1,9,252,255,2
  DEFB 127,63,191,0,1,239,31,254
  DEFB 63,191,255,1,249,0,20,3
  DEFB 15,63,255,1,0,1,7,60
  DEFB 249,244,224,207,255,2,254,63
  DEFB 159,15,227,255,2,252,252,248
  DEFB 227,127,127,62,158,254,0,1
  DEFB 4,191,255,1,251,3,255,1
  DEFB 31,31,79,231,255,2,127,248
  DEFB 226,230,192,223,255,3,127,0
  DEFB 5,1,7,0,1,3,7,30
  DEFB 124,254,255,2,0,1,239,255
  DEFB 1,249,252,7,215,255,1,0
  DEFB 1,199,214,240,255,1,252,254
  DEFB 255,1,0,1,255,1,120,255
  DEFB 2,59,239,255,1,0,1,224
  DEFB 239,255,2,253,249,255,1,0
  DEFB 1,255,1,254,254,220,249,255
  DEFB 2,0,1,35,126,12,3,192
  DEFB 231,239,0,1,31,15,15,207
  DEFB 7,167,255,1,0,1
; (05 x 03) Security Camera
  DEFB 0,3,1,3,15,31,127,15
  DEFB 63,127,255,3,254,252,254,252
  DEFB 249,227,207,159,61,253,48,240
  DEFB 240,240,112,112,112,112,0,4
  DEFB 126,255,2,195,255,1,128,176
  DEFB 175,159,127,7,123,249,1,61
  DEFB 133,197,229,229,229,245,245,213
  DEFB 215,215,223,223,255,1,112,240
  DEFB 240,240,224,224,192,128,219,219
  DEFB 219,219,219,219,219,94,253,158
  DEFB 190,182,134,142,252,123,229,229
  DEFB 197,197,133,61,1,255,2,254
  DEFB 252,249,241,224
  DEFB 192,0,3,192,224,241,123,27
  DEFB 11,28,60,124,248,240,192,192
  DEFB 128,255
; (05 x 07) Large Chair
  DEFB 0,29,1,1,1,0,3,208
  DEFB 184,184,120,120,0,24,1,3
  DEFB 2,2,2,2,6,4,120,120
  DEFB 120,248,248,248,240,240,0,24
  DEFB 5,13,9,11,27,19,55,103
  DEFB 240,240,240,240,240,240,224,224
  DEFB 0,5,7,60,1,0,4,15
  DEFB 248,3,255,1,1,7,28,49
  DEFB 231,31,255,2,207,63,127,255
  DEFB 5,224,224,224,192,192,192,128
  DEFB 128,127,255,4,127,31,7,255
  DEFB 7,240,255,5,248,128,63,254
  DEFB 254,252,240,128,0,16,3,3
  DEFB 0,2,3,15,63,252,240,240
  DEFB 252,252,240,192,0,25,1,15
  DEFB 255,2,63,15,4,31,255,2
  DEFB 240,128,0,1,192,128,240,255
  DEFB 2,31,1,0,4,128,240,255
  DEFB 2,0,8
; (02 x 09) Wall-Mounted Rifle
  DEFB 0,11,32,32,32,112,112,0
  DEFB 8,112,112,32,32,32,32,32
  DEFB 32,0,3,1,0,1,1,0
  DEFB 1,1,240,240,0,1,232,0
  DEFB 1,232,0,1,232,0,1,1
  DEFB 0,1,1,0,1,1,0,1
  DEFB 1,0,1,232,0,1,232,0
  DEFB 1,232,0,1,200,1,1,1
  DEFB 1,1,0,1,3,7,200,200
  DEFB 200,200,200,0,1,252,226,7
  DEFB 3,0,1,1,1,1,1,1
  DEFB 246,252,0,1,104,104,104,104
  DEFB 104,7,15,9
  DEFB 9,13,7,3,1,104,104,104
  DEFB 104,104,8,8,104,1,3,7
  DEFB 28,120,224,193,195,252,222,30
  DEFB 62,124,254,198,128,231,124,0
  DEFB 14
; (03 x 07) Chandelier
  DEFB 255,2,8,127,63,8,8,8
  DEFB 255,2,16,255,2,16,16,16
  DEFB 255,2,16,255,1,254,16,16
  DEFB 16,8,8,8,8,8,8,8
  DEFB 8,56,124,254,254,254,124,56
  DEFB 16,16,16,16,16,16,16,16
  DEFB 16,28,62,127,127,127,62,28
  DEFB 8,16,16,16,16,16,16,16
  DEFB 16,56,124,254,254,254,124,56
  DEFB 16,8,8,8,8,8,8,8
  DEFB 8,16,16,16,16,16,16,16
  DEFB 16,16,16,16,16,16,16,16
  DEFB 16,8,8,8
  DEFB 8,8,8,8,8,56,124,254
  DEFB 254,254,124,56,16,16,16,16
  DEFB 16,16,16,16,16,28,62,127
  DEFB 127,127,62,28,0,1,16,16
  DEFB 16,16,16,16,16,16,56,124
  DEFB 254,254,254,124,56,0,9,56
  DEFB 124,254,254,254,124,56,0,9
; (07 x 04) Table
  DEFB 255,1,31,7,0,5,255,1
  DEFB 195,255,1,0,1,1,0,3
  DEFB 255,3,0,1,255,1,112,30
  DEFB 3,255,3,0,1,255,2,127
  DEFB 255,4,0,1,255,1,254,240
  DEFB 128,255,3,0,5,255,1,252
  DEFB 224,0,30,255,1,60,24,24
  DEFB 8,8,8,0,48,8,8,8
  DEFB 8,8,8,8,8,0,45,3
  DEFB 127,255,1,28,20,20,54,103
  DEFB 199,143,255,1,0,5,192,254
  DEFB 255,1,0,16
; (03 x 10) Half Transputer Panel
  DEFB 0,1,7,15,15,15,14,14
  DEFB 14,0,1,255,3,0,5,255
  DEFB 3,0,4,14,14,14,14,14
  DEFB 14,14,14,1,1,1,1,1
  DEFB 1,1,1,255,1,199,131,1
  DEFB 1,1,131,199,14,14,14,14
  DEFB 14,14,14,14,1,0,7,255
  DEFB 1,0,2,60,60,0,1,60
  DEFB 0,1,14,14,14,14,14,14
  DEFB 14,14,0,8,127,255,2,252
  DEFB 248,240,240,240,14,14,14,14
  DEFB 14,14,14,14,0,8,240,240
  DEFB 248,252,255,2,127,0,1,14
  DEFB 14,14,14,14,14,14,14,0
  DEFB 9,127,255,1,248,240,243,231
  DEFB 228,14,14,14,14,14,14,14
  DEFB 14,0,8,13,12,231,243,240
  DEFB 248,255,1,127,14,14,14,14
  DEFB 15,15,7,0,5,255,3,0
  DEFB 5,255,3,0,2,15,31,28
  DEFB 24,24,24,24,0,1,255,2
  DEFB 0,3,14,31,0,1,255,2
  DEFB 0,3,14,31,24,24,24,24
  DEFB 24,28,31,15,31,31,14,0
  DEFB 3,255,2,31,31,14,0,3
  DEFB 255,2
; (09 x 08) Cargo Container
  DEFB 0,17,1,2,2,4,9,19
  DEFB 23,255,1,0,1,127,255,6
  DEFB 0,1,255,7,0,1,254,255
  DEFB 5,0,1,128,64,64,160,144
  DEFB 200,232,0,28,1,2,4,5
  DEFB 39,79,159,191,63,127,255,3
  DEFB 224,192,200,200,200,200,204,255
  DEFB 1,0,7,255,1,7,3,3
  DEFB 3,3,3,3,244,242,249,252
  DEFB 254,254,255,2,0,3,128,128
  DEFB 64,32,144,0,14,1,1,9
  DEFB 19,39,39,79,159,63,63,255
  DEFB 8,199,224,255,6,240,0,1
  DEFB 255,6,3,7,255,14,208,200
  DEFB 228,242,250,249,252,254,0,6
  DEFB 128,64,2,4,9,9,19,39
  DEFB 79,8,127,255,6,8,255,7
  DEFB 8,255,7,8,255,7,8,255
  DEFB 7,8,255,7,8,255,7,8
  DEFB 32,32,144,200,228,228,242,8
  DEFB 95,95,79,47,39,23,19,11
  DEFB 255,33,248,240,248,255,5,0
  DEFB 3,240,255,4,63,31,31,63
  DEFB 255,3,250,242,242,228,228,200
  DEFB 200,144,8,5,4,2,2,1
  DEFB 1,0,1,8,255,3,127,127
  DEFB 63,191,8,255,7,8,255,7
  DEFB 8,255,7,8,255,7,8,255
  DEFB 7,8,255,2,254,254,252,252
  DEFB 253,0,1,32,32,64,64,128
  DEFB 128,0,9,159,95,79,47,39
  DEFB 23,19,11,255,40,249,250,242
  DEFB 244,228,232,200,208,0,16,9
  DEFB 5,4,2,2,1,1,0,1
  DEFB 255,4,127,127,0,1,255,7
  DEFB 0,1,255,7,0,1,255,7
  DEFB 0,1,255,5,254,254,0,1
  DEFB 255,1,144,160,32,64,64,128
  DEFB 128,0,9
; (06 x 07) Hooper
  DEFB 0,16,2,2,3,3,3,3
  DEFB 1,1,4,4,4,14,206,251
  DEFB 241,4,16,16,17,49,241,241
  DEFB 224,32,120,252,206,230,246,246
  DEFB 252,252,0,16,1,1,0,2
  DEFB 15,63,63,63,255,1,170,255
  DEFB 1,192,126,185,221,236,224,160
  DEFB 193,1,97,49,25,237,72,252
  DEFB 254,255,5,0,16,31,0,7
  DEFB 110,247,119,57,6,127,237,127
  DEFB 117,121,29,221,1,249,181,249
  DEFB 254,254,254,252,252,252,252,252
  DEFB 0,10,2,14,30,62,54,32
  DEFB 112,218,250,218,250,218,250,112
  DEFB 0,1,255,6,0,1,1,61
  DEFB 220,238,246,246,250,10,252,252
  DEFB 252,252,252,252,252,252,0,1
  DEFB 3,3,2,7,7,7,2,31
  DEFB 255,2,170,255,3,170,143,255
  DEFB 2,170,255,3,170,255,3,170
  DEFB 255,3,170,248,255,2,170,255
  DEFB 3,170,252,252,248,168,252,252
  DEFB 252,168,3,0,7,255,2,170
  DEFB 14,14,6,7,25,255,2,170
  DEFB 127,127,63,127,255,3,170,255
  DEFB 7,170,251,243,227,254,248,252
  DEFB 240,128,128,0,8,1,3,7
  DEFB 7,30,12,30,30,238,254,254
  DEFB 252,2,1,0,3,3,31,127
  DEFB 170,252,248,248,248,254,255,2
  DEFB 0,6,192,240,0,8
; (02 x 02) Wall-Mounted Plaque
  DEFB 31,127,127,255,4,213,248,254
  DEFB 254,255,4,87,128,234,255,3
  DEFB 127,127,31,9,171,255,3,254
  DEFB 254,248,0
; (01 x 11) Left Edge of Viewscreen
  DEFB 0,5,1,3,7,6,6,6
  DEFB 6,6,6,6,6,6,6,6
  DEFB 6,6,6,6,6,6,6,6
  DEFB 6,6,6,6,6,15,31,63
  DEFB 117,235,213,235,255,3,129,129
  DEFB 129,129,255,4,129,129,129,129
  DEFB 255,3,235,213,235,117,63,31
  DEFB 15,6,6,6,6,6,6,6
  DEFB 6,6,6,6,6,6,6,6
  DEFB 6,6,6,6,6,6,6,6
  DEFB 6,84
; (06 x 05) Face (shown upon Communicate command)
  DEFB 0,11,1,7,15,31,31,0
  DEFB 1,63,224,230,247,243,243,249
  DEFB 0,1
  DEFB 192,112,124,126,63,191,191,0
  DEFB 6,128,128,0,16,31,63,63
  DEFB 126,124,121,114,116,249,252,140
  DEFB 55,249,142,3,249,191,63,127
  DEFB 64,159,49,96,206,192,192,224
  DEFB 112,48,152,72,40,0,16,116
  DEFB 116,116,52,124,76,126,46,175
  DEFB 99,6,0,3,2,3,59,117
  DEFB 96,64,64,96,0,1,16,40
  DEFB 60,36,60,52,52,116,116,0
  DEFB 9,3,7,14,14,12,14,6
  DEFB 47,172,236,235,234,239,245,93
  DEFB 1,7,191,254,240,33,48,176
  DEFB 176,56,28,127,7,236,141,141
  DEFB 84,87,117,236,233,185,129,3
  DEFB 0,2,192,224,176,112,96,96
  DEFB 7,3,3,1,1,0,3,96
  DEFB 32,176,152,200,232,120,0,1
  DEFB 249,61,63,31,31,15,0,2
  DEFB 207,238,254,254,252,156,0,2
  DEFB 2,6,12,9,9,31,126,0
  DEFB 1,96,224,192,192,128,0,3
; (04 x 05) Wall-Mounted Helmet
  DEFB 0,4,255,1,254,0,1,1
  DEFB 0,4,15,63,255,2,0,4
  DEFB 199,241,248,252,0,4,255,2
  DEFB 0,2,3,3,7,7,7,4
  DEFB 5,6,255,1,252,253,252,255
  DEFB 2,28,0,1,14,110,15,120
  DEFB 224,128,8,24,0,3,128,128
  DEFB 128,128,128,6,6,2,3,1
  DEFB 5,6,6,0,4,128,128,224
  DEFB 63,24,16,1,15,31,49,96
  DEFB 224,128,128,0,3,128,128,128
  DEFB 7,3,0,6,15,224,254,0
  DEFB 1,15,25,17,19,224,9,15
  DEFB 8,15,134,230,55,224,160,32
  DEFB 112,208,48,96,224,0,8,26
  DEFB 14,3,1,0,4,124,76,103
  DEFB 190,0,4,96,192,128,0,5
; (04 x 04) Left Half of USS Pisces Picture
  DEFB 255,2,192,192,192,198,198,192
  DEFB 255,2,0,6,255,2,0,6
  DEFB 255,2,0,6,192,192,192,192
  DEFB 192,192,192,192,0,6,3,15
  DEFB 0,3,14,63,251,225,128,0
  DEFB 2,15,31,56,156,206,230,192
  DEFB 192,192,192,192,192,192,192,62
  DEFB 251,255,1,126,0,4,119,247
  DEFB 199,7,7,3,3,1,230,230
  DEFB 14,126,124,0,1,255,2,192
  DEFB 198,198,192,192,192,255,2,0
  DEFB 6,255,2,0,6,255,2,0
  DEFB 6,255,2
; (03 x 03) Transputer Base (Left Half)
  DEFB 31,0,7,255,1,251,146,255
  DEFB 1,63,15,3,1,255,2,73
  DEFB 255,5,0,9,1,1,1,1
  DEFB 1,0,2,136,255,1,41,255
  DEFB 1,41,255,1,0,6,3,31
  DEFB 127,255,1,3,11,9,255,7
  DEFB 36,255,5
; (06 x 05) Plant
  DEFB 0,13,15,31,63,0,4,96
  DEFB 248,252,204,0,7,7,0,6
  DEFB 254,255,1,0,7,128,0,8
  DEFB 51,51,1,0,2,124,254,254
  DEFB 204,206,198,3,3,225,249,252
  DEFB 15,15,31,60,60,60,108,108
  DEFB 255,1,251,249,249,121,121,121
  DEFB 96,192,224,240,240,248,248,216
  DEFB 216,0,8,255,1,239,231,71
  DEFB 7,0,3,252,204,140,204,72
  DEFB 96,32,32,108,96,224,192,128
  DEFB 0,1,63,255,1,0,6,224
  DEFB 252,8,8,0,7,15,63,111
  DEFB 78,78,28,28,0,1,240,247
  DEFB 255,3,251,243,49,17,203,227
  DEFB 247,231,183,183,255,3,223,158
  DEFB 190,190,62,255,3,127,115,121
  DEFB 121,125,0,1,128,128,128,192
  DEFB 192,192,192,29,29,1,1,0
  DEFB 4,243,243,243,227,3,0,3
  DEFB 183,148,152,8,12,6,2,0
  DEFB 1,30,24,192,192,192,128,224
  DEFB 0,1,124,124,28,0,5,192
  DEFB 64,64,0,5
; (02 x 02) Plant Pot / Part of Control Column
  DEFB 255,2,0,1,255,5,243,243
  DEFB 0,1,255,1,241,241,241,241
  DEFB 255,7,127,241,241,241,241,241
  DEFB 241,241,254,0
; (04 x 05) Balls Picture
  DEFB 255,1,188,190,255,1,251,243
  DEFB 190,156,255,2,0,3,56,124
  DEFB 230,255,2,0,3,28,62,127
  DEFB 255,2,3,3,3,3,3,3
  DEFB 192,192,192,192,192,192,192,192
  DEFB 246,254,124,56,0,1,1,3
  DEFB 7,125,121,62,28,0,1,192
  DEFB 224,240,3,3,3,3,3,3
  DEFB 3,3,192,156,190,255,1,253
  DEFB 249,190,156,7,7,3,1,0
  DEFB 4,208,144,224,192,0,4,3
  DEFB 57,125,255,1,253,249,125,57
  DEFB 192,192,192,192,192,192,192,192
  DEFB 0,1,56,124,254,250,242,124
  DEFB 56,0,8,3,3,3,3,3
  DEFB 3,3,3,192,192,192,192,192
  DEFB 192,255,2,0,1,1,1,0
  DEFB 3,255,2,0,1,140,140,0
  DEFB 3,255,2,3,99,99,3,3
  DEFB 3,255,2

; Graphics Characters Part 1
;
; All character graphics are (2 x 4). Sharon
  DEFB 0,0,33,194,55,242,62,218
  DEFB 56,206,57,198,63,254,63,254
  DEFB 31,252,7,240,14,208,24,216
  DEFB 17,232,51,236,34,100,34,100
  DEFB 35,196,51,132,17,140,25,188
  DEFB 9,152,121,176,57,128,113,128
  DEFB 1,128,1,192,0,192,0,224
  DEFB 0,224,1,192,15,128,30,0
; Sharon (Mask)
  DEFB 140,24,128,0,128,0,128,0
  DEFB 128,0,128,0,128,0,128,0
  DEFB 128,1,192,1,192,3,192,3
  DEFB 128,1,128,1,128,1,128,1
  DEFB 128,1,128,1,128,1,192,1
  DEFB 0,1,0,3,0,7,0,63
  DEFB 4,31,252,31,252,15,252,15
  DEFB 252,15,224,15,192,31,192,63
; S3 E3 / Klink
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,3,192,7,224,0,0
  DEFB 15,240,8,80,15,240,96,6
  DEFB 111,246,8,16,105,214,104,22
  DEFB 111,246,109,118,103,230,96,6
  DEFB 0,0,96,6,112,14,112,14
; S3 E3 / Klink (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 248,31,240,15,240,15,240,15
  DEFB 224,7,224,7,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 15,240,7,224,7,224,7,224
; Swiftfoot
  DEFB 0,0,3,192,15,240,31,248
  DEFB 60,60,115,142,71,66,69,70
  DEFB 100,76,115,156,56,56,31,240
  DEFB 7,128,24,48,15,224,3,128
  DEFB 0,192,1,128,3,128,3,0
  DEFB 7,0,6,0,6,112,6,248
  DEFB 7,152,7,24,0,56,1,240
  DEFB 15,230,31,142,63,252,56,112
; Swiftfoot (Mask)
  DEFB 248,31,224,7,192,3,128,1
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,1,0,1,0,1,128,3
  DEFB 192,7,192,7,192,7,224,15
  DEFB 252,31,248,31,248,63,240,63
  DEFB 240,255,240,7,240,3,240,3
  DEFB 240,3,240,3,240,3,224,0
  DEFB 192,0,128,0,128,0,128,1
; Murphy / Julie 8
  DEFB 0,0,0,0,0,0,1,224
  DEFB 3,152,7,168,7,140,7,198
  DEFB 7,254,7,230,3,248,0,252
  DEFB 4,48,6,48,6,224,6,232
  DEFB 14,104,15,8,13,152,12,216
  DEFB 14,248,0,248,12,240,8,0
  DEFB 13,176,5,176,3,176,3,48
  DEFB 3,48,2,32,7,188,7,222
; Murphy / Julie 8 (Mask)
  DEFB 255,255,255,255,252,15,248,3
  DEFB 240,3,240,1,240,0,240,0
  DEFB 240,0,240,0,240,0,240,1
  DEFB 240,1,240,7,240,3,224,3
  DEFB 224,3,224,3,224,3,224,3
  DEFB 224,3,224,3,224,3,224,7
  DEFB 224,7,224,7,240,7,248,7
  DEFB 248,7,240,1,240,0,240,0

; Graphics (Compacted) Scenery Part 2 (04 x 05) Tyme Guardian
  DEFB 0,9,15,4,4,4,4,7
  DEFB 0,2,224,192,192,192,192,192
  DEFB 0,10,60,36,63,36,63,36
  DEFB 60,127,255,2,231,231,255,2
  DEFB 127,254,255,2,51,51,255,2
  DEFB 254,0,1,120,72,248,72,248
  DEFB 72,120,0,9,55,55,55,55
  DEFB 7,7,1,0,1,112,112,112
  DEFB 112,112,112,112,0,16,3,3
  DEFB 3,3,3,3,7,6,0,1
  DEFB 128,128,128,128,128,192,192,0
  DEFB 16,119,119,0,1,127,255,2
  DEFB 240,240,254,254,0,1,254,255
  DEFB 2,7,7,0,8
; (04 x 05) Control Panel
  DEFB 127,255,1,192,207,207,192,255
  DEFB 4,0,1,255,2,0,1,255
  DEFB 4,0,1,255,2,0,1,255
  DEFB 2,254,255,1,3,243,243,3
  DEFB 255,4,192,207,207,207,207,207
  DEFB 255,2,0,1,255,1,142,6
  DEFB 6,6,255,2,0,1,255,1
  DEFB 0,1,254,254,0,1,255,2
  DEFB 3,243,243,243,243,243,207,207
  DEFB 207,207,207,207,207,207,143,255
  DEFB 1,142,6,6,6,143,255,3
  DEFB 0,1,254,254,0,1,255,2
  DEFB 243,243,243,243,243,243,243,243
  DEFB 207,207,207,207,207,207,193,193
  DEFB 128,0,1,63,63,63,63,0
  DEFB 1,128,1,0,1,252,252,252
  DEFB 252,0,1,1,243,243,243,243
  DEFB 243,243,131,131,255,3,192,207
  DEFB 192,255,5,0,1,255,1,0
  DEFB 1,255,5,0,1,255,1,0
  DEFB 1,255,5,3,243,3,255,2
; (03 x 04) Wall-Mounted Device
  DEFB 127,199,131,131,131,199,255,1
  DEFB 4,254,227,193,193,193,227,255
  DEFB 1,32,60,126,106,106,106,126
  DEFB 126,126,255,2,213,213,255,1
  DEFB 213,213,213,255,2,87,87,255
  DEFB 1,87,87,87,126,126,94,94
  DEFB 78,66,70,60,213,213,213,213
  DEFB 213,255,2,127,87,87,87,87
  DEFB 87,255,2,254,0,1,8,8
  DEFB 8,8,8,8,24,0,8,8
  DEFB 8,8,12,4,6,3,0,1
  DEFB 16,16,16,48,32,96,192,0
  DEFB 1

; Graphics Characters Part 2
;
; All character graphics are (2 x 4). Forbin
  DEFB 0,0,0,0,0,0,0,0
  DEFB 7,128,31,224,63,240,127,248
  DEFB 127,248,127,128,126,60,124,252
  DEFB 125,240,99,240,47,224,31,0
  DEFB 24,0,7,0,19,128,27,192
  DEFB 27,192,24,0,3,224,24,0
  DEFB 27,224,7,192,15,128,15,128
  DEFB 7,0,0,224,7,248,7,248
; Forbin (Mask)
  DEFB 255,255,255,255,255,255,240,63
  DEFB 192,15,128,7,0,3,0,3
  DEFB 0,3,0,1,0,1,0,1
  DEFB 0,1,0,7,0,7,128,15
  DEFB 192,127,192,63,192,31,192,31
  DEFB 192,31,192,15,192,15,192,15
  DEFB 192,7,192,15,224,31,224,63
  DEFB 224,15,240,3,240,3,240,3
; Hectorr
  DEFB 0,0,7,224,31,248,63,252
  DEFB 123,222,119,238,107,214,126,126
  DEFB 124,62,125,190,99,198,47,244
  DEFB 31,248,15,240,15,240,29,184
  DEFB 31,248,31,248,63,252,111,246
  DEFB 103,230,115,206,121,158,61,188
  DEFB 31,248,15,240,3,192,3,192
  DEFB 3,192,119,238,126,126,126,126
; Hectorr (Mask)
  DEFB 240,15,192,3,128,1,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 128,1,192,3,192,3,192,3
  DEFB 192,3,128,1,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 192,3,192,3,224,7,248,31
  DEFB 0,0,0,0,0,0,0,0

; Graphics (Compacted) Scenery Part 3 (03 x 06) Patterned Column
  DEFB 0,8,126,0,1,126,255,5
  DEFB 0,13,1,1,1,243,243,255
  DEFB 3,199,131,131,0,5,128,128
  DEFB 128,1,1,1,1,1,1,3
  DEFB 3,131,199,255,5,248,128,128
  DEFB 128,128,128,128,192,192,3,3
  DEFB 3,3,3,3,3,3,240,240
  DEFB 240,152,159,255,2,199,64,64
  DEFB 64,192,192,192,192,192,3,3
  DEFB 3,3,3,3,3,0,1,131
  DEFB 1,1,1,131,199,255,1,0
  DEFB 1,192,192,192,192,192,192,192
  DEFB 0,2,3,7,7,15,15,15
  DEFB 0,2,255,1,193,248,254,254
  DEFB 255,1,0,2,192,192,224,32
  DEFB 48,240,0,1
; (05 x 03) Picture (1)
  DEFB 255,2,192,192,192,192,205,205
  DEFB 255,2,0,4,128,192,255,2
  DEFB 0,5,7,255,2,0,5,240
  DEFB 255,2,3,3,3,3,3,3
  DEFB 192,192,192,192,192,192,192,192
  DEFB 240,120,63,0,5,31,0,1
  DEFB 255,1,0,1,63,7,7,31
  DEFB 220,0,1,254,0,1,255,2
  DEFB 128,240,3,3,3,3,243,131
  DEFB 3,3,192,192,192,192,192,192
  DEFB 255,2,0,6,255,2,0,6
  DEFB 255,2,0,6,255,2,3,3
  DEFB 3,3,3,3,255,2
; (05 x 03) Picture (2)
  DEFB 255,2,192,192,193,193,193,192
  DEFB 255,2,0,1,224,240,176,240
  DEFB 248,255,2,0,6,255,2,0
  DEFB 1,28,62,54,62,60,255,2
  DEFB 3,3,3,3,3,3,192,192
  DEFB 192,192,192,192,192,192,13,3
  DEFB 3,0,1,15,15,0,2,254
  DEFB 205,205,0,1,255,3,0,1
  DEFB 96,128,128,0,1,240,240,0
  DEFB 2,3,3,3,3,3,3,3
  DEFB 3,192,192,192,192,192,192,255
  DEFB 2,0,6,255,2,0,6,255
  DEFB 2,0,6,255,2,3,3,3
  DEFB 3,3,3,255,2
; (03 x 04) Left half of Reel-to-Reel Tape Device
  DEFB 3,7,5,5,5,5,5,5
  DEFB 255,2,128,182,182,191,128,255
  DEFB 3,0,1,219,219,255,1,0
  DEFB 1,255,1,5,5,5,5,5
  DEFB 5,5,5,255,1,248,224,192
  DEFB 128,160,112,120,255,1,63,207
  DEFB 247,251,251,253,253,5,5,5
  DEFB 5,5,5,5,5,124,120,96
  DEFB 128,128,192,224,248,1,1,129
  DEFB 195,227,247,207,0,1,5,5
  DEFB 5,5,5,6,3,0,1,255
  DEFB 1,252,248,248,248,252,255,1
  DEFB 0,1,255,1,124,56,56,56
  DEFB 124,255,1,0,1
; (03 x 05) Left half of Tyme Guardians' Symbol (1)
  DEFB 0,4,1,3,7,15,0,1
  DEFB 15,63,255,4,248,0,1,240
  DEFB 248,252,252,252,240,0,1,31
  DEFB 31,63,63,126,126,126,126,224
  DEFB 128,0,2,1,3,7,15,0
  DEFB 1,15,63,255,4,248,126,126
  DEFB 126,126,127,63,63,31,31,31
  DEFB 63,63,126,126,254,254,224,192
  DEFB 0,1,1,1,3,3,7,31
  DEFB 15,7,3,1,0,3,254,254
  DEFB 254,254,255,2,63,31,7,15
  DEFB 15,15,7,3,128,192,0,8
  DEFB 31,15,7,3,1,0,3,224
  DEFB 248,255,4,63,15,1
; (06 x 03) Tyme Guardians' Symbol (2)
  DEFB 0,4,31,63,63,63,0,4
  DEFB 255,4,0,4,63,3,1,60
  DEFB 0,4,60,128,192,252,0,4
  DEFB 127,127,127,127,0,4,248,252
  DEFB 252,252,63,63,31,31,15,7
  DEFB 3,1,128,192,224,241,251,255
  DEFB 3,0,2,126,255,2,231,199
  DEFB 135,0,2,63,127,127,123,121
  DEFB 120,0,1,1,3,199,239,255
  DEFB 3,252,252,248,248,240,224,192
  DEFB 128,0,5,1,1,0,1,126
  DEFB 0,3,255,4,15,31,63,126
  DEFB 254,252,248,192,120,124,126,63
  DEFB 63,31,15,1,62,0,3,255
  DEFB 4,0,5,128,128,0,1,128
; (01 x 02 / 02 x 01) Unknown / Unused Graphic or
  DEFB 192,252,0,4,127,127,127,127
  DEFB 0,4,248,252

; Graphics Magic Knight
;
; All Magic Knight frames are (3 x 4). Facing Right, Frame 1
  DEFB 0,0,0,0,0,0,7,224
  DEFB 0,31,240,0,62,15,0,113
  DEFB 255,128,14,73,128,114,73,128
  DEFB 98,73,128,126,73,128,7,201
  DEFB 128,48,127,0,31,128,0,15
  DEFB 254,0,3,254,0,0,240,0
  DEFB 1,224,0,3,48,0,3,56
  DEFB 0,3,24,0,3,156,0,3
  DEFB 220,0,3,220,0,3,220,0
  DEFB 3,248,0,1,240,0,0,224
  DEFB 0,0,224,0,0,240,0,1
  DEFB 252,0,1,254,0,0,254,0
; Facing Right, Frame 2
  DEFB 0,0,0,0,0,0,1,248
  DEFB 0,7,252,0,15,131,192,28
  DEFB 127,224,3,146,96,28,146,96
  DEFB 24,146,96,31,146,96,1,242
  DEFB 96,12,31,192,7,224,0,3
  DEFB 255,128,0,255,128,0,60,0
  DEFB 0,120,0,0,204,0,0,204
  DEFB 0,0,206,0,0,207,0,0
  DEFB 207,0,0,223,0,0,255,0
  DEFB 0,62,0,0,124,0,0,123
  DEFB 128,0,251,128,3,143,128,3
  DEFB 143,128,3,207,0,3,207,0
; Facing Right, Frame 3
  DEFB 0,0,0,0,0,0,0,126
  DEFB 0,1,255,0,3,224,240,7
  DEFB 31,248,0,228,152,7,36,152
  DEFB 6,36,152,7,228,152,0,124
  DEFB 152,3,7,240,1,248,0,0
  DEFB 255,224,0,63,224,0,15,0
  DEFB 0,30,0,0,51,0,0,51
  DEFB 0,0,51,128,0,51,192,0
  DEFB 61,192,0,61,192,0,61,192
  DEFB 1,223,152,1,223,56,1,239
  DEFB 120,0,239,248,0,241,224,0
  DEFB 113,224,0,49,192,0,49,192
; Facing Right, Frame 4
  DEFB 0,0,0,0,0,0,0,31
  DEFB 128,0,127,192,0,248,60,1
  DEFB 199,254,0,57,38,1,201,38
  DEFB 1,137,38,1,249,38,0,31
  DEFB 38,0,193,252,0,126,0,0
  DEFB 63,248,0,15,248,0,3,192
  DEFB 0,7,128,0,12,192,0,12
  DEFB 64,0,14,96,0,14,112,0
  DEFB 15,112,0,15,240,0,15,240
  DEFB 0,15,224,0,111,192,0,123
  DEFB 184,0,123,56,0,124,248,0
  DEFB 60,248,0,12,240,0,12,240
; Facing Left, Frame 4
  DEFB 0,0,0,0,0,0,1,248
  DEFB 0,3,254,0,60,31,0,127
  DEFB 227,128,100,156,0,100,147,128
  DEFB 100,145,128,100,159,128,100,248
  DEFB 0,63,131,0,0,126,0,31
  DEFB 252,0,31,240,0,3,192,0
  DEFB 1,224,0,3,48,0,2,48
  DEFB 0,6,112,0,14,112,0,14
  DEFB 240,0,15,240,0,15,240,0
  DEFB 7,240,0,3,246,0,29,222
  DEFB 0,28,222,0,31,62,0,31
  DEFB 60,0,15,48,0,15,48,0
; Facing Left, Frame 3
  DEFB 0,0,0,0,0,0,0,126
  DEFB 0,0,255,128,15,7,192,31
  DEFB 248,224,25,39,0,25,36,224
  DEFB 25,36,96,25,39,224,25,62
  DEFB 0,15,224,192,0,31,128,7
  DEFB 255,0,7,252,0,0,240,0
  DEFB 0,120,0,0,204,0,0,204
  DEFB 0,1,204,0,3,204,0,3
  DEFB 188,0,3,188,0,3,188,0
  DEFB 25,251,128,28,251,128,30,247
  DEFB 128,31,247,0,7,143,0,7
  DEFB 142,0,3,140,0,3,140,0
; Facing Left, Frame 2
  DEFB 0,0,0,0,0,0,0,31
  DEFB 128,0,63,224,3,193,240,7
  DEFB 254,56,6,73,192,6,73,56
  DEFB 6,73,24,6,73,248,6,79
  DEFB 128,3,248,48,0,7,224,1
  DEFB 255,192,1,255,0,0,60,0
  DEFB 0,30,0,0,51,0,0,51
  DEFB 0,0,115,0,0,243,0,0
  DEFB 243,0,0,251,0,0,255,0
  DEFB 0,124,0,0,62,0,1,222
  DEFB 0,1,223,0,1,241,192,1
  DEFB 241,192,0,243,192,0,243,192
; Facing Left, Frame 1
  DEFB 0,0,0,0,0,0,0,7
  DEFB 224,0,15,248,0,240,124,1
  DEFB 255,142,1,146,112,1,146,78
  DEFB 1,146,70,1,146,126,1,147
  DEFB 224,0,254,12,0,1,248,0
  DEFB 127,240,0,127,192,0,15,0
  DEFB 0,7,128,0,12,192,0,28
  DEFB 192,0,24,192,0,57,192,0
  DEFB 59,192,0,59,192,0,59,192
  DEFB 0,31,192,0,15,128,0,7
  DEFB 0,0,7,0,0,15,0,0
  DEFB 63,128,0,127,128,0,127,0
; Facing Right, Frame 1 (Mask)
  DEFB 255,255,255,240,15,255,192,7
  DEFB 255,128,0,255,0,0,63,0
  DEFB 0,63,0,0,63,0,0,63
  DEFB 0,0,63,0,0,63,0,0
  DEFB 63,128,0,63,192,0,255,224
  DEFB 0,255,240,0,255,252,0,255
  DEFB 252,15,255,248,7,255,248,3
  DEFB 255,248,1,255,248,1,255,248
  DEFB 1,255,248,1,255,248,1,255
  DEFB 248,3,255,252,7,255,254,15
  DEFB 255,254,15,255,254,3,255,252
  DEFB 1,255,252,0,255,252,0,255
; Facing Right, Frame 2 (Mask)
  DEFB 255,255,255,252,3,255,240,1
  DEFB 255,224,0,63,192,0,15,192
  DEFB 0,15,192,0,15,192,0,15
  DEFB 192,0,15,192,0,15,192,0
  DEFB 15,224,0,15,240,0,63,248
  DEFB 0,63,252,0,63,255,0,63
  DEFB 255,0,255,254,0,255,254,0
  DEFB 255,254,0,127,254,0,127,254
  DEFB 0,127,254,0,127,254,0,127
  DEFB 255,128,255,255,0,127,255,0
  DEFB 63,248,0,63,248,0,63,248
  DEFB 32,63,248,0,127,248,0,127
; Facing Right, Frame 3 (Mask)
  DEFB 255,255,255,255,0,255,252,0
  DEFB 127,248,0,15,240,0,3,240
  DEFB 0,3,240,0,3,240,0,3
  DEFB 240,0,3,240,0,3,240,0
  DEFB 3,248,0,3,252,0,15,254
  DEFB 0,15,255,0,15,255,192,15
  DEFB 255,192,255,255,128,127,255,128
  DEFB 127,255,128,63,255,128,31,255
  DEFB 128,31,255,128,31,254,0,7
  DEFB 252,0,3,252,0,3,252,0
  DEFB 3,252,0,3,254,0,7,255
  DEFB 4,15,255,132,31,255,132,31
; Facing Right, Frame 4 (Mask)
  DEFB 255,255,255,255,192,63,255,0
  DEFB 31,254,0,3,252,0,0,252
  DEFB 0,0,252,0,0,252,0,0
  DEFB 252,0,0,252,0,0,252,0
  DEFB 0,254,0,0,255,0,3,255
  DEFB 128,3,255,192,3,255,240,3
  DEFB 255,240,63,255,224,31,255,224
  DEFB 31,255,224,15,255,224,7,255
  DEFB 224,7,255,224,7,255,224,7
  DEFB 255,128,15,255,0,7,255,0
  DEFB 3,255,0,3,255,0,3,255
  DEFB 128,3,255,192,7,255,224,7
; Facing Left, Frame 4 (Mask)
  DEFB 255,255,255,252,3,255,248,0
  DEFB 255,192,0,127,0,0,63,0
  DEFB 0,63,0,0,63,0,0,63
  DEFB 0,0,63,0,0,63,0,0
  DEFB 63,0,0,127,192,0,255,192
  DEFB 1,255,192,3,255,192,15,255
  DEFB 252,15,255,248,7,255,248,7
  DEFB 255,240,7,255,224,7,255,224
  DEFB 7,255,224,7,255,224,7,255
  DEFB 240,1,255,224,0,255,192,0
  DEFB 255,192,0,255,192,0,255,192
  DEFB 1,255,224,3,255,224,7,255
; Facing Left, Frame 3 (Mask)
  DEFB 255,255,255,255,0,255,254,0
  DEFB 63,240,0,31,192,0,15,192
  DEFB 0,15,192,0,15,192,0,15
  DEFB 192,0,15,192,0,15,192,0
  DEFB 15,192,0,31,240,0,63,240
  DEFB 0,127,240,0,255,240,3,255
  DEFB 255,3,255,254,1,255,254,1
  DEFB 255,252,1,255,248,1,255,248
  DEFB 1,255,248,1,255,224,0,127
  DEFB 192,0,63,192,0,63,192,0
  DEFB 63,192,0,63,224,0,127,240
  DEFB 32,255,248,33,255,248,33,255
; Facing Left, Frame 2 (Mask)
  DEFB 255,255,255,255,192,63,255,128
  DEFB 15,252,0,7,240,0,3,240
  DEFB 0,3,240,0,3,240,0,3
  DEFB 240,0,3,240,0,3,240,0
  DEFB 3,240,0,7,252,0,15,252
  DEFB 0,31,252,0,63,252,0,255
  DEFB 255,0,255,255,0,127,255,0
  DEFB 127,254,0,127,254,0,127,254
  DEFB 0,127,254,0,127,254,0,127
  DEFB 255,1,255,254,0,255,252,0
  DEFB 255,252,0,31,252,0,31,252
  DEFB 4,31,254,0,31,254,0,31
; Facing Left, Frame 1 (Mask)
  DEFB 255,255,255,255,240,15,255,224
  DEFB 3,255,0,1,252,0,0,252
  DEFB 0,0,252,0,0,252,0,0
  DEFB 252,0,0,252,0,0,252,0
  DEFB 0,252,0,1,255,0,3,255
  DEFB 0,7,255,0,15,255,0,63
  DEFB 255,240,63,255,224,31,255,192
  DEFB 31,255,128,31,255,128,31,255
  DEFB 128,31,255,128,31,255,128,31
  DEFB 255,192,31,255,224,63,255,240
  DEFB 127,255,240,127,255,192,127,255
  DEFB 128,63,255,0,63,255,0,63

; Graphics (01 x 96) Character Set
  DEFB 0,0,0,0,0,0,0,0    ; (032) - SPACE
  DEFB 0,48,48,48,48,0,48,48 ; (033) - !
  DEFB 0,108,108,0,0,0,0,0 ; (034) - "
  DEFB 0,248,252,14,14,252,248,0 ; (035) - Room Name Bar Cap (right end)
  DEFB 0,31,63,112,112,63,31,0 ; (036) - Room Name Bar Cap (left end)
  DEFB 0,98,100,8,16,38,70,0 ; (037) - %
  DEFB 0,56,108,59,126,108,127,59 ; (038) - &
  DEFB 0,12,24,16,0,0,0,0 ; (039) - '
  DEFB 0,12,24,24,24,24,12,4 ; (040) - (
  DEFB 0,48,24,24,24,24,48,32 ; (041) - )
  DEFB 0,0,36,24,126,24,36,0 ; (042) - *
  DEFB 0,24,24,126,126,24,24,0 ; (043) - +
  DEFB 0,0,0,0,0,12,12,24 ; (044) - ,
  DEFB 0,0,0,62,62,0,0,0  ; (045) - -
  DEFB 0,0,0,0,0,0,24,24  ; (046) - .
  DEFB 0,6,14,28,56,112,96,0 ; (047) - /
  DEFB 0,60,126,110,126,118,126,60 ; (048) - 0
  DEFB 0,28,60,44,12,12,63,63 ; (049) - 1
  DEFB 0,60,126,14,60,112,126,126 ; (050) - 2
  DEFB 0,60,126,102,12,102,126,60 ; (051) - 3
  DEFB 0,28,60,108,126,126,12,12 ; (052) - 4
  DEFB 0,126,126,96,124,6,126,124 ; (053) - 5
  DEFB 0,60,124,96,124,102,126,60 ; (054) - 6
  DEFB 0,126,126,14,28,24,24,24 ; (055) - 7
  DEFB 0,60,126,102,60,102,126,60 ; (056) - 8
  DEFB 0,60,126,102,62,6,62,60 ; (057) - 9
  DEFB 0,0,24,24,0,0,24,24 ; (058) - :
  DEFB 0,0,24,24,0,24,24,48 ; (059) - ;
  DEFB 0,0,6,12,24,24,12,6 ; (060) - <
  DEFB 0,0,0,62,0,62,0,0  ; (061) - =
  DEFB 0,0,96,48,24,24,48,96 ; (062) - >
  DEFB 0,60,110,30,28,0,24,24 ; (063) - ?
  DEFB 0,60,126,227,223,227,126,60 ; (064) - COPYRIGHT
  DEFB 0,60,126,102,126,126,102,102 ; (065) - A
  DEFB 0,124,126,102,124,102,126,124 ; (066) - B
  DEFB 0,60,126,102,96,102,126,60 ; (067) - C
  DEFB 0,120,124,110,102,110,124,120 ; (068) - D
  DEFB 0,126,126,96,124,96,126,126 ; (069) - E
  DEFB 0,126,126,96,124,124,96,96 ; (070) - F
  DEFB 0,62,126,96,110,102,126,60 ; (071) - G
  DEFB 0,102,102,126,126,102,102,102 ; (072) - H
  DEFB 0,126,126,24,24,24,126,126 ; (073) - I
  DEFB 0,6,6,6,102,102,126,60 ; (074) - J
  DEFB 0,110,124,120,124,110,102,102 ; (075) - K
  DEFB 0,96,96,96,96,96,126,126 ; (076) - L
  DEFB 0,198,254,254,214,198,198,198 ; (077) - M
  DEFB 0,102,118,126,110,102,102,102 ; (078) - N
  DEFB 0,60,126,102,102,102,126,60 ; (079) - O
  DEFB 0,124,126,102,126,124,96,96 ; (080) - P
  DEFB 0,60,126,102,118,110,126,60 ; (081) - Q
  DEFB 0,124,126,102,124,126,102,102 ; (082) - R
  DEFB 0,60,124,96,60,6,126,124 ; (083) - S
  DEFB 0,254,254,48,48,48,48,48 ; (084) - T
  DEFB 0,102,102,102,102,102,126,60 ; (085) - U
  DEFB 0,102,102,102,102,102,60,24 ; (086) - V
  DEFB 0,102,102,102,102,126,126,36 ; (087) - W
  DEFB 0,231,255,60,60,126,231,195 ; (088) - X
  DEFB 0,195,231,126,60,24,24,24 ; (089) - Y
  DEFB 0,126,126,28,56,112,126,126 ; (090) - Z
  DEFB 255,255,0,120,88,88,88,88 ; (091) - Railings (USS Pisces Bridge)
  DEFB 255,0,255,255,0,255,255,255 ; (092) - USS Pisces Floor / bottom of
                                   ; transporter pad
  DEFB 0,255,255,0,0,255,255,0 ; (093) - Room Name Bar Body
  DEFB 0,0,127,255,255,0,63,0 ; (094) - Unused
  DEFB 0,0,255,255,255,0,255,0 ; (095) - Unused
  DEFB 0,36,126,36,36,126,36,0 ; (096) - #
  DEFB 126,126,126,0,239,239,239,0 ; (097) - Unused
  DEFB 31,103,207,207,207,103,31,0 ; (098) - Unused
  DEFB 240,252,254,254,254,252,240,0 ; (099) - Unused
  DEFB 153,0,34,8,160,4,24,146 ; (100) - Floor (Retreat / Monopole)
  DEFB 145,0,20,193,73,32,132,1 ; (101) - Unused
  DEFB 73,24,32,5,16,68,0,153 ; (102) - Unused
  DEFB 128,33,4,146,131,40,0,137 ; (103) - Unused
  DEFB 90,60,118,110,118,110,60,90 ; (104) - Unused
  DEFB 24,60,118,110,118,110,60,24 ; (105) - Unused
  DEFB 0,0,0,0,0,0,0,0    ; (106) - Unused
  DEFB 0,0,0,0,0,0,0,0    ; (107) - Unused
  DEFB 126,126,102,195,24,60,255,0 ; (108) - Starbase 1 Floor
  DEFB 255,60,24,195,102,126,60,129 ; (109) - Outpost Floor
  DEFB 126,66,153,36,36,153,66,126 ; (110) - Control Column Floor
  DEFB 255,85,85,170,170,85,85,170 ; (111) - Life Boat Floor
  DEFB 255,51,51,204,204,51,51,204 ; (112) - Unused
  DEFB 255,68,238,68,187,68,238,68 ; (113) - Unused
  DEFB 0,0,0,0,0,0,0,0    ; (114) - Unused
  DEFB 0,0,0,0,0,0,0,0    ; (115) - Unused
  DEFB 255,255,0,0,0,255,255,0 ; (116) - Window border (top edge)
  DEFB 0,255,255,0,0,0,255,255 ; (117) - Window border (bottom edge)
  DEFB 198,198,198,198,198,198,198,198 ; (118) - Window border (left edge)
  DEFB 99,99,99,99,99,99,99,99 ; (119) - Window border (right edge)
  DEFB 252,254,15,31,59,243,227,99 ; (120) - Window border (top right corner)
  DEFB 99,227,243,59,31,15,254,252 ; (121) - Window border (bottom right
                                   ; corner)
  DEFB 198,199,207,220,248,240,127,63 ; (122) - Window border (bottom left
                                      ; corner)
  DEFB 63,127,240,248,220,207,199,198 ; (123) - Window border (top left corner)
  DEFB 130,212,72,37,33,70,148,148 ; (124) - Unused
  DEFB 0,16,56,84,16,16,16,0 ; (125) - ^
  DEFB 0,28,62,112,124,48,126,126 ; (126) - £
  DEFB 224,128,239,41,239,8,8,8 ; (127) - SP (used to denote SPACE in Current
                                ; Keyboard Controls text)

; Interrupt Routine (Jump 2)
;
; Note - original values here are 16, 16, 16. These are modified to the JP
; instruction by instructions between 26655 and 26663
  DEFB 16,16,16           ; Jump to main part of interrupt routine at 53479

; Unused
  DEFB 0,0,66,0,0,0,0,0

; Interrupt Routine (Jump 1)
;
; Note - original value at 65535 is 0. This is modified to the JR instruction
; by instruction at 26652. The operand comes from next byte (location 0 in
; ROM.)
  NOP                     ; Jump to next part of interrupt routine

    SAVESNA "main.sna", main