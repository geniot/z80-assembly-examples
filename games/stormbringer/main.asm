    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48

  ORG 23296

; Miscellaneous Data 1
  DEFB 0,0                ; Temporary storage (e.g. scrolling graphics)
  DEFB 0                  ; Terrain Interaction Parameter Painting Bitmap for
                          ; 2x2 block currently being drawn

; Temporary Storage Area for Background Graphics
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0

; Unused
  DEFB 0

; Miscellaneous Data 2
  DEFB 0                  ; Unused (see trivia)
  DEFB 0                  ; Wish Pending Flag (index of last object (egg)
                          ; dropped down the Wishing Well)

; Unused
  DEFB 0

; Miscellaneous Data 3
  DEFB 0                  ; Character Is Incoming Flag

; Table of Glowing Attribute File Addresses
;
; Up to fifteen WORDs can be stored here. Each entry is an address in Attribute
; File and represents a character block on the screen that is glowing (e.g.
; area of floor that leads to lower floor, flames etc.)
  DEFW 0                  ; Glow 1
  DEFW 0                  ; Glow 2
  DEFW 0                  ; Glow 3
  DEFW 0                  ; Glow 4
  DEFW 0                  ; Glow 5
  DEFW 0                  ; Glow 6
  DEFW 0                  ; Glow 7
  DEFW 0                  ; Glow 8
  DEFW 0                  ; Glow 9
  DEFW 0                  ; Glow 10
  DEFW 0                  ; Glow 11
  DEFW 0                  ; Glow 12
  DEFW 0                  ; Glow 13
  DEFW 0                  ; Glow 14
  DEFW 0                  ; Glow 15

; Miscellaneous Data 4
;
; The following byte keeps track of the number of times the text printing
; routine calls itself, in printing common words as part of a higher-level
; string.
  DEFB 0                  ; Text Printing Routine Recursion Depth Counter

; Unused
  DEFB 0,0,0

; Main Lever Flags
;
; Seven bits, each one corresponding to a Main Lever. The eighth bit is unused.
  DEFB 0

; Off-White Knight Sent To Sleep Flag
;
; This value is normally either 0 or 255. A value of 255 indicates that
; Off-White Knight has had the Magic Missile thrown at him.
  DEFB 0

; Miscellaneous Data 5
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
  DEFW 0                  ; Pointer to entry in Table of Display File Addresses
                          ; for pixel row at Magic Knight's current
                          ; y-coordinate
  DEFB 0                  ; Temporary store for Magic Knight's x-coordinate in
                          ; characters
  DEFB 0                  ; Temporary store for Magic Knight's x-coordinate in
                          ; characters (stored by instruction at 61897 but
                          ; otherwise unused)
  DEFB 0                  ; Temporary store for Magic Knight's y-coordinate in
                          ; pixels (stored by instruction at 61903 but
                          ; otherwise unused)
  DEFB 0                  ; Magic Knight Facing Left Flag
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

; Table of Characters in Room of Interest
;
; List of characters in a particular room, as set by the routine at 46408
  DEFB 0,0,0,0,0,0,0,0

; Miscellaneous Data 6
  DEFB 0,0,0,0,0          ; Storage space for ASCII string converted from
                          ; numeric value

; Unused
  DEFB 0

; Miscellaneous Data 7
  DEFB 0                  ; Compass Glow Update Flag (see trivia)
  DEFB 0                  ; Do Not Draw Axes Flag
  DEFB 0                  ; Current Disquise
  DEFB 0                  ; Robin Has Been Paid Flag

; Unused
  DEFB 0

; Miscellaneous Data 8
  DEFB 0                  ; Redraw Magic Knight On Next Interrupt Flag
  DEFW 0                  ; Store for address of current position in Magic
                          ; Knight's y-velocities sequence table at 49019
  DEFB 0                  ; x-coordinate of graphic to draw
  DEFB 0                  ; y-coordinate of graphic to draw
  DEFB 0                  ; Bonus Score
  DEFW 0                  ; Store for address of graphic data
  DEFB 0                  ; Store for pixel row counter

; Vertical and Horizontal Mirror Flags
;
; Used by the routines at 61214, 61236, 61267, 61297, 61336, 61418 and 61521 in
; graphic / room drawing. When the Vertical Mirror Flag is set, the graphic is
; reflected in a vertical mirror (i.e. left and right are swapped). When the
; Horizontal Mirror Flag is set, the graphic is reflected in a horizontal
; mirror (i.e. top and bottom are swapped).
  DEFB 0

; Miscellaneous Data 9
  DEFB 0                  ; Magic Knight's temporary movement flags
  DEFB 0                  ; Drawing Layout Data Fragment Flag
  DEFB 0,0                ; Temporary store for current position in room layout
                          ; data (fragment drawing)
  DEFB 0                  ; Index of character whose turn it is to be updated
  DEFB 0                  ; Initial y-coordinate of top of hand cursor relative
                          ; to current window (characters)

; Time Data
  DEFB 0                  ; Current Time Left - game hours (5 real-time minutes
                          ; per game hour)
  DEFB 0                  ; Minute Counter (Time Elapsed since last "hour")
  DEFB 0                  ; Second Counter (Time Elapsed since last minute)
  DEFB 0                  ; 1/50 Second Counter (Time Elapsed since last
                          ; second)

; Draw 2x1 Blocks Flag
;
; Flag that determines whether or not to only draw the top two characters in
; 2x2 blocks. The instructions between 41347 and 41351 inclusive are set up to
; skip rendering of the lower two character cells in a 2x2 block if this value
; is not zero, however this flag is never modified, meaning that 2x1 blocks are
; never drawn.
  DEFB 0

; Miscellaneous Data 10
  DEFB 0                  ; Current INK Colour of Glowing Blocks
  DEFW 0                  ; Temporary store for coordinates for 2x2 block
                          ; drawing
  DEFB 0                  ; Current progress through cave (0 = rightmost room)
  DEFB 0                  ; Index of next object to be laid by Chicken

; Unused
  DEFB 0,0,0,0

; y- and x- coordinates of top-left corner of currently glowing Locate Compass
; sector
;
; (See trivia)
  DEFB 0,0

; Miscellaneous Data 11
  DEFB 0                  ; Temporary store for an object's Terrain Interaction
                          ; Parameter

; Magic Knight Movement Flags
;
; Bitwise flags which determine which direction(s) Magic Knight cannot
; currently move (i.e. set means can't move). The bits are as follows:
  DEFB 0

; Miscellaneous Data 12
  DEFB 0                  ; Height available to Menu Hand Cursor to move down
                          ; (pixels)
  DEFB 0                  ; x-coordinate of left-most character in a row of
                          ; menu text (characters)
  DEFB 0                  ; y-coordinate of "finger" on hand-cursor
                          ; (characters)
  DEFB 0                  ; Menu hand-cursor's y-coordinate (pixels)
  DEFB 0                  ; Current y-coordinate of hand cursor relative to its
                          ; starting position (pixels)

; Animate Puff of Smoke Flag
;
; +-----------------+-----------------------------+
; | Value           | Effect                      |
; +-----------------+-----------------------------+
; | 0               | Reset (don't animate smoke) |
; | Any other value | Set (animate smoke)         |
; +-----------------+-----------------------------+
  DEFB 0

; Miscellaneous Data 13
  DEFB 0                  ; Attribute of interior of current window, i.e.
                          ; background / foreground colours of contents
  DEFB 0                  ; Magic Knight's predicted x-coordinate (used in
                          ; routine at 38585)
  DEFB 0                  ; Magic Knight's predicted y-coordinate (used in
                          ; routine at 38585)
  DEFB 0                  ; Current Password Number
  DEFB 0                  ; Terrain interaction parameter to apply for 2x2
                          ; block currently being drawn
  DEFB 0                  ; Unused (see trivia)
  DEFB 0                  ; Store for currently active keyboard press /
                          ; joystick action

; Visited Room Flags
;
; Fifty-two bytes, one for each room in the game. At the start of the game,
; these are all reset (i.e. zero). Each time Magic Knight enters a room for the
; first time, the flag corresponding to that room is set (to 1). These flags
; are used in calculating percentage completion.
  DEFB 0                  ; (00) - Limbo
  DEFB 0                  ; (01) - Outdoors, 0 (Bearwoolf's Hoard)
  DEFB 0                  ; (02) - Outdoors, 1 (Bearwoolf's Cave)
  DEFB 0                  ; (03) - Outdoors, 2 (Beware Bearwoolf)
  DEFB 0                  ; (04) - Outdoors, 3 (The Spooky Forest, 1)
  DEFB 0                  ; (05) - Outdoors, 4
  DEFB 0                  ; (06) - Outdoors, 5 (The Spooky Forest, 2)
  DEFB 0                  ; (07) - Outdoors, 6 (The Sword in the Concrete)
  DEFB 0                  ; (08) - Outdoors, 7 (Robin's Little Hut)
  DEFB 0                  ; (09) - Outdoors, 8 (Exit from Limbo)
  DEFB 0                  ; (10) - Outdoors, 9 (More Spooky Forest)
  DEFB 0                  ; (11) - Outdoors, 10 (Entwood)
  DEFB 0                  ; (12) - Outdoors, 11 (The Spooky Forest, 3)
  DEFB 0                  ; (13) - Outdoors, 12 (The Spooky Forest, 4)
  DEFB 0                  ; (14) - Outdoors, 13 (Wishing Well)
  DEFB 0                  ; (15) - Outdoors, 14
  DEFB 0                  ; (16) - Outdoors, 15 (The Castle Entrance)
  DEFB 0                  ; (17) - Castle Ground Floor, 0 (One Axe Room)
  DEFB 0                  ; (18) - Castle Ground Floor, 1 (Indoor Bowling
                          ; Green)
  DEFB 0                  ; (19) - Castle Ground Floor, 2
  DEFB 0                  ; (20) - Castle Ground Floor, 3
  DEFB 0                  ; (21) - Castle Ground Floor, 4 (More Axe Problems)
  DEFB 0                  ; (22) - Castle Ground Floor, 5 (Even More Axes)
  DEFB 0                  ; (23) - Castle Ground Floor, 6 (The First Jump
                          ; Chute)
  DEFB 0                  ; (24) - Castle First Floor, 0 (Main Lever 7)
  DEFB 0                  ; (25) - Castle First Floor, 1 (Main Lever 6)
  DEFB 0                  ; (26) - Castle First Floor, 2 (Security Door & Main
                          ; Lever 5)
  DEFB 0                  ; (27) - Castle First Floor, 3 (Main Lever 4)
  DEFB 0                  ; (28) - Castle First Floor, 4 (Main Lever 3)
  DEFB 0                  ; (29) - Castle First Floor, 5 (Main Lever 2)
  DEFB 0                  ; (30) - Castle First Floor, 6 (Main Lever 1)
  DEFB 0                  ; (31) - Castle Second Floor, 0 (The Broken Teleport)
  DEFB 0                  ; (32) - Castle Second Floor, 1 (Terrible Twins)
  DEFB 0                  ; (33) - Castle Second Floor, 2 (The Guardian
                          ; Statues)
  DEFB 0                  ; (34) - Castle Second Floor, 3 (One Way Corridor, 1)
  DEFB 0                  ; (35) - Castle Second Floor, 4 (One Way Corridor, 2)
  DEFB 0                  ; (36) - Castle Second Floor, 5 (One Way Corridor, 3)
  DEFB 0                  ; (37) - Castle Second Floor, 6
  DEFB 0                  ; (38) - Castle Third Floor, 0 (Big White Statue)
  DEFB 0                  ; (39) - Castle Third Floor, 1
  DEFB 0                  ; (40) - Castle Third Floor, 2 (Teleport Room, 1)
  DEFB 0                  ; (41) - Castle Third Floor, 3 (One Way Corridor, 4)
  DEFB 0                  ; (42) - Castle Third Floor, 4 (One Way Corridor, 5)
  DEFB 0                  ; (43) - Castle Third Floor, 5 (One Way Corridor, 6)
  DEFB 0                  ; (44) - Castle Third Floor, 6
  DEFB 0                  ; (45) - Spaceship, 0 (The Control Room)
  DEFB 0                  ; (46) - Spaceship, 1 (Many Screened Room)
  DEFB 0                  ; (47) - Spaceship, 2 (Teleport Room, 2)
  DEFB 0                  ; (48) - Spaceship, 3
  DEFB 0                  ; (49) - Spaceship, 4 (The Power Plant)
  DEFB 0                  ; (50) - Spaceship, 5
  DEFB 0                  ; (51) - Spaceship, 6

; Unused
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0
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

; Miscellaneous Data 14
  DEFB 0                  ; Storm Cloud's actual current x-coordinate in its
                          ; current room
  DEFB 0                  ; Storm Cloud's apparent (i.e. for drawing) current
                          ; x-coordinate in its current room

; Magic Knight's current room
  DEFB 0

; Index of Required Disquise
;
; Index of disquise required in the current game in order to enter the Castle.
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

; Attribute File address for Virtual Text Cursor
  DEFW 0

; Miscellaneous Data 15
  DEFW 0                  ; Address in Terrain Interaction Data at 23808 for
                          ; 2x2 block currently being drawn
  DEFW 0                  ; Temporary storage used by the routine at 63740
                          ; (Redefine Keyboard Controls)
  DEFB 0                  ; Index of current Crystal Ball substring
  DEFB 0                  ; Index of current Scroll substring
  DEFB 0                  ; Storm Cloud's current room
  DEFB 0                  ; Index of Current Command
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0

; Cheat Mode Enabled Flag
;
; See trivia
  DEFB 0                  ; Cheat Mode Enabled Flag / NMIADD (LSB)
  DEFB 0,0,0,0,0

; System Data / BASIC Program
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0

; Basic loader
;
; The basic loader is set to auto-run from line 0. Line 30 loads the loading
; screen, and a block of code of length 40360 bytes to address 25176. This code
; block contains the main game code, and after loading it, we jump to the
; start-up routine at 37632.
  DEFB 0,10,149           ; 10 CLEAR 25170: PAPER 0: BORDER 0: INK 7: BRIGHT 1:
                          ; CLS : PRINT BRIGHT 1; INK 7;AT 9,3;"STORMBRINGER 48
                          ; IS LOADING";AT 12,10;"PLEASE WAIT" 20 PAPER 8: INK
                          ; 8: BRIGHT 8: OVER 1 30 BEEP .1,1: BEEP .1,2: BEEP
                          ; .1,3: BEEP .1,4: BEEP .1,5: PRINT AT 0,0;: LOAD
                          ; ""CODE 16384: PRINT AT 0,0;: LOAD ""CODE 40
                          ; RANDOMIZE USR 37632
  DEFB 0,253,50,53,49
  DEFB 55,48,14
  DEFB 0,0,82,98,0
  DEFB 58,218,48
  DEFB 14,0,0,0,0
  DEFB 0,58,231
  DEFB 48,14,0,0,0
  DEFB 0,0,58
  DEFB 217,55,14,0,0
  DEFB 7,0,0
  DEFB 58,220,49,14,0
  DEFB 0,1,0
  DEFB 0,58

; Terrain Interaction Data Table
;
; Table comprised of 32 x 24 entries, each one corresponding to a character
; block in Magic Knight's current room. Each entry is a set of bitwise flags
; with the following effects:
  DEFB 251,58,245
  DEFB 220,49,14,0,0,1,0,0
  DEFB 59,217,55,14,0,0,7,0
  DEFB 0,59,172,57,14,0,0,9
  DEFB 0,0,44,51,14,0,0,3
  DEFB 0,0,59,34,83,84,79,82
  DEFB 77,66,82,73,78,71,69,82
  DEFB 32,52,56,32,73,83,32,76
  DEFB 79,65,68,73,78,71,34,59
  DEFB 172,49,50,14,0,0,12,0
  DEFB 0,44,49,48,14,0,0,10
  DEFB 0,0,59,34,80,76,69,65
  DEFB 83,69,32,87,65,73,84,34
  DEFB 13,0,20,36,0,218,56,14
  DEFB 0,0,8,0,0,58,217,56
  DEFB 14,0,0,8,0,0,58,220
  DEFB 56,14,0,0,8,0,0,58
  DEFB 222,49,14,0,0,1,0,0
  DEFB 13,0,30,149,0,215,46,49
  DEFB 14,125,76,204,204,204,44,49
  DEFB 14,0,0,1,0,0,58,215
  DEFB 46,49,14,125,76,204,204,204
  DEFB 44,50,14,0,0,2,0,0
  DEFB 58,215,46,49,14,125,76,204
  DEFB 204,204,44,51,14,0,0,3
  DEFB 0,0,58,215,46,49,14,125
  DEFB 76,204,204,204,44,52,14,0
  DEFB 0,4,0,0,58,215,46,49
  DEFB 14,125,76,204,204,204,44,53
  DEFB 14,0,0,5,0,0,58,245
  DEFB 172,48,14,0,0,0,0,0
  DEFB 44,48,14,0,0,0,0,0
  DEFB 59,58,239,34,34,175,49,54
  DEFB 51,56,52,14,0,0,0,64
  DEFB 0,58,245,172,48,14,0,0
  DEFB 0,0,0,44,48,14,0,0
  DEFB 0,0,0,59,58,239,34,34
  DEFB 175,13,0,40,14,0,249,192
  DEFB 51,55,54,51,50,14,0,0
  DEFB 0,147,0,13
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
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0

; Table of Bitmap Data for Magic Knight at his Current Location
;
; Used by the routines at 61638, 61720 and 61774.
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

; Table of Background Bitmap Data
;
; Used by the routines at 39553, 61638 and 61823.
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

; Characters' Current Stats
;
; Nine groups of eight bytes, one group per character (including Magic Knight).
; The values are capped at 100:
  DEFB 0,0,0,0,0,0,0,0    ; Magic Knight
  DEFB 0,0,0,0,0,0,0,0    ; Off-White Knight
  DEFB 0,0,0,0,0,0,0,0    ; Aramis le Peux
  DEFB 0,0,0,0,0,0,0,0    ; Robin of Shylock
  DEFB 0,0,0,0,0,0,0,0    ; Reggie the Rat
  DEFB 0,0,0,0,0,0,0,0    ; Rachel of Amazonia
  DEFB 0,0,0,0,0,0,0,0    ; Barker the Ent
  DEFB 0,0,0,0,0,0,0,0    ; Organon the Guard
  DEFB 0,0,0,0,0,0,0,0    ; Grunter the Bearwoolf

; Magic Knight's Current Data
;
; See also 48603 for Magic Knight's Initial Data
  DEFB 0                  ; x-coordinate (pixels)
  DEFB 0                  ; y-coordinate (pixels)
  DEFB 0                  ; Unused (set to zero by instruction at 44322)
  DEFB 0                  ; Index of current frame
  DEFB 0                  ; x-velocity (pixels) [walking / jumping sideways,
                          ; usually 2 for right and 254 / -2 for left]
  DEFB 0                  ; y-velocity (pixels) [jumping]
  DEFB 0                  ; Attribute
  DEFB 0                  ; Unused

; Characters' Current Inventories
;
; See also 48611 for Characters' Initial Inventories
  DEFB 0,0,0,0,0          ; Magic Knight (carrying)
  DEFB 0,0,0,0,0          ; Magic Knight (wearing)
  DEFB 0,0,0,0,0          ; Off-White Knight
  DEFB 0,0,0,0,0          ; Aramis le Peux
  DEFB 0,0,0,0,0          ; Robin of Shylock
  DEFB 0,0,0,0,0          ; Reggie the Rat
  DEFB 0,0,0,0,0          ; Rachel of Amazonia
  DEFB 0,0,0,0,0          ; Barker the Ent
  DEFB 0,0,0,0,0          ; Organon the Guard
  DEFB 0,0,0,0,0          ; Grunter the Bearwoolf

; Characters' Current Positions
;
; Eight groups of three bytes, one group per character (excluding Magic
; Knight). The values are:
  DEFB 0,0,0              ; Off-White Knight
  DEFB 0,0,0              ; Aramis le Peux
  DEFB 0,0,0              ; Robin of Shylock
  DEFB 0,0,0              ; Reggie the Rat
  DEFB 0,0,0              ; Rachel of Amazonia
  DEFB 0,0,0              ; Barker the Ent
  DEFB 0,0,0              ; Organon the Guard
  DEFB 0,0,0              ; Grunter the Bearwoolf

; Objects' Current Positions
;
; Forty-two groups of three bytes, one group per object. The values are:
  DEFB 0,0,0              ; (00) - Nothing at all
  DEFB 0,0,0              ; (01) - Disquise
  DEFB 0,0,0              ; (02) - Crystal Ball
  DEFB 0,0,0              ; (03) - Wand of Command
  DEFB 0,0,0              ; (04) - Teddy Bear
  DEFB 0,0,0              ; (05) - Stick of Dynamite
  DEFB 0,0,0              ; (06) - Magic Talisman
  DEFB 0,0,0              ; (07) - Broken Glass
  DEFB 0,0,0              ; (08) - Broken Glass
  DEFB 0,0,0              ; (09) - Broken Glass
  DEFB 0,0,0              ; (10) - Horse Feather
  DEFB 0,0,0              ; (11) - Power Boots
  DEFB 0,0,0              ; (12) - Glow Shield
  DEFB 0,0,0              ; (13) - Chicken
  DEFB 0,0,0              ; (14) - Boomerang
  DEFB 0,0,0              ; (15) - Sword
  DEFB 0,0,0              ; (16) - Brass Ankh
  DEFB 0,0,0              ; (17) - Bottle of Liquid
  DEFB 0,0,0              ; (18) - Bottle of Liquid
  DEFB 0,0,0              ; (19) - Torch
  DEFB 0,0,0              ; (20) - Mirror
  DEFB 0,0,0              ; (21) - Gadget X
  DEFB 0,0,0              ; (22) - Elf-Horn
  DEFB 0,0,0              ; (23) - Silver Arrow
  DEFB 0,0,0              ; (24) - Instruction Book
  DEFB 0,0,0              ; (25) - Magic Missile
  DEFB 0,0,0              ; (26) - Advert
  DEFB 0,0,0              ; (27) - Scroll
  DEFB 0,0,0              ; (28) - Empty Bottle
  DEFB 0,0,0              ; (29) - Empty Bottle
  DEFB 0,0,0              ; (30) - Shield
  DEFB 0,0,0              ; (31) - Teleport Key
  DEFB 0,0,0              ; (32) - Teleport Pad
  DEFB 0,0,0              ; (33) - Newspaper
  DEFB 0,0,0              ; (34) - List of Clues
  DEFB 0,0,0              ; (35) - Bow
  DEFB 0,0,0              ; (36) - Golden Egg
  DEFB 0,0,0              ; (37) - Silver Egg
  DEFB 0,0,0              ; (38) - Copper Egg
  DEFB 0,0,0              ; (39) - Golden Egg
  DEFB 0,0,0              ; (40) - Silver Egg
  DEFB 0,0,0              ; (41) - Copper Egg

; Table of Background Attribute Data
;
; Attribute values for region behind Magic Knight, stored here so that they can
; be restored when Magic Knight moves on in Player Attribute Update mode.
  DEFB 0,0,0
  DEFB 0,0,0
  DEFB 0,0,0
  DEFB 0,0,0

; Temporary Text Buffer
;
; Used by the routines at 46902 and 48389
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
  DEFB 0,0,0,0

; Graphics (Storm Cloud)
;
; All Storm Cloud frame graphics are (8 x 2). Frame 1
  DEFB 0,0,7,240,7,192,0,0
  DEFB 0,0,31,252,63,224,0,0
  DEFB 0,0,191,255,191,240,0,0
  DEFB 0,7,223,254,127,240,0,0
  DEFB 0,31,239,255,255,232,0,0
  DEFB 0,120,255,255,255,252,0,0
  DEFB 0,254,255,255,243,254,0,0
  DEFB 0,255,255,255,247,254,0,0
  DEFB 0,255,255,255,255,254,0,0
  DEFB 0,255,255,231,255,252,0,0
  DEFB 0,127,255,223,255,252,0,0
  DEFB 0,127,112,63,231,248,0,0
  DEFB 0,60,128,7,195,224,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 2
  DEFB 0,0,3,248,3,224,0,0
  DEFB 0,0,15,254,31,240,0,0
  DEFB 0,0,95,255,223,248,0,0
  DEFB 0,3,239,255,63,248,0,0
  DEFB 0,15,247,255,255,244,0,0
  DEFB 0,60,127,255,255,254,0,0
  DEFB 0,127,127,255,249,255,0,0
  DEFB 0,127,255,255,251,255,0,0
  DEFB 0,127,255,255,255,255,0,0
  DEFB 0,127,255,243,255,254,0,0
  DEFB 0,63,255,239,255,254,0,0
  DEFB 0,63,184,31,243,252,0,0
  DEFB 0,30,64,3,225,240,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 3
  DEFB 0,0,1,252,1,240,0,0
  DEFB 0,0,7,255,15,248,0,0
  DEFB 0,0,47,255,239,252,0,0
  DEFB 0,1,247,255,159,252,0,0
  DEFB 0,7,251,255,255,250,0,0
  DEFB 0,30,63,255,255,255,0,0
  DEFB 0,63,191,255,252,255,128,0
  DEFB 0,63,255,255,253,255,128,0
  DEFB 0,63,255,255,255,255,128,0
  DEFB 0,63,255,249,255,255,0,0
  DEFB 0,31,255,247,255,255,0,0
  DEFB 0,31,220,15,249,254,0,0
  DEFB 0,15,32,1,240,248,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 4
  DEFB 0,0,0,254,0,248,0,0
  DEFB 0,0,3,255,135,252,0,0
  DEFB 0,0,23,255,247,254,0,0
  DEFB 0,0,251,255,207,254,0,0
  DEFB 0,3,253,255,255,253,0,0
  DEFB 0,15,31,255,255,255,128,0
  DEFB 0,31,223,255,254,127,192,0
  DEFB 0,31,255,255,254,255,192,0
  DEFB 0,31,255,255,255,255,192,0
  DEFB 0,31,255,252,255,255,128,0
  DEFB 0,15,255,251,255,255,128,0
  DEFB 0,15,238,7,252,255,0,0
  DEFB 0,7,144,0,248,124,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 5
  DEFB 0,0,0,127,0,124,0,0
  DEFB 0,0,1,255,195,254,0,0
  DEFB 0,0,11,255,251,255,0,0
  DEFB 0,0,125,255,231,255,0,0
  DEFB 0,1,254,255,255,254,128,0
  DEFB 0,7,143,255,255,255,192,0
  DEFB 0,15,239,255,255,63,224,0
  DEFB 0,15,255,255,255,127,224,0
  DEFB 0,15,255,255,255,255,224,0
  DEFB 0,15,255,254,127,255,192,0
  DEFB 0,7,255,253,255,255,192,0
  DEFB 0,7,247,3,254,127,128,0
  DEFB 0,3,200,0,124,62,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 6
  DEFB 0,0,0,63,128,62,0,0
  DEFB 0,0,0,255,225,255,0,0
  DEFB 0,0,5,255,253,255,128,0
  DEFB 0,0,62,255,243,255,128,0
  DEFB 0,0,255,127,255,255,64,0
  DEFB 0,3,199,255,255,255,224,0
  DEFB 0,7,247,255,255,159,240,0
  DEFB 0,7,255,255,255,191,240,0
  DEFB 0,7,255,255,255,255,240,0
  DEFB 0,7,255,255,63,255,224,0
  DEFB 0,3,255,254,255,255,224,0
  DEFB 0,3,251,129,255,63,192,0
  DEFB 0,1,228,0,62,31,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 7
  DEFB 0,0,0,31,192,31,0,0
  DEFB 0,0,0,127,240,255,128,0
  DEFB 0,0,2,255,254,255,192,0
  DEFB 0,0,31,127,249,255,192,0
  DEFB 0,0,127,191,255,255,160,0
  DEFB 0,1,227,255,255,255,240,0
  DEFB 0,3,251,255,255,207,248,0
  DEFB 0,3,255,255,255,223,248,0
  DEFB 0,3,255,255,255,255,248,0
  DEFB 0,3,255,255,159,255,240,0
  DEFB 0,1,255,255,127,255,240,0
  DEFB 0,1,253,192,255,159,224,0
  DEFB 0,0,242,0,31,15,128,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 8
  DEFB 0,0,0,15,224,15,128,0
  DEFB 0,0,0,63,248,127,192,0
  DEFB 0,0,1,127,255,127,224,0
  DEFB 0,0,15,191,252,255,224,0
  DEFB 0,0,63,223,255,255,208,0
  DEFB 0,0,241,255,255,255,248,0
  DEFB 0,1,253,255,255,231,252,0
  DEFB 0,1,255,255,255,239,252,0
  DEFB 0,1,255,255,255,255,252,0
  DEFB 0,1,255,255,207,255,248,0
  DEFB 0,0,255,255,191,255,248,0
  DEFB 0,0,254,224,127,207,240,0
  DEFB 0,0,121,0,15,135,192,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0

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

; Graphics (01 x 64) Character Set Part 1
  DEFB 0,0,0,0,0,0,0,0    ; (032) - SPACE
  DEFB 0,48,48,48,48,0,48,48 ; (033) - !
  DEFB 0,36,36,0,0,0,0,0  ; (034) - "
  DEFB 0,36,126,36,36,126,36,0 ; (035) - #
  DEFB 0,8,62,40,62,10,62,8 ; (036) - $
  DEFB 0,98,100,8,16,38,70,0 ; (037) - %
  DEFB 0,56,108,59,126,108,127,59 ; (038) - &
  DEFB 0,12,24,16,0,0,0,0 ; (039) - '
  DEFB 0,12,24,24,24,24,12,4 ; (040) - (
  DEFB 0,48,24,24,24,24,48,32 ; (041) - )
  DEFB 0,0,20,8,62,8,20,0 ; (042) - *
  DEFB 0,0,8,8,62,8,8,0   ; (043) - +
  DEFB 0,0,0,0,0,12,12,24 ; (044) - ,
  DEFB 0,0,0,62,62,0,0,0  ; (045) - -
  DEFB 0,0,0,0,0,0,24,24  ; (046) - .
  DEFB 0,6,14,28,56,112,96,0 ; (047) - /
  DEFB 0,60,126,110,126,118,126,60 ; (048) - 0
  DEFB 0,28,60,44,12,12,63,63 ; (049) - 1
  DEFB 0,60,126,14,60,112,126,126 ; (050) - 2
  DEFB 0,60,126,102,28,102,126,60 ; (051) - 3
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
  DEFB 0,60,74,86,94,64,60,0 ; (064) - @
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
  DEFB 0,3,15,31,63,127,255,255 ; (091) - Unused
  DEFB 0,192,240,248,252,254,255,255 ; (092) - Unused
  DEFB 255,255,255,0,0,0,255,255 ; (093) - Window Border 1 (top edge)
  DEFB 255,255,0,0,0,255,255,255 ; (094) - Window Border 1 (bottom edge)
  DEFB 227,227,227,227,227,227,227,227 ; (095) - Window Border 1 (left edge)

; Graphics (01 x 32) Character Set Part 2
  DEFB 199,199,199,199,199,199,199,199 ; (096) - Window Border 1 (right edge)
  DEFB 255,255,255,15,23,39,199,199 ; (097) - Window Border 1 (top right
                                    ; corner)
  DEFB 199,199,39,23,15,255,255,255 ; (098) - Window Border 1 (bottom right
                                    ; corner)
  DEFB 227,227,228,232,240,255,255,255 ; (099) - Window Border 1 (bottom left
                                       ; corner)
  DEFB 255,255,255,240,232,228,227,227 ; (100) - Window Border 1 (top left
                                       ; corner)
  DEFB 255,255,0,36,219,0,255,255 ; (101) - Window Border 2 (top edge)
  DEFB 255,255,0,219,36,0,255,255 ; (102) - Window Border 2 (bottom edge)
  DEFB 203,203,211,203,203,211,203,203 ; (103) - Window Border 2 (left edge)
  DEFB 211,211,203,211,211,203,211,211 ; (104) - Window Border 2 (right edge)
  DEFB 194,227,124,28,204,38,151,211 ; (105) - Window Border 2 (top right
                                     ; corner)
  DEFB 211,151,38,204,28,124,227,194 ; (106) - Window Border 2 (bottom right
                                     ; corner)
  DEFB 203,233,100,51,56,62,199,67 ; (107) - Window Border 2 (bottom left
                                   ; corner)
  DEFB 67,199,62,56,51,100,233,203 ; (108) - Window Border 2 (top left corner)
  DEFB 153,153,195,66,102,189,129,255 ; (109) - Window Border 3 (top edge)
  DEFB 255,129,189,102,66,195,153,153 ; (110) - Window Border 3 (bottom edge)
  DEFB 231,156,176,163,163,176,156,231 ; (111) - Window Border 3 (left edge)
  DEFB 231,57,13,197,197,13,57,231 ; (112) - Window Border 3 (right edge)
  DEFB 155,155,196,75,115,176,156,231 ; (113) - Window Border 3 (top right
                                      ; corner)
  DEFB 231,156,176,115,75,196,155,155 ; (114) - Window Border 3 (bottom right
                                      ; corner)
  DEFB 231,57,13,206,210,35,217,217 ; (115) - Window Border 3 (bottom left
                                    ; corner)
  DEFB 217,217,35,210,206,13,57,231 ; (116) - Window Border 3 (top left corner)
  DEFB 255,255,0,255,0,0,0,0 ; (117) - Window Border 4 (top edge)
  DEFB 0,0,0,0,255,0,255,255 ; (118) - Window Border 4 (bottom edge)
  DEFB 208,208,208,208,208,208,208,208 ; (119) - Window Border 4 (left edge)
  DEFB 11,11,11,11,11,11,11,11 ; (120) - Window Border 4 (right edge)
  DEFB 255,255,7,251,11,11,11,11 ; (121) - Window Border 4 (top right corner)
  DEFB 11,11,11,11,251,7,255,255 ; (122) - Window Border 4 (bottom right
                                 ; corner)
  DEFB 208,208,208,208,223,224,255,255 ; (123) - Window Border 4 (bottom left
                                       ; corner)
  DEFB 255,255,224,223,208,208,208,208 ; (124) - Window Border 4 (top left
                                       ; corner)
  DEFB 0,16,56,84,16,16,16,0 ; (125) - ^
  DEFB 0,28,62,112,124,48,126,126 ; (126) - £
  DEFB 0,60,126,227,223,227,126,60 ; (127) - COPYRIGHT

; Graphics - Brickwork Blocks (Part 1)
;
; Referenced by Table of Block Style Definitions at 49794.
  DEFB 0,0,0,0,0,0,0,0    ; (00) -  Blank
  DEFB 1,3,7,15,31,63,127,255 ; (01) -  Unused
  DEFB 63,127,239,223,255,255,255,255 ; (02) -  Unused
  DEFB 56,248,252,222,238,254,255,255 ; (03) -  Unused
  DEFB 111,255,247,239,127,127,31,207 ; (04) -  Unused
  DEFB 0,240,254,255,247,251,255,255 ; (05) -  Unused
  DEFB 7,63,127,255,255,255,127,127 ; (06) -  Unused
  DEFB 192,248,222,231,255,255,254,254 ; (07) -  Unused
  DEFB 3,31,63,127,255,255,255,255 ; (08) -  Unused
  DEFB 240,254,255,255,255,255,255,255 ; (09) -  Unused
  DEFB 0,28,174,166,134,174,170,186 ; (10) -  Unused
  DEFB 0,113,251,155,219,219,219,203 ; (11) -  Unused
  DEFB 14,63,127,239,223,255,255,255 ; (12) -  Unused
  DEFB 7,255,255,255,255,255,255,255 ; (13) -  Unused
  DEFB 131,255,255,255,255,255,255,252 ; (14) -  Unused
  DEFB 252,238,247,255,255,130,60,254 ; (15) -  Unused
  DEFB 63,127,255,255,223,255,255,123 ; (16) -  Unused
  DEFB 126,255,255,255,253,231,254,252 ; (17) -  White bricks
  DEFB 63,63,103,111,127,127,127,62 ; (18) -  White bricks
  DEFB 0,0,0,0,0,0,0,0    ; (19) -  Unused
  DEFB 181,174,255,255,255,255,255,255 ; (20) -  Floor UDG 52 (Outdoors)
  DEFB 63,127,255,255,255,255,255,255 ; (21) -  Floor UDG 53 (Castle)
  DEFB 255,255,0,0,255,255,0,0 ; (22) -  Floor UDG 54 (Spaceship)
  DEFB 56,255,239,254,239,255,253,255 ; (23) -  Floor UDG 55 (Limbo / Caves)
  DEFB 126,126,126,0,239,239,239,0 ; (24) -  Yellow bricks
  DEFB 255,255,255,255,255,255,255,255 ; (25) -  Unused
  DEFB 127,127,127,127,255,255,127,63 ; (26) -  Unused
  DEFB 255,255,255,238,158,254,252,24 ; (27) -  Unused
  DEFB 247,251,249,252,126,119,123,63 ; (28) -  Unused
  DEFB 255,254,254,250,246,126,60,24 ; (29) -  Unused
  DEFB 127,121,126,255,247,238,124,56 ; (30) -  Unused
  DEFB 240,238,223,123,255,255,254,112 ; (31) -  Unused
  DEFB 127,119,121,63,71,243,125,28 ; (32) -  Unused
  DEFB 255,255,255,255,254,255,240,224 ; (33) -  Unused
  DEFB 186,248,93,77,45,239,199,0 ; (34) -  Unused
  DEFB 202,234,202,203,203,203,235,107 ; (35) -  Unused
  DEFB 127,127,127,111,119,127,63,28 ; (36) -  Unused
  DEFB 255,255,238,221,243,207,30,14 ; (37) -  Unused
  DEFB 49,199,255,255,255,255,63,0 ; (38) -  Unused
  DEFB 255,255,255,255,246,206,254,252 ; (39) -  Unused
  DEFB 0,190,254,255,255,247,255,252 ; (40) -  Unused
  DEFB 0,63,127,127,111,103,115,63 ; (41) -  Unused
  DEFB 0,124,255,255,255,254,238,124 ; (42) -  Unused
  DEFB 0,0,0,0,0,0,0,0    ; (43) -  Unused
  DEFB 0,0,0,0,0,0,0,0    ; (44) -  Unused
  DEFB 0,0,0,0,0,0,0,0    ; (45) -  Unused
  DEFB 0,0,0,0,0,0,0,0    ; (46) -  Unused
  DEFB 0,0,0,0,0,0,0,0    ; (47) -  Unused
  DEFB 7,15,63,119,239,255,255,255 ; (48) -  Unused
  DEFB 240,248,254,255,255,255,255,255 ; (49) -  Unused
  DEFB 255,146,146,147,150,154,106,73 ; (50) -  Cobweb
  DEFB 255,91,101,203,83,37,95,137 ; (51) -  Cobweb
  DEFB 255,255,192,193,193,193,223,223 ; (52) -  Lever
  DEFB 255,255,3,131,131,131,251,251 ; (53) -  Lever
  DEFB 255,255,255,156,63,115,109,54 ; (54) -  Unused
  DEFB 255,255,255,57,252,206,182,108 ; (55) -  Unused
  DEFB 54,54,54,54,54,54,63,63 ; (56) -  Unused
  DEFB 108,108,108,108,108,108,252,252 ; (57) -  Unused
  DEFB 54,54,54,54,54,54,54,54 ; (58) -  Security door
  DEFB 108,108,108,108,108,108,108,108 ; (59) -  Security door
  DEFB 60,126,255,255,251,243,126,60 ; (60) -  Unused
  DEFB 60,126,255,255,223,207,126,60 ; (61) -  Unused
  DEFB 60,126,207,223,255,255,126,60 ; (62) -  Unused
  DEFB 60,126,243,251,255,255,126,60 ; (63) -  Unused
  DEFB 0,7,31,63,63,127,127,255 ; (64) -  Unused
  DEFB 0,131,227,247,255,255,254,252 ; (65) -  Unused
  DEFB 128,192,224,240,248,252,254,255 ; (66) -  Unused
  DEFB 255,255,0,0,255,255,0,0 ; (67) -  Power Plant ceiling / bridge
  DEFB 181,174,255,255,255,255,255,255 ; (68) -  Grass
  DEFB 214,186,255,255,255,255,255,255 ; (69) -  Grass
  DEFB 255,195,165,153,153,165,195,255 ; (70) -  Unused
  DEFB 255,255,255,0,0,255,255,255 ; (71) -  Unused
  DEFB 255,127,127,231,231,115,63,15 ; (72) -  Unused
  DEFB 255,246,238,252,250,247,239,134 ; (73) -  Unused
  DEFB 73,38,38,25,24,6,1,0 ; (74) -  Cobweb
  DEFB 137,127,17,161,127,65,193,63 ; (75) -  Cobweb
  DEFB 217,217,217,217,217,192,255,255 ; (76) -  Lever
  DEFB 155,155,155,155,155,3,255,255 ; (77) -  Lever
  DEFB 62,29,195,255,127,54,54,54 ; (78) -  Unused
  DEFB 124,184,195,255,254,108,108,108 ; (79) -  Unused
  DEFB 63,0,127,127,0,255,255,255 ; (80) -  Unused
  DEFB 252,0,254,254,0,255,255,255 ; (81) -  Unused
  DEFB 24,12,10,7,10,20,58,217 ; (82) -  Unused
  DEFB 16,24,44,52,40,20,46,77 ; (83) -  Unused

; Graphics (Axes)
  DEFB 16,56,124,248,124,54,3,1 ; (84) -  Frame 1
  DEFB 8,28,62,63,30,52,96,192 ; (85) -  Frame 2
  DEFB 128,192,108,62,31,62,28,8 ; (86) -  Frame 3
  DEFB 3,6,44,120,252,124,56,16 ; (87) -  Frame 4

; Graphics - Brickwork Blocks (Part 2)
;
; Referenced by Architecture Styles Table at 49794.
  DEFB 255,127,127,63,63,31,7,0 ; (88) -  Unused
  DEFB 252,254,255,255,247,227,131,0 ; (89) -  Unused
  DEFB 231,231,231,231,231,231,231,231 ; (90) -  Castle Entrance / steps for
                                       ; Power Plant bridge
  DEFB 0,0,0,0,0,0,0,0    ; (91) -  Unused
  DEFB 5,69,37,21,0,247,4,245 ; (92) -  Power Plant Core
  DEFB 160,162,164,168,0,239,32,175 ; (93) -  Power Plant Core
  DEFB 245,4,247,0,21,37,69,5 ; (94) -  Power Plant Core
  DEFB 175,32,239,0,168,164,162,160 ; (95) -  Power Plant Core

; Graphic Lookup Data
;
; Table of addresses of start of graphic data for game graphics.
  DEFW 0,0                ; (00) - Unused
  DEFW 1795,29548         ; (01) - Graphics (Compacted): (03 x 07) Left half of
                          ; Teleport
  DEFW 29681,29681        ; (02) - Graphics (Standard): (02 x 02) Menu Hand
                          ; Cursor
  DEFW 29713,29745        ; (03) - Graphics (Standard): (02 x 02) Gadget X /
                          ; Bow
  DEFW 29777,29809        ; (04) - Graphics (Standard): (02 x 02) Advert /
                          ; Newspaper
  DEFW 29841,29809        ; (05) - Graphics (Standard): (02 x 02) Mirror
  DEFW 29873,29809        ; (06) - Graphics (Standard): (02 x 02) Scroll / List
                          ; of Clues
  DEFW 29905,29937        ; (07) - Graphics (Standard): (02 x 02) Disquise
  DEFW 29969,30001        ; (08) - Graphics (Standard): (02 x 02) Teleport Pad
  DEFW 30033,30065        ; (09) - Graphics (Standard): (02 x 02) Golden Egg /
                          ; Silver Egg / Copper Egg
  DEFW 30097,30129        ; (10) - Graphics (Standard): (02 x 02) Shield / Glow
                          ; Shield
  DEFW 30161,30193        ; (11) - Graphics (Standard): (02 x 02) Magic
                          ; Talisman
  DEFW 30225,30257        ; (12) - Graphics (Standard): (02 x 02) Chicken
  DEFW 30289,30321        ; (13) - Graphics (Standard): (02 x 02) Broken Glass
  DEFW 30353,30385        ; (14) - Graphics (Standard): (02 x 02) Bottle of
                          ; Liquid / Empty Bottle
  DEFW 30417,30449        ; (15) - Graphics (Standard): (02 x 02) Instruction
                          ; Book
  DEFW 30481,30513        ; (16) - Graphics (Standard): (02 x 02) Crystal Ball
  DEFW 30545,30577        ; (17) - Graphics (Standard): (02 x 02) Wand of
                          ; Command
  DEFW 30609,30641        ; (18) - Graphics (Standard): (02 x 02) Torch
  DEFW 30673,30705        ; (19) - Graphics (Standard): (02 x 02) Brass Ankh
  DEFW 30737,30769        ; (20) - Graphics (Standard): (02 x 02) Teddy Bear
  DEFW 30801,30833        ; (21) - Graphics (Standard): (02 x 02) Teleport Key
  DEFW 30865,30897        ; (22) - Graphics (Standard): (02 x 02) Magic Missile
  DEFW 30929,30961        ; (23) - Graphics (Standard): (02 x 02) Elf-Horn
  DEFW 30993,31025        ; (24) - Graphics (Standard): (02 x 02) Silver Arrow
  DEFW 31057,31089        ; (25) - Graphics (Standard): (02 x 02) Boomerang
  DEFW 31121,31153        ; (26) - Graphics (Standard): (02 x 02) Stick of
                          ; Dynamite
  DEFW 31185,31217        ; (27) - Graphics (Standard): (02 x 02) Power Boots
  DEFW 31249,31281        ; (28) - Graphics (Standard): (02 x 02) Horse Feather
  DEFW 31313,31345        ; (29) - Graphics (Standard): (02 x 02) Sword
  DEFW 31377,31425        ; (30) - Graphics (Standard): (02 x 03) Puff of
                          ; Smoke, frame 1
  DEFW 31473,31521        ; (31) - Graphics (Standard): (02 x 03) Puff of
                          ; Smoke, frame 2
  DEFW 31569,31617        ; (32) - Graphics (Standard): (02 x 03) Puff of
                          ; Smoke, frame 3
  DEFW 31665,31713        ; (33) - Graphics (Standard): (02 x 03) Puff of
                          ; Smoke, frame 4
  DEFW 31761,31809        ; (34) - Graphics (Standard): (02 x 03) Puff of
                          ; Smoke, frame 5
  DEFW 31857,31905        ; (35) - Graphics (Standard): (02 x 03) Puff of
                          ; Smoke, frame 6
  DEFW 3083,31953         ; (36) - Graphics (Compacted): (11 x 12) Grunter /
                          ; Statue
  DEFW 32705,32769        ; (37) - Graphics (Standard): (02 x 04) Magic Knight
                          ; facing left / Off-White Knight
  DEFW 1804,32833         ; (38) - Graphics (Compacted): (12 x 07) Top of tree
                          ; with face
  DEFW 1545,33126         ; (39) - Graphics (Compacted): (09 x 06) Top of tree
                          ; without face
  DEFW 2567,33418         ; (40) - Graphics (Compacted): (07 x 10) Top of tree,
                          ; bare
  DEFW 0,0                ; (41) - Unused
  DEFW 1797,33676         ; (42) - Graphics (Compacted): (05 x 07) Axe in tree
                          ; stump
  DEFW 3332,33835         ; (43) - Graphics (Compacted): (04 x 13) Control
                          ; console
  DEFW 772,34013          ; (44) - Graphics (Compacted): (04 x 03) Tree trunk 1
  DEFW 775,34087          ; (45) - Graphics (Compacted): (07 x 03) Tree trunk 2
  DEFW 0,0                ; (46) - Unused
  DEFW 774,34205          ; (47) - Graphics (Compacted): (06 x 03) Tree trunk 3
  DEFW 1029,34330         ; (48) - Graphics (Compacted): (05 x 04) Monitor
                          ; showing castle
  DEFW 1029,34502         ; (49) - Graphics (Compacted): (05 x 04) Control
                          ; panel
  DEFW 1029,34669         ; (50) - Graphics (Compacted): (05 x 04) Display
                          ; screen
  DEFW 1285,34810         ; (51) - Graphics (Compacted): (05 x 05) Moon
  DEFW 34893,34957        ; (52) - Graphics (Standard): (02 x 04) Aramis Le
                          ; Peux
  DEFW 35021,35085        ; (53) - Graphics (Standard): (02 x 04) Robin of
                          ; Shylock
  DEFW 35149,35213        ; (54) - Graphics (Standard): (02 x 04) Rachel of
                          ; Amazonia
  DEFW 1031,35277         ; (55) - Graphics (Compacted): (07 x 04) Flowers
  DEFW 1026,35443         ; (56) - Graphics (Compacted): (02 x 04) Organon the
                          ; Guard
  DEFW 517,35512          ; (57) - Graphics (Compacted): (05 x 02) Reggie the
                          ; Rat
  DEFW 778,35569          ; (58) - Graphics (Compacted): (10 x 03) Roof / Top
                          ; of Well
  DEFW 2571,35790         ; (59) - Graphics (Compacted): (11 x 10) Well
  DEFW 516,36407          ; (60) - Graphics (Compacted): (04 x 02) Jump Chute /
                          ; Corridor Pad
  DEFW 1796,36463         ; (61) - Graphics (Compacted): (04 x 07) Cracked
                          ; Column Section 1
  DEFW 1540,36648         ; (62) - Graphics (Compacted): (04 x 06) Cracked
                          ; Column Section 2
  DEFW 1799,36794         ; (63) - Graphics (Compacted): (07 x 07) Fire bowl
  DEFW 1027,37033         ; (64) - Graphics (Compacted): (03 x 04) Plinth
  DEFW 1540,37132         ; (65) - Graphics (Compacted): (04 x 06) Large stool
  DEFW 1282,37268         ; (66) - Graphics (Compacted): (02 x 05) Plant
  DEFW 1795,37343         ; (67) - Graphics (Compacted): (03 x 07) Torch
  DEFW 1286,37470         ; (68) - Graphics (Compacted): (06 x 05) Sword in
                          ; Concrete

; Graphics (Compacted) Scenery Part 1 (03 x 07) Left half of Teleport
  DEFB 3,7,15,15,31,53,63,31
  DEFB 255,2,248,240,248,84,252,248
  DEFB 253,191,0,6,15,15,15,15
  DEFB 31,63,118,201,240,240,240,240
  DEFB 248,252,110,147,0,8,153,153
  DEFB 153,153,153,153,153,153,153,153
  DEFB 153,153,153,153,153,153,0,8
  DEFB 153,153,153,153,153,153,153,153
  DEFB 153,153,153,153,153,153,153,153
  DEFB 0,8,153,153,153,153,153,153
  DEFB 153,153,153,153,153,153,153,153
  DEFB 153,153,0,8,153,153,153,153
  DEFB 153,153,153,153,153,153,153,153
  DEFB 153,153,153,153,0,8,201,118
  DEFB 63,31,15,15,15,15,147,111
  DEFB 252,248,240,240,250,245,255,2
  DEFB 0,4,170,85,181

; Graphics (02 x 02) Menu Hand Cursor
  DEFB 0,0,12,0,30,0,63,0
  DEFB 127,128,255,24,254,232,108,8
  DEFB 56,16,20,72,4,164,5,82
  DEFB 2,169,1,69,0,131,0,0

; Graphics Objects
;
; All object graphics are (2 x 2). Gadget X / Bow
  DEFB 0,0,112,14,120,30,124,62
  DEFB 62,124,31,248,15,240,7,224
  DEFB 7,224,15,240,31,248,62,124
  DEFB 124,62,120,30,112,14,0,0
; Gadget X / Bow (Mask)
  DEFB 7,224,3,192,1,128,0,0
  DEFB 0,0,128,1,192,3,224,7
  DEFB 224,7,192,3,128,1,0,0
  DEFB 0,0,1,128,3,192,7,224
; Advert / Newspaper
  DEFB 0,0,127,254,64,138,72,254
  DEFB 92,130,78,254,64,130,127,138
  DEFB 68,178,127,178,72,130,127,254
  DEFB 64,146,127,254,68,130,127,254
; Advert / Newspaper / Mirror / Scroll / List of Clues (Mask)
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Mirror
  DEFB 0,0,82,74,76,50,63,252
  DEFB 48,12,81,10,18,8,84,10
  DEFB 48,12,81,10,18,8,84,10
  DEFB 48,12,63,252,76,50,82,74
; Scroll / List of Clues
  DEFB 0,0,127,254,255,255,127,254
  DEFB 32,4,45,228,44,4,45,100
  DEFB 44,196,32,36,47,84,32,36
  DEFB 32,84,127,254,255,255,127,254
; Disquise
  DEFB 0,0,0,0,0,0,10,80
  DEFB 21,168,8,16,5,160,15,240
  DEFB 26,88,56,28,114,78,100,38
  DEFB 96,6,114,78,63,252,31,248
; Disquise (Mask)
  DEFB 255,255,255,255,224,7,192,3
  DEFB 192,3,192,3,224,7,192,3
  DEFB 128,1,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,128,1
; Teleport Pad
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,63,252,102,102,63,252
; Teleport Pad (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 128,1,0,0,0,0,0,0
; Golden Egg / Silver Egg / Copper Egg
  DEFB 0,0,0,0,3,192,7,224
  DEFB 15,240,31,248,31,248,63,252
  DEFB 53,172,42,84,63,252,63,252
  DEFB 31,248,31,248,15,240,3,192
; Golden Egg / Silver Egg / Copper Egg (Mask)
  DEFB 255,255,248,31,240,15,224,7
  DEFB 192,3,192,3,128,1,128,1
  DEFB 128,1,128,1,128,1,128,1
  DEFB 128,1,192,3,192,3,224,7
; Shield / Glow Shield
  DEFB 0,0,64,2,96,6,126,126
  DEFB 127,254,103,230,115,206,121,158
  DEFB 63,252,63,252,30,120,28,56
  DEFB 13,176,7,224,3,192,1,128
; Shield / Glow Shield (Mask)
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
; Chicken
  DEFB 0,0,0,108,0,240,0,216
  DEFB 0,254,0,96,7,232,31,232
  DEFB 63,224,127,192,123,192,125,128
  DEFB 76,0,4,0,6,0,7,0
; Chicken (Mask)
  DEFB 255,1,254,1,254,1,254,0
  DEFB 254,0,240,0,192,3,128,3
  DEFB 0,3,0,15,0,31,0,31
  DEFB 0,63,0,255,240,255,240,255
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
; Bottle of Liquid / Empty Bottle
  DEFB 0,0,0,60,0,24,0,24
  DEFB 0,0,0,60,0,44,0,110
  DEFB 0,126,0,126,0,66,0,74
  DEFB 0,82,0,74,0,66,0,60
; Bottle of Liquid / Empty Bottle (Mask)
  DEFB 255,0,255,0,255,129,255,195
  DEFB 255,129,255,129,255,0,255,0
  DEFB 255,0,255,0,255,0,255,0
  DEFB 255,0,255,0,255,0,255,0
; Instruction Book
  DEFB 0,0,0,0,63,252,64,8
  DEFB 127,252,127,248,127,248,98,88
  DEFB 127,248,127,248,127,248,127,248
  DEFB 127,248,120,124,127,248,63,252
; Instruction Book (Mask)
  DEFB 255,255,128,1,0,1,0,1
  DEFB 0,1,0,1,0,3,0,3
  DEFB 0,3,0,3,0,3,0,3
  DEFB 0,1,0,1,0,1,0,1
; Crystal Ball
  DEFB 0,0,3,192,15,240,30,248
  DEFB 60,252,57,252,123,254,115,254
  DEFB 127,254,127,254,127,254,63,252
  DEFB 63,252,31,248,15,240,3,192
; Crystal Ball (Mask)
  DEFB 248,31,224,7,192,3,128,1
  DEFB 128,1,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 128,1,128,1,192,3,224,7
; Wand of Command
  DEFB 0,0,1,0,32,0,8,0
  DEFB 17,0,72,0,16,32,2,0
  DEFB 3,128,8,192,64,96,0,48
  DEFB 0,24,0,12,0,6,0,3
; Wand of Command (Mask)
  DEFB 0,31,0,31,0,31,0,31
  DEFB 0,31,0,31,0,31,0,31
  DEFB 0,31,0,15,0,7,255,3
  DEFB 255,129,255,192,255,224,255,240
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
; Teddy Bear
  DEFB 0,0,48,12,88,22,91,150
  DEFB 55,204,13,104,15,224,12,96
  DEFB 38,204,115,156,116,88,7,192
  DEFB 55,216,118,220,115,156,96,12
; Teddy Bear (Mask)
  DEFB 135,225,3,192,0,0,0,0
  DEFB 0,0,128,1,224,3,128,1
  DEFB 0,1,0,1,0,1,0,3
  DEFB 0,1,0,1,0,1,0,1
; Teleport Key
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,124,0,254,127,206,64,206
  DEFB 127,206,0,254,124,124,108,0
; Teleport Key (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,1
  DEFB 254,0,0,0,0,0,0,0
  DEFB 0,0,0,0,1,0,1,1
; Magic Missile
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,30,6,63,254
  DEFB 127,252,127,252,63,254,30,6
; Magic Missile (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,192,240,128,0,0,0
  DEFB 0,0,0,0,0,0,128,0
; Elf-Horn
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,56,0,124,0,102,0,194
  DEFB 0,194,65,194,99,102,126,126
  DEFB 49,252,63,248,31,224,15,128
; Elf-Horn (Mask)
  DEFB 255,255,255,255,255,255,255,131
  DEFB 255,1,255,0,254,0,254,0
  DEFB 28,0,8,0,0,0,0,0
  DEFB 0,0,128,1,128,3,192,15
; Silver Arrow
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,16,2
  DEFB 48,6,127,252,48,6,16,2
; Silver Arrow (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,199,248,135,240
  DEFB 0,0,0,0,0,0,135,240
; Boomerang
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,32,4,112,14,112,14
  DEFB 120,30,108,54,95,250,43,212
  DEFB 61,188,31,248,7,224,1,128
; Boomerang (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 143,241,7,224,7,224,3,192
  DEFB 1,128,0,0,0,0,0,0
  DEFB 128,1,128,1,192,3,240,15
; Stick of Dynamite
  DEFB 0,0,0,8,0,16,0,8
  DEFB 0,126,0,126,0,110,0,110
  DEFB 0,110,0,110,0,110,0,110
  DEFB 0,110,0,110,0,110,0,126
; Stick of Dynamite (Mask)
  DEFB 255,227,255,195,255,195,255,0
  DEFB 255,0,255,0,255,0,255,0
  DEFB 255,0,255,0,255,0,255,0
  DEFB 255,0,255,0,255,0,255,0
; Power Boots
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,248,0,252,0,92,0,124
  DEFB 0,92,56,252,76,156,79,252
  DEFB 95,254,127,254,127,158,63,30
; Power Boots (Mask)
  DEFB 255,255,255,255,255,255,255,3
  DEFB 255,1,255,1,255,1,255,1
  DEFB 131,1,1,1,0,1,0,0
  DEFB 0,0,0,0,0,0,0,0
; Horse Feather
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,1,240,2,168,5,84
  DEFB 127,254,5,84,2,168,1,240
; Horse Feather (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 252,7,248,3,240,1,0,0
  DEFB 0,0,0,0,240,1,248,3
; Sword
  DEFB 0,0,32,0,48,0,48,0
  DEFB 48,0,48,0,48,0,48,0
  DEFB 48,0,48,0,0,0,124,0
  DEFB 6,0,50,0,52,0,48,0
; Sword (Mask)
  DEFB 159,255,143,255,135,255,135,255
  DEFB 135,255,135,255,135,255,135,255
  DEFB 135,255,135,255,1,255,0,255
  DEFB 0,255,128,255,128,255,129,255

; Graphics (Puff of Smoke)
;
; All Puff of Smoke frame graphics are (2 x 3). Frame 1
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,1,128,2,64,2,64
  DEFB 1,128,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 1 (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 252,63,248,31,248,31,248,31
  DEFB 248,31,252,63,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
; Frame 2
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,2,128
  DEFB 4,96,8,16,8,16,4,0
  DEFB 4,32,2,64,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 2 (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,248,63,240,15
  DEFB 224,7,225,7,225,199,225,135
  DEFB 240,15,240,15,248,31,255,255
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
; Frame 3
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,1,128,7,224
  DEFB 12,240,14,112,2,0,7,96
  DEFB 14,112,28,240,29,240,30,224
  DEFB 14,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 3 (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 255,255,248,63,240,15,240,7
  DEFB 192,7,192,7,224,7,224,7
  DEFB 192,7,192,7,192,7,192,7
  DEFB 192,15,224,255,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
; Frame 4
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,14,112,28,56,24,56
  DEFB 12,16,4,16,0,0,0,0
  DEFB 8,32,16,24,54,24,60,112
  DEFB 24,32,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 4 (Mask)
  DEFB 255,255,255,255,255,255,255,255
  DEFB 224,7,192,3,192,3,193,131
  DEFB 225,135,225,199,241,199,227,143
  DEFB 195,131,128,131,128,3,128,3
  DEFB 129,135,195,143,255,255,255,255
  DEFB 255,255,255,255,255,255,255,255
; Frame 5
  DEFB 0,0,0,0,15,0,31,128
  DEFB 63,204,63,222,63,190,62,126
  DEFB 62,30,31,60,7,0,3,112
  DEFB 60,124,62,60,126,254,125,254
  DEFB 126,254,126,126,127,124,62,56
  DEFB 0,0,0,0,0,0,0,0
; Frame 5 (Mask)
  DEFB 255,255,224,255,192,63,128,1
  DEFB 128,0,128,0,128,0,128,0
  DEFB 128,0,128,0,192,1,128,1
  DEFB 128,1,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,1
  DEFB 128,131,255,255,255,255,255,255
; Frame 6
  DEFB 0,0,0,0,15,0,31,128
  DEFB 63,204,57,222,56,150,48,6
  DEFB 48,14,16,12,0,0,8,0
  DEFB 56,12,48,12,112,14,113,134
  DEFB 112,198,122,126,127,124,62,56
  DEFB 0,0,0,0,0,0,0,0
; Frame 6 (Mask)
  DEFB 255,255,224,127,192,63,128,1
  DEFB 128,0,128,0,128,0,130,0
  DEFB 135,224,135,224,195,225,131,225
  DEFB 131,225,3,224,4,32,4,0
  DEFB 0,0,0,0,0,0,0,1
  DEFB 128,131,255,255,255,255,255,255

; Graphics (Compacted) Scenery Part 2
;
; (11 x 12) Grunter / Statue
  DEFB 0,9,1,1,1,1,0,5
  DEFB 128,128,192,224,248,126,0,3
  DEFB 15,63,255,2,63,0,3,224
  DEFB 240,248,254,255,1,0,2,28
  DEFB 56,112,240,56,199,0,7,1
  DEFB 0,4,64,64,192,192,0,40
  DEFB 63,159,231,241,28,78,109,238
  DEFB 136,253,255,3,63,135,240,35
  DEFB 185,253,237,239,239,206,24,255
  DEFB 3,227,252,254,15,3,239,231
  DEFB 251,217,158,191,248,246,192,128
  DEFB 128,0,37,1,0,7,198,18
  DEFB 51,113,108,14,30,48,119,51
  DEFB 59,242,247,143,3,51,252,254
  DEFB 127,25,131,195,231,231,193,80
  DEFB 4,253,255,1,253,248,226,176
  DEFB 3,249,37,143,255,1,247,251
  DEFB 0,2,128,128,128,56,142,199
  DEFB 0,36,3,31,127,255,1,39
  DEFB 31,32,15,255,4,251,248,30
  DEFB 194,255,3,254,247,243,123,63
  DEFB 159,207,231,1,218,182,230,199
  DEFB 199,199,226,248,255,1,63,0
  DEFB 1,7,31,31,61,249,151,35
  DEFB 99,35,195,207,143,143,128,192
  DEFB 224,224,240,240,240,224,0,17
  DEFB 1,1,1,1,1,1,0,1
  DEFB 255,9,207,239,231,247,243,248
  DEFB 248,255,6,63,255,1,192,254
  DEFB 255,7,63,159,199,243,248,255
  DEFB 1,241,255,4,240,14,255,1
  DEFB 225,199,227,243,243,35,3,225
  DEFB 240,232,220,254,254,255,4,0
  DEFB 6,128,128,0,10,1,1,3
  DEFB 7,15,31,255,1,127,31,199
  DEFB 255,4,243,247,247,247,239,200
  DEFB 129,7,255,3,251,243,127,28
  DEFB 193,247,243,224,227,207,31,127
  DEFB 255,1,199,159,62,255,5,254
  DEFB 255,1,31,207,255,4,120,56
  DEFB 152,192,252,254,254,255,1,127
  DEFB 31,31,6,1,3,3,1,192
  DEFB 224,144,56,252,252,254,246,0
  DEFB 8,31,63,63,127,127,127,127
  DEFB 63,254,254,60,156,216,192,224
  DEFB 224,31,63,63,63,63,63,31
  DEFB 7,255,5,127,63,159,255,29
  DEFB 254,254,254,1,1,1,0,5
  DEFB 230,239,239,239,247,247,254,254
  DEFB 0,8,63,63,55,55,23,27
  DEFB 27,27,224,224,192,192,192,128
  DEFB 128,128,1,24,62,63,63,63
  DEFB 55,55,223,79,47,135,231,247
  DEFB 243,251,255,15,247,255,8,252
  DEFB 253,249,251,243,231,159,63,0
  DEFB 1,192,224,240,240,249,251,250
  DEFB 254,126,126,126,62,190,243,119
  DEFB 0,8,27,15,15,15,7,15
  DEFB 31,63,192,192,192,192,224,248
  DEFB 191,128,51,27,25,13,25,31
  DEFB 159,31,233,229,245,229,230,230
  DEFB 246,246,255,4,127,15,97,124
  DEFB 253,225,243,255,4,127,255,1
  DEFB 254,252,252,248,240,224,128,127
  DEFB 255,1,225,3,15,63,127,127
  DEFB 252,255,2,191,190,220,224,193
  DEFB 63,63,63,63,127,119,119,197
  DEFB 128,128,128,128,192,192,192,192
  DEFB 63,127,126,62,30,95,110,239
  DEFB 192,192,192,224,120,31,0,1
  DEFB 48,63,63,63,63,63,191,127
  DEFB 111,252,252,252,253,249,248,248
  DEFB 224,127,255,1,254,252,188,56
  DEFB 120,120,0,9,1,1,0,4
  DEFB 1,255,3,239,239,239,231,247
  DEFB 131,3,2,6,4,6,130,128
  DEFB 205,141,4,4,12,120,1,3
  DEFB 224,224,224,224,192,192,128,0
  DEFB 1,230,198,231,227,107,123,1
  DEFB 1,224,192,0,1,1,129,131
  DEFB 231,55,98,248,255,1,254,254
  DEFB 222,176,6,0,1,192,224,224
  DEFB 224,240,112,112,216,24,56,104
  DEFB 28,54,6,14,0,8,1,1
  DEFB 3,3,3,7,7,7,255,3
  DEFB 199,243,255,1,199,146,128,128
  DEFB 128,192,192,224,240,240,6,0
  DEFB 23,5,8,11,29,16,38,46
  DEFB 46,25,97,140,190,62,127,127
  DEFB 127,184,248,248,252,28,44,120
  DEFB 48,4,12,56,0,13,7,15
  DEFB 15,15,8,2,6,2,58,57
  DEFB 124,124,126,254,255,2,48,56
  DEFB 200,12,32,115,115,55,0,16

; Graphics (Characters) Part 1
;
; All character graphics are (2 x 4). Magic Knight facing left / Off-White
; Knight
  DEFB 0,0,0,0,3,240,7,252
  DEFB 120,62,255,199,201,56,201,39
  DEFB 201,35,201,63,201,240,127,6
  DEFB 0,252,63,248,63,224,7,128
  DEFB 3,192,6,96,14,96,12,96
  DEFB 28,224,29,224,29,224,29,224
  DEFB 15,224,7,192,3,128,3,128
  DEFB 7,128,31,192,63,192,63,128
; Magic Knight facing left / Off-White Knight (Mask)
  DEFB 255,255,248,7,240,1,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 128,0,128,1,128,3,128,15
  DEFB 240,15,224,15,224,15,192,15
  DEFB 192,15,192,15,192,15,192,15
  DEFB 192,15,224,15,240,31,240,63
  DEFB 192,31,128,31,128,31,128,31

; Graphics (Compacted) Scenery Part 3 (12 x 07) Top of tree with face
  DEFB 0,65,224,176,128,128,192,192
  DEFB 96,0,70,7,4,0,9,6
  DEFB 2,1,1,1,0,2,96,112
  DEFB 48,48,48,240,97,97,0,4
  DEFB 96,240,152,8,0,52,1,3
  DEFB 15,14,4,8,8,8,144,208
  DEFB 240,240,0,5,1,3,31,0
  DEFB 4,1,249,255,1,207,99,102
  DEFB 232,208,192,192,128,128,28,50
  DEFB 39,111,111,62,62,28,0,31
  DEFB 64,0,10,7,0,1,1,1
  DEFB 0,2,28,120,224,192,128,0
  DEFB 3,112,120,59,59,27,23,23
  DEFB 23,255,1,254,248,224,224,224
  DEFB 192,192,131,1,0,41,8,8
  DEFB 4,4,3,64,98,34,51,31
  DEFB 60,112,224,0,3,128,255,1
  DEFB 31,11,8,128,192,64,32,48
  DEFB 224,248,124,0,2,8,12,31
  DEFB 31,63,127,7,7,15,15,15
  DEFB 15,143,206,240,240,240,248,248
  DEFB 248,252,116,14,15,31,63,127
  DEFB 127,252,252,0,1,128,192,227
  DEFB 255,3,127,24,60,254,255,2
  DEFB 199,1,0,4,8,152,208,209
  DEFB 243,0,6,192,0,17,28,50
  DEFB 103,111,127,127,62,0,1,126
  DEFB 62,63,31,31,15,15,7,127
  DEFB 243,243,243,193,193,193,128,228
  DEFB 245,255,1,254,254,254,255,2
  DEFB 37,143,87,35,103,35,119,255
  DEFB 1,248,248,248,248,240,240,240
  DEFB 240,28,0,15,114,54,28,15
  DEFB 4,0,5,240,152,0,28,7
  DEFB 2,0,6,128,0,4,1,1
  DEFB 1,255,11,252,248,248,240,240
  DEFB 224,224,192,0,37
; (09 x 06) Top of tree without face
  DEFB 0,29,32,112,124,0,2,4
  DEFB 28,62,63,113,113,0,5,128
  DEFB 192,192,0,35,1,0,5,1
  DEFB 1,193,115,63,15,7,254,255
  DEFB 1,207,135,128,130,131,3,19
  DEFB 195,240,254,254,62,158,2,224
  DEFB 224,224,96,112,240,240,241,0
  DEFB 4,224,248,254,239,0,6,127
  DEFB 255,1,0,5,6,8,240,0
  DEFB 8,8,8,8,24,16,48,96
  DEFB 96,7,6,6,2,0,4,30
  DEFB 4,6,2,0,2,24,62,12
  DEFB 29,27,27,23,15,31,31,179
  DEFB 151,223,223,255,2,254,252,239
  DEFB 199,195,128,0,3,2,253,128
  DEFB 0,6,224,224,112,112,48,48
  DEFB 16,16,0,2,64,120,13,7
  DEFB 3,3,33,55,27,91,200,232
  DEFB 140,4,192,240,254,255,1,127
  DEFB 31,15,23,63,119,114,16,195
  DEFB 243,251,255,1,31,127,127,255
  DEFB 2,222,158,188,254,255,1,240
  DEFB 192,0,3,1,6,228,248,0
  DEFB 3,2,2,0,8,56,110,70
  DEFB 207,223,126,126,28,6,6,6
  DEFB 4,0,4,7,1,2,12,8
  DEFB 0,3,123,252,8,0,5,255
  DEFB 2,127,127,63,63,55,55,248
  DEFB 248,248,248,240,248,233,235,3
  DEFB 2,4,60,127,127,255,2,6
  DEFB 6,15,28,28,189,255,1,248
  DEFB 4,60,224,0,2,224,48,112
  DEFB 0,32,55,127,127,255,5,239
  DEFB 231,243,255,3,252,240,247,243
  DEFB 240,224,224,128,0,2,240,240
  DEFB 224,0,5,124,206,159,255,2
  DEFB 126,28,0,9
; (07 x 10) Top of tree, bare
  DEFB 0,7,14,0,16,6,3,1
  DEFB 1,1,0,3,128,130,3,1
  DEFB 129,129,129,199,0,16,3,1
  DEFB 1,131,130,230,60,12,0,24
  DEFB 124,24,24,24,56,48,48,112
  DEFB 0,16,12,12,12,12,28,30
  DEFB 31,31,0,6,192,252,0,16
  DEFB 96,112,112,48,56,56,56,56
  DEFB 0,16,15,1,0,6,243,240
  DEFB 28,14,15,7,7,7,0,1
  DEFB 128,128,135,223,255,2,254,0
  DEFB 1,31,240,135,252,224,128,0
  DEFB 1,112,240,96,192,0,28,15
  DEFB 15,15,15,15,15,15,15,240
  DEFB 224,224,192,192,192,192,192,0
  DEFB 40,7,7,7,3,3,3,3
  DEFB 3,192,192,224,224,224,240,248
  DEFB 126,0,40,3,1,1,0,5
  DEFB 63,63,159,207,111,63,15,0
  DEFB 1,128,240,255,2,252,254,255
  DEFB 2,0,3,224,240,24,24,216
  DEFB 0,34,15,253,7,3,0,2
  DEFB 15,7,7,15,255,2,127,3
  DEFB 216,216,204,236,252,252,252,254
  DEFB 0,5,12,63,252,0,7,128
  DEFB 0,24,1,1,1,1,1,3
  DEFB 3,3,254,254,255,1,253,253
  DEFB 249,123,127,254,254,63,159,255
  DEFB 2,254,248,128,64,64,128,128
  DEFB 128,0,26,7,6,6,14,14
  DEFB 14,15,63,127,127,255,5,247
  DEFB 184,56,120,112,240,240,240,240
  DEFB 0,8
; (05 x 07) Axe in tree stump
  DEFB 0,27,1,7,15,63,127,8
  DEFB 60,126,254,254,252,240,192,0
  DEFB 13,1,11,61,1,3,15,63
  DEFB 127,254,248,224,255,1,252,240
  DEFB 224,128,0,12,1,7,15,31
  DEFB 31,30,15,252,254,255,1,247
  DEFB 207,63,255,2,128,0,3,128
  DEFB 128,192,224,0,16,15,7,7
  DEFB 3,3,1,1,0,1,255,7
  DEFB 0,1,224,240,240,240,224,192
  DEFB 0,18,55,127,127,125,61,61
  DEFB 61,60,191,240,255,1,254,239
  DEFB 239,231,231,239,1,6,14,206
  DEFB 206,220,220,0,16,60,60,60
  DEFB 62,62,62,54,54,247,247,255
  DEFB 3,247,247,247,220,220,220,92
  DEFB 92,92,124,108,0,16,54,62
  DEFB 63,31,31,31,31,3,247,231
  DEFB 231,239,239,255,3,108,236,204
  DEFB 204,216,248,248,128,0,16
; (04 x 13) Control console
  DEFB 224,240,240,0,1,252,240,230
  DEFB 238,0,24,238,238,238,238,238
  DEFB 238,238,238,0,24,238,238,239
  DEFB 238,239,238,239,238,0,24,239
  DEFB 230,240,254,254,254,254,252,0
  DEFB 25,240,248,56,184,184,188,188
  DEFB 0,24,184,188,184,188,56,248
  DEFB 240,0,26,216,220,220,220,222
  DEFB 223,223,0,24,207,239,239,239
  DEFB 7,240,255,2,0,1,128,128
  DEFB 128,128,0,1,216,223,0,7
  DEFB 192,0,8,1,252,254,254,254
  DEFB 0,1,255,2,199,240,255,3
  DEFB 0,1,255,2,254,63,128,254
  DEFB 255,1,0,1,255,2,0,1
  DEFB 240,255,1,0,1,255,1,0
  DEFB 1,255,2,0,1,255,1,193
  DEFB 207,204,204,216,216,0,1,254
  DEFB 254,224,0,20,208,208,208,240
  DEFB 240,224,224,224,0,24,224,224
  DEFB 224,224,224,224,224,224,0,24
  DEFB 224,224,224,224,224,240,248,236
  DEFB 0,24
; (04 x 03) Tree trunk 1
  DEFB 0,8,1,3,3,7,15,15
  DEFB 31,63,255,6,231,243,240,240
  DEFB 224,240,240,248,248,60,0,8
  DEFB 63,63,63,63,63,31,31,15
  DEFB 248,252,254,255,5,124,120,248
  DEFB 112,160,224,240,240,0,4,1
  DEFB 7,31,255,1,15,15,7,7
  DEFB 231,63,255,1,15,255,6,252
  DEFB 224,240,240,248,248,252,252,120
  DEFB 24,8
; (07 x 03) Tree trunk 2
  DEFB 0,16,1,3,3,15,31,127
  DEFB 127,255,3,254,255,5,240,240
  DEFB 96,96,48,188,52,70,0,22
  DEFB 1,3,0,4,240,252,255,1
  DEFB 223,255,5,127,31,239,254,254
  DEFB 254,254,254,254,255,2,66,131
  DEFB 131,130,134,196,107,63,0,6
  DEFB 128,192,0,8,3,7,6,6
  DEFB 6,12,12,12,7,11,8,30
  DEFB 24,24,28,12,239,239,247,55
  DEFB 119,63,127,15,255,2,240,199
  DEFB 159,255,1,252,224,158,254,124
  DEFB 28,204,227,127,30,224,0,1
  DEFB 60,255,1,247,193,49,56,0
  DEFB 4,128,128,192,192,2
; (06 x 03) Tree trunk 3
  DEFB 0,9,1,3,3,15,63,255
  DEFB 2,127,199,207,223,255,1,253
  DEFB 249,251,231,239,255,1,254,254
  DEFB 252,253,255,1,224,224,128,124
  DEFB 255,1,253,252,248,0,5,128
  DEFB 128,128,1,1,1,7,15,63
  DEFB 63,127,255,1,223,159,191,63
  DEFB 255,5,254,254,239,207,159,159
  DEFB 191,63,127,255,1,254,254,252
  DEFB 252,248,241,241,251,126,0,3
  DEFB 128,128,0,6,127,127,127,63
  DEFB 63,63,31,15,255,2,252,241
  DEFB 255,1,252,252,128,31,15,7
  DEFB 135,231,127,124,0,1,252,252
  DEFB 252,248,252,125,127,31,0,5
  DEFB 192,224,96,0,8
; (05 x 04) Monitor showing castle
  DEFB 127,255,4,127,0,1,127,191
  DEFB 191,191,159,192,255,1,0,1
  DEFB 255,5,0,1,255,1,0,1
  DEFB 255,4,254,0,1,255,1,0
  DEFB 1,255,1,126,127,127,127,255
  DEFB 1,254,0,1,254,127,127,127
  DEFB 127,127,255,1,191,159,128,63
  DEFB 96,64,64,64,69,71,0,1
  DEFB 255,1,0,1,16,0,2,69
  DEFB 199,1,252,6,2,18,2,66
  DEFB 194,254,254,254,254,254,253,249
  DEFB 249,159,159,191,255,1,127,127
  DEFB 127,127,70,70,67,67,67,99
  DEFB 63,128,199,134,254,135,183,183
  DEFB 255,1,0,1,194,194,130,130
  DEFB 130,134,252,1,249,253,254,254
  DEFB 254,254,254,254,120,112,103,103
  DEFB 103,112,120,63,255,1,126,61
  DEFB 61,61,126,255,3,60,219,219
  DEFB 219,60,255,3,127,190,190,190
  DEFB 127,255,2,142,6,114,114,114
  DEFB 6,142,252,224
; (05 x 04) Control panel
  DEFB 31,127,96,192,193,195,195,195
  DEFB 255,2,0,2,255,1,192,192
  DEFB 255,3,0,2,224,241,241,241
  DEFB 255,2,0,2,255,2,199,187
  DEFB 252,254,6,3,227,243,243,19
  DEFB 195,194,194,194,227,113,208,208
  DEFB 0,1,235,235,235,28,255,1
  DEFB 0,2,113,177,177,177,113,225
  DEFB 1,1,171,187,199,255,2,199
  DEFB 187,171,19,243,243,246,245,245
  DEFB 21,21,208,209,211,211,210,210
  DEFB 243,98,0,1,255,3,0,2
  DEFB 255,1,73,1,225,241,241,17
  DEFB 17,241,49,187,199,255,2,199
  DEFB 187,171,187,245,245,245,245,247
  DEFB 19,18,243,194,195,193,192,192
  DEFB 224,127,31,73,255,2,0,1
  DEFB 10,10,255,2,49,241,224,0
  DEFB 1,170,170,255,2,199,255,2
  DEFB 0,1,10,10,255,2,243,243
  DEFB 227,3,163,166,254,248,114
; (05 x 04) Display screen
  DEFB 127,255,1,248,248,192,204,192
  DEFB 204,255,2,0,2,15,63,127
  DEFB 127,255,2,0,2,255,6,0
  DEFB 2,254,255,3,254,255,1,31
  DEFB 31,3,131,195,195,204,192,204
  DEFB 204,192,204,204,0,1,255,11
  DEFB 254,253,251,247,239,255,1,191
  DEFB 127,255,3,253,251,227,227,227
  DEFB 227,227,227,227,227,254,130,130
  DEFB 130,130,254,254,254,255,4,254
  DEFB 253,255,2,239,223,191,127,255
  DEFB 1,254,255,2,247,239,223,191
  DEFB 127,255,3,227,227,227,227,227
  DEFB 227,227,227,214,214,214,214,214
  DEFB 214,214,124,127,127,63,15,0
  DEFB 2,255,6,0,2,255,6,0
  DEFB 2,255,2,227,195,195,3,31
  DEFB 31,255,1,254,49
; (05 x 05) Moon
  DEFB 0,15,1,0,7,254,0,21
  DEFB 1,3,3,7,31,63,127,255
  DEFB 12,128,224,240,248,252,254,255
  DEFB 2,0,8,7,7,15,15,15
  DEFB 15,15,15,255,24,128,128,192
  DEFB 192,192,192,192,192,15,15,15
  DEFB 7,7,3,3,1,255,23,254
  DEFB 192,192,192,128,128,0,11,255
  DEFB 1,127,63,31,7,1,0,2
  DEFB 255,5,252,0,2,252,248,240
  DEFB 192,0,12

; Graphics (Characters) Part 2
;
; All character graphics are (2 x 4). Aramis Le Peux
  DEFB 0,0,0,0,0,0,7,224
  DEFB 15,240,31,248,53,172,63,252
  DEFB 56,28,54,108,17,136,17,136
  DEFB 12,48,11,208,4,32,7,224
  DEFB 3,192,59,220,123,222,123,222
  DEFB 123,222,107,214,107,214,107,214
  DEFB 107,214,111,246,46,116,14,112
  DEFB 14,112,14,112,30,120,62,124
; Aramis Le Peux (Mask)
  DEFB 255,255,255,255,240,15,224,7
  DEFB 192,3,128,1,128,1,128,1
  DEFB 128,1,128,1,128,1,192,3
  DEFB 192,3,224,7,224,7,240,15
  DEFB 128,1,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,128,1
  DEFB 224,7,192,3,128,1,128,1
; Robin of Shylock
  DEFB 0,0,1,224,7,252,7,252
  DEFB 14,6,28,2,24,218,56,138
  DEFB 60,60,44,126,44,47,38,0
  DEFB 18,124,31,228,3,248,9,248
  DEFB 38,160,126,160,118,160,118,32
  DEFB 119,32,123,96,115,224,35,224
  DEFB 3,224,3,224,1,192,1,192
  DEFB 1,192,1,224,1,240,1,112
; Robin of Shylock (Mask)
  DEFB 252,15,240,1,240,1,224,0
  DEFB 192,0,192,0,128,0,128,0
  DEFB 128,0,128,0,128,0,128,0
  DEFB 128,1,192,1,192,1,224,3
  DEFB 0,15,0,15,0,15,0,15
  DEFB 0,15,0,15,0,15,0,15
  DEFB 136,15,248,15,248,15,252,31
  DEFB 252,15,252,7,252,7,252,7
; Rachel of Amazonia
  DEFB 7,0,31,192,63,240,49,248
  DEFB 38,120,15,124,15,188,0,122
  DEFB 21,126,49,62,15,190,7,124
  DEFB 3,172,0,14,0,246,1,182
  DEFB 3,90,7,88,7,88,3,24
  DEFB 1,56,1,176,1,240,1,240
  DEFB 1,240,1,240,0,0,0,96
  DEFB 0,96,1,224,3,224,3,32
; Rachel of Amazonia (Mask)
  DEFB 192,31,128,7,128,3,128,3
  DEFB 128,1,128,1,224,0,192,0
  DEFB 128,0,128,0,128,0,224,0
  DEFB 240,0,248,0,252,0,252,0
  DEFB 240,0,240,0,240,3,240,3
  DEFB 248,3,252,3,252,7,252,7
  DEFB 252,7,252,7,252,7,255,15
  DEFB 252,15,248,15,248,15,248,15

; Graphics (Compacted) Scenery Part 4 (07 x 04) Flowers
  DEFB 0,25,7,31,1,0,1,1
  DEFB 7,15,0,1,192,241,251,255
  DEFB 1,230,224,248,0,2,224,248
  DEFB 252,112,96,112,0,23,15,0
  DEFB 3,30,255,1,127,127,255,1
  DEFB 30,24,16,0,1,1,1,124
  DEFB 255,1,59,7,48,224,128,128
  DEFB 0,2,56,248,252,124,60,60
  DEFB 28,220,0,10,1,3,7,6
  DEFB 8,0,1,63,255,2,241,131
  DEFB 7,7,7,255,1,198,224,224
  DEFB 194,190,255,1,239,255,1,31
  DEFB 15,127,255,1,240,96,240,135
  DEFB 223,239,236,246,244,23,15,200
  DEFB 203,103,127,15,156,248,252,0
  DEFB 1,240,252,196,0,12,15,15
  DEFB 14,12,12,8,8,0,1,135
  DEFB 11,29,25,24,56,48,48,240
  DEFB 248,248,248,240,240,96,96,62
  DEFB 49,99,99,71,70,6,6,124
  DEFB 28,142,6,6,0,11
; (02 x 04) Organon the Guard
  DEFB 0,1,7,28,24,26,24,25
  DEFB 30,0,1,224,56,24,88,24
  DEFB 152,120,13,103,123,76,119,120
  DEFB 119,57,176,206,190,230,222,30
  DEFB 254,248,30,7,0,1,15,11
  DEFB 13,28,30,32,224,0,1,240
  DEFB 208,176,56,120,30,28,30,14
  DEFB 14,14,28,124,120,56,120,112
  DEFB 112,112,56,62,240
; (05 x 02) Reggie the Rat
  DEFB 0,11,3,15,31,31,63,0
  DEFB 3,248,254,255,1,241,250,0
  DEFB 6,136,72,0,12,1,1,3
  DEFB 30,63,63,56,255,2,159,31
  DEFB 7,251,253,254,102,47,175,135
  DEFB 243,12,252,252,118,50,223,7
  DEFB 193,0,4,64,128,0,1,128
  DEFB 3
; (10 x 03) Roof / Top of Well
  DEFB 0,8,15,31,31,0,1,31
  DEFB 31,62,60,255,3,0,1,127
  DEFB 127,126,254,255,2,252,0,1
  DEFB 59,115,119,231,255,2,0,1
  DEFB 255,1,254,254,252,253,255,2
  DEFB 0,1,127,127,255,5,3,236
  DEFB 207,223,223,159,0,1,255,2
  DEFB 0,1,243,247,247,239,0,1
  DEFB 252,254,2,248,250,251,247,0
  DEFB 4,128,192,64,96,0,5,1
  DEFB 1,3,125,96,15,255,4,224
  DEFB 128,47,207,223,159,191,63,0
  DEFB 2,251,251,243,247,231,239,3
  DEFB 125,0,1,255,5,254,255,1
  DEFB 0,1,159,191,63,127,127,96
  DEFB 191,0,1,253,253,249,251,243
  DEFB 0,1,224,15,255,5,15,7
  DEFB 247,239,239,239,207,223,223,160
  DEFB 160,176,208,208,216,232,232,0
  DEFB 1,3,7,7,7,0,3,15
  DEFB 255,3,254,8,94,94,207,223
  DEFB 159,191,0,4,248,254,254,252
  DEFB 1,0,4,127,255,3,0,3
  DEFB 14,254,254,252,248,0,3,127
  DEFB 255,3,0,4,224,255,3,63
  DEFB 0,3,31,159,159,63,60,0
  DEFB 1,13,13,236,244,244,246,192
  DEFB 0,1,192,192,0
; (11 x 10) Well
  DEFB 0,8,94,94,94,94,92,95
  DEFB 91,91,0,4,1,253,253,253
  DEFB 0,3,74,181,181,181,181,0
  DEFB 3,72,188,182,182,182,0,5
  DEFB 255,1,199,255,1,0,5,252
  DEFB 255,2,0,5,255,3,13,13
  DEFB 13,13,13,236,237,237,192,192
  DEFB 192,192,192,0,1,252,254,0
  DEFB 16,92,94,94,90,94,94,94
  DEFB 94,1,0,7,181,74,0,6
  DEFB 176,70,6,6,2,6,4,6
  DEFB 0,24,12,12,13,13,13,13
  DEFB 13,13,6,198,198,198,198,198
  DEFB 198,198,0,16,110,94,94,92
  DEFB 92,92,88,92,0,14,1,3
  DEFB 6,6,15,22,32,192,255,1
  DEFB 128,0,3,128,64,32,208,120
  DEFB 0,16,5,13,13,13,13,13
  DEFB 13,13,198,198,198,198,199,195
  DEFB 192,192,0,3,62,255,1,163
  DEFB 62,0,9,92,92,94,94,94
  DEFB 78,110,78,0,8,3,2,3
  DEFB 3,3,3,3,3,128,127,64
  DEFB 255,1,63,63,63,63,24,224
  DEFB 24,248,248,248,248,184,0,16
  DEFB 13,12,12,12,12,13,13,13
  DEFB 192,192,192,192,192,192,192,192
  DEFB 0,16,94,94,94,94,94,94
  DEFB 92,92,0,8,3,3,1,1
  DEFB 1,0,3,63,191,159,159,159
  DEFB 227,127,0,1,184,248,248,248
  DEFB 240,240,192,0,17,13,13,13
  DEFB 13,13,13,13,13,192,192,192
  DEFB 128,128,128,128,192,0,13,1
  DEFB 1,1,92,94,94,14,238,206
  DEFB 238,238,0,3,128,192,224,224
  DEFB 7,0,6,3,255,1,0,6
  DEFB 255,2,0,6,255,2,0,6
  DEFB 128,255,1,0,8,13,13,13
  DEFB 13,13,13,13,1,192,192,192
  DEFB 192,192,208,208,216,0,8,1
  DEFB 3,3,3,3,7,7,7,238
  DEFB 204,220,220,220,156,156,156,63
  DEFB 252,191,135,224,254,223,223,254
  DEFB 0,1,255,2,6,112,217,137
  DEFB 0,3,255,1,0,1,255,3
  DEFB 0,3,255,1,6,240,25,137
  DEFB 127,0,1,127,255,1,6,240
  DEFB 249,249,240,254,251,227,15,255
  DEFB 1,63,125,29,29,29,29,29
  DEFB 29,29,28,216,216,216,216,220
  DEFB 220,220,204,0,8,7,15,15
  DEFB 15,14,30,30,30,156,28,92
  DEFB 92,44,108,92,92,255,1,127
  DEFB 127,159,195,248,252,252,201,233
  DEFB 249,249,240,0,1,127,159,255
  DEFB 2,127,63,249,0,1,240,249
  DEFB 233,233,249,249,240,0,1,251
  DEFB 191,249,241,249,248,240,1,15
  DEFB 159,249,254,252,241,3,255,3
  DEFB 60,60,60,57,57,57,57,57
  DEFB 204,204,204,206,206,206,207,207
  DEFB 0,8,30,60,60,60,60,120
  DEFB 120,120,92,92,92,92,92,120
  DEFB 0,2,252,125,57,193,252,127
  DEFB 127,63,191,255,2,248,0,1
  DEFB 241,251,59,249,233,201,240,0
  DEFB 1,255,2,254,63,127,255,1
  DEFB 254,0,1,199,108,109,153,155
  DEFB 143,0,1,7,239,255,2,254
  DEFB 252,225,3,206,238,236,224,57
  DEFB 57,57,57,57,121,121,113,207
  DEFB 199,199,198,192,192,192,128,0
  DEFB 8,240,0,15,15,0,7,243
  DEFB 1,0,6,255,2,0,6,239
  DEFB 199,0,6,255,1,248,0,6
  DEFB 128,0,7,112,112,112,96,0
  DEFB 20
; (04 x 02) Jump Chute / Corridor Pad
  DEFB 31,63,63,63,55,48,31,0
  DEFB 1,255,5,0,1,255,1,0
  DEFB 1,255,5,0,1,255,1,0
  DEFB 1,248,204,228,228,196,12,248
  DEFB 0,1,127,255,7,31,191,191
  DEFB 191,191,191,191,191,241,251,251
  DEFB 251,251,187,155,195,254,255,7
; (04 x 07) Cracked Column Section 1
  DEFB 3,3,6,6,7,7,7,7
  DEFB 0,2,128,240,126,255,3,0
  DEFB 1,24,60,126,14,231,251,252
  DEFB 0,6,128,192,7,7,7,7
  DEFB 7,7,7,7,255,10,254,254
  DEFB 254,254,254,254,0,1,64,64
  DEFB 192,192,192,192,192,3,1,1
  DEFB 0,1,2,2,2,2,255,7
  DEFB 127,254,254,254,254,254,255,3
  DEFB 192,192,192,192,64,64,64,64
  DEFB 3,3,3,3,3,3,0,1
  DEFB 1,127,127,127,127,127,127,127
  DEFB 191,255,8,64,64,64,128,128
  DEFB 192,224,224,7,15,15,15,15
  DEFB 15,15,15,223,223,239,239,239
  DEFB 211,188,63,255,8,224,240,240
  DEFB 240,240,240,240,240,14,14,15
  DEFB 15,15,3,1,4,255,7,127
  DEFB 255,8,240,240,112,112,176,192
  DEFB 176,48,7,7,7,7,7,7
  DEFB 7,0,1,127,127,63,143,239
  DEFB 239,247,0,1,255,7,0,1
  DEFB 240,240,240,240,240,240,240,0
  DEFB 1
; (04 x 06) Cracked Column Section 2
  DEFB 0,3,1,1,1,0,4,240
  DEFB 254,255,2,127,0,3,7,127
  DEFB 255,3,0,3,224,224,224,224
  DEFB 192,0,3,1,1,1,3,3
  DEFB 3,63,255,7,251,251,249,253
  DEFB 253,253,252,254,192,192,192,192
  DEFB 192,192,192,192,3,3,3,3
  DEFB 3,3,3,3,255,8,254,248
  DEFB 247,247,207,191,255,2,192,64
  DEFB 64,0,1,128,192,192,192,3
  DEFB 3,3,3,3,7,7,7,255
  DEFB 3,251,251,247,247,199,255,8
  DEFB 192,192,192,192,192,224,224,224
  DEFB 7,6,0,1,7,7,7,7
  DEFB 7,55,123,251,251,255,12,224
  DEFB 224,224,224,224,224,224,224,7
  DEFB 7,7,7,7,7,7,7,255
  DEFB 16,224,224,224,224,192,192,128
  DEFB 128,8
; (07 x 07) Fire bowl
  DEFB 0,13,1,1,0,3,8,12
  DEFB 14,14,15,15,0,9,128,128
  DEFB 0,2,64,64,64,0,24,2
  DEFB 2,3,3,3,3,1,1,7
  DEFB 7,7,7,135,207,207,239,0
  DEFB 2,135,143,159,223,215,215,64
  DEFB 192,192,192,192,192,144,144,0
  DEFB 24,1,1,3,2,2,3,1
  DEFB 0,1,237,109,121,57,49,49
  DEFB 16,0,1,215,179,163,161,161
  DEFB 33,1,0,1,24,56,184,172
  DEFB 204,196,196,0,17,255,1,0
  DEFB 1,63,60,28,14,7,3,255
  DEFB 1,0,1,255,1,31,15,15
  DEFB 7,195,255,1,0,1,255,7
  DEFB 0,1,255,7,0,1,255,7
  DEFB 0,1,255,7,0,1,252,252
  DEFB 248,240,224,192,1,0,7,225
  DEFB 248,60,15,0,4,255,2,127
  DEFB 255,1,0,1,255,1,31,7
  DEFB 255,4,0,1,255,7,0,1
  DEFB 255,1,248,224,255,2,252,240
  DEFB 0,4,128,0,25,1,1,0
  DEFB 3,1,0,1,255,1,159,159
  DEFB 255,1,0,1,255,1,207,0
  DEFB 2,128,128,0,3,128,0,32
  DEFB 7,15,30,30,62,63,0,1
  DEFB 63,159,31,63,127,127,255,1
  DEFB 0,1,255,1,224,240,248,248
  DEFB 252,252,0,1,252,0,16
; (03 x 04) Plinth
  DEFB 0,1,255,2,0,1,255,3
  DEFB 0,2,255,2,0,1,255,3
  DEFB 0,2,255,2,0,1,255,3
  DEFB 0,1,63,63,63,63,95,79
  DEFB 113,119,255,2,253,253,254,254
  DEFB 255,2,252,252,252,252,252,112
  DEFB 142,126,127,127,127,127,0,1
  DEFB 63,127,127,254,255,3,0,1
  DEFB 255,3,254,254,254,254,0,1
  DEFB 252,254,254,0,1,252,254,254
  DEFB 254,254,254,254,0,1,126,255
  DEFB 6,0,1,63,127,127,127,127
  DEFB 127,127,60
; (04 x 06) Large stool
  DEFB 127,255,4,0,1,31,0,1
  DEFB 239,247,255,3,0,1,127,0
  DEFB 1,255,4,251,0,1,254,0
  DEFB 1,254,255,4,0,1,248,0
  DEFB 1,31,31,31,30,30,30,30
  DEFB 30,0,16,248,240,240,240,248
  DEFB 248,120,248,31,31,31,31,31
  DEFB 31,31,31,0,4,63,255,2
  DEFB 63,0,4,252,255,2,252,248
  DEFB 248,248,248,248,248,248,248,31
  DEFB 31,15,31,31,31,31,31,0
  DEFB 16,248,248,248,152,120,120,248
  DEFB 248,31,31,31,31,31,31,30
  DEFB 30,0,16,248,248,248,248,248
  DEFB 248,240,240,29,31,31,31,31
  DEFB 31,0,1,14,0,16,248,248
  DEFB 248,248,248,0,1,112,0,1
; (02 x 05) Plant
  DEFB 4,12,12,12,14,7,7,3
  DEFB 64,32,32,96,224,192,192,128
  DEFB 3,1,1,1,1,1,13,30
  DEFB 0,3,60,126,126,126,248,30
  DEFB 28,12,4,4,4,4,3,128
  DEFB 128,136,156,156,156,136,136,1
  DEFB 1,17,57,57,57,13,5,56
  DEFB 64,64,64,128,28,124,252,7
  DEFB 1,3,2,2,2,2,0,1
  DEFB 24,0,7
; (03 x 07) Torch
  DEFB 0,8,4,0,2,4,4,6
  DEFB 7,7,0,4,16,0,1,96
  DEFB 224,0,8,3,1,1,3,15
  DEFB 11,11,11,192,128,192,72,216
  DEFB 120,184,224,0,8,15,6,14
  DEFB 10,15,13,7,0,1,192,192
  DEFB 224,224,240,224,192,0,2,3
  DEFB 3,3,1,1,0,2,31,31
  DEFB 0,1,191,224,223,223,0,1
  DEFB 224,227,3,243,30,238,236,0
  DEFB 9,15,15,15,14,6,7,0
  DEFB 1,7,192,64,64,192,128,128
  DEFB 0,1,128,0,8,31,7,14
  DEFB 7,6,7,6,3,224,128,192
  DEFB 128,128,128,128,0,9,3,3
  DEFB 3,3,3,3,3,0,9
; (06 x 05) Sword in Concrete
  DEFB 0,6,14,15,0,40,13,12
  DEFB 6,3,1,0,3,128,193,97
  DEFB 48,134,207,27,54,192,224,160
  DEFB 144,144,224,0,26,3,7,4
  DEFB 6,3,0,3,44,249,51,38
  DEFB 230,195,1,0,1,64,192,64
  DEFB 96,32,48,216,252,0,35,7
  DEFB 31,60,125,103,111,63,31,15
  DEFB 135,130,129,7,0,1,128,224
  DEFB 199,63,255,3,0,3,192,224
  DEFB 248,252,243,0,9,3,15,25
  DEFB 19,63,62,31,60,147,199,207
  DEFB 207,75,79,135,252,224,251,255
  DEFB 8,251,248,240,195,254,248,252
  DEFB 255,3,31,143,7,224,48,144
  DEFB 248,248,248,248,224

; Unused
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0

main:
; Initialise Interrupt Code then Display and Handle Input Device Selection Menu
  LD SP,23808             ; Set Stack Pointer to 23808
  XOR A                   ; Load A with zero
  LD (23364),A            ; Store zero at 23364 (see trivia)
  LD (IY+65),A            ; Reset all Interrupt Routine flags
  LD (IY+87),3            ; Set P-FLAG bits 0 and 1 (OVER 1) (IY = 23610)
  LD (IY+48),8
  LD A,24                 ; Put JR instruction at 65535 for jumping to
                          ; interrupt routine...
  LD (65535),A            ; ...
  LD A,195                ; Load first byte of interrupt routine with 195...
  LD (65524),A            ; ...representing "JP"
  LD HL,62178             ; Load following two bytes of interrupt routine with
                          ; 62178...
  LD (65525),HL           ; ...to make "JP 62178"
  LD A,59                 ; Load A with 59
  DI                      ; Disable Interrupts
  LD I,A                  ; Load I register with 57 (for interrupt routine)
  EI                      ; Enable Interrupts
  HALT                    ; Wait for interrupt
  XOR A                   ; Reset all Interrupt Routine flags...
  LD (IY+65),A            ; ... (IY = 23610)
  IM 2                    ; Set Interrupt Mode 2
  LD A,1                  ; Set Player Attribute Update Flag (Player Attribute
                          ; Update mode)...
  LD (23706),A            ; ...
  CALL 38003              ; Set border to black and clear temporary storage
                          ; area of memory
  JR 37702                ; Display and handle Input Device Selection Menu

; Wait for Interrupt then Display and Handle Input Device Selection Menu
;
; Used by the routine at 64582.
  HALT                    ; Wait for interrupt
  LD SP,23808             ; Set Stack Pointer to 23808
  XOR A                   ; Reset all Interrupt Routine flags...
  LD (IY+65),A            ; ... (IY = 23610)
  IM 2                    ; Set Interrupt Mode 2
  CALL 38003              ; Set border to black and clear temporary storage
                          ; area of memory
; This entry point is used by the routine at 37632
  CALL 37909              ; Draw Input Device Selection Menu and update
                          ; currently selected input device
  CALL 47502              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  CP 4                    ; If "CHANGE GAME OPTIONS" selected...
  JP Z,37758              ; ...then skip ahead to 37758
  CP 5                    ; If "INSTRUCTIONS" selected...
  JR Z,37752              ; ...then skip ahead to 37752
  CP 6                    ; If "PLAY GAME" selected...
  JP Z,38024              ; ...then jump to 38024 (initialise data and start a
                          ; new game)
  PUSH AF                 ; Store AF (A = index of selected menu item)
  LD A,(63653)            ; Load A with index of currently selected input
                          ; device (see trivia)
  PUSH AF                 ; Store AF (A = index of currently selected input
                          ; device)
  LD C,A                  ; Load C with index of currently selected input
                          ; device
  LD A,(49084)            ; Load A with y-coordinate of top edge of Window 6
                          ; (Control Selection Window)
  ADD A,C                 ; Add index of currently selected input device...
  ADD A,2                 ; ...and add two more to get y-coordinate of menu
                          ; item for currently selected input device
  LD B,A                  ; Load value into B
  LD C,3                  ; Load C with 3
  CALL 63219              ; Load HL with Attribute File address for coordinates
                          ; (C, B)
  LD (HL),71              ; Set attribute at this location to 71 (white INK,
                          ; black PAPER, BRIGHT) (see trivia)
  POP DE                  ; Restore DE (D = index of currently selected input
                          ; device, previously in AF)
  POP AF                  ; Store AF (A = index of selected menu item)
  LD (63653),A            ; Set new selected input device index at 63653
  CALL 63598              ; Update currently selected input device...
  JR 37705                ; ...and loop back to 37705
  CALL 37951              ; Display Instructions windows
  JP 37702                ; Jump back to 37702 to capture next menu selection
  CALL 37764              ; Display and handle Gadget X Menu
  JP 37702                ; Jump back to 37702 to capture next menu selection

; Display and Handle Gadget X Menu
;
; Used by the routines at 37689 and 43494.
  LD A,11                 ; Set y-coordinate of top edge (characters) of Window
                          ; 7 to 11...
  LD (49092),A            ; ...
  LD A,7                  ; Load A with index of "REDEFINE THE GAME" Window
  CALL 47185              ; ...and draw
  LD HL,50449             ; Point HL at Gadget X menu text...
  CALL 46902              ; ...and print
  CALL 47897              ; Play upward scale sound
  CALL 47502              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  OR A                    ; If REDEFINE KEYBOARD selected...
  JP Z,37824              ; ...then skip ahead to 37824
  CP 1                    ; If PLAYER ATTRIBUTE IGNORE selected...
  JR Z,37815              ; ...then skip ahead to 37815
  CP 2                    ; If PLAYER ATTRIBUTE UPDATE selected...
  JR Z,37820              ; ...then skip ahead to 37820
  CP 5                    ; If DO NOTHING selected...
  RET Z                   ; ...then return
  BIT 0,(IY+65)           ; If Game In Progress Flag is reset... (IY = 23610)
  JR Z,37863              ; ...then skip ahead to 37863
  CP 3                    ; If SAVE THE GAME selected...
  JR Z,37841              ; ...then skip ahead to 37841
  CP 4                    ; If LOAD AN OLD GAME selected...
  JR Z,37848              ; ...then skip ahead to 37848
  XOR A                   ; Reset Player Attribute Update Flag (Player
                          ; Attribute Ignore mode)...
  LD (23706),A            ; ...
  RET                     ; Return
  LD A,1                  ; Set Player Attribute Update Flag (Player Attribute
                          ; Update mode)...
  JR 37816                ; ...and return
  CALL 47897              ; Play upward scale sound
  LD A,8                  ; Draw Window 8...
  CALL 47193              ; ...
  LD HL,50513             ; Point HL at "Redefine Keys Window" text...
  CALL 46902              ; ...and print to screen
  JP 63740                ; Redefine keyboard controls
  CALL 37880              ; Clear Stack and Prepare to Save Data
  CALL 1218               ; Jump to ROM routine to save game data
  RET                     ; Return (to start of Main Game Loop - see PUSH at
                          ; 37887)
  CALL 37880              ; Clear Stack and Prepare to Load Data
  SCF                     ; Set Carry Flag as we are LOADing, not VERIFYing
  LD SP,22528             ; Set Stack Pointer to 22528
  CALL 1366               ; Jump to ROM routine to load game data
  LD SP,(23613)           ; Restore Stack Pointer from 23613 (set to 23808 in
                          ; routine at 37880)
  RET                     ; Return (to start of Main Game Loop - see PUSH at
                          ; 37887)
  LD A,5                  ; Draw Window 5...
  CALL 47193              ; ...
  LD HL,50594             ; Point HL at "SAVE & LOAD ARE NOT ALLOWED HERE..."
                          ; text...
  CALL 46902              ; ...and print to screen
  CALL 47897              ; Play upward scale sound
  JP 64230                ; Wait for interrupt then display "PRESS FIRE TO
                          ; CONTINUE" Window and wait for Fire to be pressed
                          ; and return

; Clear Stack and Prepare to Load Data
;
; Used by the routine at 37764.
  POP DE                  ; Remove return address of calling routine from top
                          ; of Stack
  LD SP,23808             ; Set Stack Pointer to 23808
  LD HL,38205             ; Load HL with start address of Main Game Loop
                          ; routine
  PUSH HL                 ; Store HL (address of Main Game Loop)
  LD (23613),SP           ; Store Stack Pointer address at 23613 (System
                          ; Variable ERR SP)
  PUSH DE                 ; Store HL (return address in routine that called
                          ; this routine)
  CALL 47897              ; Play upward scale sound
  CALL 64230              ; Wait for interrupt then display "PRESS FIRE TO
                          ; CONTINUE" Window and wait for Fire to be pressed
  LD IX,23296             ; Set base address for load to 23296
  LD DE,23808             ; Set data length to 23808
  LD A,255                ; Load A with 255 to denote a data block
  RET                     ; Return

; Draw Input Device Selection Menu and Update Currently Selected Input Device
;
; Used by the routine at 37689.
  CALL 47856              ; Clear Display File
  LD A,70                 ; Load system variable ATTR T with 70 (yellow INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  CALL 47881              ; ...and flood Attribute File with this attribute
  LD A,5                  ; Draw Window 5 ("STORMBRINGER A TRUE GRAPHIC
                          ; ADVENTURE...")...
  CALL 47193              ; ...
  LD HL,50640             ; Point HL at "STORMBRINGER A TRUE GRAPHIC
                          ; ADVENTURE..." text...
  CALL 46902              ; ...and print to screen
  LD A,6                  ; Draw Control Selection Menu Window...
  CALL 47185              ; ...
  LD HL,50090             ; Point HL at Initial Control Selection Menu text...
  CALL 46902              ; ...and print to screen
  CALL 47930              ; Play downward scale sound
  LD A,(63653)            ; Load index of currently selected input device into
                          ; A
  JP 63598                ; Update currently selected input device and return

; Display Instructions Windows
;
; Used by the routines at 37689 and 43494.
  LD A,10                 ; Set y-coordinate of top edge (characters) of Window
                          ; 7 to 10...
  LD (49092),A            ; ...
  LD A,7                  ; Load A with 7 (index of window to draw)
  LD HL,50138             ; Point HL at Instructions Text
  CALL 37989              ; Print text at HL in Window 07
  LD A,8                  ; Draw Window 8...
  CALL 47193              ; ...
  LD HL,50296             ; Point HL at "THE KEYS ARE :-..." text...
  CALL 46902              ; ...and print to screen
  CALL 63691              ; Print current control keys to screen
  CALL 47897              ; Play upward scale sound
  CALL 64230              ; Wait for interrupt then display "PRESS FIRE TO
                          ; CONTINUE" Window and wait for Fire to be pressed
  LD A,9                  ; Prepare to draw Window 9
  LD HL,50360             ; Point HL at Cast of Characters text
  PUSH HL                 ; Store HL (pointer to text to print)
  CALL 47193              ; Draw current Instructions Window
  POP HL                  ; Restore HL (pointer to text to print)
  CALL 46902              ; Print text
  CALL 47897              ; Play upward scale sound
  JP 64230                ; Wait for interrupt then display "PRESS FIRE TO
                          ; CONTINUE" Window and wait for Fire to be pressed
                          ; and return

; Set Border to Black and Clear Temporary Storage Area of Memory
;
; Used by the routine at 37689.
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
; Used by the routine at 37689.
  LD A,(23672)            ; Load A with LSB of System Variable FRAMES...
  AND 127                 ; ...and clear bit 7 to leave random number between 0
                          ; and 127
  JR Z,38024              ; If number is zero then loop back to 38024
  LD B,A                  ; Load B with generated number
  AND 96                  ; If neither bit 5 not bit 6 is set (see trivia)...
  JR Z,38024              ; ...then loop back to 38024 to generate another
                          ; number
  LD A,B                  ; Load A with generated number...
  LD (23484),A            ; ...and store at 23484 as Current Password Number
  LD HL,51742             ; Point HL at start of "---" segment for Password
                          ; Number in Rachel's help text at 51709
  CALL 46837              ; Splice numeric Password data as a string into
                          ; Rachel's help text
  CALL 47897              ; Play upward scale sound
  LD A,70                 ; Set ATTR T system variable to 70 (yellow INK, black
                          ; PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD HL,49282             ; Copy data from 49282 - 49353 (Characters' Initial
                          ; Stats)...
  LD DE,24768             ; ...to 24768 - 24839 (Characters' Current Stats)...
  LD BC,72                ; ...
  LDIR                    ; ...
  LD HL,48603             ; Copy data from 48603 - 48610 (Magic Knight's
                          ; Initial Data)...
  LD BC,8                 ; ...to 24840 - 24847 (Magic Knight's Current
                          ; Data)...
  LDIR                    ; ...
  LD HL,48611             ; Copy data from 48611 - 48660 (Characters' Initial
                          ; Inventories)...
  LD BC,50                ; ...to 24848 - 24897 (Characters' Current
                          ; Inventories)...
  LDIR                    ; ...
  LD HL,48661             ; Copy data from 48661 - 48684 (Characters' Initial
                          ; Positions)...
  LD BC,24                ; ...to 24898 - 24921 (Characters' Current
                          ; Positions)...
  LDIR                    ; ...
  LD HL,48685             ; Copy data from 48685 - 48810 (Objects' Initial
                          ; Positions)...
  LD BC,126               ; ...to 24922 - 25047 (Objects' Current Positions)...
  LDIR                    ; ...
  CALL 46183              ; Set Magic Knight's available action flags
  XOR A                   ; Load A and HL with zero...
  LD H,A                  ; ...
  LD L,A                  ; ...
  LD (23560),A            ; Clear last pressed key
  LD (40605),A            ; Reset Bearwoolf Removed Flag
  LD (23486),A            ; Store zero at 23486 (see trivia)
  LD (23460),A            ; Set 1/50 Second Counter (Time Elapsed since last
                          ; second) to zero
  LD (23458),HL           ; Set Minute Counter and Second Counter to zero
  LD (23675),HL           ; Reset all Interrupt Routine flags
  NOP                     ; Do nothing (see trivia)...
  NOP                     ; ...
  NOP                     ; ...
  LD (23673),HL           ; Set two most significant bytes of system variable
                          ; FRAMES to zero
  LD (23471),HL           ; Set x- & y- coordinates of top-left character of
                          ; currently glowing "Locate Compass" component to
                          ; zero (see trivia)
  INC A                   ; Set Animate Puff of Smoke Flag...
  LD (23480),A            ; ...
  LD (64688),A            ; Set Do Not Draw Storm Cloud Flag
  LD A,36                 ; Set number of hours left to 36...
  LD (23457),A            ; ...
  LD A,135                ; Set room layout data instruction at 59866...
  LD (59866),A            ; ...to 135 (draw Security Door 1/3)
  INC A                   ; Set room layout data instruction at 59867...
  LD (59867),A            ; ...to 136 (draw Security Door 2/3)
  INC A                   ; Set room layout data instruction at 59868...
  LD (59868),A            ; ...to 137 (draw Security Door 3/3)
  LD HL,59006             ; Set Room Layout Data Pointer for Room 3 to 59006...
  LD (58847),HL           ; ...i.e. include Grunter graphic in room layout
  LD B,6                  ; Load A with random number in range 0-5...
  CALL 64829              ; ...
  LD (23703),A            ; ...and store as Index of Required Disquise
  LD A,(23672)            ; Load A with LSB of System Variable FRAMES...
  AND 7                   ; ...clear bits 3-7 to leave random number between 0
                          ; and 7...
  LD (23713),A            ; ...and set index of current Crystal Ball substring
                          ; to this value
  ADD A,4                 ; Add four to A...
  AND 7                   ; ...clear bits 3-7 to leave random number between 0
                          ; and 7...
  LD (23714),A            ; ...and set index of current Scroll substring to
                          ; this value
  LD A,36                 ; Set index of next object to be laid by Chicken to
                          ; 36 (Golden Egg)...
  LD (23466),A            ; ...
  LD A,12                 ; Set Storm Cloud's current room to 12 (Outdoors, 11,
                          ; The Spooky Forest, 3)...
  LD (23715),A            ; ...
  LD A,7                  ; Move Magic Knight into Outdoors, 6 (The Sword in
                          ; the Concrete), draw room and initialise
                          ; room-specific data...
  CALL 38841              ; ...
  SET 0,(IY+65)           ; Set Game In Progress Flag (IY = 23610)
  JR 38208                ; Jump into Main Game Loop (process keyboard input
                          ; and move Magic Knight or enter menus)

; Main Game Loop - Process Keyboard Input and Move Magic Knight or Enter Menus
;
; Used by the routines at 41578 and 64926.
  CALL 38844              ; Draw Magic Knight's current room, draw objects and
                          ; characters and initialise room-specific data
; This entry point is used by the routine at 38024.
  CALL 40008              ; Set Magic Knight's velocity to zero, if appropriate
                          ; move to new room, update state of Storm Cloud and
                          ; execute room-specific routine
  CALL 38434              ; Handle Magic Knight's fall
  LD A,127                ; Reset Bit 7 in A to select the keyboard half-row
                          ; SPACE - B
  IN A,(254)              ; Read the keyboard
  RRA                     ; Reset Carry Flag if SPACE pressed, else set it
  JR C,38232              ; SPACE was not pressed, so skip ahead to 38232
  LD A,254                ; Reset bit 0 in A to select the keyboard half-row
                          ; SHIFT - V
  IN A,(254)              ; Read the keyboard
  RRA                     ; Reset Carry Flag if SHIFT pressed, else set it
  LD HL,50809             ; Point HL at "BREAK KEY PRESSED" text
  JP NC,64582             ; If SHIFT was pressed (i.e. SHIFT-SPACE, or BREAK)
                          ; jump to "Game over" window routine and return to
                          ; Control Selection Menu
  CALL 38585              ; Kill Magic Knight's x-velocity if he cannot
                          ; horizontally pass through a block beside him
  CALL 64034              ; Capture keyboard or joystick input loading result
                          ; into A
  BIT 0,A                 ; If "left" pressed then...
  JR NZ,38272             ; Skip ahead to "move left" subroutine
  BIT 1,A                 ; If "right" pressed then...
  JR NZ,38312             ; Skip ahead to "move right" subroutine
  BIT 2,A                 ; If "up" pressed then...
  JP NZ,38329             ; Skip ahead to "jump" subroutine
  BIT 3,A                 ; If "down" pressed then...
  CALL NZ,64836           ; ...select Magic Knight's Room if Cheat / Debug Mode
                          ; is enabled
  BIT 4,A                 ; If "fire" pressed then...
  JR NZ,38266             ; ...skip ahead to 38266
  CALL 61816              ; Wait for interrupt then erase Magic Knight from
                          ; display, advance his current position then redraw
  JP 38208                ; Loop back for next key / control press
; Fire Pressed
  CALL 47592              ; Wait for Fire Button / Key to be Released
  JP 42494                ; Display and handle main in-game menu
; Left Pressed
  LD HL,23474             ; If "Magic Knight Can't Move Left" flag is set...
  BIT 0,(HL)              ; ...
  JP NZ,38208             ; ...then loop back to start of keyboard check
                          ; routine
  EX AF,AF'               ; Switch AF and AF'
  LD A,1                  ; Set Magic Knight Facing Left Flag...
  LD (23417),A            ; ...
  LD A,254                ; Set Magic Knight's x-velocity to minus 2...
  LD (24844),A            ; ...
  LD (38360),A            ; Prepare to set Magic Knight's x-velocity to minus 2
  EX AF,AF'               ; Switch AF and AF' (A now holds pressed controls
                          ; bitmap)
  BIT 2,A                 ; If "up" was also pressed...
  JR NZ,38333             ; ...then skip ahead to 38333 (jumping subroutine)
  XOR A                   ; Set Magic Knight's current y-velocity to zero...
  LD (24845),A            ; ...
  CALL 61816              ; Wait for interrupt then erase Magic Knight from
                          ; display, advance his current position then redraw
  CALL 38434              ; Handle Magic Knight's fall
  JP 38208                ; Loop back for next key / control press
; Right Pressed
  LD HL,23474             ; If "Magic Knight Can't Move Right" flag is set...
  BIT 1,(HL)              ; ...
  JP NZ,38208             ; ...then loop back to start of keyboard check
                          ; routine
  EX AF,AF'               ; Switch AF and AF'
  XOR A                   ; Reset Magic Knight Facing Left Flag...
  LD (23417),A            ; ...
  LD A,2                  ; Jump to 38288, setting Magic Knight's x-velocity to
                          ; 2...
  JR 38288                ; ...
; Up Pressed
  XOR A                   ; Prepare to set Magic Knight's x-velocity to zero...
  LD (38360),A            ; ...
  LD HL,49019             ; Point HL at start of Magic Knight's y-velocities
                          ; sequence table
  LD (23442),HL           ; Store current position in Magic Knight's
                          ; y-velocities sequence table at 23442
  LD A,(24841)            ; Load A with Magic Knight's current y-coordinate
                          ; (pixels)
  CP 8                    ; If y-coordinate is less than 8...
  JP C,38413              ; ...then jump to 38413 (exit loop as Magic Knight
                          ; can't get any higher!)
  LD HL,(23442)           ; Load HL with current position in Magic Knight's
                          ; y-velocities sequence table
  LD A,(HL)               ; Load the current y-velocity in the sequence into A
  NEG                     ; Negate (as Magic Knight is jumping upwards)
  OR A                    ; If A is zero...
  JR Z,38413              ; ...jump to 38413 (exit loop as we have reached the
                          ; end of the sequence)
  LD (24845),A            ; Load A into Magic Knight's y-velocity
; The operand of the instruction at 38359 represents the x-velocity value
; stored previously. This is modified by the instructions at 38291, 38330 and
; 38423.
  LD A,0                  ; Set Magic Knight's x-velocity...
  LD (24844),A            ; ...
  CALL 38585              ; Kill Magic Knight's x-velocity if he cannot
                          ; horizontally pass through a block beside him
  LD A,(24844)            ; Load Magic Knight's x-velocity into B...
  LD B,A                  ; ...
  LD A,(23474)            ; Load Magic Knight movement flags into A
  XOR B                   ; Check:
  CP 255                  ; If x-velocity is -2 (left), and Magic Knight can't
                          ; move left...
  JP Z,38419              ; ...then jump ahead to 38419
  CP 253                  ; If x-velocity is -2 (left), and Magic Knight can't
                          ; move left or right...
  JP Z,38419              ; ...then jump ahead to 38419
  CP 1                    ; If x-velocity is +2 (right), and Magic Knight can't
                          ; move left or right...
  JP Z,38419              ; ...then jump ahead to 38419
  OR A                    ; If x-velocity is +2 (right), and Magic Knight can't
                          ; move right...
  JP Z,38419              ; ...then jump ahead to 38419
  CALL 38724              ; Kill Magic Knight's jump if he cannot vertically
                          ; pass through a block above him
  EX AF,AF'               ; Switch AF and AF'
  CALL 61816              ; Wait for interrupt then erase Magic Knight from
                          ; display, advance his current position then redraw
  EX AF,AF'               ; Switch AF and AF'
  JR NZ,38413             ; If Magic Knight's jump was impeded by a block above
                          ; him then jump to 38413
  CALL 40008              ; Set Magic Knight's velocity to zero, if appropriate
                          ; move to new room, update state of Storm Cloud and
                          ; execute room-specific routine
  LD HL,(23442)           ; Load HL with current position in Magic Knight's
                          ; y-velocities sequence table
  INC HL                  ; Advance to next y-velocity in the sequence
  JR 38336                ; Loop back to 38336
  CALL 38429              ; Handle Magic Knight's fall, preserving x-velocity
  JP 38208                ; Loop back to start of keyboard check routine
  XOR A                   ; Set Magic Knight's x-velocity to zero...
  LD (24844),A            ; ...
  LD (38360),A            ; Prepare to set Magic Knight's x-velocity to zero
  JP 38394                ; Jump back to 38394

; Handle Magic Knight's Fall, Preserving x-Velocity
;
; Used by the routine at 38205.
  LD A,(38360)            ; Load Magic Knight's stored x-velocity
  JR 38435                ; Handle Magic Knight's fall

; Handle Magic Knight's Falls
;
; Used by the routine at 38205.
  XOR A                   ; Set A to zero
; This entry point is used by the routine at 38429.
  LD (38470),A            ; Prepare to set Magic Knight's x-velocity to A
  LD HL,49032             ; Point HL at end of table of y-velocities sequence
                          ; for jumping and falling
  LD (23442),HL           ; Store current position at 23442
  LD A,(23474)            ; If Magic Knight's movement flags are reset...
  OR A                    ; ...
  JR Z,38454              ; ...then skip ahead to 38454
  XOR A                   ; Prepare to set Magic Knight's x-velocity to zero...
  LD (38470),A            ; ...
  LD HL,(23442)           ; Load current position in y-velocities table into HL
  LD A,(HL)               ; Load current y-velocity from table into A
  CP 7                    ; If velocity is 7...
  JR Z,38466              ; ...then skip ahead to 38466
  DEC HL                  ; Step pointer back one byte in y-velocities table
  LD (23442),HL           ; Store pointer
  LD (24845),A            ; Load last y-velocity read from table into Magic
                          ; Knight's y-velocity
; The operand of the instruction at 38469 represents the x-velocity value
; stored previously. This is modified by the instructions at 38435, 38451 and
; 38579.
  LD A,0                  ; Set Magic Knight's x-velocity...
  LD (24844),A            ; ...
  LD A,(24840)            ; Load A with Magic Knight's current x-coordinate
                          ; (pixels)
  ADD A,4                 ; Add 4 to x-coordinate
  CALL 40658              ; Divide x-coordinate by eight, rounding down to
                          ; nearest integer
  LD C,A                  ; Load result (Magic Knight's x-coordinate in
                          ; characters) into C, setting B to zero...
  LD B,0                  ; ...
  LD A,(24841)            ; Load A with Magic Knight's current y-coordinate
                          ; (pixels)
  AND 7                   ; If y-coordinate is a multiple of eight...
  JR Z,38494              ; ...then skip ahead to 38494
  LD B,8                  ; Set B to 8, as we need to look one character block
                          ; lower due to Magic Knight spanning five, rather
                          ; than four, characters [y-coordinate is not a
                          ; multiple of eight]
  LD A,(24841)            ; Load A with Magic Knight's current y-coordinate
                          ; (pixels)
  ADD A,B                 ; Add B to current y-coordinate (i.e. y-coordinate of
                          ; highest full character block spanned by Magic
                          ; Knight)
  ADD A,32                ; Add 32 (as Magic Knight is 32 pixels high, so now
                          ; y-coordinate of highest full character block not
                          ; occupied by Magic Knight)
  CALL 40658              ; Divide A by eight, rounding down to nearest integer
  LD B,A                  ; Load result (y-coordinate in characters) into B
  CALL 63233              ; Point HL at Terrain Interaction Data for character
                          ; coordinates x=C, y=B (block that Magic Knight is
                          ; "falling through")
  LD A,(HL)               ; If this block, or the one to the right of it cannot
                          ; be passed vertically (downwards)...
  INC HL                  ; ...(i.e. Magic Knight has landed)...
  OR (HL)                 ; ...
  BIT 7,A                 ; ...
  JR NZ,38553             ; ...then skip ahead to 38553
  CALL 38585              ; Kill Magic Knight's x-velocity if he cannot
                          ; horizontally pass through a block beside him
  LD A,(24844)            ; Load Magic Knight's x-velocity into B...
  LD B,A                  ; ...
  LD A,(23474)            ; Load Magic Knight's movement flags into A
  XOR B                   ; Check:
  CP 255                  ; If x-velocity is -2 (left), and Magic Knight can't
                          ; move left...
  JP Z,38575              ; ...then jump ahead to 38575
  CP 253                  ; If x-velocity is -2 (left), and Magic Knight can't
                          ; move left or right...
  JP Z,38575              ; ...then jump ahead to 38575
  CP 1                    ; If x-velocity is +2 (right), and Magic Knight can't
                          ; move left or right...
  JP Z,38575              ; ...then jump ahead to 38575
  OR A                    ; If x-velocity is +2 (right), and Magic Knight can't
                          ; move right...
  JP Z,38575              ; ...then jump ahead to 38575
  CALL 61816              ; Wait for interrupt then erase Magic Knight from
                          ; display, advance his current position then redraw
  CALL 40008              ; Set Magic Knight's velocity to zero, if appropriate
                          ; move to new room, update state of Storm Cloud and
                          ; execute room-specific routine
  JP 38444                ; Loop back to 38444
  LD A,(24841)            ; Load A with Magic Knight's current y-coordinate
                          ; (pixels)
  AND 7                   ; Retain only pixel-within-character component (e.g.
                          ; 5 pixels down the pair of character blocks)
  NEG                     ; Negate (i.e. -5 pixels)
  AND 7                   ; Retain only pixel-within-character component (e.g.
                          ; 3 pixels up the pair of character blocks, or 3
                          ; pixels down to the ground)
  LD (24845),A            ; Set Magic Knight's y-velocity so that it will take
                          ; his feet to the ground
  CALL 61816              ; Wait for interrupt then erase Magic Knight from
                          ; display, advance his current position then redraw
  LD HL,0                 ; Set Magic Knight's x- and y-velocities to zero...
  LD (24844),HL           ; ...
  RET                     ; Return (Magic Knight has landed)
  XOR A                   ; Set Magic Knight's x-velocity to zero...
  LD (24844),A            ; ...
  LD (38470),A            ; Prepare to set Magic Knight's x-velocity to zero
  JP 38544                ; Loop back to 38544

; Kill Magic Knight's x-Velocity if he Cannot Horizontally Pass Through a Block
; Beside Him
;
; Used by the routines at 38205 and 38434.
  LD A,(23451)            ; Load B with Magic Knight's "temporary store"
                          ; movement flags...
  LD B,A                  ; ...
  LD A,(24840)            ; Load Magic Knight's x-coordinate into A
  CP 5                    ; If x-coordinate is less than 5...
  JP C,38604              ; ...then jump ahead to 38604
  CP 230                  ; If x-coordinate is 230 or greater...
  JP NC,38604             ; ...then jump ahead to 38604
  LD B,0                  ; Set B (Magic Knight's Temporary Store Movement
                          ; Flags) to zero (i.e. Magic Knight is not at the
                          ; outer edges of his current room, so can move both
                          ; left and right)
  LD A,B                  ; Load Magic Knight's Temporary Store Movement Flags
                          ; into A
  LD (23474),A            ; Set Magic Knight's movement flags
  LD A,(24841)            ; Load Magic Knight's y-coordinate into B
  LD B,A                  ; ...
  LD A,(24845)            ; Add Magic Knight's y-velocity to y-coordinate in
                          ; A...
  ADD A,B                 ; ...
  LD (23483),A            ; Store this new (predicted) y-coordinate at 23483
  LD C,4                  ; Set C to 4 (as Magic Knight is normally four
                          ; characters tall)
  AND 7                   ; If predicted y-coordinate is divisible by eight...
  JR Z,38626              ; ...then skip ahead to 38626...
  INC C                   ; ...else Magic Knight must be airborne and at
                          ; non-integer y-coordinate, and so spans five
                          ; character blocks rather than four
  LD A,C                  ; Load A with number of vertical characters spanned
                          ; by Magic Knight...
  LD (38659),A            ; ...and update instructions at 38658...
  LD (38698),A            ; ...and 38697 with this value
  LD A,(24840)            ; Load Magic Knight's current x-coordinate into C...
  LD C,A                  ; ...
  LD A,(24844)            ; Add Magic Knight's x-velocity to x-coordinate in
                          ; A...
  ADD A,C                 ; ...
  LD (23482),A            ; Store this new (predicted) x-coordinate at 23482
  CALL 40658              ; Divide predicted x-coordinate by eight, rounding
                          ; down to nearest integer...
  LD C,A                  ; ...and load into C
  LD A,(23483)            ; Load predicted y-coordinate into A...
  CALL 40658              ; ...divide it by eight, rounding down to nearest
                          ; integer...
  LD (23483),A            ; ...store back at 23483...
  LD B,A                  ; ...and load into B
; The operand of the instruction at 38658 represents number of characters
; spanned by Magic Knight, vertically. This is modified by the instruction at
; 38627.
  LD A,0                  ; Load number of characters (vertically) to check for
                          ; impassibility
  PUSH AF                 ; Store remaining number of character blocks spanned
                          ; by Magic Knight vertically to check
  CALL 63233              ; Point HL at terrain interaction data for character
                          ; coordinates x=C, y=B
  BIT 6,(HL)              ; If Bit 6 of terrain data is set (i.e. Magic Knight
                          ; cannot pass block horizontally)...
  JR NZ,38675             ; ...then jump ahead to 38675
  INC B                   ; Advance check to next character down
  POP AF                  ; Restore remaining number of character blocks
                          ; spanned by Magic Knight vertically to check
  DEC A                   ; Decrease count of remaining character blocks by one
  JR NZ,38660             ; Loop back to 38660 to check next block down
  JR 38684                ; Skip over setting Magic Knight's Cannot Move Left
                          ; Flag as there are no obstructions to the left
  POP AF                  ; Restore AF
  LD A,(23474)            ; Set "Magic Knight Cannot Move Left" Flag...
  OR 1                    ; ...
  LD (23474),A            ; ...
  LD A,(23482)            ; Load Magic Knight's predicted x-coordinate (pixels)
                          ; into A...
  ADD A,15                ; ...and add 15...
  CALL 40658              ; ...divide by eight, rounding down to nearest
                          ; integer...
  LD C,A                  ; ...and load into C
  LD A,(23483)            ; Load Magic Knight's predicted y-coordinate (chars)
                          ; into B...
  LD B,A                  ; ...
; The operand of the instruction at 38697 represents number of characters
; spanned by Magic Knight, vertically. This is modified by the instruction at
; 38630.
  LD A,0                  ; Load number of characters (vertically) to check for
                          ; impassibility
  PUSH AF                 ; Store AF (remaining number of vertical characters
                          ; to check for impassibility)
  CALL 63233              ; Point HL at terrain interaction data for character
                          ; coordinates x=C, y=B
  BIT 6,(HL)              ; If Bit 6 is set (i.e. Magic Knight cannot pass
                          ; block horizontally)...
  JR NZ,38714             ; ...jump ahead to 38714
  INC B                   ; Increase y-coordinate by one character
  POP AF                  ; Restore AF
  DEC A                   ; Decrease number of remaining blocks to check
  JR NZ,38699             ; If number of remaining blocks to check is not zero
                          ; then loop back to 38699
  JR 38723                ; Exit routine
  POP AF                  ; Restore AF
  LD A,(23474)            ; Set "Magic Knight Cannot Move Right" flag...
  OR 2                    ; ...
  LD (23474),A            ; ...
  RET                     ; Return

; Kill Magic Knight's Jump if he Cannot Vertically Pass Through a Block Above
; Him
;
; Used by the routine at 38205. Output: A  Zero (if Magic Knight's jump was not
; impeded) or 1 (if the jump was impeded)
  LD A,(24841)            ; Load Magic Knight's current y-coordinate into B...
  LD B,A                  ; ...
  LD A,(24845)            ; Load A with Magic Knight's y-velocity
  ADD A,B                 ; Add y-velocity to y-coordinate in A
  CALL 40658              ; Divide A by eight, rounding down to nearest integer
  LD B,A                  ; Load Magic Knight's y-coordinate (CHARS) into B
  LD A,(24840)            ; Load Magic Knight's current x-coordinate into A
  ADD A,4                 ; Add 4 to x-coordinate (to get point roughly quarter
                          ; of the way through Magic Knight's total width)
  CALL 40658              ; Divide A by eight, rounding down to nearest integer
  LD C,A                  ; Load Magic Knight's current x-coordinate (CHARS)
                          ; into C
  CALL 63233              ; Point HL at terrain interaction data for character
                          ; coordinates x=C, y=B
  BIT 4,(HL)              ; If Bit 4 of Magic Knight's current position's
                          ; terrain data (block is impassable vertically,
                          ; upwards) is set then...
  JR NZ,38772             ; ...kill Magic Knight's y-velocity and exit routine
  INC HL                  ; Advance to next character block along in "terrain
                          ; interaction data"
  BIT 4,(HL)              ; If Bit 4 of this position's terrain data (block is
                          ; impassable vertically, upwards) is set then...
  JR NZ,38772             ; ...kill Magic Knight's y-velocity and exit routine
  DEC B                   ; Advance y-coordinate by one character (to get point
                          ; roughly three quarters of the way through Magic
                          ; Knight's total width)
  CALL 63233              ; Point HL at terrain interaction data for character
                          ; coordinates x=C, y=B
  BIT 4,(HL)              ; If Bit 4 of this position's terrain data (block is
                          ; impassable vertically, upwards) is set then...
  JR NZ,38772             ; ...kill Magic Knight's y-velocity and exit routine
  INC HL                  ; Advance to next character block along in "terrain
                          ; interaction data"
  BIT 4,(HL)              ; If Bit 4 of this position's terrain data (block is
                          ; impassable vertically, upwards) is set then...
  JR NZ,38772             ; ...kill Magic Knight's y-velocity and exit routine
  XOR A                   ; Set A to zero, as jump was not impeded
  RET                     ; Return
  XOR A                   ; Set Magic Knight's y-velocity to zero...
  LD (24845),A            ; ...
  LD A,1                  ; Set A to one
  OR A                    ; Reset Zero Flag
  RET                     ; Return

; Draw Top In-Game Window
;
; Used by the routine at 38841.
  LD HL,50682             ; Point HL at Info Window Text (not carrying Mirror
                          ; version)
  PUSH HL                 ; Store HL (address of Info Window Text)
  LD A,20                 ; If Magic Knight is not carrying the Mirror (20)...
  CALL 45510              ; ...
  JR NZ,38796             ; ...then skip ahead to 38796
  POP HL                  ; Restore HL (address of Info Window Text)
  LD HL,51050             ; Point HL at Info Window Text (carrying Mirror
                          ; version)
  PUSH HL                 ; Store HL (address of Info Window Text)
  LD A,1                  ; Draw Window 1...
  CALL 47193              ; ...
  LD HL,16394             ; Load HL with Display File address corresponding to
                          ; (10, 0) (characters)...
  LD (63018),HL           ; ...and move Bitmap Virtual Text Cursor here
  LD HL,50805             ; Point HL at "STORMBRINGER" text...
  CALL 46902              ; ...and print to screen
  LD HL,16417             ; Load HL with Display File address corresponding to
                          ; (1, 1) (characters)...
  LD (63018),HL           ; ...and move Bitmap Virtual Text Cursor here
  POP HL                  ; Store HL (address of Info Window Text)
  CALL 46902              ; Print window text
  CALL 46463              ; Print Magic Knight's current strength at (6, 2) as
                          ; text if he is carrying the Mirror
  JP 46490                ; Draw objects in Magic Knight's inventory if he is
                          ; carrying the Mirror then return

; Print "STORMBRINGER" Text at Top of Command Summary Window
;
; Used by the routine at 63399.
  LD HL,16394             ; Load HL with Display File address corresponding to
                          ; (10, 0) (characters)...
  LD (63018),HL           ; ...and move Bitmap Virtual Text Cursor here
  LD HL,50805             ; Point HL at "STORMBRINGER" text...
  JP 46902                ; ...and print to screen, then return

; Move Magic Knight into Room A, Draw Room, Objects and Characters and
; Initialise Room-Specific Data
;
; Used by the routines at 38024, 40406, 40437 and 40546. Input:  A  Index of
; room to move Magic Knight into
  LD (23702),A            ; Update Magic Knight's current room to be room index
                          ; passed to this routine in A
; This entry point is used by the routines at 38205, 39714 and 64878.
  LD A,(24768)            ; Load Magic Knight's current strength into A...
  OR A                    ; ...and if not zero...
  JR NZ,38865             ; ...then skip ahead to 38865
  LD A,16                 ; If Magic Knight is wearing the Brass Ankh...
  CALL 45505              ; ...
  JR Z,38863              ; ...then skip ahead to 38863
; This entry point is used by the routines at 40153 and 40201.
  LD HL,51071             ; Point HL at "YOU DIED OF EXHAUSTION" text
  JP 64582                ; Jump to "Game over" window routine and return to
                          ; Control Selection Menu
  LD A,61                 ; Set Magic Knight's current strength to 60...
  DEC A                   ; ...
  LD (24768),A            ; ...
  CALL 38780              ; Draw top in-game window
  LD A,71                 ; Load A with 71 (white INK, black PAPER, BRIGHT)...
  LD (23695),A            ; ...and load this value into system variables ATTR
                          ; T...
  LD (23693),A            ; ...and ATTR P
  LD A,32                 ; Load 32 into "frame number" property of...
  LD (46756),A            ; ...axe 1...
  LD (46764),A            ; ...axe 2...
  LD (46772),A            ; ...axe 3...
  LD (46780),A            ; ...and axe 4...
  CALL 46784              ; Draw axe(s) to screen if Magic Knight is in an axe
                          ; room
  LD A,(23702)            ; Load A with Magic Knight's current room
  AND 3                   ; Clear all but the lowest two bits to leave a value
                          ; 0-3...
  ADD A,68                ; ...add this to 68...
  LD (49047),A            ; ...and set the border attribute of Window 1 to this
                          ; value
  LD HL,23808             ; Load character rows 0-4 in Terrain Interaction
                          ; Table with 254...
  LD DE,23809             ; ...i.e. prevent Magic Knight jumping above
                          ; ceilings...
  LD BC,160               ; ...
  LD (HL),254             ; ...
  LDIR                    ; ...
  LD BC,576               ; Load character rows 5-22 in Terrain Interaction
                          ; Table with 0...
  LD (HL),0               ; ...i.e. allow Magic Knight to pass through
                          ; freely...
  LDIR                    ; ...
  LD BC,31                ; Load character row 23 in Terrain Interaction Table
                          ; with 254...
  LD (HL),254             ; ...i.e. prevent Magic Knight falling through
                          ; floors...
  LDIR                    ; ...
  LD HL,22688             ; Starting at the beginning of the sixth character
                          ; row (y=5)...
  LD DE,22689             ; ...fill the Attribute File to the end with...
  LD BC,607               ; ...white INK, black PAPER, BRIGHT...
  LD (HL),71              ; ...
  LDIR                    ; ...
  LD HL,23368             ; Set all entries in Table of Glowing Attribute File
                          ; Addresses to zero...
  LD DE,23369             ; ...
  LD BC,29                ; ...
  LD (HL),0               ; ...
  LDIR                    ; ...
  LD A,(23702)            ; Load A with Magic Knight's current room
  LD HL,58841             ; Point HL at start of Table of Room Layout Data
                          ; Pointers
  CALL 64627              ; Load address of layout data for Magic Knight's
                          ; current room into HL
  PUSH HL                 ; Store HL (pointer to room layout data for Magic
                          ; Knight's current room)
  CALL 47833              ; Clear lower two thirds, and lower three character
                          ; rows of upper third of Display File
  POP HL                  ; Restore HL (pointer to room layout data for Magic
                          ; Knight's current room)
  LD (39065),HL           ; Store address of start of room layout data by
                          ; modifying instruction at 39063
; This entry point is used by the routines at 39014, 39036, 39047, 40729,
; 40752, 40765 and 40784.
  LD A,(HL)               ; Read byte of room layout data
  OR A                    ; If byte is a zero (i.e. marker for end of layout
                          ; data)...
  JP Z,39047              ; ...then draw floor, paint attributes / Terrain
                          ; Interaction Data, draw MK, characters and objects
                          ; then return
  CP 126                  ; If byte is 126 (i.e. vertical block drawing)...
  JP Z,39036              ; ...then skip ahead to 39036 (skip over block
                          ; drawing data to start of next instruction)
  CP 127                  ; If byte is 127 (i.e. horizontal block drawing)...
  JP Z,39036              ; ...then skip ahead to 39036 (skip over block
                          ; drawing data to start of next instruction)
  BIT 7,A                 ; If Bit 7 (Draw Layout Data Fragment Flag) is set...
  JP NZ,39014             ; ...then jump to 39014 (start drawing layout data
                          ; fragment)
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
  CALL 40664              ; Read Graphic Definition from Room Layout Data and
                          ; Draw
  POP HL                  ; Restore HL (current position in Room Layout Data)
  JR 38977                ; Loop back to 38977 for next byte of room layout
                          ; data

; Room Drawing Start Drawing Layout Data Fragment
;
; Used by the routine at 38841. Input:  A  Draw layout data fragment
; instruction
  PUSH AF                 ; Store AF (A = current byte from room layout data)
  LD A,1                  ; Set Drawing Layout Data Fragment Flag to 1...
  LD (23452),A            ; ...
  INC HL                  ; Advance HL by one byte
  LD (23453),HL           ; Store current position in room layout data at 23453
  LD HL,60925             ; Load HL with address of Room Layout Data Fragment
                          ; Pointers
  POP AF                  ; Restore AF (A = current byte from room layout data)
  AND 127                 ; Reset Bit 7
  CALL 64627              ; Load address of layout data for required fragment
                          ; into HL
  JP 38977                ; Loop back to 38977 to start drawing fragment

; Room Drawing Skip Over Block Drawing Data to Start of Next Instruction
;
; Used by the routine at 38841.
  INC HL                  ; Advance data pointer by two bytes...
  INC HL                  ; ...
  LD A,(HL)               ; Load A with current data byte...
  INC HL                  ; ...and advance data pointer by one byte
  CP 255                  ; If byte was 255 (End Marker)...
  JP Z,38977              ; ...then loop back to 38977 for next byte of room
                          ; layout data
  JR 39038                ; Loop back to 39038 to check next byte

; Room Drawing (000) - Draw Floor, Paint Attributes / Terrain Interaction Data,
; Draw MK, Characters and Objects then Return
;
; Used by the routine at 38841.
  LD A,(23452)            ; If Drawing Layout Data Fragment Flag is zero
                          ; (reset)...
  OR A                    ; ...
  JR Z,39063              ; ...then skip ahead to 39063
  XOR A                   ; Set Drawing Layout Data Fragment Flag to zero
                          ; (reset)...
  LD (23452),A            ; ...
  LD HL,(23453)           ; Load HL with previously stored position in room
                          ; layout data
  JP 38977                ; Loop back to 38977 for next byte of room layout
                          ; data
; The operand of the instruction at 39063 represents the address of start of
; room layout data for the current room. This is modified by the instruction at
; 38974.
  LD IX,0                 ; Load IX with start address of room layout data for
                          ; current room
; This entry point is used by the routines at 39183, 39189, 39216, 39291, 39393
; and 41059.
  LD A,(IX+0)             ; Load first byte of room layout data instruction
  OR A                    ; If this byte is zero (i.e. last entry so no more
                          ; painting to do)...
  JP Z,39393              ; ...then finalise room drawing, draw objects and
                          ; characters, and animate the arrival of any new
                          ; characters, then return
  CP 127                  ; If this byte is 127 (i.e. horizontal block
                          ; drawing)...
  JP Z,39216              ; ...then draw run of 2x2 blocks horizontally
  CP 126                  ; If this byte is 126 (i.e. vertical block
                          ; drawing)...
  JP Z,39291              ; ...then draw run of 2x2 blocks vertically
  BIT 7,A                 ; If Bit 7 (Draw Layout Data Fragment Flag) is set...
  JP NZ,39189             ; ...then jump to 39189 (start painting attribute /
                          ; terrain interaction data for layout data fragment)
  INC IX                  ; Advance to RLE Attribute Data index and load into
                          ; L...
  LD L,(IX+0)             ; ...
  INC IX                  ; Advance to RLE Terrain Interaction Data index and
                          ; load into E...
  LD E,(IX+0)             ; ...
  INC IX                  ; Advance to x-coordinate...
  LD A,(IX+0)             ; ...
  LD (23408),A            ; ...and store at 23408
  INC IX                  ; Advance to y-coordinate...
  LD A,(IX+0)             ; ...
  LD (23409),A            ; ...and store at 23409
  LD H,0                  ; Load H with zero (RLE Attribute Data index already
                          ; in L)...
  ADD HL,HL               ; ...and multiply by four...
  ADD HL,HL               ; ...
  LD BC,60487             ; Point BC at start of Lookup Table for RLE Attribute
                          ; Data (Room Layout Graphics)...
  ADD HL,BC               ; ...and add HL as offset, loading result into HL
  EX DE,HL                ; Swap DE (now points to entry in RLE Attribute
                          ; Lookup Table at 60487) and HL (L now RLE Terrain
                          ; Interaction Data index)
  LD H,0                  ; Load H with zero (RLE Terrain Interaction Data
                          ; index already in L)...
  ADD HL,HL               ; ...and multiply by four...
  ADD HL,HL               ; ...
  LD BC,60889             ; Point BC at start of Lookup Table for RLE Terrain
                          ; Interaction Data (Room Layout Graphics)...
  ADD HL,BC               ; ...and add HL as offset, loading result into HL
  EX DE,HL                ; Swap DE (now points to entry in RLE Terrain
                          ; Interaction Lookup Table at 60889) and HL (now
                          ; points to entry in RLE Attribute Lookup Table at
                          ; 60487)
  PUSH DE                 ; Store DE (pointer to required entry in RLE Terrain
                          ; Interaction Lookup Table)
  INC IX                  ; Advance to Mirror Options...
  LD A,(IX+0)             ; ...and load into A
  PUSH IX                 ; Store IX (current position in room layout data)
  OR A                    ; If both mirror options are off...
; The following jumps handle the painting of the current room layout data
; entry's attribute and terrain interaction data. After this painting is
; completed, IX is advanced to the start of the next room layout data entry and
; a jump back to 39067 occurs to process this next entry.
  JP Z,40937              ; ...then paint room layout data entry's attributes
                          ; and terrain interaction data then process next
                          ; entry
  CP 1                    ; If Apply Vertical Mirror selected...
  JP Z,40905              ; ...then paint room layout data entry's attributes
                          ; and terrain interaction data applying vertical
                          ; mirror, then process next entry
  CP 2                    ; If Apply Horizontal Mirror selected...
  JP Z,40873              ; ...then paint room layout data entry's attributes
                          ; and terrain interaction data applying horizontal
                          ; mirror, then process next entry
  JP 40845                ; Otherwise, paint room layout data entry's
                          ; attributes and terrain interaction data applying
                          ; horizontal and vertical mirrors, then process next
                          ; entry

; Room Drawing Advance IX to Start of Next Room Layout Data Entry and Paint
; Attributes
;
; This routine is jumped to only by the routine at 40937, which in turn is only
; jumped to by the routine at 39047. In this latter routine, the instruction at
; 39133 pushes DE (pointer to required entry in RLE Terrain Interaction Lookup
; Table) onto the stack, and then the instruction at 39139 pushes IX (current
; position in room layout data) onto the stack.
  POP IX                  ; Restore IX (current position in room layout data)
  POP HL                  ; Restore HL (pointer to required entry in RLE
                          ; Terrain Interaction Lookup Table, PUSHed by
                          ; instruction at 39133)
  LD A,(IX+0)             ; Load Mirror Options into A
  PUSH IX                 ; Store IX (current position in room layout data)
  OR A                    ; If both mirror options are off...
  JP Z,41173              ; ...then paint room layout data entry's Terrain
                          ; Interaction Parameters, then advance to next entry
  CP 1                    ; If Apply Vertical Mirror selected...
  JP Z,41141              ; ...then paint room layout data entry's Terrain
                          ; Interaction Parameters, applying vertical mirror,
                          ; then advance to next entry
  CP 2                    ; If Apply Horizontal Mirror selected...
  JP Z,41109              ; ...then paint room layout data entry's Terrain
                          ; Interaction Parameters, applying horizontal mirror,
                          ; then advance to next entry
  JP 41081                ; Otherwise, paint room layout data entry's Terrain
                          ; Interaction Parameters, applying horizontal and
                          ; vertical mirrors, then advance to next entry

; Room Drawing Advance IX to Start of Next Room Layout Data Entry and Paint
; Terrain Interaction Data
;
; Used by the routine at 41173.
  POP IX                  ; Restore IX (current position in room layout data,
                          ; PUSHed by instruction at 39164)
  INC IX                  ; Advance IX by one byte to start of next room layout
                          ; data entry
  JR 39067                ; Process next room layout instruction (jump to
                          ; 39067)

; Room Drawing Start Painting Attribute / Terrain Interaction Data for Layout
; Data Fragment
;
; Used by the routine at 39047. Input:  A  Draw layout data fragment
; instruction
  PUSH AF                 ; Store AF (A = current byte from room layout data)
  LD A,1                  ; Set Drawing Layout Data Fragment Flag to 1...
  LD (23452),A            ; ...
  INC IX                  ; Advance IX by one byte
  LD (23453),IX           ; Store current position in room layout data at 23453
  LD HL,60925             ; Load HL with address of Room Layout Data Fragment
                          ; Pointers
  POP AF                  ; Restore AF (A = current byte from room layout data)
  AND 127                 ; Reset Bit 7
  CALL 64627              ; Load address of layout data for required fragment
                          ; into HL
  PUSH HL                 ; Transfer address from HL to IX...
  POP IX                  ; ...
  JP 39067                ; Loop back to 38977 to start painting fragment

; Draw Run of 2x2 Blocks Horizontally
;
; The parameters for block drawing start at the byte after the address in IX.
; These are: Input:  IX  Current position in room layout data
  INC IX                  ; Advance IX to x-coordinate...
  LD C,(IX+0)             ; ...and load into C
  INC IX                  ; Advance IX to y-coordinate...
  LD B,(IX+0)             ; ...and load into B
  INC IX                  ; Advance IX to first block layout data byte
  PUSH BC                 ; Store BC (B = y-coordinate, C = x-coordinate)
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  POP BC                  ; Restore BC (B = y-coordinate, C = x-coordinate)
  CALL 63233              ; Point HL at Terrain Interaction Data for character
                          ; coordinates x=C, y=B...
  LD (23709),HL           ; ...and store at 23709
  LD A,(IX+0)             ; Load A with next block layout data...
  CP 255                  ; ...and if this is 255 (End Marker)...
  JR Z,39261              ; ...then skip ahead to 39261
  BIT 7,A                 ; If Draw Run Flag is set...
  JR NZ,39266             ; ...then skip ahead to 39266
  PUSH IX                 ; Store IX (current position in block layout data)
  CALL 41271              ; Draw 2x2 block with style index A at Bitmap Virtual
                          ; Text Cursor then move right two characters
  POP IX                  ; Restore IX (current position in block layout data)
  INC IX                  ; Advance IX to next block layout data...
  JR 39239                ; ...and loop back to 39239 to process
; End Marker encountered
  INC IX                  ; Advance IX to next byte in room layout data...
  JP 39067                ; ...and jump to 39067 to process
; Draw Run Flag set
  AND 127                 ; Reset Draw Run Flag...
  LD B,A                  ; ...and load B with run length
  INC IX                  ; Advance IX to block style index...
  LD A,(IX+0)             ; ...and load into A
  INC IX                  ; Advance IX to next block layout data
  PUSH IX                 ; Store IX (current position in block layout data)
  PUSH BC                 ; Store BC (B = remaining number of blocks to draw)
  PUSH AF                 ; Store AF
  CALL 41271              ; Draw 2x2 block with style index A at Bitmap Virtual
                          ; Text Cursor then move right two characters
  POP AF                  ; Restore AF
  POP BC                  ; Restore BC (B = remaining number of blocks to draw)
  DJNZ 39278              ; Decrease remaining number of blocks and loop back
                          ; to 39278 if not zero
  POP IX                  ; Restore IX (current position in block layout data)
  JR 39239                ; Loop back to 39239 for next block layout data

; Draw Run of 2x2 Blocks Vertically
;
; The parameters for block drawing start at the byte after the address in IX.
; These are: Input:  IX  Current position in room layout data
  INC IX                  ; Advance IX to x-coordinate...
  LD L,(IX+0)             ; ...and load into L
  INC IX                  ; Advance IX to y-coordinate...
  LD H,(IX+0)             ; ...and load into H
  INC IX                  ; Advance IX to first block layout data byte
  LD (23463),HL           ; Store coordinates of top-left of block at 23463
  LD A,(IX+0)             ; Load A with next block layout data...
  CP 255                  ; ...and if this is 255 (End Marker)...
  JR Z,39332              ; ...then skip ahead to 39332
  BIT 7,A                 ; If Draw Run Flag is set...
  JR NZ,39337             ; ...then skip ahead to 39337
  CALL 39366              ; Draw 2x2 block with style index A at coordinates
                          ; stored at 23463 then move right two characters
  INC IX                  ; Advance IX to next block layout data
  LD HL,(23463)           ; Load HL with coordinates of top-left of block just
                          ; drawn...
  INC H                   ; ...add two to y-coordinate...
  INC H                   ; ...
  LD (23463),HL           ; ...and store updated coordinates at 23463
  JR 39306                ; Loop back to 39306 to process next block layout
                          ; data
; End Marker encountered
  INC IX                  ; Advance IX to next byte in room layout data...
  JP 39067                ; ...and jump to 39067 to process
; Draw Run Flag set
  AND 127                 ; Reset Draw Run Flag...
  LD B,A                  ; ...and load B with run length
  INC IX                  ; Advance IX to block style index...
  LD A,(IX+0)             ; ...and load into A
  INC IX                  ; Advance IX to next block layout data
  PUSH BC                 ; Store BC (B = remaining number of blocks to draw)
  PUSH AF                 ; Store AF
  CALL 39366              ; Draw 2x2 block with style index A at coordinates
                          ; stored at 23463 then move right two characters
  LD HL,(23463)           ; Load HL with coordinates of top-left of block just
                          ; drawn...
  INC H                   ; ...add two to y-coordinate...
  INC H                   ; ...
  LD (23463),HL           ; ...and store updated coordinates at 23463
  POP AF                  ; Restore AF
  POP BC                  ; Restore BC (B = remaining number of blocks to draw)
  DJNZ 39347              ; Decrease remaining number of blocks and loop back
                          ; to 39347 if not zero
  JR 39306                ; Loop back to 39306 for next block layout data

; Draw 2x2 Block with Style Index A at Coordinates Stored at 23463 then move
; Right Two Characters
;
; Used by the routine at 39291. Input:  A  Block style index
  PUSH IX                 ; Store IX (current position in block layout data)
  PUSH AF                 ; Store AF
  LD BC,(23463)           ; Load BC with coordinates of top-left of block
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  LD BC,(23463)           ; Load BC with coordinates of top-left of block
  CALL 63233              ; Point HL at Terrain Interaction Data for character
                          ; coordinates x=C, y=B...
  LD (23709),HL           ; ...and store address at 23709
  POP AF                  ; Restore AF
  CALL 41271              ; Draw 2x2 block with style index A at Bitmap Virtual
                          ; Text Cursor then move right two characters
  POP IX                  ; Restore IX (current position in block layout data)
  RET                     ; Return

; Finalise Room Drawing, Draw Objects and Characters, and Animate the Arrival
; of Any New Characters
;
; Used by the routine at 39047. Input:  IX  Current position in room layout
; data Output: A  Index of Magic Knight's current room
  LD A,(23452)            ; If Drawing Layout Data Fragment Flag is zero
                          ; (reset)...
  OR A                    ; ...
  JR Z,39410              ; ...then skip ahead to 39410
  XOR A                   ; Set Drawing Layout Data Fragment Flag to zero
                          ; (reset)...
  LD (23452),A            ; ...
  LD IX,(23453)           ; Load IX with previously stored position in room
                          ; layout data
  JP 39067                ; Process next room layout instruction (jump to 39067
                          ; to paint Attribute and Terrain Interaction data)
  LD A,(IX+1)             ; Load A with floor UDG code...
  LD (63306),A            ; ...and store at 63305
  LD A,(IX+2)             ; Load floor attribute into A...
  LD (23695),A            ; ...and set ATTR T system variable to this value
  LD HL,20704             ; Load HL with Display File address corresponding to
                          ; (0, 23) (characters)...
  LD (63018),HL           ; ...and move Bitmap Virtual Text Cursor here
  CALL 63488              ; Update character printing routine to use base
                          ; address of Floor Character Set graphics
  LD HL,32                ; Draw run of 32 characters (i.e. draw the room's
                          ; floor)...
  CALL 63302              ; ...
  CALL 63472              ; Update Character Printing Routine to use base
                          ; address of Text Character Set graphics
  PUSH IX                 ; Transfer current position in room layout data from
                          ; IX...
  POP HL                  ; ...to HL
  INC HL                  ; Advance HL by two bytes, to attribute parameter...
  INC HL                  ; ...
  CALL 41459              ; Read glowing character block definitions and add to
                          ; current room
  CALL 39578              ; Print Magic Knight's current room's name at top of
                          ; screen
  CALL 46784              ; Draw axe(s) to screen if Magic Knight is in an Axe
                          ; Room
  CALL 39655              ; Prepare to execute room-specific routine for Magic
                          ; Knight's current room
  CALL 48164              ; Draw all objects in Magic Knight's current room
  CALL 39795              ; Draw all characters in Magic Knight's current room
  LD A,(23702)            ; Flag Magic Knight's current room as visited for
                          ; scoring purposes...
  LD E,A                  ; ...
  LD D,0                  ; ...
  LD HL,23488             ; ...
  ADD HL,DE               ; ...
  LD (HL),1               ; ...
  LD A,7                  ; Set system variable BORDCR to 7...
  LD (23624),A            ; ...
  XOR A                   ; Set border to black and reset speaker state...
  OUT (254),A             ; ...
  LD A,71                 ; Set ATTR T system variable to 71 (white INK, black
                          ; PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD A,(23480)            ; If Animate Puff of Smoke Flag is reset...
  OR A                    ; ...
  JR Z,39525              ; ...then skip ahead to 39525
  LD A,(24840)            ; Load Magic Knight's current x-coordinate into A
  RRCA                    ; Divide x-coordinate by eight, rounding down to
                          ; nearest integer...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  LD C,A                  ; Copy x-coordinate (characters) into C
  LD A,(24841)            ; Load Magic Knight's current y-coordinate into A
  RRCA                    ; Divide y-coordinate by eight, rounding down to
                          ; nearest integer...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  LD B,A                  ; Copy y-coordinate (characters) into B
  LD IX,23296             ; Store Magic Knight's current character coordinates
                          ; at #23296...
  LD (IX+1),C             ; ...
  LD (IX+2),B             ; ...
  CALL 39958              ; Animate Puff of Smoke at Magic Knight's current
                          ; coordinates
  CALL 61860              ; Store background attributes if appropriate, then
                          ; draw Magic Knight to display without drawing axes
  XOR A                   ; Reset Animate Puff of Smoke Flag...
  LD (23480),A            ; ...
  CALL 39829              ; Animate arrival of any new character if in Magic
                          ; Knight's current room
  CALL 39553              ; If a character has arrived then redraw Magic Knight
                          ; and all characters in room
  CALL 46183              ; Set Magic Knight's available action flags
  RES 1,(IY+65)           ; Reset Characters Movement Unrestricted Flag /
                          ; Disable In-Game Glow Flag
  RES 2,(IY+65)           ; Reset Characters Can't Move Flag
  LD A,(23702)            ; Load A with index of Magic Knight's current room
  RET                     ; Return

; If a Character Has Arrived then Redraw Magic Knight and All Characters in
; Room
;
; Used by the routine at 39393.
  LD A,(23367)            ; If Character Is Incoming Flag is reset...
  OR A                    ; ...
  RET Z                   ; ...then return
  CALL 39795              ; Draw all characters in Magic Knight's current room
  LD DE,24672             ; Restore background bitmap data (i.e. remove Magic
                          ; Knight bitmap data from display)...
  HALT                    ; ...and wait for interrupt...
  CALL 61777              ; ...
  LD A,(23706)            ; If Player Attribute Update Flag is set (Player
                          ; Attribute Update mode)...
  OR A                    ; ...
  CALL NZ,62003           ; ...then restore background attribute data at Magic
                          ; Knight's current location
  JP 61860                ; Store background attributes if appropriate, then
                          ; draw Magic Knight to display without drawing axes
                          ; and return

; Print Magic Knight's Current Room's Name at Top of Screen
;
; The Room Name Bar displayed on the 5th character row takes as its attribute
; the inverse of the attribute at (0, 0), i.e. INK and PAPER colours exchanged.
  LD A,(22528)            ; Load B with attribute at (0, 0), i.e. top-left of
                          ; display...
  LD B,A                  ; ...
  AND 192                 ; Clear all but BRIGHT and FLASH flags...
  LD C,A                  ; ...and load into C
  LD A,B                  ; Load A with attribute at (0, 0)...
  AND 7                   ; ...and clear all but INK bits
  ADD A,A                 ; Shift INK bit values into PAPER bits...
  ADD A,A                 ; ...i.e. set PAPER to colour previously in INK...
  ADD A,A                 ; ...
  ADD A,C                 ; Set BRIGHT and FLASH flags to values stored
                          ; previously...
  LD C,A                  ; ...and load C with new attribute value
  LD A,B                  ; Load A with attribute at (0, 0)
  RRCA                    ; Shift PAPER bit values into INK bits...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 7                   ; ...and clear all but INK bits
  ADD A,C                 ; Add new INK value to existing attribute in A
  LD (23695),A            ; Set ATTR T system variable to attribute in A, which
                          ; is now the inverse of attribute at (0, 0)
  LD HL,56843             ; Point HL at start of table of room names
  LD A,(23702)            ; Load B with Magic Knight's current room...
  LD B,A                  ; ...
  CALL 63335              ; Advance HL to name entry for Magic Knight's current
                          ; room
  LD A,(HL)               ; Load first value (string length) into A
  OR A                    ; If string length value is zero (i.e. no room name
                          ; defined)...
  RET Z                   ; ...then return
  INC HL                  ; Advance HL to first byte of string
  PUSH HL                 ; Store HL (pointer to first byte of room name
                          ; string)
  ADD A,2                 ; Add 2 to the string's length to accommodate space
                          ; characters before and after...
  LD B,A                  ; ...and load value into B
  LD A,32                 ; Load A with width of screen (characters) minus
                          ; length of room name string and spaces...
  SUB B                   ; ...
  RRCA                    ; Divide value by two...
  AND 31                  ; ...and cap at 31
  LD C,A                  ; Load this value (length of one half of Room Name
                          ; string) into BC...
  LD B,0                  ; ...
  LD HL,16512             ; Point HL at top pixel row of character block at
                          ; coordinates (0, 4)
  ADD HL,BC               ; Add value in BC as offset...
  LD (63018),HL           ; ...and load this address into Bitmap Virtual Text
                          ; Cursor
  LD HL,39653             ; Point HL at text code for SPACE
  CALL 46873              ; Print text at location HL to screen using full
                          ; screen width
  POP HL                  ; Restore HL (pointer to first byte of room name
                          ; string)
  CALL 46873              ; Print text at location HL to screen using full
                          ; screen width
  LD HL,39653             ; Point HL at text code for SPACE
  JP 46873                ; Print text at location HL to screen using full
                          ; screen width and return

; Miscellaneous Text 1
  DEFM " ",0              ; (SPACE character for padding room names)

; Prepare to Execute Room-Specific Routine for Magic Knight's Current Room
;
; Used by the routine at 39393.
  LD A,(23702)            ; Load A with Magic Knight's current room
  LD HL,62072             ; Point HL at start of Table of Room-Specific Routine
                          ; Addresses
  CALL 64627              ; Advance HL to entry for Magic Knight's current room
                          ; and load into HL
  LD (40199),HL           ; Update jump in routine at 40190 to execute
                          ; room-specific routine
  RET                     ; Return

; Check Whether Magic Knight is Moving into a New Room and React if so
;
; Used by the routine at 40008.
  LD A,(24840)            ; Load A with Magic Knight's current x-coordinate
                          ; (pixels)
  CP 3                    ; If less than 3...
  JP C,39714              ; ...then skip to 39714 (move Magic Knight one room
                          ; to the left if possible then return)
  CP 231                  ; If more than 231...
  JP NC,39758             ; ...then skip to 39758 (move Magic Knight one room
                          ; to the right if possible then return)
  RET                     ; Return

; Change Magic Knight's Current Room if Possible
;
; Used by the routines at 39714 and 39758. Input:  A  Magic Knight's new
; x-coordinate upon entering new room DE Exit that Magic Knight is leaving old
; room from; either 0 (left exit) or 1 (right exit) Output: F  Zero Flag set if
; Magic Knight can't leave his current room, reset otherwise
  PUSH AF                 ; Store new x-coordinate for later
  XOR A                   ; Set Magic Knight's Temporary Movement Flags to zero
                          ; (new room, so Magic Knight can move both left and
                          ; right)...
  LD (23451),A            ; ...
  LD HL,48811             ; Point HL to Room Connectivity Data Table
  LD A,(23702)            ; Load Magic Knight's current room's index into A...
  ADD A,A                 ; ...double it...
  LD C,A                  ; ...and load into BC...
  LD B,0                  ; ...
  ADD HL,BC               ; Add BC as offset to HL
  ADD HL,DE               ; Point to left or right exit from current room, as
                          ; determined by DE
  LD A,(HL)               ; Load new room number into A...
  CP 255                  ; ...and if this is 255 (i.e. Magic Knight can't
                          ; leave his current room)...
  JR Z,39711              ; ...set Zero Flag and exit routine...
  LD (23702),A            ; ...else update Magic Knight's current room to be
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
; Used by the routine at 39668. Input:  A  (Entry at 39746 only) Magic Knight's
; new x-coordinate (pixels)
  LD A,(23702)            ; If Magic Knight's current room is not 2 (Outdoors,
                          ; 1, Bearwoolf's Cave)...
  CP 2                    ; ...
  JR NZ,39736             ; ...then skip ahead to 39736
  LD A,(23465)            ; If current progress through cave is 4...
  CP 4                    ; ...
  JR Z,39736              ; ...then skip ahead to 39736
  INC A                   ; Increase current progress through cave by one...
  LD (23465),A            ; ...
  LD A,228                ; Load A with Magic Knight's new x-coordinate when he
                          ; arrives in new room (228 is near right-hand side of
                          ; room)
  JR 39746                ; Skip ahead to 39746 (move Magic Knight back to
                          ; other side of the room)
  LD DE,0                 ; Set DE to zero (dealing with current room's left
                          ; exit)
  LD A,228                ; Load A with Magic Knight's new x-coordinate when he
                          ; arrives in new room (228 is near right-hand side of
                          ; room)
  CALL 39682              ; Change Magic Knight's current room (if possible)
                          ; based upon left exit of his current room
  JR Z,39752              ; If Magic Knight can't leave his current room then
                          ; jump to 39752
; This entry point is used by the routine at 39758.
  LD (24840),A            ; Set Magic Knight's x-coordinate
  JP 38844                ; Draw Magic Knight's current room, draw objects and
                          ; characters and initialise room-specific data and
                          ; return
  LD A,1                  ; Set Magic Knight's Temporary Movement Flags to 1
                          ; (Magic Knight can't move left because he can't
                          ; leave his current room)...
  LD (23451),A            ; ...
  RET                     ; Return

; Move Magic Knight One Room to the Right if Possible
;
; Used by the routine at 39668.
  LD A,(23702)            ; If Magic Knight's current room is not 2 (Outdoors,
                          ; 1, Bearwoolf's Cave)...
  CP 2                    ; ...
  JR NZ,39779             ; ...then skip ahead to 39779
  LD A,(23465)            ; If current progress through cave is zero...
  OR A                    ; ...
  JR Z,39779              ; ...then skip ahead to 39779
  DEC A                   ; Decrease current progress through cave by one...
  LD (23465),A            ; ...
  LD A,4                  ; Load A with Magic Knight's new x-coordinate when he
                          ; arrives in new room (4 is near left-hand side of
                          ; room)
  JR 39746                ; Set Magic Knight's x-coordinate, draw the room and
                          ; return
  LD DE,1                 ; Set DE to 1 (dealing with current room's right
                          ; exit)
  LD A,4                  ; Load A with Magic Knight's new x-coordinate when he
                          ; arrives in new room (4 is near left-hand side of
                          ; room)
  CALL 39682              ; Change Magic Knight's current room (if possible)
                          ; based upon right exit of his current room
  JR NZ,39746             ; If Magic Knight's can leave his current room then
                          ; set his x-coordinate, draw the room and return
  LD A,2                  ; Set Magic Knight's Temporary Movement Flags to 2
                          ; (Magic Knight can't move right because he can't
                          ; leave his current room)...
  LD (23451),A            ; ...
  RET                     ; Return

; Draw all Characters in Magic Knight's Current Room
;
; Used by the routines at 39393 and 39553.
  SET 2,(IY+65)           ; Set Characters Can't Move Flag
  LD IX,24898             ; Point IX at start of Table of Characters' Current
                          ; Positions at 24898
  LD BC,2048              ; Load B with 8 and C (current character) with 0
  LD A,(23702)            ; Load A with Magic Knight's current room
  CP (IX+0)               ; If Magic Knight and current character are in the
                          ; same room...
  CALL Z,39883            ; ...then draw character with index C
  INC C                   ; Increase C to advance to next character
  INC IX                  ; Advance IX to entry for next character...
  INC IX                  ; ...
  INC IX                  ; ...
  DJNZ 39806              ; Loop back to 39806 for next character
  RES 2,(IY+65)           ; Reset Characters Can't Move Flag
  RET                     ; Return

; Animate Arrival of Any New Character if in Magic Knight's Current Room
;
; Used by the routine at 39393.
  XOR A                   ; Reset Character Is Incoming Flag...
  LD (23367),A            ; ...
  SET 2,(IY+65)           ; Set Characters Can't Move Flag
  LD IX,24898             ; Point IX at start of Table of Characters' Current
                          ; Positions at 24898
  LD BC,2048              ; Load B with 8 and C (current character) with 0
  LD A,(23702)            ; Load A with Magic Knight's current room
  BIT 7,(IX+0)            ; If Arrival Pending Flag in character's current room
                          ; (pointed to by IX) is reset...
  JR Z,39869              ; ...then skip ahead to 39869
  LD E,(IX+0)             ; Load E with character's current room
  RES 7,E                 ; Reset Arrival Pending Flag in E...
  CP E                    ; ...and if this is then the same as Magic Knight's
                          ; current room...
  CALL Z,39958            ; ...then animate Puff of Smoke at character's
                          ; current coordinates...
  CALL Z,39883            ; ...and draw the character
  RES 7,(IX+0)            ; Reset character's Arrival Pending Flag
  INC C                   ; Increase C (index of current character)
  INC IX                  ; Advance IX to room of next character...
  INC IX                  ; ...
  INC IX                  ; ...
  DJNZ 39844              ; Decrease B (remaining number of characters to
                          ; check) and loop back to 39844 if not zero
  RES 2,(IY+65)           ; Reset Characters Can't Move Flag
  RET                     ; Return

; Draw a Character
;
; Used by the routines at 39795 and 39829. Input:  C  Index of character to
; draw IX  Pointer to position data
  PUSH BC                 ; Store BC
  PUSH IX                 ; Store IX
  LD A,C                  ; Load A with character's index...
  LD (39905),A            ; ...store in operand of instruction at 39904...
  LD E,4                  ; ...and point HL at this character's Attribute value
                          ; (in Characters' Current Stats Table)...
  CALL 45406              ; ...
  LD A,(HL)               ; Load character's Attribute into A...
  LD (39943),A            ; ...and modify instruction at 39942 with this value
  INC HL                  ; Advance HL to Character Graphic Index...
  LD A,(HL)               ; ...and load value into A
  OR A                    ; If this is not zero...
  JR NZ,39909             ; ...then skip ahead to 39909 (i.e. draw the
                          ; character)
; The operand of the instruction at 39904 represents the index of the character
; to draw. This is modified by the instruction at 39887.
  LD A,0                  ; If character index is not zero (see trivia)...
  OR A                    ; ...i.e. not Off-White...
  JR NZ,39929             ; ...then skip ahead to 39929 (i.e. don't draw the
                          ; character)
  LD C,(IX+1)             ; Load C with character's x-coordinate (characters)
  LD B,(IX+2)             ; Load B with character's y-coordinate (characters)
  PUSH IX                 ; Store IX (pointer to character's entry in Table of
                          ; Characters' Current Positions)
  CALL 63504              ; Draw the graphic with lookup index A at character
                          ; coordinates (C, B) with width = 2 characters and
                          ; height = 4 characters
  POP IX                  ; Restore IX (pointer to character's entry in Table
                          ; of Characters' Current Positions)
  LD A,(23706)            ; If Player Attribute Update Flag is set (Player
                          ; Attribute Update mode)...
  OR A                    ; ...
  CALL NZ,39933           ; ...then paint the character's attributes
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  RET                     ; Return

; Paint a character's attributes
;
; Used by the routine at 39883. Input:  IX  A character's entry in Table of
; Characters' Current Positions at 24898.
  LD C,(IX+1)             ; Load C with character's x-coordinate (characters)
  LD B,(IX+2)             ; Load B with character's y-coordinate (characters)
  CALL 63219              ; Load HL with Attribute File address for coordinates
                          ; (C, B)
; The operand of the instruction at 39942 represents the character's attribute
; value. This is modified by the instruction at 39896.
  LD A,0                  ; Load A with Attribute value
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
  DJNZ 39946              ; Decrease remaining number of character rows to
                          ; paint and loop back to 39946
  RET                     ; Return

; Animate Puff of Smoke at Coordinates Pointed to by IX
;
; Used by the routines at 39393 and 39829. Input:  IX  Address of position data
; for a character, or Magic Knight
  PUSH AF                 ; Store AF
  PUSH BC                 ; Store BC
  CALL 41504              ; Copy 2x4 (Characters) Region of Display File into
                          ; Temporary Storage at 23299
  LD A,(23367)            ; Set Character Is Incoming Flag...
  INC A                   ; ...
  LD (23367),A            ; ...
  LD C,30                 ; Load C with 30 (graphic index of first Puff of
                          ; Smoke frame)
  LD B,5                  ; Load B with 5 (number of smoke frames to draw)
                          ; [bug]
  PUSH BC                 ; Store BC (B = remaining number of frames to draw, C
                          ; = current frame's lookup index)
  PUSH IX                 ; Store IX (address of position data)
  PUSH AF                 ; Store AF
  LD A,C                  ; Load A with current graphic index
  LD C,(IX+1)             ; Load C with x-coordinate (characters)
  LD B,(IX+2)             ; Load B with y-coordinate (characters)
  CALL 63494              ; Draw 2x3 graphic with lookup index A at character
                          ; coordinates (C, B)
  PUSH BC                 ; Store BC (B = remaining number of frames to draw, C
                          ; = current frame's lookup index)
  LD B,12                 ; Load B with 12 (number of interrupt cycles to wait
                          ; per frame)
  HALT                    ; Wait for interrupt
  DJNZ 39991              ; Decrease remaining number of interrupt cycles to
                          ; wait and loop back to 39991 if not zero
  POP BC                  ; Restore BC (B = remaining number of frames to draw,
                          ; C = current frame's lookup index)
  CALL 41545              ; Copy 2x4 (Characters) Region from Temporary Storage
                          ; at 23299 into Display File
  POP AF                  ; Restore AF
  POP IX                  ; Restore IX (address of position data)
  POP BC                  ; Restore BC (B = remaining number of frames to draw,
                          ; C = current frame's lookup index)
  INC C                   ; Advance to next Puff of Smoke frame
  DJNZ 39974              ; Decrease remaining number of frames to draw and
                          ; loop back to 39974 if not zero
  POP BC                  ; Restore BC
  POP AF                  ; Restore AF
  RET                     ; Return

; Set Magic Knight's Velocity to Zero, if Appropriate Move to New Room, Update
; State of Storm Cloud and Execute Room-Specific Routine
;
; Used by the routines at 38205 and 38434.
  LD HL,0                 ; Set Magic Knight's current x- and y-velocities to
                          ; zero...
  LD (24844),HL           ; ...
  CALL 39668              ; Check whether Magic Knight is moving into a new
                          ; room and react if so
  LD A,(23702)            ; If Magic Knight is currently in Bearwoolf's cave or
                          ; hoard, or in Limbo...
  CP 3                    ; ...
  JP C,40190              ; ...then decrease Magic Knight's current strength by
                          ; average of 1/4 if he is carrying the Glow Shield
                          ; and jump to room-specific routine
  CP 17                   ; If Magic Knight is currently in the Castle or the
                          ; Spaceship...
  JP NC,40190             ; ...then decrease Magic Knight's current strength by
                          ; average of 1/4 if he is carrying the Glow Shield
                          ; and jump to room-specific routine
  LD A,(23702)            ; If Magic Knight's current room...
  LD B,A                  ; ...
  LD A,(23715)            ; ...is the same as the Storm Cloud's current room...
  CP B                    ; ...
  CALL Z,64637            ; ...then if Do Not Draw Storm Cloud Flag is set then
                          ; prepare to draw Storm Cloud
  LD A,(23715)            ; Load B with the Storm Cloud's current room as
                          ; stored at 23715...
  LD B,A                  ; ...
  LD A,(23700)            ; Load C with Storm Cloud's current x-coordinate...
  LD C,A                  ; ...
  LD A,(23702)            ; Load H with Magic Knight's current room...
  LD H,A                  ; ...
  LD A,(24840)            ; Load L with Magic Knight's current x-coordinate
                          ; (pixels)...
  LD L,A                  ; ...
  XOR A                   ; Set A to zero and reset Carry Flag
  SBC HL,BC               ; If Magic Knight and Storm Cloud have the same
                          ; horizontal position in the same room...
  JR Z,40102              ; ...then skip ahead to 40102 (have a lightning bolt
                          ; strike Magic Knight)
  JP P,40068              ; If Magic Knight is to the right of the Storm Cloud
                          ; then skip ahead to 40068
  DEC BC                  ; Move the Storm Cloud one pixel to the left,
                          ; changing room if appropriate
  JR 40069                ; Skip ahead to 40069
  INC BC                  ; Move the Storm Cloud one pixel to the right,
                          ; changing room if appropriate
  LD A,B                  ; Load A with Storm Cloud's current room in B...
  LD (23715),A            ; ...and store at 23715
  LD A,C                  ; Load A with Storm Cloud's current x-coordinate in
                          ; C...
  LD (23700),A            ; ...and store at 23700
  CP 32                   ; If Storm Cloud's current x-coordinate is less than
                          ; 32...
  JP C,40091              ; ...then skip ahead to 40091
  CP 223                  ; If Storm Cloud's current x-coordinate is at least
                          ; 223...
  JP NC,40094             ; ...then skip ahead to 40094
  SUB 30                  ; Subtract 30 from A (Storm Cloud's current
                          ; x-coordinate)
  JR 40096                ; Skip ahead to 40096
  XOR A                   ; Load A with zero
  JR 40096                ; Skip ahead to 40096
  LD A,195                ; Load A with 195
  LD (23701),A            ; Store new apparent x-coordinate at 23701
  JP 40190                ; Decrease Magic Knight's current strength by average
                          ; of 1/4 if he is carrying the Glow Shield and jump
                          ; to room-specific routine
  LD A,255                ; Set MASK P and MASK T system variables to 255...
  LD (23696),A            ; ...to preserve attributes already on screen...
  LD (23694),A            ; ...
  LD A,(23701)            ; Load C with apparent x-coordinate stored
                          ; previously...
  ADD A,30                ; ...and add 30...
  LD C,A                  ; ...to give x-coordinate of origin of lightning bolt
  LD B,119                ; Load B with 119 (y-coordinate of origin of
                          ; lightning bolt)
  LD A,(24840)            ; Load E with Magic Knight's current x-coordinate
                          ; (pixels) plus eight...
  ADD A,8                 ; ...(x-coordinate of target of lightning bolt)...
  LD E,A                  ; ...
  LD A,(24841)            ; Load A with Magic Knight's current y-coordinate
                          ; (pixels)
  SUB 175                 ; Subtract y-coordinate from 175 to change y-origin
                          ; to top of screen...
  NEG                     ; ...and have y-coordinate increase downwards rather
                          ; than upwards
  LD D,A                  ; Load D with result
  PUSH BC                 ; Store BC (coordinates of lightning bolt origin)
  PUSH DE                 ; Store DE (coordinates of lightning bolt target)
  CALL 48360              ; Draw the lightning bolt
  LD B,20                 ; Wait for 20 interrupts...
  HALT                    ; ...
  DJNZ 40139              ; ...
  POP DE                  ; Restore DE (coordinates of lightning bolt target)
  POP BC                  ; Restore BC (coordinates of lightning bolt origin)
  CALL 48360              ; Erase the lightning bolt drawn previously
  CALL 40153              ; Decrease Magic Knight's current strength by ten
  JP 40190                ; Decrease Magic Knight's current strength by average
                          ; of 1/4 if he is carrying the Glow Shield and jump
                          ; to room-specific routine

; Decrease Magic Knight's Current Strength by Ten
;
; Used by the routine at 40008.
  LD B,10                 ; Load B with 10 (as we are decreasing Magic Knight's
                          ; strength by 10)
; This entry point is used by the routine at 40177.
  LD A,(24768)            ; Load Magic Knight's current strength into A...
  OR A                    ; ...and if zero...
  JR Z,40173              ; ...then skip ahead to 40173
  DEC A                   ; Decrease Magic Knight's current strength by one...
  LD (24768),A            ; ...
  PUSH BC                 ; Store BC
  CALL 46463              ; Print Magic Knight's current strength at (6, 2) as
                          ; text if he is carrying the Mirror
  POP BC                  ; Restore BC
  DJNZ 40155              ; Loop back to 40155 for next strength point
; This entry point is used by the routine at 40190. It also serves as the
; room-specific routine for various rooms.
  RET                     ; Return
  POP AF                  ; Remove return address of calling routine from top
                          ; of Stack
  JP 38857                ; Display "YOU DIED OF EXHAUSTION" Game Over window
                          ; and return to Control Selection Menu

; Decrease Magic Knight's Current Strength By One Every Fourth Call
;
; The operand of the instruction at 40177 represents the number of calls since
; the last time Magic Knight's strength was decreased, which happens once every
; four calls. This is modified by the instruction at 40182.
  LD A,0                  ; Load A with number of cycles since last call...
  INC A                   ; ...and increase by one
  AND 3                   ; Clear all but bits 0 and 1...
  LD (40178),A            ; ...and store at 40177
  RET NZ                  ; If value is not zero (i.e. four cycles have not
                          ; elapsed since last decrease) then return
  LD B,1                  ; Decrease Magic Knight's strength by one and
                          ; return...
  JR 40155                ; ...

; Decrease Magic Knight's Current Strength By Average of 1/4 if He Is Carrying
; the Glow Shield
;
; Used by the routine at 40008.
  LD A,12                 ; If Magic Knight is carrying the Glow Shield (12)...
  CALL 45510              ; ...
  CALL Z,40177            ; ...then decrease Magic Knight's current strength by
                          ; one every fourth call
; The operand of the instruction at 40198 (jump destination) is the address of
; a room-specific routine. This is modified by the instruction at 39664.
  JP 40172                ; Jump to room-specific routine

; Room-Specific Routine Decrease Magic Knight's Strength by One Once Every Four
; Frames
  LD A,(23672)            ; Load A with LSB of System Variable FRAMES...
  AND 3                   ; ...clear bits 2-7 to leave random number between 0
                          ; and 3...
  RET NZ                  ; ...and if number is not zero then return
  LD A,(24768)            ; Load A with unused bit...
  AND 128                 ; ...
  LD (40223),A            ; ...and store as operand of instruction at 40222
  LD A,(24768)            ; Load Magic Knight's current strength into A...
  AND 127                 ; ...
  DEC A                   ; ...and decrease by one
  PUSH AF                 ; Store AF (A = Magic Knight's new strength)
; The operand of the instruction at 40222 represents the unused bit from Magic
; Knight's current strength. This is modified by the instruction at 40212.
  ADD A,0                 ; Combine unused bit with new strength value in A...
  LD (24768),A            ; ...and store as Magic Knight's current strength
  CALL 46463              ; Print Magic Knight's current strength at (6, 2) as
                          ; text if he is carrying the Mirror
  POP AF                  ; Restore AF (A = Magic Knight's new strength)...
  JP Z,38857              ; ...and if zero then display "YOU DIED OF
                          ; EXHAUSTION" Game Over window and return to Control
                          ; Selection Menu
  RET                     ; Return

; Room-Specific Routine Update Position of 1 Axe and Display
  XOR A                   ; Set A to zero (axe 0)
  JP 46560                ; Update position of Axe 0, display, and decrease
                          ; Magic Knight's strength if in contact, then return

; Room-Specific Routine Update Positions of 4 Axes and Display
  XOR A                   ; Set A to zero (axe 0)
  CALL 46560              ; Update position of Axe 0, display, and decrease
                          ; Magic Knight's strength if in contact
  LD A,1                  ; Set A to 1 (axe 1)
  CALL 46560              ; Update position of Axe 1, display, and decrease
                          ; Magic Knight's strength if in contact
  LD A,2                  ; Set A to 2 (axe 2)
  CALL 46560              ; Update position of Axe 2, display, and decrease
                          ; Magic Knight's strength if in contact
  LD A,3                  ; Set A to 3 (axe 3)
  JP 46560                ; Update position of Axe 3, display, and decrease
                          ; Magic Knight's strength if in contact, then return

; Room-Specific Routine Kill Magic Knight if he is in a Dark Room Without
; Illumination
  LD A,19                 ; If Magic Knight is carrying the Torch (19)...
  CALL 45510              ; ...
  RET Z                   ; ...then return
  LD A,12                 ; If Magic Knight is carrying the Glow Shield (12)...
  CALL 45510              ; ...
  RET Z                   ; ...then return
  LD A,19                 ; If the Torch is in Magic Knight's current room...
  CALL 40326              ; ...
  LD A,(23702)            ; ...
  CP B                    ; ...
  RET Z                   ; ...then return
  LD A,12                 ; If the Glow Shield is in Magic Knight's current
                          ; room...
  CALL 40326              ; ...
  LD A,(23702)            ; ...
  CP B                    ; ...
  RET Z                   ; ...then return
  RES 0,(IY+65)           ; Reset Game In Progress Flag (IY = 23610)
  LD HL,22720             ; Load HL with Attribute File address for cell at (0,
                          ; 6)
  LD DE,22721             ; Load DE with Attribute File address for cell at (1,
                          ; 6)
  LD BC,575               ; Load BC with 575 (prepare to write to remainder of
                          ; Attribute File)
  LD (HL),L               ; Set Attribute File byte at HL to (L = 192) (black
                          ; INK, black PAPER, BRIGHT, FLASH)
  LDIR                    ; Flood remainder of Attribute File with attribute
                          ; value 192
  LD A,26                 ; Draw Window 26...
  CALL 47193              ; ...
  LD HL,57269             ; Point HL at "SOMEBODY SWITCHED OUT THE LIGHT..."
                          ; text...
  CALL 46902              ; ...and print
  CALL 64230              ; Wait for Interrupt then display "PRESS FIRE TO
                          ; CONTINUE" Window and wait for Fire to be pressed
  LD HL,50817             ; Point HL at "YOU HURT YOURSELF MOVING AROUND IN THE
                          ; DARK" text
  JP 64582                ; Display Cyan "Game Over" Window and Return to
                          ; Control Selection Menu

; Load B with Room Index of Object A
;
; Used by the routine at 40258. Input:  A  Index of an object Output: B
; Current room of object HL  Address of current position data for object
  LD C,A                  ; Load BC with three times object index...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD B,0                  ; ...
  LD HL,24922             ; Load HL with start address of Table of Objects'
                          ; Current Positions...
  ADD HL,BC               ; ...and add BC as offset
  LD B,(HL)               ; Load B with room index of object
  RET                     ; Return

; Room-Specific Routine Check for Egg Dropped down Wishing Well and Set Wish
; Pending Flag and Display Message If Appropriate
  LD A,(23365)            ; If Wish Pending Flag is set...
  OR A                    ; ...
  RET NZ                  ; ...then return
  CALL 40357              ; Check whether an egg has been dropped down the
                          ; Wishing Well and set Wish Pending Flag if so
  LD A,(23365)            ; If Wish Pending Flag is reset...
  OR A                    ; ...
  RET Z                   ; ...then return
  LD HL,57442             ; Point HL at "SOMEBODY YELLS...YOU CAN HAVE A WISH
                          ; IF YOU WANT..." text
  JP 64313                ; Display "...YOU CAN HAVE A WISH IF YOU WANT..."
                          ; window (29), wait for Fire to be pressed then jump
                          ; to Main Game Loop

; Check Whether an Egg Has Been Dropped Down the Wishing Well and Set Wish
; Pending Flag if So
;
; Used by the routine at 40338.
  LD A,36                 ; Load A with 36 (object index of Golden Egg)
  LD B,6                  ; Load B with 6 (as there are six eggs)
  PUSH BC                 ; Store BC (B = remaining number of eggs to process)
  PUSH AF                 ; Store AF (A = object index of current egg)
  LD C,A                  ; Load BC with three times object index of current
                          ; egg...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD B,0                  ; ...
  LD HL,24922             ; Point HL at start of Objects' Current Positions
                          ; Table...
  ADD HL,BC               ; ...and add BC as offset
  LD A,(HL)               ; Load A with room of current egg...
  CP 14                   ; ...and if this is not 14 (Outdoors, 13, Wishing
                          ; Well)...
  JR NZ,40395             ; ...then skip ahead to 40395
  INC HL                  ; Advance HL to y-coordinate of object...
  INC HL                  ; ...
  LD A,(HL)               ; ...and load into A
  CP 19                   ; If this is not 19...
  JR NZ,40395             ; ...then skip ahead to 40395
; The instructions between 40385 and 40392 are only executed when the current
; egg is both in room 14 (Outdoors, 13, Wishing Well) and has a y-coordinate of
; 19, i.e. the egg has been dropped on top of (down) the well. The index of the
; dropped object (egg) is stored at 23365.
  POP AF                  ; Restore AF (A = object index of current egg)
  LD (23365),A            ; Store object index of current egg at 23365, i.e.
                          ; set Wish Pending Flag
  PUSH AF                 ; Store AF (A = object index of current egg)
  DEC HL                  ; Move HL back to room of object...
  DEC HL                  ; ...
  LD (40401),HL           ; ...and store address in operand of instruction at
                          ; 40400
  POP AF                  ; Restore AF (A = object index of current egg)
  POP BC                  ; Restore BC (B = remaining number of eggs to
                          ; process)
  INC A                   ; Advance A to next egg
  DJNZ 40361              ; Decrease remaining number of eggs to process and
                          ; loop back to 40361 if not zero
; The operand of the instruction at 40400 represents the start address of the
; current position data for the object of interest. This is modified by the
; instruction at 40392.
  LD HL,0                 ; Load HL with address of current position data for
                          ; dropped egg...
  LD (HL),99              ; ...and set its current room to 99
  RET                     ; Return

; Room-Specific Routine Move Magic Knight Down a Room if Appropriate
;
; Move Magic Knight "down" a room if he is at 128 < x < 153 and y = 152.
  LD A,(24841)            ; If Magic Knight's current y-coordinate (pixels) is
                          ; not 152...
  CP 152                  ; ...i.e. he is not at floor-level...
  RET NZ                  ; ...then return
  LD A,(24840)            ; If Magic Knight's current x-coordinate (pixels) is
                          ; 153 or greater...
  CP 153                  ; ...
  RET NC                  ; ...then return
  CP 128                  ; If Magic Knight's current x-coordinate (pixels) is
                          ; less than 128...
  RET C                   ; ...then return
  LD A,48                 ; Set Magic Knight's current y-coordinate (pixels) to
                          ; 48...
  LD (24841),A            ; ...
  LD A,(23702)            ; Load A with index of Magic Knight's current room...
  SUB 7                   ; ...minus 7
  LD (23702),A            ; Set this as Magic Knight's current room (see
                          ; trivia)
  JP 38841                ; Move Magic Knight into room A, draw room, objects
                          ; and characters and initialise room-specific data

; Room-Specific Routine Move Magic Knight Between Teleport Rooms if Appropriate
  XOR A                   ; Set BORDER to black and reset speaker state (see
                          ; trivia)...
  OUT (254),A             ; ...
  LD A,(23484)            ; Load B with Current Password Number...
  LD B,A                  ; ...
  LD A,(23402)            ; If value encoded in Main Lever Flags...
  CP B                    ; ...is not the same as Current Password Number...
  RET NZ                  ; ...then return
  LD A,(24841)            ; If Magic Knight's current y-coordinate (pixels) is
                          ; not 144...
  CP 144                  ; ...
  RET NZ                  ; ...then return
  LD A,(24840)            ; If Magic Knight's current x-coordinate (pixels) is
                          ; not 112...
  CP 112                  ; ...
  RET NZ                  ; ...then return
  LD A,144                ; Set Magic Knight's current x-coordinate (pixels) to
                          ; 144...
  LD (24840),A            ; ...
  LD B,40                 ; Load B with 40 (index of Castle Third Floor, 2,
                          ; Teleport Room, 1)
  LD A,(23702)            ; If Magic Knight's current room...
  CP 47                   ; ...is 47 (Spaceship, 2, Teleport Room, 2)...
  JR Z,40477              ; ...then skip ahead to 40477
  LD B,47                 ; Load B with 47 (index of Spaceship, 2, Teleport
                          ; Room, 2)
  LD A,1                  ; Set Animate Puff of Smoke Flag...
  LD (23480),A            ; ...
  LD A,B                  ; Load A with destination room index in B
  LD (23702),A            ; Set this as Magic Knight's current room (see
                          ; trivia)
  JP 38841                ; Move Magic Knight into room A, draw room, objects
                          ; and characters and initialise room-specific data

; Room-Specific Routine Display Cave Progress and Set Magic Knight's x-Velocity
; to 2 if at Floor Level
  LD A,(23465)            ; Load A with current progress through cave
  LD HL,51067             ; Point HL at "---" text
  CALL 46837              ; Splice numeric cave progress data as a string into
                          ; "---" text
  LD HL,16558             ; Load HL with Display File address corresponding to
                          ; (14, 5) (characters)...
  LD (63018),HL           ; ...and move Bitmap Virtual Text Cursor here
  LD HL,51067             ; Point HL at "---" text...
  CALL 46902              ; ...and print
  LD A,2                  ; Prepare to set Magic Knight's x-velocity to 2...
  LD (40539),A            ; ...
  LD A,(24841)            ; If Magic Knight's current y-coordinate (pixels) is
                          ; not 152...
  CP 152                  ; ...
  RET NZ                  ; ...then return
  JR 40538                ; Set Magic Knight's x-velocity to 2, redraw and
                          ; return

; Room-Specific Routine Set Magic Knight's x-Velocity to 2 if his y-Coordinate
; is 136
  LD A,2                  ; Load A with 2
  JR 40529                ; Set Magic Knight's x-Velocity to 2 if his
                          ; y-Coordinate is 136

; Room-Specific Routine Set Magic Knight's x-Velocity to -2 if his y-Coordinate
; is 136
  LD A,254                ; Load A with -2
; This entry point is used by the routine at 40523.
  LD (40539),A            ; Prepare to set Magic Knight's x-velocity to A
  LD A,(24841)            ; If Magic Knight's current y-coordinate (pixels) is
                          ; not 136...
  CP 136                  ; ...
  RET NZ                  ; ...then return
; This entry point is used by the routine at 40489. The operand of the
; instruction at 40538 represents the x-velocity given to Magic Knight due to a
; conveyor-belt-like force. This is modified by the instructions at 40512 and
; 40529.
  LD A,0                  ; Load A with new x-velocity...
  LD (24844),A            ; ...and set this as Magic Knight's x-velocity
  JP 61816                ; Set Redraw Magic Knight On Next Interrupt Flag,
                          ; wait for interrupt and return

; Room-Specific Routine Move Magic Knight Up or Down a Room if Appropriate and
; Boost Jumps if Wearing Power Boots
;
; The CALL at 40546 will move Magic Knight "down" a room if he is at 128 < x <
; 153 and y = 152.
  CALL 40406              ; Move Magic Knight down a room if appropriate
; This entry point serves as the room-specific routine for moving Magic Knight
; up a room if appropriate, and boosting jumps if wearing Power Boots.
  LD A,(24841)            ; If Magic Knight's current y-coordinate (pixels) is
                          ; 152...
  CP 152                  ; ...
  RET Z                   ; ...then return
  LD A,(24840)            ; If Magic Knight's current x-coordinate (pixels) is
                          ; less than 204...
  CP 204                  ; ...
  RET C                   ; ...then return
  LD A,11                 ; If Magic Knight is not wearing the Power Boots
                          ; (11)...
  CALL 45505              ; ...
  RET NZ                  ; ...then return
  LD A,(24841)            ; If Magic Knight's current y-coordinate (pixels) is
                          ; less than 62...
  CP 62                   ; ...
  JR C,40582              ; ...then skip ahead to 40582
  LD A,252                ; Set Magic Knight's y-velocity to -4...
  LD (24845),A            ; ...
  JP 61816                ; Set Redraw Magic Knight On Next Interrupt Flag,
                          ; wait for interrupt and return
  LD A,136                ; Set Magic Knight's current y-coordinate (pixels) to
                          ; 136...
  LD (24841),A            ; ...
  LD A,(23702)            ; Load A with index of Magic Knight's current room...
  ADD A,7                 ; ...plus 7
  LD (23702),A            ; Set this as Magic Knight's current room (see
                          ; trivia)
  JP 38841                ; Move Magic Knight into room A, draw room, objects
                          ; and characters and initialise room-specific data

; Room-Specific Routine Kill Magic Knight if he is Too Close to Bearwoolf
  LD A,(24840)            ; If Magic Knight's current x-coordinate (pixels) is
                          ; 128 or greater...
  CP 128                  ; ...
  RET NC                  ; ...then return
; The operand of the instruction at 40604 represents the Bearwoolf Removed
; Flag. This is modified by the instructions at 38106 and 45290.
  LD A,0                  ; Load A with Bearwoolf Removed Flag...
  OR A                    ; ...and if this is set...
  RET NZ                  ; ...then return
  LD HL,57374             ; Point HL at "YOU STOOD FAR TOO CLOSE TO
                          ; BEARWOOLF..." text
  JP 64582                ; Display Cyan "Game Over" Window and Return to
                          ; Control Selection Menu

; Room-Specific Routine Enable / Disable Entry to Castle Depending Upon
; Disquise Worn and Whether Newspaper is Held
  NOP                     ; Do nothing...
  NOP                     ; ...
  NOP                     ; ...
  NOP                     ; ...
  NOP                     ; ...
  LD A,255                ; Set right exit from Outdoors, 15 (The Castle
                          ; Entrance) to 255...
  LD (48844),A            ; ...i.e. disable right exit
  LD A,1                  ; If Magic Knight is not wearing the Disquise...
  CALL 45505              ; ...
  RET NZ                  ; ...then return
  LD A,(23438)            ; Load B with zero-based index of current disquise...
  DEC A                   ; ...
  LD B,A                  ; ...
  LD A,(23703)            ; Load A with Index of Required Disquise...
  CP B                    ; ...and if this is not the same as the disquise
                          ; currently being worn...
  RET NZ                  ; ...then return
  LD A,33                 ; If Magic Knight is not carrying the Newspaper
                          ; (33)...
  CALL 45510              ; ...
  RET NZ                  ; ...then return
  LD A,(23702)            ; Load A with index Magic Knight's current room...
  INC A                   ; ...plus one...
  LD (48844),A            ; ...and set right exit from Outdoors, 15 (The Castle
                          ; Entrance) to A
  XOR A                   ; Set Magic Knight's Temporary Movement Flags to zero
                          ; (so Magic Knight can move both left and right)...
  LD (23451),A            ; ...
  RET                     ; Return

; Divide A by Eight, Rounding Down to Nearest Integer
;
; Used by the routines at 38434, 38585, 38724, 45584 and 47731.
  RRCA                    ; Divide by eight...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...and remove remainder
  RET                     ; Return

; Room Drawing Read Graphic Definition from Room Layout Data and Draw
;
; Used by the routine at 38841. Input:  A  Index of graphic to draw C  Mirror
; options (bit 0 = apply vertical mirror, bit 1 = apply horizontal mirror) H
; y-coordinate (characters) L  x-coordinate (characters)
  PUSH BC                 ; Store BC (C = horizontal / vertical mirror options)
  PUSH HL                 ; Store HL (H = y-coordinate, L = x-coordinate)
  LD L,A                  ; Load four times index of graphic to draw into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  LD BC,29272             ; ...and add (in HL) to address of start of Graphics
                          ; Data Lookup Table at 29272 as an offset...
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
  LD (23408),HL           ; ...and store at 23408
  ADD HL,BC               ; Add width and height to get coordinates (x+1, y+1)
                          ; of bottom right of graphic to draw...
  LD (23410),HL           ; ...and store at 23410
  POP BC                  ; Restore BC (C = horizontal / vertical mirror
                          ; options)
  LD A,C                  ; If both mirror options are switched off...
  AND 3                   ; ...
  JP Z,40717              ; ...then skip ahead to 40717
  CP 1                    ; If only the "apply vertical mirror" option is
                          ; switched on...
  JP Z,40720              ; ...then skip ahead to 40720
  CP 2                    ; If only the "apply horizontal mirror" option is
                          ; switched on...
  JP Z,40723              ; ...then skip ahead to 40723
  CP 3                    ; If both mirror options are switched on...
  JP Z,40726              ; ...then skip ahead to 40726
  RET                     ; Return
  JP 61214                ; Set "Apply Vertical Mirror" Mode off, "Apply
                          ; Horizontal Mirror" Mode off, draw the graphic and
                          ; return
  JP 61236                ; Set "Apply Vertical Mirror" Mode on, "Apply
                          ; Horizontal Mirror" Mode off, draw the graphic and
                          ; return
  JP 61267                ; Set "Apply Vertical Mirror" Mode off, "Apply
                          ; Horizontal Mirror" Mode on, draw the graphic and
                          ; return
  JP 61297                ; Set "Apply Vertical Mirror" Mode on, "Apply
                          ; Horizontal Mirror" Mode on, draw the graphic and
                          ; return

; Unused routine
;
; This is a room drawing routine. It reads start co-ordinates, repeat count and
; UDG code and prints a run of characters.
  CALL 40832              ; Move Virtual Bitmap Cursor to Co-Ordinates
                          ; Specified in Layout Data
  LD B,(HL)               ; Load repeat count into B...
  INC HL                  ; ...and advance HL to next parameter
  LD A,(HL)               ; Load UDG code to print into A...
  INC HL                  ; ...and advance HL to next parameter
  PUSH HL                 ; Store HL (current position in room layout data)
  PUSH BC                 ; Store BC (B = remaining number of UDGs to print)
  PUSH AF                 ; Store AF (A = UDG code to print)
  PUSH HL                 ; Store HL (current position in room layout data)
  CALL 63005              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  POP HL                  ; Restore HL (current position in room layout data)
  POP AF                  ; Restore AF (A = UDG code to print)
  POP BC                  ; Restore BC (B = remaining number of UDGs to print)
  DJNZ 40737              ; Decrease remaining number of UDGs to print and loop
                          ; back to 40737
  POP HL                  ; Restore HL (current position in room layout data)
  JP 38977                ; Jump back to 38977 for next byte of room layout
                          ; data

; Unused routine
;
; This is a room drawing routine. It reads start co-ordinates and UDG code and
; prints the UDG.
  CALL 40832              ; Move Virtual Bitmap Cursor to Co-Ordinates
                          ; Specified in Layout Data
  LD A,(HL)               ; Load UDG code to print into A...
  INC HL                  ; ...and advance HL to next parameter
  PUSH HL                 ; Store HL (current position in room layout data)
  CALL 63005              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  POP HL                  ; Restore HL (current position in room layout data)
  JP 38977                ; Jump back to 38977 for next byte of room layout
                          ; data

; Unused routine
;
; This is a room drawing routine. It draws a line.
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
  CALL 48360              ; Draw a line from (C, B) to (E, D)
  POP HL                  ; Restore HL (current position in room layout data)
  JP 38977                ; Jump back to 38977 for next byte of room layout
                          ; data

; Unused routine
;
; This is a room drawing routine. It draws a horizontal line.
  INC HL                  ; Advance data pointer by three bytes...
  INC HL                  ; ...
  INC HL                  ; ...
  PUSH HL                 ; Transfer current position in room layout data from
                          ; HL to IX...
  POP IX                  ; ...
  LD L,(IX+0)             ; Load HL with y-coordinate (pixels)...
  LD H,0                  ; ...
  ADD HL,HL               ; ...and double
  LD BC,65140             ; Point BC at Table of Display File Addresses of
                          ; Start of Each Pixel Row...
  ADD HL,BC               ; ...and add doubled y-coordinate as offset in HL
  CALL 64632              ; Load address corresponding to start of pixel row at
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
  DJNZ 40821              ; Decrease B (remaining number of character blocks to
                          ; draw to) and loop back to 40821
  PUSH IX                 ; Transfer current position in room layout data from
                          ; IX to HL...
  POP HL                  ; ...
  INC HL                  ; Advance room layout data pointer to next
                          ; instruction in layout data
  JP 38977                ; Jump back to 38977 for next byte of room layout
                          ; data

; Room Drawing - Move Virtual Bitmap Cursor to Co-Ordinates Specified in Layout
; Data
;
; Used by the routines at 40729 and 40752. Input:  HL  Pointer to an
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
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  POP HL                  ; Restore HL (current position in room layout data)
  RET                     ; Return

; Paint Room Layout Data Entry's Attributes, Applying Horizontal and Vertical
; Mirrors (Room Drawing)
;
; Used by the routine at 39047. Input:  HL  Points to entry in Lookup Table for
; RLE Attribute Data (Room Layout Graphics) at 60487 Output: B  y-coordinate of
; graphic's bottom C  x-coordinate of graphic's right
  PUSH HL                 ; Store HL (current entry in Lookup Table for RLE
                          ; Attribute Data)
  LD HL,23408             ; Modify instruction at 40983 to load x-coordinate of
                          ; graphic's left edge into A...
  LD (40984),HL           ; ...i.e. set end x-coordinate for painting
                          ; right-to-left
  LD HL,41025             ; Modify instruction at 40987 to jump to 41025...
  LD (40988),HL           ; ...i.e. advance HL up one character row in
                          ; Attribute File
  LD A,43                 ; Modify instruction at 40990 with opcode 43 (DEC
                          ; HL)...
  LD (40990),A            ; ...
  POP HL                  ; Restore HL (current entry in Lookup Table for RLE
                          ; Attribute Data)
  CALL 41035              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Attribute Data
  LD BC,(23410)           ; Load BC with coordinates of graphic's bottom-right
  JR 40963                ; Jump to attribute painting routine

; Paint Room Layout Data Entry's Attributes, Applying Horizontal Mirror (Room
; Drawing)
;
; Used by the routine at 39047. Input:  HL  Points to entry in Lookup Table for
; RLE Attribute Data (Room Layout Graphics) at 60487 Output: B  y-coordinate of
; graphic's bottom C  x-coordinate of graphic's left
  PUSH HL                 ; Store HL (current entry in Lookup Table for RLE
                          ; Attribute Data)
  LD HL,23410             ; Modify instruction at 40983 to load x-coordinate of
                          ; graphic's right edge into A...
  LD (40984),HL           ; ...i.e. set end x-coordinate for painting
                          ; left-to-right
  LD HL,41025             ; Modify instruction at 40987 to jump to 41025...
  LD (40988),HL           ; ...i.e. advance HL up one character row in
                          ; Attribute File
  LD A,35                 ; Modify instruction at 40990 with opcode 35 (INC
                          ; HL)...
  LD (40990),A            ; ...
  POP HL                  ; Restore HL (current entry in Lookup Table for RLE
                          ; Attribute Data)
  CALL 41035              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Attribute Data
  LD A,(23408)            ; Load C with x-coordinate of graphic's left edge...
  LD C,A                  ; ...
  LD A,(23411)            ; Load B with y-coordinate of graphic's bottom
                          ; edge...
  LD B,A                  ; ...
  JR 40963                ; Jump to attribute painting routine

; Paint Room Layout Data Entry's Attributes, Applying Vertical Mirror (Room
; Drawing)
;
; Used by the routine at 39047. Input:  HL  Points to entry in Lookup Table for
; RLE Attribute Data (Room Layout Graphics) at 60487 Output: B  y-coordinate of
; graphic's top C  x-coordinate of graphic's right
  PUSH HL                 ; Store HL (current entry in Lookup Table for RLE
                          ; Attribute Data)
  LD HL,23408             ; Modify instruction at 40983 to load x-coordinate of
                          ; graphic's left edge into A...
  LD (40984),HL           ; ...i.e. set end x-coordinate for painting
                          ; right-to-left
  LD HL,41004             ; Modify instruction at 40987 to jump to 41004...
  LD (40988),HL           ; ...i.e. advance HL down one character row in
                          ; Attribute File
  LD A,43                 ; Modify instruction at 40990 with opcode 43 (DEC
                          ; HL)...
  LD (40990),A            ; ...
  POP HL                  ; Restore HL (current entry in Lookup Table for RLE
                          ; Attribute Data)
  CALL 41035              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Attribute Data
  LD A,(23410)            ; Load C with x-coordinate of graphic's right edge...
  LD C,A                  ; ...
  LD A,(23409)            ; Load B with y-coordinate of graphic's top edge...
  LD B,A                  ; ...
  JR 40963                ; Jump to attribute painting routine

; Paint Room Layout Data Entry's Attributes (Room Drawing)
;
; Used by the routine at 39047. Input:  HL  Points to entry in Lookup Table for
; RLE Attribute Data (Room Layout Graphics) at 60487 DE  Points to entry in
; Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics) at 60889
  PUSH HL                 ; Store HL (Pointer to entry in Lookup Table for RLE
                          ; Attribute Data)
  LD HL,23410             ; Modify instruction at 40983 to load x-coordinate of
                          ; graphic's right edge into A...
  LD (40984),HL           ; ...i.e. set end x-coordinate for painting
                          ; left-to-right
  LD HL,41004             ; Modify instruction at 40987 to jump to 41004...
  LD (40988),HL           ; ...i.e. advance HL down one character row in
                          ; Attribute File
  LD A,35                 ; Modify instruction at 40990 with opcode 35 (INC
                          ; HL)...
  LD (40990),A            ; ...
  POP HL                  ; Restore HL (Pointer to entry in Lookup Table for
                          ; RLE Attribute Data)
  CALL 41035              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Attribute Data
  LD BC,(23408)           ; Load BC with x- and y-coordinates (top-left)
                          ; defined in current room layout data entry
; This entry point is used by the routines at 40845, 40873 and 40905. At this
; point, BC holds the initial coordinates in characters, from which to start
; painting attributes. IX points to the required RLE attribute data.
  PUSH BC                 ; Store BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  CALL 63219              ; Point HL at Attribute File address for character
                          ; coordinates (C, B)
  LD A,(IX+0)             ; Load A with repeat count value
  OR A                    ; If repeat count is zero...
  JP Z,41000              ; ...then jump to 41000
  LD B,A                  ; Load B with repeat count
  LD C,(IX+1)             ; Load C with attribute to paint
  LD (HL),C               ; Apply attribute in C to current Attribute File
                          ; location in HL
  LD A,L                  ; Load E with x-coordinate (characters) of current
                          ; Attribute File location...
  AND 31                  ; ...
  LD E,A                  ; ...
; The operand of the instruction at 40983 is modified by instructions at 40849,
; 40877, 40909, 40941, to 23408 (x-coordinate of left edge), 23410
; (x-coordinate of right edge), 23408 (x-coordinate of left edge), or 23410
; (x-coordinate of right edge) respectively.
  LD A,(23410)            ; Load A with end x-coordinate for painting...
  CP E                    ; ...and if this is the same as the x-coordinate...
; The operand of the instruction at 40987 (i.e. the destination of the jump) is
; modified by the instructions at 40855, 40883, 40915 and 40947 to be 41025
; (move up one character row), 41025 (move up one character row), 41004 (move
; down one character row) or 41004 (move down one character row) respectively.
  JP Z,41004              ; ...then jump to routine to move up or down one
                          ; character row
; The instruction at 40990 is modified by the instructions at 40860, 40888,
; 40920 and 40952 to 43 (DEC HL), 35 (INC HL), 43 (DEC HL) or 35 (INC HL)
; respectively.
  INC HL                  ; Advance HL to next (or previous) byte in Attribute
                          ; File
  DJNZ 40978              ; Decrease B (repeat count) and loop back to 40978 if
                          ; not zero
  INC IX                  ; Advance IX by two bytes in RLE attribute data...
  INC IX                  ; ...
  JP 40967                ; Loop back to 40967 for this new data
  POP BC                  ; Restore BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  JP 39158                ; Advance to next Room Layout Data entry and paint
                          ; its attributes
; Move down one character row
  EXX                     ; Switch registers
  LD A,(23411)            ; Load A with one more than y-coordinate of bottom
                          ; edge of area to paint...
  INC A                   ; ...
  POP BC                  ; Restore BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  INC B                   ; Increase B (i.e. move down a character row)
  PUSH BC                 ; Store BC (B = updated y-coordinate, C = initial
                          ; x-coordinate)
  CP B                    ; If B is the same as A (i.e. we are now outside the
                          ; area to be painted)...
  JP Z,41000              ; ...then jump to 41000
  CALL 63219              ; Load HL with Attribute File address for coordinates
                          ; (C, B) and load E with x-coordinate (characters)
  PUSH HL                 ; Store HL (new Attribute File Address)
  EXX                     ; Switch registers
  POP HL                  ; Restore HL (new Attribute File Address)
  JP 40991                ; Jump back to 40991 and continue painting
; Move up one character row
  EXX                     ; Switch registers
  LD A,(23409)            ; Load A with one less than y-coordinate of top edge
                          ; of area to paint...
  DEC A                   ; ...
  POP BC                  ; Restore BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  DEC B                   ; Increase B (i.e. move down a character row)
  JP 41011                ; Jump back to 41011

; Store Coordinates of Area to be Coloured and Point IX at RLE Attribute (or
; Terrain Interaction) Data (Room Drawing)
;
; Used by the routines at 40845, 40873, 40905, 40937, 41081, 41109, 41141 and
; 41173. Input:  HL Pointer to entry in Lookup Table for Attribute Data or
; Terrain Interaction Data Output: IX  Points to start of RLE attribute data
  LD BC,(23408)           ; Load BC with x- and y-coordinates (top-left)
                          ; defined in current room layout data entry
  LD A,(HL)               ; Load width as defined in attribute lookup data into
                          ; A...
  ADD A,C                 ; ...add to x-coordinate...
  DEC A                   ; ...subtract one to get x-coordinate of right of
                          ; graphic...
  LD (23410),A            ; ...and store at 23410
  INC HL                  ; Advance HL to height value in attribute lookup
                          ; data...
  LD A,(HL)               ; ...load into A...
  ADD A,B                 ; ...add to y-coordinate...
  LD (23411),A            ; ...and store at 23411
  INC HL                  ; Advance HL to address of attribute data...
  CALL 64632              ; ...load this address into HL...
  PUSH HL                 ; ...and copy the address from HL to IX...
  POP IX                  ; ...
  RET                     ; Return

; Unused routine
;
; Skip IX over room layout data entry for which painting (attribute / terrain
; interaction) is inappropriate. Input: IX  Points to start of an instruction
; in room layout data A  First byte of the instruction
  INC IX                  ; Advance by six bytes to start of next
                          ; instruction...
  INC IX                  ; ...
  INC IX                  ; ...
  INC IX                  ; ...
  INC IX                  ; ...
  INC IX                  ; ...
  BIT 0,A                 ; If instruction number is even (i.e. instruction
                          ; which has five parameters)...
  JP Z,39067              ; ...then process next room layout instruction (jump
                          ; to 39067)...
  INC IX                  ; ...otherwise, advance by one more byte to skip over
                          ; sixth parameter...
  JP 39067                ; ...and process next room layout instruction (jump
                          ; to 39067)

; Paint Room Layout Data Entry's Terrain Interaction Parameters, Applying
; Horizontal and Vertical Mirrors (Room Drawing)
;
; Used by the routine at 39158. Input:  HL  Points to entry in Lookup Table for
; RLE Terrain Interaction Data (Room Layout Graphics) at 60889 Output: B
; y-coordinate of graphic's bottom C  x-coordinate of graphic's right
  PUSH HL                 ; Store HL (current entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  LD HL,23408             ; Modify instruction at 41219 to load x-coordinate of
                          ; graphic's left edge into A...
  LD (41220),HL           ; ...i.e. set end x-coordinate for painting
                          ; right-to-left
  LD HL,41261             ; Modify instruction at 41223 to jump to 41261...
  LD (41224),HL           ; ...i.e. advance HL up one character row in Terrain
                          ; Interaction Data Table at 23808
  LD A,43                 ; Modify instruction at 41226 with opcode 43 (DEC
                          ; HL)...
  LD (41226),A            ; ...
  POP HL                  ; Restore HL (current entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  CALL 41035              ; Store coordinates of area to be painted and point
                          ; IX at RLE Terrain Interaction data
  LD BC,(23410)           ; Load BC with coordinates of graphic's bottom-right
  JR 41199                ; Jump to terrain interaction parameter painting
                          ; routine

; Paint Room Layout Data Entry's Terrain Interaction Parameters, Applying
; Horizontal Mirror (Room Drawing)
;
; Used by the routine at 39158. Input:  HL  Points to entry in Lookup Table for
; RLE Terrain Interaction Data (Room Layout Graphics) at 60889 Output: B
; y-coordinate of graphic's bottom C  x-coordinate of graphic's left
  PUSH HL                 ; Store HL (current entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  LD HL,23410             ; Modify instruction at 41219 to load x-coordinate of
                          ; graphic's right edge into A...
  LD (41220),HL           ; ...i.e. set end x-coordinate for painting
                          ; left-to-right
  LD HL,41261             ; Modify instruction at 41223 to jump to 41261...
  LD (41224),HL           ; ...i.e. advance HL up one character row in Terrain
                          ; Interaction Data Table at 23808
  LD A,35                 ; Modify instruction at 41226 with opcode 35 (INC
                          ; HL)...
  LD (41226),A            ; ...
  POP HL                  ; Restore HL (current entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  CALL 41035              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Terrain Interaction Data
  LD A,(23408)            ; Load C with x-coordinate of graphic's left edge...
  LD C,A                  ; ...
  LD A,(23411)            ; Load B with y-coordinate of graphic's bottom
                          ; edge...
  LD B,A                  ; ...
  JR 41199                ; Jump to terrain interaction data painting routine

; Paint Room Layout Data Entry's Terrain Interaction Parameters, Applying
; Vertical Mirror (Room Drawing)
;
; Used by the routine at 39158. Input:  HL  Points to entry in Lookup Table for
; RLE Terrain Interaction Data (Room Layout Graphics) at 60889 Output: B
; y-coordinate of graphic's top C  x-coordinate of graphic's right
  PUSH HL                 ; Store HL (current entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  LD HL,23408             ; Modify instruction at 41219 to load x-coordinate of
                          ; graphic's left edge into A...
  LD (41220),HL           ; ...i.e. set end x-coordinate for painting
                          ; right-to-left
  LD HL,41240             ; Modify instruction at 41223 to jump to 41240...
  LD (41224),HL           ; ...i.e. advance HL down one character row in
                          ; Terrain Interaction Data Table at 23808
  LD A,43                 ; Modify instruction at 41226 with opcode 43 (DEC
                          ; HL)...
  LD (41226),A            ; ...
  POP HL                  ; Restore HL (current entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  CALL 41035              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Terrain Interaction Data
  LD A,(23410)            ; Load C with x-coordinate of graphic's right edge...
  LD C,A                  ; ...
  LD A,(23409)            ; Load B with y-coordinate of graphic's top edge...
  LD B,A                  ; ...
  JR 41199                ; Jump to terrain interaction data painting routine

; Paint Room Layout Data Entry's Terrain Interaction Parameters then Advance to
; Next Entry (Room Drawing)
;
; Used by the routine at 39158. Input:  HL  Points to entry in Lookup Table for
; RLE Terrain Interaction Data (Room Layout Graphics) at 60889
  PUSH HL                 ; Store HL (Pointer to entry in Lookup Table for RLE
                          ; Terrain Interaction Data)
  LD HL,23410             ; Modify instruction at 41219 to load x-coordinate of
                          ; graphic's right edge into A...
  LD (41220),HL           ; ...i.e. set end x-coordinate for painting
                          ; left-to-right
  LD HL,41240             ; Modify instruction at 41223 to jump to 41240...
  LD (41224),HL           ; ...i.e. advance HL down one character row in
                          ; Terrain Interaction Data Table at 23808
  LD A,35                 ; Modify instruction at 41226 with opcode 35 (INC
                          ; HL)...
  LD (41226),A            ; ...
  POP HL                  ; Restore HL (Pointer to entry in Lookup Table for
                          ; RLE Terrain Interaction Data)
  CALL 41035              ; Store coordinates of area to be coloured and point
                          ; IX at RLE Terrain Interaction Data
  LD BC,(23408)           ; Load BC with x- and y-coordinates (top-left)
                          ; defined in current room layout data entry
; This entry point is used by the routines at 41081, 41109 and 41141. At this
; point, BC holds the initial coordinates in characters, from which to start
; painting terrain interaction parameters. IX points to the required RLE
; terrain interaction data.
  PUSH BC                 ; Store BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  CALL 63233              ; Point HL at Terrain Interaction Data Table address
                          ; for character coordinates x=C, y=B
  LD A,(IX+0)             ; Load A with repeat count value
  OR A                    ; If repeat count is zero...
  JP Z,41236              ; ...then jump to 41236
  LD B,A                  ; Load B with repeat count
  LD C,(IX+1)             ; Load C with terrain interaction parameter to paint
  LD (HL),C               ; Apply terrain interaction parameter in C to current
                          ; Terrain Interaction Data Table location in HL
  LD A,L                  ; Load E with x-coordinate (characters) of current
                          ; Terrain Interaction Data location...
  AND 31                  ; ...
  LD E,A                  ; ...
; The operand of the instruction at 41219 is modified by instructions at 41085,
; 41113, 41145, 41177, to 23408 (x-coordinate of left edge), 23410
; (x-coordinate of right edge), 23408 (x-coordinate of left edge), or 23410
; (x-coordinate of right edge) respectively.
  LD A,(23410)            ; Load A with end x-coordinate for painting...
  CP E                    ; ...and if this is the same as the x-coordinate...
; The operand of the instruction at 41223 (i.e. the destination of the jump) is
; modified by the instructions at 41091, 41119, 41151 and 41183 to be 41261
; (move up one character row), 41261 (move up one character row), 41240 (move
; down one character row) or 41240 (move down one character row) respectively.
  JP Z,41240              ; ...then jump to routine to move up or down one
                          ; character row
; The instruction at 41226 is modified by the instructions at 41096, 41124,
; 41156 and 41188 to 43 (DEC HL), 35 (INC HL), 43 (DEC HL) or 35 (INC HL)
; respectively.
  INC HL                  ; Advance HL to next (or previous) byte in Terrain
                          ; Interaction Data Table
  DJNZ 41214              ; Decrease B (repeat count) and loop back to 41214 if
                          ; not zero
  INC IX                  ; Advance IX by two bytes in RLE terrain interaction
                          ; data...
  INC IX                  ; ...
  JP 41203                ; Loop back to 41203 for this new data
  POP BC                  ; Restore BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  JP 39183                ; Advance IX to start of next Room Layout Data entry
                          ; and jump back to 39067 to paint its attributes /
                          ; terrain interaction data
; Move down one character row
  EXX                     ; Switch registers
  LD A,(23411)            ; Load A with one more than y-coordinate of bottom
                          ; edge of area to paint...
  INC A                   ; ...
  POP BC                  ; Restore BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  INC B                   ; Increase B (i.e. move down a character row)
  PUSH BC                 ; Store BC (B = updated y-coordinate, C = initial
                          ; x-coordinate)
  CP B                    ; If B is the same as A (i.e. we are now outside the
                          ; area to be painted)...
  JP Z,41236              ; ...then jump to 41236
  CALL 63233              ; Load HL with Terrain Interaction Data Table address
                          ; for coordinates (C, B) and load E with x-coordinate
                          ; (characters)
  PUSH HL                 ; Store HL (new Terrain Interaction Data Table
                          ; Address)
  EXX                     ; Switch registers
  POP HL                  ; Restore HL (new Terrain Interaction Data Table
                          ; Address)
  JP 41227                ; Jump back to 41227 and continue painting
; Move up one character row
  EXX                     ; Switch registers
  LD A,(23409)            ; Load A with one less than y-coordinate of top edge
                          ; of area to paint...
  DEC A                   ; ...
  POP BC                  ; Restore BC (B = current y-coordinate, C = initial
                          ; x-coordinate)
  DEC B                   ; Increase B (i.e. move down a character row)
  JP 41247                ; Jump back to 41247

; Draw 2x2 Block with Style Index A at Bitmap Virtual Text Cursor then move
; Right Two Characters
;
; Used by the routines at 39216 and 39366. Input:  A  Block style index
  EXX                     ; Switch registers
  LD H,0                  ; Load HL with eight times block style index...
  LD L,A                  ; ...(see trivia)...
  ADD A,A                 ; ...
  LD L,A                  ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  LD DE,49794             ; Load DE with start address of Table of Block Style
                          ; Definitions...
  ADD HL,DE               ; ...and add to HL as offset in HL
  LD A,(HL)               ; Load system variable ATTR T with attribute value in
                          ; selected style...
  LD (23695),A            ; ...
  INC HL                  ; Advance HL to terrain interaction parameter to
                          ; apply...
  LD A,(HL)               ; ...
  LD (23485),A            ; ...and store at 23485
  INC HL                  ; Advance HL to Terrain Interaction Parameter
                          ; Painting Bitmap...
  LD A,(HL)               ; ...
  LD (23298),A            ; ...and store at 23298
  INC HL                  ; Advance HL to index of top-left block UDG...
  INC HL                  ; ...
  LD DE,(63018)           ; Store Display File address of Bitmap Virtual Text
                          ; Cursor to 23296...
  LD (23296),DE           ; ...
  LD A,(HL)               ; Load A with index of top-left block UDG...
  CALL 63162              ; ...and draw at location of Bitmap Virtual Text
                          ; Cursor
  PUSH HL                 ; Store HL (pointer to index of top-left block UDG)
  CALL 63247              ; Advance Bitmap Virtual Text Cursor right by one
                          ; character
  POP HL                  ; Restore HL (pointer to index of top-left block UDG)
  INC HL                  ; Advance HL to index of top-right block UDG...
  LD A,(HL)               ; ...load into A...
  CALL 63162              ; ...and draw at location of Bitmap Virtual Text
                          ; Cursor
  PUSH HL                 ; Store HL (pointer to index of top-right block UDG)
  CALL 63247              ; Advance Bitmap Virtual Text Cursor right by one
                          ; character (see trivia)
  LD A,(23298)            ; Load B with Terrain Interaction Parameter Painting
                          ; Bitmap...
  LD B,A                  ; ...
  LD A,(23485)            ; Load A with terrain interaction parameter to apply
  LD HL,(23709)           ; Load HL with address of terrain interaction data
                          ; for top-left character
  BIT 0,B                 ; If Bit 0 of Terrain Interaction Parameter Painting
                          ; Bitmap is reset...
  JR Z,41340              ; ...then skip ahead to 41340
  LD (HL),A               ; Apply current terrain interaction parameter to
                          ; address in HL
  INC HL                  ; Advance HL (i.e. move right one character)
  BIT 1,B                 ; If Bit 1 of Terrain Interaction Parameter Painting
                          ; Bitmap is reset...
  JR Z,41346              ; ...then skip ahead to 41346
  LD (HL),A               ; Apply current terrain interaction parameter to
                          ; address in HL
  POP HL                  ; Restore HL (pointer to index of top-right block
                          ; UDG)
  LD A,(23461)            ; If Draw 2x1 Blocks Flag is set (see trivia)...
  OR A                    ; ...
  JR NZ,41457             ; ...then skip ahead to 41457
  INC HL                  ; Advance HL to index of bottom-left block UDG
  EX DE,HL                ; Swap DE (now points to index of bottom-left block
                          ; UDG) and HL
  LD HL,(23296)           ; Restore Display File address of Bitmap Virtual Text
                          ; Cursor (top-left character) from 23296...
  LD (63018),HL           ; ...
  CALL 63263              ; Advance Bitmap Virtual Text Cursor to start of next
                          ; character row
  LD A,(23296)            ; Load A with LSB of Bitmap Virtual Text Cursor
                          ; Display File address stored previously...
  AND 31                  ; ...and clear bits 5, 6 and 7 to leave x-coordinate
                          ; in characters
  LD HL,(63018)           ; Load HL with address of Bitmap Virtual Text
                          ; Cursor...
  OR L                    ; ...and add x-coordinate in characters to move to
                          ; bottom-left character in 2x2 block...
  LD L,A                  ; ...
  LD (63018),HL           ; Store updated address of Bitmap Virtual Text Cursor
  EX DE,HL                ; Swap DE and HL (now points to index of bottom-left
                          ; block UDG)
  LD A,(HL)               ; Load A with index of bottom-left block UDG...
  CALL 63162              ; ...and draw at location of Bitmap Virtual Text
                          ; Cursor
  PUSH HL                 ; Store HL (pointer to index of bottom-left block
                          ; UDG)
  CALL 63247              ; Advance Bitmap Virtual Text Cursor right by one
                          ; character
  POP HL                  ; Restore HL (pointer to index of bottom-left block
                          ; UDG)
  INC HL                  ; Advance HL to index of bottom-right block UDG...
  LD A,(HL)               ; ...load into A...
  CALL 63162              ; ...and draw at location of Bitmap Virtual Text
                          ; Cursor
  LD HL,(23296)           ; Restore Display File address of Bitmap Virtual Text
                          ; Cursor (top-left character) from 23296...
  LD (63018),HL           ; ...
  LD A,(23298)            ; Load B with Terrain Interaction Parameter Painting
                          ; Bitmap...
  LD B,A                  ; ...
  LD A,(23485)            ; Load A with terrain interaction parameter to apply
  LD HL,(23709)           ; Load HL with address of terrain interaction data
                          ; for top-left character...
  LD BC,32                ; ...and add 32 to point to bottom-left character...
  ADD HL,BC               ; ...
  BIT 2,B                 ; If Bit 2 of Terrain Interaction Parameter Painting
                          ; Bitmap is reset (bug)...
  JR Z,41417              ; ...then skip ahead to 41417
  LD (HL),A               ; Apply current terrain interaction parameter to
                          ; address in HL
  INC HL                  ; Advance HL (i.e. move right one character)
  BIT 3,B                 ; If Bit 3 of Terrain Interaction Parameter Painting
                          ; Bitmap is reset (bug)...
  JR Z,41423              ; ...then skip ahead to 41423
  LD (HL),A               ; Apply current terrain interaction parameter to
                          ; address in HL
  CALL 63247              ; Advance Bitmap Virtual Text Cursor right by two
                          ; characters...
  CALL 63247              ; ...i.e. move to top-left character of next 2x2
                          ; block to the right
  LD HL,(23709)           ; Load HL with address of terrain interaction data
                          ; for top-left character...
  INC HL                  ; ...advance by two characters...
  INC HL                  ; ...
  LD (23709),HL           ; ...and store at 23709
  LD A,(63018)            ; Load A with LSB of Bitmap Virtual Text Cursor
                          ; Display File address...
  AND 31                  ; ...and if at least one of bits 0-4 are set (i.e. we
                          ; are not at the start of a new character row)...
  JR NZ,41457             ; ...then skip ahead to 41457
  CALL 63263              ; Advance Bitmap Virtual Text Cursor to start of next
                          ; character row
  LD BC,32                ; Add 32 to address of terrain interaction data to
                          ; move to next character row...
  LD HL,(23709)           ; ...
  ADD HL,BC               ; ...
  LD (23709),HL           ; ...
  EXX                     ; Switch registers
  RET                     ; Return

; Read Glowing Character Block Definitions and Add to Current Room
;
; Used by the routine at 39393. Input:  HL  Current position in room layout
; data
  INC HL                  ; Advance HL by one byte...
  LD A,(HL)               ; ...and if value here is 255 (end marker)...
  CP 255                  ; ...
  RET Z                   ; ...then return
  LD C,A                  ; Load C with x-coordinate
  INC HL                  ; Advance HL to y-coordinate...
  LD B,(HL)               ; ...and load into B
  PUSH HL                 ; Store HL (current position in room layout data)
  CALL 63219              ; Point HL at Attribute File address for character
                          ; coordinates x=C, y=B
  CALL 41477              ; Add a glowing character block to the current room
  POP HL                  ; Restore HL (current position in room layout data)
  JR 41459                ; Loop back to 41459 for next entry

; Add a Glowing Character Block to the Current Room
;
; Used by the routine at 41459. Input:  HL  Attribute File address to add
; Output: IX  Points to entry in the table created on the last pass of this
; routine
  LD IX,23368             ; Point IX at table of Attribute File addresses of
                          ; glowing characters in current room
  DEC IX                  ; Move IX back two bytes...
  DEC IX                  ; ...
  INC IX                  ; Advance IX by two bytes...
  INC IX                  ; ...
  LD A,(IX+0)             ; If two bytes at IX are non-zero...
  OR (IX+1)               ; ...
  JR NZ,41485             ; ...then loop back to check next two bytes
  LD (IX+0),L             ; Store HL at first empty pair of bytes after
                          ; 23368...
  LD (IX+1),H             ; ...
  RET                     ; Return

; Copy 2x4 (Characters) Region of Display File into Temporary Storage at 23299
;
; Used by the routine at 39958. Input:  IX  Address of position data for a
; character, or Magic Knight
  LD DE,23299             ; Load DE with start address of temporary storage
                          ; area
  LD C,(IX+1)             ; Load C with x-coordinate of area to copy
  LD B,(IX+2)             ; Load B with y-coordinate of area to copy...
  DEC B                   ; ...and decrease by one
  LD (41549),BC           ; Store x- and y-coordinates as operand of
                          ; instruction at 41548
  LD A,4                  ; Load A with 4 (as Magic Knight and other characters
                          ; span four character blocks in height)
  PUSH AF                 ; Store AF (A = remaining height in characters to
                          ; copy)
  INC B                   ; Increase y-coordinate by one
  PUSH BC                 ; Store BC (B = current y-coordinate, C = current
                          ; x-coordinate)
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  LD B,8                  ; Load B with 8 (as there are eight pixel rows per
                          ; character)
  LD A,(HL)               ; Copy byte from current location in Display File...
  LD (DE),A               ; ...to temporary storage area starting at 23299
  INC HL                  ; Advance right one character in Display File
  INC DE                  ; Advance to next byte in temporary storage area
  LD A,(HL)               ; Copy byte from current location in Display File...
  LD (DE),A               ; ...to temporary storage area starting at 23299
  INC DE                  ; Advance to next byte in temporary storage area
  DEC HL                  ; Move left one character...
  INC H                   ; ...and down one pixel in Display File
  DJNZ 41528              ; Decrease B (remaining number of pixel rows) and
                          ; loop back to 41528 if not zero
  POP BC                  ; Restore BC (B = current y-coordinate, C = current
                          ; x-coordinate)
  POP AF                  ; Restore AF (A = remaining height in characters to
                          ; copy)
  DEC A                   ; Decrease remaining number of character blocks to
                          ; copy...
  JR NZ,41520             ; ...and loop back to 41520 if not zero
  RET                     ; Return

; Copy 2x4 (Characters) Region from Temporary Storage at 23299 into Display
; File
;
; Used by the routine at 39958.
  LD DE,23299             ; Load DE with start address of temporary storage
                          ; area
; The operand of the instruction at 41548 represents the x- and y-coordinates
; at which to copy the previously stored bitmap data into the Display File.
; This is modified by the instruction at 41514.
  LD BC,0                 ; Load B and C with the y- and x-coordinates to copy
                          ; to, respectively
  LD A,4                  ; Load A with 4 (as characters are 4 characters high)
  PUSH AF                 ; Store AF (A = remaining height in characters to
                          ; copy)
  INC B                   ; Increase destination y-coordinate by one
  PUSH BC                 ; Store BC (B = current y-coordinate, C = current
                          ; x-coordinate)
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  LD B,8                  ; Load B with 8 (as there are eight pixel rows per
                          ; character)
  LD A,(DE)               ; Copy byte from temporary storage area starting at
                          ; 23299...
  LD (HL),A               ; ...to current location in Display File
  INC HL                  ; Advance right one character in Display File
  INC DE                  ; Advance to next byte in temporary storage area
  LD A,(DE)               ; Copy byte from temporary storage area starting at
                          ; 23299...
  LD (HL),A               ; ...to current location in Display File
  INC DE                  ; Advance to next byte in temporary storage area
  DEC HL                  ; Move left one character...
  INC H                   ; ...and down one pixel in Display File
  DJNZ 41561              ; Decrease B (remaining number of pixel rows) and
                          ; loop back to 41561 if not zero
  POP BC                  ; Restore BC (B = current y-coordinate, C = current
                          ; x-coordinate)
  POP AF                  ; Restore AF (A = remaining height in characters to
                          ; copy)
  DEC A                   ; Decrease remaining height to copy...
  JR NZ,41553             ; ...and loop back to 41553 if not zero
  RET                     ; Return

; Process Command to Pick Up an Object
  CALL 63399              ; Print or update Command Summary Window at top of
                          ; screen
  LD DE,51811             ; Point DE at "PICK UP THE" text...
  CALL 63349              ; ...and print in Command Summary Window at top of
                          ; screen
  LD HL,24922             ; Point HL at start of Objects' Current Positions
                          ; Table
  LD BC,10752             ; Load B with 42 (as there are 42 objects) and C with
                          ; 0
  LD A,(23702)            ; Load A with Magic Knight's current room
  CP (HL)                 ; If current object's room is not the same as Magic
                          ; Knight's then...
  JR NZ,41600             ; ...skip ahead to 41600
  INC C                   ; Increase C (count of objects in Magic Knight's
                          ; current room)
  INC HL                  ; Advance HL to next object's position...
  INC HL                  ; ...
  INC HL                  ; ...
  DJNZ 41593              ; Decrease B and loop back for next object
  LD A,C                  ; Copy total number of objects into A...
  OR A                    ; ...and if this value is zero then set Zero Flag
  LD HL,51822             ; Load HL with address of "THERE IS NOTHING IN THIS
                          ; ROOM" text
  JP Z,64261              ; Display "THERE IS NOTHING IN THIS ROOM" Window
                          ; (13), wait for Fire to be pressed then jump to Main
                          ; Game Loop
  LD HL,24922             ; Point HL at start of Objects' Current Positions
                          ; Table
  LD A,(23702)            ; Load A with Magic Knight's current room
  LD C,A                  ; ...and copy into C
  CALL 45584              ; Load Magic Knight's coordinates (in characters)
                          ; into DE
  XOR A                   ; Set A to zero
  EX AF,AF'               ; Switch A register
  LD B,42                 ; Load B with 42 (as there are 42 objects)
  LD A,C                  ; Load Magic Knight's current room into A
  CP (HL)                 ; If room of current object is not the same as Magic
                          ; Knight's current room...
  JR NZ,41652             ; ...then skip ahead to 41652 [advance to next
                          ; object]
  LD A,D                  ; Copy Magic Knight's y-coordinate into A
  INC HL                  ; Advance HL to current object's y-coordinate...
  INC HL                  ; ...
  CP (HL)                 ; ...and if this is not the same as Magic Knight's
                          ; y-coordinate...
  JR NZ,41654             ; ...then skip ahead to 41654 [advance to next
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
  JR Z,41666              ; ...then skip ahead to 41666
  INC A                   ; Increase value of current x-coordinate (to test
                          ; next x-coordinate in range -2 to +2)
  DJNZ 41644              ; Decrease B (remaining number of x-coordinates to
                          ; test) and loop back to 41644
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
  DJNZ 41627              ; Loop back to 41627 for next object
  LD HL,51833             ; Display "THERE IS NOTHING NEAR ENOUGH" Window (13),
                          ; wait for Fire to be pressed then jump to Main Game
                          ; Loop...
  JP 64261                ; ...
; An object has been found within Magic Knight's reach so make this the current
; object
  POP BC                  ; Restore BC
  EX AF,AF'               ; Switch A register (so now contains index of first
                          ; object that is within Magic Knight's reach)
  LD (41779),A            ; Load index of this object into instruction at 41778
                          ; (i.e. set as Current Object)
  LD DE,45779             ; Point DE at character code to print name of Current
                          ; Object
  CALL 63349              ; ...and print in Command Summary Window at top of
                          ; screen
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object...
  CALL 45685              ; ...and if this is 4 (Teddy Bear) then display "THE
                          ; BEAR SAYS..." message and wait for Fire to be
                          ; pressed
  LD HL,24852             ; Load A with index of object in Magic Knight's fifth
                          ; inventory slot (carrying)...
  LD A,(HL)               ; ...
  OR A                    ; If this is not zero (i.e. Magic Knight's hands are
                          ; full)...
  JP NZ,64258             ; ...then display "YOUR HANDS ARE FULL" window, wait
                          ; for Fire to be pressed then jump to Main Game Loop
  CALL 45466              ; Check whether object has a weight greater than
                          ; Magic Knight's surplus strength...
  JP P,64265              ; ...and if it does then display "THE [name of
                          ; Current Object] IS TOO HEAVY FOR YOU" Window), wait
                          ; for Fire to be pressed then jump to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object...
  LD C,A                  ; ...and copy into C
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,24848             ; Wait for interrupt then load object in C into Magic
                          ; Knight's first empty inventory (carrying) slot...
  CALL 45380              ; ...
  LD A,(41779)            ; Load A with index of Current Object...
  LD C,A                  ; ...and copy into C
  ADD A,A                 ; Multiply index by three in A...
  ADD A,C                 ; ...
  LD B,0                  ; Load three times object index into BC...
  LD C,A                  ; ...
  LD HL,24922             ; Point HL at start of Objects' Current Positions
                          ; Table
  ADD HL,BC               ; Add BC as offset to point HL at position data for
                          ; current object
  LD (HL),99              ; Set object's room to 99
; This entry point is used by the routines at 41748, 42036, 42395 and 44635.
  LD IX,24848             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,51794             ; Point HL at "YOU ARE NOW CARRYING" text
  CALL 45802              ; Display "Magic Knight's current inventory" window
                          ; as an information window
; This entry point is used by the routines at 42638 and 45552.
  CALL 64230              ; Wait for Interrupt then display "PRESS FIRE TO
                          ; CONTINUE" window and wait for Fire to be pressed
; This entry point is used by the routines at 41748, 41924, 42257, 42638,
; 43043, 43494, 43636, 44635, 44861, 44933, 64207 and 64317.
  CALL 46183              ; Set Magic Knight's available action flags
  JP 38205                ; Jump to start of Main Game Loop

; Process Command to Drop an Object
  CALL 45641              ; Display "YOU ARE NOT CARRYING ANYTHING" Window and
                          ; set Zero Flag if Magic Knight's inventory
                          ; (carrying) is empty
  JP Z,41742              ; If MK's inventory (carrying) is empty then set his
                          ; available action flags and jump to start of Main
                          ; Game Loop
  LD IX,24848             ; Point IX at start of Magic Knight's current
                          ; inventory (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,51920             ; Point HL at "[Current Command] WHICH OBJECT ?" text
  LD DE,51928             ; Point DE at "[Current Command] THE " text
  CALL 45809              ; Show list of objects in Magic Knight's inventory
                          ; (carrying) as a menu and load A with selected item
                          ; index
  LD HL,24848             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  CALL 45766              ; Print name of selected object in Magic Knight's
                          ; current inventory (carrying) in Command Summary
                          ; Window
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
; The operand of the instruction at 41778 represents the index of the Current
; Object used in multiple routines. This is modified by the instructions at
; 41668 and 45771.
  LD A,0                  ; Load index of Current Object into A [Operand is
                          ; index of Current Object]
  LD HL,51933             ; Point HL at "THE [name of Current Object] BLEW
                          ; UP..." text
  CP 5                    ; If Current Object is 5 (Stick of Dynamite)...
  JP Z,64582              ; ...then jump to "Game over" window routine and
                          ; return to Control Selection Menu
  CALL 45685              ; If Current Object is 4 (Teddy Bear) then display
                          ; "THE BEAR SAYS..." message and wait for Fire to be
                          ; pressed
  LD E,0                  ; Load E with 0 (prepare to check Drop Status Flag)
  CALL 45390              ; Point HL to byte 0 of the A-th record in Object
                          ; Properties Table
  BIT 4,(HL)              ; Reset Zero Flag if object's Drop Status Flag is set
  LD HL,51970             ; Point HL at "YOU CANNOT [Current Command] THE [name
                          ; of Current Object]" text
  JP NZ,64261             ; ...then display "YOU CANNOT [Current Command] THE
                          ; [object]" Window (13), wait for Fire to be pressed
                          ; then jump to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object
  LD C,A                  ; Copy into C
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,24848             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  CALL 48341              ; Remove object C from Magic Knight's current
                          ; inventory (carrying)
  LD A,(23702)            ; Load A with Magic Knight's current room
  CP 2                    ; If room is not 2 (Outdoors, 1, Bearwoolf's Cave)...
  JR NZ,41850             ; ...then skip ahead to 41850
  LD A,(41779)            ; Load A with index of Current Object
  LD C,A                  ; Multiply object index by 3...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...and load into C
  LD B,0                  ; Load B with zero
  LD HL,24922             ; Point HL at start of Objects' Current Positions
                          ; Table at 24922
  ADD HL,BC               ; Add three times Current Object's index as offset to
                          ; point HL at position data of current object
  XOR A                   ; Set object's current room...
  LD (HL),A               ; ...to be zero (Limbo)
  INC HL                  ; Advance HL to x-coordinate of object...
  LD (HL),15              ; ...and set to 15
  INC HL                  ; Advance HL to y-coordinate of object...
  LD (HL),22              ; ...and set to 22
  LD HL,51981             ; Display "THE MAD JANITOR..." Window (12), wait for
                          ; Fire to be pressed then jump to Main Game Loop...
  JP 64297                ; ...
  LD A,(41779)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  CP 20                   ; If Current Object is 20 (Mirror)...
  CALL Z,41915            ; ...then load C with 7 (index of Broken Glass)
  CP 17                   ; If Current Object is 17 (Bottle of Liquid)...
  CALL Z,41918            ; ...then load C with 8 (index of Broken Glass)
  CP 18                   ; If Current Object is 18 (Bottle of Liquid)...
  CALL Z,41921            ; ...then load C with 9 (index of Broken Glass)
  CP 28                   ; If Current Object is 28 (Empty Bottle)...
  CALL Z,41918            ; ...then load C with 8 (index of Broken Glass)
  CP 29                   ; If Current Object is 29 (Empty Bottle)...
  CALL Z,41921            ; ...then load C with 9 (index of Broken Glass)
  LD A,C                  ; Load object's index into A
  ADD A,A                 ; Multiply object index by 3...
  ADD A,C                 ; ...
  LD C,A                  ; ...and load back into C
  LD B,0                  ; Load B with zero
  LD HL,24922             ; Point HL at start of Objects' Current Positions
                          ; Table at 24922
  ADD HL,BC               ; Add three times Current Object's index as offset to
                          ; point HL at position data of current object
  LD A,(23702)            ; Load A with Magic Knight's current room
  LD (HL),A               ; Set object's current room to be same as Magic
                          ; Knight's
  INC HL                  ; Advance HL to x-coordinate of object
  LD B,0                  ; Set B to zero
  LD A,(24840)            ; Load A with Magic Knight's current x-coordinate
                          ; (pixels)
  AND 7                   ; Get x-coordinate in terms of pixels within current
                          ; character block (i.e. lowest 3 bits of
                          ; x-coordinate)
  JR Z,41904              ; If this is zero (i.e. Magic Knight at left-most
                          ; pixel in character block) then skip ahead to
                          ; 41904...
  INC B                   ; ...else increase B
  CALL 45584              ; Load Magic Knight's Coordinates (in Characters)
                          ; into DE
  LD A,B                  ; Load B into A
  ADD A,E                 ; Add Magic Knight's x-coordinate to A
  LD (HL),A               ; Set this as object's x-coordinate
  INC HL                  ; Advance HL to y-coordinate of object
  LD (HL),D               ; Set this to same as Magic Knight's y-coordinate
  JP 41727                ; Show Magic Knight's current inventory and jump back
                          ; to Main Game Loop

; Load C with 7 (Index of Broken Glass)
;
; Used by the routines at 41748 and 43636.
  LD C,7                  ; Load C with 7 (Broken Glass)
  RET                     ; Return

; Load C with 8 (Index of Broken Glass)
;
; Used by the routines at 41748 and 43636.
  LD C,8                  ; Load C with 8 (Broken Glass)
  RET                     ; Return

; Load C with 9 (Index of Broken Glass)
;
; Used by the routines at 41748 and 43636.
  LD C,9                  ; Load C with 9 (Broken Glass)
  RET                     ; Return

; Process Command to Take an Object
  LD HL,51392             ; Point HL at "[Current Command] AN OBJECT FROM ?"
                          ; text (end of sub-menu title, after "WHO DO YOU WANT
                          ; TO ")
  LD DE,52034             ; Point DE (Command Summary Text Pointer) at
                          ; "[Current Command] SOMETHING FROM " text
  CALL 45963              ; Display and process input for Character Selection
                          ; Menu (current room's characters only), setting
                          ; Current Character
  JP Z,41742              ; If there are no characters in the room then set
                          ; MK's available action flags and jump to start of
                          ; Main Game Loop (41742)
; The operand of the instruction at 41936 represents the index of the Current
; Character used in multiple routines. This is modified by the instructions at
; 42686, 45789, 46067, 46147 and 46177.
  LD A,0                  ; Point IX at current inventory of Current
                          ; Character...
  CALL 45450              ; ...
  LD A,(IX+0)             ; If the first inventory slot of the character is
                          ; empty...
  OR A                    ; ...then set Zero Flag
  LD HL,52042             ; Point HL at "[Current Character's short name]'S
                          ; HANDS ARE EMPTY" text
  JP Z,64261              ; If Zero Flag is set then display "[Character]'S
                          ; HANDS ARE EMPTY" Window (13), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  PUSH IX                 ; Store IX (start of inventory)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,51920             ; Point HL at "[Current Command] WHICH OBJECT ?" text
  LD DE,0                 ; Load DE with zero (i.e. no Command Summary Text)
  CALL 45809              ; Show list of objects in character's inventory as a
                          ; menu and load A with selected item index
  PUSH AF                 ; Store AF (A = index of chosen object's inventory
                          ; slot)
  CALL 63399              ; Print or update Command Summary Window at top of
                          ; screen
  LD DE,51928             ; Point DE at "[Current Command] THE " text...
  CALL 63349              ; ...and print in Command Summary Window at top of
                          ; screen
  POP AF                  ; Restore AF (A = index of chosen object's inventory
                          ; slot)
  POP HL                  ; Restore HL (previously IX, pointer to current
                          ; inventory of current character)
  CALL 45766              ; Print name of object in inventory slot A of
                          ; inventory data at HL in Command Summary Window
  LD DE,52039             ; Point DE at " FROM " text...
  CALL 63349              ; ...and print in Command Summary Window at top of
                          ; screen
  LD A,(41937)            ; Load A with index of Current Character
  CALL 45792              ; Print character's name
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object...
  CALL 45685              ; ...and if this is 4 (Teddy Bear) then display "THE
                          ; BEAR SAYS..." message and wait for Fire to be
                          ; pressed
  LD A,253                ; Decrease Current Character's happiness by 3...
  CALL 45434              ; ...
  LD HL,24852             ; Load A with index of object in Magic Knight's fifth
                          ; inventory slot (carrying)...
  LD A,(HL)               ; ...
  OR A                    ; If this is not zero (i.e. Magic Knight's hands are
                          ; full)...
  JP NZ,64258             ; ...then display "YOUR HANDS ARE FULL" window, wait
                          ; for Fire to be pressed then jump to Main Game Loop
  CALL 45466              ; Check whether object has a weight greater than
                          ; Magic Knight's surplus strength...
  JP P,64265              ; ...and if it does then display "THE [name of
                          ; Current Object] IS TOO HEAVY FOR YOU" Window, wait
                          ; for Fire to be pressed then jump to Main Game Loop
  CALL 45364              ; Load A with Current Character's Happiness Level...
  CP 30                   ; and if this is less than 30...
  JP C,64270              ; ...then display "[Character] WANTS TO KEEP THE
                          ; [Object]" Window (13), wait for Fire to be pressed
                          ; then jump to Main Game Loop
  LD A,(41937)            ; Load A with index of Current Character
  LD HL,42069             ; Load HL with start address of Table of Start
                          ; Addresses of Routines for Characters Having Objects
                          ; Taken
  JP 64623                ; Load HL with address of Current Character's "Take
                          ; an Object" routine and jump to it

; Remove Current Object from Current Character's Inventory and Add it to Magic
; Knight's then Return to Main Game Loop
;
; Used by the routines at 42085, 42091, 42105, 42220, 42226, 42232 and 42238.
  LD A,(41937)            ; Point IX at current inventory of Current
                          ; Character...
  CALL 45450              ; ...
  PUSH IX                 ; Copy value from IX...
  POP HL                  ; ...to HL
  LD A,(41779)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (five inventory slots)
  CALL 48341              ; Remove object C from Current Character's inventory
  LD A,(41779)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,24848             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)...
  CALL 45380              ; ...and wait for interrupt then load object C into
                          ; the first empty slot
  JP 41727                ; Show Magic Knight's current inventory and jump back
                          ; to Main Game Loop

; Table of Start Addresses of Routines for Characters Having Objects Taken
  DEFW 42085              ; Off-White Knight (bug)
  DEFW 42091              ; Aramis le Peux
  DEFW 42105              ; Robin of Shylock
  DEFW 42220              ; Reggie the Rat
  DEFW 42226              ; Rachel of Amazonia
  DEFW 42232              ; Barker the Ent
  DEFW 42238              ; Organon the Guard
  DEFW 42244              ; Grunter the Bearwoolf

; Take an Object Routine Off-White Knight
;
; Off-White will refuse to surrender any egg he may have (bug).
  CALL 42247              ; If Current Object is an egg then display
                          ; "[Character] WANTS TO KEEP THE [Object]" Window
                          ; (13) and return to Main Game Loop
  JP 42036                ; Remove Current Object from Current Character's
                          ; inventory and add it to Magic Knight's then return
                          ; to Main Game Loop

; Take an Object Routine Aramis le Peux
;
; Aramis will refuse to surrender the List of Clues or any egg he may have.
  LD A,(41779)            ; If Current Object is 34 (List of Clues)...
  CP 34                   ; ...
  JP Z,64270              ; ...then display "[Character] WANTS TO KEEP THE
                          ; [Object]" Window (13), wait for Fire to be pressed
                          ; then jump to Main Game Loop
  CALL 42247              ; If Current Object is an egg then display
                          ; "[Character] WANTS TO KEEP THE [Object]" Window
                          ; (13) and return to Main Game Loop
  JP 42036                ; Remove Current Object from Current Character's
                          ; inventory and add it to Magic Knight's then return
                          ; to Main Game Loop

; Take an Object Routine Robin of Shylock
;
; Robin will refuse to surrender the Bow or any egg he may have. He will only
; surrender the Newspaper in exchange for an egg. When surrendering the
; Newspaper, he will always take the most valuable egg Magic Knight currently
; has, i.e. Golden Egg > Silver Egg > Copper Egg.
  LD A,(41779)            ; If Current Object is 33 (Newspaper)...
  CP 33                   ; ...
  JP Z,42124              ; ...then skip ahead to 42124
  CP 35                   ; If Current Object is 35 (Bow)...
  JP Z,64270              ; Display "[Character] WANTS TO KEEP THE [Object]"
                          ; Window (13), wait for Fire to be pressed then jump
                          ; to Main Game Loop
  CALL 42247              ; If Current Object is an egg then display
                          ; "[Character] WANTS TO KEEP THE [Object]" Window
                          ; (13) and return to Main Game Loop
  JP 42036                ; Remove Current Object from Current Character's
                          ; inventory and add it to Magic Knight's then return
                          ; to Main Game Loop
  LD A,36                 ; Have current character try to take object 36
                          ; (Golden Egg) in exchange for Newspaper...
  CALL 42157              ; ...returning to Main Game Loop if successful
  LD A,39                 ; Have current character try to take object 39
                          ; (Golden Egg) in exchange for Newspaper...
  CALL 42157              ; ...returning to Main Game Loop if successful
  LD A,37                 ; Have current character try to take object 37
                          ; (Silver Egg) in exchange for Newspaper...
  CALL 42157              ; ...returning to Main Game Loop if successful
  LD A,40                 ; Have current character try to take object 40
                          ; (Silver Egg) in exchange for Newspaper...
  CALL 42157              ; ...returning to Main Game Loop if successful
  LD A,38                 ; Have current character try to take object 38
                          ; (Copper Egg) in exchange for Newspaper...
  CALL 42157              ; ...returning to Main Game Loop if successful
  LD A,41                 ; Have current character try to take object 41
                          ; (Copper Egg) in exchange for Newspaper...
  CALL 42157              ; ...returning to Main Game Loop if successful
; At this point, Robin will have failed to take an egg. In this case, he will
; refuse to surrender the Newspaper.
  JP 64270                ; Display "[Character] WANTS TO KEEP THE [Object]"
                          ; Window (13), wait for Fire to be pressed then jump
                          ; to Main Game Loop

; Take an Object Routine Have Current Character Take Object A in Exchange for
; Newspaper
;
; Used by the routine at 42105. Input:  A  Index of object of interest
  LD (42208),A            ; Store index of object of interest as operand of
                          ; instruction at 42207
  CALL 45510              ; If Magic Knight is not carrying the object of
                          ; interest...
  RET NZ                  ; ...then return
  POP AF                  ; Remove return address of calling routine from top
                          ; of Stack
  LD A,(42208)            ; Load C with index of object of interest...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,24848             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  CALL 48341              ; Remove object of interest from Magic Knight's
                          ; current inventory (carrying)
  LD A,33                 ; Load C with 33 (index of Newspaper)...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,24848             ; Wait for interrupt then load object in C into Magic
                          ; Knight's first empty inventory (carrying) slot...
  CALL 45380              ; ...
  LD A,(41937)            ; Point IX at current inventory of Current
                          ; Character...
  CALL 45450              ; ...
  PUSH IX                 ; Copy address from IX to HL...
  POP HL                  ; ...
  PUSH HL                 ; Store HL (address of Current Character's current
                          ; inventory)
  LD A,33                 ; Load C with 33 (index of Newspaper)...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (five inventory slots)
  CALL 48341              ; Remove object of interest from Current Character's
                          ; current inventory
  POP HL                  ; Restore HL (address of Current Character's current
                          ; inventory)
; The operand of the instruction at 42207 represents the index of the object of
; interest. This is modified by the instruction at 42157.
  LD C,0                  ; Load C with index of object of interest
  LD B,5                  ; Load B with 5 (five inventory slots)
  CALL 45380              ; Wait for interrupt then load object in C into
                          ; Current Character's first empty inventory slot
  LD HL,52076             ; Point HL at "[Current Character's short name] HAS
                          ; [Current Command]N AN EGG..." text
  JP 64261                ; Display "[Current Character's short name] HAS
                          ; [Current Command]N AN EGG..." Window (13), wait for
                          ; Fire to be pressed then jump to Main Game Loop

; Take an Object Routine Reggie the Rat
;
; Reggie will refuse to surrender any egg he may have.
  CALL 42247              ; If Current Object is an egg then display
                          ; "[Character] WANTS TO KEEP THE [Object]" Window
                          ; (13) and return to Main Game Loop
  JP 42036                ; Remove Current Object from Current Character's
                          ; inventory and add it to Magic Knight's then return
                          ; to Main Game Loop

; Take an Object Routine Rachel of Amazonia
;
; Rachel will refuse to surrender any egg she may have.
  CALL 42247              ; If Current Object is an egg then display
                          ; "[Character] WANTS TO KEEP THE [Object]" Window
                          ; (13) and return to Main Game Loop
  JP 42036                ; Remove Current Object from Current Character's
                          ; inventory and add it to Magic Knight's then return
                          ; to Main Game Loop

; Take an Object Routine Barker the Ent
;
; Barker will refuse to surrender any egg he may have.
  CALL 42247              ; If Current Object is an egg then display
                          ; "[Character] WANTS TO KEEP THE [Object]" Window
                          ; (13) and return to Main Game Loop
  JP 42036                ; Remove Current Object from Current Character's
                          ; inventory and add it to Magic Knight's then return
                          ; to Main Game Loop

; Take an Object Routine Organon the Guard
;
; Organon will refuse to surrender any egg he may have.
  CALL 42247              ; If Current Object is an egg then display
                          ; "[Character] WANTS TO KEEP THE [Object]" Window
                          ; (13) and return to Main Game Loop
  JP 42036                ; Remove Current Object from Current Character's
                          ; inventory and add it to Magic Knight's then return
                          ; to Main Game Loop

; Take an Object Routine Grunter the Bearwoolf
  JP 45723                ; End the game if Current Character is Off-White or
                          ; Grunter

; If Current Object is an Egg then Display "[Character] WANTS TO KEEP THE
; [Object]" Window (13) and Return to Main Game Loop
;
; Used by the routines at 42085, 42091, 42105, 42220, 42226, 42232 and 42238.
  LD A,(41779)            ; If index of Current Object...
  CP 36                   ; ...is less than 36 (i.e. is not an egg)...
  RET C                   ; ...then return
  POP AF                  ; Remove return address of calling routine from top
                          ; of Stack
  JP 64270                ; Display "[Character] WANTS TO KEEP THE [Object]"
                          ; Window (13), wait for Fire to be pressed then jump
                          ; to Main Game Loop

; Process Command to Give an Object
  CALL 45641              ; Display "YOU ARE NOT CARRYING ANYTHING" Window and
                          ; set Zero Flag if Magic Knight's inventory
                          ; (carrying) is empty
  JP Z,41742              ; If MK's inventory (carrying) is empty then set his
                          ; available action flags and jump to start of Main
                          ; Game Loop (41742)
  LD IX,24848             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,51920             ; Point HL at "[Current Command] WHICH OBJECT ?" text
  LD DE,51928             ; Point DE at "[Current Command] THE " text
  CALL 45809              ; Show list of objects in Magic Knight's inventory
                          ; (carrying) as a menu and load A with selected item
                          ; index
  LD HL,24848             ; Point HL at Magic Knight's current inventory
                          ; (carrying)
  CALL 45766              ; Print name of object in inventory slot A of
                          ; inventory data at HL in Command Summary Window
  LD DE,52105             ; Point DE at " TO " text...
  CALL 63349              ; ...and print in Command Summary Window at top of
                          ; screen
  LD HL,51400             ; Point HL at "[Current Command] AN OBJECT TO ?" text
  LD DE,0                 ; Load DE with zero (i.e. no Command Summary Text)
  CALL 45963              ; Display and process input for Character Selection
                          ; Menu (current room's characters only), setting
                          ; Current Character
  JP Z,41742              ; If there are no characters in the room then set his
                          ; available action flags and jump to start of Main
                          ; Game Loop (41742)
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object...
  CALL 45685              ; ...and if this is 4 (Teddy Bear) then display "THE
                          ; BEAR SAYS..." message and wait for Fire to be
                          ; pressed
  LD A,4                  ; Increase Current Character's happiness by 4...
  CALL 45434              ; ...
  LD A,(41937)            ; Point IX at current inventory of Current
                          ; Character...
  CALL 45450              ; ...
  LD A,(IX+4)             ; If last inventory slot of character is not zero...
  OR A                    ; ...(i.e. last inventory slot is occupied) then
                          ; reset Zero Flag
  LD HL,52108             ; Point HL at "[Current Character's short name]'S
                          ; HANDS ARE FULL" text
  JP NZ,64261             ; If Zero Flag is reset then display "[Character]'S
                          ; HANDS ARE FULL" Window (13), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD BC,1280              ; Load B with 5 (five inventory slots) and C with
                          ; zero
  LD A,(IX+0)             ; Load content of current inventory slot into A
  OR A                    ; If this inventory slot is empty...
  JR Z,42350              ; ...then skip ahead to 42350
  CALL 45351              ; Load A with weight of object in current slot...
  ADD A,C                 ; ...and add to C (running total weight)...
  LD C,A                  ; ...
  INC IX                  ; Advance to next inventory slot
  DJNZ 42335              ; Loop back to 42335 for next slot
  LD A,(41779)            ; Load A with index of Current Object
  CALL 45351              ; Load A with weight of object being given...
  ADD A,C                 ; ...and add this to total in C also...
  LD C,A                  ; ...
  LD A,(41937)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at character's current strength...
  CALL 45406              ; ...
  LD A,(HL)               ; Load strength into A...
  AND 127                 ; ...and reset Bit 7 (unused)
  CP C                    ; If character's strength is not less than total
                          ; weight of objects...
  JR NC,42378             ; ...then skip ahead to 42378
  LD HL,52126             ; Point HL at "[Current Character's short name] IS
                          ; NOT STRONG ENOUGH" text
  JP 64261                ; Display "[Character] IS NOT STRONG ENOUGH" Window
                          ; (13), wait for Fire to be pressed then jump to Main
                          ; Game Loop
  CALL 45364              ; Load A with Current Character's Happiness Level...
  CP 20                   ; ...and if this is less than 20...
  JP C,64275              ; ...then display "[Character] DOES NOT WANT THE
                          ; [Object]" Window (13), wait for Fire to be pressed
                          ; then jump to Main Game Loop
  LD A,(41937)            ; Load A with index of Current Character
  LD HL,42413             ; Load HL with start address of Table of Start
                          ; Addresses of Routines for Characters Having Objects
                          ; Given
  JP 64623                ; Load HL with address of Current Character's "Give
                          ; an Object" routine and jump to it

; Remove Current Object from Magic Knight's Inventory and Add it to a
; Character's then Return to Main Game Loop
;
; Used by the routines at 42441, 42479, 42482, 42485 and 42488. Input:  IX
; Address of first empty entry in a character's current inventory
  LD A,(41779)            ; Load Current Object into first empty entry in
                          ; character's current inventory...
  LD (IX+0),A             ; ...
  LD C,A                  ; Load C with index of Current Object
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,24848             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)...
  CALL 48341              ; Remove Current Object from Magic Knight's current
                          ; inventory (carrying) and tidy up remaining entries
  JP 41727                ; Show Magic Knight's current inventory and jump back
                          ; to Main Game Loop

; Table of Start Addresses of Routines for Characters Having Objects Given
  DEFW 42429              ; Off-White Knight (bug)
  DEFW 42479              ; Aramis le Peux
  DEFW 42441              ; Robin of Shylock
  DEFW 42479              ; Reggie the Rat
  DEFW 42482              ; Rachel of Amazonia
  DEFW 42485              ; Barker the Ent
  DEFW 42485              ; Organon the Guard
  DEFW 42488              ; Grunter the Bearwoolf (bug)

; Give an Object Routine Off-White Knight
;
; Off-White will refuse to take the Brass Ankh (bug).
  LD A,(41779)            ; If Current Object is 16 (Brass Ankh)...
  CP 16                   ; ...
  JP Z,64275              ; ...then display "[Character] DOES NOT WANT THE
                          ; [Object]" Window (13), wait for Fire to be pressed
                          ; then jump to Main Game Loop
  JP 39875                ; Jump to non-existent address (bug)

; Unused
  DEFB 165

; Give an Object Routine Robin of Shylock
  LD A,(41779)            ; If Current Object is not 23 (Silver Arrow)...
  CP 23                   ; ...
  JR NZ,42459             ; ...then skip ahead to 42459
  LD A,(24795)            ; Set Robin's Can Help Flag...
  OR 128                  ; ...
  LD (24795),A            ; ...
  JP 42395                ; Remove Current Object from Magic Knight's inventory
                          ; and add it to a character's then return to Main
                          ; Game Loop
  CP 36                   ; If Current Object is 36 (Golden Egg)...
  JR Z,42468              ; ...then skip ahead to 42468
  CP 39                   ; If Current Object is not 39 (Golden Egg)...
  JP NZ,42395             ; ...then remove Current Object from Magic Knight's
                          ; inventory and add it to a character's then return
                          ; to Main Game Loop
  LD A,(23439)            ; Set Robin Has Been Paid Flag...
  OR 1                    ; ...
  LD (23439),A            ; ...
  JP 42395                ; Remove Current Object from Magic Knight's inventory
                          ; and add it to a character's then return to Main
                          ; Game Loop

; Give an Object Routine Aramis le Peux and Reggie the Rat
  JP 42395                ; Remove Current Object from Magic Knight's inventory
                          ; and add it to a character's then return to Main
                          ; Game Loop

; Give an Object Routine Rachel of Amazonia
  JP 42395                ; Remove Current Object from Magic Knight's inventory
                          ; and add it to a character's then return to Main
                          ; Game Loop

; Give an Object Routine Barker the Ent and Organon the Guard
  JP 42395                ; Remove Current Object from Magic Knight's inventory
                          ; and add it to a character's then return to Main
                          ; Game Loop

; Give an Object Routine Grunter the Bearwoolf
  JP 42395                ; Remove Current Object from Magic Knight's inventory
                          ; and add it to a character's then return to Main
                          ; Game Loop

; Unused routine
;
; Give an object routine. Input:  This  routine is related to a bug
  JP 45723                ; End the game if Current Character is Off-White or
                          ; Grunter

; Display and Handle Main In-Game Menu (When Fire is Pressed)
;
; Used by the routine at 38205.
  CALL 47930              ; Play downward scale sound
  CALL 46183              ; Set Magic Knight's available action flags
  LD BC,2048              ; Set B = 8 (eight action flags) and C = 0 (count of
                          ; set flags)
  LD A,(23698)            ; Load A with Available In-Game Menu Command Flags
                          ; (part 1)
  RLCA                    ; Pop a bit into Carry Flag
  JR NC,42510             ; If Magic Knight action flag is not set then skip
                          ; ahead to 42510 to repeat loop for next flag...
  INC C                   ; ...else increase count of set flags
  DJNZ 42506              ; Loop back for next bit until all eight are done
  LD B,8                  ; Set B = 8 (another eight action flags)
  LD A,(23699)            ; Load A with Available In-Game Menu Command Flags
                          ; (part 2)
  RLCA                    ; Pop a bit into Carry Flag
  JR NC,42521             ; If Magic Knight action flag is not set then skip
                          ; ahead to 42521 to repeat loop for next flag...
  INC C                   ; ...else increase count of set flags
  DJNZ 42517              ; Loop back for next bit until all eight are done
  LD A,8                  ; Load A with 8 (as minimal command window has bottom
                          ; y-coordinate of 8)
  ADD A,C                 ; Increase A by number of extra commands available
  LD C,A                  ; Load value back into C
  LD A,(49036)            ; Load A with y-coordinate (characters) of top of
                          ; menu window
  ADD A,C                 ; Update y-coordinate of bottom of window according
                          ; to number of extra commands...
  LD (49037),A            ; ...
  LD A,0                  ; Display main in-game menu window (window number
                          ; zero)...
  CALL 47185              ; ...
  LD HL,51434             ; Print "COMMANDS AVAILABLE:-" followed by first five
                          ; commands (Pick up, drop, etc.) that are always
                          ; available...
  CALL 46902              ; ...
  LD HL,51486             ; Point HL at zero immediately preceding list of
                          ; conditional entry (Main in-Game Menu) texts
  LD A,(23698)            ; Load A with Available In-Game Menu Command Flags
                          ; (part 1)
  CALL 42616              ; Print currently available additional In-Game Menu
                          ; command options (part 1)
  LD A,(23699)            ; Load A with Available In-Game Menu Command Flags
                          ; (part 2)
  CALL 42616              ; Print currently available additional In-Game Menu
                          ; command options (part 2)
  CALL 47502              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  CP 5                    ; If index of selected item is less than 5 (i.e. is a
                          ; permanent, yellow entry)...
  JR C,42587              ; ...then skip ahead to 42587
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
  JR NC,42575             ; If current Action Flag is not set then loop back to
                          ; 42575...
  DJNZ 42575              ; ...otherwise decrease B then loop back to 42575
  LD A,C                  ; Load index of appropriate Action Flag into A
  ADD A,4                 ; Add 4, to restore original index value (i.e.
                          ; reverse of instruction at 42567)
; At this point, A holds either the index of the appropriate Action Flag plus
; four, or the index of the originally selected menu item if less than 5. In
; either case, A contains the index of the command to initiate. Code between
; 42587 and 42595 is not necessary; see trivia.
  LD HL,48535             ; Point HL at List of Command Indices
  LD B,A                  ; Load index of selected command into B, setting C to
                          ; zero...
  LD C,0                  ; ...
  LD A,(HL)               ; If current entry in List of Command Indices is the
                          ; same as the index of the selected command...
  CP B                    ; ...
  JR Z,42601              ; ...then skip ahead to 42601
  INC C                   ; Increase C (index of command index)
  INC HL                  ; Advance HL to next command index in list
  JR 42593                ; Loop back to 42593
  PUSH BC                 ; Store BC (B = selected command index, C = index of
                          ; selected command index)
  CALL 47897              ; Play upward scale sound
  POP BC                  ; Restore BC (B = selected command index, C = index
                          ; of selected command index)
  LD A,C                  ; Load index (of selected command index) into A...
  LD (23716),A            ; ...and set as Current Command
  LD HL,48553             ; Point HL at start of Table of Command Routine
                          ; Addresses
  JP 64623                ; Advance HL by A words, load HL with word at
                          ; location HL as address and jump to it

; Print Currently Available Additional In-Game Menu Command Options
;
; Used by the routine at 42494. Input:  A  Available In-Game Menu Command Flags
; (part 1 or part 2) HL  Points to 51486 if dealing with Flags part 1. Points
; to 51527 if dealing with Flags part 2.
  LD B,8                  ; Load B with 8 (as there are 8 flags)
  PUSH BC                 ; Store BC (B = remaining number of flags to process)
  RRCA                    ; Rotate least significant bit of A (i.e. current
                          ; flag) into Carry Flag
  PUSH AF                 ; Store AF (current flag in Carry and remaining flags
                          ; in A)
  CALL 63313              ; Advance HL to byte after first zero from address in
                          ; HL onwards
  POP AF                  ; Restore AF (current flag in Carry and remaining
                          ; flags in A)
  JR NC,42634             ; If current flag is reset then skip ahead to 42634
  PUSH HL                 ; Store HL (current position in Additional Menu Items
                          ; texts)
  PUSH AF                 ; Store AF (current flag in Carry and remaining flags
                          ; in A)
  CALL 46902              ; Print text at HL (current additional menu item)
  POP AF                  ; Restore AF (current flag in Carry and remaining
                          ; flags in A)
  POP HL                  ; Restore HL (current position in Additional Menu
                          ; Items texts)
  POP BC                  ; Restore BC (B = remaining number of flags to
                          ; process)
  DJNZ 42618              ; Decrease B and loop back to 42618 for next flag
  RET                     ; Return

; Process Command to Examine Yourself / A Character / An Object
  CALL 63399              ; Print or update Command Summary Window at top of
                          ; screen
  LD DE,52158             ; Point DE at "[Current Command] " text...
  CALL 63349              ; ...and print in Command Summary Window at top of
                          ; screen
  LD A,16                 ; Draw "EXAMINE WHAT?" Menu Window...
  CALL 47185              ; ...
  LD HL,52162             ; Point HL at "[Current Command] WHAT ?" menu text...
  CALL 46902              ; ...and print to screen
  CALL 47502              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  OR A                    ; If "OBJECT" selected...
  JP Z,42834              ; ...then skip ahead to 42834
  CP 1                    ; If "CHARACTER" selected...
  JP Z,42715              ; ...then skip ahead to 42715
; Examine Yourself
  LD DE,52521             ; Point DE at "YOURSELF " text...
  CALL 63349              ; ...and print in Command Summary Window at top of
                          ; screen
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,18                 ; Draw Window 18...
  CALL 47193              ; ...
  LD A,32                 ; Set Current Character index to 32...
  LD (41937),A            ; ...as index of "MAGIC KNIGHT" text is 32 relative
                          ; to start of characters' names at 58544
  LD HL,52311             ; Point HL at percentage completion text
  LD DE,52323             ; Point DE at time left text
  CALL 45522              ; Insert current time and score into "Time Left" and
                          ; "Percentage Completion" texts
  LD HL,24768             ; Point HL at start of Magic Knight's Current Stats
  LD A,37                 ; Set Graphic Index to 37...
  LD (42827),A            ; ...and store as operand to instruction at 42826
  LD A,(24846)            ; Load Magic Knight's Attribute value into...
  LD (49193),A            ; ...content attribute slot of Window 19 (EXAMINE
                          ; Portrait Frame)
  JP 42763                ; Skip ahead to 42763 (display window as in Examine
                          ; Character)
; Examine Character
  LD HL,51408             ; Point HL at "[Current Command] ?" text (end of
                          ; sub-menu title, after "WHO DO YOU WANT TO ")
  LD DE,0                 ; Load DE with zero (i.e. no Command Summary Text)
  CALL 45963              ; Display and process input for Character Selection
                          ; Menu (current room's characters only), setting
                          ; Current Character
  JP Z,41742              ; If there are no characters in the room then set
                          ; MK's available action flags and jump to start of
                          ; Main Game Loop (41742)
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,5                  ; Increase Current Character's happiness by 5...
  CALL 45434              ; ...
  LD A,18                 ; Draw Window 18...
  CALL 47193              ; ...
  LD A,(41937)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at start of character's stats...
  CALL 45406              ; ...
  PUSH HL                 ; Transfer address from HL...
  POP IX                  ; ...into IX
  LD A,(IX+5)             ; Load Character Graphic Index into A...
  LD (42827),A            ; ...and modify operand of instruction at 42826 to
                          ; match
  LD A,(IX+4)             ; Load character's Attribute value into...
  LD (49193),A            ; ...content attribute slot of Window 19 (EXAMINE
                          ; Portrait Frame)
  CALL 42938              ; Insert numeric stats (at HL) of a character into
                          ; "EXAMINE CHARACTER" window text
  PUSH HL                 ; Store HL (points to start of character's current
                          ; stats)
  LD HL,52180             ; Print Examine Character window text (i.e. "EXAMINE
                          ; [CHARACTER] ... STRENGTH XX..." text)...
  CALL 46902              ; ...
  POP IX                  ; Restore IX (points to start of character's current
                          ; stats)
  LD B,10                 ; Load B with 10 (index of "[Current Character's
                          ; short name] IS ASLEEP" text)
  BIT 7,(IX+6)            ; If character's Asleep Flag is set...
  JR NZ,42786             ; ...then skip ahead to 42786
  LD B,(IX+7)             ; Load B with index of character's Current Status
                          ; Text
  LD A,(41937)            ; If Current Character index is not 32 (Magic Knight,
                          ; i.e. EXAMINE YOURSELF)...
  CP 32                   ; ...
  JR NZ,42795             ; ...then skip ahead to 42795
  LD B,1                  ; Load B with 1 (index of Magic Knight's current
                          ; status text)
  RES 7,B                 ; Reset Bit 7 of status text index (see trivia)
  LD HL,52301             ; Point HL at start of characters' "current status"
                          ; texts
  CALL 63335              ; Advance HL to B-th entry in list of zero-terminated
                          ; strings starting at HL...
  CALL 46902              ; ...and print
  LD A,(42827)            ; If Character Graphic Index is zero...
  OR A                    ; ...
  JR Z,42831              ; ...then skip ahead to 42831
  LD A,19                 ; Draw Window 19 (EXAMINE Portrait Frame)...
  CALL 47193              ; ...
  LD BC,(23408)           ; Load BC with top-left coordinate of current window
  LD A,71                 ; Load ATTR T system variable with 71 (white INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
; The operand of the instruction at 42826 represents the Character's Graphic
; Index. This is modified by the instructions at 42703 and 42754.
  LD A,0                  ; Load A with character's Graphic Index...
  CALL 63504              ; ...and draw this graphic at character coordinates
                          ; (C, B) with width = 2 characters and height = 4
                          ; characters
  JP 41739                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop
; Examine Object
  CALL 45641              ; Display "YOU ARE NOT CARRYING ANYTHING" Window and
                          ; set Zero Flag if Magic Knight's inventory
                          ; (carrying) is empty
  JP Z,41742              ; If MK's inventory (carrying) is empty then set his
                          ; available action flags and jump to start of Main
                          ; Game Loop (41742)
  LD A,15                 ; Set bottom edge of Window 20 to 15...
  LD (49197),A            ; ...
  LD IX,24848             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,51920             ; Point HL at "[Current Command] WHICH OBJECT ?" text
  LD DE,0                 ; Load DE with zero (i.e. no Command Summary Text)
  CALL 45809              ; Show list of objects in Magic Knight's inventory
                          ; (carrying) as a menu and load A with selected item
                          ; index
  LD HL,24848             ; Point HL at start of Characters' Current
                          ; Inventories Table
  CALL 45766              ; Print name of object in inventory slot A of
                          ; inventory data at HL in Command Summary Window
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object...
  CALL 45685              ; ...and if this is 4 (Teddy Bear) then display "THE
                          ; BEAR SAYS..." message and wait for Fire to be
                          ; pressed
  LD E,0                  ; Point HL to the start of the Current Object's
                          ; record in Object Properties Table...
  CALL 45390              ; ...
  PUSH HL                 ; Store HL (pointer to Current Object's properties)
  CALL 43000              ; Insert numeric / text properties of the object into
                          ; "Examine Object" Window Text
  LD A,20                 ; Draw Window 20 ("EXAMINE OBJECT" Window)...
  CALL 47193              ; ...
  LD HL,52251             ; Point HL at "      [Current Command]" text
  CALL 46902              ; ...and print to screen
  LD A,(41779)            ; Load B with index of Current Object...
  LD B,A                  ; ...
  CALL 63332              ; ...and point HL at its entry in Table of Object
                          ; Names
  CALL 46902              ; Print the Current Object's name
  LD HL,52256             ; Point HL at Object Properties text...
  CALL 46902              ; ...and print to screen
  POP IX                  ; Restore IX (pointer to Current Object's properties)
  LD A,(IX+6)             ; Set content attribute of Window 21 (frame around
                          ; object in "EXAMINE OBJECT" Window)...
  LD (49209),A            ; ...to match attribute of object
  LD A,21                 ; Draw Window 21...
  CALL 47193              ; ...
  LD BC,(23408)           ; Load BC with top-left coordinate of current window
  INC B                   ; Increase y-coordinate by 1 (as object positions are
                          ; based upon their bottom-left corner)
  LD A,(41779)            ; Load A with index of Current Object
  CALL 48191              ; Set Terrain Interaction Data for character blocks
                          ; spanned by object and draw the object
  JP 41739                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop

; Insert Numeric Stats (at HL) of a Character into "Examine Character" Window
; Text
;
; Used by the routine at 42638. Input:  HL  Address of start of a character's
; current stats
  PUSH HL                 ; Store HL (address of start of character's stats)
  LD A,(HL)               ; Load character's Strength into A...
  AND 127                 ; ...and remove bit 7 (unused)
  PUSH HL                 ; Store HL (Strength position in character's stats)
  LD HL,52187             ; Point HL at start of " 99 " segment for Strength in
                          ; Character's Stats Text at 52180
  CALL 46837              ; Splice numeric Strength data as a string into
                          ; Character's Stats Text
  POP HL                  ; Restore HL (Strength position in character's stats)
  INC HL                  ; Advance HL to Happiness position
  LD A,(HL)               ; Load character's Happiness into A...
  AND 127                 ; ...and remove bit 7 (unused)
  PUSH HL                 ; Store HL (Happiness position in character's stats)
  LD HL,52203             ; Point HL at start of " 99 " segment for Happiness
                          ; in Character's Stats Text at 52180
  CALL 46837              ; Splice numeric Happiness data as a string into
                          ; Character's Stats Text
  POP HL                  ; Restore HL (Happiness position in character's
                          ; stats)
  INC HL                  ; Advance HL to Stamina position
  LD A,(HL)               ; Load character's Stamina into A...
  AND 127                 ; ...and remove bit 7 (unused)
  PUSH HL                 ; Store HL (Stamina position in character's stats)
  LD HL,52217             ; Point HL at start of " 99 " segment for Stamina in
                          ; Character's Stats Text at 52180
  CALL 46837              ; Splice numeric Stamina data as a string into
                          ; Character's Stats Text
  POP HL                  ; Restore HL (Stamina position in character's stats)
  INC HL                  ; Advance HL to Magic Level position
  LD A,(HL)               ; Load character's Magic Level into A...
  AND 127                 ; ...and remove bit 7 (Can Help Flag)
  PUSH HL                 ; Store HL (Magic Level position in character's
                          ; stats)
  LD HL,52229             ; Point HL at start of " 99 " segment for Magic Level
                          ; in Character's Stats Text at 52180
  CALL 46837              ; Splice numeric Magic Level data as a string into
                          ; Character's Stats Text
  POP HL                  ; Restore HL (Magic Level position in character's
                          ; stats)
  INC HL                  ; Advance HL to Food Level position...
  INC HL                  ; ...
  INC HL                  ; ...
  LD A,(HL)               ; Load character's Food Level into A...
  AND 127                 ; ...and remove bit 7 (Asleep Flag)
  LD HL,52245             ; Point HL at start of " 99 " segment for Magic Level
                          ; in Character's Stats Text at 52180
  CALL 46837              ; Splice numeric Magic Level data as a string into
                          ; Character's Stats Text
  POP HL                  ; Restore HL (address of start of character's stats)
  RET                     ; Return

; Insert Numeric / Text Stats of an Object into "Examine Object" Window Text
;
; Used by the routine at 42638. Input:  HL  Address of start of an object's
; properties
  LD A,(HL)               ; Load A with weight of the object...
  AND 15                  ; ...stripping out flag values
  PUSH HL                 ; Store HL (address of start of object's properties)
  LD HL,52267             ; Point HL at numeric part of "WEIGHT" string...
  CALL 46837              ; ...and overwrite with weight value
  POP HL                  ; Restore HL (address of start of object's
                          ; properties)
  LD A,147                ; Load A with (Common Word Index for text "YES")
  BIT 6,(HL)              ; If Can Blow Flag is set...
  JR NZ,43018             ; ...then skip ahead to 43018
  INC A                   ; Increase A to 148 (Common Word Index for text "NO")
  LD (52279),A            ; Insert Common Word Index in A into the "BLOW" field
                          ; of the string
  LD A,147                ; Load A with (Common Word Index for text "YES")
  BIT 5,(HL)              ; If Can Read Flag is set...
  JR NZ,43028             ; ...then skip ahead to 43028
  INC A                   ; Increase A to 148 (Common Word Index for text "NO")
  LD (52288),A            ; Insert Common Word Index in A into the "READ" field
                          ; of the string
  INC HL                  ; Advance HL to second byte in record
  LD A,147                ; Load A with (Common Word Index for text "YES")
  BIT 3,(HL)              ; If Can Be Worn Flag is set...
  JR NZ,43039             ; ...then skip ahead to 43039
  INC A                   ; Increase A to 148 (Common Word Index for text "NO")
  LD (52297),A            ; Insert Common Word Index in A into the "WEAR" field
                          ; of the string
  RET                     ; Return

; Process Command to Command a Character
  LD HL,51408             ; Point HL at "[Current Command] ?" text (end of
                          ; sub-menu title, after "WHO DO YOU WANT TO ")
  LD DE,52523             ; Point DE (Command Summary Text Pointer) at "COMMAND
                          ; " text
  CALL 45963              ; Display and process input for Character Selection
                          ; Menu (current room's characters only), setting
                          ; Current Character
  JP Z,41742              ; If there are no characters in the room then set
                          ; MK's available action flags and jump to start of
                          ; Main Game Loop (41742)
  LD DE,52105             ; Point DE at " TO " text...
  CALL 63349              ; ...and print in Command Summary Window at top of
                          ; screen
  LD A,23                 ; Draw  "WHICH COMMAND DO YOU WANT TO USE?" Menu
                          ; Window...
  CALL 47185              ; ...
  LD HL,52526             ; Print "WHICH COMMAND DO YOU WANT TO USE" Menu
                          ; text...
  CALL 46902              ; ...
  CALL 47502              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  LD (43098),A            ; Load index of selected command into operand of
                          ; instruction at 43097...
  LD B,A                  ; ...and into B
  CALL 63327              ; Point HL at start of B-th entry in list of "COMMAND
                          ; A CHARACTER" commands at 52590
  EX DE,HL                ; Swap HL and DE (Command Summary Text Pointer, now
                          ; at selected command string)
  CALL 63349              ; Print text at DE in Command Summary Window at top
                          ; of screen
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  CALL 45723              ; End the game if Current Character is Off-White or
                          ; Grunter
  LD A,2                  ; Increase Current Character's happiness by 2 (see
                          ; trivia)...
  CALL 45434              ; ...
; The operand of the instruction at 43097 is the index of the currently
; selected command from the "COMMAND A CHARACTER TO" menu. This is modified by
; the instruction at 43075.
  LD A,0                  ; Load A with index of selected "COMMAND A CHARACTER
                          ; TO" command
  LD HL,43105             ; Point HL at start of Table of "Command a Character"
                          ; Routine Addresses
  JP 64623                ; Advance HL by A words, load HL with word at
                          ; location HL as address and jump to it

; Table of Routine Addresses for Magic Knight Commanding Characters
  DEFW 43117              ; Send Current Character to Sleep if Possible
  DEFW 43158              ; Wake Current Character Up if Possible
  DEFW 43199              ; Make Current Character Go Away if Possible
  DEFW 43250              ; Have a Character Help if Possible
  DEFW 43318              ; Make Current Character Eat & Drink if Possible
  DEFW 43428              ; Make Current Character Be Happy if Possible

; Send Current Character to Sleep if Possible
  CALL 45411              ; Point IX at Current Character's current stats
  BIT 7,(IX+6)            ; If character's Asleep Flag is set then reset Zero
                          ; Flag
  LD HL,52655             ; Point HL at "[Current Character's short name] IS
                          ; ALREADY ASLEEP" text
  JP NZ,64313             ; If character is asleep then display "[Character] IS
                          ; ALREADY ASLEEP" window (29), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD A,(IX+2)             ; If character's stamina is 70 or more...
  AND 127                 ; ...
  CP 70                   ; ...then reset Carry Flag, otherwise set it
  LD HL,52668             ; Point HL at "[Current Character's short name] IS
                          ; TOO WAKEFUL TO SLEEP" text
  JP NC,64313             ; If Carry Flag is reset then display "[Character] IS
                          ; TOO WAKEFUL TO SLEEP" window (29), wait for Fire to
                          ; be pressed then jump to Main Game Loop
  LD B,30                 ; If character's happiness is less than 30 then Show
                          ; "[Character] DOES NOT WANT TO BE COMMANDED..." and
                          ; Jump to Main Game Loop...
  CALL 45423              ; ...
  SET 7,(IX+6)            ; Set character's Asleep Flag
  LD HL,52691             ; Point HL at "[Current Character's short name] HAS
                          ; GONE TO SLEEP" text
  JP 64313                ; Display "[Character] HAS GONE TO SLEEP" Window
                          ; (29), wait for Fire to be pressed then jump to Main
                          ; Game Loop

; Wake Current Character Up if Possible
  CALL 45411              ; Point IX at Current Character's current stats
  BIT 7,(IX+6)            ; If character's Asleep Flag is set then reset Zero
                          ; Flag
  LD HL,52707             ; Point HL at "[Current Character's short name] IS
                          ; ALREADY AWAKE" text
  JP Z,64313              ; If character is awake then display "[Character] IS
                          ; ALREADY AWAKE" Window (29), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD A,(IX+2)             ; If character's stamina is less than 30...
  AND 127                 ; ...
  CP 30                   ; ...then set Carry Flag, otherwise reset it
  LD HL,52719             ; Point HL at "[Current Character's short name] IS
                          ; TOO TIRED TO WAKE UP" text
  JP C,64313              ; If Carry Flag is set then display "[Character] IS
                          ; TOO TIRED TO WAKE UP" window (29), wait for Fire to
                          ; be pressed then jump to Main Game Loop
  LD B,30                 ; If character's happiness is less than 30 then Show
                          ; "[Character] DOES NOT WANT TO BE COMMANDED..." and
                          ; Jump to Main Game Loop...
  CALL 45423              ; ...
  RES 7,(IX+6)            ; Reset character's Asleep Flag
  LD HL,52731             ; Point HL at "[Current Character's short name] HAS
                          ; WOKEN UP" text
  JP 64313                ; Display "[Character] HAS WOKEN UP" Window (29),
                          ; wait for Fire to be pressed then jump to Main Game
                          ; Loop

; Make Current Character Go Away if Possible
  LD A,(41937)            ; If index of Current Character is 6 (Organon the
                          ; Guard)...
  CP 6                    ; ...then set Zero Flag, otherwise reset
  LD HL,56124             ; Point HL at "[Current Character's short name] SAYS
                          ; 'I THINK YOU ARE THE ONE..." text
  JP Z,64293              ; If Current Character is Organon then display "I
                          ; THINK YOU ARE THE ONE..." Window (15), wait for
                          ; Fire to be pressed then jump to Main Game Loop
  LD A,253                ; Decrease Current Character's happiness by 3...
  CALL 45434              ; ...
  CALL 45552              ; Display "[Character] IS ASLEEP" Window and jump to
                          ; Main Game Loop if Current Character is asleep, else
                          ; return here and continue
  CALL 45411              ; Point IX at Current Character's current stats
  LD A,(IX+2)             ; If character's stamina is less than 20...
  AND 127                 ; ...
  CP 20                   ; ...then set Carry Flag, otherwise reset it
  LD HL,52744             ; Point HL at "[Current Character's short name] IS
                          ; TOO TIRED TO GO AWAY" text
  JP C,64313              ; If Carry Flag is set then display "[Character] IS
                          ; TOO TIRED TO GO AWAY" window (29), wait for Fire to
                          ; be pressed then jump to Main Game Loop
  LD B,20                 ; If character's happiness is less than 20 then Show
                          ; "[Character] DOES NOT WANT TO BE COMMANDED..." and
                          ; Jump to Main Game Loop...
  CALL 45423              ; ...
  CALL 45601              ; Point HL at current position data for Current
                          ; Character
  LD (HL),99              ; Change current room number for Current Character to
                          ; 99
  LD HL,52756             ; Point HL at "[Current Character's short name] HAS
                          ; GONE AWAY" text
  JP 64313                ; Display "[Character] HAS GONE AWAY" Window (29),
                          ; wait for Fire to be pressed then jump to Main Game
                          ; Loop

; Have a Character Help if Possible
  CALL 45552              ; Display "[Character] IS ASLEEP" Window and jump to
                          ; Main Game Loop if Current Character is asleep, else
                          ; return here and continue
  LD A,32                 ; Set last character in "[Current Character's short
                          ; name] CANNOT HELP YOU  " text at 52770...
  LD (52779),A            ; ...to 32 (SPACE) (see trivia)
  LD A,(41937)            ; If index of Current Character is 7 (Grunter the
                          ; Bearwoolf)...
  CP 7                    ; ...
  JR Z,43293              ; ...then skip ahead to 43293
  CALL 45411              ; Point IX at Current Character's current stats
  BIT 7,(IX+3)            ; If character's Can Help Flag is reset...
  JP Z,64285              ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for Fire to be pressed then jump
                          ; to Main Game Loop
  LD A,(IX+2)             ; If character's stamina is less than 10...
  AND 127                 ; ...
  CP 10                   ; ...the set Carry Flag, otherwise reset
  LD HL,52781             ; Point HL at "[Current Character's short name] IS
                          ; TOO TIRED TO HELP YOU " text
  JP C,64313              ; ...then display "[Character] IS TOO TIRED TO HELP
                          ; YOU" Window (29), wait for Fire to be pressed then
                          ; jump to Main Game Loop
  LD B,10                 ; If character's happiness is less than 10 then Show
                          ; "[Character] DOES NOT WANT TO BE COMMANDED..." and
                          ; Jump to Main Game Loop...
  CALL 45423              ; ...
  LD A,(41937)            ; Load A with index of Current Character
  LD HL,43302             ; Point HL at start of Table of Addressed of
                          ; Characters' Help Routines
  JP 64623                ; Advance HL by A words, load HL with word at
                          ; location HL as address and jump to it

; Table of Start Addresses of Routines for Characters Being Commanded to Help
  DEFW 45224              ; Off-White Knight
  DEFW 45227              ; Aramis le Peux
  DEFW 45256              ; Robin of Shylock
  DEFW 45333              ; Reggie the Rat
  DEFW 45336              ; Rachel of Amazonia
  DEFW 45342              ; Barker the Ent
  DEFW 45345              ; Organon the Guard
  DEFW 45348              ; Grunter the Bearwoolf

; Make Current Character Eat & Drink if Possible
  CALL 45552              ; Display "[Character] IS ASLEEP" Window and jump to
                          ; Main Game Loop if Current Character is asleep, else
                          ; return here and continue
  LD A,(41937)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at character's current strength...
  CALL 45406              ; ...
  PUSH HL                 ; Transfer address from HL...
  POP IX                  ; ...into IX
  LD A,(IX+6)             ; Load A with character's food level stripping out
                          ; Asleep Flag...
  AND 127                 ; ...and set Zero Flag if food level is zero
  LD HL,52788             ; Point HL at "[Current Character's short name] HAS
                          ; NO FOOD LEFT" text
  JP Z,64313              ; If Zero Flag is set then display "[Character] HAS
                          ; NO FOOD LEFT" window (29), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD A,(IX+2)             ; If character's stamina is less than 20...
  CP 20                   ; ...then set Carry Flag
  LD HL,52804             ; Point HL at "[Current Character's short name] IS
                          ; TOO TIRED TO EAT OR DRINK" text
  JP C,64313              ; If Carry Flag is set then display "[Character] IS
                          ; TOO TIRED TO EAT OR DRINK" window (29), wait for
                          ; Fire to be pressed then jump to Main Game Loop
  LD A,(IX+1)             ; If character's happiness is less than 30...
  CP 30                   ; ...
  JP C,64280              ; ...then display "[Character] DOES NOT WANT TO BE
                          ; COMMANDED BY YOU" Window (29), wait for Fire to be
                          ; pressed then Jump to Main Game Loop
  LD A,(IX+6)             ; Load A with character's Asleep Flag...
  AND 128                 ; ...
  LD (43407),A            ; ...and store in operand of instruction at 43406
  RES 7,(IX+6)            ; Reset character's Asleep Flag
  LD A,(IX+0)             ; Load A with character's unused flag...
  AND 128                 ; ...
  LD (43415),A            ; ...and store in operand of instruction at 43414
  RES 7,(IX+0)            ; Reset character's unused flag
  LD A,(IX+0)             ; If character's strength is 100...
  CP 100                  ; ...
  JP Z,43406              ; ...then skip ahead to 43406
  DEC (IX+6)              ; Decrease character's food level by one
  INC (IX+0)              ; Increase character's strength by one
  LD A,(IX+6)             ; If character's food level is not zero...
  OR A                    ; ...
  JR NZ,43386             ; ...then loop back to 43386
; The operand of the instruction at 43406 represents the character's Asleep
; Flag (128 for asleep or 0 for awake). This is modified by the instruction at
; 43367.
  LD A,0                  ; Load A with Asleep Flag value...
  OR (IX+6)               ; ...merge with food level...
  LD (IX+6),A             ; ...and store
; The operand of the instruction at 43414 represents the character's unused
; flag (bit 7 of strength). This is modified by the instruction at 43379.
  LD A,0                  ; Load A with unused flag value...
  OR (IX+0)               ; ...merge with strength...
  LD (IX+0),A             ; ...and store
  LD HL,52817             ; Point HL at "[Current Character's short name] HAS
                          ; TAKEN REFRESHMENT" text
  JP 64313                ; Display "[Character] HAS TAKEN REFRESHMENT" window
                          ; (29), wait for Fire to be pressed then jump to Main
                          ; Game Loop

; Make Current Character Be Happy if Possible
  CALL 45552              ; Display "[Character] IS ASLEEP" Window and jump to
                          ; Main Game Loop if Current Character is asleep, else
                          ; return here and continue
  LD A,(41937)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at start of character's current stats...
  CALL 45406              ; ...
  PUSH HL                 ; Transfer address from HL...
  POP IX                  ; ...into IX
  LD A,(IX+2)             ; If character's stamina is less than 30...
  CP 30                   ; ...then set Carry Flag
  LD HL,52836             ; Point HL at "[Current Character's short name] IS
                          ; TOO TIRED TO BE HAPPY" text
  JP C,64313              ; If Carry Flag is set then display "[Character] IS
                          ; TOO TIRED TO BE HAPPY" window (29), wait for Fire
                          ; to be pressed then jump to Main Game Loop
  LD A,(IX+1)             ; If character's happiness is less than 5...
  CP 5                    ; ...
  JP C,64280              ; ...then display "[Character] DOES NOT WANT TO BE
                          ; COMMANDED BY YOU" Window (29), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD A,(41937)            ; Load DE with index of Current Character...
  LD E,A                  ; ...
  LD D,0                  ; ...
  LD HL,43486             ; Load HL with start address of Table of Characters'
                          ; Default Happiness Levels...
  ADD HL,DE               ; ...and add DE as offset
  LD A,(IX+1)             ; Load A with character's current happiness...
  AND 128                 ; ...and reset all but Bit 7 (unused)
  OR (HL)                 ; Add in character's default happiness...
  LD (IX+1),A             ; ...and set as character's current happiness
  LD HL,52845             ; Point HL at "[Current Character's short name] WILL
                          ; TRY TO BE HAPPY" text
  JP 64313                ; Display "[Character] WILL TRY TO BE HAPPY" window
                          ; (29), wait for Fire to be pressed then jump to Main
                          ; Game Loop

; Table of Characters' Default Happiness Levels
;
; (See trivia)
  DEFB 100                ; Off-White Knight
  DEFB 70                 ; Aramis le Peux
  DEFB 80                 ; Robin of Shylock
  DEFB 40                 ; Reggie the Rat
  DEFB 50                 ; Rachel of Amazonia
  DEFB 98                 ; Barker the Ent
  DEFB 90                 ; Organon the Guard
  DEFB 0                  ; Grunter the Bearwoolf

; Process Command to Read an Object
  LD IX,24848             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,51920             ; Point HL at "[Current Command] WHICH OBJECT ?" text
  LD DE,51928             ; Point DE at "[Current Command] THE " text
  CALL 45809              ; Show list of objects in Magic Knight's inventory
                          ; (carrying) as a menu and load A with selected item
                          ; index
  LD HL,24848             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  CALL 45766              ; Print name of object in inventory slot A of
                          ; inventory data at HL in Command Summary Window
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object...
  CALL 45685              ; ...and if this is 4 (Teddy Bear) then display "THE
                          ; BEAR SAYS..." message and wait for Fire to be
                          ; pressed
  CP 24                   ; If Current Object is the Instruction Book (24)...
  JP Z,43624              ; ...then skip ahead to 43624
  CP 21                   ; If Current Object is the Gadget X (21)...
  JP Z,43630              ; ...then skip ahead to 43630
  LD A,2                  ; If Magic Knight is not carrying the Crystal Ball
                          ; (2)...
  CALL 45510              ; ...
  JR NZ,43592             ; ...then skip ahead to 43592
  LD A,(41779)            ; Load A with index of Current Object...
  LD B,21                 ; Load B with 21 (index of read-text for Wand of
                          ; Command with Crystal Ball)
  CP 3                    ; If Current Object is the Wand of Command (3)...
  JR Z,43617              ; ...then skip ahead to 43617 (display text with
                          ; index B)
  LD B,23                 ; Load B with 23 (index of read-text for Magic
                          ; Talisman with Crystal Ball)
  CP 6                    ; If Current Object is the Magic Talisman (6)...
  JR Z,43617              ; ...then skip ahead to 43617 (display text with
                          ; index B)
  LD B,24                 ; Load B with 24 (index of read-text for Glow Shield
                          ; with Crystal Ball)
  CP 12                   ; If Current Object is the Glow Shield (12)...
  JR Z,43617              ; ...then skip ahead to 43617 (display text with
                          ; index B)
  LD B,25                 ; Load B with 25 (index of read-text for Boomerang
                          ; with Crystal Ball)
  CP 14                   ; If Current Object is the Boomerang (14)...
  JR Z,43617              ; ...then skip ahead to 43617 (display text with
                          ; index B)
  LD B,3                  ; Load B with 3 (index of read-text for unreadable
                          ; magic language) (see trivia)
  CP 15                   ; If Current Object is the Sword (15)...
  JR Z,43617              ; ...then skip ahead to 43617 (display text with
                          ; index B)
  LD B,27                 ; Load B with 27 (index of read-text for Brass Ankh
                          ; with Crystal Ball)
  CP 16                   ; If Current Object is the Brass Ankh (16)...
  JR Z,43617              ; ...then skip ahead to 43617 (display text with
                          ; index B)
  LD B,28                 ; Load B with 28 (index of read-text for Elf-Horn
                          ; with Crystal Ball)
  CP 22                   ; If Current Object is the Elf-Horn (22)...
  JR Z,43617              ; ...then skip ahead to 43617 (display text with
                          ; index B)
  LD B,29                 ; Load B with 29 (index of read-text for Silver Arrow
                          ; with Crystal Ball)
  CP 23                   ; If Current Object is the Silver Arrow (23)...
  JR Z,43617              ; ...then skip ahead to 43617 (display text with
                          ; index B)
  LD A,(41779)            ; Load A with index of Current Object...
  LD E,0                  ; Point HL at start of record for object with index A
                          ; in Object Properties Table...
  CALL 45390              ; ...
  BIT 5,(HL)              ; If Can Read Flag is set...
  JR NZ,43610             ; ...then skip ahead to 43610
  LD HL,52859             ; Point HL at "THERE IS NO WRITING FOR ME TO [Current
                          ; Command]" text
  JP 64297                ; Display "THERE IS NO WRITING FOR ME TO [Current
                          ; Command]" Window (12), wait for Fire to be pressed
                          ; then jump to Main Game Loop
  INC HL                  ; Advance HL to read-text index for object...
  INC HL                  ; ...
  INC HL                  ; ...
  LD A,(HL)               ; ...and load into A
  AND 31                  ; Clear bits 5, 6 and 7...
  LD B,A                  ; ...and load index into B
; At this point, B holds the index of the read-text to print
  CALL 63322              ; Point HL at start of B-th entry in List of
                          ; Read-Texts of Readable Objects
  CALL 64317              ; Display Window 02 with object's read-text, wait for
                          ; Fire to be pressed then jump to Main Game Loop...

; Data block at 43623
  DEFB 2                  ; ...

; Routine at 43624
;
; Used by the routine at 43494.
  CALL 37951              ; Display Instructions windows
  JP 41742                ; Set Magic Knight's available action flags and jump
                          ; to start of Main Game Loop
; This entry point is used by the routine at 43494.
  CALL 37764              ; Display and handle Gadget X Menu
  JP 41742                ; Set Magic Knight's available action flags and jump
                          ; to start of Main Game Loop

; Process Command to Throw an Object
  LD IX,24848             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,51920             ; Point HL at "[Current Command] WHICH OBJECT ?" text
  LD DE,51928             ; Point DE at "[Current Command] THE " text
  CALL 45809              ; Show list of objects in Magic Knight's inventory
                          ; (carrying) as a menu and load A with selected item
                          ; index
  LD HL,24848             ; Point HL at Magic Knight's current inventory
                          ; (carrying)
  CALL 45766              ; Print name of object in inventory slot A of
                          ; inventory data at HL in Command Summary Window
  LD DE,55959             ; Point DE at " AT " text...
  CALL 63349              ; ...and print in Command Summary Window at top of
                          ; screen
  LD HL,51418             ; Point HL at "THROW AN OBJECT AT ?" text
  LD DE,0                 ; Load DE with zero (i.e. no Command Summary Text)
  CALL 45963              ; Display and process input for Character Selection
                          ; Menu (current room's characters only), setting
                          ; Current Character
  JP Z,41742              ; If there are no characters in the room then set his
                          ; available action flags and jump to start of Main
                          ; Game Loop (41742)
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object...
  CALL 45685              ; ...and if this is 4 (Teddy Bear) then display "THE
                          ; BEAR SAYS..." message and wait for Fire to be
                          ; pressed
  LD HL,51933             ; Point HL at "THE [name of Current Object] BLEW
                          ; UP..." text
  CP 5                    ; If Current Object is the Stick of Dynamite (5)...
  JP Z,64582              ; ...then jump to "Game over" window routine and
                          ; return to Control Selection Menu
  CP 14                   ; If Current Object is the Boomerang (14)...
  JP Z,43868              ; ...then skip ahead to 43868 (Game Over)
  CP 25                   ; If Current Object is not the Magic Missile (25)...
  JR NZ,43715             ; ...then skip ahead to 43715
  LD A,(41937)            ; If Current Character is not Off-White Knight (0)...
  OR A                    ; ...
  JR NZ,43712             ; ...then skip ahead to 43712
  LD A,255                ; Set Off-White Knight Sent To Sleep Flag to 255...
  LD (23403),A            ; ...
  LD A,(41779)            ; Load A with index of Current Object...
  LD E,0                  ; Point HL to the start of the Current Object's
                          ; record in Object Properties Table...
  CALL 45390              ; ...
  PUSH HL                 ; Copy address into IX...
  POP IX                  ; ...
  LD A,(IX+0)             ; Load A with Current Object's weight...
  AND 15                  ; ...
  CP 12                   ; ...and if this is 12 or greater...
  JP NC,43856             ; ...then skip ahead to 43856 (Game Over)
  BIT 6,(IX+1)            ; If Current Object's Is Lethal if Thrown Flag is
                          ; set...
  JP NZ,43862             ; ...then skip ahead to 43862
  LD A,(41779)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,24848             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  CALL 48341              ; Remove object C from Magic Knight's current
                          ; inventory (carrying)
  LD A,(41779)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  CP 20                   ; If Current Object is the Mirror (20)...
  CALL Z,41915            ; ...then load C with 7 (index of Broken Glass)
  CP 17                   ; If Current Object is Bottle of Liquid (17)...
  CALL Z,41918            ; ...then load C with 8 (index of Broken Glass)
  CP 18                   ; If Current Object is Bottle of Liquid (18)...
  CALL Z,41921            ; ...then load C with 9 (index of Broken Glass)
  CP 28                   ; If Current Object is Empty Bottle (28)...
  CALL Z,41918            ; ...then load C with 8 (index of Broken Glass)
  CP 29                   ; If Current Object is Empty Bottle (29)...
  CALL Z,41921            ; ...then load C with 9 (index of Broken Glass)
  LD A,C                  ; Load BC with three times index of Current Object...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD B,0                  ; ...
  LD HL,24922             ; Point HL at start of Objects' Current Positions
                          ; Table at 24922
  ADD HL,BC               ; Add three times Current Object's index as offset to
                          ; point HL at position data of current object
  LD A,(23702)            ; Set object's room to be Magic Knight's current
                          ; room...
  LD (HL),A               ; ...
  INC HL                  ; Advance HL to object's x-coordinate
  PUSH HL                 ; Store HL (pointer to x-coordinate)
  LD A,(41937)            ; Load BC with three times index of character who was
                          ; target of throw...
  LD C,A                  ; ...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD B,0                  ; ...
  LD C,A                  ; ...
  LD HL,24899             ; Point HL at x-coordinate of first entry in
                          ; characters' current positions table
  ADD HL,BC               ; Add BC (three times character index) as offset
  EX DE,HL                ; Swap DE (now pointer to Current Character's
                          ; x-coordinate) and HL (now undefined)
  POP HL                  ; Restore HL (pointer to object's x-coordinate)
  LD A,(DE)               ; Copy character's x-coordinate...
  LD (HL),A               ; ...into object's x-coordinate
  INC DE                  ; Advance to character's y-coordinate
  INC HL                  ; Advance to object's y-coordinate
  LD A,(DE)               ; Copy character's y-coordinate plus three...
  ADD A,3                 ; ...
  LD (HL),A               ; ...into object's y-coordinate
  CALL 46183              ; Set Magic Knight's available action flags
  LD A,(41779)            ; Load A with index of Current Object
  CP 25                   ; If Current Object is the Magic Missile (25)...
  JR Z,43840              ; ...then skip ahead to 43840
  CP 20                   ; If Current Object is not the Mirror (20)...
  JR NZ,43850             ; ...then skip ahead to 43850
  LD HL,55986             ; Point HL at "THE [object] LANDED ON THE FLOOR BY
                          ; [character] AND SMASHED..." text (see trivia)
  JP 64293                ; Display Smashed Object Window (15), wait for Fire
                          ; to be pressed then jump to Main Game Loop
; Magic Missile thrown
  LD A,(41937)            ; Load A with index of Current Character
  LD E,6                  ; Point HL at character's Flags...
  CALL 45406              ; ...
  SET 7,(HL)              ; ...and set Asleep Flag
  LD HL,55964             ; Point HL at "THE [object] LANDED ON THE FLOOR BY
                          ; [character]" text
  JP 64293                ; Display "THE [object] LANDED ON THE FLOOR BY
                          ; [character]" Window (15), wait for Fire to be
                          ; pressed then jump to Main Game Loop
; Weight of 12 or more
  LD HL,50845             ; Point HL at "YOU KILLED YOURSELF TRYING TO
                          ; THROW..." text
  JP 64582                ; Display cyan "Game Over" Window and return to
                          ; Control Selection Menu
; Lethal if thrown
  LD HL,50864             ; Point HL at "YOU THREW THE [Object] AND KILLED
                          ; [Character]" text
  JP 64582                ; Display cyan "Game Over" Window and return to
                          ; Control Selection Menu
; Boomerang
  LD HL,56035             ; Point HL at thrown Boomerang Game Over text
  JP 64582                ; Display cyan "Game Over" Window and return to
                          ; Control Selection Menu

; Process Command to Cast a Spell
  LD B,5                  ; Print or update Command Summary Window at top of
                          ; screen...
  CALL 45206              ; ...with "CAST A SPELL" text
  LD HL,55513             ; Point HL at "WHICH SPELL DO YOU WANT TO [Current
                          ; Command] ?" full menu text
  LD DE,49276             ; Adjust height of window 30 to accommodate text...
  CALL 45617              ; ...
  PUSH HL                 ; Store HL (pointer to menu text to print)
  LD A,30                 ; Draw Menu Window 30...
  CALL 47185              ; ...
  POP HL                  ; Restore HL (pointer to menu text to print)
  CALL 46902              ; Print text to screen
  CALL 47502              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  LD (43929),A            ; Store index of spell selected in this routine at
                          ; 43928
  CP 4                    ; If selected spell is 4 (TRAVEL TO PERSON)...
  JR Z,43928              ; ...then skip ahead to 43928
  CALL 63399              ; Print or update Command Summary Window at top of
                          ; screen
  LD HL,55926             ; Point HL at "CAST DIMENSION MERGE" text (i.e. first
                          ; in list of "CAST [SPELL]" strings)
  LD A,(43929)            ; Load index of spell selected into B...
  LD B,A                  ; ...
  CALL 63335              ; ...and advance HL to relevant "CAST [SPELL]" string
  EX DE,HL                ; Swap DE (now points to "CAST [SPELL]" text) and
                          ; HL...
  CALL 63349              ; ...and print in Command Summary Window at top of
                          ; screen
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
; The operand of the instruction at 43928 represents the index of the selected
; spell. This is modified by the instruction at 43901.
  LD A,0                  ; Load A with index of selected spell
  LD HL,43936             ; Point HL at Table of Cast a Spell Routine Addresses
  JP 64623                ; Load HL with address of appropriate Cast a Spell
                          ; Routine and jump to it

; Table of Cast a Spell Routine Addresses
  DEFW 43950              ; Dimension Merge
  DEFW 43998              ; Melt Granite
  DEFW 44001              ; Pass Plant
  DEFW 44063              ; Spell of Wonder
  DEFW 44100              ; Travel to Person
  DEFW 44198              ; Magic Fulcrum
  DEFW 44216              ; Quiticus Gamus

; Cast Dimension Merge if Possible, else Display Failure Message
  LD A,(23438)            ; If Current Disquise is not zero...
  OR A                    ; ...i.e. a disquise is being worn...
  JP NZ,64290             ; ...then display "YOU CANNOT [Current Command] THAT
                          ; SPELL NOW..." Window (12), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD HL,24898             ; Load HL with address of Off-White Knight's current
                          ; position data
  LD A,(23702)            ; If Magic Knight's current room is not the same as
                          ; Off-White Knight's...
  CP (HL)                 ; ...
  JP NZ,64290             ; ...then display "YOU CANNOT [Current Command] THAT
                          ; SPELL NOW..." Window (12), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD A,(24840)            ; If Magic Knight's current x-coordinate
                          ; (characters)...
  RRCA                    ; ...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  INC HL                  ; ...
  CP (HL)                 ; ...is not the same as Off-White Knight's...
  JP NZ,64290             ; ...then display "YOU CANNOT [Current Command] THAT
                          ; SPELL NOW..." Window (12), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD A,(23403)            ; If Off-White Knight Sent To Sleep Flag is zero...
  OR A                    ; ...i.e. Off-White has not yet been sent to sleep...
  JP Z,64290              ; ...then display "YOU CANNOT [Current Command] THAT
                          ; SPELL NOW..." Window (12), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD C,99                 ; If Magic Knight's magic level is at least 99...
  CALL 44225              ; ...then flash border and screen and decrease Magic
                          ; Knight's magic level by 99...
  JP C,64290              ; ...otherwise display "YOU CANNOT [Current Command]
                          ; THAT SPELL NOW..." Window (12), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  JP 44253                ; Show "WELL DONE" screen, jumping to Game Over when
                          ; Fire is pressed

; Display Failure Message (When Attempting to Cast Melt Granite)
;
; See trivia
  JP 64290                ; Display "YOU CANNOT [Current Command] THAT SPELL
                          ; NOW..." Window (12), wait for Fire to be pressed
                          ; then jump to Main Game Loop

; Cast Pass Plant if Possible, else Display Failure Message
  LD B,49                 ; Load B with 49 (destination plant's room on
                          ; Spaceship)
  LD A,(23702)            ; If Magic Knight's current room is 4 (Outdoors, 3,
                          ; The Spooky Forest, 1)...
  CP 4                    ; ...
  JR Z,44021              ; ...then skip ahead to 44021
  CP 17                   ; If Magic Knight's current room is 17 (Castle Ground
                          ; Floor, 0, One Axe Room)...
  JR Z,44021              ; ...then skip ahead to 44021
  LD B,4                  ; Load B with 4 (destination plant's room in Spooky
                          ; Forest)
  CP 49                   ; If Magic Knight's current room is not 49
                          ; (Spaceship, 4, The Power Plant)...
  JP NZ,64290             ; ...then display "YOU CANNOT [Current Command] THAT
                          ; SPELL NOW..." Window (12), wait for Fire to be
                          ; pressed then jump to Main Game Loop
; At this point, B holds the room to which Magic Knight will travel when Pass
; Plant spell is cast.
  LD A,B                  ; Load A with destination room
  LD (44053),A            ; Update operand to instruction at 44052 to hold
                          ; destination room
  LD A,(24840)            ; Load A with Magic Knight's current x-coordinate
                          ; (characters)...
  RRCA                    ; ...
  RRCA                    ; ...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 15                  ; ...
  CP 7                    ; ...and if this is 7...
  JR Z,44044              ; ...then skip ahead to 44044
  LD HL,55589             ; Point HL at "YOU ARE NOT NEAR ENOUGH TO THE RIGHT
                          ; TYPE OF PLANT" text
  JP 64305                ; Display "YOU ARE NOT NEAR ENOUGH TO THE RIGHT TYPE
                          ; OF PLANT" Window (27), wait for Fire to be pressed
                          ; then jump to Main Game Loop
  LD C,30                 ; If Magic Knight's magic level is at least 30...
  CALL 44225              ; ...then flash border and screen and decrease Magic
                          ; Knight's magic level by 30...
  JP C,64290              ; ...otherwise display "YOU CANNOT [Current Command]
                          ; THAT SPELL NOW..." Window (12), wait for Fire to be
                          ; pressed then jump to Main Game Loop
; The operand of the instruction at 44052 represents the destination room for
; Pass Plant spell. This is modified by the instruction at 44022.
  LD A,0                  ; Set Magic Knight's room to destination room...
  LD (23702),A            ; ...
  LD HL,55625             ; Point HL at "YOU FIND YOURSELF STANDING BESIDE A
                          ; SIMILAR PLANT..." text
  JP 64305                ; Display "YOU FIND YOURSELF STANDING BESIDE A
                          ; SIMILAR PLANT..." Window (27), wait for Fire to be
                          ; pressed then jump to Main Game Loop

; Cast Spell of Wonder if Possible, else Display Failure Message
;
; See trivia
  LD C,60                 ; If Magic Knight's magic level is at least 60...
  CALL 44225              ; ...then flash border and screen and decrease Magic
                          ; Knight's magic level by 60...
  JP C,64290              ; ...otherwise display "YOU CANNOT [Current Command]
                          ; THAT SPELL NOW..." Window (12), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD A,(24768)            ; Load B with unused bit...
  AND 128                 ; ...
  LD B,A                  ; ...
  LD A,(24768)            ; Load Magic Knight's current strength into A...
  AND 127                 ; ...
  ADD A,10                ; ...add 10...
  CP 101                  ; ...and if less than 101...
  JR C,44090              ; ...then skip ahead to 44090
  LD A,100                ; Load A with 100
  OR B                    ; Combine unused bit with value in A...
  LD (24768),A            ; ...and store as Magic Knight's new strength
  LD HL,55685             ; Point HL at "YOU FEEL THE USUAL MAGIC ENERGY
                          ; DRAIN..." text
  JP 64305                ; Display "YOU FEEL THE USUAL MAGIC ENERGY DRAIN..."
                          ; Window (27), wait for Fire to be pressed then jump
                          ; to Main Game Loop

; Cast Travel to Person if Possible, else Display Failure Message
  CALL 63399              ; Print or update Command Summary Window at top of
                          ; screen
  LD DE,55955             ; Point DE at "TRAVEL TO " text...
  CALL 63349              ; ...and print in Command Summary Window at top of
                          ; screen
  LD HL,51428             ; Point HL at "TRAVEL TO ?" text
  PUSH HL                 ; Store HL (pointer to "TRAVEL TO ?" text)
  LD HL,48589             ; Load HL with start address of list of characters
                          ; for "TRAVEL TO" Character Selection Menu
  CALL 46106              ; Display and process input for character selection
                          ; menu ("TRAVEL TO")
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,2                  ; If Magic Knight is not carrying the Crystal Ball
                          ; (2)...
  CALL 45510              ; ...
  JP NZ,64290             ; ...then display "YOU CANNOT [Current Command] THAT
                          ; SPELL NOW..." Window (12), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD A,25                 ; If Magic Knight is not carrying the Magic Missile
                          ; (25)...
  CALL 45510              ; ...
  JP NZ,64290             ; ...then display "YOU CANNOT [Current Command] THAT
                          ; SPELL NOW..." Window (12), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD A,(41937)            ; Load BC with three times index of Current
                          ; Character...
  LD C,A                  ; ...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD B,0                  ; ...
  LD C,A                  ; ...
  LD HL,24898             ; Point IX at start of Table of Characters' Current
                          ; Positions at 24898...
  ADD HL,BC               ; ...and add BC as offset
  LD A,(HL)               ; If character's current room is 99...
  CP 99                   ; ...
  JP Z,64290              ; ...then display "YOU CANNOT [Current Command] THAT
                          ; SPELL NOW..." Window (12), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  CP 100                  ; If character's current room is 100...
  JP Z,64290              ; ...then display "YOU CANNOT [Current Command] THAT
                          ; SPELL NOW..." Window (12), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD C,30                 ; Load C with 30 (as spell reduces magic level by 30)
  PUSH HL                 ; Store HL (pointer to character's current room)
  CALL 44225              ; If MK's Magic Level is at least 30 then flash
                          ; border and screen and decrease Magic Knight's magic
                          ; level by 30, otherwise set Carry Flag
  POP HL                  ; Restore HL (pointer to character's current room)
  JP C,64290              ; If Carry Flag set then display "YOU CANNOT [Current
                          ; Command] THAT SPELL NOW..." Window (12), wait for
                          ; Fire to be pressed then jump to Main Game Loop
  LD A,(HL)               ; Set Magic Knight's current room to be the same as
                          ; the character's...
  LD (23702),A            ; ...
  INC HL                  ; Advance HL to character's x-coordinate...
  LD A,(HL)               ; ...and load into A
  ADD A,A                 ; Multiply A by eight to get x-coordinate in
                          ; pixels...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (24840),A            ; ...and set Magic Knight's current x-coordinate to
                          ; this value
  INC HL                  ; Advance HL to character's y-coordinate...
  LD A,(HL)               ; ...and load into A
  ADD A,A                 ; Multiply A by eight to get y-coordinate in
                          ; pixels...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (24841),A            ; ...and set Magic Knight's current y-coordinate to
                          ; this value
  LD HL,55846             ; Point HL at "YOU FEEL YOUR BODY SUCKED THROUGH A
                          ; BYPASS..." text
  JP 64293                ; Display "YOU FEEL YOUR BODY SUCKED THROUGH A
                          ; BYPASS..." Window (15), wait for Fire to be pressed
                          ; then jump to Main Game Loop

; Cast Magic Fulcrum if Possible, else Display Failure Message
  LD C,55                 ; If Magic Knight's magic level is at least 55...
  CALL 44225              ; ...then flash border and screen and decrease Magic
                          ; Knight's magic level by 55...
  JP C,64290              ; ...otherwise display "YOU CANNOT [Current Command]
                          ; THAT SPELL NOW..." Window (12), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  XOR A                   ; Reset all Main Lever Flags...
  LD (23402),A            ; ...
  LD HL,55775             ; Point HL at "YOU FEEL SEVEN LEVERS ALL MOVING TO
                          ; THEIR START POSITIONS..." text
  JP 64305                ; Display "YOU FEEL SEVEN LEVERS..." Window (27),
                          ; wait for Fire to be pressed then jump to Main Game
                          ; Loop

; Cast Quiticus Gamus and Jump to Game Over
  CALL 64548              ; Flash border and screen (as in Cast a Spell)
  LD HL,50879             ; Point HL at "I SUPPOSE YOU REALISED..." text
  JP 64582                ; Display cyan "Game Over" Window and return to
                          ; Control Selection Menu

; Flash Border and Screen and Decrease Magic Knight's Magic Level if Level is
; at Least C
;
; Used by the routines at 43950, 44001, 44063, 44100 and 44198. Input:  C  Cost
; of spell Output: A  Magic Knight's magic level if less than C, otherwise zero
; F  Carry Flag set if Magic Knight's magic level is less than C, reset
; otherwise
  LD A,(24771)            ; Load Magic Knight's current magic level into A...
  AND 127                 ; ...
  CP C                    ; If this is less than C...
  RET C                   ; ...then return
  LD A,(24771)            ; Load B with unused bit...
  AND 128                 ; ...
  LD B,A                  ; ...
  LD A,(24771)            ; Load Magic Knight's current magic level into A...
  AND 127                 ; ...
  SUB C                   ; ...subtract C...
  OR B                    ; ...combine with unused bit...
  LD (24771),A            ; ...and store
  CALL 64548              ; Flash border and screen (as in Cast a Spell)
  XOR A                   ; Set A to zero
  RET                     ; Return

; Show "WELL DONE" Screen, Jumping to Game Over when Fire is Pressed
;
; Used by the routine at 43950.
  IM 1                    ; Set Interrupt Mode 1
  LD A,(23446)            ; Increase Bonus Score by 17...
  ADD A,17                ; ...
  LD (23446),A            ; ...
  CALL 64548              ; Flash border and screen (as in Cast a Spell)
  LD A,10                 ; Draw Window 10...
  CALL 47193              ; ...
  LD HL,50947             ; Point HL at "WELL DONE..." text
  CALL 46902              ; ...and print to screen
  LD HL,16384             ; Blank out top two thirds of Display File...
  LD DE,16385             ; ...
  LD BC,4095              ; ...
  LD (HL),L               ; ...
  LDIR                    ; ...
  LD A,71                 ; Load A with 71 (white INK, black PAPER, BRIGHT)...
  LD (23695),A            ; ...and set system variables ATTR T...
  LD (23693),A            ; ...and ATTR P to this value
  LD HL,22528             ; Load HL with start of attribute section of video
                          ; memory
  LD DE,22529             ; Load DE with next byte up
  LD BC,511               ; Load BC with length of data to copy (511 bytes =
                          ; length of 16 rows of attribute area of video memory
                          ; minus one)
  LD (HL),A               ; Load memory at HL with this attribute...
  LDIR                    ; ...and repeat 511 times
  LD HL,0                 ; Set Magic Knight's x- and y-velocities to zero...
  LD (24844),HL           ; ...
  LD HL,19320             ; Set Magic Knight's x-coordinate to 120 and
                          ; y-coordinate to 75...
  LD (24840),HL           ; ...
  XOR A                   ; Set unused data at 24842 to zero...
  LD (24842),A            ; ...
  CALL 61860              ; Store background attributes if appropriate, then
                          ; draw Magic Knight to display without drawing axes
  CALL 64230              ; Wait for Interrupt then display "PRESS FIRE TO
                          ; CONTINUE" Window and wait for Fire to be pressed
  LD HL,51006             ; Point HL at "YOU HAVE COMPLETED YOUR TASK..." text
  JP 64582                ; Display Cyan "Game Over" Window and Return to
                          ; Control Selection Menu

; Process Command to Blow an Object
  LD IX,24848             ; Point IX at start of Magic Knight's current
                          ; inventory (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,51920             ; Point HL at "[Current Command] WHICH OBJECT ?" text
  LD DE,51928             ; Point DE at "[Current Command] THE " text
  CALL 45809              ; Show list of objects in Magic Knight's inventory
                          ; (carrying) as a menu and load A with selected item
                          ; index
  LD HL,24848             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  CALL 45766              ; Print name of selected object in Magic Knight's
                          ; current inventory (carrying) in Command Summary
                          ; Window
  LD A,(41779)            ; Load A with index of Current Object
  CP 22                   ; If the selected object is not the Elf-Horn...
  JP NZ,44557             ; ...then skip ahead to 44557
  LD A,(23702)            ; Load BC with double index of Magic Knight's current
                          ; room...
  ADD A,A                 ; ...
  LD C,A                  ; ...
  LD B,0                  ; ...
  LD HL,48915             ; Load HL with start address of Character Movement
                          ; Restriction Data
  ADD HL,BC               ; Add BC as offset
  LD A,(HL)               ; Load current room's movement restriction data...
  LD (44454),A            ; ...into operand of instruction at 44453
  CALL 63399              ; Print or update Command Summary Window at top of
                          ; Screen
  LD DE,56163             ; Point DE at "SUMMON " text...
  CALL 63349              ; ...and print in Command Summary Window at top of
                          ; screen
  LD HL,51413             ; Point HL at "SUMMON ?" text
  PUSH HL                 ; Store HL (address of "SUMMON ?" text)
  LD HL,48598             ; Load HL with start address of list of characters
                          ; for "SUMMON" Character Selection Menu
  CALL 46106              ; Display and process input for character selection
                          ; menu ("SUMMON")
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object (see trivia)
  CALL 45601              ; Point HL at current position data for Current
                          ; Character
  LD A,(23702)            ; Load A with Magic Knight's current room...
  CP (HL)                 ; ...and set Zero Flag if this is the same as the
                          ; Current Character's current room
  LD HL,56275             ; Point HL at "[Current Character's full name] IS
                          ; ALREADY HERE!" text
  JP Z,64309              ; If Zero Flag is set then display "[Character] IS
                          ; ALREADY HERE!" Window (28), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD A,(41937)            ; Point HL at Current Character's strength...
  LD E,0                  ; ...
  CALL 45406              ; ...
  PUSH HL                 ; Load IX with address of Current Character's
                          ; strength...
  POP IX                  ; ...
  BIT 7,(IX+6)            ; Set Zero Flag to inverse of Current Character's
                          ; Asleep Flag (i.e. Awake Flag)
  LD HL,56213             ; Point HL at "[Current Character's full name] IS
                          ; ASLEEP" text
  JP NZ,64309             ; If Zero Flag is not set then display "[Character]
                          ; IS ASLEEP" Window (28), wait for Fire to be pressed
                          ; then jump to Main Game Loop
  LD A,(IX+1)             ; If character's happiness is less than 35...
  AND 127                 ; ...
  CP 35                   ; ...then set Carry Flag
  LD HL,56224             ; Point HL at "[Current Character's full name] DOES
                          ; NOT WANT TO BE SUMMONED" text
  JP C,64309              ; If Carry Flag is set then display "[Character] DOES
                          ; NOT WANT TO BE SUMMONED" Window (28), wait for Fire
                          ; to be pressed then jump to Main Game Loop
; The operand of the instruction at 44453 represents the movement restriction
; data for the current room. This is modified by the instruction at 44378.
  LD A,0                  ; If movement restriction data is 98 (i.e. room not
                          ; accessible by character)...
  CP 98                   ; ...
  JP Z,64309              ; ...then display "[Character] DOES NOT WANT TO BE
                          ; SUMMONED" Window (28), wait for Fire to be pressed
                          ; then jump to Main Game Loop
  LD A,(IX+2)             ; If Current Character's stamina is less than 25...
  AND 127                 ; ...
  CP 25                   ; ...then set Carry Flag
  LD HL,56248             ; Point HL at "[Current Character's full name] IS TOO
                          ; TIRED TO BE SUMMONED" text
  JP C,64309              ; If Carry Flag is set then display "[Character] IS
                          ; TOO TIRED TO BE SUMMONED" Window (28), wait for
                          ; Fire to be pressed then jump to Main Game Loop
  CALL 45601              ; Point HL at current position data for Current
                          ; Character
  CALL 44615              ; Load BC with coordinates of character's arrival
                          ; point when summoned to current room and set Zero
                          ; Flag if character refuses to come
  JP Z,44585              ; If character does not want to come here then skip
                          ; ahead to 44585
  LD A,(24840)            ; Load A with Magic Knight's current x-coordinate
                          ; (characters)...
  RRCA                    ; ...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  SUB C                   ; Subtract arrival x-coordinate to give horizontal
                          ; distance from Magic Knight...
  JP Z,44591              ; ...and if zero then skip ahead to 44591 (check
                          ; vertical distance to Magic Knight)
  CP 1                    ; If horizontal distance is 1...
  JP Z,44591              ; ...then skip ahead to 44591 (check vertical
                          ; distance to Magic Knight)
  CP 255                  ; If horizontal distance is -1...
  JP Z,44591              ; ...then skip ahead to 44591 (check vertical
                          ; distance to Magic Knight)
  CP 254                  ; If horizontal distance is -2...
  JP Z,44591              ; ...then skip ahead to 44591 (check vertical
                          ; distance to Magic Knight)
; Have character arrive in new room
  LD A,(23702)            ; Load A with index of Magic Knight's current room...
  OR 128                  ; ...and set MSB
  LD (HL),A               ; Set this as character's current room
  INC HL                  ; Advance to character's x-coordinate...
  LD (HL),C               ; ...and set to value in C
  INC HL                  ; Advance to character's y-coordinate...
  LD (HL),B               ; ...and set to value in B
  LD A,(IX+0)             ; Decrease character's strength by 4...
  SUB 4                   ; ...
  LD (IX+0),A             ; ...
  LD A,(IX+1)             ; Decrease character's happiness by 3...
  SUB 3                   ; ...
  LD (IX+1),A             ; ...
  LD A,(IX+2)             ; Decrease character's stamina by 7...
  SUB 7                   ; ...
  LD (IX+2),A             ; ...
  LD A,(24771)            ; Decrease Magic Knight's current magic level by 3...
  SUB 3                   ; ...
  LD (24771),A            ; ...
  LD HL,56347             ; Point HL at "[Current Character's full name]
                          ; APPEARS IN A THICK PUFF OF SMOKE" text
  JP 64309                ; Display "[Character] APPEARS IN A THICK PUFF OF
                          ; SMOKE" Window (28), wait for Fire to be pressed
                          ; then jump to Main Game Loop
; Blown object is not the Elf-Horn
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object...
  CALL 45685              ; ...and if this is 4 (Teddy Bear) then display "THE
                          ; BEAR SAYS..." message and wait for Fire to be
                          ; pressed
  LD E,0                  ; Load E with 0 (prepare to check Blow Status Flag)
  CALL 45390              ; Point HL to byte 0 of the A-th record in Object
                          ; Properties Table
  BIT 6,(HL)              ; Set Zero Flag if object's Blow Status Flag is
                          ; reset, otherwise reset
  LD HL,56304             ; Point HL at "WHAT A LOT OF DUST..." text
  JP Z,64305              ; If Zero Flag is set then display "WHAT A LOT OF
                          ; DUST..." Window (27), wait for Fire to be pressed
                          ; then jump to Main Game Loop
  LD HL,56165             ; Point HL at "I THINK YOU SHOULD GIVE UP TRYING TO
                          ; PLAY THE [name of Current Object]..." text
  JP 64305                ; Display "I THINK YOU SHOULD GIVE UP..." Window
                          ; (27), wait for Fire to be pressed then jump to Main
                          ; Game Loop
; Character does not want to come to current room
  LD HL,56284             ; Point HL at "[Current Character's short name] DOES
                          ; NOT WANT TO COME HERE!" text
  JP 64305                ; Display "[Character] DOES NOT WANT TO COME HERE!"
                          ; Window (27), wait for Fire to be pressed then jump
                          ; to Main Game Loop
; Magic Knight is within two characters horizontally of character's intended
; arrival point
  LD A,(24841)            ; Load A with Magic Knight's current y-coordinate
                          ; (characters)...
  RRCA                    ; ...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  SUB B                   ; Subtract arrival y-coordinate to give vertical
                          ; distance from Magic Knight...
  AND 252                 ; If bits 2-7 are all reset (i.e. distance was 0 -
                          ; 3)...
  JR Z,44609              ; ...then skip ahead to 44609
  CP 252                  ; If bits 2-7 are not all set (i.e. distance was not
                          ; -1 - -4)...
  JP NZ,44509             ; ...then jump back to 44509 (have character arrive)
  LD HL,56070             ; Point HL at "[Current Character's short name] SAYS
                          ; 'I CANNOT COME TO THAT ROOM ... YOU ARE IN MY
                          ; WAY!'" text
  JP 64293                ; Display "[Character] SAYS 'I CANNOT COME TO THAT
                          ; ROOM...'" Window (15), wait for Fire to be pressed
                          ; then jump to Main Game Loop

; Load BC with Coordinates of Character's Arrival Point When Summoned and Set
; Zero Flag if Character Refuses
;
; Used by the routine at 44337. Output: B  Destination y-coordinate C
; Destination x-coordinate F  Zero Flag set if character does not want to come
; to room, otherwise reset
  LD A,(23702)            ; Load A with index of Magic Knight's current room
  PUSH HL                 ; Store HL
  ADD A,A                 ; Double index of Magic Knight's current room
  LD HL,49690             ; Load HL with start address of Table of x- and
                          ; y-Coordinates of Positions Taken by Summoned
                          ; Characters in Each Room...
  LD C,A                  ; ...and add double room index as offset...
  LD B,0                  ; ...
  ADD HL,BC               ; ...
  LD C,(HL)               ; Load C with destination x-coordinate
  INC HL                  ; Advance HL to destination y-coordinate...
  LD B,(HL)               ; ...and load into B
  POP HL                  ; Restore HL
  LD A,C                  ; If destination x-coordinate is 99...
  CP 99                   ; ...then set Zero Flag
  RET                     ; Return

; Process Command to Wear / Unwear an Object
  LD A,11                 ; Draw Window 11...
  CALL 47185              ; ...
  LD HL,56380             ; Point HL at Wear/Unwear Menu text...
  CALL 46902              ; ...and print to screen
  CALL 47502              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  JR NZ,44745             ; If UNWEAR selected then skip ahead to 44745
  CALL 45641              ; Display "YOU ARE NOT CARRYING ANYTHING" Window and
                          ; set Zero Flag if Magic Knight's inventory
                          ; (carrying) is empty
  JP Z,41742              ; If MK's inventory (carrying) is empty then set his
                          ; available action flags and jump to start of Main
                          ; Game Loop (41742)
  LD IX,24848             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,56397             ; Point HL at "[Current Command] WHICH OBJECT ?" text
  LD DE,56391             ; Point DE at "UN[Current Command] THE " text
  CALL 45809              ; Show list of objects in Magic Knight's inventory
                          ; (carrying) as a menu and load A with selected item
                          ; index
  LD HL,24848             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  CALL 45766              ; Print name of object in inventory slot A of
                          ; inventory data at HL in Command Summary Window
  LD A,(41779)            ; If Current Object (selected object) is the Disquise
                          ; (1)...
  CP 1                    ; ...
  JP Z,44824              ; ...then skip ahead to 44824
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object...
  CALL 45685              ; ...and if this is 4 (Teddy Bear) then display "THE
                          ; BEAR SAYS..." message and wait for Fire to be
                          ; pressed
  LD HL,24857             ; If last slot in Magic Knight's current inventory
                          ; (wearing) is not empty...
  LD A,(HL)               ; ...
  OR A                    ; ...then reset Zero Flag, otherwise set
  LD HL,56404             ; Point HL at "YOU ARE [Current Command]ING TOO MUCH"
                          ; text
  JP NZ,64261             ; If Zero Flag is reset then display "YOU ARE
                          ; [Command]ING TOO MUCH" Window (13), wait for Fire
                          ; to be pressed then jump to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object
  LD E,1                  ; If object's Can Be Worn Flag is reset...
  CALL 45390              ; ...
  BIT 3,(HL)              ; ...then set Zero Flag, otherwise reset
  LD HL,56419             ; Point HL at "YOU CANNOT [Current Command] THAT "
                          ; text
  JP Z,64261              ; If Zero Flag is set then display "YOU CANNOT
                          ; [Command] THAT" Window (13), wait for Fire to be
                          ; pressed then jump to Main Game Loop
  LD A,(41779)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (five inventory slots)
  PUSH BC                 ; Store BC (B = number of slots to process, C =
                          ; Current Object)
  LD HL,24848             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  CALL 48341              ; Remove object C from this inventory
  POP BC                  ; Restore BC (B = number of slots to process, C =
                          ; Current Object)
  LD HL,24853             ; Point HL at Magic Knight's current inventory
                          ; (wearing)...
  CALL 45380              ; ...and wait for interrupt then load object C into
                          ; the first empty slot
  JP 41727                ; Show Magic Knight's current inventory and jump back
                          ; to Main Game Loop
  CALL 45631              ; Display "YOU ARE NOT WEARING ANYTHING" Window and
                          ; set Zero Flag if Magic Knight's inventory (wearing)
                          ; is empty
  JP Z,41742              ; If MK's inventory (wearing) is empty then set his
                          ; available action flags and jump to start of Main
                          ; Game Loop (41742)
  LD IX,24853             ; Point IX at Magic Knight's current inventory
                          ; (wearing)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,56395             ; Point HL at "UN[Current Command] WHICH OBJECT ?"
                          ; text
  LD DE,56389             ; Point DE at "UN[Current Command] THE " text
  CALL 45809              ; Show list of objects in Magic Knight's inventory
                          ; (wearing) as a menu and load A with selected item
                          ; index
  LD HL,24853             ; Point HL at Magic Knight's current inventory
                          ; (wearing)
  CALL 45766              ; Print name of object in inventory slot A of
                          ; inventory data at HL in Command Summary Window
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object...
  CALL 45685              ; ...and if this is 4 (Teddy Bear) then display "THE
                          ; BEAR SAYS..." message and wait for Fire to be
                          ; pressed (see trivia)
  LD HL,24852             ; Load A with index of object in Magic Knight's fifth
                          ; inventory slot (carrying)...
  LD A,(HL)               ; ...
  OR A                    ; If this is not zero (i.e. Magic Knight's hands are
                          ; full)...
  JP NZ,64258             ; ...then display "YOUR HANDS ARE FULL" Window (13),
                          ; wait for Fire to be pressed then jump to Main Game
                          ; Loop
  LD A,(41779)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (five inventory slots)
  PUSH BC                 ; Store BC (B = number of slots to process, C =
                          ; Current Object)
  LD HL,24853             ; Point HL at Magic Knight's current inventory
                          ; (wearing)
  CALL 48341              ; Remove object C from Magic Knight's current
                          ; inventory (wearing)
  POP BC                  ; Restore BC (B = number of slots to process, C =
                          ; Current Object)
  LD HL,24848             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)...
  CALL 45380              ; ...and wait for interrupt then load Object C into
                          ; the first empty slot
  LD A,(41779)            ; If Current Object (selected object) is not the
                          ; Disquise (1)...
  CP 1                    ; ...
  JP NZ,41727             ; ...then show Magic Knight's current inventory and
                          ; jump back to Main Game Loop
  XOR A                   ; Set Current Disquise to zero...
  LD (23438),A            ; ...
  JP 41727                ; Show Magic Knight's current inventory and jump back
                          ; to Main Game Loop
  LD HL,56429             ; Point HL at "WHICH DISQUISE DO YOU WANT TO [Current
                          ; Command]?" full menu text
  LD DE,49140             ; Adjust height of window 13 to accommodate text...
  CALL 45617              ; ...
  PUSH HL                 ; Store HL (pointer to menu text to print)
  LD A,13                 ; Draw Menu Window 13...
  CALL 47185              ; ...
  POP HL                  ; Restore HL (pointer to menu text to print)
  CALL 46902              ; Print text to screen
  CALL 47502              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  INC A                   ; Add one to selected item index to give selected
                          ; disquise index...
  LD (44854),A            ; ...and store as operand to instruction at 44853
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
; The operand of the instruction at 44853 represents the index of the selected
; disquise to wear. This is modified by the instruction at 44847.
  LD A,0                  ; Load A with selected disquise index...
  LD (23438),A            ; ...and store at 23438 as Current Disquise
  JP 44689                ; Jump back to 44689 (i.e. try to wear selected
                          ; disquise)

; Process Command to Teleport
  LD B,2                  ; Print or update Command Summary Window at top of
                          ; screen...
  CALL 45206              ; ...with "TELEPORT" text
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(25018)            ; If the Teleport Pad's current room is not 99...
  CP 99                   ; ...
  JR NZ,44900             ; ...then skip ahead to 44900
  XOR A                   ; Set Magic Knight's current room...
  LD (23702),A            ; ...to be zero (Limbo)
  LD A,120                ; Set Magic Knight's x- and y-coordinates to be
                          ; 120...
  LD (24840),A            ; ...
  LD (24841),A            ; ...
  LD A,1                  ; Set Animate Puff of Smoke Flag...
  LD (23480),A            ; ...
  LD HL,56462             ; Point HL at "IT WAS NOT SAFE TO TELEPORT SO YOU
                          ; HAVE WOUND UP IN LIMBO" text
  CALL 64317              ; Display "IT WAS NOT SAFE TO TELEPORT..." Window
                          ; (17), wait for Fire to be pressed then jump to Main
                          ; Game Loop...

; Data block at 44899
  DEFB 17                 ; ...

; Teleport Pad's room is not 99
;
; Used by the routine at 44861.
  LD HL,25018             ; Point HL to current position data of Teleport Pad
  LD A,(HL)               ; Load A with current room of Teleport Pad...
  LD (23702),A            ; ...and update Magic Knight's current room to match
  INC HL                  ; Advance HL to x-coordinate of Teleport Pad...
  LD A,(HL)               ; ...and load this into A
  ADD A,A                 ; Multiply x-coordinate by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (24840),A            ; ...and update Magic Knight's current x-coordinate
                          ; to match
  INC HL                  ; Advance HL to y-coordinate of Teleport Pad...
  LD A,(HL)               ; ...and load this into A
  SUB 3                   ; Subtract three (because Magic Knight is four
                          ; character blocks tall)...
  ADD A,A                 ; ...multiply by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (24841),A            ; ...and update Magic Knight's current y-coordinate
                          ; to match
  LD A,1                  ; Set Animate Puff of Smoke Flag...
  LD (23480),A            ; ...
  JP 41742                ; Set Magic Knight's available action flags and jump
                          ; to start of Main Game Loop

; Process Command to Tickle a Character
  LD HL,51408             ; Point HL at "[Current Command] ?" text (end of
                          ; sub-menu title, after "WHO DO YOU WANT TO ")
  LD DE,56502             ; Point DE at "TICKLE " text
  CALL 45963              ; Display and process input for Character Selection
                          ; Menu (current room's characters only), setting
                          ; Current Character
  JP Z,41742              ; If there are no characters in the room then set
                          ; MK's available action flags and jump to start of
                          ; Main Game Loop (41742)
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  CALL 45723              ; End the game if Current Character is Off-White or
                          ; Grunter
  CALL 45552              ; Display "[Character] IS ASLEEP" Window and jump to
                          ; Main Game Loop if Current Character is asleep, else
                          ; return here and continue
  LD A,(41937)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at character's current strength...
  CALL 45406              ; ...
  PUSH HL                 ; Transfer address from HL...
  POP IX                  ; ...into IX
  LD A,(41937)            ; Load DE with index of Current Character...
  LD E,A                  ; ...
  LD D,0                  ; ...
  LD HL,43486             ; Load HL with start address of Table of Characters'
                          ; Default Happiness Levels...
  ADD HL,DE               ; ...and add DE as offset
  LD A,(IX+1)             ; Load A with character's current happiness...
  AND 128                 ; ...and reset all but Bit 7 (unused)
  OR (HL)                 ; Add in character's default happiness...
  LD (IX+1),A             ; ...and set as character's current happiness
  LD HL,56505             ; Point HL at "[Current Character's short name]
                          ; GIGGLES AND BURSTS INTO LAUGHTER..." text
  JP 64313                ; Display "[Character's] GIGGLES AND BURSTS INTO
                          ; LAUGHTER..." window (29), wait for Fire to be
                          ; pressed then jump to Main Game Loop

; Process Command to Pull Lever
  LD B,9                  ; Print or update Command Summary Window at top of
                          ; screen...
  CALL 45206              ; ...with "PULL LEVER" text
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(23702)            ; Load A with Magic Knight's current room
  CP 20                   ; If current room is 20 (Castle Ground Floor, 3)...
  JP Z,45073              ; ...then skip ahead to 45073
  CP 38                   ; If current room is 38 (Castle Third Floor, 0, Big
                          ; White Statue)...
  JP Z,45080              ; ...then skip ahead to 45080
  CP 34                   ; If current room is 34 (Castle Second Floor, 3, One
                          ; Way Corridor, 1)...
  JP Z,45087              ; ...then skip ahead to 45087
  LD B,64                 ; Prepare to set Main Lever 7 Flag
  CP 24                   ; If current room is 24 (Castle First Floor, 0, Main
                          ; Lever 7)...
  JR Z,45064              ; ...then skip ahead to 45064 (set prepared Main
                          ; Lever Flag)
  LD B,32                 ; Prepare to set Main Lever 6 Flag
  CP 25                   ; If current room is 25 (Castle First Floor, 1, Main
                          ; Lever 6)...
  JR Z,45064              ; ...then skip ahead to 45064 (set prepared Main
                          ; Lever Flag)
  LD B,16                 ; Prepare to set Main Lever 5 Flag
  CP 26                   ; If current room is 26 (Castle First Floor, 2,
                          ; Security Door & Main Lever 5)...
  JR Z,45064              ; ...then skip ahead to 45064 (set prepared Main
                          ; Lever Flag)
  LD B,8                  ; Prepare to set Main Lever 4 Flag
  CP 27                   ; If current room is 27 (Castle First Floor, 3, Main
                          ; Lever 4)...
  JR Z,45064              ; ...then skip ahead to 45064 (set prepared Main
                          ; Lever Flag)
  LD B,4                  ; Prepare to set Main Lever 3 Flag
  CP 28                   ; If current room is 28 (Castle First Floor, 4, Main
                          ; Lever 3)...
  JR Z,45064              ; ...then skip ahead to 45064 (set prepared Main
                          ; Lever Flag)
  LD B,2                  ; Prepare to set Main Lever 2 Flag
  CP 29                   ; If current room is 29 (Castle First Floor, 5, Main
                          ; Lever 2)...
  JR Z,45064              ; ...then skip ahead to 45064 (set prepared Main
                          ; Lever Flag)
  LD B,1                  ; Prepare to set Main Lever 1 Flag
  CP 30                   ; If current room is 30 (Castle First Floor, 6, Main
                          ; Lever 1)...
  JR Z,45064              ; ...then skip ahead to 45064 (set prepared Main
                          ; Lever Flag)
  LD HL,57552             ; Point HL at "THE LEVER SPRUNG BACK INTO
                          ; POSITION..." text
  JP 64297                ; Display "THE LEVER SPRUNG BACK INTO POSITION..."
                          ; Window (12), wait for Fire to be pressed then jump
                          ; to Main Game Loop
; Set Prepared Main Lever Flag
  LD A,(23402)            ; Load current Main Lever Flags...
  XOR B                   ; ...merge in set flag prepared in B...
  LD (23402),A            ; ...and store back at 23402
  JR 45058                ; Jump back to 45058 (show "THE LEVEL SPRUNG BACK..."
                          ; message and return to Main Game Loop
; Room 20 (Castle Ground Floor, 3)
  LD A,138                ; Load A with 138 (instruction to draw layout data
                          ; fragment 10, i.e. blank)...
  LD (59866),A            ; ...and replace Security Door (1/3) instruction at
                          ; 59866
  JR 45058                ; Jump back to 45058 (show "THE LEVEL SPRUNG BACK..."
                          ; message and return to Main Game Loop
; Room 38 (Castle Third Floor, 0, Big White Statue)
  LD A,138                ; Load A with 138 (instruction to draw layout data
                          ; fragment 10, i.e. blank)...
  LD (59867),A            ; ...and replace Security Door (2/3) instruction at
                          ; 59867
  JR 45058                ; Jump back to 45058 (show "THE LEVEL SPRUNG BACK..."
                          ; message and return to Main Game Loop
; Room 34 (Castle Second Floor, 3, One Way Corridor, 1)
  LD A,138                ; Load A with 138 (instruction to draw layout data
                          ; fragment 10, i.e. blank)...
  LD (59868),A            ; ...and replace Security Door (3/3) instruction at
                          ; 59868
  JR 45058                ; Jump back to 45058 (show "THE LEVEL SPRUNG BACK..."
                          ; message and return to Main Game Loop

; Unused routine
;
; Do nothing (return).
  RET                     ; Return

; Process Command to Smell Something
  LD IX,24848             ; Point IX at start of Magic Knight's current
                          ; inventory (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD HL,51920             ; Point HL at "[Current Command] WHICH OBJECT ?" text
  LD DE,51928             ; Point DE at "[Current Command] THE " text
  CALL 45809              ; Show list of objects in Magic Knight's inventory
                          ; (carrying) as a menu and load A with selected item
                          ; index
  LD HL,24848             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  CALL 45766              ; Print name of selected object in Magic Knight's
                          ; current inventory (carrying) in Command Summary
                          ; Window
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,(41779)            ; Load A with index of Current Object...
  CALL 45685              ; ...and if this is 4 (Teddy Bear) then display "THE
                          ; BEAR SAYS..." message and wait for Fire to be
                          ; pressed
  LD HL,57501             ; Point HL at "YOU CAN SMELL NOTHING BECAUSE YOUR
                          ; NOSE IS BLOCKED!" text
  JP 64297                ; Display "YOU CAN SMELL NOTHING..." Window (12),
                          ; wait for Fire to be pressed then jump to Main Game
                          ; Loop

; Process Command to Have a Wish
  LD B,11                 ; Print or update Command Summary Window at top of
                          ; screen...
  CALL 45206              ; ...with "HAVE A WISH" text
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  XOR A                   ; Reset Wish Pending Flag...
  LD (23365),A            ; ...
  LD HL,57533             ; Point HL at "YOUR [Current Command] HAS BEEN
                          ; GRANTED!" text
  JP 64297                ; Display "YOUR [Current Command] HAS BEEN GRANTED!"
                          ; Window (12), wait for Fire to be pressed then jump
                          ; to Main Game Loop

; Process Command to Have a Drink
  LD B,12                 ; Print or update Command Summary Window at top of
                          ; screen...
  CALL 45206              ; ...with "HAVE A DRINK" text
  CALL 64207              ; Display Execute / Reject Command window and return
                          ; here if Execute chosen, else exit to Main Game Loop
  LD A,17                 ; If Magic Knight is carrying the Bottle of Liquid
                          ; (17)...
  CALL 45510              ; ...then set Zero Flag, otherwise reset
  LD C,17                 ; Load C with 17 (index of first Bottle of Liquid)
  JR Z,45168              ; If Zero Flag is set (i.e. Magic Knight is carrying
                          ; the Bottle of Liquid) then skip ahead to 45168
  LD C,18                 ; Load C with 18 (index of second Bottle of Liquid)
  LD B,5                  ; Load B with 5 (five inventory slots)
  PUSH BC                 ; Store BC (C = index of appropriate Bottle of
                          ; Liquid)
  LD HL,24848             ; Point HL at Magic Knight's current inventory
                          ; (carrying)
  CALL 48341              ; Remove object C from Current Character's inventory
  POP BC                  ; Restore BC (C = index of appropriate Bottle of
                          ; Liquid)
  LD A,C                  ; Load A with index of Bottle of Liquid drank...
  SUB 17                  ; ...subtract 17...
  ADD A,28                ; ...add 28 to give index of appropriate Empty
                          ; Bottle...
  LD C,A                  ; ...and load into C
  LD HL,24848             ; Point HL at Magic Knight's current inventory
                          ; (carrying)
  CALL 45380              ; Wait for interrupt then load appropriate Empty
                          ; Bottle into Magic Knight's inventory
  LD A,(24768)            ; Load A with unused bit in Magic Knight's current
                          ; Strength field...
  AND 128                 ; ...clear all strength bits...
  ADD A,100               ; ...set new strength to 100...
  LD (24768),A            ; ...and store
  LD HL,57636             ; Point HL at "MMMMM.. TASTY. YOU CAN FEEL NEW
                          ; STRENGTH " text
  JP 64297                ; Display "MMMMM.. TASTY..." Window (12), wait for
                          ; Fire to be pressed then jump to Main Game Loop

; Print Name of B-th Conditional Command in Command Summary Window
;
; Used by the routines at 43874, 44861, 44990, 45131 and 45149. Input:  B
; Index of conditional command to print in Command Summary Window
  PUSH BC                 ; Store BC (B = index of conditional command to
                          ; print)
  CALL 63399              ; Print or update Command Summary Window at top of
                          ; screen
  POP BC                  ; Restore BC (B = index of conditional command to
                          ; print)
  LD HL,51487             ; Point HL at text for first of conditional Main Menu
                          ; options
  CALL 63335              ; Advance HL to B-th entry in list of zero-terminated
                          ; strings starting at HL
  INC HL                  ; Skip over formatting codes to first text
                          ; character...
  INC HL                  ; ...
  PUSH HL                 ; Transfer address from HL...
  POP DE                  ; ...to DE
  JP 63349                ; Print text at DE (Command Summary) in Command
                          ; Summary Window at top of screen and return

; "Command Character to Help" Routine for Off-White Knight
  JP 64285                ; Display "[Character] CANNOT HELP YOU" Window (29),
                          ; wait for Fire to be pressed then jump to Main Game
                          ; Loop

; "Command Character to Help" Routine for Aramis le Peux
  LD A,34                 ; Set Zero Flag if Aramis le Peux is carrying the
                          ; List of Clues, reset otherwise...
  LD HL,24863             ; ...
  CALL 45513              ; ...(see trivia)
  JP NZ,64285             ; If Zero Flag is reset then display "[Character]
                          ; CANNOT HELP YOU" Window (29), wait for Fire to be
                          ; pressed then jump to Main Game Loop
; The operand of the instruction at 45238 represents the index of the Current
; Clue. This is modified by the instruction at 45243.
  LD A,0                  ; Increase index of Current Clue...
  INC A                   ; ...
  AND 7                   ; ...resetting to zero if greater than 7...
  LD (45239),A            ; ...and store at 45238
  LD B,A                  ; Load B with index of Current Clue
  LD HL,55198             ; Point HL at start of list of Clue Texts
  CALL 63335              ; Advance HL to B-th entry in list of zero-terminated
                          ; strings starting at HL
  JP 64301                ; Display Current Clue Window (24), wait for Fire to
                          ; be pressed then jump to Main Game Loop

; "Command Character to Help" Routine for Robin of Shylock
  LD A,(23439)            ; If Robin Has Been Paid Flag is set...
  AND 1                   ; ...
  JR NZ,45269             ; ...then skip ahead to 45269
  LD HL,51588             ; Point HL at "[Current Character's short name] SAYS
                          ; "I WILL REQUIRE A GOLDEN EGG..."" text
  JP 64301                ; Display "[Character] SAYS "I WILL REQUIRE A GOLDEN
                          ; EGG..."" Window (24), wait for Fire to be pressed
                          ; then jump to Main Game Loop
  LD A,(23702)            ; If Magic Knight's current room is not 3...
  CP 3                    ; ...(Outdoors, 2, Beware Bearwoolf)...
  JP NZ,64285             ; ...then display "[Character] CANNOT HELP YOU"
                          ; Window (29), wait for Fire to be pressed then jump
                          ; to Main Game Loop
  LD A,3                  ; Set the Teddy Bear's current room to 3...
  LD (24934),A            ; ...
  LD HL,59012             ; Set Room Layout Data Pointer for Room 3 to 59012...
  LD (58847),HL           ; ...i.e. exclude Grunter graphic from room layout
  LD A,255                ; Set Bearwoolf Removed Flag...
  LD (40605),A            ; ...
  LD C,23                 ; Remove Silver Arrow from Robin's current
                          ; inventory...
  LD B,5                  ; ...
  LD HL,24868             ; ...
  CALL 48341              ; ...
  LD HL,24991             ; Set Silver Arrow's current room to 3...
  LD (HL),3               ; ...
  INC HL                  ; Set Silver Arrow's x-coordinate to 14...
  LD (HL),14              ; ...
  INC HL                  ; Set Silver Arrow's y-coordinate to 22...
  LD (HL),22              ; ...
  LD A,(23446)            ; Add 20 to Bonus Score...
  ADD A,20                ; ...
  LD (23446),A            ; ...
  LD A,99                 ; Set Grunter's current room to 99...
  LD (24919),A            ; ...
  LD HL,51619             ; Point HL at "BRAVE [Current Character's short name]
                          ; HAS SHOT BEARWOOLF..." text
  JP 64301                ; Display "BRAVE [Character] HAS SHOT BEARWOOLF..."
                          ; Window (24), wait for Fire to be pressed then jump
                          ; to Main Game Loop

; "Command Character to Help" Routine for Reggie the Rat
  JP 64285                ; Display "[Character] CANNOT HELP YOU" Window (29),
                          ; wait for Fire to be pressed then jump to Main Game
                          ; Loop

; "Command Character to Help" Routine for Rachel of Amazonia
  LD HL,51709             ; Point HL at "[Current Character's short name] SAYS
                          ; "THE PASSWORD NUMBER..."" text
  JP 64301                ; Display "[Character] SAYS "THE PASSWORD NUMBER...""
                          ; Window (24), wait for Fire to be pressed then jump
                          ; to Main Game Loop

; "Command Character to Help" Routine for Barker the Ent
  JP 64285                ; Display "[Character] CANNOT HELP YOU" Window (29),
                          ; wait for Fire to be pressed then jump to Main Game
                          ; Loop

; "Command Character to Help" Routine for Organon the Guard
  JP 64285                ; Display "[Character] CANNOT HELP YOU" Window (29),
                          ; wait for Fire to be pressed then jump to Main Game
                          ; Loop

; "Command Character to Help" Routine for Grunter the Bearwoolf
  JP 64285                ; Display "[Character] CANNOT HELP YOU" Window (29),
                          ; wait for Fire to be pressed then jump to Main Game
                          ; Loop

; Load A with weight of object A
;
; Used by the routines at 42257 and 45466. Input:  A  Index of object of
; interest Output: A  Weight of object of interest
  PUSH HL                 ; Store HL
  PUSH DE                 ; Store DE
  LD E,0                  ; Point HL to the first byte of the A-th record in
                          ; Object Properties Table...
  CALL 45390              ; ...
  LD A,(HL)               ; Load data at this location into A
  AND 15                  ; Discard all but the Weight bits
  POP DE                  ; Restore DE
  POP HL                  ; Restore HL
  RET                     ; Return

; Load A with Current Character's Happiness Level
;
; Used by the routines at 41924 and 42257. Output: A  Happiness of Current
; Character
  LD A,(41937)            ; Load A with index of Current Character
  PUSH HL                 ; Store HL
  PUSH DE                 ; Store DE
  LD E,1                  ; Point HL at Current Character's Happiness...
  CALL 45406              ; ...
  LD A,(HL)               ; ...and load Happiness into A
  AND 127                 ; Reset Bit 7 (unused)
  POP DE                  ; Restore DE
  POP HL                  ; Restore HL
  RET                     ; Return

; Wait for Interrupt then Load Object C into the First Empty Inventory Slot of
; a Character
;
; Used by the routines at 41578, 42036, 42157, 44635 and 45149. Input:  B
; Number of inventory slots to process C  Index of an object to load into a
; character's inventory HL  Points to (usually the start of) a record in the
; Characters' Current Inventories Table at 24848
  HALT                    ; Wait for interrupt
; This entry point is used by the routine at 62443.
  LD A,(HL)               ; If current inventory slot is empty...
  OR A                    ; ...
  JR Z,45388              ; ...then skip ahead to 45388
  INC HL                  ; Advance to next inventory slot
  DJNZ 45381              ; If there are still slots to process then loop back
                          ; to 45381
  LD (HL),C               ; Load item into current inventory slot
  RET                     ; Return

; Point HL to the E-th byte of the A-th record in Object Properties Table
;
; Used by the routines at 41748, 42638, 43494, 43636, 44337, 44635, 45351,
; 46380 and 46490. Input: A  Index of required record (i.e. table entry
; number), first is zero E  Index of required field within record (i.e. byte
; number), first is zero HL  (entry at 45393 only) Points to Table of
; Characters' Current Stats (Off-White's entry, i.e. not including Magic
; Knight) Output: HL  Points to required field within record of interest
  LD HL,49354             ; Point HL at start of Table of Object Properties
; This entry point is used by the routine at 45406.
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
; Used by the routines at 39883, 42257, 42638, 43318, 43428, 43636, 44337,
; 44933, 45364, 45411, 45552 and 62622.
  LD HL,24776             ; Point HL at Table of Characters' Current Stats
                          ; (Off-White's entry, i.e. not including Magic
                          ; Knight)...
  JR 45393                ; ...and advance to the E-th byte of the A-th entry
                          ; in this table of 8-byte-wide records, then return

; Point IX at Current Character's Current Stats
;
; Used by the routines at 43117, 43158, 43199, 43250 and 45434. Output: HL
; Address of start of Current Character's stats IX  Address of start of Current
; Character's stats
  LD A,(41937)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at Current Character's current strength...
  CALL 45406              ; ...
  PUSH HL                 ; Transfer address from HL...
  POP IX                  ; ...to IX
  RET                     ; Return

; If Character's Happiness is Lower than B then Show "[Character] DOES NOT WANT
; TO BE COMMANDED..." and Jump to Main Game Loop
;
; Used by the routines at 43117, 43158, 43199 and 43250. Input:  IX  Pointer to
; start of a character's current stats B  Happiness threshold
  LD A,(IX+1)             ; If character's current happiness is at or above the
                          ; threshold value...
  AND 127                 ; ...
  CP B                    ; ...
  RET NC                  ; ...then return
  POP AF                  ; Remove return value from top of stack as we are not
                          ; RETurning
  JP 64280                ; Display "[Character] DOES NOT WANT TO BE COMMANDED
                          ; BY YOU" Window (29), wait for Fire to be pressed
                          ; then jump to Main Game Loop

; Increase Current Character's Happiness by Amount A
;
; Used by the routines at 41924, 42257, 42638, 43043 and 43199. Input:  A
; Value by which to change character's Happiness
  PUSH AF                 ; Store AF (A = increment value)
  CALL 45411              ; Point IX at Current Character's current stats
  POP AF                  ; Restore AF (A = increment value)
  LD C,A                  ; Load increment value into C
  LD A,(IX+1)             ; Add increment value to Current Character's
                          ; Happiness...
  CALL 62594              ; ...
  LD (IX+1),A             ; ...and store
  RET                     ; Return

; Point IX at Current Inventory of Character A
;
; Used by the routines at 41924, 42036, 42157, 42257 and 45670. Input:  A
; Index of a character Output: IX Points to current inventory of character A
  PUSH DE                 ; Store DE
  LD E,A                  ; Multiply character index by five (as each character
                          ; has five inventory slots)...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,E                 ; ...
  LD E,A                  ; ...and load into DE...
  LD D,0                  ; ...
  LD IX,24858             ; Point IX at Off-White Knight's entry in Characters'
                          ; Current Inventories Table (i.e. first entry for
                          ; non-player characters)
  ADD IX,DE               ; Add five times character index to this as offset
  POP DE                  ; Restore DE
  RET                     ; Return

; Test Whether Current Object is too Heavy for Magic Knight to Pick Up (or
; Take)
;
; Used by the routines at 41578 and 41924. Output: F  S Flag set if object is
; light enough to be picked up, reset otherwise
  LD IX,24848             ; Point IX at start of Magic Knight's current
                          ; inventory
  LD A,(24768)            ; Load Magic Knight's current strength into A
  PUSH AF                 ; Store AF (A = Magic Knight's current strength)
  LD BC,1280              ; Load B with 5 (as five inventory slots to check)
                          ; and C (total weight carried) with zero
  LD A,(IX+0)             ; Load object in current inventory slot
  OR A                    ; If no object present...
  JR Z,45492              ; ...skip ahead to 45492...
  CALL 45351              ; Load A with weight of object A
  ADD A,C                 ; Add C to this...
  LD C,A                  ; ...and load result into C (total weight so far)
  INC IX                  ; Advance to next inventory slot
  DJNZ 45477              ; Loop back for next inventory slot
  POP AF                  ; Restore AF (A = Magic Knight's current strength)
  AND 127                 ; Ensure that strength is capped at 127 and that Sign
                          ; Flag is reset
  SUB C                   ; Subtract total weight of Magic Knight's carried
                          ; objects from his strength to get "surplus"
                          ; strength...
  LD C,A                  ; ...and load into C
  LD A,(41779)            ; Load A with index of Current Object (i.e. object
                          ; Magic Knight is trying to pick up)
  CALL 45351              ; Load A with weight of object A
  CP C                    ; Set Sign Flag if surplus strength exceeds weight of
                          ; object, otherwise reset
  RET                     ; Return

; Check Whether Magic Knight is Wearing an Object
;
; Used by the routines at 38841, 40546, 40614, 46560 and 62330. Input:  A
; Index of an object Output: F Zero Flag set if object is present in inventory,
; reset otherwise
  LD HL,24853             ; Point HL at start of Magic Knight's Inventory
                          ; (Wearing)
  JR 45513                ; Jump to 45513 (set Zero Flag if Magic Knight is
                          ; wearing object A, reset otherwise)

; Check Whether Magic Knight is Carrying an Object
;
; Used by the routines at 38780, 40190, 40258, 40614, 42157, 43494, 44100,
; 45149, 46183, 46326, 46463, 46490 and 62443. Input:  A  Index of an object HL
; (entry at 45513) Pointer to start of a character's inventory Output: F  Zero
; Flag set if object is present in inventory, reset otherwise
  LD HL,24848             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
; This entry point is used by the routines at 45227, 45505 and 45670.
  LD B,5                  ; Load B with 5 (as characters have five inventory
                          ; slots)
  CP (HL)                 ; If object at current inventory slot is the object
                          ; of interest...
  RET Z                   ; ...then return with zero flag set
  INC HL                  ; Advance HL to next inventory slot
  DJNZ 45515              ; Decrease B (remaining number of inventory slots to
                          ; check) and loop back to 33650
  OR A                    ; Reset zero flag, as object is not present
  RET                     ; Return

; Insert Current Time and Score into "Time Left" and "Percentage Completion"
; Texts
;
; Used by the routines at 42638 and 64582. Input:  HL  Points to percentage
; completion text (52302 or 50756) DE  Points to time left text (52302 or
; 50756)
  PUSH DE                 ; Store DE (address of time left text)
  PUSH HL                 ; Store HL (address of percentage completion text)
  LD HL,23488             ; Point HL at Visited Rooms table
  LD BC,13312             ; Set B=52, C=0
  LD A,(HL)               ; Load A with value at HL
  ADD A,C                 ; Add this to C...
  LD C,A                  ; ...
  INC HL                  ; Advance to next byte
  DJNZ 45530              ; Loop back to 45530 (adding together 52 values from
                          ; 23488 onwards to get score for exploring rooms)
  DEC C                   ; Decrease exploration score by one (due to no score
                          ; for The Sword in the Concrete)
  LD A,(23446)            ; Add Bonus Score to total...
  ADD A,C                 ; ...
  POP HL                  ; Restore HL (address of percentage completion text)
  CALL 46837              ; Splice numeric data A as a string into a string at
                          ; HL
  LD A,(23457)            ; Load A with number of hours left
  POP HL                  ; Restore HL (originally DE, address of time left
                          ; text)
  JP 46837                ; Splice numeric data A as a string into a string at
                          ; HL and return

; Display "[Character] IS ASLEEP" Window and Jump to Main Game Loop if Current
; Character is Asleep, else Return
;
; Used by the routines at 43199, 43250, 43318, 43428 and 44933. Output: A  Zero
; if character is awake
  PUSH HL                 ; Store HL
  LD A,(41937)            ; Load A with index of Current Character
  LD E,6                  ; Point HL at character's Flags...
  CALL 45406              ; ...
  BIT 7,(HL)              ; If character is awake...
  JR Z,45581              ; ...then skip ahead to 45581
  LD A,25                 ; Draw Window 25...
  CALL 47193              ; ...
  LD HL,50937             ; Point HL at "[Current Character's short name] IS
                          ; ASLEEP" text
  CALL 46902              ; ...and print to screen
  POP HL                  ; Restore HL
  POP HL                  ; Remove value from top of stack as we are not
                          ; RETurning
  JP 41739                ; Display "PRESS FIRE TO CONTINUE" Window and wait
                          ; for input and return to Main Game Loop
  POP HL                  ; Restore HL
  XOR A                   ; Set A to zero
  RET                     ; Return

; Load Magic Knight's Coordinates (in Characters) into DE
;
; Used by the routines at 41578 and 41748. Output: D  y-coordinate (characters)
; E  x-coordinate (characters)
  LD A,(24841)            ; Load Magic Knight's current y-coordinate into A
  CALL 40658              ; Divide A by eight, rounding down to nearest integer
  ADD A,3                 ; Add 3 (as Magic Knight is four characters tall)
  LD D,A                  ; And load result into D
  LD A,(24840)            ; Load Magic Knight's current x-coordinate into A
  CALL 40658              ; Divide A by eight, rounding down to nearest integer
  LD E,A                  ; Load result into E
  RET                     ; Return

; Point HL at Current Position Data for Current Character
;
; Used by the routines at 43199 and 44337. Output: HL  Address of Current
; Character's entry in Table of Characters' Current Positions
  PUSH BC                 ; Store BC
  LD A,(41937)            ; Load BC index of Current Character...
  LD C,A                  ; ...multiply by three...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...and load into BC...
  LD B,0                  ; ...
  LD HL,24898             ; Load HL with start address of Table of Characters'
                          ; Current Positions...
  ADD HL,BC               ; ...and add BC as offset
  POP BC                  ; Restore BC
  RET                     ; Return

; Adjust Height (at DE) of a Window to Accommodate Text
;
; Used by the routines at 43874, 44635, 45641, 45685, 45723, 45963, 64317 and
; 64582. Input:  HL Points to height byte preceding text data DE  Points to
; third byte of an entry in table at 49034 (i.e. y-coordinate of top edge of a
; window) Output: HL  Points to first byte of text data (i.e. input HL value
; plus one)
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
; Used by the routine at 46106. Input:  A  A window height DE  Location of a
; window's top y-coordinate data
  LD C,A                  ; Load window height into C
  LD A,(DE)               ; Load window's top y-coordinate into A
  ADD A,C                 ; Add C to give bottom y-coordinate
  INC DE                  ; Advance DE to window's bottom y-coordinate data...
  LD (DE),A               ; ...and update with new height value in A
  RET                     ; Return

; Display "YOU ARE NOT WEARING ANYTHING" Window and Set Zero Flag if Magic
; Knight's Inventory (Wearing) is Empty
;
; Used by the routine at 44635.
  LD A,(24853)            ; If Magic Knight's first inventory slot (wearing) is
                          ; not empty...
  OR A                    ; ...
  RET NZ                  ; ...then return
  LD HL,51353             ; Point HL at "YOU ARE NOT WEARING ANYTHING" text
  JR 45649                ; Display "YOU ARE NOT WEARING ANYTHING" Window, wait
                          ; for Fire to be pressed and return

; Display "YOU ARE NOT CARRYING ANYTHING" Window and Set Zero Flag if Magic
; Knight's Inventory (Carrying) is Empty
;
; Used by the routines at 41748, 42257, 42638 and 44635. Output: F  Zero Flag
; set if Magic Knight's (first) inventory (slot) is empty. Reset otherwise
  LD A,(24848)            ; Load A with index of first object in Magic Knight's
                          ; (Carrying) inventory...
  OR A                    ; ...and if this is zero...
  RET NZ                  ; ...then return
  LD HL,51335             ; Point HL at "YOU ARE NOT CARRYING ANYTHING" text
; This entry point is used by the routine at 45631.
  LD DE,49140             ; Adjust height of window 13 to accommodate text...
  CALL 45617              ; ...
  PUSH HL                 ; Store HL (pointer to text to print)
  LD A,13                 ; Draw Window 13...
  CALL 47193              ; ...
  POP HL                  ; Restore HL (pointer to text to print)
  CALL 46902              ; Print text to screen
  CALL 64230              ; Wait for interrupt then display "PRESS FIRE TO
                          ; CONTINUE" Window and wait for Fire to be pressed
  XOR A                   ; Load A with zero
  RET                     ; Return

; Unused routine
;
; Check whether Current Character is carrying an object. Input:  E  Index of an
; object Output: F  (via jumped-to routine at 45510) Zero Flag set if object is
; present in inventory, reset otherwise
  LD A,(41937)            ; Load A with index of Current Character
  PUSH DE                 ; Store DE (E = index of object to check for)
  CALL 45450              ; Point IX at current inventory of character with
                          ; index A...
  PUSH IX                 ; ...and copy into HL...
  POP HL                  ; ...
  POP DE                  ; Restore DE (E = index of object to check for)
  LD A,E                  ; Load index of object to check for into A
  JP 45513                ; Check if object is in inventory data at HL and
                          ; (re)set Zero Flag accordingly

; If A is 4 then Display "THE BEAR SAYS..." Message and wait for Fire to be
; pressed
;
; Used by the routines at 41578, 41748, 41924, 42257, 42638, 43494, 43636,
; 44337, 44635 and 45095. Input:  A  Index of an object Output: A  Index of an
; object (same as input value)
  CP 4                    ; If object of interest is not 4 (Teddy Bear)...
  RET NZ                  ; ...then return
  PUSH HL                 ; Store HL
  PUSH DE                 ; Store DE
  PUSH BC                 ; Store BC
  PUSH IX                 ; Store IX
  LD HL,51885             ; Load HL with address of "THE BEAR SAYS..." text
  LD DE,49212             ; Adjust height of a Window 22 to accommodate text...
  CALL 45617              ; ...
  PUSH HL                 ; Store HL (address of text to print)
  LD A,22                 ; Draw Window 22...
  CALL 47193              ; ...
  POP HL                  ; Restore HL (address of text to print)
  CALL 46902              ; Print "THE BEAR SAYS..." text
  CALL 64230              ; Wait for interrupt then display "PRESS FIRE TO
                          ; CONTINUE" Window and wait for Fire to be pressed
  LD A,4                  ; Load A with 4 (restore original value of A)
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  POP DE                  ; Restore DE
  POP HL                  ; Restore HL
  RET                     ; Return

; End the Game if Current Character is Off-White or Grunter
;
; Used by the routines at 42244, 42491, 43043 and 44933.
  LD A,(41937)            ; If Current Character is 7 (Grunter)...
  CP 7                    ; ...
  JR Z,45760              ; ...then skip ahead to 45760
  OR A                    ; If Current Character is not 0 (Off-White)...
  RET NZ                  ; ...then return
; Current Character is Off-White
  LD HL,51164             ; Point HL at "OFF-WHITE KNIGHT SAYS " text
  LD DE,49228             ; Adjust height of window 24 ("Game Over" Window) to
                          ; accommodate text...
  CALL 45617              ; ...
  PUSH HL                 ; Store HL (points to first character of text to
                          ; display)
  LD A,24                 ; Draw Window 24 ("Game Over" Window)...
  CALL 47193              ; ...
  POP HL                  ; Restore HL (points to first character of text to
                          ; display)
  CALL 46902              ; Print text to screen
  CALL 64230              ; Wait for interrupt then display "PRESS FIRE TO
                          ; CONTINUE" Window and wait for Fire to be pressed
  LD HL,51310             ; Point HL at "YOU WERE KILLED BY OFF-WHITE KNIGHT."
                          ; text
  JP 64582                ; Display cyan "Game Over" Window and return to
                          ; Control Selection Menu
; Current Character is Grunter
  LD HL,51090             ; Point HL at "[Current Character's full name] KILLED
                          ; YOU AS YOU APPROACHED." text
  JP 64582                ; Display cyan "Game Over" Window and return to
                          ; Control Selection Menu

; Print Name of Object in Inventory Slot A of Inventory Data at HL in Command
; Summary Window
;
; Used by the routines at 41748, 41924, 42257, 42638, 43494, 43636, 44337,
; 44635 and 45095. Input: A  Index of an inventory slot, with first slot being
; zero HL  Points to start of a character's inventory
  LD E,A                  ; Load inventory slot number into DE...
  LD D,0                  ; ...
  ADD HL,DE               ; Add to HL as offset
  LD A,(HL)               ; Load index of object in that slot into A
  LD (41779),A            ; Set this object as the Current Object
  LD DE,45779             ; Point DE at instruction to print name of Current
                          ; Object...
  JR 45795                ; ...print in Command Summary Window at top of screen
                          ; and return

; Code for Printing Routine to Display Name of Current Object
  DEFM 29,0               ; name of Current Object

; Update Current Character Based Upon Selection Made in Menu
;
; Used by the routine at 45963. Input:  A  Index of selected character from a
; character-selection menu
  LD HL,23422             ; Point HL at list of characters in room of interest
  LD E,A                  ; Load DE with index of selected item in menu...
  LD D,0                  ; ...
  ADD HL,DE               ; Add this as offset in table of characters in room
                          ; to point to character of interest
  LD A,(HL)               ; Load index of this character into A
  LD (41937),A            ; Modify operand of instruction at 41936 to use this
                          ; particular character (i.e. set Current Character)
; This entry point is used by the routines at 41924 and 46106.
  LD DE,45798             ; Point DE at instruction to print short name of
                          ; Current Character
; This entry point is used by the routine at 45766.
  JP 63349                ; Print text at DE in Command Summary Window at top
                          ; of screen and return

; Code for Printing Routine to Display Short Name of Current Character
  DEFM 31,0               ; short name of Current Character

; Code for Printing Routine to Display Full Name of Current Character
  DEFM 30,0               ; full name of Current Character

; Display a Character's Inventory Window as an Information Window
;
; Used by the routine at 41578. Input:  IX  Points to a character's inventory
; (usually Magic Knight)
  LD A,111                ; Modify instruction at 45867 to display as
                          ; information window, rather than menu window...
  LD (45868),A            ; ...
  JR 45834                ; Jump into inventory window drawing routine

; Show List of Objects (Window or Menu) and Handle Selection if a Menu
;
; Used by the routines at 41748, 41924, 42257, 42638, 43494, 43636, 44337,
; 44635 and 45095. Input: B  Number of inventory slots to check DE  Points to
; summary command text (i.e. "DROP THE ", "GIVE THE ", "READ THE ", "WEAR THE "
; or "UNWEAR THE "), or 0 for no summary text HL  (entry via 45809) Points to
; full command text (e.g. "DROP WHICH OBJECT?", or "YOU ARE NOW CARRYING") HL
; (entry via 45834) Points to "YOU ARE NOW CARRYING" text IX  Points to a
; character's inventory Output: A  Zero-based index of selected menu item
  CALL 62959              ; Store all registers on the stack
  CALL 47930              ; Play downward scale sound
  CALL 62987              ; Restore all registers from the stack
  LD A,105                ; Modify instruction at 45867 with 105, denoting
                          ; window as a menu rather than information window...
  LD (45868),A            ; ...
  PUSH BC                 ; Store BC (B = number of inventory slots)
  PUSH HL                 ; Store HL
  PUSH IX                 ; Store IX
  CALL 63388              ; Print Command Summary Text at DE (e.g. "DROP THE ")
                          ; in Command Summary Window
  POP IX                  ; Restore IX
  POP HL                  ; Restore HL
  POP BC                  ; Restore BC
; This entry point is used by the routine at 45802.
  LD C,0                  ; Load C (object counter) with zero
  PUSH BC                 ; Store BC (B = number of inventory slots)
  PUSH IX                 ; Store IX (points to start of inventory)
  LD A,(IX+0)             ; Load object from character's inventory (slot number
                          ; C) into A
  OR A                    ; If nothing in this slot...
  JR Z,45850              ; ...then jump ahead to 45850
  INC C                   ; Increase count of objects in inventory
  INC IX                  ; Advance IX to next slot
  DJNZ 45839              ; Loop back to 45839 for next slot
  POP IX                  ; Restore IX (points to start of inventory)
  LD A,C                  ; Copy number of objects into A
  OR A                    ; If number of objects is zero...
  JP Z,45937              ; ...then jump ahead to 45937
  LD A,(49068)            ; Load A with y-coordinate of top edge of Window 04
  ADD A,C                 ; Add number of objects to this y-coordinate
  ADD A,3                 ; Add an additional 3 to this total (menu window
                          ; padding)
  LD (49069),A            ; Set y-coordinate of bottom edge of Window 04 to
                          ; accommodate list of C objects
  PUSH HL                 ; Store HL (e.g. pointer to "DROP WHICH OBJECT?"
                          ; text)
; The operand of the instruction at 45867 represents the "Draw Hand Menu
; Cursor" Flag. This is modified by the instructions at 45804 and 45820.
  LD A,0                  ; Load A with menu / static window value
  CP 105                  ; If this is not 105 (i.e. window is not a menu, but
                          ; a simple information window)...
  JR NZ,45880             ; ...then skip ahead to 45880
  LD A,4                  ; Draw Window 4 as a menu window...
  CALL 47185              ; ...
  JR 45885                ; ...and skip over "draw an information window"
                          ; section
  LD A,4                  ; Draw Window 4 as an information window...
  CALL 47193              ; ...
  POP HL                  ; Restore HL (pointer to full command text)...
  PUSH IX                 ; Store IX (points to start of inventory)
  CALL 46902              ; Print text to screen
  POP IX                  ; Restore IX (points to start of inventory)
  POP BC                  ; Restore BC (B = number of remaining inventory
                          ; slots)
  PUSH BC                 ; Store BC (B = number of remaining inventory slots)
  LD A,(IX+0)             ; Load index of object in current inventory into A
  OR A                    ; If index is zero (i.e. inventory slot is empty)...
  JP Z,45927              ; ...then skip ahead to 45927
  LD B,A                  ; Copy index into B
  PUSH IX                 ; Store IX (pointer to start of inventory)
  LD HL,50753             ; Point HL to text printing instruction to move
                          ; cursor to start of next character row within
                          ; window, then right by two characters
  PUSH BC                 ; Store BC (B = index of an object)
  CALL 46902              ; Print text to screen (i.e. move text printing
                          ; cursor right by two characters)
  POP BC                  ; Restore BC (B = index of an object)
  CALL 63332              ; Point HL at object B's name in Table of Object
                          ; Names...
  CALL 46902              ; ...and print to screen
  POP IX                  ; Restore IX (pointer to start of inventory)
  INC IX                  ; Advance IX to next inventory slot
  POP BC                  ; Restore BC (B = number of remaining inventory
                          ; slots)
  DJNZ 45894              ; Repeat loop for next object in inventory,
                          ; decreasing B (number of remaining inventory slots)
  PUSH BC                 ; Store BC (B = 0)
  POP BC                  ; Restore BC (B = number of remaining inventory slots
  LD A,(45868)            ; If window is a menu, rather than information
                          ; window...
  CP 105                  ; ...
  CALL Z,47502            ; ...process keyboard / joystick input on a menu and
                          ; load A with selected item index
  RET                     ; ...and return
  PUSH HL                 ; Store HL (pointer to "YOU ARE NOW CARRYING" text)
  LD A,(49068)            ; Load A with y-coordinate of top edge of Window 04
  ADD A,4                 ; Add 4 to this y-coordinate
  LD (49069),A            ; Set y-coordinate of bottom edge of Window 04 to
                          ; accommodate three rows of text
  LD A,4                  ; Draw Window 4...
  CALL 47193              ; ...
  POP HL                  ; Restore HL (pointer to "YOU ARE NOW CARRYING" text)
  CALL 46902              ; ...and print to screen
  LD HL,56565             ; Point HL at "NOTHING AT ALL" text...
  CALL 46902              ; ...and print to screen
  POP BC                  ; Restore BC (number of inventory slots, PUSHed by
                          ; instruction at 45836)
  RET                     ; Return

; Display and Process Input for Character Selection Menu (Current Room's
; Characters Only)
;
; Used by the routines at 41924, 42257, 42638, 43043, 43636 and 44933. Input:
; HL  Pointer to text to append to menu's title string, after "WHO DO YOU WANT
; TO " DE  Command Summary Text Pointer (second row of text in Command Summary
; Window) Output: A  1 if there is at least one character in the room, zero
; otherwise F  Reset if there is at least one character in the room, set
; otherwise
  PUSH HL                 ; Store HL (pointer to text to append to menu's title
                          ; string)
  PUSH BC                 ; Store BC
  PUSH IX                 ; Store IX
  PUSH DE                 ; Store DE (Command Summary Text Pointer)
  CALL 47938              ; Play Short Downward Scale Sound
  POP DE                  ; Restore DE (Command Summary Text Pointer)
  CALL 63388              ; Print text at Command Summary Text Pointer (e.g.
                          ; "COMMAND ") in Command Summary Window
  LD A,(23702)            ; Load A with Magic Knight's current room...
  CALL 46408              ; ...and create list of characters in this room at
                          ; 23422, loading A with number of characters
  JR NZ,46011             ; If there are characters in this room then skip
                          ; ahead to 46011
  LD HL,51381             ; Point HL at "THERE IS NOBODY IN THIS ROOM" text
  LD DE,49140             ; Adjust height of window 13 to accommodate text...
  CALL 45617              ; ...
  PUSH HL                 ; Store HL (pointer to start of text to print)
  LD A,13                 ; Draw Window 13...
  CALL 47193              ; ...
  POP HL                  ; Restore HL (pointer to start of text to print)
  CALL 46902              ; Print text at HL
  CALL 64230              ; Wait for Interrupt then display "PRESS FIRE TO
                          ; CONTINUE" Window and wait for Fire to be pressed
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  POP HL                  ; Restore HL (pointer to text to append to menu's
                          ; title string)
  XOR A                   ; Set A to zero and set Zero Flag
  RET                     ; Return
  ADD A,4                 ; Add four to number of characters in current room
                          ; (for menu size padding)...
  LD C,A                  ; ...and load value into C
  LD A,(49060)            ; Load A with window's top y-coordinate
  ADD A,C                 ; Add 4 + number of characters...
  LD (49061),A            ; ...and set window's bottom y-coordinate to this
                          ; value
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  LD A,3                  ; Draw Window 3 as a menu window...
  CALL 47185              ; ...
  LD HL,51367             ; Point HL at "WHO DO YOU WANT TO " text...
  CALL 46902              ; ...and print to screen
  POP HL                  ; Restore HL (pointer to text to append to menu's
                          ; title string, as at beginning of this routine)
  CALL 46902              ; Append this text to menu's title
  LD IX,23422             ; Point IX at list of characters in room
  LD B,8                  ; Load B with 8 (8 characters)
  PUSH BC                 ; Store BC (B = remaining characters to process)
  LD A,(IX+0)             ; Load A with index of current character in list...
  CP 255                  ; ...and if this is 255 (End Marker)...
  JP Z,46095              ; ...then skip ahead to 46095
  LD HL,50753             ; Point HL at text printing instructions to move
                          ; cursor to start of next character row within
                          ; window, then right by two characters
  PUSH IX                 ; Store IX (current position in list of characters in
                          ; room)
  CALL 46902              ; Print text at HL to screen (i.e. move cursor)
  POP IX                  ; Restore IX (current position in list of characters
                          ; in room)
  LD A,(IX+0)             ; Load A with index of current character in list...
  LD (41937),A            ; Set this character as the Current Character
  LD HL,45800             ; Point HL at instruction to print full name of
                          ; Current Character
  PUSH IX                 ; Store IX (current position in list of characters in
                          ; room)
  CALL 46902              ; Print text to screen
  POP IX                  ; Restore IX (current position in list of characters
                          ; in room)
  INC IX                  ; Advance IX to next character in list
  POP BC                  ; Restore BC (B = remaining characters to process)
  DJNZ 46045              ; Decrease B and loop back to 46045
  CALL 47502              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  CALL 45781              ; Update Current Character based upon selection made
                          ; in menu
  LD A,1                  ; Load A with 1
  OR A                    ; Reset Zero Flag
  RET                     ; Return
  POP BC                  ; Restore BC (B = remaining characters to process)
  CALL 47502              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  CALL 45781              ; Update Current Character based upon selection made
                          ; in menu
  LD A,1                  ; Load A with 1
  OR A                    ; Reset Zero Flag
  RET                     ; Return

; Display and Process Input for Character Selection Menu (Character List
; Defined at HL)
;
; This routine is called at 44116 and 44397. In both cases, the address of a
; piece of text ("TRAVEL TO" or "SUMMON") is PUSHed onto the Stack just before
; the call. Input:  HL  Start address of list of characters for a character
; selection menu
  LD (46138),HL           ; Load list start address into operand of instruction
                          ; at 46137
  PUSH HL                 ; Store HL (start address of list of characters)
  CALL 47938              ; Play Short Downward Scale Sound
  POP HL                  ; Restore HL (start address of list of characters)
  LD DE,49060             ; Point DE at y-coordinate of top edge of Window 3 in
                          ; Window Data Table at 49034...
  LD A,(HL)               ; Load required window height from start of list of
                          ; characters...
  CALL 45625              ; ...and set window's height to this value
  LD A,3                  ; Display character selection menu...
  CALL 47185              ; ...
  LD HL,51367             ; Print "WHO DO YOU WANT TO " text...
  CALL 46902              ; ...
  POP HL                  ; Restore HL (address to return to upon RET
                          ; instruction)...
  EX (SP),HL              ; ...and swap with next value on stack (pointer to
                          ; text that was PUSHed before this routine was
                          ; called)
  CALL 46902              ; Print the text ("TRAVEL TO" or "SUMMON")
; The operand of the instruction at 46137 represents the start address of the
; list of characters. This is modified by the instruction at 46106.
  LD HL,0                 ; Load HL with start address of list of characters
  INC HL                  ; Advance HL by one byte
  LD A,(HL)               ; If value at HL is 255 (End Marker)...
  CP 255                  ; ...
  JR Z,46165              ; ...then skip ahead to 46165
  PUSH HL                 ; Store HL (current position in list of characters)
  LD (41937),A            ; Set character at current position in list to be
                          ; Current Character
  LD HL,50753             ; Point HL to text printing instruction to move
                          ; cursor to start of next character row within
                          ; window, then right by two characters...
  CALL 46902              ; ...and print
  LD HL,45800             ; Point HL at instruction to print full name of
                          ; Current Character...
  CALL 46902              ; ...and print
  POP HL                  ; Restore HL (current position in list of characters)
  JR 46140                ; Loop back to 46140 for next entry in list
  CALL 47502              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index
  INC A                   ; Add one to selected item index (as first entry in
                          ; list is window height)...
  LD C,A                  ; ...and load into BC...
  LD B,0                  ; ...
  LD HL,(46138)           ; Load HL with list start address...
  ADD HL,BC               ; ...and add BC as offset
  LD A,(HL)               ; Load A with entry at position HL in list (i.e.
                          ; index of selected character)...
  LD (41937),A            ; ...and set as Current Character
  JP 45792                ; Print character's name and return

; Set Magic Knight's Available Action Flags
;
; Used by the routines at 38024, 39393, 41578, 42494 and 43636.
  LD HL,0                 ; Reset all Available In-Game Menu Command Flags...
  LD (23698),HL           ; ...
  LD A,3                  ; If Magic Knight is not carrying the Wand of
                          ; Command...
  CALL 45510              ; ...
  JR NZ,46200             ; ...then skip ahead to 46200
  SET 0,(IY+88)           ; Set "COMMAND A CHARACTER" Menu Command Flag (IY =
                          ; 23610)
  LD A,(24771)            ; Load A with Magic Knight's current Magic Level...
  AND 127                 ; ...stripping out unused bit
  JR Z,46211              ; If Magic Level is zero then skip ahead to 46211
  SET 5,(IY+88)           ; Set "CAST A SPELL" Menu Command Flag (IY = 23610)
  LD A,(23702)            ; If Magic Knight's current room is 1 (Outdoors, 0,
                          ; Bearwoolf's Hoard)...
  CP 1                    ; ...
  JR Z,46233              ; ...then skip ahead to 46233
  CP 2                    ; If Magic Knight's current room is 2 (Outdoors, 1,
                          ; Bearwoolf's Cave)...
  JR Z,46233              ; ...then skip ahead to 46233
  LD A,31                 ; If Magic Knight is not carrying the Teleport Key...
  CALL 45510              ; ...
  JR NZ,46233             ; ...then skip ahead to 46233
  SET 2,(IY+88)           ; Set "TELEPORT" Menu Command Flag (IY = 23610)
  LD A,10                 ; If Magic Knight is not carrying the Horse
                          ; Feather...
  CALL 45510              ; ...
  JR NZ,46244             ; ...then skip ahead to 46244
  SET 0,(IY+89)           ; Set "TICKLE A CHARACTER" Menu Command Flag (IY =
                          ; 23610)
  XOR A                   ; Load C with weights / flags of all Magic Knight's
                          ; carried objects, OR-ed Together...
  CALL 46380              ; ...
  BIT 5,C                 ; ...and if Can Be Read Flag is not set for any of
                          ; the objects...
  JR Z,46256              ; ...then skip ahead to 46256
  SET 3,(IY+88)           ; Set "READ SOMETHING" Menu Command Flag (IY = 23610)
  BIT 6,C                 ; If Can Be Blown Flag is not set for any of the
                          ; objects...
  JR Z,46264              ; ...then skip ahead to 46264
  SET 6,(IY+88)           ; Set "BLOW SOMETHING" Menu Command Flag (IY = 23610)
  LD A,1                  ; Load C with flags (2) of all Magic Knight's carried
                          ; objects, OR-ed Together...
  CALL 46380              ; ...
  BIT 3,C                 ; ...and if Can Be Worn Flag is set for at least one
                          ; of the objects...
  JR NZ,46279             ; ...then skip ahead to 46279
  LD A,(24853)            ; If Magic Knight's first inventory slot (wearing) is
                          ; empty...
  OR A                    ; ...
  JR Z,46283              ; ...then skip ahead to 46283
  SET 7,(IY+88)           ; Set "WEAR/UNWEAR OBJECT" Menu Command Flag (IY =
                          ; 23610)
  LD A,1                  ; Load A with flags (2) of all Magic Knight's carried
                          ; objects, OR-ed Together...
  CALL 46380              ; ...
  LD A,C                  ; ...
  AND 224                 ; If bits 5 (Can Be Thrown Flag) 6 (Can Be Thrown and
                          ; is Lethal Flag) and 7 (Can Be Thrown Flag) are all
                          ; reset...
  JR Z,46297              ; ...then skip ahead to 46297
  SET 4,(IY+88)           ; Set "THROW SOMETHING" Menu Command Flag (IY =
                          ; 23610)
  LD A,(23702)            ; Load B with Magic Knight's current room...
  LD B,A                  ; ...
  LD HL,46315             ; Load HL with start address of List of Indices of
                          ; Rooms with Levers
  LD A,(HL)               ; If current index is the same as Magic Knight's
                          ; current room...
  CP B                    ; ...
  JR Z,46326              ; ...then set additional action flags including "PULL
                          ; LEVER" and return
  CP 255                  ; If current index is 255 (End Marker)...
  JR Z,46330              ; ...then set additional action flags excluding "PULL
                          ; LEVER" and return
  INC HL                  ; Advance HL to next room in list
  JR 46304                ; Loop back to 46304

; List of Indices of Rooms with Levers
  DEFB 20                 ; Castle Ground Floor, 3
  DEFB 24                 ; Castle First Floor, 0 (Main Lever 7)
  DEFB 25                 ; Castle First Floor, 1 (Main Lever 6)
  DEFB 26                 ; Castle First Floor, 2 (Security Door & Main Lever
                          ; 5)
  DEFB 27                 ; Castle First Floor, 3 (Main Lever 4)
  DEFB 28                 ; Castle First Floor, 4 (Main Lever 3)
  DEFB 29                 ; Castle First Floor, 5 (Main Lever 2)
  DEFB 30                 ; Castle First Floor, 6 (Main Lever 1)
  DEFB 34                 ; Castle Second Floor, 3 (One Way Corridor, 1)
  DEFB 38                 ; Castle Second Floor, 6
  DEFB 255                ; End Marker

; Set Magic Knight's Available Action Flags (Additional)
;
; Used by the routine at 46183.
  SET 1,(IY+89)           ; Set "PULL LEVER" Menu Command Flag (IY = 23610)
; This entry point is used by the routine at 46183.
  LD A,4                  ; Load A with Attribute Flags and Can Smell flags of
                          ; all Magic Knight's carried objects, OR-ed
                          ; Together...
  CALL 46380              ; ...
  LD A,C                  ; ...
  AND 240                 ; Reset all but bits 4, 5, 6 and 7 (the four Can
                          ; Smell flags)...
  JR Z,46344              ; ...and if these flags are all reset then skip ahead
                          ; to 46344
  SET 2,(IY+89)           ; Set "SMELL SOMETHING" Menu Command Flag (IY =
                          ; 23610)
  LD A,(23365)            ; If Wish Pending Flag is reset...
  OR A                    ; ...
  JR Z,46361              ; ...then skip ahead to 46361
  LD A,(23702)            ; If Magic Knight's current room is not 14...
  CP 14                   ; ...
  JR NZ,46361             ; ...then skip ahead to 46361
  SET 3,(IY+89)           ; Set "HAVE A WISH" Menu Command Flag (IY = 23610)
  LD A,17                 ; If Magic Knight is carrying the Bottle of Liquid
                          ; (17)...
  CALL 45510              ; ...
  JR Z,46375              ; ...then skip ahead to 46375
  LD A,18                 ; If Magic Knight is not carrying the Bottle of
                          ; Liquid (18)...
  CALL 45510              ; ...
  JR NZ,46379             ; ...then skip ahead to 46379
  SET 4,(IY+89)           ; Set "HAVE A DRINK" Menu Command Flag (IY = 23610)
  RET                     ; Return

; Load C with Property of Index A for All Magic Knight's Carried Objects, OR-ed
; Together
;
; Used by the routines at 46183 and 46326. Input:  A  Index of required
; property of objects Output: C  Flags of all objects held, OR-ed together
  LD (46396),A            ; Modify instruction at 46395 with index of required
                          ; property
  LD IX,24848             ; Point IX at Magic Knight's current inventory
                          ; (carrying)
  LD BC,1280              ; Load B with 5 and C with 0 (i.e. reset all bits in
                          ; C)
  LD A,(IX+0)             ; If Magic Knight's current inventory slot is
                          ; empty...
  OR A                    ; ...
  RET Z                   ; ...then return
; The operand of the instruction at 46395 represents the index of the required
; property. This is modified by the instruction at 46380.
  LD E,1                  ; Load E with index of required property
  CALL 45390              ; Point HL to the E-th byte of the A-th record in
                          ; Object Properties Table
  LD A,(HL)               ; Load A with value of required property (flags)...
  OR C                    ; ...and set corresponding bits of C...
  LD C,A                  ; ...
  INC IX                  ; Advance IX to next inventory slot...
  DJNZ 46390              ; ...and loop back to 46390 for next object
  RET                     ; Return

; Create List of Characters in Room A at 23422 and Load A with Number of
; Characters
;
; Used by the routine at 45963. Input:  A  Room index Output: A  Number of
; characters in room F  Zero Flag set if no characters in room, reset otherwise
  LD (46437),A            ; Modify instruction at 46436 with room index
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  PUSH DE                 ; Store DE
  PUSH IX                 ; Store IX
  LD A,255                ; Set A to 255 (End Marker)
  LD HL,23429             ; Point HL at end of Table of Characters in Room of
                          ; Interest
  LD B,8                  ; Load B with 8 (as we are clearing 8 entries in the
                          ; list)
  LD (HL),A               ; Set value at address in HL to 255
  DEC HL                  ; Move HL back one byte
  DJNZ 46423              ; Loop back to 46423
  LD IX,24898             ; Point IX at start of Table of Characters' Current
                          ; Positions at 24898
  LD D,0                  ; Set D (index of current character) to zero
  LD B,8                  ; Load B with 8 (as there are 8 characters in the
                          ; game)
  LD C,D                  ; Set C (count of characters in room of interest) to
                          ; zero
; The operand of the instruction at 46436 represents a room index. This is
; modified by the instruction at 46408.
  LD A,0                  ; Load A with room index
  CP (IX+0)               ; If current character's current room is not the room
                          ; of interest...
  JR NZ,46446             ; ...then skip ahead to 46446
  INC C                   ; Increase C (count of number of characters in room
                          ; of interest)
  INC HL                  ; Advance HL by one byte
  LD (HL),D               ; Load index of current character into address in HL
  INC IX                  ; Advance IX to next character's position data...
  INC IX                  ; ...
  INC IX                  ; ...
  INC D                   ; Increase index of current character (i.e. advance
                          ; to next character)
  DJNZ 46436              ; Loop back to 46436
  LD A,C                  ; Load number of characters in room of interest into
                          ; A
  OR A                    ; Set zero flag is there are no characters in room,
                          ; otherwise reset
  POP IX                  ; Restore IX
  POP DE                  ; Restore DE
  POP BC                  ; Restore BC
  POP HL                  ; Restore HL
  RET                     ; Return

; Print Magic Knight's Current Strength at (6, 2) as Text if he is Carrying the
; Mirror
;
; Used by the routines at 38780, 40153, 40201 and 46560.
  LD A,20                 ; If Magic Knight is not carrying the Mirror (20)...
  CALL 45510              ; ...
  RET NZ                  ; ...then return
  CALL 64935              ; Set left and right x-coordinates (23408 and 23410)
                          ; to edges of screen and load A with Magic Knight's
                          ; current strength
  LD HL,51067             ; Point HL at "---" text...
  CALL 46837              ; ...and overwrite with Magic Knight's current
                          ; strength as a string
  LD HL,16454             ; Load HL with Display File address corresponding to
                          ; (6, 2) (characters)...
  LD (63018),HL           ; ...and move Bitmap Virtual Text Cursor here
  LD HL,51067             ; Load HL with address of text containing Magic
                          ; Knight's current strength...
  JP 46902                ; ...print to screen and return

; Draw Objects in Magic Knight's Inventory if he is Carrying the Mirror
;
; Used by the routine at 38780.
  LD A,20                 ; If Magic Knight is not carrying the Mirror (20)...
  CALL 45510              ; ...
  RET NZ                  ; ...then return
  LD HL,24848             ; Point HL at start of Magic Knight's current
                          ; inventory (carrying)
  LD B,5                  ; Load B with 5 (five inventory slots)
  LD DE,528               ; Load DE with x- and y-coordinates respectively to
                          ; start drawing object graphics (D, or x = 2, E, or y
                          ; = 16)
  PUSH BC                 ; Store BC (B = remaining number of inventory slots
                          ; to process)
  PUSH HL                 ; Store HL (pointer to current position in Magic
                          ; Knight's current inventory)
  PUSH DE                 ; Store DE (coordinates in characters to draw object)
  LD A,(HL)               ; Load index of object in current slot in Magic
                          ; Knight's inventory into A
  OR A                    ; If this is zero...
  JR Z,46556              ; ...then restore registers and return
  LD E,6                  ; Load 6 (index of objects' attribute property) into
                          ; E
  CALL 45390              ; Point HL at the attribute property of the object in
                          ; the current inventory slot
  LD A,(HL)               ; Load attribute into ATTR T system variable...
  LD (23695),A            ; ...
  INC HL                  ; Advance HL to point to graphic index property...
  LD A,(HL)               ; ...and load into A
  POP BC                  ; Restore BC (coordinates in characters to draw
                          ; object, was in DE)
  PUSH BC                 ; Store BC (coordinates in characters to draw object)
  PUSH BC                 ; Store BC (coordinates in characters to draw object)
  CALL 63499              ; Draw 2x2 graphic with lookup index A at character
                          ; coordinates (C, B)
  POP BC                  ; Restore BC (coordinates in characters to draw
                          ; object)
  CALL 63219              ; Load HL with Attribute File address for coordinates
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
  DJNZ 46504              ; Decrease B, and loop back to 46504 if not zero
  RET                     ; Return
  POP DE                  ; Restore DE (coordinates in characters to draw
                          ; object)
  POP HL                  ; Restore HL (pointer to current position in Magic
                          ; Knight's current inventory)
  POP BC                  ; Restore BC (B = remaining number of inventory slots
                          ; to process)
  RET                     ; Return

; Update Position of Axe, Display, and Decrease Magic Knight's Strength if in
; Contact
;
; Used by the routines at 40235 and 40239. Input:  A  Axe number (0, 1, 2 or 3)
  ADD A,A                 ; Multiply value of A by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD C,A                  ; Store in C
  LD B,0                  ; Set B to zero
  LD IX,46752             ; Set IX to point to data for axes
  ADD IX,BC               ; Add eight times axe number as offset to IX pointer
  LD C,(IX+0)             ; Load axe's x-coordinate into C
  LD B,(IX+1)             ; Load axe's y-coordinate into B
  PUSH BC                 ; Store BC
  LD (23677),BC           ; Load BC into system variable "COORDS"
  LD A,(IX+4)             ; Load A with axe's current frame number
  PUSH IX                 ; Store IX
  CALL 63040              ; Draw axe to screen
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  LD A,(IX+2)             ; Load x-velocity into A
  ADD A,C                 ; Add x-coordinate to A
  LD C,A                  ; Load new x-coordinate back into C
  LD A,(IX+3)             ; Load y-velocity into A
  ADD A,B                 ; Add y-coordinate to A
  LD B,A                  ; Load new y-coordinate back into B
  LD (IX+0),C             ; Update data with new x-...
  LD (IX+1),B             ; ...and y-coordinates
  LD (23677),BC           ; Update "COORDS" system variable
  LD A,(IX+4)             ; Load A with axe frame data
  SUB 116                 ; Subtract 116 (i.e. frame number of first axe frame)
                          ; to get "absolute frame number" (see trivia)
  INC A                   ; Advance absolute frame number by one
  AND 3                   ; Cap absolute frame number to 3, and wrap round from
                          ; 3 to 0 as there are only four frames
  ADD A,116               ; Add 116 to absolute frame number to give relative
                          ; frame number again
  LD (IX+4),A             ; Store new frame number
  PUSH IX                 ; Store IX
  CALL 63040              ; Draw axe to screen
  POP IX                  ; Restore IX
  LD A,(IX+0)             ; Load x-coordinate of axe
  OR A                    ; If x-coordinate is zero...
  CALL Z,46742            ; ...multiply x "velocity" by minus one
  CP 244                  ; If x-coordinate is 244...
  CALL Z,46742            ; ...multiply x "velocity" by minus one
  INC IX                  ; Temporarily advance IX pointer to work with y
                          ; "velocities"
  LD A,(IX+0)             ; Load y-coordinate of axe
  CP 172                  ; If y-coordinate is 172...
  CALL Z,46742            ; ...multiply y "velocity" by minus one
  CP 100                  ; If y-coordinate is 100...
  CALL Z,46742            ; ...multiply y "velocity" by minus one
  DEC IX                  ; Move IX back one again (reversing instruction at
                          ; 46646)
  LD A,(24840)            ; Load A with Magic Knight's current x-coordinate
  LD B,A                  ; Copy into B
  LD A,(IX+0)             ; Load A with x-coordinate of axe
  ADD A,6                 ; Add 6 to x-coordinate of axe
  SUB B                   ; Subtract B to get x-distance between Magic Knight
                          ; and the axe, plus 6
  CP 21                   ; If this value is not less than 21 then...
  JP NC,46741             ; ...return
  LD A,(24841)            ; Else, load B with Magic Knight's y-coordinate...
  LD B,A                  ; ...
  LD A,(IX+1)             ; Load A with y-coordinate of axe (uses same
                          ; coordinate system as PLOT command, i.e. y=0 is at
                          ; bottom of screen)
  SUB B                   ; Subtract B to get y-distance between Magic Knight
                          ; and the axe
  CP 39                   ; If this value is not less than 39 then...
  JP NC,46741             ; ...return
  LD A,30                 ; If Magic Knight is wearing the Shield...
  CALL 45505              ; ...
  JP Z,46719              ; ...then skip ahead to 46719
  LD A,(24768)            ; Else, decrease Magic Knight's current strength by
                          ; one...
  DEC A                   ; ...
  LD (24768),A            ; ...
  CALL 46463              ; Print Magic Knight's current strength at (6, 2) as
                          ; text if he is carrying the Mirror
  LD A,(24768)            ; Load Magic Knight's current strength into A...
  OR A                    ; If Magic Knight's strength is zero...
  LD HL,51071             ; ...point HL to "YOU DIED OF EXHAUSTION" text...
  JP Z,64582              ; ...and jump to "Game over" window routine and exit
  LD C,32                 ; Set C to 32 (number of times to repeat loop below)
  LD A,16                 ; Set speaker bit...
  OUT (254),A             ; ...
  LD A,R                  ; Load A with random number between 0 - 15 (as R
                          ; register increases with each instruction
                          ; executed)...
  AND 15                  ; ...
  LD B,A                  ; Load value into B
  DJNZ 46730              ; Pause by repeating this line B times
  XOR A                   ; Set A to zero
  OUT (254),A             ; Reset speaker bit
  DEC C                   ; Decrease C...
  JR NZ,46721             ; ...and repeat loop if C is not zero
  XOR A                   ; Reset speaker bit...
  OUT (254),A             ; ...
  RET                     ; Return

; Multiply x or y Velocity of axe by Minus One
;
; Used by the routine at 46560. Input:  IX  Address of x or y "velocity" of axe
; minus two
  LD A,(IX+2)             ; Load A with x "velocity" of axe
  NEG                     ; Multiply velocity by minus one
  LD (IX+2),A             ; Load back into data block
  XOR A                   ; Set A to zero
  RET                     ; Return

; Properties of the Axes
;
; Up to four axes may exist in a room, therefore there are four entries in this
; table. Each axe's properties are encoded in eight bytes with the following
; meanings:
  DEFB 12,112,4,2,116,0,0,0 ; Axe 1
  DEFB 12,112,2,252,116,0,0,0 ; Axe 2
  DEFB 200,120,252,2,116,0,0,0 ; Axe 3
  DEFB 200,120,254,252,116,0,0,0 ; Axe 4

; Draw Axe(s) to Screen if Magic Knight is in an Axe Room
;
; Used by the routines at 38841, 39393, 61823 and 61860.
  LD A,(23702)            ; If Magic Knight's current room's index is less than
                          ; 17...
  CP 17                   ; ...i.e. he is outside the Castle / Spaceship...
  RET C                   ; ...then return
  CP 23                   ; If Magic Knight's current room's index is 23 or
                          ; more (not in any, except last, Castle ground floor
                          ; room)...
  RET NC                  ; ...then return
  LD HL,46752             ; Load HL with start address of properties of axe 0
  CALL 46823              ; Draw axe 0
  LD A,(23702)            ; If Magic Knight's current room's index is less than
                          ; 21...
  CP 21                   ; ...i.e. he is on the Castle ground floor, in room
                          ; 0, 1, 2 or 3...
  RET C                   ; ...then return (only one axe in these rooms)
  LD BC,4                 ; Advance HL to start of properties of axe 1...
  ADD HL,BC               ; ...
  CALL 46823              ; Draw axe 0
  LD BC,4                 ; Advance HL to start of properties of axe 2...
  ADD HL,BC               ; ...
  CALL 46823              ; Draw axe 0
  LD BC,4                 ; Advance HL to start of properties of axe 3...
  ADD HL,BC               ; ...
  LD E,(HL)               ; Load E with current axe's x-coordinate...
  INC HL                  ; ...
  LD D,(HL)               ; Load D with current axe's y-coordinate...
  LD (23677),DE           ; ...and store coordinates in system variable COORDS
  INC HL                  ; Advance HL to axe frame number...
  INC HL                  ; ...
  INC HL                  ; ...
  LD A,(HL)               ; ...and load into A
  JP 63040                ; Draw axe to screen and return

; Splice Numeric Data A as a String into a String at HL
;
; Used by the routines at 38024, 40489, 42938, 43000, 45522 and 46463. Input:
; A  Numeric value to put into string HL  Address of string to modify
  PUSH HL                 ; Store HL (address of string to modify)
  LD HL,23430             ; Point HL at destination location for ASCII string
  LD B,0                  ; Load numeric value into BC...
  LD C,A                  ; ...
  CALL 47797              ; Convert numeric value BC to ASCII string at address
                          ; in HL (23430)
  LD HL,23432             ; Point HL at third digit in converted five-digit
                          ; string
  LD C,2                  ; Load C with 2 (as we can have up to two leading
                          ; zeroes on a three-digit number)
  LD A,(HL)               ; Load ASCII character at HL into A
  CP 48                   ; If character is not a zero ("0")...
  JR NZ,46863             ; ...then skip ahead to 46863
  LD (HL),32              ; Replace the zero character with a space (i.e.
                          ; remove leading zeroes from number)
  INC HL                  ; Advance to next character in string
  DEC C                   ; Decrease C (number of remaining digits to process)
  JR NZ,46852             ; Loop back to 46852 if there are still digits to
                          ; process
  POP DE                  ; Restore pointer to "numeric text" (originally in HL
                          ; at start of this routine) into DE
  LD HL,23432             ; Point HL at string just created
  LD BC,3                 ; Splice ASCII string number just generated into
                          ; "numeric data" text
  LDIR                    ; ...
  RET                     ; Return

; Print Text at Location HL to Screen Using Full Screen Width
;
; Used by the routines at 39578 and 63598. Input:  HL  Text to print
  LD A,(23410)            ; Load A with x-coordinate of right edge of current
                          ; window to draw (characters)
  PUSH AF                 ; Store AF (A = x-coordinate of right edge of current
                          ; window)
  LD A,31                 ; Set right-edge x-coordinate value at 23410 to 31...
  LD (23410),A            ; ...
  LD A,(23408)            ; Load A with x-coordinate of left edge of current
                          ; window to draw (characters)
  PUSH AF                 ; Store AF (A = x-coordinate of left edge of current
                          ; window)
  XOR A                   ; Set left-edge x-coordinate value at 23408 to
                          ; zero...
  LD (23408),A            ; ...
  CALL 46902              ; Print text at location HL to screen
  POP AF                  ; Restore x-coordinate of left edge of current
                          ; window...
  LD (23408),A            ; ...to 23408
  POP AF                  ; Restore x-coordinate of right edge of current
                          ; window...
  LD (23410),A            ; ...to 23410
  RET                     ; Return

; Print Text at Location HL to Screen
;
; Used by the routines at 37764, 37909, 37951, 38780, 38829, 40258, 40489,
; 42494, 42616, 42638, 43043, 43874, 44253, 44635, 45552, 45641, 45685, 45723,
; 45809, 45963, 46106, 46463, 46873, 63349, 63399, 64207, 64230, 64317 and
; 64582. Input:  HL  Points to text data to print
  LD IX,25060             ; Point IX at start of Temporary Text Buffer
  LD A,255                ; Prepare Recursion Depth Counter for loop...
  LD (23398),A            ; ...
; This entry point is used by the routine at 47049.
  LD A,(23398)            ; Increase Recursion Depth Counter...
  INC A                   ; ...
  LD (23398),A            ; ...
  PUSH HL                 ; Store HL
  CALL 63286              ; Update Attribute Virtual Text Cursor based upon
                          ; current Bitmap Virtual Text Cursor
  POP HL                  ; Restore HL
  DEC HL                  ; Prepare pointer to text to print for loop
; This entry point is used by the routines at 47020, 47096 and 48389.
  LD A,(23398)            ; Load A with value in Recursion Depth Counter...
  CP 255                  ; ...and if this is 255 (i.e. no more text to
                          ; print)...
  JP Z,47178              ; ...then return (see trivia)
  INC HL                  ; Advance to next character code to be printed...
  LD A,(HL)               ; ...and load into A
  OR A                    ; If character code is a zero (i.e. End Marker)...
  JP Z,47023              ; ...then return from current level of text printing
  CP 32                   ; If the character is a "32" (SPACE)...
  JP Z,48389              ; ...then print word in Temporary Text Buffer to
                          ; screen, wrapping text if necessary, then jump to
                          ; 46924 to load next word
  CP 31                   ; If the character is a "31"...
  JP Z,47170              ; ...then print the Current Character's short name
  CP 30                   ; If the character is a "30"...
  JP Z,47162              ; ...then print the Current Character's full name
  CP 29                   ; If the character is a "29"...
  JP Z,47110              ; ...then print the Current Object's name
  CP 28                   ; If the character is a "28"...
  JP Z,47121              ; ... then print appropriate Newspaper substring for
                          ; current required disquise
  CP 27                   ; If the character is a "27"...
  JP Z,47132              ; ...then print current Crystal Ball substring
  CP 26                   ; If the character is a "26"...
  JP Z,47143              ; ...then print current Scroll substring
  CP 25                   ; If the character is a "25"...
  JP Z,47154              ; ...then print the name of the Current Command
  CP 19                   ; If the character is a "19"...
  JP Z,47080              ; ...then toggle BRIGHT Flag then loop back to 46924
                          ; for next data
  CP 18                   ; If the character is a "18"...
  JP Z,47084              ; ...then toggle FLASH Flag then loop back to 46924
                          ; for next data
  CP 17                   ; If the character is a "17"...
  JP Z,47092              ; ...then change PAPER colour based upon following
                          ; data byte then loop back to 46924 for next data
  CP 16                   ; If the character is a "16"...
  JP Z,47096              ; ...then change INK colour based upon following data
                          ; byte then loop back to 46924 for next data
  CP 14                   ; If the character is a "14" (Carriage return / line
                          ; feed to start of next character row down within
                          ; window)...
  JP Z,48389              ; ...then print word in Temporary Text Buffer to
                          ; screen, wrapping text if necessary, then jump to
                          ; 46924 to load next word
  CP 13                   ; If the character is a "13" (Carriage return / line
                          ; feed to start of next character row down)...
  JP Z,48389              ; ...then print word in Temporary Text Buffer to
                          ; screen, wrapping text if necessary, then jump to
                          ; 46924 to load next word
  CP 91                   ; If value is 91 or greater (i.e. special
                          ; character)...
  JP NC,47049             ; ...then print an entry from the Common Words Table
  LD (IX+0),A             ; Load character into Temporary Text Buffer
  INC IX                  ; Advance to next position in temporary text buffer
  JR 46924                ; Loop back to 46924

; Return from recursive text-printing
;
; Used by the routine at 47049.
  POP HL                  ; Restore HL (pointer to current position in text to
                          ; print)
  JR 46924                ; Jump back into text printing routine to process
                          ; next character in parent string

; Text Printing Return from current level of text printing
;
; Used by the routine at 46902.
  PUSH AF                 ; Store AF
  LD A,(23398)            ; Load Recursion Depth Counter into B...
  LD B,A                  ; ...
  POP AF                  ; Restore AF
  OR B                    ; If Recursion Depth Counter is not zero (i.e. we are
                          ; not at the end of the top-level string)...
  JR NZ,47041             ; ...then skip ahead to 47041
  DEC A                   ; Decrease Recursion Depth Counter to 255, as we have
                          ; reached the end of the top-level string...
  LD (23398),A            ; ...
  LD A,255                ; Load A with 255 (End Marker)
  JP 48389                ; Print word in Temporary Text Buffer to screen,
                          ; wrapping text if necessary, then process next word
  LD A,(23398)            ; Decrease Recursion Depth Counter...
  DEC A                   ; ...
  LD (23398),A            ; ...
  RET                     ; Return

; Text Printing Print an entry from the Common Words Table
;
; Used by the routines at 46902, 47154, 47162 and 47170. Input:  A  (Entry at
; 47049 only) 91 + Index of required entry in Common Words Table A  (Entry at
; 47055 only) Index of required entry in list of texts HL (Entry at 47055 only)
; Start address of a list of texts
  PUSH HL                 ; Store HL (pointer to current position in text to
                          ; print)
  LD HL,57693             ; Point HL at start of Common Words Table
  SUB 91                  ; Subtract 91 to get absolute index of required entry
                          ; in table
; This entry point is used by the routines at 47110, 47121, 47132 and 47143.
  JR Z,47075              ; If index is zero (i.e. first entry is required)
                          ; then skip ahead to 47075
  CP 100                  ; If index is at least 100...
  CALL NC,47179           ; ...then advance HL to second part of Common Words
                          ; Table and subtract 100 from required index (see
                          ; trivia)
  JR Z,47075              ; If index is zero (i.e. first entry is required)
                          ; then skip ahead to 47075
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
  DJNZ 47065              ; Loop back to 47065
  CALL 46911              ; Call text printing routine recursively to print the
                          ; common word
  JR 47020                ; Restore HL (pointer to current position in text to
                          ; print) then jump back into text printing routine to
                          ; process next character in parent string

; Text Printing Toggle BRIGHT Flag
;
; Used by the routine at 46902.
  LD B,64                 ; Load B with 64 (BRIGHT flag)
  JR 47086                ; Skip ahead to 47086 (toggle BRIGHT flag, store ATTR
                          ; T system variable and jump back to start of text
                          ; printing loop to process next data byte)

; Text Printing Toggle FLASH Flag
;
; Used by the routine at 46902.
  LD B,128                ; Load B with 128 (FLASH flag)
; This entry point is used by the routine at 47080.
  LD A,(23695)            ; Load A with current ATTR T system variable value
  XOR B                   ; Toggle FLASH flag
  JR 47104                ; Store ATTR T system variable and jump back to start
                          ; of text printing loop to process next data byte

; Text Printing Change PAPER Colour
;
; Used by the routine at 46902.
  LD B,199                ; Load B with attribute mask (FLASH, BRIGHT and all
                          ; INK bits set, all PAPER bits reset)
  JR 47098                ; Change PAPER colour then jump back to start of text
                          ; printing loop to process next data byte

; Text Printing Change INK Colour
;
; Used by the routine at 46902.
  LD B,248                ; Load B with attribute mask (FLASH, BRIGHT and all
                          ; PAPER bits set, all INK bits reset)
; This entry point is used by the routine at 47092.
  INC HL                  ; Advance HL pointer to next byte in text data
  LD A,(23695)            ; Load ATTR T system variable value into A
  AND B                   ; Apply mask to reset all INK bits
  OR (HL)                 ; Set INK bits as defined in next text data byte
; This entry point is used by the routine at 47084.
  LD (23695),A            ; Store new value of ATTR T
  JP 46924                ; Jump back to start of text printing loop to process
                          ; next data byte

; Print the Current Object's Name
;
; Used by the routine at 46902.
  PUSH HL                 ; Store HL (current position in text data)
  LD HL,56565             ; Point HL at start of Table of Object Names
  LD A,(41779)            ; Load A with index of Current Object
  OR A                    ; Set Zero Flag is object index is zero
  JP 47055                ; Jump back to print this object's name

; Print Appropriate Newspaper Substring for Current Required Disquise
;
; Used by the routine at 46902.
  PUSH HL                 ; Store HL
  LD HL,54027             ; Load HL with start address for Newspaper Substrings
  LD A,(23703)            ; Load A with Index of Required Disquise...
  OR A                    ; ...and set Zero Flag if index is zero
  JP 47055                ; Jump back to print this newspaper string

; Print Current Crystal Ball Substring
;
; Used by the routine at 46902.
  PUSH HL                 ; Store HL
  LD HL,54586             ; Load HL with start address for Crystal Ball
                          ; Substrings
  LD A,(23713)            ; Load A with index of current Crystal Ball
                          ; substring...
  OR A                    ; ...and set Zero Flag if index is zero
  JP 47055                ; Jump back to print this Crystal Ball substring

; Print Current Scroll Substring
;
; Used by the routine at 46902.
  PUSH HL                 ; Store HL
  LD HL,54902             ; Load HL with start address for Scroll Substrings
  LD A,(23714)            ; Load A with index of current Scroll substring...
  OR A                    ; ...and set Zero Flag if index is zero
  JP 47055                ; Jump back to print this scroll substring

; Print the Name of the Current Command
;
; Used by the routine at 46902.
  LD A,(23716)            ; Load A with index of Current Command
  ADD A,234               ; Add 234 (as 234 is the index of the first of the
                          ; list of command names in the Common Words Table)
  JP 47049                ; Print an entry (A) from the Common Words Table

; Print the Current Character's Full Name
;
; Used by the routine at 46902.
  LD A,(41937)            ; Load A with index of Current Character
  ADD A,217               ; Add 217 (as 217 is the index of the first of the
                          ; list of characters' full names in the Common Words
                          ; Table)
  JP 47049                ; Print an entry (A) from the Common Words Table

; Print the Current Character's Short Name
;
; Used by the routine at 46902.
  LD A,(41937)            ; Load A with index of Current Character
  ADD A,201               ; Add 201 (as 201 is the index of the first of the
                          ; list of characters' short names in the Common Words
                          ; Table)
  JP 47049                ; Print an entry (A) from the Common Words Table

; Return
;
; See trivia
  RET                     ; Return

; Subtract 100 from Common Word Index and Jump to Second Part of Common Words
; Table
;
; This routine is redundant in that if it is skipped (via a RET at 47179) the
; game continues to function normally (see trivia). Input:  A  Index of common
; word required Output: A  Modified common word index (as input, minus 100)
  LD HL,58459             ; Advance to second part of Common Words Table
  SUB 100                 ; Subtract 100 from index required
  RET                     ; Return

; Draw a Menu Window
;
; Used by the routines at 37764, 37909, 42494, 42638, 43043, 43874, 44635,
; 45809, 45963, 46106 and 64207.
  EX AF,AF'               ; Swap AF register (A holds index of window to draw)
  LD A,105                ; Load the value 105 into 47289 (i.e. set "Draw Menu
                          ; (Hand) Cursor" 'flag' to true)...
  LD (47290),A            ; ...
  JR 47199                ; Draw the window

; Draw a Window
;
; Used by the routines at 37764, 37909, 37951, 38780, 40258, 42638, 44253,
; 45552, 45641, 45685, 45723, 45809, 45963, 63399, 64230, 64317 and 64582.
; Input:  A  Index of window to draw
  EX AF,AF'               ; Switch AF and AF'
  LD A,111                ; Reset "Draw Hand Menu Cursor" Flag (later in this
                          ; routine)...
  LD (47290),A            ; ...
; This entry point is used by the routine at 47185.
  SET 1,(IY+65)           ; Set Characters Movement Unrestricted Flag / Disable
                          ; In-Game Glow Flag (IY = 23610)
  EX AF,AF'               ; Restore original AF (with A being index of window)
  LD (63400),A            ; Set this index as the "current" window index
  LD L,A                  ; Load HL with A value (index of required window)...
  LD H,0                  ; ...
  ADD HL,HL               ; Multiply index by eight (as each window's data
                          ; takes up eight bytes in table at 49034)...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  LD BC,49034             ; Set BC to start of window data table
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
  LD (23408),DE           ; Store values for later use...
  LD (23410),BC           ; ...
  INC HL                  ; Load A with window's upper edge border style...
  LD A,(HL)               ; ...
  LD (63306),A            ; Store for later use in routine at 63302
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
  CALL 47326              ; Draw window frame
  LD HL,23408             ; Point HL at previously stored values
  INC (HL)                ; Increase top-left x-coordinate
  INC HL                  ; Increase top-left y-coordinate...
  INC (HL)                ; ...
  INC HL                  ; Decrease bottom-right x-coordinate...
  DEC (HL)                ; ...
  INC HL                  ; Decrease bottom-right y-coordinate...
  DEC (HL)                ; ...
  LD A,(23481)            ; Load window content attribute into A
  LD (48035),A            ; Prepare to fill a region with the attribute in A
  LD (23695),A            ; Update ATTR T system variable with window content
                          ; attribute
  CALL 48027              ; Fill a region of Attribute File with specified
                          ; attribute
  CALL 48081              ; Blank the interior of the window (Display File)
  LD HL,23408             ; Load x-coordinate of left of interior of window
                          ; into C...
  LD C,(HL)               ; ...
  INC HL                  ; Load y-coordinate of top of interior of window into
                          ; B...
  LD B,(HL)               ; ...
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  PUSH HL                 ; Store HL (address in Display File of top-left of
                          ; interior of window)
; The operand of the instruction at 47289 represents the "Draw Hand Menu
; Cursor" Flag. This is modified by the instructions at 47188 and 47196.
  LD A,0                  ; Load A with "Draw Hand Menu Cursor" Flag
  CP 105                  ; If value is not 105...
  JP NZ,47317             ; ...then jump to 47317 (i.e. don't draw the hand
                          ; cursor)
; Window is a menu (105)
  LD BC,(23408)           ; Load B with y-coordinate of top edge and C with
                          ; x-coordinate of left edge
  LD A,(23456)            ; Load A with starting y-coordinate of hand cursor
  ADD A,B                 ; Add y-coordinate of top of area to this...
  LD B,A                  ; ...and place back into B
  LD A,2                  ; Load A with 2 (graphic lookup index of Menu Hand
                          ; Cursor graphic in table at 29272)
  LD DE,514               ; Load D (graphic width) with 2 and E (graphic
                          ; height) with 2
  PUSH IX                 ; Store IX
  CALL 63507              ; Draw a Graphic with Lookup Index A at Character
                          ; Coordinates (C, B) with width = E characters and
                          ; height = D characters
  POP IX                  ; Restore IX
  XOR A                   ; Set A to zero
  LD (23479),A            ; Set hand cursor's current y-coordinate to zero
                          ; (i.e. defaults to top of its movement range within
                          ; current window)
  POP HL                  ; Restore HL (address in Display File of top-left of
                          ; interior of window)
  LD (63018),HL           ; Set memory location to start printing character in
                          ; character printing routine
  RET                     ; Return

; Draw a Window Frame
;
; Used by the routine at 47193.
  LD (23695),A            ; Store border attribute in ATTR T system variable
  LD A,(23408)            ; Load A with x-coordinate of left of window
  LD C,A                  ; Copy into C
  LD A,(23410)            ; Load A with x-coordinate of right of window
  SUB C                   ; Get distance between left and right coordinates
  DEC A                   ; Subtract 1 to get width of window top-edge (not
                          ; including corner pieces)
  LD C,A                  ; Transfer this to BC...
  LD B,0                  ; ...
  PUSH BC                 ; Store BC (width of top edge of window, not
                          ; including corner pieces)
  LD BC,(23408)           ; Load B with y-coordinate of top edge and C with
                          ; x-coordinate of left edge
  INC C                   ; Increase C by one (as top edge strictly starts one
                          ; to the right of this x-coordinate - the left-most
                          ; is actually a corner piece, not an edge)
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  POP HL                  ; Restore HL (width of top edge of window, not
                          ; including corner pieces)
  PUSH HL                 ; Store HL (width of top edge of window, not
                          ; including corner pieces)
  HALT                    ; Wait for interrupt
  CALL 47491              ; Draw upper window frame edge then increment the
                          ; border character index in routine at 63302
  LD A,(23408)            ; Load C with x-coordinate of left of window...
  LD C,A                  ; ...
  LD A,(23411)            ; Load B with y-coordinate of bottom of window...
  LD B,A                  ; ...
  INC C                   ; Increase C by one (as bottom edge strictly starts
                          ; one to the right of this x-coordinate - the
                          ; left-most is actually a corner piece, not an edge)
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  POP HL                  ; Restore HL (width of bottom edge of window)...
  CALL 47491              ; Draw lower window frame edge then increment the
                          ; border character index in routine at 63302
  LD A,(23409)            ; Load y-coordinate of top of window into B...
  LD B,A                  ; ...
  LD A,(23411)            ; Load y-coordinate of bottom of window into A
  SUB B                   ; Subtract B...
  DEC A                   ; ...and decrease by one to get length of left-edge
                          ; (not including corner pieces)
  PUSH AF                 ; Store AF (A = remaining length of left / right
                          ; edges)
  LD BC,(23408)           ; Load B with y-coordinate of top edge and C with
                          ; x-coordinate of left edge
  ADD A,B                 ; Add A and B to get y-coordinate of character to
                          ; draw in left edge...
  LD B,A                  ; ...and load into B
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  LD A,(63306)            ; Load A with index of character (left edge) to draw
  CALL 63005              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  LD HL,(63018)           ; Load HL with address of Bitmap Virtual Text Cursor
  LD A,L                  ; Load A with LSB of Display File address (virtual
                          ; attribute cursor location)
  AND 224                 ; Decrease to nearest multiple of 32 (i.e. start of
                          ; character row)...
  LD L,A                  ; ...and place back in L
  LD A,(23410)            ; Load A with x-coordinate of right edge of window
                          ; (characters)
  OR L                    ; Add this x-coordinate to value in HL...
  LD L,A                  ; ...
  LD (63018),HL           ; ...and update address of Bitmap Virtual Text Cursor
  LD A,(63306)            ; Load A with index of character (left edge) to
                          ; draw...
  INC A                   ; ...and increment index to get index of right-edge
                          ; character
  CALL 63005              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  POP AF                  ; Restore AF (A = remaining length of left / right
                          ; edges)
  DEC A                   ; Decrease remaining length
  JP NZ,47381             ; If remaining length is not zero then loop back to
                          ; 47381
  LD A,(23410)            ; Load C with x-coordinate of right edge of window
                          ; (characters)...
  LD C,A                  ; ...
  LD A,(23409)            ; Load y-coordinate of top edge of window into B...
  LD B,A                  ; ...
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  LD A,(63306)            ; Load A with index of character (left-edge) to
                          ; draw...
  INC A                   ; ...and increment (to get right-edge character)
  CALL 47497              ; Increment index again (to get top-right corner
                          ; character) and store at 63305
  CALL 63005              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  LD BC,(23410)           ; Load B with y-coordinate of window's bottom edge
                          ; and C with x-coordinate of window's right-edge
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  CALL 47494              ; Increment index of window frame character currently
                          ; in use to get bottom-right corner character
  CALL 63005              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  LD A,(23408)            ; Load C with x-coordinate of left edge of current
                          ; window to draw (characters)...
  LD C,A                  ; ...
  LD A,(23411)            ; Load B with y-coordinate of window's bottom edge...
  LD B,A                  ; ...
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  CALL 47494              ; Increment index of window frame character currently
                          ; in use to get bottom-left corner character
  CALL 63005              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  LD BC,(23408)           ; Load B with y-coordinate of top-edge of window and
                          ; C with x-coordinate of left-edge of window
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  CALL 47494              ; Increment index of window frame character currently
                          ; in use to get top-left corner character
  CALL 63005              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  JP 63472                ; Update Character Printing Routine to use base
                          ; address of Text Character Set graphics and return

; Draw an upper or lower window frame edge then increment the border character
; index
;
; Used by the routine at 47326. Input:  A  (Input, 47497) Previous border edge
; character index used HL  (Input, 47491) Width of window edge to draw
; (characters, minus 1)
  CALL 63302              ; Draw an Edge of Frame of a Window
; This entry point is used by the routine at 47326.
  LD A,(63306)            ; Load A with window edge border character previously
                          ; used
; This entry point is used by the routine at 47326.
  INC A                   ; Increase index of window edge border character to
                          ; use next...
  LD (63306),A            ; ...and store at 63305
  RET                     ; Return

; Process Keyboard / Joystick Input on a Menu and Load A with Selected Item
; Index
;
; Used by the routines at 37689, 37764, 42494, 42638, 43043, 43874, 44635,
; 45809, 45963, 46106 and 64207. Output: A  Selected menu item index
; (zero-based)
  LD A,(47290)            ; Check whether to draw hand cursor on menu...
  CP 105                  ; ...and if not...
  RET NZ                  ; ...then return
  LD A,(23408)            ; Load A with x-coordinate of left edge of current
                          ; window to draw (characters)...
  LD (23404),A            ; ...and store at 23404
  INC A                   ; Increase by one character...
  LD (23405),A            ; ...and store for later use
  LD A,(23456)            ; Load starting y-coordinate of hand cursor into A...
  LD B,A                  ; and copy into B
  LD A,(23409)            ; Load y-coordinate of current window's top-left
                          ; corner into A...
  ADD A,B                 ; ...add to B...
  ADD A,A                 ; ...and multiply by 8 to get y-coordinate of top of
                          ; hand cursor in pixels...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (23406),A            ; Then store for later use
  LD A,(23411)            ; Load y-coordinate of current window's bottom edge
                          ; into A...
  ADD A,A                 ; ...multiply by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,7                 ; ...then add 7 to get y-coordinate of absolute
                          ; bottom of window in pixels
  LD (23407),A            ; ...and store for later
  LD A,(23409)            ; Load y-coordinate of current window's top-left
                          ; corner into A...
  LD B,A                  ; ...and copy into B
  LD A,(23411)            ; Load y-coordinate of current window's bottom-right
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
  CALL 47731              ; ...and invert INK and PAPER bits to highlight
                          ; currently active menu item at this position
; This entry point is used by the routines at 47603 and 47665.
  CALL 64034              ; Capture keyboard or joystick input loading result
                          ; into A
  HALT                    ; Wait for interrupt
  BIT 2,A                 ; If "up" pressed then...
  JP NZ,47603             ; ...jump to routine to move Hand Cursor up and
                          ; update menu item highlighting
  BIT 3,A                 ; If "down" pressed then...
  JP NZ,47665             ; ...jump to routine to move Hand Cursor down and
                          ; update menu item highlighting
  BIT 4,A                 ; If "fire" has not been pressed then...
  JR Z,47571              ; Loop back to 47571
  JP 47703                ; Load A with (zero-based) index of selected menu
                          ; item and return

; Wait for Fire Button / Key to be Released
;
; Used by the routines at 38205, 47703 and 64230.
  PUSH AF                 ; Store AF
  HALT                    ; Wait for interrupt
  CALL 64034              ; Capture keyboard or joystick input loading result
                          ; into A
  BIT 4,A                 ; If fire button / key pressed...
  JR NZ,47593             ; ...loop back to 47593
  POP AF                  ; Restore AF
  RET                     ; Return

; Move Hand Cursor Up and Update Menu Item Highlighting
;
; Used by the routine at 47502.
  LD A,(23479)            ; Load menu hand cursor's current y-coordinate into A
  OR A                    ; If coordinate is zero...
  JP Z,47571              ; ...then jump to 47571 (return to menu input
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
  CALL 64354              ; Scroll a region of the Display File up two pixel
                          ; rows without wrapping...
  CALL 64354              ; ...
; This entry point is used by the routine at 47665.
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
  JP Z,47571              ; ...then jump to 47571 (return to menu input
                          ; handling routine)
  LD A,(23478)            ; Load A with previous y-coordinate in pixels...
  CALL 47731              ; ...and invert INK and PAPER bits to remove
                          ; highlighting at this location
  LD A,(23479)            ; Load A with new y-coordinate in pixels...
  CALL 47731              ; and invert INK and PAPER bits to apply highlighting
                          ; at this location
  JP 47571                ; Jump to 47571 (return to menu input handling
                          ; routine)

; Move Hand Cursor Down and Update Menu Item Highlighting
;
; Used by the routine at 47502.
  LD A,(23479)            ; Load menu hand cursor's current y-coordinate into A
  LD HL,23475             ; If height available to Menu Hand Cursor to move
                          ; down (in pixels, stored at 23475) is the same as
                          ; the cursor's current y-coordinate...
  CP (HL)                 ; ...i.e. the cursor cannot move any further down...
  JP Z,47571              ; ...then jump to 47571 (return to menu input
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
  CALL 64361              ; Scroll a region of the Display File down two pixel
                          ; rows without wrapping...
  CALL 64361              ; ...
  JP 47635                ; Jump to 47635 (update menu highlighting as
                          ; appropriate then jump to menu input handling
                          ; routine)

; Load A with (Zero-Based) Index of Selected Menu Item
;
; Used by the routine at 47502. Output: A  Selected menu item index
; (zero-based)
  CALL 47592              ; Wait for Fire Button / Key to be Released
  LD BC,(23476)           ; Load BC with absolute coordinates (characters) of
                          ; start of row of text of interest in menu
  LD A,(23456)            ; Load C with initial y-coordinate of top of Hand
                          ; Cursor relative to current window (characters)...
  LD C,A                  ; ...
  LD A,(23409)            ; Load A with y-coordinate of top edge of current
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
  CALL 47731              ; ...and use to de-highlight selected menu item
  POP AF                  ; Restore AF (A = selected item index)
  RET                     ; Return

; Invert INK and PAPER bits to (De-)Highlight Currently Active Menu Item
;
; Used by the routines at 47502, 47603 and 47703. Input:  A  y-coordinate of
; Menu Hand Cursor (pixels)
  PUSH AF                 ; Store AF (A = y-coordinate of Menu Hand Cursor)
  LD A,(23408)            ; Load A with x-coordinate of left edge of current
                          ; window to draw (characters)
  ADD A,2                 ; Add 2, as Menu Hand Cursor is two characters
                          ; wide...
  LD C,A                  ; ...and load into C (x-coordinate of start of row of
                          ; text in menu)
  POP AF                  ; Restore AF (A = y-coordinate of Menu Hand Cursor)
  ADD A,5                 ; Add five (as the "finger" of the cursor naturally
                          ; points five pixels below the cursor's actual
                          ; position)
  CALL 40658              ; Divide this new y-coordinate by eight to get
                          ; y-coordinate in characters
  LD B,A                  ; Load this y-coordinate into B
  LD A,(23456)            ; Load initial y-coordinate of top of hand cursor
                          ; relative to current window, into A
  ADD A,B                 ; Add this to y-coordinate of "finger"
  LD B,A                  ; Load this into B, so that B now contains
                          ; y-coordinate of "finger" relative to top of window
                          ; (characters)
  LD A,(23409)            ; Load y-coordinate of top edge of current window
                          ; into A
  ADD A,B                 ; Add...
  INC A                   ; ...then add one (for window frame at top) so we now
                          ; have absolute y-coordinate of "finger"
  LD B,A                  ; Load into B
  LD (23476),BC           ; Store coordinates at 23476
  CALL 63219              ; Point HL at Attribute File address for character
                          ; coordinates x=C, y=B
  LD A,(23408)            ; Load B with x-coordinate of left edge of current
                          ; window to draw (characters)...
  LD B,A                  ; ...
  LD A,(23410)            ; Load A with x-coordinate of right edge of current
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
  DJNZ 47792              ; Decrease B (remaining number of characters to
                          ; invert) and loop back to 47792 for next character
                          ; block
  RET                     ; Return

; Convert Numeric Value BC to ASCII String at Location HL
;
; Used by the routine at 46837. Input:  BC  A numeric value HL  Points to
; location to hold a five-character string
  PUSH DE                 ; Store DE
  LD DE,62062             ; Point DE at table of powers of ten
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
  JR NC,47814             ; If carry flag was not set then loop back to 47814
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
  JR NZ,47806             ; ...and if not, then loop back to 47806 for next
                          ; power of ten
  POP HL                  ; Restore HL
  POP HL                  ; Restore HL
  POP BC                  ; Restore BC
  POP DE                  ; Restore DE
  RET                     ; Return

; Clear Lower Two Thirds, and Lower Three Character Rows of Upper Third of
; Display File
;
; Used by the routine at 38841.
  LD HL,16544             ; Load HL with Display File address corresponding to
                          ; (0, 5) (characters)
  LD (63018),HL           ; ...and move Bitmap Virtual Text Cursor here
  LD HL,96                ; Load HL with 96 (repeat count)
  LD A,32                 ; Load A with 32 (character code for SPACE)...
  LD (63306),A            ; ...and store at 63305
  CALL 63302              ; Draw three rows of SPACE characters and set HL to
                          ; zero
  LD BC,8                 ; Load B with 0 (repeat inner loop 256 times) and C
                          ; with 8 (repeat outer loop 8 times)
  JP 47862                ; Clear lower two thirds of Display File and return

; Clear Display File
;
; When this routine is entered via 47856 and 47862, B is set to zero. Upon
; reaching the DJNZ instruction (end of inner loop) at 47871, B is already
; zero, so the loop will execute 256 times, clearing one twelfth of the Display
; File (two bytes cleared per PUSH, 256 PUSHes per loop).
  LD HL,0                 ; Load zero (all bits reset) into HL
  LD BC,12                ; Load B with 0 (repeat inner loop 256 times) and C
                          ; with 12 (repeat outer loop 12 times)
; This entry point is used by the routine at 47833.
  DI                      ; Disable interrupts
  LD (47877),SP           ; Store stack pointer at 47876
  LD SP,22528             ; Point stack pointer at start of attribute section
                          ; of video memory
  PUSH HL                 ; Decrease current stack pointer position by two and
                          ; load two zeroes into it
  DJNZ 47870              ; Loop back for next iteration
  DEC C                   ; Decrease C...
  JR NZ,47870             ; ...and repeat if C is still greater than zero, to
                          ; clear the remaining eleven twelfths of the Display
                          ; File
  LD SP,0                 ; Restore stack pointer to original value [Operand
                          ; set by instruction at 47863]
  EI                      ; Enable interrupts
  RET                     ; Return

; Flood Attribute File with Value in ATTR T System Variable
;
; Used by the routine at 37909.
  LD A,(23695)            ; Load ATTR T system variable into A
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
; jumps from other routines into 47902) is a delay constant that determines the
; speed at which the sound is played. Input:  A  (Entry at 47902 only) Delay
; constant
  XOR A                   ; Set A to 0
  LD B,13                 ; Set B to 13 (DEC C)
  LD H,A                  ; Set HL to 0...
  LD L,A                  ; ...
; This entry point is used by the routines at 47930 and 47938.
  LD (47916),A            ; Modify instruction at 47915 with value of delay
                          ; constant
  LD A,B                  ; Load B into A
  LD (47924),A            ; Set instruction at 47924
  LD (47925),HL           ; Set instructions at 47925 and 47926
  CALL 48018              ; Load A with current border colour
; The operand of the instruction at 47915 represents the value of the delay
; constant. This is modified by the instruction at 47902.
  LD C,0                  ; Load C with delay constant
  OUT (254),A             ; Set border colour, and reset ear/speaker
  XOR 16                  ; Invert ear/speaker bit of A
  LD B,C                  ; Load C (delay constant) into B...
  DJNZ 47922              ; ...and delay
; The instructions at 47924 - 47926 represent the manipulation of the delay
; constant between iterations of this routine. These instructions may decrease
; C by one, increase C by three or do nothing. These instructions are modified
; by the instructions at 47906 and 47909.
  DEC C                   ; Decrease / increase delay constant for next pass,
                          ; increasing / decreasing pitch of tone respectively
  NOP                     ; Do nothing, or increase delay constant
  NOP                     ; Do nothing, or increase delay constant
  JR NZ,47917             ; If delay constant is not zero, then loop back to
                          ; continue playing tone
  RET                     ; Return

; Set Parameters for and Play Downward Scale Sound
;
; Used by the routines at 37909, 42494 and 45809.
  XOR A                   ; Set parameters...
  LD B,12                 ; ...(INC C)...
  LD H,A                  ; ...
  LD L,A                  ; ...
  INC A                   ; ...
  JR 47902                ; ...and play sound

; Set Parameters for and Play Short Downward Scale Sound
;
; Used by the routines at 45963 and 46106.
  LD A,1                  ; Set parameters...
  LD B,12                 ; ...(INC C)...
  LD H,B                  ; ...
  LD L,B                  ; ...
  JR 47902                ; ...and play sound

; Play Hiss-Type Sound
;
; Used by the routines at 64207 and 64230.
  CALL 48018
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
  JR C,47979
  DEC A
  LD H,A
  DEC A
  JR NZ,47980
  DEC BC
  LD A,B
  OR C
  JR NZ,47955
  RET

; Set Parameters (for Cheat / Debug Routine Sound) and Play
;
; Used by the routine at 64836.
  LD HL,1222              ; Load HL with bytecodes for instruction "ADD A,4"
  LD DE,0                 ; Load D with 0 and E with 0
  CALL 48018              ; Load A with current border colour
  LD (48010),HL           ; Set instruction at 48010 to "ADD A,4" (opcodes in
                          ; HL)
  OUT (254),A             ; Set current border colour and reset speaker state
  XOR 16                  ; Flip "speaker" bit
  LD B,E                  ; Copy E into B
  DJNZ 48006              ; Delay for period determined by B
  EX AF,AF'               ; Switch AF and AF'
  LD A,E                  ; Copy E into A
  XOR 128                 ; Change E (delay constant)...
  LD E,A                  ; ...
  EX AF,AF'               ; Switch AF and AF' again
  DEC D                   ; Decrease D (initially zero)...
  JR NZ,48001             ; ...and repeat loop (256 times)
  RET                     ; Return

; Get Current Border Colour in A
;
; Used by the routines at 47897, 47946 and 47989. Output: A  Current border
; colour (0 - 7)
  LD A,(23624)            ; Get border & BASIC cursor area attribute
  RRCA                    ; Clear bits for 1, 2 and 4 to leave (border colour *
                          ; 8) only...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 7                   ; Ensure all other bits are cleared
  RET                     ; Return

; Fill a Region of Attribute File with Specified Attribute (e.g. Background
; Colour and Colour of Text Within)
;
; Used by the routine at 47193.
  LD BC,(23408)           ; Load BC with the coordinates of the top-left corner
                          ; of the area to fill
  CALL 63219              ; Load HL with Attribute File address for coordinates
                          ; (C, B)
; The operand of the instruction at 48034 is an attribute value. This is
; modified by the instruction at 47267.
  LD A,0                  ; Load attribute to place into A
  LD (HL),A               ; Apply attribute data to Attribute File address in
                          ; HL
  LD A,(23410)            ; Load A with x-coordinate of right side of area to
                          ; fill
  CP C                    ; Check if left and right edges are at same
                          ; x-coordinate (i.e. zero width)...
  JP Z,48057              ; ...and if so, skip to 48057
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
  JP 48034                ; Loop back to 48034 to print next attribute block
  LD A,(23408)            ; Get x-coordinate of left of area to fill
  LD C,A                  ; Store in C
  LD A,(23411)            ; Get y-coordinate of bottom of area to fill
  CP B                    ; Compare with y-coordinate of top of area to fill
  RET Z                   ; If no difference between current y-coordinate and
                          ; y-coordinate of bottom of area to fill then exit
                          ; function and return
  INC B                   ; Advance current y-coordinate down one unit
  LD A,B                  ; Copy current y-coordinate into A...
  CP 24                   ; ...and ensure it doesn't exceed 24 (i.e. height of
                          ; screen)...
  JP NZ,48075             ; ...if it doesn't then skip ahead to 48075...
  LD B,0                  ; ...else set current y-coord to zero (top of screen)
  CALL 63219              ; Load HL with Attribute File address for coordinates
                          ; (C, B)
  JP 48034                ; Loop back to print next attribute block row

; Blank the Interior of an Area of the Display File (i.e. Set Bytes to Zero)
;
; Used by the routine at 47193.
  PUSH IX                 ; Store IX
  LD BC,(23408)           ; Load B with y-coordinate of top, and C with
                          ; x-coordinate of left of area to fill
  LD DE,(23410)           ; Load D with y-coordinate of bottom, and E with
                          ; x-coordinate of right of area to fill
  LD L,C                  ; Load HL with x-coordinate of left of area to
                          ; fill...
  LD H,0                  ; ...
  LD (48141),HL           ; ...and store as operand of instruction at 48140
  LD A,D                  ; Load A with y-coordinate of bottom of area to
                          ; fill...
  SUB B                   ; ...subtract B (y-coordinate of top of area to
                          ; fill)...
  INC A                   ; ...and add one to give number of rows to fill
  ADD A,A                 ; Multiply A by eight to get number of pixel rows to
                          ; fill...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (48132),A            ; ...and store as operand of instruction at 48131
  LD A,B                  ; Load A with y-coordinate of top of area to fill
                          ; (characters)...
  ADD A,A                 ; ...and multiply by eight to get y-coordinate in
                          ; pixels...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; Load y-coordinate (pixels) into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Double HL (as entries in table at 65140 are two
                          ; bytes wide)
  PUSH DE                 ; Store DE (coordinates of bottom right of area to
                          ; fill)
  LD DE,65140             ; Point DE at Table of Display File Addresses of
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
  LD (48148),HL           ; ...and store as operand of instruction at 48147
; The operand of the instruction at 48131 represents the number of pixel rows
; to fill. This is modified by the instruction at 48103.
  LD B,0                  ; Load B with number of pixel rows to fill
  PUSH BC                 ; Store BC (B = remaining number of pixel rows to
                          ; fill)
  LD L,(IX+0)             ; Load HL with Display File address of start of
                          ; current pixel row...
  LD H,(IX+1)             ; ...
; The operand of the instruction at 48140 represents the x-coordinate of the
; area to fill (characters). This is modified by the instruction at 48094.
  LD BC,0                 ; Load BC with x-coordinate of area to fill
                          ; (characters)...
  ADD HL,BC               ; ...and add to HL as offset
  PUSH HL                 ; Copy Display File address of left-most byte of top
                          ; pixel row of area to fill from HL to DE...
  POP DE                  ; ...
  INC DE                  ; Advance DE to next address in Display File
; The operand of the instruction at 48147 represents the width, minus 1, of the
; area to fill (characters). This is modified by the instruction at 48128.
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
  DJNZ 48133              ; Decrease B (remaining number of pixel rows to fill)
                          ; and loop back to 48133 if not zero
  POP IX                  ; Restore IX
  RET                     ; Return

; Draw all Objects in Magic Knight's Current Room
;
; Used by the routine at 39393.
  LD IX,24922             ; Point IX at start of Objects' Current Positions
                          ; Table
  LD C,0                  ; Set current object to zero
  LD B,42                 ; Set counter to 42 (as there are 42 objects,
                          ; including "Nothing at All")
  LD A,(23702)            ; Load A with Magic Knight's current room
  CP (IX+0)               ; If object and Magic Knight are in the same room...
  CALL Z,48202            ; ...then set Terrain Interaction Data for character
                          ; blocks spanned by that object and draw
  INC C                   ; Increase C
  INC IX                  ; Advance to next object...
  INC IX                  ; ...
  INC IX                  ; ...
  DJNZ 48172              ; ...and loop back to 48172 for next object
  RET                     ; Return

; Set Terrain Interaction Data for Character Blocks Spanned by an Object and
; Draw the Object
;
; Used by the routine at 42638. Input:  A  Index of object to draw (entry at
; 48191 only) B  y-coordinate (entry at 48191 only) C  x-coordinate (entry at
; 48191 only) IX  Position data for an object (entry at 48202 only)
  LD IX,23296             ; Store object's position data temporarily at 23296 -
                          ; 23298...
  LD (IX+1),C             ; ...x-coordinate...
  LD (IX+2),B             ; ...y-coordinate...
  LD C,A                  ; Load index of object of interest into C
; This entry point is used by the routine at 48164.
  PUSH BC                 ; Store BC
  PUSH IX                 ; Store IX
  LD A,C                  ; Load HL with eight times current object index...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; ...
  LD H,0                  ; ...
  ADD HL,HL               ; ...
  LD DE,49361             ; Point DE at last byte (graphic index) of "Nothing
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
  LD (48271),A            ; ...and store as operand of instruction at 48270
  LD C,(IX+1)             ; Load C with x-coordinate of current object
  LD B,(IX+2)             ; Load B with y-coordinate of current object
  DEC B                   ; Decrease y-coordinate by one to point to object's
                          ; top-left character block
  POP AF                  ; Restore AF (A = graphic index)
  PUSH IX                 ; Store IX (pointer to position data for object)
  PUSH BC                 ; Store BC (x- and y-coordinates of object's top-left
                          ; character block)
  CALL 63499              ; Draw 2x2 graphic with lookup index A at character
                          ; coordinates (C, B)
  POP BC                  ; Restore BC (x- and y-coordinates of object's
                          ; top-left character block)
  PUSH BC                 ; Store BC (x- and y-coordinates of object's top-left
                          ; character block)
  LD A,B                  ; If object's y-coordinate is 4 (i.e. drawn in window
                          ; at top while carrying mirror)...
  CP 4                    ; ...
  JR Z,48263              ; ...then skip ahead to 48263
  LD A,(23706)            ; If Player Attribute Update Flag is reset (Player
                          ; Attribute Ignore mode)...
  OR A                    ; ...
  JP Z,48298              ; ...then skip ahead to 48298
  CALL 63219              ; Load HL with Attribute File address for coordinates
                          ; (C, B)
  LD A,(23695)            ; Load E with value of system variable ATTR T...
  LD E,A                  ; ...
; The operand of the instruction at 48270 represents the object's Attribute
; Flags. This is modified by the instruction at 48232.
  LD A,0                  ; Load A with object's Attribute Flags
  BIT 0,A                 ; If Paint Top-Left Flag is reset...
  JR Z,48277              ; ...then skip ahead to 36190
  LD (HL),E               ; Paint top-left character block of object with
                          ; object attribute
  INC HL                  ; Increase HL to move to top-right character block
  BIT 1,A                 ; If Paint Top-Right Flag is reset...
  JR Z,48283              ; ...then skip ahead to 48283
  LD (HL),E               ; Paint top-right character block of object with
                          ; object attribute
  LD BC,31                ; Advance HL by 31 bytes...
  ADD HL,BC               ; ...to point to bottom-left character block of
                          ; object
  BIT 2,A                 ; If Paint Bottom-Left Flag is reset...
  JR Z,48292              ; ...then skip ahead to 48292
  LD (HL),E               ; Paint bottom-left character block of object with
                          ; object attribute
  INC HL                  ; Increase HL to move to bottom-right character block
  BIT 3,A                 ; If Paint Bottom-Right Flag is reset...
  JR Z,48298              ; ...then skip ahead to 48298
  LD (HL),E               ; Paint bottom-right character block of object with
                          ; object attribute
  POP BC                  ; Store BC (x- and y-coordinates of object's top-left
                          ; character block)
  CALL 63233              ; Point HL at terrain interaction data for character
                          ; coordinates x=C, y=B
  LD A,(23473)            ; Load E with object's Terrain Interaction
                          ; Parameter...
  LD E,A                  ; ...
  LD A,(48271)            ; Load A with object's Attribute Flags
  BIT 0,A                 ; If Paint Top-Left Flag is reset...
  JR Z,48314              ; ...then skip ahead to 48314
  LD (HL),E               ; "Paint" object's Terrain Interaction Parameter into
                          ; Terrain Interaction Data Table for top-left
                          ; character block
  INC HL                  ; Increase HL to move to top-right character block
  BIT 1,A                 ; If Paint Top-Right Flag is reset...
  JR Z,48320              ; ...then skip ahead to 48320
  LD (HL),E               ; "Paint" object's Terrain Interaction Parameter into
                          ; Terrain Interaction Data Table for top-right
                          ; character block
  LD BC,31                ; Advance HL by 31 bytes...
  ADD HL,BC               ; ...to point to bottom-left character block of
                          ; object
  BIT 2,A                 ; If Paint Bottom-Left Flag is reset...
  JR Z,48329              ; ...then skip ahead to 48329
  LD (HL),E               ; "Paint" object's Terrain Interaction Parameter into
                          ; Terrain Interaction Data Table for bottom-left
                          ; character block
  INC HL                  ; Increase HL to move to bottom-right character block
  BIT 3,A                 ; If Paint Bottom-Right Flag is reset...
  JR Z,48335              ; ...then skip ahead to 48335
  LD (HL),E               ; "Paint" object's Terrain Interaction Parameter into
                          ; Terrain Interaction Data Table for bottom-right
                          ; character block
  POP IX                  ; Restore IX (pointer to position data for object)
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  RET                     ; Return

; Remove Object C from a Character's Inventory and Tidy Up Remaining Entries
;
; Used by the routines at 41748, 42036, 42157, 42395, 43636, 44635, 45149 and
; 45256. Input:  B Number of inventory slots to check C  Index of object to be
; removed HL  Pointer to a character's current inventory
  LD A,(HL)               ; Load A with inventory object
  CP C                    ; If this matches index in C...
  JR Z,48349              ; ...then skip ahead to 48349
  INC HL                  ; Advance to next inventory slot...
  DJNZ 48341              ; ...and loop back to 48341 for next slot
  RET                     ; Return if object not found
  INC HL                  ; Advance to next inventory slot
  LD A,(HL)               ; Load object at this slot into A
  DEC HL                  ; Move back to previous slot again
  LD (HL),A               ; Place object from next slot into current one
  INC HL                  ; Advance to next slot again
  DJNZ 48349              ; Loop back to 48349 (i.e. repeat for all remaining
                          ; slots)
  DEC HL                  ; Move back to previous slot (i.e. final slot for
                          ; this character)...
  XOR A                   ; ...and set to empty...
  LD (HL),A               ; ...
  RET                     ; Return

; Draw a Line From (C, B) to (E, D)
;
; Used by the routines at 40008 and 40765. Input:  B  y-coordinate of start of
; line C  x-coordinate of start of line D  y-coordinate of end of line E
; x-coordinate of end of line
  LD (23677),DE           ; Load contents of DE into system variable COORDS
                          ; (start point of line)
  LD A,B                  ; Subtract y-coordinate of start of line from
                          ; y-coordinate of end of line...
  SUB D                   ; ...to get delta-y
  LD D,1                  ; Set direction of vertical change to +1 (upward)
  JR NC,48374             ; If delta-y is positive (i.e. upward) then skip
                          ; ahead to 48374
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
  JR NC,48385             ; If delta-x is positive (i.e. rightward) then skip
                          ; ahead to 48385
  CPL                     ; Multiply delta-x by -1 (leftward) to get absolute
                          ; magnitude...
  INC A                   ; ...
  LD E,255                ; Set direction of vertical change to -1 (leftward)
  LD C,A                  ; Load C with magnitude of difference in x-coordinate
                          ; between start and end of line
  JP 9402                 ; Draw the line (ROM routine) and return

; Print word in Temporary Text Buffer to screen, wrapping text if necessary,
; then process next word
;
; This routine prints the string of characters stored in the Temporary Text
; Buffer. If the string is longer than the available space to the right of the
; Virtual Text Cursor, then the cursor is wrapped, moving down to the next
; character row and to the left edge of the current window. Input:  A  A
; word-ending character (e.g. a SPACE) from a character string IX  Points to
; current position in Temporary Text buffer at 25060
  LD (IX+0),A             ; Store character in temporary text buffer
  PUSH HL                 ; Store HL (pointer to current position in text to
                          ; print)
  LD HL,(63018)           ; Load HL with address of Bitmap Virtual Text Cursor
  LD A,L                  ; Load x-coordinate of the cursor into B, decreasing
                          ; by one...
  DEC A                   ; ...
  AND 31                  ; ...
  LD B,A                  ; ...
  LD A,(23410)            ; Load x-coordinate of right edge of current window
                          ; into A
  SUB B                   ; Subtract B to get distance to right-edge of window
                          ; in A
  PUSH AF                 ; Store AF (A = distance to right-edge of window)
  LD HL,25060             ; Point HL at start of Temporary Text Buffer
  LD C,0                  ; Set C to zero
  LD A,(HL)               ; Load character from current position in Temporary
                          ; Text Buffer into A
  CP 32                   ; If character is 32 (SPACE)...
  JR Z,48432              ; ...then skip ahead to 48432 as end of word reached
  CP 13                   ; If character is 13 (Carriage return / line feed to
                          ; start of next character row down)...
  JR Z,48432              ; ...then skip ahead to 48432 as end of word reached
  CP 14                   ; If character is 14 (Carriage return / line feed to
                          ; start of next character row down within window)...
  JR Z,48432              ; ...then skip ahead to 48432 as end of word reached
  CP 255                  ; If character is 255 (End Marker)...
  JR Z,48432              ; ...then skip ahead to 48432 as end of word reached
  INC C                   ; Increase C (number of characters to print)
  INC HL                  ; Advance to next character in Temporary Text Buffer
  JR 48411                ; Loop back to 48411
  POP AF                  ; Restore AF (A = distance to right-edge of window)
  SUB C                   ; Subtract C (number of characters)
  CALL C,48518            ; If result is negative (i.e. more characters than
                          ; space) then move Virtual Text Cursors (Attribute
                          ; and Bitmap) down to left edge of next row of window
  LD HL,25059             ; Point HL at byte before start of Temporary Text
                          ; Buffer
  INC HL                  ; Advance to next byte in Temporary Text Buffer
  LD A,(HL)               ; Load character from current position in Temporary
                          ; Text Buffer into A
  CP 255                  ; If character is 255 (End Marker)...
  JR Z,48510              ; ...then skip ahead to 48510 (reset Temporary Text
                          ; Buffer and load next word into it)
  CP 32                   ; If character is 32 (SPACE)...
  JR Z,48491              ; ...then skip ahead to 48491
  CP 13                   ; If character is 13 (Carriage return / line feed to
                          ; start of next character row down)...
  JP Z,48478              ; ...then skip ahead to 48478
  CP 14                   ; If character is 14 (Carriage return / line feed to
                          ; start of next character row down within window)...
  JP Z,48486              ; ...then skip ahead to 48486
  CP 9                    ; If character is 9 (Move Virtual Text Cursor right
                          ; one character)...
  JP Z,48470              ; ...then skip ahead to 48470
  CALL 63005              ; Print the character
  JR 48440                ; Loop back to 48440
; Move Virtual Text Cursor right one character (9)
  PUSH HL                 ; Store HL (current position in Temporary Text
                          ; Buffer)
  CALL 63247              ; Advance Bitmap Virtual Text Cursor right by one
                          ; character
  POP HL                  ; Restore HL (current position in Temporary Text
                          ; Buffer)
  JP 48440                ; Jump to 48440 for next character
; Carriage return / line feed to start of next character row down (13)
  CALL 63263              ; Advance Bitmap Virtual Text Cursor to start of next
                          ; character row
  CALL 63286              ; Update Attribute Virtual Text Cursor based upon
                          ; current Bitmap Virtual Text Cursor
  JR 48510                ; Skip ahead to 48510 (reset Temporary Text Buffer
                          ; and load next word into it)
; Carriage return / line feed to start of next character row down within window
; (14)
  CALL 48518              ; Move Virtual Text Cursors (Attribute and Bitmap)
                          ; down to left edge of next row of window
  JR 48510                ; Skip ahead to 48510 (reset Temporary Text Buffer
                          ; and load next word into it)
; Print a SPACE (32)
  LD HL,(63018)           ; Load HL with address of Bitmap Virtual Text Cursor
  LD A,L                  ; Strip out higher-order bits in L to leave only
                          ; x-coordinate component...
  AND 31                  ; ...
  LD L,A                  ; ...
  LD A,(23410)            ; Load A with x-coordinate of right edge of current
                          ; window plus one...
  INC A                   ; ...
  CP L                    ; If this is the same as the x-coordinate of the
                          ; Bitmap Virtual Text Cursor...
  JR Z,48510              ; ...then skip ahead to 48510 (reset Temporary Text
                          ; Buffer and load next word into it, i.e. no need to
                          ; print a SPACE)
  LD A,32                 ; Print a SPACE character (chr. 32)...
  CALL 63005              ; ...
; End Marker (255)
  POP HL                  ; Restore HL (pointer to current position in text to
                          ; print)
  LD IX,25060             ; Point IX at start of Temporary Text Buffer
  JP 46924                ; Jump back to 46924 to load next word into Temporary
                          ; Text Buffer

; Move Virtual Text Cursors (Attribute and Bitmap) down to left edge of next
; row of window
;
; Used by the routine at 48389.
  CALL 63263              ; Advance Bitmap Virtual Text Cursor to start of next
                          ; character row
  LD HL,(63018)           ; Load HL with address of Bitmap Virtual Text Cursor
  LD A,(23408)            ; Load A with x-coordinate of left edge of window
  ADD A,L                 ; Add this to address in HL to move cursor to left
                          ; edge of window...
  LD L,A                  ; ...
  LD (63018),HL           ; ...and place the result back at 63017
  JP 63286                ; Update Attribute Virtual Text Cursor based upon
                          ; current Bitmap Virtual Text Cursor and return

; List of Command Indices
;
; See trivia
  DEFB 0,1,2,3,4,5,6,7
  DEFB 8,9,10,11,12,13,14,15
  DEFB 16,17

; Routine Start Addresses for Magic Knight's Commands (Main Menu)
  DEFW 41578              ; (00) - Process Command to Pick Up an Object
  DEFW 41748              ; (01) - Process Command to Drop an Object
  DEFW 41924              ; (02) - Process Command to Take an Object
  DEFW 42257              ; (03) - Process Command to Give an Object
  DEFW 42638              ; (04) - Process Command to Examine Yourself / A
                          ; Character / An Object
  DEFW 43043              ; (05) - Process Command to Command a Character
  DEFW 41742              ; (06) - Unused [Set MK's available action flags and
                          ; jump to start of Main Game Loop]
  DEFW 44861              ; (07) - Process Command to Teleport
  DEFW 43494              ; (08) - Process Command to Read an Object
  DEFW 43636              ; (09) - Process Command to Throw an Object
  DEFW 43874              ; (10) - Process Command to Cast a Spell
  DEFW 44337              ; (11) - Process Command to Blow an Object
  DEFW 44635              ; (12) - Process Command to Wear / Unwear an Object
  DEFW 44933              ; (13) - Process Command to Tickle a Character
  DEFW 44990              ; (14) - Process Command to Pull Lever
  DEFW 45095              ; (15) - Process Command to Smell Something
  DEFW 45131              ; (16) - Process Command to Have a Wish
  DEFW 45149              ; (17) - Process Command to Have a Drink

; List of Characters for "TRAVEL TO" Character Selection Menu
  DEFB 11                 ; Height = 10
  DEFB 1                  ; Aramis le Peux
  DEFB 2                  ; Robin of Shylock
  DEFB 3                  ; Reggie the Rat
  DEFB 4                  ; Rachel of Amazonia
  DEFB 5                  ; Barker the Ent
  DEFB 6                  ; Organon the Guard
  DEFB 7                  ; Grunter the Bearwoolf
  DEFB 255                ; End Marker

; List of Characters for "SUMMON" Character Selection Menu
  DEFB 7                  ; Height = 6
  DEFB 1                  ; Aramis le Peux
  DEFB 2                  ; Robin of Shylock
  DEFB 4                  ; Rachel of Amazonia
  DEFB 255                ; End Marker

; Magic Knight's Initial Data
;
; See also 24840 for Magic Knight's Current Data
  DEFB 120                ; x-coordinate (pixels)
  DEFB 152                ; y-coordinate (pixels)
  DEFB 0                  ; Unused
  DEFB 0                  ; Index of current frame
  DEFB 0                  ; x-velocity (pixels) [walking / jumping sideways,
                          ; usually 2 for right and 254 / -2 for left]
  DEFB 0                  ; y-velocity (pixels) [jumping]
  DEFB 71                 ; Attribute
  DEFB 0                  ; Unused

; Characters' Initial Inventories
;
; See also 24848 for Characters' Current Inventories
  DEFB 26,21,0,0,0        ; Magic Knight (carrying)
  DEFB 0,0,0,0,0          ; Magic Knight (wearing)
  DEFB 0,0,0,0,0          ; Off-White Knight
  DEFB 3,2,0,0,0          ; Aramis le Peux
  DEFB 35,14,33,27,0      ; Robin of Shylock
  DEFB 0,0,0,0,0          ; Reggie the Rat
  DEFB 20,0,0,0,0         ; Rachel of Amazonia
  DEFB 6,34,16,0,0        ; Barker the Ent
  DEFB 0,0,0,0,0          ; Organon the Guard
  DEFB 0,0,0,0,0          ; Grunter the Bearwoolf

; Characters' Initial Positions
;
; Eight groups of three bytes, one group per character (excluding Magic
; Knight). The values are:
  DEFB 45,16,19           ; Off-White Knight
  DEFB 10,4,19            ; Aramis le Peux
  DEFB 8,12,19            ; Robin of Shylock
  DEFB 27,2,19            ; Reggie the Rat
  DEFB 31,22,19           ; Rachel of Amazonia
  DEFB 11,10,19           ; Barker the Ent
  DEFB 16,18,19           ; Organon the Guard
  DEFB 3,12,19            ; Grunter the Bearwoolf

; Objects' Initial Positions
;
; Forty-two groups of three bytes, one group per object. The values are:
  DEFB 99,0,22            ; (00) - Nothing at all
  DEFB 7,20,22            ; (01) - Disquise
  DEFB 99,0,22            ; (02) - Crystal Ball
  DEFB 99,0,22            ; (03) - Wand of Command
  DEFB 99,12,22           ; (04) - Teddy Bear
  DEFB 25,28,22           ; (05) - Stick of Dynamite
  DEFB 99,0,22            ; (06) - Magic Talisman
  DEFB 99,0,22            ; (07) - Broken Glass
  DEFB 99,0,22            ; (08) - Broken Glass
  DEFB 99,0,22            ; (09) - Broken Glass
  DEFB 32,16,22           ; (10) - Horse Feather
  DEFB 0,22,22            ; (11) - Power Boots
  DEFB 23,2,22            ; (12) - Glow Shield
  DEFB 8,9,22             ; (13) - Chicken
  DEFB 99,0,22            ; (14) - Boomerang
  DEFB 5,17,19            ; (15) - Sword
  DEFB 99,0,22            ; (16) - Brass Ankh
  DEFB 6,20,22            ; (17) - Bottle of Liquid
  DEFB 20,16,22           ; (18) - Bottle of Liquid
  DEFB 24,5,22            ; (19) - Torch
  DEFB 99,0,22            ; (20) - Mirror
  DEFB 99,0,22            ; (21) - Gadget X
  DEFB 49,6,22            ; (22) - Elf-Horn
  DEFB 38,3,18            ; (23) - Silver Arrow
  DEFB 20,3,22            ; (24) - Instruction Book
  DEFB 1,2,14             ; (25) - Magic Missile
  DEFB 99,0,22            ; (26) - Advert
  DEFB 99,0,22            ; (27) - Scroll
  DEFB 99,0,22            ; (28) - Empty Bottle
  DEFB 99,0,22            ; (29) - Empty Bottle
  DEFB 0,10,22            ; (30) - Shield
  DEFB 17,20,22           ; (31) - Teleport Key
  DEFB 17,18,22           ; (32) - Teleport Pad
  DEFB 99,0,22            ; (33) - Newspaper
  DEFB 99,0,22            ; (34) - List of Clues
  DEFB 99,0,22            ; (35) - Bow
  DEFB 99,16,22           ; (36) - Golden Egg
  DEFB 99,18,22           ; (37) - Silver Egg
  DEFB 99,20,22           ; (38) - Copper Egg
  DEFB 99,22,22           ; (39) - Golden Egg
  DEFB 99,24,22           ; (40) - Silver Egg
  DEFB 99,26,22           ; (41) - Copper Egg

; Room Connectivity Data
;
; Two values per room:
  DEFB 9,9                ; (00) - Limbo
  DEFB 255,2              ; (01) - Outdoors, 0 (Bearwoolf's Hoard)
  DEFB 1,3                ; (02) - Outdoors, 1 (Bearwoolf's Cave)
  DEFB 2,4                ; (03) - Outdoors, 2 (Beware Bearwoolf)
  DEFB 3,5                ; (04) - Outdoors, 3 (The Spooky Forest, 1)
  DEFB 4,6                ; (05) - Outdoors, 4
  DEFB 5,7                ; (06) - Outdoors, 5 (The Spooky Forest, 2)
  DEFB 6,8                ; (07) - Outdoors, 6 (The Sword in the Concrete)
  DEFB 7,9                ; (08) - Outdoors, 7 (Robin's Little Hut)
  DEFB 8,10               ; (09) - Outdoors, 8 (Exit from Limbo)
  DEFB 9,11               ; (10) - Outdoors, 9 (More Spooky Forest)
  DEFB 10,12              ; (11) - Outdoors, 10 (Entwood)
  DEFB 11,13              ; (12) - Outdoors, 11 (The Spooky Forest, 3)
  DEFB 12,14              ; (13) - Outdoors, 12 (The Spooky Forest, 4)
  DEFB 13,15              ; (14) - Outdoors, 13 (Wishing Well)
  DEFB 14,16              ; (15) - Outdoors, 14
  DEFB 15,255             ; (16) - Outdoors, 15 (The Castle Entrance)
  DEFB 16,18              ; (17) - Castle Ground Floor, 0 (One Axe Room)
  DEFB 17,19              ; (18) - Castle Ground Floor, 1 (Indoor Bowling
                          ; Green)
  DEFB 18,20              ; (19) - Castle Ground Floor, 2
  DEFB 19,21              ; (20) - Castle Ground Floor, 3
  DEFB 20,22              ; (21) - Castle Ground Floor, 4 (More Axe Problems)
  DEFB 21,23              ; (22) - Castle Ground Floor, 5 (Even More Axes)
  DEFB 22,255             ; (23) - Castle Ground Floor, 6 (The First Jump
                          ; Chute)
  DEFB 255,25             ; (24) - Castle First Floor, 0 (Main Lever 7)
  DEFB 24,26              ; (25) - Castle First Floor, 1 (Main Lever 6)
  DEFB 25,27              ; (26) - Castle First Floor, 2 (Security Door & Main
                          ; Lever 5)
  DEFB 26,28              ; (27) - Castle First Floor, 3 (Main Lever 4)
  DEFB 27,29              ; (28) - Castle First Floor, 4 (Main Lever 3)
  DEFB 28,30              ; (29) - Castle First Floor, 5 (Main Lever 2)
  DEFB 29,31              ; (30) - Castle First Floor, 6 (Main Lever 1)
  DEFB 30,32              ; (31) - Castle Second Floor, 0 (The Broken Teleport)
  DEFB 31,33              ; (32) - Castle Second Floor, 1 (Terrible Twins)
  DEFB 32,34              ; (33) - Castle Second Floor, 2 (The Guardian
                          ; Statues)
  DEFB 33,35              ; (34) - Castle Second Floor, 3 (One Way Corridor, 1)
  DEFB 34,36              ; (35) - Castle Second Floor, 4 (One Way Corridor, 2)
  DEFB 35,37              ; (36) - Castle Second Floor, 5 (One Way Corridor, 3)
  DEFB 36,38              ; (37) - Castle Second Floor, 6
  DEFB 37,39              ; (38) - Castle Third Floor, 0 (Big White Statue)
  DEFB 38,40              ; (39) - Castle Third Floor, 1
  DEFB 39,41              ; (40) - Castle Third Floor, 2 (Teleport Room, 1)
  DEFB 40,42              ; (41) - Castle Third Floor, 3 (One Way Corridor, 4)
  DEFB 41,43              ; (42) - Castle Third Floor, 4 (One Way Corridor, 5)
  DEFB 42,44              ; (43) - Castle Third Floor, 5 (One Way Corridor, 6)
  DEFB 43,255             ; (44) - Castle Third Floor, 6
  DEFB 255,46             ; (45) - Spaceship, 0 (The Control Room)
  DEFB 45,47              ; (46) - Spaceship, 1 (Many Screened Room)
  DEFB 46,48              ; (47) - Spaceship, 2 (Teleport Room, 2)
  DEFB 47,49              ; (48) - Spaceship, 3
  DEFB 48,50              ; (49) - Spaceship, 4 (The Power Plant)
  DEFB 49,51              ; (50) - Spaceship, 5
  DEFB 50,255             ; (51) - Spaceship, 6

; Character Movement Restriction Data
;
; The values in this table serve to restrict the movement of characters in two
; ways:
  DEFB 99,99              ; (00) - Limbo
  DEFB 98,99              ; (01) - Outdoors, 0 (Bearwoolf's Hoard)
  DEFB 98,99              ; (02) - Outdoors, 1 (Bearwoolf's Cave)
  DEFB 18,99              ; (03) - Outdoors, 2 (Beware Bearwoolf)
  DEFB 99,99              ; (04) - Outdoors, 3 (The Spooky Forest, 1)
  DEFB 26,8               ; (05) - Outdoors, 4
  DEFB 99,99              ; (06) - Outdoors, 5 (The Spooky Forest, 2)
  DEFB 99,99              ; (07) - Outdoors, 6 (The Sword in the Concrete)
  DEFB 99,99              ; (08) - Outdoors, 7 (Robin's Little Hut)
  DEFB 99,99              ; (09) - Outdoors, 8 (Exit from Limbo)
  DEFB 99,99              ; (10) - Outdoors, 9 (More Spooky Forest)
  DEFB 99,99              ; (11) - Outdoors, 10 (Entwood)
  DEFB 99,99              ; (12) - Outdoors, 11 (The Spooky Forest, 3)
  DEFB 99,99              ; (13) - Outdoors, 12 (The Spooky Forest, 4)
  DEFB 99,99              ; (14) - Outdoors, 13 (Wishing Well)
  DEFB 99,99              ; (15) - Outdoors, 14
  DEFB 99,16              ; (16) - Outdoors, 15 (The Castle Entrance)
  DEFB 98,99              ; (17) - Castle Ground Floor, 0 (One Axe Room)
  DEFB 98,99              ; (18) - Castle Ground Floor, 1 (Indoor Bowling
                          ; Green)
  DEFB 98,99              ; (19) - Castle Ground Floor, 2
  DEFB 98,99              ; (20) - Castle Ground Floor, 3
  DEFB 98,99              ; (21) - Castle Ground Floor, 4 (More Axe Problems)
  DEFB 98,99              ; (22) - Castle Ground Floor, 5 (Even More Axes)
  DEFB 98,99              ; (23) - Castle Ground Floor, 6 (The First Jump
                          ; Chute)
  DEFB 2,99               ; (24) - Castle First Floor, 0 (Main Lever 7)
  DEFB 99,99              ; (25) - Castle First Floor, 1 (Main Lever 6)
  DEFB 20,10              ; (26) - Castle First Floor, 2 (Security Door & Main
                          ; Lever 5)
  DEFB 22,8               ; (27) - Castle First Floor, 3 (Main Lever 4)
  DEFB 99,99              ; (28) - Castle First Floor, 4 (Main Lever 3)
  DEFB 99,99              ; (29) - Castle First Floor, 5 (Main Lever 2)
  DEFB 22,14              ; (30) - Castle First Floor, 6 (Main Lever 1)
  DEFB 20,12              ; (31) - Castle Second Floor, 0 (The Broken Teleport)
  DEFB 99,99              ; (32) - Castle Second Floor, 1 (Terrible Twins)
  DEFB 99,20              ; (33) - Castle Second Floor, 2 (The Guardian
                          ; Statues)
  DEFB 98,99              ; (34) - Castle Second Floor, 3 (One Way Corridor, 1)
  DEFB 98,99              ; (35) - Castle Second Floor, 4 (One Way Corridor, 2)
  DEFB 98,99              ; (36) - Castle Second Floor, 5 (One Way Corridor, 3)
  DEFB 22,14              ; (37) - Castle Second Floor, 6
  DEFB 22,99              ; (38) - Castle Third Floor, 0 (Big White Statue)
  DEFB 99,99              ; (39) - Castle Third Floor, 1
  DEFB 20,10              ; (40) - Castle Third Floor, 2 (Teleport Room, 1)
  DEFB 98,99              ; (41) - Castle Third Floor, 3 (One Way Corridor, 4)
  DEFB 98,99              ; (42) - Castle Third Floor, 4 (One Way Corridor, 5)
  DEFB 98,99              ; (43) - Castle Third Floor, 5 (One Way Corridor, 6)
  DEFB 22,14              ; (44) - Castle Third Floor, 6
  DEFB 2,2                ; (45) - Spaceship, 0 (The Control Room)
  DEFB 99,99              ; (46) - Spaceship, 1 (Many Screened Room)
  DEFB 20,10              ; (47) - Spaceship, 2 (Teleport Room, 2)
  DEFB 16,16              ; (48) - Spaceship, 3
  DEFB 98,99              ; (49) - Spaceship, 4 (The Power Plant)
  DEFB 14,14              ; (50) - Spaceship, 5
  DEFB 99,25              ; (51) - Spaceship, 6

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
  DEFB 4,27,4,20,117,79,1,79 ; (00) Main Menu (Game) Window
  DEFB 0,31,0,4,101,67,0,71 ; (01) Command Summary Window
  DEFB 0,25,5,15,117,68,0,79 ; (02)
  DEFB 0,26,5,18,117,68,2,79 ; (03) Character Selection Window
  DEFB 0,25,5,20,117,70,1,79 ; (04) List of objects window (menu or info)
  DEFB 4,24,1,6,101,66,0,70 ; (05) "STORMBRINGER A TRUE GRAPHIC ADVENTURE..."
                            ; window above Control Selection Window
  DEFB 4,27,10,19,101,70,0,69 ; (06) Control Selection Window
  DEFB 0,31,10,20,117,70,1,79 ; (07) "REDEFINE THE GAME" Window
  DEFB 3,28,10,20,117,84,0,14 ; (08) Redefine Keys / Instructions Window
  DEFB 5,26,10,20,117,115,0,69 ; (09) Instructions Window
  DEFB 0,31,16,23,101,67,0,79 ; (10) "WELL DONE..." Window
  DEFB 0,19,5,9,117,76,0,70 ; (11)
  DEFB 0,16,5,10,117,98,0,104 ; (12)
  DEFB 0,18,5,9,117,67,2,70 ; (13)
  DEFB 4,27,21,23,117,70,0,205 ; (14) "PRESS FIRE TO CONTINUE" Window
  DEFB 0,23,5,9,117,68,0,71 ; (15)
  DEFB 0,15,5,11,117,98,1,112 ; (16) "EXAMINE WHAT?" Window
  DEFB 0,18,5,14,117,68,5,120 ; (17)
  DEFB 0,22,5,17,117,67,0,120 ; (18) "EXAMINE YOURSELF" / "EXAMINE CHARACTER"
                              ; Window
  DEFB 17,20,8,13,117,68,0,71 ; (19) Frame around portrait of character on
                              ; "EXAMINE CHARACTER" and "EXAMINE YOURSELF"
                              ; windows
  DEFB 0,22,5,14,117,67,0,120 ; (20) "EXAMINE OBJECT" Window
  DEFB 2,5,9,12,117,69,0,69 ; (21) Frame around object in "EXAMINE OBJECT"
                            ; Window
  DEFB 0,11,5,12,117,78,0,71 ; (22) "THE BEAR SAYS..." Window
  DEFB 0,22,5,15,117,77,2,78 ; (23) "WHICH COMMAND DO YOU WANT TO USE?"
                             ; ("COMMAND [CHARACTER] TO...") Window
  DEFB 4,27,8,18,117,104,0,104 ; (24) Game Over Window
  DEFB 0,12,5,9,117,104,0,104 ; (25) "[CHARACTER] IS ASLEEP" Window
  DEFB 4,27,7,18,117,87,0,79 ; (26) "SOMEBODY SWITCHED OUT THE LIGHT..." Window
  DEFB 0,15,5,11,117,115,0,112 ; (27)
  DEFB 0,22,6,9,117,68,2,71 ; (28)
  DEFB 0,19,5,9,117,68,2,71 ; (29)
  DEFB 0,26,5,16,117,87,2,79 ; (30) Spell Selection Window

; Characters' Initial Stats
;
; Nine groups of eight bytes, one group per character (including Magic Knight).
; The values are capped at 100:
  DEFB 70,17,82,62,0,37,0,1 ; Magic Knight
  DEFB 100,100,100,127,7,37,100,2 ; Off-White Knight
  DEFB 70,50,20,178,69,52,100,3 ; Aramis le Peux
  DEFB 60,45,75,60,68,53,100,4 ; Robin of Shylock
  DEFB 80,40,76,5,0,0,100,5 ; Reggie the Rat
  DEFB 90,70,30,178,70,54,100,6 ; Rachel of Amazonia
  DEFB 90,70,100,100,0,0,100,7 ; Barker the Ent
  DEFB 90,70,30,0,0,0,100,8 ; Organon the Guard
  DEFB 90,70,30,100,0,0,100,9 ; Grunter the Bearwoolf

; Table of Object Properties
;
; Forty-two groups of eight bytes, one group per object (including "Nothing at
; All"). The values are:
  DEFB 0,0,0,0,0,0,0,0    ; (00) - Nothing at all
  DEFB 33,8,0,0,15,0,70,7 ; (01) - Disquise
  DEFB 34,0,35,11,15,0,71,16 ; (02) - Crystal Ball
  DEFB 33,0,37,6,9,0,70,17 ; (03) - Wand of Command
  DEFB 33,0,0,2,31,0,70,20 ; (04) - Teddy Bear
  DEFB 33,0,0,8,26,0,69,26 ; (05) - Stick of Dynamite
  DEFB 33,40,85,3,15,0,70,11 ; (06) - Magic Talisman
  DEFB 1,32,0,0,12,0,71,13 ; (07) - Broken Glass
  DEFB 1,32,0,0,12,0,71,13 ; (08) - Broken Glass
  DEFB 1,32,0,0,12,0,71,13 ; (09) - Broken Glass
  DEFB 1,0,0,0,12,0,70,28 ; (10) - Horse Feather
  DEFB 33,8,0,10,31,0,66,27 ; (11) - Power Boots
  DEFB 33,8,0,3,15,0,66,10 ; (12) - Glow Shield
  DEFB 1,0,0,0,31,0,70,12 ; (13) - Chicken
  DEFB 33,32,0,3,12,0,68,25 ; (14) - Boomerang
  DEFB 33,32,0,3,21,0,71,29 ; (15) - Sword
  DEFB 33,8,0,3,15,0,70,19 ; (16) - Brass Ankh
  DEFB 33,32,0,14,26,0,68,14 ; (17) - Bottle of Liquid
  DEFB 33,32,0,15,26,0,68,14 ; (18) - Bottle of Liquid
  DEFB 33,32,0,17,10,0,70,18 ; (19) - Torch
  DEFB 1,0,0,0,15,0,71,5  ; (20) - Mirror
  DEFB 33,32,0,0,15,0,69,3 ; (21) - Gadget X
  DEFB 97,0,0,3,15,0,68,23 ; (22) - Elf-Horn
  DEFB 33,32,0,3,12,0,71,24 ; (23) - Silver Arrow
  DEFB 34,0,0,0,15,0,67,15 ; (24) - Instruction Book
  DEFB 1,32,0,0,12,0,70,22 ; (25) - Magic Missile
  DEFB 33,0,0,7,15,128,70,4 ; (26) - Advert
  DEFB 33,0,0,12,15,0,7,6 ; (27) - Scroll
  DEFB 33,0,0,14,26,0,69,14 ; (28) - Empty Bottle
  DEFB 33,0,0,15,26,0,70,14 ; (29) - Empty Bottle
  DEFB 1,8,0,0,15,0,71,10 ; (30) - Shield
  DEFB 1,0,0,0,12,0,67,21 ; (31) - Teleport Key
  DEFB 1,32,0,0,12,0,69,8 ; (32) - Teleport Pad
  DEFB 33,0,0,1,15,0,71,4 ; (33) - Newspaper
  DEFB 33,0,0,31,15,0,71,6 ; (34) - List of Clues
  DEFB 1,0,0,0,12,0,69,3  ; (35) - Bow
  DEFB 3,32,0,0,15,0,70,9 ; (36) - Golden Egg
  DEFB 2,0,0,0,15,0,71,9  ; (37) - Silver Egg
  DEFB 1,0,0,0,15,0,6,9   ; (38) - Copper Egg
  DEFB 3,32,0,0,15,0,70,9 ; (39) - Golden Egg
  DEFB 2,0,0,0,15,0,71,9  ; (40) - Silver Egg
  DEFB 1,0,0,0,15,0,6,9   ; (41) - Copper Egg

; Table of x- and y-Coordinates of Positions Taken by Summoned Characters in
; Each Room
;
; x- and y-coordinates at which a summoned character will initially appear for
; each room. Values are:
  DEFB 99,19              ; (00) - Limbo
  DEFB 18,19              ; (01) - Outdoors, 0 (Bearwoolf's Hoard)
  DEFB 12,19              ; (02) - Outdoors, 1 (Bearwoolf's Cave)
  DEFB 26,19              ; (03) - Outdoors, 2 (Beware Bearwoolf)
  DEFB 16,19              ; (04) - Outdoors, 3 (The Spooky Forest, 1)
  DEFB 12,19              ; (05) - Outdoors, 4
  DEFB 16,19              ; (06) - Outdoors, 5 (The Spooky Forest, 2)
  DEFB 16,19              ; (07) - Outdoors, 6 (The Sword in the Concrete)
  DEFB 26,19              ; (08) - Outdoors, 7 (Robin's Little Hut)
  DEFB 20,19              ; (09) - Outdoors, 8 (Exit from Limbo)
  DEFB 16,19              ; (10) - Outdoors, 9 (More Spooky Forest)
  DEFB 22,19              ; (11) - Outdoors, 10 (Entwood)
  DEFB 16,19              ; (12) - Outdoors, 11 (The Spooky Forest, 3)
  DEFB 6,19               ; (13) - Outdoors, 12 (The Spooky Forest, 4)
  DEFB 20,19              ; (14) - Outdoors, 13 (Wishing Well)
  DEFB 26,19              ; (15) - Outdoors, 14
  DEFB 12,19              ; (16) - Outdoors, 15 (The Castle Entrance)
  DEFB 16,19              ; (17) - Castle Ground Floor, 0 (One Axe Room)
  DEFB 16,17              ; (18) - Castle Ground Floor, 1 (Indoor Bowling
                          ; Green)
  DEFB 16,19              ; (19) - Castle Ground Floor, 2
  DEFB 16,19              ; (20) - Castle Ground Floor, 3
  DEFB 16,19              ; (21) - Castle Ground Floor, 4 (More Axe Problems)
  DEFB 16,19              ; (22) - Castle Ground Floor, 5 (Even More Axes)
  DEFB 16,19              ; (23) - Castle Ground Floor, 6 (The First Jump
                          ; Chute)
  DEFB 16,19              ; (24) - Castle First Floor, 0 (Main Lever 7)
  DEFB 16,19              ; (25) - Castle First Floor, 1 (Main Lever 6)
  DEFB 26,19              ; (26) - Castle First Floor, 2 (Security Door & Main
                          ; Lever 5)
  DEFB 20,19              ; (27) - Castle First Floor, 3 (Main Lever 4)
  DEFB 16,19              ; (28) - Castle First Floor, 4 (Main Lever 3)
  DEFB 99,19              ; (29) - Castle First Floor, 5 (Main Lever 2)
  DEFB 16,19              ; (30) - Castle First Floor, 6 (Main Lever 1)
  DEFB 16,19              ; (31) - Castle Second Floor, 0 (The Broken Teleport)
  DEFB 99,19              ; (32) - Castle Second Floor, 1 (Terrible Twins)
  DEFB 22,19              ; (33) - Castle Second Floor, 2 (The Guardian
                          ; Statues)
  DEFB 99,19              ; (34) - Castle Second Floor, 3 (One Way Corridor, 1)
  DEFB 99,19              ; (35) - Castle Second Floor, 4 (One Way Corridor, 2)
  DEFB 99,19              ; (36) - Castle Second Floor, 5 (One Way Corridor, 3)
  DEFB 20,19              ; (37) - Castle Second Floor, 6
  DEFB 99,19              ; (38) - Castle Third Floor, 0 (Big White Statue)
  DEFB 16,19              ; (39) - Castle Third Floor, 1
  DEFB 2,19               ; (40) - Castle Third Floor, 2 (Teleport Room, 1)
  DEFB 99,19              ; (41) - Castle Third Floor, 3 (One Way Corridor, 4)
  DEFB 99,19              ; (42) - Castle Third Floor, 4 (One Way Corridor, 5)
  DEFB 99,19              ; (43) - Castle Third Floor, 5 (One Way Corridor, 6)
  DEFB 16,19              ; (44) - Castle Third Floor, 6
  DEFB 16,19              ; (45) - Spaceship, 0 (The Control Room)
  DEFB 16,19              ; (46) - Spaceship, 1 (Many Screened Room)
  DEFB 6,19               ; (47) - Spaceship, 2 (Teleport Room, 2)
  DEFB 16,19              ; (48) - Spaceship, 3
  DEFB 16,19              ; (49) - Spaceship, 4 (The Power Plant)
  DEFB 16,19              ; (50) - Spaceship, 5
  DEFB 16,19              ; (51) - Spaceship, 6

; Table of 2x2 Block Style Definitions
;
; +--------+-----------------------------------------------+
; | Offset | Meaning                                       |
; +--------+-----------------------------------------------+
; | 0      | Attribute                                     |
; | 1      | Terrain interaction parameter to apply        |
; | 2      | Terrain Interaction Parameter Painting Bitmap |
; | 3      | Unused                                        |
; | 4      | Index of top-left udg                         |
; | 5      | Index of top-right udg                        |
; | 6      | Index of bottom-left udg                      |
; | 7      | Index of bottom-right udg                     |
; +--------+-----------------------------------------------+
  DEFB 71,0,15,0,0,0,0,0
  DEFB 70,208,15,0,24,24,24,24
  DEFB 68,208,15,0,2,3,26,27 ; (unused)
  DEFB 68,208,15,0,4,5,28,29 ; (unused)
  DEFB 68,208,15,0,68,69,0,0
  DEFB 68,208,15,0,8,9,32,33 ; (unused)
  DEFB 68,208,15,0,10,11,34,35 ; (unused)
  DEFB 68,208,15,0,12,13,36,37 ; (unused)
  DEFB 68,208,15,0,14,15,38,39 ; (unused)
  DEFB 68,208,15,0,48,49,72,73 ; (unused)
  DEFB 22,208,15,0,67,67,67,67 ; (unused)
  DEFB 71,0,15,0,54,55,78,79 ; (unused)
  DEFB 71,0,15,0,56,57,80,81 ; (unused)
  DEFB 71,208,15,0,58,59,58,59
  DEFB 70,0,15,0,70,71,94,95 ; (unused)
  DEFB 71,0,15,0,52,53,76,77
  DEFB 127,208,15,0,0,0,0,0 ; (unused)
  DEFB 71,0,15,0,0,0,0,0  ; (unused)
  DEFB 71,0,15,0,0,0,0,0  ; (unused)
  DEFB 194,208,15,0,92,93,94,95
  DEFB 22,0,15,0,90,90,90,90
  DEFB 7,208,3,0,66,67,0,0 ; (unused)
  DEFB 71,208,3,0,67,67,24,24 ; (unused)
  DEFB 22,208,3,0,67,67,67,67
  DEFB 38,208,15,0,67,67,67,67 ; (unused)
  DEFB 38,208,15,0,90,90,90,90
  DEFB 3,0,15,0,0,0,0,0   ; (unused)
  DEFB 71,0,15,0,50,51,74,75
  DEFB 71,0,15,0,0,0,0,0  ; (unused)
  DEFB 70,0,15,0,24,24,24,24
  DEFB 68,0,15,0,66,0,25,66 ; (unused)
  DEFB 68,0,15,0,25,25,25,25 ; (unused)
  DEFB 68,208,15,0,25,25,25,25 ; (unused)
  DEFB 71,208,15,0,17,18,18,17
  DEFB 71,208,3,0,17,18,0,0 ; (unused)
  DEFB 71,0,15,0,25,26,27,28 ; (unused)
  DEFB 71,0,15,0,29,30,31,32 ; (unused)

; Initial Control Selection Menu Text
  DEFM 16,7,14            ; KEYBOARD KEMPSTON JOYSTICK CURSOR JOYSTICK SINCLAIR
                          ; JOYSTICK 1 CHANGE GAME OPTIONS INSTRUCTIONS PLAY
                          ; GAME
  DEFM 93,196,14
  DEFM 93,197,14
  DEFM 93,198,14
  DEFM 93,199,14
  DEFM 16,6,93,"CHANGE ",106,"OPTIONS",14
  DEFM 16,5,93,95,"S",14
  DEFM 93,"PLAY ",106
  DEFM 0

; Instructions Text
  DEFM "AFTER RETURN",123,102,111 ; AFTER RETURNING FROM THE STARSHIP USS
                                  ; PISCES IN THE 25TH CENTURY MAGIC KNIGHT
                                  ; FINDS THAT THE OTHERWISE QUIET VILLAGE OF
                                  ; CORNHAMP-ON-MARSH HAS BEEN ATTACKED BY A
                                  ; DESPOT CALLING HIMSELF THE OFF-WHITE
                                  ; KNIGHT. OFF-WHITE IS THE DREADED
                                  ; STORMBRINGER!
  DEFM "STARSHIP USS PISCES IN ",111
  DEFM "25TH CENTURY ",233," "
  DEFM "FINDS ",151,111,"OTHERWISE QUIET "
  DEFM "VILLAGE ",122,"CORNHAMP-ON-MARSH "
  DEFM 152,"BEEN ATTACKED BY ",97,"DESPOT "
  DEFM "C",141,123,"HIMSELF ",111
  DEFM 217,". "
  DEFM 201," ",117,111
  DEFM "D",242,"ED ",165,"!"
  DEFM 0
  DEFM 110," ",111,109,"S ",116," :-",91,14 ; THE KEYS ARE :- N = LEFT     M =
                                            ; RIGHT A = JUMP/UP  Z = DOWN - =
                                            ; MENU (FIRE)
  DEFM " N",96,"LEFT",110,"  M",96,"RIGHT",91
  DEFM " A",96,"JUMP/UP  Z",96,"DOWN",91
  DEFM " -",96,"MENU (FIRE)"
  DEFM 0
  DEFM " ",139,106,"FEATURES",14 ; THIS GAME FEATURES WINDIMATION+ STARRING YOU
                                 ; AS MAGIC KNIGHT WITH ARAMIS, ROBIN, REGGIE,
                                 ; RACHEL, BARKER, ORGANON, AND GRUNTER (see
                                 ; trivia)
  DEFM 110," WINDIMATION+",14
  DEFM 110,"  ",16,4,18," STARR",123,18,92,14
  DEFM 16,7," ",105,"AS ",233,14
  DEFM 110,110,"  ",16,5,"W",100,"H",14
  DEFM 16,7," ",202,", ",203,",",14
  DEFM " ",204,", ",205,",",14
  DEFM " ",206,", ",207,",",14
  DEFM " ",104,208
  DEFM 0

; "REDEFINE THE GAME" Window Text
  DEFM 110,110,189,111,106,14,14 ; REDEFINE THE GAME REDEFINE KEYBOARD PLAYER
                                 ; ATTRIBUTE IGNORE PLAYER ATTRIBUTE UPDATE
                                 ; SAVE THE GAME LOAD AN OLD GAME DO NOTHING
  DEFM 93,189,196,14
  DEFM 93,186,164," IG",148,"RE",14
  DEFM 93,186,164," UPDATE",14
  DEFM 16,6,93,"SAVE ",111,106,14
  DEFM 93,"LOAD ",98,"OLD ",106,14
  DEFM 16,7,93,"DO ",140
  DEFM 0
; "Redefine Keys Window" Text
  DEFM "ENTER NEW ",109," CHOICE",14 ; ENTER NEW KEY CHOICE OR PRESS ENTER TO
                                     ; EXIT N = LEFT     M = RIGHT A = JUMP/UP
                                     ; Z = DOWN 0 = MAIN MENU
  DEFM "OR ",162," ENTER ",99,"EX",100,91
  DEFM " N",96,"LEFT",110,"  M",96,"RIGHT",91
  DEFM " A",96,"JUMP/UP  Z",96,"DOWN",91
  DEFM " 0",96,174,"MENU"
  DEFM 0
  DEFM "SAVE & LOAD ",116," ",120 ; SAVE & LOAD ARE NOT ALLOWED HERE. START A
                                  ; GAME THEN READ GADGET X
  DEFM 141,"OWED ",169,".",14
  DEFM "START ",97,106,"THEN "
  DEFM 242," GAD",234," X"
  DEFM 0

; Miscellaneous Text 2
  DEFM 92,165,16,6        ; STORMBRINGER A TRUE GRAPHIC ADVENTURE BY DAVID
                          ; JONES COPYRIGHT 1987 (see trivia)
  DEFM " ",97,"TRUE",14
  DEFM " GRAPHIC ADVENTURE",14
  DEFM 16,7,110,"BY ",129,14
  DEFM 110,166,253
  DEFM 0
  DEFM 16,6,110,110," ",165," 48K",14 ; STORMBRINGER 48K COPYRIGHT DAVID JONES
                                      ; 1987 FROM MASTERTRONIC 1987
  DEFM 16,7,19,"  ",166,129," ",253,14
  DEFM 19," ",110,"FROM ",190,253
  DEFM 0
  DEFM 162," FIRE ",99,"CONTINUE" ; PRESS FIRE TO CONTINUE
  DEFM 0
  DEFM 14                 ; EXECUTE COMMAND REJECT COMMAND
  DEFM 93,"EXECUTE ",239,14
  DEFM 93,"REJECT ",239
  DEFM 0
  DEFM 14                 ; carriage return / line feed}{move text cursor right
                          ; by two characters
  DEFM 93
  DEFM 0
  DEFM 106,"OVER",14      ; GAME OVER TOTAL COMPLETION 000 % TIME LEFT 30 HOURS
  DEFM "TOTAL COMPLETION 000 % "
  DEFM 193," LEFT 30 HOURS",91
  DEFM 0
  DEFM 239,14             ; COMMAND
  DEFM 0
  DEFM 16,6,165           ; STORMBRINGER
  DEFM 0
  DEFM 6                  ; Height = 5
  DEFM 153,109," ",162,"ED" ; BREAK KEY PRESSED
  DEFM 0
  DEFM 8                  ; Height = 7
  DEFM 105,"HURT ",121    ; YOU HURT YOURSELF MOVING AROUND IN THE DARK
  DEFM "MOV",123,"AROUND IN ",111
  DEFM "DARK"
  DEFM 0
  DEFM 9                  ; Height = 8
  DEFM 105,163,121        ; YOU KILLED YOURSELF TRYING TO THROW THE {name of
                          ; Current Object} AT {short name of Current
                          ; Character}
  DEFM "TRY",123,99,243," ",111
  DEFM 29," AT ",31
  DEFM 0
  DEFM 7                  ; Height = 6
  DEFM 105,"THREW ",111,29," " ; YOU THREW THE {name of Current Object} AND
                               ; KILLED {short name of Current Character}
  DEFM 104,163,31
  DEFM 0
  DEFM 10                 ; Height = 9
  DEFM "I SUPPOSE ",105,"REALISED " ; I SUPPOSE YOU REALISED THAT THIS IS A
                                    ; SPELL TO QUIT THE GAME BUT PRESSING THE
                                    ; BREAK KEY IS MUCH QUICKER !
  DEFM 151,139,117,97,175," "
  DEFM 99,"QU",100," ",111,106,113," "
  DEFM 162,123,111,153,109," "
  DEFM 117,"MUCH QUICKER !"
  DEFM 0

; Miscellaneous Text 3
  DEFM 31," ",117,"ASLEEP" ; short name of Current Character} IS ASLEEP
  DEFM 0
  DEFM "WELL DONE!",14    ; WELL DONE! MAGIC KNIGHT IS WHOLE AGAIN! MAGIC
                          ; KNIGHT IS NOW IN NEED OF A NICE LONG REST.
  DEFM 233," ",117,"WHOLE AGAIN! "
  DEFM 233," ",117,148,"W IN NEED ",122
  DEFM 97,"NICE LONG REST."
  DEFM 0
  DEFM 9                  ; Height = 8
  DEFM 105,"HAVE COMPLETED " ; YOU HAVE COMPLETED YOUR TASK AND MAGIC KNIGHT
                             ; HAS DECIDED TO RETIRE.
  DEFM 119,"TASK ",104,233," "
  DEFM 152,"DECIDED ",99,"RETIRE."
  DEFM 0
  DEFM 110,144,110,"1  2  3  4  5" ; STRENGTH    1  2  3  4  5
  DEFM 0
; Placeholder for three-digit number (Magic Knight's strength and/or cave
; progress)
  DEFM "---"              ; ---
  DEFM 0
  DEFM 6                  ; Height = 5
  DEFM 105,"DIED ",122,"EXHAUSTION" ; YOU DIED OF EXHAUSTION
  DEFM 0
  DEFM 11                 ; Height = 10
  DEFM 30," "             ; full name of Current Character} KILLED YOU AS YOU
                          ; APPROACHED. GREAT CARE IS NEEDED WITH {short name
                          ; of Current Character} BECAUSE IT DOES NOT KNOW ITS
                          ; OWN STRENGTH
  DEFM 163,105,"AS ",105
  DEFM "APPROACHED. GREAT C",116," "
  DEFM 117,"NEEDED W",100,"H ",31," "
  DEFM "BECAUSE ",100," DOES ",120
  DEFM "K",148,"W ",100,"S OWN ",144
  DEFM 0
  DEFM 0                  ; Unused
  DEFM 11                 ; Height = 10
  DEFM 217," ",118        ; OFF-WHITE KNIGHT SAYS "YOU FOOL! NOW I WILL TRULY
                          ; BE THE MASTER OF ALL CREATION! WITHOUT YOU TO STOP
                          ; ME I AM INVINCIBLE!" AS HE SPOKE OFF-WHITE PULLED A
                          ; BLASTER FROM A CONCEALED POCKET AND DISINTEGRATED
                          ; YOU
  DEFM 34,105,"FOOL! ",148,"W I ",154
  DEFM "TRULY BE ",111,"MASTER ",122
  DEFM 141," CREATION! W",100,"HOUT "
  DEFM 105,99,"STOP ME I AM "
  DEFM "INVINCIBLE!",34,14
  DEFM "AS HE SPOKE ",201," "
  DEFM 248,"ED ",97,"BLASTER ",102
  DEFM 97,"CONCEALED POCKET ",104
  DEFM "DISINTEGRATED ",105
  DEFM 0
  DEFM 7                  ; Height = 6
  DEFM 105,"WERE ",163,"BY " ; YOU WERE KILLED BY OFF-WHITE KNIGHT.
  DEFM 217,"."
  DEFM 0
  DEFM 6                  ; Height = 5
  DEFM 105,"R",98,"OUT ",122,193 ; YOU RAN OUT OF TIME
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 105,116," ",120    ; YOU ARE NOT CARRYING ANYTHING
  DEFM "CARRY",123,"ANYTH",123
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 105,116," ",120    ; YOU ARE NOT WEARING ANYTHING
  DEFM 246,123,"ANYTH",123
  DEFM 0
  DEFM 16,6               ; WHO DO YOU WANT TO
  DEFM "WHO DO ",105,155," ",99
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 142,117,148,157    ; THERE IS NOBODY IN THIS ROOM
  DEFM "IN ",139,178
  DEFM 0
  DEFM 25," ",98,103,102,"?",14 ; name of Current Command} AN OBJECT FROM ?
  DEFM 0
  DEFM 25," ",98,103,99,"?",14 ; name of Current Command} AN OBJECT TO ?
  DEFM 0
  DEFM 25," ?",14         ; name of Current Command} ?
  DEFM 0
  DEFM 14                 ; SUMMON ?
  DEFM 115,"?",14
  DEFM 0
  DEFM 243," ",98,103,"AT ?",14 ; THROW AN OBJECT AT ?
  DEFM 0
  DEFM 156," ",99,"?",14  ; TRAVEL TO ?
  DEFM 0

; Main In-Game Menu Strings Permanent entries:
  DEFM 16,4,239,"S AVAILABLE :-",91 ; COMMANDS AVAILABLE :- PICK UP AN OBJECT
                                    ; DROP AN OBJECT TAKE AN OBJECT GIVE AN
                                    ; OBJECT EXAMINE
  DEFM 16,6,93,"PICK UP ",98,103,14
  DEFM 93,235," ",98,103,14
  DEFM 93,236," ",98,103,14
  DEFM 93,237," ",98,103,14
  DEFM 93,238
  DEFM 0
; Conditional entries:
  DEFM 94,93,239," ",97,101,0 ; COMMAND A CHARACTER
  DEFM 94,93,"A",0        ; A (see trivia)
  DEFM 94,93,241,0        ; TELEPORT
  DEFM 94,93,242," ",125,0 ; READ SOMETHING
  DEFM 94,93,243," ",125,0 ; THROW SOMETHING
  DEFM 94,93,244," ",97,175,0 ; CAST A SPELL
  DEFM 94,93,245," ",125,0 ; BLOW SOMETHING
  DEFM 94,93,246,47,"UN",246," ",103,0 ; WEAR/UNWEAR OBJECT
  DEFM 94,93,247," ",97,101,0 ; TICKLE A CHARACTER
  DEFM 94,93,248," ",107,0 ; PULL LEVER
  DEFM 94,93,249," ",125,0 ; SMELL SOMETHING
  DEFM 94,93,"HAVE ",97,250,0 ; HAVE A WISH
  DEFM 94,93,"HAVE ",97,251,0 ; HAVE A DRINK
  DEFM 94,93,"D",0        ; D (see trivia)
  DEFM 94,93,"E",0        ; E (see trivia)
  DEFM 94,93,"F",0        ; F (see trivia)

; Text Relating to "COMMAND A CHARACTER TO HELP" Command
  DEFM 4                  ; Height = 3
  DEFM 31," ",118,34,"I ",154 ; short name of Current Character} SAYS "I WILL
                              ; REQUIRE A GOLDEN EGG FOR MY SERVICES"
  DEFM 161," ",97,127,114," "
  DEFM "FOR MY SERVICES",34
  DEFM 0
  DEFM 7                  ; Height = 6
  DEFM "BRAVE ",31," ",152,"SHOT " ; BRAVE {short name of Current Character}
                                   ; HAS SHOT BEARWOOLF FROM A NICE SAFE
                                   ; DISTANCE! IT HAS BEEN RETURNED TO ITS
                                   ; ORIGINAL FORM, A CUTE LITTLE TEDDY BEAR!
  DEFM 158," ",102,97,"NICE SAFE "
  DEFM "DISTANCE! ",100," ",152,"BEEN "
  DEFM "RETURNED ",99,100,"S ORIGINAL "
  DEFM "FORM, ",97,"CUTE L",100,"TLE "
  DEFM 159,"!"
  DEFM 0
  DEFM 8                  ; Height = 7
  DEFM 31," ",118,34,111  ; short name of Current Character} SAYS "THE PASSWORD
                          ; NUMBER FOR TODAY IS ---. YOU WILL NEED TO ENTER
                          ; THIS NUMBER TO ACTIVATE THE CASTLE TELEPORT SYSTEM"
  DEFM "PASSWORD NUMBER FOR "
  DEFM "TODAY ",117,"---. ",105,154
  DEFM "NEED ",99,"ENTER ",139
  DEFM "NUMBER ",99,"ACTIVATE ",111
  DEFM 244,"LE ",241," "
  DEFM "SYSTEM",34
  DEFM 0

; Text Relating to "PICK UP" Command
  DEFM 92,105,116," ",148,"W CARRYING",94 ; YOU ARE NOW CARRYING
  DEFM 0
  DEFM 92,"PICK UP ",111  ; PICK UP THE
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 142,117,140," "    ; THERE IS NOTHING IN THIS ROOM
  DEFM "IN ",139,178
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 142,117,140," "    ; THERE IS NOTHING NEAR ENOUGH
  DEFM "NEAR E",148,"UGH"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 119,"HANDS ",116," " ; YOUR HANDS ARE FULL
  DEFM "FULL"
  DEFM 0
  DEFM 4                  ; Height = 3
  DEFM 111,29," "         ; THE {name of Current Object} IS TOO HEAVY FOR YOU
  DEFM 117,"TOO HEAVY FOR "
  DEFM 105
  DEFM 0

; Teddy Bear is Scared Text
  DEFM 7                  ; Height = 6
  DEFM 111,"BEAR "        ; THE BEAR SAYS 'MAMA! MAMA! TEDDY IS SCARED!'
  DEFM 118
  DEFM "'MAMA! "
  DEFM "MAMA! "
  DEFM "TEDDY ",117
  DEFM "SC",116,"D!'"
  DEFM 0

; Text Relating to All Commands that Manipulate Objects
  DEFM 92,25," ",112,103,"?",94 ; name of Current Command} WHICH OBJECT ?
  DEFM 0
  DEFM 92,25," ",111      ; name of Current Command} THE
  DEFM 0

; Text Relating to "DROP" Command
  DEFM 9                  ; Height = 8
  DEFM 111,29," "         ; THE {name of Current Object} BLEW UP! IT WAS NOT A
                          ; VERY SAFE STICK OF {name of Current Object}
  DEFM "BLEW UP! ",100," "
  DEFM 160,120,97
  DEFM "VERY SAFE STICK ",122
  DEFM 29
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 105,"CAN",120,25," " ; YOU CANNOT {name of Current Command} THE {name of
                            ; Current Object}
  DEFM 111,29
  DEFM 0
  DEFM 8                  ; Height = 7
  DEFM 111,"MAD JANITOR " ; THE MAD JANITOR HAS SWEPT UP THE {name of Current
                          ; Object} IT IS NOT ADVISED THAT YOU DROP THINGS HERE
  DEFM 152,"SWEPT UP "
  DEFM 111,29,14
  DEFM "IT ",117,120
  DEFM "ADVISED ",151
  DEFM 105,235," THINGS "
  DEFM 169
  DEFM 0

; Text Relating to "TAKE" Command
  DEFM 25," ",125,102     ; name of Current Command} SOMETHING FROM
  DEFM 0
  DEFM " ",102            ; FROM
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31,"'S HANDS "     ; short name of Current Character}'S HANDS ARE EMPTY
  DEFM 116," EMPTY"
  DEFM 0
  DEFM 4                  ; Height = 3
  DEFM 31," ",155,"S "    ; short name of Current Character} WANTS TO KEEP THE
                          ; {name of Current Object
  DEFM 99,"KEEP ",111
  DEFM 29
  DEFM 0
  DEFM 5                  ; Height = 4
  DEFM 31," ",152         ; short name of Current Character} HAS {name of
                          ; Current Command}N AN EGG IN EXCHANGE FOR THE {name
                          ; of Current Object
  DEFM 25,"N ",98,114," IN "
  DEFM "EXCHANGE FOR ",111
  DEFM 29
  DEFM 0

; Text Relating to "GIVE" Command
  DEFM " ",99             ; TO
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31,"'S HANDS "     ; short name of Current Character}'S HANDS ARE FULL
  DEFM 116," FULL"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31," ",117,120     ; short name of Current Character} IS NOT STRONG
                          ; ENOUGH
  DEFM "STRONG E",148,"UGH"
  DEFM 0
  DEFM 4                  ; Height = 3
  DEFM 31," DOES "        ; short name of Current Character} DOES NOT WANT THE
                          ; {name of Current Object
  DEFM 120,155," ",111
  DEFM 29
  DEFM 0

; Text Relating to "EXAMINE" Command
  DEFM 92,25," "          ; name of Current Command
  DEFM 0
  DEFM 25," WHAT ?",91    ; name of Current Command} WHAT ? OBJECT CHARACTER
                          ; YOURSELF
  DEFM 93,103,14
  DEFM 93,101,14
  DEFM 93,121
  DEFM 0
  DEFM 25," ",31,91       ; name of Current Command} {short name of Current
                          ; Character} STRENGTH 99 HAPPINESS   99 STAMINA
                          ; 99 MAGIC LVL.  99 FOOD LVL.   99
  DEFM 144,"   99 ",14
  DEFM "HAPPINESS   99 ",14
  DEFM "STAMINA",110,"  99 ",14
  DEFM 194," LVL.  99 ",14
  DEFM "FOOD LVL.   99 ",91
  DEFM 0
  DEFM 110,110,25,14      ; name of Current Command
  DEFM 0
  DEFM 91                 ; WEIGHT     99 BLOW       . READ       . WEAR
                          ; .
  DEFM 110,110,"WEIGHT",110,"  99  ",14
  DEFM 110,110,245,110,110," . ",14
  DEFM 110,110,242," ",110,110,". ",14
  DEFM 110,110,246,110,110," . ",91
  DEFM 0

; Characters' "Current Status" Texts
  DEFM 0                  ; Unused
; (01) Magic Knight
  DEFM "PROGRESS 000 %",14 ; PROGRESS 000 % TIME LEFT 48 HOURS
  DEFM 193," LEFT 48 HOURS"
  DEFM 0
; (02) Off-White Knight
  DEFM 201," ",117,111,"OTHER HALF ",122,105 ; OFF-WHITE IS THE OTHER HALF OF
                                             ; YOU
  DEFM 0
; (03) Aramis Le Peux
  DEFM 202," CAN'T WORK OUT W",169," ",111,249," ",117,"COM",123,"FROM!" ; ARAMIS
                                                                         ; CAN'T WORK
                                                                         ; OUT WHERE
                                                                         ; THE SMELL
                                                                         ; IS COMING
                                                                         ; FROM!
  DEFM 0
; (04) Robin of Shylock
  DEFM 203," ",117,97,"GOOD SHOT W",100,"H POINTED STICKS" ; ROBIN IS A GOOD
                                                           ; SHOT WITH POINTED
                                                           ; STICKS
  DEFM 0
; (05) Reggie the Rat
  DEFM 204," ",117,120,"VERY CLEAN" ; REGGIE IS NOT VERY CLEAN
  DEFM 0
; (06) Rachel of Amazonia
  DEFM 205," ",117,"GOOD AT MATHS" ; RACHEL IS GOOD AT MATHS
  DEFM 0
; (07) Barker the Ent
  DEFM 206," ",117,"INCREDIBLY OLD ",104,"GNARLED" ; BARKER IS INCREDIBLY OLD
                                                   ; AND GNARLED
  DEFM 0
; (08) Organon the Guard
  DEFM 207," ",117,"VERY TOUGH" ; ORGANON IS VERY TOUGH
  DEFM 0
; (09) Grunter the Bearwoolf
  DEFM 208," ",117,97,"REAL TOUGH DUDE" ; GRUNTER IS A REAL TOUGH DUDE
  DEFM 0
  DEFM 31," ",117,"ASLEEP" ; short name of Current Character} IS ASLEEP
  DEFM 0

; Miscellaneous Text 4
  DEFM 121                ; YOURSELF
  DEFM 0

; Text Relating to "COMMAND" Command
  DEFM 239," "            ; COMMAND
  DEFM 0
  DEFM 112,239," DO ",105,155," ",99,"USE ?",14,14 ; WHICH COMMAND DO YOU WANT
                                                   ; TO USE ? GO TO SLEEP WAKE
                                                   ; UP GO AWAY HELP EAT &
                                                   ; DRINK BE HAPPY
  DEFM 93,"GO ",99,"SLEEP",14
  DEFM 93,"WAKE UP",14
  DEFM 93,"GO AWAY",14
  DEFM 93,128,14
  DEFM 93,"EAT & ",251,14
  DEFM 93,"BE ",184
  DEFM 0
  DEFM "GO ",99,"SLEEP"   ; GO TO SLEEP
  DEFM 0
  DEFM "WAKE UP"          ; WAKE UP
  DEFM 0
  DEFM "GO AWAY"          ; GO AWAY
  DEFM 0
  DEFM 128                ; HELP
  DEFM 0
  DEFM "EAT & ",251       ; EAT & DRINK
  DEFM 0
  DEFM "BE ",184          ; BE HAPPY
  DEFM 0
  DEFM 4                  ; Height = 3
  DEFM 31," DOES ",120    ; short name of Current Character} DOES NOT WANT TO
                          ; BE COMMANDED BY YOU
  DEFM 155," ",99,"BE "
  DEFM 239,"ED BY ",105
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31," ",117         ; short name of Current Character} IS ALREADY ASLEEP
  DEFM 188," ASLEEP"
  DEFM 0
  DEFM 4                  ; Height = 3
  DEFM 31," ",117,"TOO "  ; short name of Current Character} IS TOO WAKEFUL TO
                          ; SLEEP
  DEFM "WAKEFUL ",99,"SLEEP"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31," ",152,"GONE " ; short name of Current Character} HAS GONE TO SLEEP
  DEFM 99,"SLEEP"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31," ",117         ; short name of Current Character} IS ALREADY AWAKE
  DEFM 188," AWAKE"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31,167," "         ; short name of Current Character} IS TOO TIRED TO
                          ; WAKE UP
  DEFM "WAKE UP"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31," ",152         ; short name of Current Character} HAS WOKEN UP
  DEFM "WOKEN UP"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31,167," "         ; short name of Current Character} IS TOO TIRED TO GO
                          ; AWAY
  DEFM "GO AWAY"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31," ",152         ; short name of Current Character} HAS GONE AWAY
  DEFM "GONE AWAY"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31," CAN",120      ; short name of Current Character} CANNOT HELP YOU
                          ; (see trivia)
  DEFM 128,105," "
  DEFM 0
  DEFM 4                  ; Height = 3
  DEFM 31,167," "         ; short name of Current Character} IS TOO TIRED TO
                          ; HELP YOU
  DEFM 128,105
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31," ",152         ; short name of Current Character} HAS NO FOOD LEFT
  DEFM 148," FOOD LEFT"
  DEFM 0
  DEFM 4                  ; Height = 3
  DEFM 31,167," "         ; short name of Current Character} IS TOO TIRED TO
                          ; EAT OR DRINK
  DEFM "EAT OR "
  DEFM 251
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31," ",152         ; short name of Current Character} HAS TAKEN
                          ; REFRESHMENT
  DEFM 236,"N REFRESHMENT"
  DEFM 0
  DEFM 4                  ; Height = 3
  DEFM 31,167," "         ; short name of Current Character} IS TOO TIRED TO BE
                          ; HAPPY
  DEFM "BE "
  DEFM 184
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31," ",154         ; short name of Current Character} WILL TRY TO BE
                          ; HAPPY
  DEFM "TRY ",99,"BE ",184
  DEFM 0

; Text Relating to "READ" Command
  DEFM 4                  ; Height = 3
  DEFM 142,117,148," "    ; THERE IS NO WRITING FOR ME TO {name of Current
                          ; Command}
  DEFM "WR",100,123,"FOR ME "
  DEFM 99,25
  DEFM 0

; List of Read-Texts of Readable Objects 00: Disquise
  DEFM 12                 ; Height = 11
  DEFM 92,29,14,14        ; name of Current Object} MAGIC DISQUISE KIT. THIS
                          ; KIT CONTAINS 6 DISQUISES 1. FOOTMAN 2. GUARD 3.
                          ; WIZARD 4. CHAMBERMAID 5. WHITE WITCH 6. WARRIOR
  DEFM 194," ",124," K",100,".",14
  DEFM 139,"K",100," CONTAINS 6 ",124,"S",14
  DEFM "1. ",130,14
  DEFM "2. ",131,14
  DEFM "3. ",132,14
  DEFM "4. ",133,14
  DEFM "5. ",134,14
  DEFM "6. ",135
  DEFM 0
; 01: Newspaper
  DEFM 12                 ; Height = 11
  DEFM 92,29,14           ; name of Current Object} SITUATIONS VACANT :
                          ; {Current Newspaper substring
  DEFM "S",100,"UATIONS VACANT :",14
  DEFM 28
  DEFM 0
; 02: Teddy Bear
  DEFM 5                  ; Height = 4
  DEFM 92,29,14           ; name of Current Object} TNORF OT KCAB
  DEFM "T",148,"RF OT KCAB"
  DEFM 0
; 03: Magic Talisman / Glow Shield / Boomerang / Sword / Brass Ankh / Elf-Horn
; / Silver Arrow
  DEFM 6                  ; Height = 5
  DEFM 92,29,14           ; name of Current Object} THERE IS WRITING HERE BUT
                          ; IT IS WRITTEN IN A MAGIC LANGUAGE THAT YOU CANNOT
                          ; {name of Current Command
  DEFM 142,117,"WR",100,123,169," "
  DEFM 113," ",100," ",117,"WR",100,"TEN "
  DEFM "IN ",97,194," LANGUAGE "
  DEFM 151,105,"CAN",120,25
  DEFM 0
; 04: Unused
  DEFM 0
; 05: Unused
  DEFM 0
; 06: Wand of Command
  DEFM 7                  ; Height = 6
  DEFM 92,29,14           ; name of Current Object} THERE ARE A WHOLE SERIES OF
                          ; REALLY TASTY LOOKING RUNES CARVED ON THIS RATHER
                          ; FLASH LOOKING WAND !
  DEFM 142,116," ",97,"WHOLE SERIES "
  DEFM 122,"RE",141,"Y TASTY LOOK",123
  DEFM "RUNES CARVED ON ",139
  DEFM "RATHER FLASH LOOK",123
  DEFM "W",104,"!"
  DEFM 0
; 07: Advert
  DEFM 12                 ; Height = 11
  DEFM 92,29,14,14        ; name of Current Object} GAME CONCEPT AND PROGRAM BY
                          ; DAVID JONES. GRAPHICS BY RAY OWEN. THIS GAME
                          ; CONTINUES THE ADVENTURES OF MAGIC KNIGHT, FOR
                          ; EARLIER EPISODES SEE FINDERS KEEPERS, SPELLBOUND
                          ; AND KNIGHT-TYME.
  DEFM 16,7,106,"CONCEPT ",104,"PROGRAM",14
  DEFM "BY ",16,6,18,129,". ",18
  DEFM 16,7,14,"GRAPHICS BY RAY OWEN.",14
  DEFM 139,106,"CONTINUES ",111
  DEFM "ADVENTURES ",122,233,", "
  DEFM "FOR EARLIER EPISODES SEE FINDERS "
  DEFM "KEEPERS, ",175,"BOUND ",104
  DEFM "KNIGHT-TYME."
  DEFM 0
; 08: Stick of Dynamite
  DEFM 5                  ; Height = 4
  DEFM 92,29,14           ; name of Current Object} {name of Current Object},
                          ; HANDLE WITH EXTREEME CAUTION! (bug)
  DEFM 29,", "
  DEFM "HANDLE W",100,"H EXTREEME "
  DEFM "CAUTION!"
  DEFM 0
; 09: Unused (see trivia)
  DEFM 4                  ; Height = 3
  DEFM 92,29,14           ; name of Current Object} CHEAPO PLASTIC PRODUCTS
                          ; LTD. MADE IN HONG KONG
  DEFM "CHEAPO PLASTIC PRODUCTS "
  DEFM "LTD. MADE IN HONG KONG"
  DEFM 0
; 10: Power Boots
  DEFM 5                  ; Height = 4
  DEFM 92,29,14           ; name of Current Object} THE LABEL {name of Current
                          ; Command}S 'SIZE 7 SOFT SOLE SPECIAL JUMPING BOOTS'
  DEFM 111,"LABEL ",25,"S 'SIZE 7 "
  DEFM "SOFT SOLE SPECIAL "
  DEFM "JUMP",123,"BOOTS'"
  DEFM 0
; 11: Crystal Ball
  DEFM 7                  ; Height = 6
  DEFM 92,29,14,14        ; name of Current Object} {Current Crystal Ball
                          ; substring
  DEFM 27
  DEFM 0
; 12: Scroll
  DEFM 10                 ; Height = 9
  DEFM 92,29,14           ; name of Current Object} {Current Scroll substring
  DEFM 26
  DEFM 0
; 13: Unused
  DEFM 0
; 14: Bottle of Liquid / Empty Bottle
  DEFM 5                  ; Height = 4
  DEFM 92,29,14           ; name of Current Object} OLDE GROG. BOTTLED AND
                          ; DISTRIBUTED BY P ARTIST & SON
  DEFM "OLDE GROG. ",149,"D ",104
  DEFM "DISTRI",113,"ED BY P ARTIST "
  DEFM "& SON"
  DEFM 0
; 15: Bottle of Liquid / Empty Bottle
  DEFM 5                  ; Height = 4
  DEFM 92,29,14           ; name of Current Object} SUPERSTRONG LIQUID BOTTLED
                          ; AND DISTRIBUTED BY A POTHECARY & SON
  DEFM "SUPERSTRONG LIQUID "
  DEFM 149,"D ",104,"DISTRI",113,"ED "
  DEFM "BY ",97,"POTHECARY & SON"
  DEFM 0
; 16: Unused
  DEFM 0
; 17: Torch
  DEFM 5                  ; Height = 4
  DEFM 92,29,14           ; name of Current Object} BRITELITE MEGA-TORCH
  DEFM "BR",100,"EL",100,"E MEGA-TORCH"
  DEFM 0
; 18: Unused
  DEFM 0
; 19: Unused
  DEFM 0
; 20: Unused
  DEFM 0
; 21: Wand of Command (with Crystal Ball)
  DEFM 6                  ; Height = 5
  DEFM 92,29,14           ; name of Current Object} THE RUNES WHEN {name of
                          ; Current Command} EXPLAIN THAT THIS OBJECT IS JOLLY
                          ; USEFUL FOR BOSSING PEOPLE ABOUT
  DEFM 111,"RUNES WHEN ",25," "
  DEFM "EXPLAIN ",151,139,103
  DEFM 117,"JOLLY USEFUL FOR "
  DEFM "BOSS",123,"PEOPLE ABOUT"
  DEFM 0
; 22: Unused (see trivia)
  DEFM 11                 ; Height = 10
  DEFM 92,29,14           ; name of Current Object} THE LABEL {name of Current
                          ; Command}S 'I AM MILNE THE BEAR SO PLEASE TREAT ME
                          ; WITH CARE, AND WASH ME WITH WARM WATER IF I GET
                          ; HORRIBLY DIRTY, AND IF YOU FIND ANY HUNNEY LYING
                          ; ABOUT I AM QUITE HAPPY TO SCOFF IT FOR YOU ' (see
                          ; trivia)
  DEFM 111,"LABEL ",25,"S 'I AM "
  DEFM "MILNE ",111,"BEAR SO PLEASE "
  DEFM "TREAT ME W",100,"H C",116,", ",104
  DEFM "WASH ME W",100,"H WARM WATER "
  DEFM "IF I ",234," HORRIBLY DIRTY, "
  DEFM 104,"IF ",105,"FIND ",108
  DEFM "HUNNEY LY",123,"ABOUT I AM "
  DEFM "QU",100,"E ",184," ",99,"SCOFF ",100," "
  DEFM "FOR ",105,"'"
  DEFM 0
; 23: Magic Talisman (with Crystal Ball)
  DEFM 4                  ; Height = 3
  DEFM 92,29,14           ; name of Current Object} WEAR ME FOR FAST MAGIC
                          ; POWER RESTORE
  DEFM 246," ME FOR FAST ",194," "
  DEFM "POWER RESTORE"
  DEFM 0
; 24: Glow Shield (with Crystal Ball)
  DEFM 6                  ; Height = 5
  DEFM 92,29,14           ; name of Current Object} HIGHEST QUALITY PLUTONIUM
                          ; {name of Current Object}. CREATED BY THE LEAD MEN
                          ; FOR SEEING IN THE DARK
  DEFM "HIGHEST QUAL",100,"Y "
  DEFM "PLUTONIUM ",29,". "
  DEFM "CREATED BY ",111,"LEAD MEN "
  DEFM "FOR SEE",123,"IN ",111,"DARK"
  DEFM 0
; 25: Boomerang (with Crystal Ball)
  DEFM 6                  ; Height = 5
  DEFM 92,29,14           ; name of Current Object} MAGIC {name of Current
                          ; Object}. WARNING :- CAN BE DANGEROUS. USE WITH CARE
  DEFM 194," ",29,".",14
  DEFM "WARN",123,":- C",98,"BE "
  DEFM "DANGEROUS. USE WITH CARE"
  DEFM 0
; 26: Unused
  DEFM 0
; 27: Brass Ankh (with Crystal Ball)
  DEFM 3                  ; Height = 2
  DEFM 92,29,14           ; name of Current Object} LIVE LONG AND PROSPER
  DEFM "LIVE LONG ",104,"PROSPER"
  DEFM 0
; 28: Elf-Horn (with Crystal Ball)
  DEFM 4                  ; Height = 3
  DEFM 92,29,14           ; name of Current Object} HORN OF SUMMONING
  DEFM "HORN ",122,"SUMMON",123
  DEFM 0
; 29: Silver Arrow (with Crystal Ball)
  DEFM 6                  ; Height = 5
  DEFM 92,29,14           ; name of Current Object} ANTI-POLLYMORPH ARROW
  DEFM "ANTI-POLLYMORPH ARROW"
  DEFM 0
; 30: Unused
  DEFM 0
; 31: List of Clues
  DEFM 8                  ; Height = 7
  DEFM 92,29,14           ; name of Current Object} THIS WRITING APPEARS TO BE
                          ; VERY OLD AND YOU CAN NOT READ IT
  DEFM 139,"WR",100,123,"APPEARS ",99
  DEFM "BE VERY OLD ",104,105,"C",98
  DEFM 120,242," ",100
  DEFM 0

; Newspaper Substrings Newspaper Substring 0
  DEFM 14,14              ; A FOOTMAN IS REQUIRED URGENTLY AT CASTLE STORMM.
                          ; SALARY IS NEGOTIABLE.
  DEFM 97,130,117,161,"D "
  DEFM "URGENTLY AT ",244,"LE "
  DEFM "STORMM. SALARY ",117
  DEFM "NEGOTIABLE."
  DEFM 0
; Newspaper Substring 1
  DEFM 14                 ; THE OFF-WHITE KNIGHT REQUIRES THE SERVICES OF AN
                          ; ADDITIONAL GUARD AT THE CASTLE DUE TO EXPANSION OF
                          ; THE TAX COLLECTION RACKET. PLEASE APPLY IN PERSON
                          ; WITH THIS ADVERT.
  DEFM 111,217," "
  DEFM 161,"S ",111,"SERVICES ",122
  DEFM 98,"ADD",100,"IONAL ",131,"AT "
  DEFM 111,244,"LE DUE ",99
  DEFM "EXPANSION ",122,111,"TAX "
  DEFM "COLLECTION RACKET. "
  DEFM "PLEASE APPLY IN PERSON "
  DEFM "W",100,"H ",139,"ADVERT."
  DEFM 0
; Newspaper Substring 2
  DEFM 14                 ; A NEW COURT WIZARD IS NOW REQUIRED. APPLY TO CASTLE
                          ; STORMM IN PERSON WITH THIS ADVERT. PLEASE NOTE THAT
                          ; 1ST LEVEL ADEPTS NEED NOT APPLY
  DEFM 97,"NEW COURT ",132,117
  DEFM 148,"W ",161,"D. APPLY ",99
  DEFM 244,"LE STORMM IN PERSON "
  DEFM "W",100,"H ",139,"ADVERT. PLEASE "
  DEFM 148,"TE ",151,"1ST LEVEL "
  DEFM "ADEPTS NEED ",120,"APPLY"
  DEFM 0
; Newspaper Substring 3
  DEFM 14,14              ; THERE IS A VACANCY AT THE CASTLE FOR ONE
                          ; CHAMBERMAID WITH A MINIMUM EDUCATION OF CLASS 1
                          ; HONOURS DEGREE. PLEASE APPLY IN PERSON.
  DEFM 142,117,97,"VACANCY AT "
  DEFM 111,244,"LE FOR ONE "
  DEFM 133,"W",100,"H ",97
  DEFM "MINIMUM EDUCATION ",122
  DEFM "CLASS 1 HO",148,"URS DEGREE.",14
  DEFM "PLEASE APPLY IN PERSON."
  DEFM 0
; Newspaper Substring 4
  DEFM 14,14              ; A VACANCY NOW EXISTS FOR A WHITE WITCH AT CASTLE
                          ; STORMM DUE TO THE SUDDEN RESIGNATION OF GRETOL THE
                          ; SEER.
  DEFM 97,"VACANCY ",148,"W EXISTS FOR "
  DEFM 97,134,"AT ",244,"LE "
  DEFM "STORMM DUE ",99,111,"SUDDEN "
  DEFM "RESIGNATION ",122,"GRETOL "
  DEFM 111,"SEER."
  DEFM 0
; Newspaper Substring 5
  DEFM 14                 ; A STRONG WARRIOR IS REQUIRED AT THE CASTLE FOR THE
                          ; NEW POST OF BOUNCER. DUTIES TO INCLUDE KEEPING
                          ; HUNGRY PEASANTS AWAY FROM THEIR LORD AND MASTER THE
                          ; OFF-WHITE KNIGHT.
  DEFM 97,"STRONG ",135,117
  DEFM 161,"D AT ",111,244,"LE "
  DEFM "FOR ",111,"NEW POST ",122
  DEFM "BOUNCER. DUTIES ",99
  DEFM "INCLUDE KEEP",123,"HUNGRY "
  DEFM "PEASANTS AWAY ",102,143," "
  DEFM "LORD ",104,"MASTER ",111
  DEFM 217,"."
  DEFM 0

; Crystal Ball Substrings Crystal Ball Substring 0
  DEFM 105,154,"NEED SPECIAL " ; YOU WILL NEED SPECIAL JUMPING BOOTS TO REACH
                               ; THE UPPER LEVELS OF CASTLE STORMM
  DEFM "JUMP",123,"BOOTS ",99,"REACH "
  DEFM 111,"UPPER LEVELS ",122
  DEFM 244,"LE STORMM"
  DEFM 0
; Crystal Ball Substring 1
  DEFM 100," ",117,"VERY EASY ",99 ; IT IS VERY EASY TO RETURN FROM LIMBO
  DEFM "RETURN ",102,"LIMBO"
  DEFM 0
; Crystal Ball Substring 2
  DEFM 105,"DO ",120,"NEED ",111 ; YOU DO NOT NEED THE CRYSTAL BALL BUT IT
                                 ; COULD HELP
  DEFM 138," B",141," ",113," ",100," "
  DEFM "COULD HELP"
  DEFM 0
; Crystal Ball Substring 3
  DEFM 105,"MUST USE ",119,"BINARY " ; YOU MUST USE YOUR BINARY KNOWLEDGE TO
                                     ; LEVER YOUR WAY TO THE STARS..
  DEFM "K",148,"WLEDGE ",99,107," ",119
  DEFM "WAY ",99,111,"STARS.. "
  DEFM 0
; Crystal Ball Substring 4
  DEFM 217," MUST BE "    ; OFF-WHITE KNIGHT MUST BE ASLEEP BEFORE YOU CAN
                          ; MERGE WITH HIM
  DEFM "ASLEEP BEFORE ",105,"C",98
  DEFM "MERGE W",100,"H HIM"
  DEFM 0
; Crystal Ball Substring 5
  DEFM "DO ",125,"SILLY W",100,"H " ; DO SOMETHING SILLY WITH THE TELEPORT PAD
                                    ; AND TELEPORT KEY AND YOU WILL WIND UP IN
                                    ; LIMBO
  DEFM 111,241," PAD ",104
  DEFM 241," ",109," ",104,105
  DEFM 154,"WIND UP IN LIMBO"
  DEFM 0
; Crystal Ball Substring 6
  DEFM 111,194," MISSILE ",154 ; THE MAGIC MISSILE WILL INDUCE SLEEP IN ANYBODY
                               ; THAT IT IS THROW AT (bug)
  DEFM "INDUCE SLEEP IN ANY",157
  DEFM 151,100," ",117,243," AT"
  DEFM 0
; Crystal Ball Substring 7
  DEFM 218," C",98,"READ " ; ARAMIS LE PEUX CAN READ THE LIST OF CLUES
  DEFM 111,"LIST OF CLUES"
  DEFM 0

; Scroll Substrings Scroll Substring 0
  DEFM 14,14,14,14        ; WATCH OUT FOR THE STORM CLOUD!
  DEFM "WATCH OUT FOR ",111,"STORM "
  DEFM "CLOUD!"
  DEFM 0
; Scroll Substring 1
  DEFM 14,14,14           ; OFF-WHITE KNIGHT IS THE BAD HALF OF MAGIC KNIGHT
  DEFM 217," ",117,111
  DEFM "BAD HALF ",122,233
  DEFM 0
; Scroll Substring 2
  DEFM 14,14              ; TO TRAVEL TO PEOPLE YOU WILL NEED TO CARRY TWO
                          ; SPECIAL OBJECTS
  DEFM 99,156," ",99,"PEOPLE ",105
  DEFM 154,"NEED ",99,"CARRY TWO "
  DEFM "SPECIAL OBJECTS"
  DEFM 0
; Scroll Substring 3
  DEFM 14,14,14           ; OFF-WHITE KNIGHT IS TRYING TO KILL YOU
  DEFM 217," ",117
  DEFM "TRY",123,99,"KILL ",105
  DEFM 0
; Scroll Substring 4
  DEFM 14,14,14           ; YOU MUST NOT KILL OFF-WHITE KNIGHT
  DEFM 105,"MUST ",120,"KILL "
  DEFM 217
  DEFM 0
; Scroll Substring 5
  DEFM 14,14              ; YOU MUST MERGE WITH OFF-WHITE KNIGHT TO BECOME A
                          ; WHOLE PERSON AGAIN
  DEFM 105,"MUST MERGE W",100,"H "
  DEFM 217," ",99
  DEFM "BECOME ",97,"WHOLE PERSON "
  DEFM "AGAIN"
  DEFM 0
; Scroll Substring 6
  DEFM 14,14,14,14        ; DISQUISE CAN BE USEFUL SOMETIMES (bug)
  DEFM 124," C",98,"BE USEFUL "
  DEFM 146,193,"S"
  DEFM 0
; Scroll Substring 7
  DEFM 14,14,14           ; THE MAGIC MISSILE CAN PROVIDE TRAVELLING ENERGY
  DEFM 111,194," MISSILE C",98
  DEFM "PROVIDE ",156,"L",123
  DEFM "ENERGY"
  DEFM 0
; Scroll Substring 8 [bug]
  DEFM 105,154,"NEED SPECIAL " ; YOU WILL NEED SPECIAL JUMPING BOOTS TO REACH
                               ; THE UPPER LEVELS OF CASTLE STORMM
  DEFM "JUMP",123,"BOOTS ",99,"REACH "
  DEFM 111,"UPPER LEVELS ",122
  DEFM 244,"LE STORMM"
  DEFM 0

; Clue Texts Clue 0
  DEFM 5                  ; Height = 4
  DEFM 218," ",118        ; ARAMIS LE PEUX SAYS "THE MAGIC MISSILE IS SOMEWHERE
                          ; IN THE CAVES"
  DEFM 34,111,194," MISSILE ",117
  DEFM 146,"W",169," IN ",111
  DEFM "CAVES",34
  DEFM 0
; Clue 1
  DEFM 4                  ; Height = 3
  DEFM 218," ",118        ; ARAMIS LE PEUX SAYS "THE ELF-HORN CAN BE USED TO
                          ; SUMMON PEOPLE"
  DEFM 34,111,"ELF-HORN C",98,"BE "
  DEFM "USED ",99,115,"PEOPLE",34
  DEFM 0
; Clue 2
  DEFM 5                  ; Height = 4
  DEFM 218," ",118        ; ARAMIS LE PEUX SAYS "THE CRYSTAL BALL IS NEEDED TO
                          ; READ MAGIC WRITING "
  DEFM 34,111,138," B",141," ",117
  DEFM "NEEDED ",99,242," ",194," "
  DEFM "WR",100,123,34
  DEFM 0
; Clue 3
  DEFM 6                  ; Height = 5
  DEFM 218," ",118,34,97  ; ARAMIS LE PEUX SAYS "A YELLOW STREAK MIGHT NOT HELP
                          ; BUT A BIRD WITH SIMILAR ATTRIBUTES MIGHT!"
  DEFM "YELLOW STREAK MIGHT "
  DEFM 120,128,113," ",97,"BIRD "
  DEFM "W",100,"H SIMILAR "
  DEFM 164,"S MIGHT!",34
  DEFM 0
; Clue 4
  DEFM 5                  ; Height = 4
  DEFM 218," ",118        ; ARAMIS LE PEUX SAYS "AN ADVERT CAN HELP GET THE
                          ; POINT FOR ROBIN"
  DEFM 34,98,"ADVERT C",98,128
  DEFM 234," ",111,"POINT FOR "
  DEFM "ROBIN",34
  DEFM 0
; Clue 5
  DEFM 5                  ; Height = 4
  DEFM 218," ",118        ; ARAMIS LE PEUX SAYS "COPPER, SILVER, GOLD. JUST
                          ; WAIT AND YOU WILL BEHOLD!"
  DEFM 34,137,", ",136,", GOLD. "
  DEFM "JUST WA",100," ",104,105,154
  DEFM "BEHOLD!",34
  DEFM 0
; Clue 6
  DEFM 5                  ; Height = 4
  DEFM 218," ",118        ; ARAMIS LE PEUX SAYS "SPECIAL JUMPING BOOTS ARE
                          ; AVAILABLE IN LIMBO"
  DEFM 34,"SPECIAL JUMP",123,"BOOTS "
  DEFM 116," AVAILABLE IN "
  DEFM "LIMBO",34
  DEFM 0
; Clue 7
  DEFM 5                  ; Height = 4
  DEFM 218," ",118        ; ARAMIS LE PEUX SAYS "DANGEROUS USE OF TELEPORT PADS
                          ; WILL TAKE YOU TO LIMBO"
  DEFM 34,"DANGEROUS USE ",122
  DEFM 241," PADS ",154
  DEFM 236," ",105,99,"LIMBO",34
  DEFM 0

; Text Relating to "CAST A SPELL" Command
  DEFM 11                 ; Height = 10
  DEFM 112,175," DO ",105,155," " ; WHICH SPELL DO YOU WANT TO {name of Current
                                  ; Command} ? DIMENSION MERGE MELT GRANITE
                                  ; PASS PLANT SPELL OF WONDER TRAVEL TO PERSON
                                  ; MAGIC FULCRUM QUITICUS GAMUS
  DEFM 99,25," ?",91
  DEFM 93,179,14
  DEFM 93,180,14
  DEFM 93,181,14
  DEFM 93,176,14
  DEFM 93,182,14
  DEFM 93,183,14
  DEFM 93,173
  DEFM 0
  DEFM 4                  ; Height = 3
  DEFM 105,"CAN",120,25," " ; YOU CANNOT {name of Current Command} THAT SPELL
                            ; NOW. MAYBE YOU NEED MORE SPELL POWER
  DEFM 151,175," ",148,"W. MAYBE ",105
  DEFM "NEED MORE ",175," POWER"
  DEFM 0
  DEFM 5                  ; Height = 4
  DEFM 105,116," ",120    ; YOU ARE NOT NEAR ENOUGH TO THE RIGHT TYPE OF PLANT
  DEFM "NEAR E",148,"UGH ",99
  DEFM 111,"RIGHT TYPE "
  DEFM 122,"PLANT"
  DEFM 0
  DEFM 10                 ; Height = 9
  DEFM 105,"FIND "        ; YOU FIND YOURSELF STANDING BESIDE A SIMILAR PLANT
                          ; BUT YOU HAVE TRAVELLED TO SOMEWHERE ELSE!
  DEFM 121
  DEFM "STAND",123
  DEFM "BESIDE ",97
  DEFM "SIMILAR PLANT "
  DEFM 113," ",105,"HAVE "
  DEFM 156,"LED ",99
  DEFM 146,"W",169," "
  DEFM "ELSE!"
  DEFM 0
  DEFM 13                 ; Height = 12
  DEFM 105,"FEEL ",111    ; YOU FEEL THE USUAL MAGIC ENERGY DRAIN OF SPELL
                          ; {name of Current Command}ING BUT YOU WONDER WHAT
                          ; HAS ACTUALLY HAPPENED! NOTHING SEEMS TO HAVE
                          ; CHANGED!
  DEFM "USUAL ",194," "
  DEFM "ENERGY DRAIN "
  DEFM 122,175," "
  DEFM 25,123,113," "
  DEFM 105,"WONDER "
  DEFM "WHAT ",152
  DEFM "ACTU",141,"Y "
  DEFM "HAPPENED! "
  DEFM 140," SEEMS "
  DEFM 99,"HAVE "
  DEFM "CHANGED!"
  DEFM 0
  DEFM 10                 ; Height = 9
  DEFM 105,"FEEL SEVEN "  ; YOU FEEL SEVEN LEVERS ALL MOVING TO THEIR START
                          ; POSITIONS. BALANCE IS RESTORED SOMEWHERE NEARBY.
  DEFM 107,"S ",141," "
  DEFM "MOV",123,99
  DEFM 143," START "
  DEFM "POS",100,"IONS. "
  DEFM "BALANCE ",117
  DEFM "RESTORED "
  DEFM 146,"W",169," "
  DEFM "NEARBY."
  DEFM 0
  DEFM 7                  ; Height = 6
  DEFM 105,"FEEL ",119,157 ; YOU FEEL YOUR BODY SUCKED THROUGH A BYPASS IN
                           ; NULL-SPACE AND SUDDENLY FIND YOURSELF STANDING IN
                           ; FRONT OF {short name of Current Character}
  DEFM "SUCKED THROUGH ",97
  DEFM "BYPASS IN NULL-SPACE "
  DEFM 104,"SUDDENLY FIND "
  DEFM 121,"STAND",123,"IN "
  DEFM "FRONT ",122,31
  DEFM 0
  DEFM 244," ",179,0      ; CAST DIMENSION MERGE
  DEFM 244," ",180,0      ; CAST MELT GRANITE
  DEFM 244," ",181,0      ; CAST PASS PLANT
  DEFM 244," ",176,0      ; CAST SPELL OF WONDER
  DEFM 156," ",99,14,0    ; TRAVEL TO
  DEFM 244," ",183,0      ; CAST MAGIC FULCRUM
  DEFM 244," ",173,0      ; CAST QUITICUS GAMUS
  DEFM 156," ",99,0       ; TRAVEL TO

; Text Relating to "THROW" Command
  DEFM " AT ",0           ; AT
  DEFM 4                  ; Height = 3
  DEFM 111,29," "         ; THE {name of Current Object} LANDED ON THE FLOOR BY
                          ; {short name of Current Character}
  DEFM "LANDED ON ",111,177," BY "
  DEFM 31
  DEFM 0
  DEFM 5                  ; Height = 4
  DEFM 111,29," "         ; THE {name of Current Object} LANDED ON THE FLOOR BY
                          ; {short name of Current Character} AND SMASHED INTO
                          ; TINY LITTLE BITS
  DEFM "LANDED ON ",111,177," BY "
  DEFM 31," ",104,"SMASHED "
  DEFM "IN",99,"TINY L",100,"TLE B",100,"S"
  DEFM 0
  DEFM 9                  ; Height = 8
  DEFM 105,"THREW ",111,29," " ; YOU THREW THE {name of Current Object} AT
                               ; {short name of Current Character} BUT IT CAME
                               ; BACK AND KILLED YOU !
  DEFM "AT ",31," "
  DEFM 113," ",100," CAME BACK ",104
  DEFM 163,105,"!"
  DEFM 0

; Text Relating to "BLOW" Command
  DEFM 5                  ; Height = 4
  DEFM 31," ",118,"'I CAN",120 ; short name of Current Character} SAYS 'I
                               ; CANNOT COME TO THAT ROOM AT THE MOMENT BECAUSE
                               ; YOU ARE IN MY WAY!'
  DEFM "COME ",99,151,178," AT "
  DEFM 111,"MOMENT BECAUSE ",105
  DEFM 116," IN MY WAY!'"
  DEFM 0
  DEFM 4                  ; Height = 3
  DEFM 31," ",118,"'I "   ; short name of Current Character} SAYS 'I THINK YOU
                          ; ARE THE ONE THAT SHOULD GO AWAY!'
  DEFM "THINK ",105,116," ",111,"ONE "
  DEFM 151,"SHOULD GO AWAY!'"
  DEFM 0
  DEFM 115,0              ; SUMMON
  DEFM 8                  ; Height = 7
  DEFM "I THINK ",105     ; I THINK YOU SHOULD GIVE UP TRYING TO PLAY THE {name
                          ; of Current Object} THAT WAS TERRIBLE !
  DEFM "SHOULD ",237," UP "
  DEFM "TRY",123,99,"PLAY "
  DEFM 111,29," "
  DEFM 151,160,"TERRIBLE !"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 30," ",117         ; full name of Current Character} IS ASLEEP
  DEFM "ASLEEP"
  DEFM 0
  DEFM 4                  ; Height = 3
  DEFM 30,14              ; full name of Current Character} DOES NOT WANT TO BE
                          ; SUMMONED
  DEFM "DOES ",120,155," ",99,"BE "
  DEFM "SUMMONED"
  DEFM 0
  DEFM 4                  ; Height = 3
  DEFM 30," ",117         ; full name of Current Character} IS TOO TIRED TO BE
                          ; SUMMONED
  DEFM "TOO TIRED ",99,"BE "
  DEFM "SUMMONED"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 30," ",117         ; full name of Current Character} IS ALREADY HERE!
  DEFM 188," ",169,"!"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 31," DOES "        ; short name of Current Character} DOES NOT WANT TO
                          ; COME HERE!
  DEFM 120,155," ",99
  DEFM "COME ",169,"!"
  DEFM 0
  DEFM 5                  ; Height = 4
  DEFM "WHAT ",97,"LOT ",122 ; WHAT A LOT OF DUST. DOESN'T ANYBODY CLEAN THIS
                             ; PLACE ?
  DEFM "DUST. DOESN'T "
  DEFM "ANY",157,"CLE",98
  DEFM 139,"PLACE ?"
  DEFM 0
  DEFM 4                  ; Height = 3
  DEFM 30," "             ; full name of Current Character} APPEARS IN A THICK
                          ; PUFF OF SMOKE
  DEFM "APPEARS IN ",97,"THICK "
  DEFM "PUFF ",122,"SMOKE"
  DEFM 0

; Text Relating to "WEAR/UNWEAR OBJECT" Command
  DEFM 14                 ; name of Current Command} UN{name of Current Command
  DEFM 93,25,14
  DEFM 93,"UN",25
  DEFM 0
  DEFM "UN",25," ",111,0  ; UN{name of Current Command} THE
  DEFM "UN",25," ",112,103,"?",14,0 ; UN{name of Current Command} WHICH OBJECT
                                    ; ?
  DEFM 3                  ; Height = 2
  DEFM 105,116," ",25,123 ; YOU ARE {name of Current Command}ING TOO MUCH
  DEFM "TOO MUCH"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 105,"CAN",120,25," " ; YOU CANNOT {name of Current Command} THAT
  DEFM 151
  DEFM 0
  DEFM 10                 ; Height = 9
  DEFM 112,124," DO "     ; WHICH DISQUISE DO YOU WANT TO {name of Current
                          ; Command}? FOOTMAN GUARD WIZARD CHAMBERMAID WHITE
                          ; WITCH WARRIOR
  DEFM 105,155," ",99,25,"?",14,14
  DEFM 93,130,14
  DEFM 93,131,14
  DEFM 93,132,14
  DEFM 93,133,14
  DEFM 93,134,14
  DEFM 93,135
  DEFM 0

; Text Relating to "TELEPORT" Command
  DEFM 5                  ; Height = 4
  DEFM 100," ",160,120,"SAFE " ; IT WAS NOT SAFE TO TELEPORT SO YOU HAVE WOUND
                               ; UP IN LIMBO
  DEFM 99,241," SO "
  DEFM 105,"HAVE WOUND UP "
  DEFM "IN LIMBO"
  DEFM 0

; Text Relating to "TICKLE" Command
  DEFM 247," ",0          ; TICKLE
  DEFM 6                  ; Height = 5
  DEFM 31," GIGGLES "     ; short name of Current Character} GIGGLES AND BURSTS
                          ; INTO LAUGHTER. WHAT A NICE WAY TO CHEER SOMEBODY
                          ; UP!
  DEFM 104,"BURSTS IN",99
  DEFM "LAUGHTER. WHAT ",97
  DEFM "NICE WAY ",99,"CHEER "
  DEFM 146,157,"UP!"
  DEFM 0

; Object names
;
; Zero-terminated strings
  DEFM 140," AT ",141,0   ; NOTHING AT ALL
  DEFM 124,0              ; DISQUISE
  DEFM 138," B",141,0     ; CRYSTAL BALL
  DEFM "W",104,122,239,0  ; WAND OF COMMAND
  DEFM 159,0              ; TEDDY BEAR
  DEFM "STICK ",122,"DYNAM",100,"E",0 ; STICK OF DYNAMITE
  DEFM 194," TALISMAN",0  ; MAGIC TALISMAN
  DEFM 126,0              ; BROKEN GLASS
  DEFM 126,0              ; BROKEN GLASS
  DEFM 126,0              ; BROKEN GLASS
  DEFM "HORSE FEATHER",0  ; HORSE FEATHER
  DEFM "POWER BOOTS",0    ; POWER BOOTS
  DEFM "GLOW SHIELD",0    ; GLOW SHIELD
  DEFM "CHICKEN",0        ; CHICKEN
  DEFM "BOOMERANG",0      ; BOOMERANG
  DEFM "SWORD",0          ; SWORD
  DEFM "BRASS ANKH",0     ; BRASS ANKH
  DEFM 150,0              ; BOTTLE OF LIQUID
  DEFM 150,0              ; BOTTLE OF LIQUID
  DEFM "TORCH",0          ; TORCH
  DEFM "MIRROR",0         ; MIRROR
  DEFM "GAD",234," X",0   ; GADGET X
  DEFM "ELF-HORN",0       ; ELF-HORN
  DEFM 136," ARROW",0     ; SILVER ARROW
  DEFM 95," ",145,0       ; INSTRUCTION BOOK
  DEFM 194," MISSILE",0   ; MAGIC MISSILE
  DEFM "ADVERT",0         ; ADVERT
  DEFM "SCROLL",0         ; SCROLL
  DEFM "EMPTY ",149,0     ; EMPTY BOTTLE
  DEFM "EMPTY ",149,0     ; EMPTY BOTTLE
  DEFM "SHIELD",0         ; SHIELD
  DEFM 241," ",109,0      ; TELEPORT KEY
  DEFM 241," PAD",0       ; TELEPORT PAD
  DEFM "NEWSPAPER",0      ; NEWSPAPER
  DEFM "LIST ",122,"CLUES",0 ; LIST OF CLUES
  DEFM "BOW",0            ; BOW
  DEFM 127,114,0          ; GOLDEN EGG
  DEFM 136," ",114,0      ; SILVER EGG
  DEFM 137," ",114,0      ; COPPER EGG
  DEFM 127,114,0          ; GOLDEN EGG
  DEFM 136," ",114,0      ; SILVER EGG
  DEFM 137," ",114,0      ; COPPER EGG
  DEFM "X",0              ; Unused (see trivia)

; Room names
;
; Strings are zero-terminated. For rooms without a name, the entry is a single
; zero byte. For rooms with names, the first byte of the entry is data, and the
; text string itself starts at the second byte. The data structure is:
  DEFM 5,"LIMBO",0        ; LIMBO
  DEFM 16,158,"S HOARD",0 ; BEARWOOLFS HOARD (bug)
  DEFM 15,171,0           ; BEARWOOLFS CAVE
  DEFM 16,"BEW",116," ",158,0 ; BEWARE BEARWOOLF
  DEFM 17,111,185,172,0   ; THE SPOOKY FOREST
  DEFM 0                  ; Unused
  DEFM 17,111,185,172,0   ; THE SPOOKY FOREST
  DEFM 25,111,"SWORD IN ",111,"CONCRETE",0 ; THE SWORD IN THE CONCRETE
  DEFM 18,"ROBIN'S L",100,"TLE HUT",0 ; ROBIN'S LITTLE HUT
  DEFM 15,"EX",100," ",102,"LIMBO",0 ; EXIT FROM LIMBO
  DEFM 18,"MORE ",185,172,0 ; MORE SPOOKY FOREST
  DEFM 7,"ENTWOOD",0      ; ENTWOOD
  DEFM 17,111,185,172,0   ; THE SPOOKY FOREST
  DEFM 17,111,185,172,0   ; THE SPOOKY FOREST
  DEFM 12,250,123,"WELL",0 ; WISHING WELL
  DEFM 0                  ; Unused
  DEFM 19,111,244,"LE ENTRANCE",0 ; THE CASTLE ENTRANCE
  DEFM 12,"ONE AXE ",178,0 ; ONE AXE ROOM
  DEFM 20,"INDOOR BOWLING GREEN",0 ; INDOOR BOWLING GREEN
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 17,"MORE AXE PROBLEMS",0 ; MORE AXE PROBLEMS
  DEFM 14,"EVEN MORE AXES",0 ; EVEN MORE AXES
  DEFM 20,111,"FIRST JUMP CHUTE",0 ; THE FIRST JUMP CHUTE
  DEFM 12,174,107," 7",0  ; MAIN LEVER 7
  DEFM 12,174,107," 6",0  ; MAIN LEVER 6
  DEFM 28,"SECUR",100,"Y DOOR & ",174,107," 5",0 ; SECURITY DOOR & MAIN LEVER 5
  DEFM 12,174,107," 4",0  ; MAIN LEVER 4
  DEFM 12,174,107," 3",0  ; MAIN LEVER 3
  DEFM 12,174,107," 2",0  ; MAIN LEVER 2
  DEFM 12,174,107," 1",0  ; MAIN LEVER 1
  DEFM 19,111,"BROKEN ",241,0 ; THE BROKEN TELEPORT
  DEFM 14,"TERRIBLE TWINS",0 ; TERRIBLE TWINS
  DEFM 20,111,"GUARDIAN STATUES",0 ; THE GUARDIAN STATUES
  DEFM 16,168,0           ; ONE WAY CORRIDOR
  DEFM 16,168,0           ; ONE WAY CORRIDOR
  DEFM 16,168,0           ; ONE WAY CORRIDOR
  DEFM 0                  ; Unused
  DEFM 16,"BIG WH",100,"E STATUE",0 ; BIG WHITE STATUE
  DEFM 0                  ; Unused
  DEFM 13,241," ",178,0   ; TELEPORT ROOM
  DEFM 16,168,0           ; ONE WAY CORRIDOR
  DEFM 16,168,0           ; ONE WAY CORRIDOR
  DEFM 16,168,0           ; ONE WAY CORRIDOR
  DEFM 0                  ; Unused
  DEFM 16,111,"CONTROL ",178,0 ; THE CONTROL ROOM
  DEFM 18,"M",108,"SCREENED ",178,0 ; MANY SCREENED ROOM
  DEFM 13,241," ",178,0   ; TELEPORT ROOM
  DEFM 0                  ; Unused
  DEFM 15,111,"POWER PLANT",0 ; THE POWER PLANT
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused

; Miscellaneous Text 5
  DEFM 146,157,"SW",100,"CHED OUT " ; SOMEBODY SWITCHED OUT THE LIGHT. YOU FALL
                                    ; AND INJURE YOURSELF FATALLY ON YOUR
                                    ; ARMOUR WHY NOT CARRY A TORCH OR SOMETHING
                                    ; SIMILAR NEXT TIME ? HARD LUCK MAGIC
                                    ; KNIGHT
  DEFM 111,"LIGHT. ",105,"F",141," "
  DEFM 104,"INJURE ",121
  DEFM "FAT",141,"Y ON ",119,"ARMOUR",14,14
  DEFM "WHY ",120,"CARRY ",97,"TORCH "
  DEFM "OR ",125,"SIMILAR "
  DEFM "NEXT ",193," ?",14,14
  DEFM "HARD LUCK ",233
  DEFM 0
  DEFM 10                 ; Height = 9
  DEFM 105,"STOOD FAR TOO " ; YOU STOOD FAR TOO CLOSE TO BEARWOOLF AND IT
                            ; LASHED OUT AT YOU WITH ITS ENORMOUS GREEN ARM
  DEFM "CLOSE ",99,158," ",104
  DEFM 100," LASHED OUT AT ",105
  DEFM "W",100,"H ",100,"S E",148,"RMOUS "
  DEFM "GREEN ARM"
  DEFM 0
  DEFM 6                  ; Height = 5
  DEFM 146,157,"YELLS ",34,"T",97 ; SOMEBODY YELLS "TA FOR THE EGG MATE. YOU
                                  ; CAN HAVE A WISH IF YOU WANT!" IN A DEEP
                                  ; VOICE
  DEFM "FOR ",111,114," MATE. "
  DEFM 105,"C",98,"HAVE ",97
  DEFM 250," IF ",105,155,"!",34," "
  DEFM "IN ",97,"DEEP VOICE"
  DEFM 0
  DEFM 5                  ; Height = 4
  DEFM 105,"C",98,249," " ; YOU CAN SMELL NOTHING BECAUSE YOUR NOSE IS BLOCKED!
  DEFM 140," BECAUSE "
  DEFM 119,"NOSE ",117
  DEFM "BLOCKED!"
  DEFM 0
  DEFM 3                  ; Height = 2
  DEFM 119,25," "         ; YOUR {name of Current Command} HAS BEEN GRANTED!
  DEFM 152,"BEEN GRANTED!"
  DEFM 0
  DEFM 10                 ; Height = 9
  DEFM 111,107," "        ; THE LEVER SPRUNG BACK INTO POSITION. NOTHING SEEMS
                          ; TO HAVE HAPPENED BUT THAT DOES NOT MAKE MUCH SENSE
                          ; DOES IT?
  DEFM "SPRUNG BACK "
  DEFM "IN",99,"POS",100,"ION. "
  DEFM 140," SEEMS "
  DEFM 99,"HAVE "
  DEFM "HAPPENED ",113," "
  DEFM 151,"DOES ",120
  DEFM "MAKE MUCH SENSE "
  DEFM "DOES ",100,"?"
  DEFM 0
  DEFM 7                  ; Height = 6
  DEFM "MMMMM.. TASTY. "  ; MMMMM.. TASTY. YOU CAN FEEL NEW STRENGTH AND
                          ; VITALITY SURGING THROUGH YOUR VEINS
  DEFM 105,"C",98,"FEEL "
  DEFM "NEW ",144
  DEFM 104,"V",100,"AL",100,"Y "
  DEFM "SURG",123,"THROUGH "
  DEFM 119,"VEINS"
  DEFM 0

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
  DEFM "INSTRUCTION",0    ; INSTRUCTION
  DEFM " = ",0            ; =
  DEFM "A ",0             ; A
  DEFM "AN ",0            ; AN
  DEFM "TO ",0            ; TO
  DEFM "IT",0             ; IT
  DEFM "CHARACTER",0      ; CHARACTER
  DEFM "FROM ",0          ; FROM
  DEFM "OBJECT ",0        ; OBJECT
  DEFM "AND ",0           ; AND
  DEFM "YOU ",0           ; YOU
  DEFM "GAME ",0          ; GAME
  DEFM "LEVER",0          ; LEVER
  DEFM "ANY ",0           ; ANY
  DEFM "KEY",0            ; KEY
  DEFM "   ",0
  DEFM "THE ",0           ; THE
  DEFM "WHICH ",0         ; WHICH
  DEFM "BUT",0            ; BUT
  DEFM "EGG",0            ; EGG
  DEFM "SUMMON ",0        ; SUMMON
  DEFM "ARE",0            ; ARE
  DEFM "IS ",0            ; IS
  DEFM "SAYS ",0          ; SAYS
  DEFM "YOUR ",0          ; YOUR
  DEFM "NOT ",0           ; NOT
  DEFM "YOURSELF ",0      ; YOURSELF
  DEFM "OF ",0            ; OF
  DEFM "ING ",0           ; ING
  DEFM "DISQUISE",0       ; DISQUISE (bug)
  DEFM "SOMETHING ",0     ; SOMETHING
  DEFM "BROKEN GLASS",0   ; BROKEN GLASS
  DEFM "GOLDEN ",0        ; GOLDEN
  DEFM "HELP ",0          ; HELP
  DEFM "DAVID JONES",0    ; DAVID JONES
  DEFM "FOOTMAN ",0       ; FOOTMAN
  DEFM "GUARD ",0         ; GUARD
  DEFM "WIZARD ",0        ; WIZARD
  DEFM "CHAMBERMAID ",0   ; CHAMBERMAID
  DEFM "WHITE WITCH ",0   ; WHITE WITCH
  DEFM "WARRIOR ",0       ; WARRIOR
  DEFM "SILVER",0         ; SILVER
  DEFM "COPPER",0         ; COPPER
  DEFM "CRYSTAL",0        ; CRYSTAL
  DEFM "THIS ",0          ; THIS
  DEFM "NOTHING",0        ; NOTHING
  DEFM "ALL",0            ; ALL
  DEFM "THERE ",0         ; THERE
  DEFM "THEIR",0          ; THEIR
  DEFM "STRENGTH ",0      ; STRENGTH
  DEFM "BOOK",0           ; BOOK
  DEFM "SOME",0           ; SOME
  DEFM "YES",0            ; YES
  DEFM "NO",0             ; NO
  DEFM "BOTTLE",0         ; BOTTLE
  DEFM "BOTTLE OF LIQUID",0 ; BOTTLE OF LIQUID (see trivia)
  DEFM "THAT ",0          ; THAT
  DEFM "HAS ",0           ; HAS
  DEFM "BREAK ",0         ; BREAK
  DEFM "WILL ",0          ; WILL
  DEFM "WANT",0           ; WANT
  DEFM "TRAVEL",0         ; TRAVEL
  DEFM "BODY ",0          ; BODY
  DEFM "BEARWOOLF",0      ; BEARWOOLF
  DEFM "TEDDY BEAR",0     ; TEDDY BEAR
  DEFM "WAS ",0           ; WAS
  DEFM "REQUIRE",0        ; REQUIRE
  DEFM "PRESS",0          ; PRESS
  DEFM "KILLED ",0        ; KILLED
  DEFM "ATTRIBUTE",0      ; ATTRIBUTE
  DEFM "STORMBRINGER",0   ; STORMBRINGER
  DEFM "COPYRIGHT ",0     ; COPYRIGHT
  DEFM " IS TOO TIRED TO",0 ; IS TOO TIRED TO
  DEFM "ONE WAY CORRIDOR",0 ; ONE WAY CORRIDOR
  DEFM "HERE",0           ; HERE
  DEFM "YET",0            ; YET
  DEFM "BEARWOOLFS CAVE",0 ; BEARWOOLFS CAVE (bug)
  DEFM "FOREST",0         ; FOREST
  DEFM "QUITICUS GAMUS",0 ; QUITICUS GAMUS
  DEFM "MAIN ",0          ; MAIN
  DEFM "SPELL",0          ; SPELL
  DEFM 175," OF WONDER",0 ; SPELL OF WONDER
  DEFM "FLOOR",0          ; FLOOR
  DEFM "ROOM",0           ; ROOM
  DEFM "DIMENSION MERGE",0 ; DIMENSION MERGE
  DEFM "MELT GRANITE",0   ; MELT GRANITE
  DEFM "PASS PLANT",0     ; PASS PLANT
  DEFM "TRAVEL ",99,"PERSON",0 ; TRAVEL TO PERSON
  DEFM "MAGIC FULCRUM",0  ; MAGIC FULCRUM (see trivia)
  DEFM "HAPPY",0          ; HAPPY
  DEFM "SPOOKY ",0        ; SPOOKY
  DEFM "PLAYER ",0        ; PLAYER
  DEFM "CANDLE",0         ; CANDLE
  DEFM "ALREADY",0        ; ALREADY
  DEFM "REDEFINE ",0      ; REDEFINE
  DEFM "MASTERTRONIC ",0  ; MASTERTRONIC

; Common Words Table, Part 2
;
; This data block contains a list of zero-terminated (sub-)strings. Other text
; blocks reference this table when a particular string is required. This
; reduces the space requirements for storage of all of the game's text.
  DEFM "*191*",0          ; *191* (see trivia)
  DEFM "*192*",0          ; *192* (see trivia)
  DEFM "TIME",0           ; TIME
  DEFM "MAGIC",0          ; MAGIC
  DEFM "CONTROL : ",0     ; CONTROL :
  DEFM "KEYBOARD",0       ; KEYBOARD
  DEFM "KEMPSTON ",200,0  ; KEMPSTON JOYSTICK
  DEFM "CURSOR ",200,0    ; CURSOR JOYSTICK
  DEFM "SINCLAIR ",200,"1",0 ; SINCLAIR JOYSTICK 1
  DEFM "JOYSTICK ",0      ; JOYSTICK
  DEFM "OFF-WHITE",0      ; OFF-WHITE
  DEFM "ARAMIS",0         ; ARAMIS
  DEFM "ROBIN",0          ; ROBIN
  DEFM "REGGIE",0         ; REGGIE
  DEFM "RACHEL",0         ; RACHEL
  DEFM "BARKER",0         ; BARKER
  DEFM "ORGANON",0        ; ORGANON
  DEFM "GRUNTER",0        ; GRUNTER
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 201," KNIGHT",0    ; OFF-WHITE KNIGHT
  DEFM 202," LE PEUX",0   ; ARAMIS LE PEUX
  DEFM 203," OF SHYLOCK",0 ; ROBIN OF SHYLOCK
  DEFM 204," ",111,"RAT",0 ; REGGIE THE RAT
  DEFM 205," OF AMAZONIA",0 ; RACHEL OF AMAZONIA
  DEFM 206," ",111,"ENT",0 ; BARKER THE ENT
  DEFM 207," ",111,"GUARD",0 ; ORGANON THE GUARD
  DEFM 208," ",111,"BEARWOOLF",0 ; GRUNTER THE BEARWOOLF
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM 0                  ; Unused
  DEFM "MAGIC KNIGHT",0   ; MAGIC KNIGHT (see trivia)
  DEFM "GET",0            ; GET
  DEFM "DROP",0           ; DROP
  DEFM "TAKE",0           ; TAKE
  DEFM "GIVE",0           ; GIVE
  DEFM "EXAMINE",0        ; EXAMINE
  DEFM "COMMAND",0        ; COMMAND
  DEFM "LOCATE",0         ; LOCATE
  DEFM "TELEPORT",0       ; TELEPORT
  DEFM "READ",0           ; READ
  DEFM "THROW",0          ; THROW
  DEFM "CAST",0           ; CAST
  DEFM "BLOW",0           ; BLOW
  DEFM "WEAR",0           ; WEAR
  DEFM "TICKLE",0         ; TICKLE
  DEFM "PULL",0           ; PULL
  DEFM "SMELL",0          ; SMELL
  DEFM "WISH",0           ; WISH
  DEFM "DRINK",0          ; DRINK
  DEFM "*FC*",0           ; *FC* (see trivia)
  DEFM "1987",0           ; 1987
  DEFM "*FE*",0           ; *FE* (see trivia)
  DEFM "*FF*",0           ; *FF* (see trivia)

; Room Layout Data Pointers
  DEFW 58945              ; (00) - Limbo
  DEFW 58949              ; (01) - Outdoors, 0 (Bearwoolf's Hoard)
  DEFW 58979              ; (02) - Outdoors, 1 (Bearwoolf's Cave)
  DEFW 59006              ; (03) - Outdoors, 2 (Beware Bearwoolf)
  DEFW 59028              ; (04) - Outdoors, 3 (The Spooky Forest, 1)
  DEFW 59052              ; (05) - Outdoors, 4
  DEFW 59091              ; (06) - Outdoors, 5 (The Spooky Forest, 2)
  DEFW 59125              ; (07) - Outdoors, 6 (The Sword in the Concrete)
  DEFW 59148              ; (08) - Outdoors, 7 (Robin's Little Hut)
  DEFW 59198              ; (09) - Outdoors, 8 (Exit from Limbo)
  DEFW 59233              ; (10) - Outdoors, 9 (More Spooky Forest)
  DEFW 59274              ; (11) - Outdoors, 10 (Entwood)
  DEFW 59320              ; (12) - Outdoors, 11 (The Spooky Forest, 3)
  DEFW 59366              ; (13) - Outdoors, 12 (The Spooky Forest, 4)
  DEFW 59412              ; (14) - Outdoors, 13 (Wishing Well)
  DEFW 59446              ; (15) - Outdoors, 14
  DEFW 59492              ; (16) - Outdoors, 15 (The Castle Entrance)
  DEFW 59566              ; (17) - Castle Ground Floor, 0 (One Axe Room)
  DEFW 59627              ; (18) - Castle Ground Floor, 1 (Indoor Bowling
                          ; Green)
  DEFW 59644              ; (19) - Castle Ground Floor, 2
  DEFW 59690              ; (20) - Castle Ground Floor, 3
  DEFW 59696              ; (21) - Castle Ground Floor, 4 (More Axe Problems)
  DEFW 59731              ; (22) - Castle Ground Floor, 5 (Even More Axes)
  DEFW 59759              ; (23) - Castle Ground Floor, 6 (The First Jump
                          ; Chute)
  DEFW 59772              ; (24) - Castle First Floor, 0 (Main Lever 7)
  DEFW 59798              ; (25) - Castle First Floor, 1 (Main Lever 6)
  DEFW 59841              ; (26) - Castle First Floor, 2 (Security Door & Main
                          ; Lever 5)
  DEFW 59874              ; (27) - Castle First Floor, 3 (Main Lever 4)
  DEFW 59936              ; (28) - Castle First Floor, 4 (Main Lever 3)
  DEFW 59979              ; (29) - Castle First Floor, 5 (Main Lever 2)
  DEFW 59987              ; (30) - Castle First Floor, 6 (Main Lever 1)
  DEFW 60003              ; (31) - Castle Second Floor, 0 (The Broken Teleport)
  DEFW 60010              ; (32) - Castle Second Floor, 1 (Terrible Twins)
  DEFW 60026              ; (33) - Castle Second Floor, 2 (The Guardian
                          ; Statues)
  DEFW 60069              ; (34) - Castle Second Floor, 3 (One Way Corridor, 1)
  DEFW 60070              ; (35) - Castle Second Floor, 4 (One Way Corridor, 2)
  DEFW 60070              ; (36) - Castle Second Floor, 5 (One Way Corridor, 3)
  DEFW 60078              ; (37) - Castle Second Floor, 6
  DEFW 60106              ; (38) - Castle Third Floor, 0 (Big White Statue)
  DEFW 60133              ; (39) - Castle Third Floor, 1
  DEFW 60139              ; (40) - Castle Third Floor, 2 (Teleport Room, 1)
  DEFW 60147              ; (41) - Castle Third Floor, 3 (One Way Corridor, 4)
  DEFW 60147              ; (42) - Castle Third Floor, 4 (One Way Corridor, 5)
  DEFW 60147              ; (43) - Castle Third Floor, 5 (One Way Corridor, 6)
  DEFW 60078              ; (44) - Castle Third Floor, 6
  DEFW 60155              ; (45) - Spaceship, 0 (The Control Room)
  DEFW 60184              ; (46) - Spaceship, 1 (Many Screened Room)
  DEFW 60296              ; (47) - Spaceship, 2 (Teleport Room, 2)
  DEFW 60313              ; (48) - Spaceship, 3
  DEFW 60370              ; (49) - Spaceship, 4 (The Power Plant)
  DEFW 60407              ; (50) - Spaceship, 5
  DEFW 60464              ; (51) - Spaceship, 6

; Room Layout Data (00) - Limbo
  DEFB 0,55,71            ; Draw floor with floor character set UDG 55 and
                          ; attribute 71 (white INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (01) - Outdoors, 0 (Bearwoolf's Hoard)
  DEFB 133                ; Draw layout data fragment 5 (Left Wall)
  DEFB 127,0,5            ; Start horizontal block drawing at (0, 5)
  DEFB 144,1              ; Draw 16 blocks of style 1
  DEFB 255                ; End Marker
  DEFB 127,2,17           ; Start horizontal block drawing at (2, 17)
  DEFB 1,1,0,1,0,1,1,0,1,1,0,1,0,1,1 ; Draw pattern of blocks
  DEFB 255                ; End Marker
  DEFB 0,55,71            ; Draw floor with floor character set UDG 55 and
                          ; attribute 71 (white INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (02) - Outdoors, 1 (Bearwoolf's Cave)
  DEFB 127,0,5            ; Start horizontal block drawing at (0, 5)
  DEFB 144,1              ; Draw 16 blocks of style 1
  DEFB 255                ; End Marker
  DEFB 127,0,17           ; Start horizontal block drawing at (0, 17)
  DEFB 131,1,0,131,1,0,1,0,1,1,0,131,1 ; Draw pattern of blocks
  DEFB 255                ; End Marker
  DEFB 0,55,71            ; Draw floor with floor character set UDG 55 and
                          ; attribute 71 (white INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (03) - Outdoors, 2 (Beware Bearwoolf)
  DEFB 36,28,0,7,11,0     ; Draw Grunter (36) with attribute data index of 28,
                          ; terrain interaction data index of 0 at (7, 11)
  DEFB 51,5,0,26,6,0      ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (26, 6)
  DEFB 55,23,0,0,19,1     ; Draw flowers (55) with attribute data index of 23,
                          ; terrain interaction data index of 0 at (0, 19), and
                          ; apply vertical mirror (1)
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (04) - Outdoors, 3 (The Spooky Forest, 1)
  DEFB 51,5,0,24,6,0      ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (24, 6)
  DEFB 132                ; Draw layout data fragment 4 (Top of Tree with Face)
  DEFB 45,20,0,4,20,0     ; Draw tree trunk 2 (45) with attribute data index of
                          ; 20, terrain interaction data index of 0 at (4, 20)
  DEFB 55,23,0,22,19,0    ; Draw flowers (55) with attribute data index of 23,
                          ; terrain interaction data index of 0 at (22, 19)
  DEFB 130                ; Draw layout data fragment 2 (Plant)
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (05) - Outdoors, 4
  DEFB 51,5,0,22,6,0      ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (22, 6)
  DEFB 132                ; Draw layout data fragment 4 (Top of Tree with Face)
  DEFB 45,20,0,4,20,0     ; Draw tree trunk 2 (45) with attribute data index of
                          ; 20, terrain interaction data index of 0 at (4, 20)
  DEFB 127,15,20          ; Start horizontal block drawing at (15, 20)
  DEFB 131,4              ; Draw 3 blocks of style 4
  DEFB 255                ; End Marker
  DEFB 127,13,21          ; Start horizontal block drawing at (13, 21)
  DEFB 4,131,20,4         ; Draw pattern of blocks
  DEFB 255                ; End Marker
  DEFB 127,11,22          ; Start horizontal block drawing at (11, 22)
  DEFB 4,133,20,4         ; Draw pattern of blocks
  DEFB 255                ; End Marker
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (06) - Outdoors, 5 (The Spooky Forest, 2)
  DEFB 51,5,0,20,6,0      ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (20, 6)
  DEFB 39,25,0,18,14,0    ; Draw top of tree without face (39) with attribute
                          ; data index of 25, terrain interaction data index of
                          ; 0 at (18, 14)
  DEFB 45,20,0,18,20,0    ; Draw tree trunk 2 (45) with attribute data index of
                          ; 20, terrain interaction data index of 0 at (18, 20)
  DEFB 55,23,0,9,19,0     ; Draw flowers (55) with attribute data index of 23,
                          ; terrain interaction data index of 0 at (9, 19)
  DEFB 42,9,2,2,16,0      ; Draw axe in tree stump (42) with attribute data
                          ; index of 9, terrain interaction data index of 2 at
                          ; (2, 16)
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (07) - Outdoors, 6 (The Sword in the Concrete)
  DEFB 51,5,0,18,6,0      ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (18, 6)
  DEFB 132                ; Draw layout data fragment 4 (Top of Tree with Face)
  DEFB 44,19,0,5,20,0     ; Draw tree trunk 1 (44) with attribute data index of
                          ; 19, terrain interaction data index of 0 at (5, 20)
  DEFB 68,31,0,12,18,0    ; Draw Sword in Concrete (68) with attribute data
                          ; index of 31, terrain interaction data index of 0 at
                          ; (12, 18)
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (08) - Outdoors, 7 (Robin's Little Hut)
  DEFB 51,5,0,16,6,0      ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (16, 6)
  DEFB 58,10,0,11,14,0    ; Draw hut roof (58) with attribute data index of 10,
                          ; terrain interaction data index of 0 at (11, 14)
  DEFB 39,25,0,23,14,0    ; Draw top of tree without face (39) with attribute
                          ; data index of 25, terrain interaction data index of
                          ; 0 at (23, 14)
  DEFB 45,20,0,23,20,0    ; Draw tree trunk 2 (45) with attribute data index of
                          ; 20, terrain interaction data index of 0 at (23, 20)
  DEFB 127,12,17          ; Start horizontal block drawing at (12, 17)
  DEFB 132,29             ; Draw 4 blocks of style 29
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,12,19          ; Start horizontal block drawing at (12, 19)
  DEFB 29,20,29,29        ; Draw pattern of blocks
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,12,21          ; Start horizontal block drawing at (12, 21)
  DEFB 29,20,29,29        ; Draw pattern of blocks
  DEFB 255                ; End Marker (block drawing)
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (09) - Outdoors, 8 (Exit from Limbo)
  DEFB 51,5,0,14,6,0      ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (14, 6)
  DEFB 132                ; Draw layout data fragment 4 (Top of Tree with Face)
  DEFB 45,20,0,4,20,0     ; Draw tree trunk 2 (45) with attribute data index of
                          ; 20, terrain interaction data index of 0 at (4, 20)
  DEFB 39,25,0,14,14,0    ; Draw top of tree without face (39) with attribute
                          ; data index of 25, terrain interaction data index of
                          ; 0 at (14, 14)
  DEFB 45,20,0,14,20,0    ; Draw tree trunk 2 (45) with attribute data index of
                          ; 20, terrain interaction data index of 0 at (14, 20)
  DEFB 55,23,0,23,19,0    ; Draw flowers (55) with attribute data index of 23,
                          ; terrain interaction data index of 0 at (23, 19)
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (10) - Outdoors, 9 (More Spooky Forest)
  DEFB 51,5,0,12,6,0      ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (12, 6)
  DEFB 132                ; Draw layout data fragment 4 (Top of Tree with Face)
  DEFB 44,19,0,5,20,0     ; Draw tree trunk 1 (44) with attribute data index of
                          ; 19, terrain interaction data index of 0 at (5, 20)
  DEFB 39,25,0,14,14,0    ; Draw top of tree without face (39) with attribute
                          ; data index of 25, terrain interaction data index of
                          ; 0 at (14, 14)
  DEFB 45,20,0,14,20,0    ; Draw tree trunk 2 (45) with attribute data index of
                          ; 20, terrain interaction data index of 0 at (14, 20)
  DEFB 40,26,0,23,10,0    ; Draw top of tree, bare (40) with attribute data
                          ; index of 26, terrain interaction data index of 0 at
                          ; (23, 10)
  DEFB 47,22,0,24,20,0    ; Draw tree trunk 3 (47) with attribute data index of
                          ; 22, terrain interaction data index of 0 at (24, 20)
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (11) - Outdoors, 10 (Entwood)
  DEFB 51,5,0,10,6,0      ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (10, 6)
  DEFB 38,24,0,0,13,1     ; Draw top of tree with face (38) with attribute data
                          ; index of 24, terrain interaction data index of 0 at
                          ; (0, 13), and apply vertical mirror (1)
  DEFB 39,25,0,12,14,1    ; Draw top of tree without face (39) with attribute
                          ; data index of 25, terrain interaction data index of
                          ; 0 at (12, 14), and apply vertical mirror (1)
  DEFB 40,26,0,24,10,1    ; Draw top of tree, bare (40) with attribute data
                          ; index of 26, terrain interaction data index of 0 at
                          ; (24, 10), and apply vertical mirror (1)
  DEFB 44,19,0,5,20,1     ; Draw tree trunk 1 (44) with attribute data index of
                          ; 19, terrain interaction data index of 0 at (5, 20),
                          ; and apply vertical mirror (1)
  DEFB 45,20,0,14,20,1    ; Draw tree trunk 2 (45) with attribute data index of
                          ; 20, terrain interaction data index of 0 at (14,
                          ; 20), and apply vertical mirror (1)
  DEFB 47,22,0,24,20,1    ; Draw tree trunk 3 (47) with attribute data index of
                          ; 22, terrain interaction data index of 0 at (24,
                          ; 20), and apply vertical mirror (1)
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (12) - Outdoors, 11 (The Spooky Forest, 3)
  DEFB 51,5,0,8,6,0       ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (8, 6)
  DEFB 39,25,0,2,14,0     ; Draw top of tree without face (39) with attribute
                          ; data index of 25, terrain interaction data index of
                          ; 0 at (2, 14)
  DEFB 38,24,0,12,13,0    ; Draw top of tree with face (38) with attribute data
                          ; index of 24, terrain interaction data index of 0 at
                          ; (12, 13)
  DEFB 40,26,0,23,10,0    ; Draw top of tree, bare (40) with attribute data
                          ; index of 26, terrain interaction data index of 0 at
                          ; (23, 10)
  DEFB 44,19,0,3,20,0     ; Draw tree trunk 1 (44) with attribute data index of
                          ; 19, terrain interaction data index of 0 at (3, 20)
  DEFB 45,20,0,14,20,0    ; Draw tree trunk 2 (45) with attribute data index of
                          ; 20, terrain interaction data index of 0 at (14, 20)
  DEFB 47,22,0,24,20,0    ; Draw tree trunk 3 (47) with attribute data index of
                          ; 22, terrain interaction data index of 0 at (24, 20)
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (13) - Outdoors, 12 (The Spooky Forest, 4)
  DEFB 51,5,0,6,6,0       ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (6, 6)
  DEFB 38,24,0,19,13,0    ; Draw top of tree with face (38) with attribute data
                          ; index of 24, terrain interaction data index of 0 at
                          ; (19, 13)
  DEFB 39,25,0,1,14,0     ; Draw top of tree without face (39) with attribute
                          ; data index of 25, terrain interaction data index of
                          ; 0 at (1, 14)
  DEFB 40,26,0,12,10,0    ; Draw top of tree, bare (40) with attribute data
                          ; index of 26, terrain interaction data index of 0 at
                          ; (12, 10)
  DEFB 44,19,0,22,20,0    ; Draw tree trunk 1 (44) with attribute data index of
                          ; 19, terrain interaction data index of 0 at (22, 20)
  DEFB 45,20,0,1,20,0     ; Draw tree trunk 2 (45) with attribute data index of
                          ; 20, terrain interaction data index of 0 at (1, 20)
  DEFB 47,22,0,13,20,0    ; Draw tree trunk 3 (47) with attribute data index of
                          ; 22, terrain interaction data index of 0 at (13, 20)
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (14) - Outdoors, 13 (Wishing Well)
  DEFB 51,5,0,4,6,0       ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (4, 6)
  DEFB 58,10,0,11,11,0    ; Draw top of well (58) with attribute data index of
                          ; 10, terrain interaction data index of 0 at (11, 11)
  DEFB 59,11,4,11,14,0    ; Draw well (59) with attribute data index of 11,
                          ; terrain interaction data index of 4 at (11, 14)
  DEFB 55,23,0,1,19,0     ; Draw flowers (55) with attribute data index of 23,
                          ; terrain interaction data index of 0 at (1, 19)
  DEFB 55,23,0,21,19,0    ; Draw flowers (55) with attribute data index of 23,
                          ; terrain interaction data index of 0 at (21, 19)
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (15) - Outdoors, 14
  DEFB 51,5,0,2,6,0       ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (2, 6)
  DEFB 38,24,0,1,13,1     ; Draw top of tree with face (38) with attribute data
                          ; index of 24, terrain interaction data index of 0 at
                          ; (1, 13), and apply vertical mirror (1)
  DEFB 38,24,0,13,13,0    ; Draw top of tree with face (38) with attribute data
                          ; index of 24, terrain interaction data index of 0 at
                          ; (13,13)
  DEFB 40,26,0,25,10,0    ; Draw top of tree, bare (40) with attribute data
                          ; index of 26, terrain interaction data index of 0 at
                          ; (25, 10)
  DEFB 44,19,0,6,20,1     ; Draw tree trunk 1 (44) with attribute data index of
                          ; 19, terrain interaction data index of 0 at (6, 20),
                          ; and apply vertical mirror (1)
  DEFB 44,19,0,17,20,1    ; Draw tree trunk 1 (44) with attribute data index of
                          ; 19, terrain interaction data index of 0 at (17,
                          ; 20), and apply vertical mirror (1)
  DEFB 47,22,0,26,20,0    ; Draw tree trunk 3 (47) with attribute data index of
                          ; 22, terrain interaction data index of 0 at (26, 20)
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (16) - Outdoors, 15 (The Castle Entrance)
  DEFB 51,5,0,0,6,0       ; Draw Moon (51) with attribute data index of 5,
                          ; terrain interaction data index of 0 at (0, 6)
  DEFB 56,7,0,18,19,0     ; Draw Organon (56) with attribute data index of 7,
                          ; terrain interaction data index of 0 at (18, 19)
  DEFB 132                ; Draw layout data fragment 4 (Top of Tree with Face)
  DEFB 44,19,0,5,20,0     ; Draw tree trunk 1 (44) with attribute data index of
                          ; 19, terrain interaction data index of 0 at (5, 20)
  DEFB 127,18,9           ; Start horizontal block drawing at (18, 9)
  DEFB 29,0,29,0,29,0,29  ; Draw pattern of blocks
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,18,11          ; Start horizontal block drawing at (18, 11)
  DEFB 135,29             ; Draw 7 blocks of style 29
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,20,13          ; Start horizontal block drawing at (20, 13)
  DEFB 134,29             ; Draw 6 blocks of style 29
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,20,15          ; Start horizontal block drawing at (20, 15)
  DEFB 134,29             ; Draw 6 blocks of style 29
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,20,17          ; Start horizontal block drawing at (20, 17)
  DEFB 134,29             ; Draw 6 blocks of style 29
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,20,19          ; Start horizontal block drawing at (20, 19)
  DEFB 132,29,20,20       ; Draw pattern of blocks
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,20,21          ; Start horizontal block drawing at (20, 21)
  DEFB 132,29,20,20       ; Draw pattern of blocks
  DEFB 255                ; End Marker (block drawing)
  DEFB 0,52,68            ; Draw floor with floor character set UDG 52 and
                          ; attribute 68 (green INK, black PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (17) - Castle Ground Floor, 0 (One Axe Room)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 130                ; Draw layout data fragment 2 (Plant)
  DEFB 127,0,5            ; Start horizontal block drawing at (0, 5)
  DEFB 160,1              ; Draw 32 blocks of style 1
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,12,15          ; Start horizontal block drawing at (12, 15)
  DEFB 1,1,0,1,1          ; Draw pattern of blocks
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,10,17          ; Start horizontal block drawing at (10, 17)
  DEFB 1,1                ; Draw pattern of blocks
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,20,17          ; Start horizontal block drawing at (20, 17)
  DEFB 1,1,136,0,1,1      ; Draw pattern of blocks
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,22,19          ; Start horizontal block drawing at (22, 19)
  DEFB 1,1,134,0,131,1    ; Draw pattern of blocks
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,22,21          ; Start horizontal block drawing at (22, 21)
  DEFB 133,1              ; Draw 5 blocks of style 1
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,0,5            ; Start vertical block drawing at (0, 5)
  DEFB 135,29,20,20       ; Draw pattern of blocks
  DEFB 255                ; End Marker (block drawing)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (18) - Castle Ground Floor, 1 (Indoor Bowling Green)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 127,0,21           ; Start horizontal block drawing at (0, 21)
  DEFB 144,4              ; Draw 16 blocks of style 4
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,0,22           ; Start horizontal block drawing at (0, 22)
  DEFB 144,20             ; Draw 16 blocks of style 20
  DEFB 255                ; End Marker (block drawing)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (19) - Castle Ground Floor, 2
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 63,16,0,12,12,0    ; Draw fire bowl (63) with attribute data index of
                          ; 16, terrain interaction data index of 0 at (12, 12)
  DEFB 64,15,0,14,19,0    ; Draw plinth (64) with attribute data index of 15,
                          ; terrain interaction data index of 0 at (14, 19)
  DEFB 127,0,21           ; Start horizontal block drawing at (0, 21)
  DEFB 1                  ; Draw 1 block of style 1
  DEFB 255                ; End Marker
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 13,12              ; Paint glowing blocks at (13,12)...
  DEFB 14,12              ; ...(14,12)...
  DEFB 15,12              ; ...(15,12)...
  DEFB 16,12              ; ...(16,12)...
  DEFB 13,13              ; ...(13,13)...
  DEFB 14,13              ; ...(14,13)...
  DEFB 15,13              ; ...(15,13)...
  DEFB 16,13              ; ...(16,13)...
  DEFB 13,14              ; ...(13,14)...
  DEFB 14,14              ; ...(14,14)...
  DEFB 15,14              ; ...(15,14)...
  DEFB 16,14              ; ...and (16,14)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (20) - Castle Ground Floor, 3
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 139                ; Draw layout data fragment 11 (Lever)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (21) - Castle Ground Floor, 4 (More Axe Problems)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 60,14,0,15,21,0    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 14, terrain interaction data index of
                          ; 0 at (15, 21)
  DEFB 61,12,0,15,14,0    ; Draw Cracked Column Section 1 (61) with attribute
                          ; data index of 12, terrain interaction data index of
                          ; 0 at (15, 14)
  DEFB 60,14,0,25,21,0    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 14, terrain interaction data index of
                          ; 0 at (25, 21)
  DEFB 61,12,0,25,14,0    ; Draw Cracked Column Section 1 (61) with attribute
                          ; data index of 12, terrain interaction data index of
                          ; 0 at (25, 14)
  DEFB 62,13,0,25,9,0     ; Draw Cracked Column Section 2 (62) with attribute
                          ; data index of 13, terrain interaction data index of
                          ; 0 at (25, 9)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (22) - Castle Ground Floor, 5 (Even More Axes)
  DEFB 63,16,0,22,12,0    ; Draw fire bowl (63) with attribute data index of
                          ; 16, terrain interaction data index of 0 at (22, 12)
  DEFB 64,15,0,24,19,0    ; Draw plinth (64) with attribute data index of 15,
                          ; terrain interaction data index of 0 at (24, 19)
  DEFB 63,16,0,4,12,0     ; Draw fire bowl (63) with attribute data index of
                          ; 16, terrain interaction data index of 0 at (4, 12)
  DEFB 64,15,0,6,19,0     ; Draw plinth (64) with attribute data index of 15,
                          ; terrain interaction data index of 0 at (6, 19)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (23) - Castle Ground Floor, 6 (The First Jump Chute)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 65,17,3,15,17,0    ; Draw large stool (65) with attribute data index of
                          ; 17, terrain interaction data index of 3 at (15, 17)
  DEFB 140                ; Draw layout data fragment 12 (Ceiling, Floor and
                          ; Jump Chute)
  DEFB 134                ; Draw layout data fragment 6 (Right Wall)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (24) - Castle First Floor, 0 (Main Lever 7)
  DEFB 141                ; Draw layout data fragment 13 (Ceiling)
  DEFB 133                ; Draw layout data fragment 5 (Left Wall)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 65,17,3,9,17,0     ; Draw large stool (65) with attribute data index of
                          ; 17, terrain interaction data index of 3 at (9, 17)
  DEFB 65,17,3,13,17,0    ; Draw large stool (65) with attribute data index of
                          ; 17, terrain interaction data index of 3 at (13, 17)
  DEFB 65,17,3,17,17,0    ; Draw large stool (65) with attribute data index of
                          ; 17, terrain interaction data index of 3 at (17, 17)
  DEFB 139                ; Draw layout data fragment 11 (Lever)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (25) - Castle First Floor, 1 (Main Lever 6)
  DEFB 141                ; Draw layout data fragment 13 (Ceiling)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 139                ; Draw layout data fragment 11 (Lever)
  DEFB 63,16,0,12,12,0    ; Draw fire bowl (63) with attribute data index of
                          ; 16, terrain interaction data index of 0 at (12, 12)
  DEFB 64,15,0,14,19,0    ; Draw plinth (64) with attribute data index of 15,
                          ; terrain interaction data index of 0 at (14, 19)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 13,12              ; Paint glowing blocks at (13,12)...
  DEFB 14,12              ; ...(14,12)...
  DEFB 15,12              ; ...(15,12)...
  DEFB 16,12              ; ...(16,12)...
  DEFB 13,13              ; ...(13,13)...
  DEFB 14,13              ; ...(14,13)...
  DEFB 15,13              ; ...(15,13)...
  DEFB 16,13              ; ...(16,13)...
  DEFB 13,14              ; ...(13,14)...
  DEFB 14,14              ; ...(14,14)...
  DEFB 15,14              ; ...(15,14)...
  DEFB 16,14              ; ...and (16,14)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (26) - Castle First Floor, 2 (Security Door & Main Lever 5)
  DEFB 141                ; Draw layout data fragment 13 (Ceiling)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 127,11,7           ; Start horizontal block drawing at (11, 7)
  DEFB 27                 ; Draw 1 block of style 27
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,13,5           ; Start vertical block drawing at (13, 5)
  DEFB 135,33             ; Draw 7 blocks of style 33
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,15,5           ; Start vertical block drawing at (15, 5)
  DEFB 135,33             ; Draw 7 blocks of style 33
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,17,5           ; Start vertical block drawing at (17, 5)
  DEFB 135,33             ; Draw 7 blocks of style 33
  DEFB 255                ; End Marker (block drawing)
  DEFB 135                ; Draw Security Door (1/3) (layout data fragment 7)
  DEFB 136                ; Draw Security Door (2/3) (layout data fragment 8)
  DEFB 137                ; Draw Security Door (3/3) (layout data fragment 9)
  DEFB 139                ; Draw layout data fragment 11 (Lever)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (27) - Castle First Floor, 3 (Main Lever 4)
  DEFB 141                ; Draw layout data fragment 13 (Ceiling)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 57,0,0,2,21,0      ; Draw Reggie (57) with attribute data index of 0,
                          ; terrain interaction data index of 0 at (2, 21)
  DEFB 127,12,5           ; Start horizontal block drawing at (12, 5)
  DEFB 132,33             ; Draw 4 blocks of style 33
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,12,7           ; Start horizontal block drawing at (12, 7)
  DEFB 132,33             ; Draw 4 blocks of style 33
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,12,9           ; Start horizontal block drawing at (12, 9)
  DEFB 132,33             ; Draw 4 blocks of style 33
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,12,11          ; Start horizontal block drawing at (12, 11)
  DEFB 132,33             ; Draw 4 blocks of style 33
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,12,13          ; Start horizontal block drawing at (12, 13)
  DEFB 132,33             ; Draw 4 blocks of style 33
  DEFB 255                ; End Marker (block drawing)
  DEFB 145                ; Draw layout data fragment 17 (Middle Section of
                          ; Corridor)
  DEFB 60,18,1,10,21,0    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (10, 21)
  DEFB 60,18,1,14,21,0    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (14, 21)
  DEFB 60,18,1,18,21,0    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (18, 21)
  DEFB 139                ; Draw layout data fragment 11 (Lever)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (28) - Castle First Floor, 4 (Main Lever 3)
  DEFB 141                ; Draw layout data fragment 13 (Ceiling)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 139                ; Draw layout data fragment 11 (Lever)
  DEFB 64,15,0,10,19,0    ; Draw plinth (64) with attribute data index of 15,
                          ; terrain interaction data index of 0 at (10, 19)
  DEFB 64,15,0,14,19,0    ; Draw plinth (64) with attribute data index of 15,
                          ; terrain interaction data index of 0 at (14, 19)
  DEFB 64,15,0,18,19,0    ; Draw plinth (64) with attribute data index of 15,
                          ; terrain interaction data index of 0 at (18, 19)
  DEFB 64,15,0,12,15,0    ; Draw plinth (64) with attribute data index of 15,
                          ; terrain interaction data index of 0 at (12, 15)
  DEFB 64,15,0,16,15,0    ; Draw plinth (64) with attribute data index of 15,
                          ; terrain interaction data index of 0 at (16, 15)
  DEFB 64,15,0,14,11,0    ; Draw plinth (64) with attribute data index of 15,
                          ; terrain interaction data index of 0 at (14, 11)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (29) - Castle First Floor, 5 (Main Lever 2)
  DEFB 141                ; Draw layout data fragment 13 (Ceiling)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 139                ; Draw layout data fragment 11 (Lever)
  DEFB 146                ; Draw layout data fragment 18 (Cracked Column)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (30) - Castle First Floor, 6 (Main Lever 1)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 139                ; Draw layout data fragment 11 (Lever)
  DEFB 134                ; Draw layout data fragment 6 (Right Wall)
  DEFB 140                ; Draw layout data fragment 12 (Ceiling, Floor and
                          ; Jump Chute)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 17,23              ; Paint glowing blocks at (17,23)...
  DEFB 18,23              ; ...(18,23)...
  DEFB 19,23              ; ...(19,23)...
  DEFB 20,23              ; ...and (20,23)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (31) - Castle Second Floor, 0 (The Broken Teleport)
  DEFB 133                ; Draw layout data fragment 5 (Left Wall)
  DEFB 129                ; Draw layout data fragment 1 (Teleport)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (32) - Castle Second Floor, 1 (Terrible Twins)
  DEFB 36,28,0,5,11,1     ; Draw Grunter-like statue (36) with attribute data
                          ; index of 28, terrain interaction data index of 0 at
                          ; (5, 11), and apply vertical mirror (1)
  DEFB 36,28,0,16,11,0    ; Draw Grunter-like statue (36) with attribute data
                          ; index of 28, terrain interaction data index of 0 at
                          ; (16, 11)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (33) - Castle Second Floor, 2 (The Guardian Statues)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 56,7,0,3,19,0      ; Draw Organon-like statue (56) with attribute data
                          ; index of 7, terrain interaction data index of 0 at
                          ; (3, 19)
  DEFB 56,7,0,6,19,0      ; Draw Organon-like statue (56) with attribute data
                          ; index of 7, terrain interaction data index of 0 at
                          ; (6, 19)
  DEFB 56,7,0,9,19,0      ; Draw Organon-like statue (56) with attribute data
                          ; index of 7, terrain interaction data index of 0 at
                          ; (9, 19)
  DEFB 56,7,0,12,19,0     ; Draw Organon-like statue (56) with attribute data
                          ; index of 7, terrain interaction data index of 0 at
                          ; (12, 19)
  DEFB 56,7,0,15,19,0     ; Draw Organon-like statue (56) with attribute data
                          ; index of 7, terrain interaction data index of 0 at
                          ; (15, 19)
  DEFB 56,7,0,18,19,0     ; Draw Organon-like statue (56) with attribute data
                          ; index of 7, terrain interaction data index of 0 at
                          ; (18, 19)
  DEFB 142                ; Draw layout data fragment 14 (Right Wall Section)
  DEFB 143                ; Draw layout data fragment 15 (Right Section of
                          ; Corridor)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (34) - Castle Second Floor, 3 (One Way Corridor, 1)
;
; This room also uses the following data block (at 60070) as part of its layout
; definition.
  DEFB 139                ; Draw layout data fragment 11 (Lever)

; Room Layout Data (35 / 36) - Castle Second Floor, 4 / 5 (One Way Corridor, 2
; / 3)
  DEFB 131                ; Draw layout data fragment 3 (Corridor with Partial
                          ; Floor and Ceiling)
  DEFB 143                ; Draw layout data fragment 15 (Right Section of
                          ; Corridor)
  DEFB 144                ; Draw layout data fragment 16 (Left Section of
                          ; Corridor)
  DEFB 145                ; Draw layout data fragment 17 (Middle Section of
                          ; Corridor)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (37 / 44) - Castle Second Floor, 6 / Castle Third Floor, 6
  DEFB 140                ; Draw layout data fragment 12 (Ceiling, Floor and
                          ; Jump Chute)
  DEFB 126,0,5            ; Start vertical block drawing at (0, 5)
  DEFB 133,1              ; Draw 5 blocks of style 1
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,2,5            ; Start vertical block drawing at (2, 5)
  DEFB 133,1              ; Draw 5 blocks of style 1
  DEFB 255                ; End Marker (block drawing)
  DEFB 144                ; Draw layout data fragment 16 (Left Section of
                          ; Corridor)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 134                ; Draw layout data fragment 6 (Right Wall)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 17,23              ; Paint glowing blocks at (17,23)...
  DEFB 18,23              ; ...(18,23)...
  DEFB 19,23              ; ...(19,23)...
  DEFB 20,23              ; ...and (20,23)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (38) - Castle Third Floor, 0 (Big White Statue)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 36,30,0,6,9,0      ; Draw Grunter-like statue (36) with attribute data
                          ; index of 30, terrain interaction data index of 0 at
                          ; (6, 9)
  DEFB 127,0,21           ; Start horizontal block drawing at (0, 21)
  DEFB 136,1              ; Draw 8 blocks of style 1
  DEFB 255                ; End Marker
  DEFB 139                ; Draw layout data fragment 11 (Lever)
  DEFB 133                ; Draw layout data fragment 5 (Left Wall)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 17,23              ; Paint glowing blocks at (17,23)...
  DEFB 18,23              ; ...(18,23)...
  DEFB 19,23              ; ...(19,23)...
  DEFB 20,23              ; ...and (20,23)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (39) - Castle Third Floor, 1
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 146                ; Draw layout data fragment 18 (Cracked Column)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (40) - Castle Third Floor, 2 (Teleport Room, 1)
  DEFB 142                ; Draw layout data fragment 14 (Right Wall Section)
  DEFB 143                ; Draw layout data fragment 15 (Right Section of
                          ; Corridor)
  DEFB 128                ; Draw layout data fragment 0 (Two Torches)
  DEFB 129                ; Draw layout data fragment 1 (Teleport)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (41 / 42 / 43) - Castle Third Floor, 3 / 4 / 5 (One Way
; Corridor, 4 / 5 / 6)
  DEFB 131                ; Draw layout data fragment 3 (Corridor with Partial
                          ; Floor and Ceiling)
  DEFB 143                ; Draw layout data fragment 15 (Right Section of
                          ; Corridor)
  DEFB 144                ; Draw layout data fragment 16 (Left Section of
                          ; Corridor)
  DEFB 145                ; Draw layout data fragment 17 (Middle Section of
                          ; Corridor)
  DEFB 0,53,7             ; Draw floor with floor character set UDG 53 and
                          ; attribute 7 (white INK, black PAPER)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (45) - Spaceship, 0 (The Control Room)
  DEFB 43,4,0,2,10,0      ; Draw control console (43) with attribute data index
                          ; of 4, terrain interaction data index of 0 at (2,
                          ; 10)
  DEFB 48,1,0,10,12,0     ; Draw monitor showing castle (48) with attribute
                          ; data index of 1, terrain interaction data index of
                          ; 0 at (10, 12)
  DEFB 49,2,0,17,12,0     ; Draw control panel (49) with attribute data index
                          ; of 2, terrain interaction data index of 0 at (17,
                          ; 12)
  DEFB 50,3,0,24,12,0     ; Draw display screen (50) with attribute data index
                          ; of 3, terrain interaction data index of 0 at (24,
                          ; 12)
  DEFB 133                ; Draw layout data fragment 5 (Left Wall)
  DEFB 0,54,114           ; Draw floor with floor character set UDG 54 and
                          ; attribute 114 (red INK, yellow PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (46) - Spaceship, 1 (Many Screened Room)
  DEFB 48,1,0,1,9,0       ; Draw monitor showing castle (48) with attribute
                          ; data index of 1, terrain interaction data index of
                          ; 0 at (1, 9)
  DEFB 49,2,0,6,9,0       ; Draw control panel (49) with attribute data index
                          ; of 2, terrain interaction data index of 0 at (6, 9)
  DEFB 50,3,0,11,9,0      ; Draw display screen (50) with attribute data index
                          ; of 3, terrain interaction data index of 0 at (11,
                          ; 9)
  DEFB 48,1,0,16,9,0      ; Draw monitor showing castle (48) with attribute
                          ; data index of 1, terrain interaction data index of
                          ; 0 at (16, 9)
  DEFB 49,2,0,21,9,0      ; Draw control panel (49) with attribute data index
                          ; of 2, terrain interaction data index of 0 at (21,
                          ; 9)
  DEFB 50,3,0,26,9,0      ; Draw display screen (50) with attribute data index
                          ; of 3, terrain interaction data index of 0 at (26,
                          ; 9)
  DEFB 49,2,0,1,13,0      ; Draw control panel (49) with attribute data index
                          ; of 2, terrain interaction data index of 0 at (1,
                          ; 13)
  DEFB 50,3,0,6,13,0      ; Draw display screen (50) with attribute data index
                          ; of 3, terrain interaction data index of 0 at (6,
                          ; 13)
  DEFB 48,1,0,11,13,0     ; Draw monitor showing castle (48) with attribute
                          ; data index of 1, terrain interaction data index of
                          ; 0 at (11, 13)
  DEFB 49,2,0,16,13,0     ; Draw control panel (49) with attribute data index
                          ; of 2, terrain interaction data index of 0 at (16,
                          ; 13)
  DEFB 50,3,0,21,13,0     ; Draw display screen (50) with attribute data index
                          ; of 3, terrain interaction data index of 0 at (21,
                          ; 13)
  DEFB 48,1,0,26,13,0     ; Draw monitor showing castle (48) with attribute
                          ; data index of 1, terrain interaction data index of
                          ; 0 at (26, 13)
  DEFB 48,1,0,1,17,0      ; Draw monitor showing castle (48) with attribute
                          ; data index of 1, terrain interaction data index of
                          ; 0 at (1, 17)
  DEFB 49,2,0,6,17,0      ; Draw control panel (49) with attribute data index
                          ; of 2, terrain interaction data index of 0 at (6,
                          ; 17)
  DEFB 50,3,0,11,17,0     ; Draw display screen (50) with attribute data index
                          ; of 3, terrain interaction data index of 0 at (11,
                          ; 17)
  DEFB 48,1,0,16,17,0     ; Draw monitor showing castle (48) with attribute
                          ; data index of 1, terrain interaction data index of
                          ; 0 at (16, 17)
  DEFB 49,2,0,21,17,0     ; Draw control panel (49) with attribute data index
                          ; of 2, terrain interaction data index of 0 at (21,
                          ; 17)
  DEFB 50,3,0,26,17,0     ; Draw display screen (50) with attribute data index
                          ; of 3, terrain interaction data index of 0 at (26,
                          ; 17)
  DEFB 0,54,114           ; Draw floor with floor character set UDG 54 and
                          ; attribute 114 (red INK, yellow PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (47) - Spaceship, 2 (Teleport Room, 2)
  DEFB 48,1,0,1,12,0      ; Draw monitor showing castle (48) with attribute
                          ; data index of 1, terrain interaction data index of
                          ; 0 at (1, 12)
  DEFB 50,3,0,25,12,0     ; Draw display screen (50) with attribute data index
                          ; of 3, terrain interaction data index of 0 at (25,
                          ; 12)
  DEFB 129                ; Draw layout data fragment 1 (Teleport)
  DEFB 0,54,114           ; Draw floor with floor character set UDG 54 and
                          ; attribute 114 (red INK, yellow PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (48) - Spaceship, 3
  DEFB 49,2,0,3,12,0      ; Draw control panel (49) with attribute data index
                          ; of 2, terrain interaction data index of 0 at (3,
                          ; 12)
  DEFB 48,1,0,16,12,0     ; Draw monitor showing castle (48) with attribute
                          ; data index of 1, terrain interaction data index of
                          ; 0 at (16, 12)
  DEFB 127,0,5            ; Start horizontal block drawing at (0, 5)
  DEFB 144,23             ; Draw 16 blocks of style 23
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,20,21          ; Start horizontal block drawing at (20, 21)
  DEFB 25                 ; Draw 1 block of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,22,19          ; Start vertical block drawing at (22, 19)
  DEFB 130,25             ; Draw 2 blocks of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,24,17          ; Start vertical block drawing at (24, 17)
  DEFB 131,25             ; Draw 3 blocks of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,26,15          ; Start vertical block drawing at (26, 15)
  DEFB 132,25             ; Draw 4 blocks of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,28,13          ; Start vertical block drawing at (28, 13)
  DEFB 133,25             ; Draw 5 blocks of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,30,13          ; Start vertical block drawing at (30, 13)
  DEFB 133,25             ; Draw 5 blocks of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 0,54,114           ; Draw floor with floor character set UDG 54 and
                          ; attribute 114 (red INK, yellow PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (49) - Spaceship, 4 (The Power Plant)
  DEFB 130                ; Draw layout data fragment 2 (Plant)
  DEFB 127,0,5            ; Start horizontal block drawing at (0, 5)
  DEFB 144,23,176,0,160,23 ; Draw pattern of blocks
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,4,19           ; Start horizontal block drawing at (4, 19)
  DEFB 19                 ; Draw 1 block of style 19
  DEFB 255                ; End Marker (block drawing)
  DEFB 127,26,19          ; Start horizontal block drawing at (26, 19)
  DEFB 19                 ; Draw 1 block of style 19
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,0,15           ; Start vertical block drawing at (0, 15)
  DEFB 132,25             ; Draw 4 blocks of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,30,15          ; Start vertical block drawing at (30, 15)
  DEFB 132,25             ; Draw 4 blocks of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 0,54,114           ; Draw floor with floor character set UDG 54 and
                          ; attribute 114 (red INK, yellow PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (50) - Spaceship, 5
  DEFB 50,3,0,16,12,0     ; Draw display screen (50) with attribute data index
                          ; of 3, terrain interaction data index of 0 at (16,
                          ; 12)
  DEFB 48,1,0,25,12,0     ; Draw monitor showing castle (48) with attribute
                          ; data index of 1, terrain interaction data index of
                          ; 0 at (25, 12)
  DEFB 127,0,5            ; Start horizontal block drawing at (0, 5)
  DEFB 144,23             ; Draw 16 blocks of style 23
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,0,13           ; Start vertical block drawing at (0, 13)
  DEFB 133,25             ; Draw 5 blocks of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,2,13           ; Start vertical block drawing at (2, 13)
  DEFB 133,25             ; Draw 5 blocks of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,4,15           ; Start vertical block drawing at (4, 15)
  DEFB 132,25             ; Draw 4 blocks of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,6,17           ; Start vertical block drawing at (6, 17)
  DEFB 131,25             ; Draw 3 blocks of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,8,19           ; Start vertical block drawing at (8, 19)
  DEFB 130,25             ; Draw 2 blocks of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,10,21          ; Start vertical block drawing at (10, 21)
  DEFB 25                 ; Draw 1 block of style 25
  DEFB 255                ; End Marker (block drawing)
  DEFB 0,54,114           ; Draw floor with floor character set UDG 54 and
                          ; attribute 114 (red INK, yellow PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Room Layout Data (51) - Spaceship, 6
  DEFB 48,1,0,5,12,0      ; Draw monitor showing castle (48) with attribute
                          ; data index of 1, terrain interaction data index of
                          ; 0 at (5, 12)
  DEFB 49,2,0,14,12,0     ; Draw control panel (49) with attribute data index
                          ; of 2, terrain interaction data index of 0 at (14,
                          ; 12)
  DEFB 48,1,0,23,12,0     ; Draw monitor showing castle (48) with attribute
                          ; data index of 1, terrain interaction data index of
                          ; 0 at (23, 12)
  DEFB 134                ; Draw layout data fragment 6 (Right Wall)
  DEFB 0,54,114           ; Draw floor with floor character set UDG 54 and
                          ; attribute 114 (red INK, yellow PAPER, BRIGHT)
  DEFB 255                ; End Marker (room layout data)

; Lookup Table for RLE Attribute Data (Room Layout Graphics)
;
; Each entry is comprised of four bytes:
  DEFB 1,1,199,236        ; (00) - 60615 - No colouring
  DEFB 5,4,200,236        ; (01) - 60616 - Monitor Showing Castle
  DEFB 5,4,211,236        ; (02) - 60627 - Control Panel
  DEFB 5,4,214,236        ; (03) - 60630 - Display Screen
  DEFB 4,13,225,236       ; (04) - 60641 - Control Console
  DEFB 5,5,12,237         ; (05) - 60684 - Moon
  DEFB 3,7,15,237         ; (06) - 60687 - Torch
  DEFB 2,4,20,237         ; (07) - 60692 - Organon / Organon-like statue
  DEFB 2,5,23,237         ; (08) - 60695 - Plant
  DEFB 5,7,28,237         ; (09) - 60700 - Axe in Tree Stump
  DEFB 11,3,41,237        ; (10) - 60713 - Hut Roof / Top of Well
  DEFB 11,10,44,237       ; (11) - 60716 - Well
  DEFB 4,7,97,237         ; (12) - 60769 - Cracked Column Section 1
  DEFB 4,6,100,237        ; (13) - 60772 - Cracked Column Section 2
  DEFB 4,2,103,237        ; (14) - 60775 - Jump Chute / Corridor Pad
  DEFB 3,4,106,237        ; (15) - 60778 - Plinth
  DEFB 7,6,113,237        ; (16) - 60785 - Fire Bowl
  DEFB 4,6,118,237        ; (17) - 60790 - Large Stool
  DEFB 4,2,123,237        ; (18) - 60795 - Jump Chute / Corridor Pad
  DEFB 4,3,128,237        ; (19) - 60800 - Tree Trunk 1
  DEFB 7,3,131,237        ; (20) - 60803 - Tree Trunk 2
  DEFB 4,3,134,237        ; (21) - 60806 - Unused
  DEFB 6,3,137,237        ; (22) - 60809 - Tree Trunk 3
  DEFB 7,4,140,237        ; (23) - 60812 - Flowers
  DEFB 12,7,147,237       ; (24) - 60819 - Top of Tree With Face
  DEFB 9,6,168,237        ; (25) - 60840 - Top of Tree Without Face
  DEFB 7,10,177,237       ; (26) - 60849 - Top of Tree, Bare
  DEFB 6,7,180,237        ; (27) - 60852 - Unused
  DEFB 11,12,183,237      ; (28) - 60855 - Grunter / Grunter-like Statue
                          ; (Green)
  DEFB 3,7,192,237        ; (29) - 60864 - Half of Teleport
  DEFB 11,12,201,237      ; (30) - 60873 - Grunter-like Statue (White)
  DEFB 6,5,210,237        ; (31) - 60882 - Sword in Concrete

; RLE Attribute Data (Room Layout Graphics)
;
; Run Length Encoded data used to paint attributes, with two bytes per entry
; (or a one-byte end marker represented by a zero). Records are comprised of:
; (00) - No colouring
  DEFB 0                  ; End Marker
; (01) - Monitor Showing Castle
  DEFB 6,68               ; 6 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 3,70               ; 3 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 2,68               ; 2 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 3,70               ; 3 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 6,68               ; 6 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (02) - Control Panel
  DEFB 20,71              ; 20 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (03) - Display Screen
  DEFB 10,71              ; 10 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 1,68               ; 1 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 4,71               ; 4 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 1,68               ; 1 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 4,71               ; 4 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (04) - Control Console
  DEFB 1,71               ; 1 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 3,69               ; 3 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,71               ; 1 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 3,69               ; 3 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,71               ; 1 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 3,69               ; 3 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,71               ; 1 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 3,69               ; 3 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,68               ; 1 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 3,69               ; 3 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,68               ; 1 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 3,69               ; 3 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 3,69               ; 3 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 2,70               ; 2 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 2,69               ; 2 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 9,70               ; 9 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 3,69               ; 3 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 3,69               ; 3 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 1,70               ; 1 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (05) - Moon
  DEFB 25,71              ; 25 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (06) - Torch
  DEFB 9,70               ; 9 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 12,67              ; 12 x 67 (magenta INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (07) - Organon / Organon-like statue
  DEFB 8,71               ; 8 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (08) - Plant
  DEFB 2,66               ; 2 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 8,68               ; 8 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (09) - Axe in Tree Stump
  DEFB 10,70              ; 10 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 3,66               ; 3 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 2,70               ; 2 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 3,66               ; 3 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 2,70               ; 2 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 15,68              ; 15 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (10) - Hut Roof / Top of Well
  DEFB 33,70              ; 33 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (11) - Well
  DEFB 2,71               ; 2 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 2,70               ; 2 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 7,71               ; 7 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 2,71               ; 2 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 2,70               ; 2 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 7,71               ; 7 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 3,71               ; 3 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 3,69               ; 3 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 5,71               ; 5 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 3,71               ; 3 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 3,69               ; 3 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 5,71               ; 5 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 3,71               ; 3 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 3,69               ; 3 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 5,71               ; 5 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 11,71              ; 11 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 2,71               ; 2 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 6,7                ; 6 x 7 (white INK, black PAPER)
  DEFB 3,71               ; 3 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 2,71               ; 2 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 6,7                ; 6 x 7 (white INK, black PAPER)
  DEFB 3,71               ; 3 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 2,71               ; 2 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 6,7                ; 6 x 7 (white INK, black PAPER)
  DEFB 3,71               ; 3 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 11,39              ; 11 x 39 (white INK, green PAPER)
  DEFB 0                  ; End Marker
; (12) - Cracked Column Section 1
  DEFB 28,70              ; 28 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (13) - Cracked Column Section 2
  DEFB 24,70              ; 24 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (14) - Jump Chute / Corridor Pad
  DEFB 8,71               ; 8 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (15) - Plinth
  DEFB 3,67               ; 3 x 67 (magenta INK, black PAPER, BRIGHT)
  DEFB 6,70               ; 6 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 3,68               ; 3 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (16) - Fire Bowl
  DEFB 21,70              ; 21 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 28,4               ; 28 x  4 (green INK, black PAPER)
  DEFB 0                  ; End Marker
; (17) - Large Stool
  DEFB 4,67               ; 4 x 67 (magenta INK, black PAPER, BRIGHT)
  DEFB 20,70              ; 20 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (18) - Jump Chute / Corridor Pad
  DEFB 4,69               ; 4 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 4,71               ; 4 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (19) - Tree Trunk 1
  DEFB 12,68              ; 12 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (20) - Tree Trunk 2
  DEFB 21,68              ; 21 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (21) - Unused
  DEFB 12,68              ; 12 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (22) - Tree Trunk 3
  DEFB 18,68              ; 18 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (23) - Flowers
  DEFB 16,68              ; 16 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 1,84               ; 1 x 84 (green INK, red PAPER, BRIGHT)
  DEFB 11,68              ; 11 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (24) - Top of Tree With Face
  DEFB 24,68              ; 24 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 9,68               ; 9 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 1,66               ; 1 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 2,68               ; 2 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 12,68              ; 12 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 12,68              ; 12 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 2,68               ; 2 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 1,66               ; 1 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 9,68               ; 9 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 12,68              ; 12 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (25) - Top of Tree Without Face
  DEFB 35,68              ; 35 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 1,66               ; 1 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 16,68              ; 16 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 2,66               ; 2 x 66 (red INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (26) - Top of Tree, Bare
  DEFB 70,68              ; 70 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (27) - Unused
  DEFB 42,68              ; 42 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (28) - Grunter / Grunter-like Statue (Green)
  DEFB 122,68             ; 122 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 2,70               ; 2 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 4,68               ; 4 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 2,70               ; 2 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (29) - Half of Teleport
  DEFB 3,7                ; 3 x 7 (white INK, black PAPER)
  DEFB 3,71               ; 3 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 12,69              ; 12 x 69 (cyan INK, black PAPER, BRIGHT)
  DEFB 3,71               ; 3 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (30) - Grunter-like Statue (White)
  DEFB 122,71             ; 122 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 2,70               ; 2 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 4,71               ; 4 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 2,70               ; 2 x 70 (yellow INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker
; (31) - Sword in Concrete
  DEFB 14,68              ; 14 x 68 (green INK, black PAPER, BRIGHT)
  DEFB 4,7                ; 4 x 7 (white INK, black PAPER)
  DEFB 12,71              ; 12 x 71 (white INK, black PAPER, BRIGHT)
  DEFB 0                  ; End Marker

; Lookup Table for RLE Terrain Interaction Parameter Data (Room Layout
; Graphics)
;
; Each entry is comprised of four bytes:
  DEFB 1,1,199,236        ; (00) - 60615 - No interaction
  DEFB 4,2,237,237        ; (01) - 60909 - Jump Chute / Corridor Pad
  DEFB 5,7,240,237        ; (02) - 60912 - Axe in Tree Stump
  DEFB 4,1,245,237        ; (03) - 60917 - Large Stool
  DEFB 11,10,248,237      ; (04) - 60920 - Well

; RLE Terrain Interaction Parameter Data (Room Layout Graphics)
;
; Run Length Encoded data used to paint terrain interaction parameters, with
; two bytes per entry (or a one-byte end marker represented by a zero). Records
; are comprised of: (01) - Jump Chute / Corridor Pad
  DEFB 4,255              ; 4 x 255 (impassable horizontally, upwards and
                          ; downwards / preserve attribute)
  DEFB 0                  ; End Marker
; (02) - Axe in Tree Stump
  DEFB 20,0               ; 20 x 0 (no interaction)
  DEFB 3,128              ; 3 x 128 (impassable downwards)
  DEFB 0                  ; End Marker
; (03) - Large Stool
  DEFB 4,128              ; 4 x 128 (impassable downwards)
  DEFB 0                  ; End Marker
; (04) - Well
  DEFB 68,0               ; 68 x 0 (no interaction)
  DEFB 7,128              ; 7 x 128 (impassable downwards)
  DEFB 0                  ; End Marker

; Room Layout Data Fragment Pointers
  DEFW 60963              ; (00) - Two Torches
  DEFW 60976              ; (01) - Teleport
  DEFW 60995              ; (02) - Plant
  DEFW 61002              ; (03) - Corridor with Partial Floor and Ceiling
  DEFW 61057              ; (04) - Top of Tree with Face
  DEFW 61064              ; (05) - Left Wall
  DEFW 61071              ; (06) - Right Wall
  DEFW 61078              ; (07) - Security Door (1/3)
  DEFW 61085              ; (08) - Security Door (2/3)
  DEFW 61092              ; (09) - Security Door (3/3)
  DEFW 61098              ; (10) - Blank
  DEFW 61099              ; (11) - Lever
  DEFW 61105              ; (12) - Ceiling, Floor and Jump Chute
  DEFW 61124              ; (13) - Ceiling
  DEFW 61131              ; (14) - Right Wall Section
  DEFW 61144              ; (15) - Right Section of Corridor
  DEFW 61163              ; (16) - Left Section of Corridor
  DEFW 61182              ; (17) - Middle Section of Corridor
  DEFW 61195              ; (18) - Cracked Column

; Room Layout Data Fragment (00) - Two Torches
  DEFB 67,6,0,6,10,0      ; Draw torch (67) with attribute data index of 6,
                          ; terrain interaction data index of 0 at (6, 10)
  DEFB 67,6,0,22,10,0     ; Draw torch (67) with attribute data index of 6,
                          ; terrain interaction data index of 0 at (22, 10)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (01) - Teleport
  DEFB 1,29,0,14,15,0     ; Draw left half of Teleport (1) with attribute data
                          ; index of 29, terrain interaction data index of 0 at
                          ; (14, 15)
  DEFB 1,29,0,17,15,1     ; Draw left half of Teleport (1) with attribute data
                          ; index of 29, terrain interaction data index of 0 at
                          ; (17, 15), and apply vertical mirror (1)
  DEFB 127,14,22          ; Start horizontal block drawing at (14, 22)
  DEFB 131,1              ; Draw 3 blocks of style 1
  DEFB 255                ; End Marker (block drawing)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (02) - Plant
  DEFB 66,8,0,15,18,0     ; Draw plant (66) with attribute data index of 8,
                          ; terrain interaction data index of 0 at (15, 18)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (03) - Corridor with Partial Floor and Ceiling
  DEFB 127,0,5            ; Start horizontal block drawing at (0, 5)
  DEFB 208,1              ; Draw 80 blocks of style 1
  DEFB 255                ; End Marker (block drawing)
  DEFB 60,18,1,8,21,0     ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (8, 21)
  DEFB 60,18,1,12,21,0    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (12, 21)
  DEFB 60,18,1,16,21,0    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (16, 21)
  DEFB 60,18,1,20,21,0    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (20, 21)
  DEFB 60,18,1,4,14,2     ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (4, 14), and apply horizontal mirror (2)
  DEFB 60,18,1,8,14,2     ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (8, 14), and apply horizontal mirror (2)
  DEFB 60,18,1,20,14,2    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (20, 14), and apply horizontal mirror (2)
  DEFB 60,18,1,24,14,2    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (24, 14), and apply horizontal mirror (2)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (04) - Top of Tree with Face
  DEFB 38,24,0,2,13,0     ; Draw top of tree with face (38) with attribute data
                          ; index of 24, terrain interaction data index of 0 at
                          ; (2, 13)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (05) - Left Wall
  DEFB 126,0,5            ; Start vertical block drawing at (0, 5)
  DEFB 137,1              ; Draw 9 blocks of style 1
  DEFB 255                ; End Marker (block drawing)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (06) - Right Wall
  DEFB 126,30,5           ; Start vertical block drawing at (30, 5)
  DEFB 137,1              ; Draw 9 blocks of style 1
  DEFB 255                ; End Marker (block drawing)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (07) - Security Door (1/3)
  DEFB 126,13,19          ; Start vertical block drawing at (13, 19)
  DEFB 130,13             ; Draw 2 blocks of style 13
  DEFB 255                ; End Marker (block drawing)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (08) - Security Door (2/3)
  DEFB 126,15,19          ; Start vertical block drawing at (15, 19)
  DEFB 130,13             ; Draw 2 blocks of style 13
  DEFB 255                ; End Marker (block drawing)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (09) - Security Door (3/3)
  DEFB 126,17,19          ; Start vertical block drawing at (17, 19)
  DEFB 130,13             ; Draw 2 blocks of style 13
  DEFB 255                ; End Marker (block drawing)

; Room Layout Data Fragment (10) - Blank
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (11) - Lever
  DEFB 127,21,17          ; Start horizontal block drawing at (21, 17)
  DEFB 15                 ; Draw 1 block of style 15
  DEFB 255                ; End Marker (block drawing)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (12) - Ceiling, Floor and Jump Chute
  DEFB 60,18,1,26,21,0    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (26, 21)
  DEFB 60,18,1,26,4,2     ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (26, 4), and apply horizontal mirror (2)
  DEFB 127,0,5            ; Start horizontal block drawing at (0, 5)
  DEFB 141,33             ; Draw 13 blocks of style 33
  DEFB 255                ; End Marker (block drawing)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (13) - Ceiling
  DEFB 127,0,5            ; Start horizontal block drawing at (0, 5)
  DEFB 144,33             ; Draw 16 blocks of style 33
  DEFB 255                ; End Marker (block drawing)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (14) - Right Wall Section
  DEFB 126,28,5           ; Start vertical block drawing at (28, 5)
  DEFB 133,1              ; Draw 5 blocks of style 1
  DEFB 255                ; End Marker (block drawing)
  DEFB 126,30,5           ; Start vertical block drawing at (30, 5)
  DEFB 133,1              ; Draw 5 blocks of style 1
  DEFB 255                ; End Marker (block drawing)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (15) - Right Section of Corridor
  DEFB 60,18,1,24,21,0    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (24, 21)
  DEFB 60,18,1,28,21,0    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (28, 21)
  DEFB 60,18,1,28,14,2    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (28, 14), and apply horizontal mirror (2)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (16) - Left Section of Corridor
  DEFB 60,18,1,0,21,0     ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (0, 21)
  DEFB 60,18,1,4,21,0     ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (4, 21)
  DEFB 60,18,1,0,14,2     ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (0, 14), and apply horizontal mirror (2)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (17) - Middle Section of Corridor
  DEFB 60,18,1,12,14,2    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (12, 14), and apply horizontal mirror (2)
  DEFB 60,18,1,16,14,2    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 18, terrain interaction data index of
                          ; 1 at (16, 14), and apply horizontal mirror (2)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Layout Data Fragment (18) - Cracked Column
  DEFB 60,14,0,10,21,0    ; Draw Jump Chute / Corridor Pad (60) with attribute
                          ; data index of 14, terrain interaction data index of
                          ; 0 at (10, 21)
  DEFB 61,12,0,10,14,0    ; Draw Cracked Column Section 1 (61) with attribute
                          ; data index of 12, terrain interaction data index of
                          ; 0 at (10, 14)
  DEFB 62,13,0,10,9,0     ; Draw Cracked Column Section 2 (62) with attribute
                          ; data index of 13, terrain interaction data index of
                          ; 0 at (10, 9)
  DEFB 0                  ; End Marker (room layout data fragment)

; Room Drawing Set "Apply Vertical Mirror" Mode off, "Apply Horizontal Mirror"
; Mode off and Draw a Graphic
;
; Used by the routine at 40664.
  XOR A                   ; Load 61373 with opcode for "NOP"...
  LD (61373),A            ; ...
  LD H,A                  ; Load 61373 and 61373 with opcode for "NOP"
  LD L,A                  ; ...
  LD (61374),HL           ; ...
  LD (23450),A            ; Reset both Horizontal and Vertical Mirror Flags
  LD (23449),A            ; Set Pixel Row Counter to zero
  LD BC,(23408)           ; Load BC with x- and y-coordinates of graphic to
                          ; draw
  JP 61336                ; Jump to 61336 (draw the graphic then return)

; Room Drawing Set "Apply Vertical Mirror" Mode on, "Apply Horizontal Mirror"
; Mode off and Draw a Graphic
;
; Used by the routine at 40664.
  LD A,205                ; Load 61373 with opcode for "CALL"...
  LD (61373),A            ; ...
  LD HL,61625             ; Load 61373 (i.e. operand of instruction at 61373)
                          ; with address of start of "Reverse the order of the
                          ; bits in A" routine...
  LD (61374),HL           ; ...
  XOR A                   ; Set Pixel Row Counter to zero...
  LD (23449),A            ; ...
  INC A                   ; Set Apply Vertical Mirror Flag and reset Apply
                          ; Horizontal Mirror Flag...
  LD (23450),A            ; ...
  LD A,(23409)            ; Load B with y-coordinate of graphic to draw...
  LD B,A                  ; ...
  LD A,(23410)            ; Load C with x-coordinate of graphic to draw...
  DEC A                   ; ...and decrease by one...
  LD C,A                  ; ...
  JP 61336                ; Jump to 61336 (draw the graphic then return)

; Room Drawing Set "Apply Vertical Mirror" Mode off, "Apply Horizontal Mirror"
; Mode on and Draw a Graphic
;
; Used by the routine at 40664.
  XOR A                   ; Load 61373 with opcode for "NOP"...
  LD (61373),A            ; ...
  LD H,A                  ; Load 61373 and 61373 with opcode for "NOP"
  LD L,A                  ; ...
  LD (61374),HL           ; ...
  LD A,2                  ; Reset Apply Vertical Mirror Flag and set Apply
                          ; Horizontal Mirror Flag...
  LD (23450),A            ; ...
  LD A,7                  ; Set Pixel Row Counter to 7...
  LD (23449),A            ; ...
  LD A,(23408)            ; Load C with x-coordinate of left edge of current
                          ; graphic to draw...
  LD C,A                  ; ...
  LD A,(23411)            ; Load B with y-coordinate + 1 for current graphic...
  LD B,A                  ; ...
  JP 61323                ; Jump to 61323 (set coordinates, draw the graphic
                          ; then return)

; Room Drawing Set "Apply Vertical Mirror" Mode on, "Apply Horizontal Mirror"
; Mode on and Draw a Graphic
;
; Used by the routine at 40664.
  LD A,205                ; Load 61373 with opcode for "CALL"...
  LD (61373),A            ; ...
  LD HL,61625             ; Load 61373 (i.e. operand of instruction at 61373)
                          ; with address of start of "Reverse the order of the
                          ; bits in A" routine...
  LD (61374),HL           ; ...
  LD A,7                  ; Set Pixel Row Counter to 7...
  LD (23449),A            ; ...
  LD A,3                  ; Set both Horizontal and Vertical Mirror Flags...
  LD (23450),A            ; ...
  LD BC,(23410)           ; Load BC with coordinates (each +1) of bottom-right
                          ; of graphic to draw
  DEC C                   ; Decrease x-coordinate by one
; This entry point is used by the routine at 61267.
  LD (23444),BC           ; Store coordinates at which to draw graphic at 23444
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  LD A,7                  ; Advance HL down to bottom pixel row in its current
                          ; character block (as we are drawing up from the
                          ; bottom)...
  ADD A,H                 ; ...
  LD H,A                  ; ...
  JR 61343                ; Jump to 61343 (draw the graphic then return)

; Room Drawing Draw a Graphic
;
; Used by the routines at 61214 and 61236. Input:  BC  x- and y-coordinates HL
; (Entry at 61343 only) Address in Display File to start drawing
  LD (23444),BC           ; Store x- and y-coordinates of character block
                          ; currently being drawn at 23444
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
; This entry point is used by the routine at 61297.
  PUSH HL                 ; Store HL (address in Display File to print
                          ; character)
  LD HL,61418             ; Load HL with 61418 (address of "Advance HL to next
                          ; Display File Address to be drawn to (Apply
                          ; Horizontal Mirror Flag reset)" routine)
  LD A,(23450)            ; Load A with Apply Horizontal and Apply Vertical
                          ; Mirror Flags
  AND 2                   ; If Apply Horizontal Mirror Flag is reset...
  JR Z,61357              ; ...then skip ahead to 61357
  LD HL,61521             ; Load HL with 61521 (address of "Advance HL to next
                          ; Display File Address to be drawn to (Apply
                          ; Horizontal Mirror Flag set)" routine)
  LD (61416),HL           ; Change destination for JP instruction at 61415 to
                          ; value in HL...
  POP HL                  ; Restore HL (address in Display File to print
                          ; character)
  LD DE,(23447)           ; Load DE with graphic data address
; This entry point is used by the routine at 61390.
  LD A,(DE)               ; Load A with a byte of graphic data
  OR A                    ; If data is zero...
  JR Z,61390              ; ...then read repeat counter value, x, and draw x
                          ; rows of reset pixels
  CP 255                  ; If data is 255...
  JR Z,61411              ; ...then read repeat counter value, x, and draw x
                          ; rows of set pixels
; The three-byte instruction at 61373 is modified by the instructions at 61215,
; 61238, 61268 and 61299. Initially it is as shown below, however upon
; modification it can take the following forms:
; +-------------+------------+-------------------------------------------------+
; | Instruction | Mirror     | Effect                                          |
; |             | Options    |                                                 |
; +-------------+------------+-------------------------------------------------+
; | 61215       | None       | NOP / NOP / NOP (do nothing)                    |
; | 61238       | Apply      | CALL 61625 (Reverse the order of the bits in A) |
; |             | Vertical   |                                                 |
; | 61268       | Apply      | NOP / NOP / NOP (do nothing)                    |
; |             | Horizontal |                                                 |
; | 61299       | Both       | CALL 61625 (Reverse the order of the bits in A) |
; +-------------+------------+-------------------------------------------------+
  CALL 61625              ; Reverse the order of the bits in A [This
                          ; instruction is modified by the instructions at
                          ; 61215, 61238, 61268 and 61299]
  CALL 61387              ; Load byte of graphic data in A into Display File
                          ; address in HL
  INC DE                  ; Advance DE to next byte of graphic data
  CALL 61415              ; Advance HL to next location in Display File (up or
                          ; down one pixel)...
  JP Z,61365              ; ...and if this new location is not outside
                          ; dimensions of the graphic then loop back to 61365
; This entry point is used by the routine at 61390.
  RET                     ; Return

; Load Contents of A into Memory Location Pointed to by HL
;
; Used by the routines at 61336 and 61390. Input:  A  A byte of (e.g. graphic)
; data HL  An address (e.g. in Display File)
  NOP                     ; Do nothing (see trivia)
  LD (HL),A               ; Load byte of graphic data into Display File address
                          ; HL
  RET                     ; Return

; Read (From Graphic Data) Repeat Counter Value, x, and Draw x Rows of Reset
; Pixels
;
; Used by the routine at 61336. Input:  DE  Current position in graphic data
  LD C,0                  ; Set C to zero (all bits reset)
; This entry point is used by the routine at 61411.
  INC DE                  ; Advance graphic data pointer
  LD A,(DE)               ; Load next data byte (repeat counter) into A
  INC DE                  ; Advance graphic data pointer
  LD B,A                  ; Load B (repeat counter) with value in A
  LD A,C                  ; Load A with zero (i.e. all eight pixel bits reset)
  CALL 61387              ; Load byte of graphic data in A into Display File
                          ; address in HL
  CALL 61415              ; Advance HL to next location in Display File (up or
                          ; down one pixel)...
  JP NZ,61386             ; ...and if this new location is outside dimensions
                          ; of the graphic then jump to 61386 (return)
  DJNZ 61396              ; Decrease repeat counter and loop back to 61396 if
                          ; not zero
  JP 61365                ; Jump back to 61365 to process next graphic data
                          ; byte

; Read (From Graphic Data) Repeat Counter Value, x, and Draw x Rows of Set
; Pixels
;
; Used by the routine at 61336.
  LD C,255                ; Load C with 255 (all bits set)
  JR 61392                ; Read repeat counter value, x, and draw x rows of
                          ; set pixels

; Room Drawing Jump to routine to advance HL to next Display File address to be
; drawn to
;
; Destination of jump (i.e. WORD value at 61416) depends upon whether or not
; the Apply Horizontal Mirror Flag is set. If the flag is set, then the jump
; destination is 61521, otherwise, the jump destination is 61418. Input: HL  A
; Display File address
  JP 61418                ; Advance HL to next Display File Address to be drawn
                          ; to, depending upon state of Apply Horizontal Mirror
                          ; Flag and return

; Room Drawing Advance HL to next Display File address to be drawn to (Apply
; Horizontal Mirror Flag reset)
;
; Used when Apply Horizontal Mirror Flag is reset Input:  HL  A Display File
; address Output: A  1 (if returning via 61493, drawing complete), otherwise
; zero F  Zero Flag reset (if returning via 61493, drawing complete)
  LD A,(23449)            ; Increase Pixel Row Counter...
  INC A                   ; ...
  AND 7                   ; ...and reset to zero if it exceeds 7...
  LD (23449),A            ; ...
  JR Z,61432              ; If new value of Pixel Row Counter is zero (i.e. we
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
  JP NZ,61494             ; ...then skip ahead to 61494
  PUSH BC                 ; Store BC
  LD A,(23444)            ; Load x-coordinate of character block currently
                          ; being drawn into A...
  INC A                   ; ...increase by one...
  LD B,A                  ; ...and load into B
  LD A,(23410)            ; Load (x-coordinate + 1) of right of graphic being
                          ; drawn into A
  CP B                    ; If both x-coordinates are the same (i.e. we have
                          ; moved beyond graphic's right edge)...
  JR Z,61466              ; ...then jump to 61466
  LD A,B                  ; Store increased x-coordinate at 23444...
  LD (23444),A            ; ...
  LD BC,(23444)           ; Load BC with coordinates of new character block to
                          ; draw
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  XOR A                   ; Set A to zero
  POP BC                  ; Restore BC
  RET                     ; Return
; This next section advances HL to next character row to be drawn
  LD A,(23408)            ; Load A with x-coordinate of left of graphic to
                          ; draw...
  LD (23444),A            ; ...and set current x-coordinate to match
  LD A,(23445)            ; Load current y-coordinate into C, increasing by
                          ; one...
  INC A                   ; ...
  LD C,A                  ; ...
  LD A,(23411)            ; Load (y-coordinate + 1) of bottom of graphic being
                          ; drawn into A
  CP C                    ; If both y-coordinates are the same (i.e. we have
                          ; moved beyond graphic's bottom edge)...
  JR Z,61489              ; ...then skip ahead to 61489
  LD A,C                  ; Store increased y-coordinate at 23445...
  LD (23445),A            ; ...
  JR 61456                ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL then return
; This entry point is used by the routine at 61521.
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
  LD A,(23408)            ; Load x-coordinate of left of graphic being drawn
                          ; into A...
  DEC A                   ; ...and decrease by one
  CP B                    ; If both x-coordinates are the same (i.e. we have
                          ; moved beyond graphic's left edge)...
  JR Z,61514              ; ...then jump to 61514
  LD A,B                  ; Store decreased x-coordinate at 23444...
  LD (23444),A            ; ...
  JP 61456                ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL then return
  LD A,(23410)            ; Load x-coordinate of right of graphic being drawn
                          ; into A...
  DEC A                   ; ...
  JP 61469                ; Move current character position down one character
                          ; row and return

; Room Drawing Advance HL to next Display File address to be drawn to (Apply
; Horizontal Mirror Flag set)
;
; Used when Apply Horizontal Mirror Flag is set Input:  HL  A Display File
; address Output: A  1 (if returning via 61493, drawing complete), otherwise
; zero F  Zero Flag reset (if returning via 61493, drawing complete)
  LD A,(23449)            ; Increase Pixel Row Counter...
  DEC A                   ; ...
  AND 7                   ; ...and reset to 7 if it falls below zero...
  LD (23449),A            ; ...
  CP 7                    ; If new value of Pixel Row Counter is 7 (i.e. we
                          ; have rolled over to a new character block)...
  JR Z,61537              ; ...then advance HL to next character block to be
                          ; drawn and return
  DEC H                   ; Decrease Display File address by 256 bytes (i.e.
                          ; move to next pixel row up)
  XOR A                   ; Set A to zero
  RET                     ; Return
; This next section advances HL to next character block to be drawn
  LD A,(23450)            ; Load A with Horizontal and Vertical Mirror Flags
  AND 1                   ; If Apply Vertical Mirror Flag is set...
  JP NZ,61598             ; ...then skip ahead to 61598
  PUSH BC                 ; Store BC
  LD A,(23444)            ; Load x-coordinate of character block currently
                          ; being drawn into A...
  INC A                   ; ...increase by one...
  LD B,A                  ; ...and load into B
  LD A,(23410)            ; Load (x-coordinate + 1) of right of graphic being
                          ; drawn into A
  CP B                    ; If both x-coordinates are the same (i.e. we have
                          ; moved beyond graphic's right edge)...
  JR Z,61575              ; ...then jump to 61575
  LD A,B                  ; Store increased x-coordinate at 23444...
  LD (23444),A            ; ...
  LD BC,(23444)           ; Load BC with coordinates of new character block to
                          ; draw
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
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
  LD A,(23408)            ; Load A with x-coordinate of left of graphic to
                          ; draw...
  LD (23444),A            ; ...and set current x-coordinate to match
  LD A,(23445)            ; Load current y-coordinate into C, decreasing by
                          ; one...
  DEC A                   ; ...
  LD C,A                  ; ...
  LD A,(23409)            ; Load y-coordinate of top of graphic being drawn
                          ; into A
  CP C                    ; If both y-coordinates are the same (i.e. we have
                          ; moved beyond graphic's top edge)...
  JR Z,61489              ; ...then jump to 61489 (load A with 1, reset Zero
                          ; Flag and return)
  LD A,C                  ; Store increased y-coordinate at 23445...
  LD (23445),A            ; ...
  JR 61561                ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL then return
; This next section advances HL to next character block to be drawn where the
; Apply Vertical Mirror Flag is set
  PUSH BC                 ; Store BC
  LD A,(23444)            ; Load x-coordinate of character block currently
                          ; being drawn into A...
  DEC A                   ; ...decrease by one...
  LD B,A                  ; ...and load into B
  LD A,(23408)            ; Load x-coordinate of left of graphic being drawn
                          ; into A...
  DEC A                   ; ...and decrease by one
  CP B                    ; If both x-coordinates are the same (i.e. we have
                          ; moved beyond graphic's left edge)...
  JR Z,61618              ; ...then jump to 61618
  LD A,B                  ; Store decreased x-coordinate at 23444...
  LD (23444),A            ; ...
  JP 61561                ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL then return
  LD A,(23410)            ; Load x-coordinate of right of graphic being drawn
                          ; into A...
  DEC A                   ; ...
  JP 61578                ; Move current character position down one character
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
  DJNZ 61630              ; Loop back to 61630 for next bit
  LD A,C                  ; Load modified bitmap back into A
  POP BC                  ; Restore BC
  RET                     ; Return

; Store Background Bitmap Data at Magic Knight's Current Location
;
; Used by the routine at 61860.
  LD DE,24576             ; Point DE at Table of Bitmap Data for Magic Knight
                          ; at his Current Location
  LD A,(24841)            ; Load HL with double Magic Knight's current
                          ; y-coordinate (pixels)...
  LD L,A                  ; ...
  LD H,0                  ; ...
  ADD HL,HL               ; ...
  LD BC,65140             ; Point BC at Table of Display File Addresses of
                          ; Start of Each Pixel Row
  ADD HL,BC               ; Add double y-coordinate as offset in HL
  LD (23412),HL           ; Store pointer to entry for pixel row at Magic
                          ; Knight's current y-coordinate
  LD A,(24840)            ; Load A with Magic Knight's current x-coordinate
                          ; (pixels)
  RRCA                    ; Divide by two
  PUSH AF                 ; Store AF (A = Magic Knight's current x-coordinate
                          ; in pixels, divided by two)
  AND 3                   ; Clear all but the lowest three bits...
  LD (24843),A            ; ...and store the remaining value as Magic Knight's
                          ; current frame index
  POP AF                  ; Restore AF (A = Magic Knight's current x-coordinate
                          ; in pixels, divided by two)
  RRCA                    ; Divide Magic Knight's current x-coordinate in
                          ; pixels by eight and remove remainder...
  RRCA                    ; ...
  AND 31                  ; ...
  LD (23414),A            ; Store value (Magic Knight's current x-coordinate in
                          ; characters) at 23414...
  LD C,A                  ; ...and load into C
  LD B,32                 ; Load B with 32 (as Magic Knight is 32 pixels tall)
  LD IX,(23412)           ; Load IX with pointer to entry for pixel row at
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
  DJNZ 61680              ; Decrease B (remaining number of pixel rows to
                          ; store) and loop back to 61680 if non-zero for next
                          ; pixel row
  LD HL,24576             ; Copy contents of Table of Bitmap Data for Magic
                          ; Knight at his Current Location to Table of
                          ; Background Bitmap Data 24672...
  LD DE,24672             ; ...
  LD BC,96                ; ...
  LDIR                    ; ...
  RET                     ; Return

; Overlay Graphic Data for MK's Current Frame on Table of Bitmap Data for MK at
; his Current Location
;
; Used by the routine at 61860.
  LD A,(24843)            ; Load Magic Knight's current frame index into A...
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
  LD A,(23417)            ; If Magic Knight Facing Left Flag is reset...
  OR A                    ; ...
  JR Z,61744              ; ...then skip ahead to 61744
  LD BC,384               ; Advance HL by 384 bytes...
  ADD HL,BC               ; ...i.e. prepare to use left-facing graphic data,
                          ; rather than right-facing...
  PUSH HL                 ; Copy value in HL to IX...
  POP IX                  ; ...
  LD DE,26968             ; Point DE at start of graphic data for Magic Knight
                          ; facing right, frame 1 (mask)
  ADD HL,DE               ; Add HL as offset in HL (HL now points to start of
                          ; graphic data for Magic Knight's current frame mask)
  LD DE,26200             ; Point DE at start of graphic data for Magic Knight
                          ; facing right, frame 1
  ADD IX,DE               ; Add IX as offset in IX (IX now points to start of
                          ; graphic data for Magic Knight's current frame)
  LD DE,24576             ; Point DE at Table of Bitmap Data for Magic Knight
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
  DJNZ 61761              ; Decrease B (remaining number of bytes to process)
                          ; and loop back to 61761
  RET                     ; Return

; Draw Bitmap Data for Magic Knight Overlaid on Background to Display File
;
; Used by the routine at 61860. Input:  DE  (Entry at 61777 only) Address of
; Table of Background Bitmap Data (24672)
  LD DE,24576             ; Point DE at Table of Bitmap Data for Magic Knight
                          ; at his Current Location
; This entry point is used by the routines at 39553 and 61823.
  LD IX,(23412)           ; Load IX with pointer to entry in Table of Display
                          ; File Addresses for pixel row at Magic Knight's
                          ; current y-coordinate
  LD A,(23414)            ; Load C with Magic Knight's current x-coordinate
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
  DJNZ 61787              ; Decrease B (remaining number of pixel rows to draw)
                          ; and loop back to 61787 if non-zero for next pixel
                          ; row
  RET                     ; Return

; Set Redraw Magic Knight On Next Interrupt Flag and Wait for Interrupt
;
; Used by the routines at 38205, 38434, 40527 and 40546.
  LD A,1                  ; Set Redraw Magic Knight On Next Interrupt Flag...
  LD (23441),A            ; ...
  HALT                    ; Wait for interrupt (i.e. redraw Magic Knight, etc.)
  RET                     ; Return

; Erase Magic Knight from Display, Advance his Current Position then Redraw
;
; Used by the routine at 62178.
  PUSH IX                 ; Store IX
  CALL 46784              ; Draw axe(s) to screen if Magic Knight is in an axe
                          ; room
  LD DE,24672             ; Point DE at Table of Background Bitmap Data
  CALL 61777              ; Restore background bitmap data (i.e. remove Magic
                          ; Knight bitmap data from display)
  LD A,(23706)            ; If Player Attribute Update Flag is set...
  OR A                    ; ...
  CALL NZ,62003           ; ...then restore background attribute data at Magic
                          ; Knight's current location
  POP IX                  ; Restore IX
  LD HL,24840             ; Point HL at Magic Knight's current x-coordinate
  LD A,(24844)            ; Load A with Magic Knight's current x-velocity...
  ADD A,(HL)              ; ...and add to this Magic Knight's current
                          ; x-coordinate
  LD (HL),A               ; Set this as Magic Knight's new x-coordinate
  INC HL                  ; Advance HL to Magic Knight's y-coordinate
  LD A,(24845)            ; Load A with Magic Knight's current y-velocity...
  ADD A,(HL)              ; ...and add to this Magic Knight's current
                          ; y-coordinate
  LD (HL),A               ; Set this as Magic Knight's new y-coordinate
  XOR A                   ; Load A with 0 (prepare to reset Do Not Draw Axes
                          ; Flag)
  JR 61866                ; Store background attributes if appropriate, then
                          ; draw Magic Knight (and axes if appropriate) to
                          ; display, then return

; Store Background Attributes if Appropriate, then Draw Magic Knight to Display
; Without Drawing Axes
;
; Used by the routines at 39393, 39553 and 44253. Input:  A  (Entry at 61866
; only) Value for Do Not Draw Axes Flag
  XOR A                   ; Reset Redraw Magic Knight On Next Interrupt Flag...
  LD (23441),A            ; ...
  LD A,1                  ; Load A with 1 (prepare to set Do Not Draw Axes
                          ; Flag)
; This entry point is used by the routine at 61823.
  PUSH IX                 ; Store IX
  LD (23437),A            ; (Re)set Do Not Draw Axes Flag to value in A
  LD A,(23706)            ; If Player Attribute Update Flag is set (Player
                          ; Attribute Update mode)...
  OR A                    ; ...
  CALL NZ,61913           ; ...then store background attribute data at Magic
                          ; Knight's current location
  CALL 61638              ; Store background bitmap data at Magic Knight's
                          ; current location
  CALL 61720              ; Overlay graphic data for MK's current frame on
                          ; Table of Bitmap Data for MK at his Current Location
  CALL 61774              ; Draw bitmap data for Magic Knight overlaid on
                          ; background to Display File
  LD A,(23437)            ; If Do Not Draw Axes Flag is reset...
  OR A                    ; ...
  CALL Z,46784            ; ...then draw axe(s) to screen if Magic Knight is in
                          ; an axe room
  LD A,(23414)            ; Store Magic Knight's current x-coordinate
                          ; (characters) at 23415...
  LD (23415),A            ; ...
  LD A,(24841)            ; Store Magic Knight's current y-coordinate (pixels)
                          ; at 23416...
  LD (23416),A            ; ...
  POP IX                  ; Restore IX
  XOR A                   ; Reset Redraw Magic Knight On Next Interrupt Flag...
  LD (23441),A            ; ...
  RET                     ; Return

; Store Background Attribute Data at Magic Knight's Current Location
;
; Used by the routine at 61860.
  LD DE,25048             ; Point DE at Table of Background Attribute data
  LD A,(24841)            ; Load A with Magic Knight's current y-coordinate
                          ; (pixels)
  AND 248                 ; Clear lowest three bits to round down to nearest
                          ; multiple of 8
  LD L,A                  ; Load this value into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Multiply by four to obtain 32 x y-coordinate
                          ; (characters)...
  ADD HL,HL               ; ...
  LD A,(24840)            ; Load A with Magic Knight's current x-coordinate
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
  LD BC,23808             ; Point BC at start of Terrain Interaction Data
                          ; Table...
  ADD HL,BC               ; ...and add 32 x y-coordinate as offset in HL
  EX (SP),HL              ; Restore Attribute File address to HL...
  POP IX                  ; ...and load IX with Terrain Interaction address
  LD A,(24846)            ; Load C with Magic Knight's attribute...
  LD C,A                  ; ...
  LD B,4                  ; Load B with 4 as Magic Knight is four characters
                          ; tall
  PUSH BC                 ; Store BC (B = remaining number of character rows)
  LD A,(HL)               ; Copy byte from Attribute File...
  LD (DE),A               ; ...into Table of Background Attribute Data
  BIT 5,(IX+0)            ; If Preserve Attribute Terrain Interaction Flag is
                          ; set for this character...
  JR NZ,61967             ; ...then skip ahead to 61967
  LD (HL),C               ; Set current Attribute File byte to match Magic
                          ; Knight's attribute
  INC HL                  ; Advance current position in Attribute File
  INC DE                  ; Advance current position in Table of Background
                          ; Attribute Data
  LD A,(HL)               ; Copy byte from Attribute File...
  LD (DE),A               ; ...into Table of Background Attribute Data
  BIT 5,(IX+1)            ; If Preserve Attribute Terrain Interaction Flag is
                          ; set for this character...
  JR NZ,61978             ; ...then skip ahead to 61978
  LD (HL),C               ; Set current Attribute File byte to match Magic
                          ; Knight's attribute
  INC HL                  ; Advance current position in Attribute File
  INC DE                  ; Advance current position in Table of Background
                          ; Attribute Data
  LD A,(HL)               ; Copy byte from Attribute File...
  LD (DE),A               ; ...into Table of Background Attribute Data
  BIT 5,(IX+2)            ; If Preserve Attribute Terrain Interaction Flag is
                          ; set for this character...
  JR NZ,61989             ; ...then skip ahead to 61989
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
  DJNZ 61957              ; If character rows remain then loop back to 61957
  RET                     ; Return

; Restore Background Attribute Data at Magic Knight's Current Location
;
; Used by the routines at 39553 and 61823.
  LD DE,25048             ; Point DE at Table of Background Attribute Data
  LD A,(24841)            ; Load A with Magic Knight's current y-coordinate
                          ; (pixels)
  AND 248                 ; Clear lowest three bits to round down to nearest
                          ; multiple of 8
  LD L,A                  ; Load this value into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Multiply by four to obtain 32 x y-coordinate
                          ; (characters)...
  ADD HL,HL               ; ...
  LD A,(24840)            ; Load A with Magic Knight's current x-coordinate
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
  DJNZ 62034              ; If character rows to be coloured remain then loop
                          ; back to 62034
  RET                     ; Return

; Table of Start Addresses of Input Device Reading Routines
  DEFW 64042              ; Address of keyboard reading routine
  DEFW 64091              ; Address of Kempston Joystick reading routine
  DEFW 64122              ; Address of Cursor Joystick reading routine
  DEFW 64159              ; Address of Sinclair Joystick 1 reading routine

; Powers of Ten (Used by Routine at 47797) for Converting Numbers to ASCII
; String
  DEFW 10000
  DEFW 1000
  DEFW 100
  DEFW 10
  DEFW 1

; Addresses of Room-Specific Routines
  DEFW 40172              ; (00) - Do Nothing - Limbo
  DEFW 40172              ; (01) - Do Nothing - Outdoors, 0 (Bearwoolf's Hoard)
  DEFW 40489              ; (02) - Display Cave Progress and Set Magic Knight's
                          ; x-Velocity to 2 if at Floor Level - Outdoors, 1
                          ; (Bearwoolf's Cave)
  DEFW 40598              ; (03) - Kill Magic Knight if he is Too Close to
                          ; Bearwoolf - Outdoors, 2 (Beware Bearwoolf)
  DEFW 40172              ; (04) - Do Nothing - Outdoors, 3 (The Spooky Forest,
                          ; 1)
  DEFW 40172              ; (05) - Do Nothing - Outdoors, 4
  DEFW 40172              ; (06) - Do Nothing - Outdoors, 5 (The Spooky Forest,
                          ; 2)
  DEFW 40172              ; (07) - Do Nothing - Outdoors, 6 (The Sword in the
                          ; Concrete)
  DEFW 40172              ; (08) - Do Nothing - Outdoors, 7 (Robin's Little
                          ; Hut)
  DEFW 40172              ; (09) - Do Nothing - Outdoors, 8 (Exit from Limbo)
  DEFW 40172              ; (10) - Do Nothing - Outdoors, 9 (More Spooky
                          ; Forest)
  DEFW 40172              ; (11) - Do Nothing - Outdoors, 10 (Entwood)
  DEFW 40172              ; (12) - Do Nothing - Outdoors, 11 (The Spooky
                          ; Forest, 3)
  DEFW 40172              ; (13) - Do Nothing - Outdoors, 12 (The Spooky
                          ; Forest, 4)
  DEFW 40338              ; (14) - Check for Egg Dropped down Wishing Well and
                          ; Set Wish Pending Flag and Display Message If
                          ; Appropriate - Outdoors, 13 (Wishing Well)
  DEFW 40172              ; (15) - Do Nothing - Outdoors, 14
  DEFW 40614              ; (16) - Enable / Disable Entry to Castle Depending
                          ; Upon Disquise Worn and Whether Newspaper is Held -
                          ; Outdoors, 15 (The Castle Entrance)
  DEFW 40235              ; (17) - Update Position of 1 Axe and Display -
                          ; Castle Ground Floor, 0 (One Axe Room)
  DEFW 40235              ; (18) - Update Position of 1 Axe and Display -
                          ; Castle Ground Floor, 1 (Indoor Bowling Green)
  DEFW 40235              ; (19) - Update Position of 1 Axe and Display -
                          ; Castle Ground Floor, 2
  DEFW 40235              ; (20) - Update Position of 1 Axe and Display -
                          ; Castle Ground Floor, 3
  DEFW 40239              ; (21) - Update Positions of 4 Axes and Display -
                          ; Castle Ground Floor, 4 (More Axe Problems)
  DEFW 40239              ; (22) - Update Positions of 4 Axes and Display -
                          ; Castle Ground Floor, 5 (Even More Axes)
  DEFW 40549              ; (23) - Moving Magic Knight Up a Room if Appropriate
                          ; and Boost Jumps if Wearing Power Boots - Castle
                          ; Ground Floor, 6 (The First Jump Chute)
  DEFW 40172              ; (24) - Do Nothing - Castle First Floor, 0 (Main
                          ; Lever 7)
  DEFW 40172              ; (25) - Do Nothing - Castle First Floor, 1 (Main
                          ; Lever 6)
  DEFW 40172              ; (26) - Do Nothing - Castle First Floor, 2 (Security
                          ; Door & Main Lever 5)
  DEFW 40523              ; (27) - Set Magic Knight's x-Velocity to 2 if his
                          ; y-Coordinate is 136 - Castle First Floor, 3 (Main
                          ; Lever 4)
  DEFW 40172              ; (28) - Do Nothing - Castle First Floor, 4 (Main
                          ; Lever 3)
  DEFW 40258              ; (29) - Kill Magic Knight if he is in a Dark Room
                          ; Without Illumination - Castle First Floor, 5 (Main
                          ; Lever 2)
  DEFW 40546              ; (30) - Move Magic Knight Up or Down a Room if
                          ; Appropriate and Boost Jumps if Wearing Power Boots
                          ; - Castle First Floor, 6 (Main Lever 1)
  DEFW 40172              ; (31) - Do Nothing - Castle Second Floor, 0 (The
                          ; Broken Teleport)
  DEFW 40172              ; (32) - Do Nothing - Castle Second Floor, 1
                          ; (Terrible Twins)
  DEFW 40172              ; (33) - Do Nothing - Castle Second Floor, 2 (The
                          ; Guardian Statues)
  DEFW 40523              ; (34) - Set Magic Knight's x-Velocity to 2 if his
                          ; y-Coordinate is 136 - Castle Second Floor, 3 (One
                          ; Way Corridor, 1)
  DEFW 40523              ; (35) - Set Magic Knight's x-Velocity to 2 if his
                          ; y-Coordinate is 136 - Castle Second Floor, 4 (One
                          ; Way Corridor, 2)
  DEFW 40523              ; (36) - Set Magic Knight's x-Velocity to 2 if his
                          ; y-Coordinate is 136 - Castle Second Floor, 5 (One
                          ; Way Corridor, 3)
  DEFW 40546              ; (37) - Move Magic Knight Up or Down a Room if
                          ; Appropriate and Boost Jumps if Wearing Power Boots
                          ; - Castle Second Floor, 6
  DEFW 40406              ; (38) - Move Magic Knight Down a Room if Appropriate
                          ; - Castle Third Floor, 0 (Big White Statue)
  DEFW 40172              ; (39) - Do Nothing - Castle Third Floor, 1
  DEFW 40437              ; (40) - Move Magic Knight Between Teleport Rooms if
                          ; Appropriate - Castle Third Floor, 2 (Teleport Room,
                          ; 1)
  DEFW 40527              ; (41) - Set Magic Knight's x-Velocity to -2 if his
                          ; y-Coordinate is 136 - Castle Third Floor, 3 (One
                          ; Way Corridor, 4)
  DEFW 40527              ; (42) - Set Magic Knight's x-Velocity to -2 if his
                          ; y-Coordinate is 136 - Castle Third Floor, 4 (One
                          ; Way Corridor, 5)
  DEFW 40527              ; (43) - Set Magic Knight's x-Velocity to -2 if his
                          ; y-Coordinate is 136 - Castle Third Floor, 5 (One
                          ; Way Corridor, 6)
  DEFW 40406              ; (44) - Move Magic Knight Down a Room if Appropriate
                          ; - Castle Third Floor, 6
  DEFW 40172              ; (45) - Do Nothing - Spaceship, 0 (The Control Room)
  DEFW 40172              ; (46) - Do Nothing - Spaceship, 1 (Many Screened
                          ; Room)
  DEFW 40437              ; (47) - Move Magic Knight Between Teleport Rooms if
                          ; Appropriate - Spaceship, 2 (Teleport Room, 2)
  DEFW 40172              ; (48) - Do Nothing - Spaceship, 3
  DEFW 40201              ; (49) - Decrease Magic Knight's Strength by One Once
                          ; Every Four Frames - Spaceship, 4 (The Power Plant)
  DEFW 40172              ; (50) - Do Nothing - Spaceship, 5
  DEFW 40172              ; (51) - Do Nothing - Spaceship, 6
  DEFW 40172              ; (52) - Do Nothing - Unused (see trivia)

; Call Time-Dependent Routines [Main Interrupt Routine]
;
; Used by the routine at 65524.
  CALL 62959              ; Store all registers on the stack
  BIT 0,(IY+65)           ; If Game In Progress Flag is reset... (IY = 23610)
  JP Z,62288              ; ...then skip ahead to 62288
  CALL 64687              ; If Do Not Draw Storm Cloud Flag is reset then draw
                          ; Storm Cloud
  LD A,(23441)            ; If Redraw Magic Knight On Next Interrupt Flag is
                          ; set...
  OR A                    ; ...
  CALL NZ,61823           ; ...then erase Magic Knight from display, advance
                          ; his current position then redraw
  CALL 62330              ; Update game time, time left and move characters if
                          ; appropriate
  LD A,(23403)            ; Load B with MSB of Off-White Knight Sent To Sleep
                          ; Flag...
  AND 128                 ; ...
  LD B,A                  ; ...
  LD A,(24782)            ; Set Off-White Knight's Asleep Flag...
  OR B                    ; ...if MSB of Off-White Knight Sent To Sleep Flag is
                          ; set...
  LD (24782),A            ; ...
; The instructions between 62214 and 62252 (inclusive) are not used in the 48k
; version of Stormbringer. These instructions relate to the LOCATE A CHARACTER
; functionality that is present in the 128k version of Stormbringer - see
; trivia
  LD BC,(23471)           ; Load x- & y- coordinate of top-left character of
                          ; currently glowing "Locate Compass" component into
                          ; BC
  LD A,B                  ; If this is zero (i.e. compass not glowing because
                          ; Magic Knight isn't "locating")...
  OR C                    ; ...
  JR Z,62255              ; ...then skip ahead to 62255
  LD A,(23436)            ; Load "Compass Glow Update Flag" into A
  INC A                   ; Invert Compass Glow Update Flag
  AND 1                   ; Store back at 23436 and if Compass Glow Update Flag
                          ; is set...
  LD (23436),A            ; ...
  JR NZ,62255             ; ...then skip over glow attribute update section to
                          ; 62255 (don't update glowing attributes this time)
  CALL 63219              ; Load HL with Attribute File address for coordinates
                          ; (C, B)
  CALL 62317              ; Update glowing blocks' attribute to next colour in
                          ; sequence and load into E
  CALL 62310              ; Write current attribute for a glowing block to
                          ; Attribute File (HL) and advance HL
  CALL 62310              ; Write current attribute for a glowing block to
                          ; Attribute File (HL) and advance HL
  LD BC,30                ; Advance Attribute File address (HL) down to next
                          ; row, to the block immediately below the first one
                          ; updated at instruction 62239...
  ADD HL,BC               ; ...
  CALL 62310              ; Write current attribute for a glowing block to
                          ; Attribute File (HL) and advance HL
  CALL 62310              ; Write current attribute for a glowing block to
                          ; Attribute File (HL) and advance HL
  BIT 1,(IY+65)           ; If "Disable In-Game Glow" flag is set...
  JP NZ,62302             ; ...then skip to end of interrupt routine
  LD IX,23368             ; Point IX at Table of Glowing Attribute File
                          ; Addresses
  CALL 62317              ; Update glowing blocks' attribute to next colour in
                          ; sequence and load into E
  LD L,(IX+0)             ; Load a glowing Attribute File address into HL...
  LD H,(IX+1)             ; ...
  LD A,L                  ; If HL is zero...
  OR H                    ; ...
  JR Z,62288              ; ...then jump to 62288 (to exit loop)
  CALL 62310              ; Write current attribute for a glowing block to
                          ; Attribute File (HL) and advance HL
  INC IX                  ; Advance to next Attribute File address in list of
                          ; glowing blocks...
  INC IX                  ; ...
  JR 62269                ; Jump back to 62269 to update next block
  LD HL,(23672)           ; Load HL with current value in lowest two bytes of
                          ; System Variable FRAMES...
  INC HL                  ; ...increase...
  LD (23672),HL           ; ...and write back to memory
  LD A,H                  ; If lowest two bytes of FRAMES are not both zero...
  OR L                    ; ...
  JR NZ,62302             ; ...then skip ahead to 62302
  INC (IY+64)             ; Increase most significant byte of System Variable
                          ; FRAMES (23674)
  CALL 703                ; Call ROM routine to read keyboard
  CALL 62987              ; Restore all registers from the Stack
  EI                      ; Enable interrupts
  RET                     ; Return

; Interrupt Routine Write Current Attribute for a Glowing Block to Attribute
; File
;
; Used by the routine at 62178. Input:  HL  Attribute File address that is
; glowing E  Current attribute of glowing blocks Output: HL  Next Attribute
; File address on from that in HL on input
  LD A,(HL)               ; Load current attribute of this memory location into
                          ; A
  AND 248                 ; Reset all INK bits
  OR E                    ; Set required INK bits for current colour
  LD (HL),A               ; Write data to Attribute File to display the colour
  INC HL                  ; Advance to next Attribute File address
  RET                     ; Return

; Interrupt Routine Update Glowing Blocks' Attribute to Next Colour in Sequence
;
; Used by the routine at 62178. Output: E  New attribute of glowing blocks
  LD A,(23462)            ; Load A with current INK colour of glowing blocks
  INC A                   ; Advance to next colour in sequence
  AND 7                   ; Ensure that only INK attributes are used, rolling
                          ; back over to zero (black) after seven (white)
  JR Z,62320              ; We don't want "black" light, so advance from zero
                          ; (black) to one (blue) if black
  LD (23462),A            ; Place updated attribute back in memory
  LD E,A                  ; Copy new attribute into E
  RET                     ; Return

; Update Game Time, Time Left and Move Characters if Appropriate
;
; Used by the routine at 62178.
  LD A,(23460)            ; If number of 1/50 seconds elapsed in current minute
                          ; is zero (i.e. start of new second)...
  OR A                    ; ...
  CALL Z,62622            ; ...then move character whose turn it is to move, if
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
  CALL 62476              ; Update All Characters' Stats (Deteriorate or
                          ; Regenerate) and Wake Up / Send to Sleep if Required
  CALL 62431              ; Increase Magic Knight's current Magic Level by 10
                          ; (capped at 100)
  LD A,6                  ; If Magic Knight is wearing the Magic Talisman
                          ; (6)...
  CALL 45505              ; ...
  CALL Z,62428            ; ...then increase Magic Knight's current Magic Level
                          ; by 20 (capped at 100)
  LD A,(23713)            ; Increase index of current Crystal Ball substring...
  INC A                   ; ...
  AND 7                   ; ...resetting to zero if above 7...
  LD (23713),A            ; ...
  LD A,(23714)            ; Increase index of current Scroll substring...
  INC A                   ; ...
  AND 7                   ; ...resetting to zero if above 7...
  LD (23714),A            ; ...
  CALL 62443              ; Make Chicken lay an egg if possible
  LD A,(23458)            ; Increase number of minutes elapsed...
  INC A                   ; ...
  LD (23458),A            ; ...
  CP 5                    ; If new value isn't 5...
  RET NZ                  ; ...then return
  XOR A                   ; [EVERY 5 MINUTES] Else, set the value to zero
                          ; (start of next "hour")...
  LD (23458),A            ; ...
  LD A,(23457)            ; Decrease number of hours left...
  DEC A                   ; ...
  LD (23457),A            ; ...
  JP Z,62877              ; If zero then show "Out of time" game over message
                          ; and return to Control Selection Menu
  CALL 47897              ; Play upward scale sound
  RET                     ; Return

; Increase Magic Knight's Current Magic Level by 20 (Up to Maximum of 100)
;
; Used by the routine at 62330.
  CALL 62431              ; Increase Magic Knight's current magic level by 10
                          ; (up to maximum of 100)
; This entry point is used by the routine at 62330.
  LD A,(24771)            ; Load A with Magic Knight's current Magic Level
  LD C,10                 ; Add 10 to this value, capping at 100...
  CALL 62594              ; ...
  LD (24771),A            ; Store updated value for Magic Level
  RET                     ; Return

; Make Chicken Lay an Egg If Possible
;
; Used by the routine at 62330.
  LD A,(24852)            ; Load A with index of object in Magic Knight's fifth
                          ; inventory slot (carrying)...
  OR A                    ; ...and if this is not zero (i.e. Magic Knight's
                          ; hands are full)...
  RET NZ                  ; ...then return
  LD A,13                 ; If Magic Knight is not carrying the Chicken...
  CALL 45510              ; ...
  RET NZ                  ; ...then return
  LD A,(23466)            ; If index of next object to be laid by Chicken is
                          ; 42...
  CP 42                   ; ...i.e. no more eggs...
  RET Z                   ; ...then return
  LD A,(23466)            ; Load C with index of next object to be laid by
                          ; Chicken...
  LD C,A                  ; ...
  INC A                   ; Increase index of next object to be laid by
                          ; Chicken...
  LD (23466),A            ; ...
  LD B,5                  ; Load B with 5 (as Magic Knight has five inventory
                          ; slots)
  LD HL,24848             ; Load object in C into Magic Knight's first empty
                          ; inventory (carrying) slot...
  JP 45381                ; ...and return

; Update All Characters' Stats (Deteriorate or Regenerate) and Wake Up / Send
; to Sleep if Required
;
; Used by the routine at 62330.
  LD DE,8                 ; Load DE with 8 (as data is 8 bytes long)
  LD HL,62895             ; Point HL at start of characters' Stat Regeneration
                          ; Data Table
  LD IX,24776             ; Point IX at Off-White Knight's current stats (2nd
                          ; entry in Characters' Current Stats Table, as first
                          ; is Magic Knight's)
  LD B,8                  ; Load B with 8 (8 characters)
  BIT 7,(IX+6)            ; If current character is awake...
  JR Z,62498              ; ...then skip ahead to 62498
  INC HL                  ; Advance HL by four bytes to stat deterioration
                          ; data...
  INC HL                  ; ...
  INC HL                  ; ...
  INC HL                  ; ...
  LD C,(HL)               ; Load stat change value into C
  LD A,(IX+0)             ; Load current character's strength into A
  CALL 62594              ; Update character's strength as they tire (awake) or
                          ; regenerate (asleep)...
  LD (IX+0),A             ; ...
  INC HL                  ; Advance HL to next (happiness) data
  LD C,(HL)               ; Load stat change value into C
  LD A,(IX+1)             ; Load current character's happiness into A
  CALL 62594              ; Update character's happiness as they tire (awake)
                          ; or regenerate (asleep)...
  LD (IX+1),A             ; ...
  INC HL                  ; Advance HL to next (stamina) data
  LD C,(HL)               ; Load stat change value into C
  LD A,(IX+2)             ; Load current character's stamina into A
  CALL 62594              ; Update character's stamina as they tire (awake) or
                          ; regenerate (asleep)...
  LD (IX+2),A             ; ...
  INC HL                  ; Advance HL to next (magic level) data
  LD C,(HL)               ; Load stat change value into C
  LD A,(IX+3)             ; Load current character's magic level into A
  CALL 62594              ; Update character's magic level as they tire (awake)
                          ; or regenerate (asleep)...
  LD (IX+3),A             ; ...
  INC HL                  ; Advance HL to next block of data
  BIT 7,(IX+6)            ; If current character is asleep...
  JR NZ,62552             ; ...then we have already moved into data for next
                          ; character, so skip ahead to 62552
  INC HL                  ; Else, we are now in same character's "asleep" data,
                          ; so need to advance HL by four bytes to get to next
                          ; character's data...
  INC HL                  ; ...
  INC HL                  ; ...
  INC HL                  ; ...
  ADD IX,DE               ; Advance IX by eight bytes to next character's stats
  DJNZ 62488              ; Loop back to 62488
  LD DE,8                 ; Load DE with 8
  LD IX,24776             ; Point IX to Off-White Knight's current stats
  LD B,8                  ; Load B with 8 (8 characters)
  LD C,0                  ; Load C with zero (to denote first character,
                          ; Off-White Knight)
  LD A,(IX+2)             ; Load current character's stamina into A
  AND 127                 ; If stamina (bits 0-6) is not zero...
  JR NZ,62580             ; ...then skip ahead to 62580
  SET 7,(IX+6)            ; Else send character to sleep
  JR 62588                ; Skip ahead to 62588
  CP 100                  ; If stamina is not 100...
  JR NZ,62588             ; ...then skip ahead to 62588
  RES 7,(IX+6)            ; Else wake character up
  ADD IX,DE               ; Advance IX to next character's stats
  INC C                   ; Increase C for next character
  DJNZ 62567              ; Loop back to 62567 for next character
  RET                     ; Return

; Update Characters' Stats as They Tire (Awake) or Regenerate (Asleep)
;
; Used by the routines at 45434, 62428 and 62476. Input:  A  A character's stat
; (strength, stamina, happiness or spell power) C  An increment (while asleep)
; or decrement (while awake) for that stat Output: A  New value of stat
  PUSH AF                 ; Store AF (A = value of character's stat)
  AND 128                 ; Capture MSB in stat value and store in instruction
                          ; at 62619...
  LD (62620),A            ; ...
  POP AF                  ; Restore AF (A = value of character's stat)
  AND 127                 ; Discard MSB of stat value
  ADD A,C                 ; Add change value
  OR A                    ; Check Sign Flag
  JP P,62611              ; If sign flag reset (i.e. MSB of result is reset and
                          ; result is positive) then jump ahead to 62611
  XOR A                   ; else stat must have dropped below zero, so set stat
                          ; to zero (as it can't be less than 0)
  JR 62619                ; Skip ahead to 62619
  CP 100                  ; If new value of stat is less than or equal to
                          ; 100...
  JR Z,62619              ; ...then skip ahead to 62619...
  JR C,62619              ; ...
  LD A,100                ; ...else set stat to 100 (as it can't be greater
                          ; than 100)
; The operand of the instruction at 62619 represents bit 7 of the input value
; in A. This is modified by the instruction at 62597.
  OR 0                    ; Restore previously stored MSB state
  RET                     ; Return

; Move Character Whose Turn it is to Move, if Allowed
;
; Alternate characters move in opposite directions on alternate hours.
; Characters can only move if they are not in the same room as Magic Knight, or
; if the player is not currently controlling Magic Knight (i.e. navigating
; menus or failing to press FIRE when "PRESS FIRE TO CONTINUE" message is
; shown).
  BIT 2,(IY+65)           ; If Characters Can't Move Flag is set...
  RET NZ                  ; ...then return
  CALL 62812              ; Update index of character whose turn it is to be
                          ; updated and load into A
  LD E,6                  ; Point HL at this character's flags...
  CALL 45406              ; ...
  LD A,(HL)               ; ...and load flags into A
  AND 128                 ; If character is asleep...
  RET NZ                  ; ...then return
  DEC HL                  ; Move HL back two bytes to character's Attribute...
  DEC HL                  ; ...
  LD A,(HL)               ; ...and load attribute into A
  OR A                    ; If attribute is zero...
  RET Z                   ; ...then return
  LD A,(23455)            ; Load BC with three times index of character whose
                          ; turn it is to be updated...
  LD C,A                  ; ...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD B,0                  ; ...
  LD HL,24898             ; Point HL at start of Table of Characters' Current
                          ; Positions at 24898
  ADD HL,BC               ; Add BC to HL as offset
  LD A,(23702)            ; If Magic Knight is not in the same room as this
                          ; character...
  CP (HL)                 ; ...
  JR NZ,62668             ; ...then skip ahead to 62668
  BIT 1,(IY+65)           ; If Characters Movement Unrestricted Flag is reset
                          ; (IY = 23610)...
  RET Z                   ; ...then return
  LD A,(HL)               ; If character's room is 100...
  CP 100                  ; ...
  RET Z                   ; ...then return
  CP 99                   ; If character's room is 99...
  JP Z,62853              ; ...then reset character to his / her initial
                          ; position
  LD A,(23455)            ; Load B with index of character whose turn it is to
                          ; be updated...
  LD B,A                  ; ...
  LD A,(23457)            ; Load A with number of hours left...
  ADD A,B                 ; ...and add index of character to be updated
  BIT 0,A                 ; If result is even...
  JP Z,62734              ; ...then skip ahead to 62734
; Move character left
  LD A,(HL)               ; Load A with character's current room
  PUSH HL                 ; Store HL (pointer to character's current room)
  LD HL,48913             ; Set movement restriction data base address to 48915
                          ; (one room to the left)...
  LD (62785),HL           ; ...and load address into instruction at 62784
  LD HL,48811             ; Point HL to left exit value of first entry in Room
                          ; Connectivity Data Table
  CALL 62778              ; Get index of destination room for character and
                          ; load into A
  LD (62723),A            ; Load value into instruction at 62722
  POP HL                  ; Restore HL (pointer to character's current room)
  INC HL                  ; Advance HL to character's x-coordinate
  LD A,(HL)               ; Load x-coordinate into A...
  CP 2                    ; ...and if this is 2...
  JR Z,62722              ; ...then skip ahead to 62722
  DEC A                   ; Decrease x-coordinate by two...
  DEC A                   ; ...
  CALL 62827              ; Set this as character's new x-coordinate if value
                          ; is allowed, otherwise return
  CP 2                    ; If character's x-coordinate is not 2...
  RET NZ                  ; ...then return
; The operand of the instruction at 62722 represents the character's
; destination room when moving left. This is modified by the instructions at
; 62704.
  LD A,0                  ; Load B with character's destination room...
  LD B,A                  ; ...
  CP 255                  ; ...and if this is 255 (i.e. no room available)...
  RET Z                   ; ...then return
  LD A,28                 ; Set character's x-coordinate to 28 (right-hand side
                          ; of new room)...
  LD (HL),A               ; ...
  DEC HL                  ; Move HL back to character's room
  LD (HL),B               ; Set current room to new room index
  RET                     ; Return
; Move character right
  LD A,(HL)               ; Load A with character's current room
  PUSH HL                 ; Store HL (pointer to character's current room)
  LD HL,48917             ; Set movement restriction data base address to 48915
                          ; (one room to the right)...
  LD (62785),HL           ; ...and load address into instruction at 62784
  LD HL,48812             ; Point HL to right exit value of first entry in Room
                          ; Connectivity Data Table
  CALL 62778              ; Get index of destination room for character and
                          ; load into A
  LD (62767),A            ; Load value into instruction at 62766
  POP HL                  ; Restore HL (pointer to character's current room)
  INC HL                  ; Advance HL to character's x-coordinate
  LD A,(HL)               ; Load x-coordinate into A...
  CP 28                   ; ...and if this is 28...
  JR Z,62766              ; ...then skip ahead to 62766
  INC A                   ; Increase x-coordinate by two...
  INC A                   ; ...
  CALL 62827              ; Set this as character's new x-coordinate if value
                          ; is allowed, otherwise return
  CP 28                   ; If character's x-coordinate is not 28...
  RET NZ                  ; ...then return
; The operand of the instruction at 62766 represents the character's
; destination room when moving right. This is modified by the instructions at
; 62748.
  LD A,0                  ; Load B with character's destination room...
  LD B,A                  ; ...
  CP 255                  ; ...and if this is 255 (i.e. no room available)...
  RET Z                   ; ...then return
  LD A,2                  ; Set character's x-coordinate to 2 (left-hand side
                          ; of new room)...
  LD (HL),A               ; ...
  DEC HL                  ; Move HL back to character's room
  LD (HL),B               ; Set current room to new room index
  RET                     ; Return

; Get Index of Destination Room for a Character and Load into A
;
; Used by the routine at 62622. Input:  A  A room index HL  Points to one of
; the two bytes of the first entry of the Room Connectivity Data Table at 48811
; Output: A  New room index
  ADD A,A                 ; Load double room index into BC...
  LD C,A                  ; ...
  LD B,0                  ; ...
  ADD HL,BC               ; Add BC to HL as offset
  PUSH HL                 ; Store HL (pointer to room's left or right exit
                          ; data)
; The operand of the instruction at 62784 represents the base address of the
; movement restriction data (table at 48915), and may be 48915 (when character
; tries to move one room to the left) or 48915 (when character tries to move
; one room to the right). This is modified by the instructions at 62695 and
; 62739.
  LD HL,0                 ; Load HL with base address of movement restriction
                          ; data
  ADD HL,BC               ; Add BC to HL as offset
  LD A,(HL)               ; If movement restriction data is 98...
  CP 98                   ; ...then set Zero Flag
  POP HL                  ; Restore HL (pointer to room's left or right exit
                          ; data)
  JR Z,62807              ; If Zero Flag is set (i.e. movement restriction data
                          ; was 98) then skip ahead to 62807
  LD B,(HL)               ; Load B with index of room to the left or right of
                          ; room of interest
  LD A,(23702)            ; If Magic Knight's current room is not the same as
                          ; that in B...
  CP B                    ; ...
  JR NZ,62810             ; ...then skip ahead to 62810
  BIT 1,(IY+65)           ; If Characters Movement Unrestricted Flag is reset
                          ; (IY = 23610)...
  JR Z,62810              ; ...then skip ahead to 62810
  LD A,255                ; Load A with 255
  RET                     ; Return
  LD A,(HL)               ; Load A with room index at HL
  RET                     ; Return

; Update Index of Character Whose Turn it is to be Updated
;
; Used by the routine at 62622. Output: A  Updated index of character whose
; turn it is to be updated
  LD A,(23455)            ; Increment index of character whose turn it is to be
                          ; updated...
  INC A                   ; ...
  LD (23455),A            ; ...
  CP 8                    ; If new character index is not 8...
  RET NZ                  ; ...then return
  XOR A                   ; Set new character index to 0, as there are only 8
                          ; characters...
  LD (23455),A            ; ...
  RET                     ; Return

; Update Character's x-Coordinate if New Value is Allowed, Otherwise Return
;
; Used by the routine at 62622. Input:  A  Updated x-coordinate for character
; HL  Pointer to x-coordinate data in a character's current position data
; Output: A  Updated x-coordinate for character (same as input)
  PUSH HL                 ; Store HL (pointer to x-coordinate in a character's
                          ; current position data)
  PUSH AF                 ; Store AF (A = updated x-coordinate)
  DEC HL                  ; Move HL back to room index
  LD A,(HL)               ; Load BC with double character's room index...
  ADD A,A                 ; ...
  LD C,A                  ; ...
  LD B,0                  ; ...
  LD HL,48915             ; Load HL with start address of Character Movement
                          ; Restriction Data
  ADD HL,BC               ; ...and add BC as offset
  POP AF                  ; Restore AF (A = updated x-coordinate)
  CP (HL)                 ; If new x-coordinate is same as first disallowed
                          ; x-coordinate...
  JR Z,62850              ; ...then skip ahead to 62850
  INC HL                  ; If new x-coordinate is same as second disallowed
                          ; x-coordinate...
  CP (HL)                 ; ...
  JR Z,62850              ; ...then skip ahead to 62850
  POP HL                  ; Store HL (pointer to x-coordinate in a character's
                          ; current position data)
  LD (HL),A               ; Store updated x-coordinate
  RET                     ; Return
  POP HL                  ; Store HL (pointer to x-coordinate in a character's
                          ; current position data)
  POP AF                  ; Remove return address from top of stack...
  RET                     ; ...and return to routine that called the routine
                          ; that called this one

; Set Position of Character Whose Turn it is to Move to His/Her Initial
; Position
;
; Used by the routine at 62622.
  LD A,(23455)            ; Load BC with three times index of character whose
                          ; turn it is to be updated...
  LD C,A                  ; ...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD B,0                  ; ...
  LD HL,24898             ; Load HL with start address of Table of Characters'
                          ; Current Positions...
  ADD HL,BC               ; ...and add BC as offset
  LD DE,48661             ; Load DE with start address of Table of Characters'
                          ; Initial Positions
  EX DE,HL                ; Swap DE (now points to current position data of
                          ; character of interest) and HL (now points to Table
                          ; of Characters' Initial Positions)
  ADD HL,BC               ; Add BC to HL as offset (HL now points to
                          ; character's initial position)
  LD BC,3                 ; Set character's current position to same as initial
                          ; position...
  LDIR                    ; ...
  RET                     ; Return

; End Game Due to Running Out of Time
;
; Used by the routine at 62330.
  LD HL,51324             ; Point HL at "YOU RAN OUT OF TIME" text...
  LD (62889),HL           ; ...and store as operand in instruction at 62888
  POP AF                  ; Remove return address (call to this routine) from
                          ; top of stack
  CALL 62987              ; Restore all registers from the stack
  POP AF                  ; Remove return address (call to interrupt routine)
                          ; from top of stack
; The operand of the instruction at 62888 represents the address of the Game
; Over text to use. This is modified by the instruction at 62880.
  LD HL,0                 ; Restore address of "YOU RAN OUT OF TIME" text to HL
  EI                      ; Enable interrupts
  JP 64582                ; Jump to "Game over" window routine and return to
                          ; Control Selection Menu

; Characters' Rates of Stat Regeneration
;
; Stats are in order:
  DEFB 1,1,1,1,5,5,5,5    ; Off-White Knight      ( 1,  1,  1,  1,  5, 5,  5,
                          ; 5)
  DEFB 255,253,253,255,10,8,15,10 ; Aramis le Peux        (-1, -3, -3, -1, 10,
                                  ; 8, 15, 10)
  DEFB 253,254,252,250,8,4,4,8 ; Robin of Shylock      (-3, -2, -4, -6,  8, 4,
                               ; 4,  8)
  DEFB 253,254,252,252,8,4,4,3 ; Reggie the Rat        (-3, -2, -4, -4,  8, 4,
                               ; 4,  3)
  DEFB 253,253,255,255,6,3,4,1 ; Rachel of Amazonia    (-3, -3, -1, -1,  6, 3,
                               ; 4,  1)
  DEFB 253,254,252,250,8,4,4,8 ; Barker the Ent        (-3, -2, -4, -6,  8, 4,
                               ; 4,  8)
  DEFB 253,254,252,252,8,4,4,3 ; Organon the Guard     (-3, -2, -4, -4,  8, 4,
                               ; 4,  3)
  DEFB 253,254,252,252,8,4,4,3 ; Grunter the Bearwoolf (-3, -2, -4, -4,  8, 4,
                               ; 4,  3)

; Store all Registers on the Stack
;
; Used by the routines at 45809 and 62178.
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
; Used by the routines at 45809, 62178 and 62877.
  POP HL                  ; Restore registers HL, IY & IX (HL has address of
                          ; call to this routine, i.e. 62987)...
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
  EX (SP),HL              ; Put HL (address of call to 62987) back on stack in
                          ; preparation for RET and take off original value of
                          ; HL
  RET                     ; Return

; Print Text/Graphic Character in A and Advance Bitmap Virtual Text Cursor
;
; Used by the routines at 40729, 40752, 47326, 48389, 63302, 63691 and 63740.
; Input:  A  Index of character to print
  PUSH HL                 ; Store HL
; The operand of the instruction at 63006 represents the base address of the
; character set. This is modified by the instructions between 63478 and 63482.
  LD DE,27480             ; Point to (effective) start Character Set graphics
  ADD A,A                 ; Load index of character into HL and multiply by
                          ; 8...
  LD H,0                  ; ...
  LD L,A                  ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  ADD HL,DE               ; ...and add to DE to obtain memory location of
                          ; required character in the character set
  EX DE,HL                ; Swap values (DE now holds memory location of
                          ; character to print and HL holds 27480)
; The operand of the instruction at 63017 represents the address of the Bitmap
; Virtual Text Cursor. This is modified by the instructions at 38804, 38816,
; 38832, 39425, 39634, 40501, 41358, 41374, 41395, 46481, 47322, 47409, 47836,
; 48529, 63259, 63363, 63625, 63642 and 64797.
  LD HL,0                 ; Load (video) memory location to start printing
                          ; character into HL
  LD B,8                  ; For eight bytes (i.e. full height of character)...
  LD A,(DE)               ; ...get graphic data from character set...
  LD (HL),A               ; ...and load into video memory...
  INC DE                  ; ...move to next pixel row in character set...
  INC H                   ; ...and move to next pixel row in video memory
  DJNZ 63022              ; Loop back to 63022
  CALL 63286              ; Update Attribute Virtual Text Cursor based upon
                          ; current Bitmap Virtual Text Cursor
  LD A,(23695)            ; Obtain attribute data stored previously (71 =
                          ; bright white)
  LD (HL),A               ; Apply attribute to character just printed
  CALL 63247              ; Advance Bitmap Virtual Text Cursor right by one
                          ; character
  POP HL                  ; Restore HL
  RET                     ; Return

; Draw Axe to Screen
;
; Used by the routines at 46560 and 46784. Input:  A  Frame Number (32, 116,
; 117, 118 or 119)
  PUSH HL                 ; Store HL
  LD DE,28248             ; Point DE at 28248
  ADD A,A                 ; Double A...
  LD H,0                  ; ...Load into HL...
  LD L,A                  ; ...
  ADD HL,HL               ; ...Double again...
  ADD HL,HL               ; ...and again to get 8 times original A value...
  ADD HL,DE               ; ...and add DE to this to point to one of the five
                          ; sets of axe frame graphic data (28504, 29176,
                          ; 29184, 29192 or 29200)
  PUSH HL                 ; Copy HL into IX...
  POP IX                  ; ...
  LD BC,(23677)           ; Load system variable COORDS into BC (holds x- and
                          ; y-coordinates of axe)
  CALL 63134              ; Load HL with Display File address for coordinates
                          ; in BC
  LD C,A                  ; Load pixel-within-byte "address" into C
  LD B,8                  ; Load 8 into B (as axe graphic data comprises 8
                          ; pixel rows)
  LD D,(IX+0)             ; Load a byte of axe graphic data into D
  LD A,C                  ; Load pixel-within-byte "address" into A
  OR A                    ; Check if we're dealing with pixel zero...
  JR Z,63128              ; ...and if so, skip ahead to 63128
  XOR A                   ; Set A to zero
  LD E,A                  ; Copy into E
  PUSH BC                 ; Store BC (B=graphic row counter,
                          ; C=pixel-within-byte "address")
  LD B,C                  ; Copy pixel-within-byte "address" into B
  SRL D                   ; Shift graphic data right one bit (rightmost bit
                          ; goes into carry flag)
  RRA                     ; Rotate carry flag into leftmost bit of A, shifting
                          ; other bits right
  SCF                     ; Set carry flag
  RR E                    ; Rotate (set) carry flag into leftmost bit of E,
                          ; shifting other bits right, and resetting carry flag
  DJNZ 63075              ; Repeat loop to shift graphic right another pixel if
                          ; necessary
  EX AF,AF'               ; Switch AF registers
  LD A,E                  ; Load A with value in E (set bits represent number
                          ; of pixels by which axe graphic has been shifted
                          ; right)
  POP BC                  ; Restore (B=graphic row counter, C=pixel-within-byte
                          ; "address")
  LD A,D                  ; Load left part of axe graphic data into A
  LD E,(HL)               ; Load E with graphic data currently at axe's
                          ; position on screen
  XOR E                   ; Blend axe graphic data with what is already on
                          ; screen at its position to make things look more
                          ; natural...
  LD (HL),A               ; ...and write new graphic data back to screen
  INC HL                  ; Advance right one byte in Display File
  EX AF,AF'               ; Switch registers to restore right part of axe
                          ; graphic data to A
  LD E,(HL)               ; Load E with graphic data currently at axe's
                          ; position on screen
  XOR E                   ; Blend axe graphic data with what is already on
                          ; screen at its position to make things look more
                          ; natural...
  LD (HL),A               ; ...and write new graphic data back to screen
  DEC HL                  ; Move left one byte in Display File
  INC IX                  ; Advance IX to next row of axe graphic data
  INC H                   ; Increase H by 1 (i.e. advance HL by 256)
  LD A,H                  ; If at least one of the three rightmost bits of H
                          ; are set (i.e. we haven't crossed over from one
                          ; third of the display to the next third)...
  AND 7                   ; ...
  JR NZ,63124             ; ...then skip ahead to 63124 (as HL now points to
                          ; next pixel row down)...
  LD A,H                  ; ...else we must have been in the bottom pixel row
                          ; of a character row, so decrease H by 8 (1 to go
                          ; back up, then 7 pixel rows up to the top of that
                          ; character row)...
  SUB 8                   ; ...
  LD H,A                  ; ...
  LD A,L                  ; Advance L by 32 bytes to move down one character
                          ; row, so now the top of the next character row
                          ; down...
  ADD A,32                ; ...
  LD L,A                  ; ...
  JR NC,63124             ; If L hasn't gone over 256 (i.e. we haven't moved 32
                          ; bytes on from the top pixel row of the bottom
                          ; character row of the third) then skip ahead to
                          ; 63124
  LD A,H                  ; Move down by a third...
  ADD A,8                 ; ...
  LD H,A                  ; ...
  XOR 88                  ; If we have not reached the start of the Attribute
                          ; File...
  JR NZ,63124             ; ...then skip ahead to 63124
  LD H,64                 ; ...else wrap back round to the start of Display
                          ; File again
  DJNZ 63064              ; Decrease B (remaining number of pixel rows to draw)
                          ; and loop back to 63064
  POP HL                  ; Restore HL
  RET                     ; Return
  XOR A                   ; Set A to zero
  EX AF,AF'               ; Switch registers
  XOR A                   ; Set A to zero
  LD E,A                  ; Set E to zero as axe graphic hasn't been shifted
  JR 63086                ; Jump back to 63086

; Load HL with Display File Address for Coordinates in BC
;
; Used by the routine at 63040. Input:  B  y-coordinate of axe in pixels C
; x-coordinate of axe in pixels Output: A  Horizontal pixel offset of axe HL
; Display File address for axe
  LD A,C                  ; Load A with remainder, when dividing x-coordinate
                          ; (pixels) by eight...
  AND 7                   ; ...i.e. "pixel-within-byte" address
  EX AF,AF'               ; Switch AF and AF'
  LD H,0                  ; Load HL with double y-coordinate in pixels...
  LD L,B                  ; ...
  ADD HL,HL               ; ...
  LD DE,65140             ; Point DE at Table of Display File Addresses of
                          ; Start of Each Pixel Row...
  ADD HL,DE               ; ...and add HL as offset in HL
  LD A,(HL)               ; Load HL with Display File address of start of pixel
                          ; row at y-coordinate...
  INC HL                  ; ...
  LD H,(HL)               ; ...
  LD L,A                  ; ...
  LD A,C                  ; Load A with x-coordinate in pixels...
  RRCA                    ; ...and divide by eight to give x-coordinate in
                          ; characters...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  LD C,A                  ; Load BC with x-coordinate in characters...
  LD B,0                  ; ...
  ADD HL,BC               ; ...and add to HL as offset in HL
  EX AF,AF'               ; Switch AF and AF' (A now contains
                          ; "pixel-within-byte" address)
  RET                     ; Return

; Draw a UDG, with Index A, from 2x2 Blocks' UDG Data at Location of Bitmap
; Virtual Text Cursor
;
; Used by the routine at 41271. Input:  A  Block UDG index (in graphic data
; starting at 28504)
  PUSH HL                 ; Store HL
  LD DE,28504             ; Load DE with start address of UDG data for 2x2
                          ; blocks
  ADD A,A                 ; Load HL with eight times UDG index...
  LD H,0                  ; ...
  LD L,A                  ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  ADD HL,DE               ; Add start address of UDG data for 2x2 blocks to HL
                          ; as offset in HL
  EX DE,HL                ; Swap DE (now address of graphic data for required
                          ; UDG) and HL (now start address of UDG data for 2x2
                          ; blocks)
  LD HL,(63018)           ; Load HL with (Display File address of) Bitmap
                          ; Virtual Text Cursor
  LD B,8                  ; Print UDG data at address in DE to Display File
                          ; address in HL...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC DE                  ; ...
  INC H                   ; ...
  DJNZ 63179              ; ...
  LD HL,(63018)           ; Load HL with (Display File address of) Bitmap
                          ; Virtual Text Cursor
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
  LD A,(23695)            ; Load A with value in system variable ATTR T...
  LD (HL),A               ; ...and apply this to the Attribute File address in
                          ; HL
  POP HL                  ; Restore HL
  RET                     ; Return

; Move Virtual Cursor (Bitmap) to Display File for Coordinates x=C, y=B and
; Load Address into HL
;
; Used by the routines at 39216, 39366, 40832, 41504, 41545, 47193, 47326,
; 61297, 61336, 61418, 61521, 63691 and 63740. Input:  B  y-coordinate
; (characters) C  x-coordinate (characters) Output: HL Virtual Cursor (Bitmap)
; Display File address
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
  JR 63259                ; Store the updated address of Bitmap Virtual Text
                          ; Cursor and return

; Point HL at Terrain Interaction Data, or Attribute File address for Character
; Coordinates x=C, y=B
;
; The operand in the instruction at 63228 is usually 88 (corresponding to a
; Attribute File lookup). It is only changed to 93 (corresponding to a Terrain
; Interaction Data lookup) by the routine at 63233, and is returned to a value
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
; The operand of the instruction at 63228 determines whether we are dealing
; with the Attribute File (88), or the current Terrain Interaction Data (93).
; It is modified by the instructions at 63235 and 63243.
  LD D,88                 ; Point DE at start of data, plus x-coordinate offset
                          ; in C...
  LD E,C                  ; ...
  ADD HL,DE               ; Add 32 times y-coordinate as offset in HL
  RET                     ; Return

; Point HL at Terrain Interaction Data for Character Coordinates x=C, y=B
;
; Used by the routines at 38434, 38585, 38724, 39216, 39366, 41173 and 48191.
; Input:  B  y-coordinate (chars) C  x-coordinate (chars) Output: HL  points to
; entry in Terrain Interaction Data
  LD A,93                 ; Set most significant byte in Terrain Interaction
                          ; Data / Attribute File lookup routine to 93 (Terrain
                          ; Interaction Table)...
  LD (63229),A            ; ...
  CALL 63219              ; Point HL at Terrain Interaction Data for Character
                          ; Coordinates x=C, y=B
  LD A,88                 ; Set most significant byte in Terrain Interaction
                          ; Data / Attribute File lookup routine to 88,
                          ; (Attribute File)...
  LD (63229),A            ; ...
  RET                     ; Return

; Advance Bitmap Virtual Text Cursor right by one character
;
; Used by the routines at 41271, 48389 and 63005.
  LD HL,(63018)           ; Load HL with address of Bitmap Virtual Text
                          ; Cursor...
  INC HL                  ; ...and increase (for next character)
  LD A,L                  ; Load LSB of HL into A...
  OR A                    ; ...and check whether it is zero
  JR NZ,63259             ; If it is not zero (i.e. advancing down a character
                          ; row will not take us into a different third of
                          ; bitmap video memory) then skip ahead to 63259
  LD A,H                  ; Add 7 to MSB of video memory address...
  ADD A,7                 ; ...as advancing by one at 63250 took video memory
                          ; pointer back up to 2nd pixel row of the current
                          ; third of the display...
  LD H,A                  ; ...when in fact we need to move to top pixel row of
                          ; the NEXT third of the display (i.e. 7 x 32 x 8 = 7
                          ; x 256 bytes on from this!)
; This entry point is used by the routines at 63203, 63263, 63349 and 63399.
  LD (63018),HL           ; Store the updated address of Bitmap Virtual Text
                          ; Cursor
  RET                     ; Return

; Advance Bitmap Virtual Text Cursor to start of next character row
;
; Used by the routines at 41271, 48389 and 48518.
  LD HL,(63018)           ; Load HL with address of Bitmap Virtual Text Cursor
  LD A,L                  ; Get LSB of video memory address in A
  ADD A,32                ; Add 32 (i.e. move down one character row)
  JP C,63277              ; If we have encountered the bottom of the current
                          ; third of the display, then skip ahead to 63277
  AND 224                 ; Decrease to nearest multiple of 32 (i.e. start of a
                          ; character row)
  LD L,A                  ; Place modified address back into HL
  JR 63259                ; Store at 63018 and return
  AND 224                 ; Decrease to nearest multiple of 32 (i.e. start of a
                          ; character row)
  LD L,A                  ; Place modified address back into L
  LD A,H                  ; Load MSB of video memory address into A
  ADD A,8                 ; Increase by 8 (as we're moving one text row, or
                          ; EIGHT pixel rows down)
  LD H,A                  ; Place modified address back into HL
  JR 63259                ; Store at 63018 and return

; Update Attribute Virtual Text Cursor based upon current Bitmap Virtual Text
; Cursor
;
; Used by the routines at 46902, 48389, 48518 and 63005.
  LD HL,(63018)           ; Load HL with address of Bitmap Virtual Text Cursor
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
  LD (23707),HL           ; Store memory location for later use
  RET                     ; Return

; Draw a Run of Characters (e.g. Edge of Frame of a Window)
;
; Used by the routines at 39393, 47491, 47833 and 63598. Input:  HL  Repeat
; count for printing character (e.g. width of window in characters minus 1)
  LD A,H                  ; Check whether remaining window's width is zero...
  OR L                    ; ...and if it is...
  RET Z                   ; ...then return without doing anything
; The operand of the instruction at 63305 represents the index of a character
; set character to draw. This is modified by the instructions at 39413, 47234,
; 47498, 47844 and 63630.
  LD A,0                  ; Else, load A with the character index
  CALL 63005              ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor
  DEC HL                  ; Decrease remaining width
  JR 63302                ; Loop back to 63302

; Advance HL to Byte After First Zero From Address in HL Onwards
;
; Used by the routine at 42616. Input:  HL  Pointer to search starting point
; Output: HL  Pointer to byte after first zero at or after HL input
  PUSH BC                 ; Store BC
  LD BC,65535             ; Set range to 65535
  XOR A                   ; Load A (value to search for) to zero
  CPIR                    ; Advance HL to byte after first zero found
  POP BC                  ; Restore BC
  RET                     ; Return

; Point HL at Start of B-th Entry in List of Read-Texts of Readable Objects
;
; Used by the routine at 43494.
  LD HL,52878             ; Point HL at start of List of Read-Texts of Readable
                          ; Objects
  JR 63335                ; Advance HL to B-th entry in list of zero-terminated
                          ; strings starting at HL and return

; Point HL at Start of B-th Entry in List of "COMMAND A CHARACTER" Commands at
; 52590
;
; Used by the routine at 43043.
  LD HL,52590             ; Point HL at first of the "COMMAND A CHARACTER"
                          ; commands (i.e. "GO TO SLEEP")
  JR 63335                ; Advance HL to B-th entry in list of zero-terminated
                          ; strings starting at HL and return

; Point HL at B-th Entry in Table of Object Names
;
; Used by the routines at 42638 and 45809. Input:  B  Index of required text
; string HL  (entry via 63335) address of start of a table of zero-terminated
; strings Output: HL  Points to string of index B (input)
  LD HL,56565             ; Point HL at start of Table of Object Names
; This entry point is used by the routines at 39578, 42638, 43874, 45206,
; 45227, 63322 and 63327.
  LD A,B                  ; Load string index into A
  OR A                    ; Return if index is zero...
  RET Z                   ; ...
  PUSH BC                 ; Store BC
  LD BC,65535             ; Load BC (loop counter) with 65535
  XOR A                   ; Set A to zero
  CPIR                    ; Advance HL to start of next zero-terminated string
  POP BC                  ; Store BC
  DJNZ 63338              ; Decrease B (remaining number of object names to
                          ; skip over) and loop back to 63338
  RET                     ; Return

; Print Text at DE (Command Summary) in Command Summary Window at Top of Screen
;
; Used by the routines at 41578, 41924, 42257, 42638, 43043, 43636, 43874,
; 44100, 44337, 45206, 45781 and 63388. Input:  DE  Points to command text
  PUSH DE                 ; Store DE (Pointer to command text to print)
  LD A,70                 ; Set ATTR T system variable to 70 (yellow INK, black
                          ; PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD HL,(63018)           ; Load HL with address of Bitmap Virtual Text Cursor
  EX (SP),HL              ; Swap registers so that HL points to text to be
                          ; printed, and (SP) i.e. PUSHed value) contains
                          ; Display File address to start printing character
  LD DE,(23704)           ; Load DE with new Display File address to print
                          ; character...
  LD (63018),DE           ; ...and update Bitmap Virtual Text Cursor with this
                          ; location
  PUSH HL                 ; Store HL (pointer to text to be printed)
  CALL 63443              ; Swap x- and y-coordinates of current window with
                          ; those of Command Summary Window in temporary
                          ; storage at 23418
  POP HL                  ; Restore HL (pointer to text to be printed)
  CALL 46902              ; Print text to screen
  CALL 63443              ; Restore x- and y-coordinates of current window from
                          ; temporary storage at 23418
  LD HL,(63018)           ; Load HL with new address in Bitmap Virtual Text
                          ; Cursor (i.e. after text just printed)...
  LD (23704),HL           ; ...and store back at 23704
  POP HL                  ; Restore HL (Display File address to start printing
                          ; character as swapped by instruction at 63358)
  JP 63259                ; Store the updated address of Bitmap Virtual Text
                          ; Cursor and return

; Print Command Summary Text (Text at DE, e.g. "COMMAND ") in Command Summary
; Window
;
; Used by the routines at 45809 and 45963. Input:  DE  Pointer to text to print
  LD A,D                  ; If DE is zero (i.e. no Command Summary Text)...
  OR E                    ; ...
  RET Z                   ; ...then return
  PUSH DE                 ; Store DE (Command Summary Text Pointer)
  CALL 63399              ; Print or update Command Summary Window at top of
                          ; screen
  POP DE                  ; Restore DE (Command Summary Text Pointer)...
  JP 63349                ; ...and print in Command Summary Window at top of
                          ; screen and return

; Print or Update Command Summary Window at Top of Screen
;
; Used by the routines at 41578, 41924, 42638, 43874, 44100, 44337, 45206 and
; 63388. The operand of the instruction at 63399 represents the index of the
; window being drawn. This is modified by the instructions at 47204 and 63437.
  LD A,0                  ; Load index of window being drawn into A
  PUSH AF                 ; Store AF (A = index of Current Window)
  LD HL,(63018)           ; Load HL with address of Bitmap Virtual Text
                          ; Cursor...
  PUSH HL                 ; ...and store
  CALL 63443              ; Store x- and y-coordinates of current window
                          ; temporarily at 23418
  HALT                    ; Wait for interrupt
  LD A,1                  ; Draw Window 1 (Command Summary Window at top of
                          ; screen)...
  CALL 47193              ; ...
  LD HL,50802             ; Point HL to ("COMMAND") text...
  CALL 46902              ; ...and print to screen
  LD HL,(63018)           ; Load HL with address of Bitmap Virtual Text Cursor
  PUSH HL                 ; Store HL (address of Bitmap Virtual Text Cursor)
  CALL 38829              ; Print "STORMBRINGER" text at top of Command Summary
                          ; Window
  POP HL                  ; Restore HL (address of Bitmap Virtual Text Cursor)
  LD (23704),HL           ; Store this location as the location to print text
                          ; to in the Command Summary Window
  CALL 63443              ; Restore x- and y-coordinates of current window from
                          ; 23418
  POP HL                  ; Restore HL (address of Bitmap Virtual Text Cursor)
  POP AF                  ; Restore AF (A = index of Current Window)
  LD (63400),A            ; Restore index of Current Window to 63400 (was
                          ; updated to 1 by call at 63412)
  JP 63259                ; Store the updated address of Bitmap Virtual Text
                          ; Cursor and return

; Swap x- and y-coordinates of current window / graphic with values in
; temporary storage (at 23418)
;
; This routine is used when there are two windows being updated (e.g. Command
; Summary Window at top of screen, and "EXAMINE" window). It is used to keep
; track of the dimensions of two windows simultaneously
  LD HL,(23418)           ; Swap x- and y-coordinates of top-left of window /
                          ; graphic currently at 23408 with values in temporary
                          ; store at 23418...
  LD DE,(23408)           ; ...
  LD (23418),DE           ; ...
  LD (23408),HL           ; ...
  LD HL,(23420)           ; Swap x- and y-coordinates of bottom-right of window
                          ; / graphic currently at 23410 with values in
                          ; temporary store at 23420...
  LD DE,(23410)           ; ...
  LD (23420),DE           ; ...
  LD (23410),HL           ; ...
  RET                     ; Return

; Update Character Printing Routine to Use Base Address of Text Character Set
; Graphics
;
; Used by the routines at 39393 and 47326. Input:  HL  (Entry at 63476 only)
; Effective start address of an alternative character set
  PUSH HL                 ; Store HL
  LD HL,27480             ; Load HL with address of (effective) start Character
                          ; Set graphics
; This entry point is used by the routine at 63488.
  PUSH AF                 ; Store AF
  LD A,L                  ; Set operand of instruction at 63006 (character
                          ; printing routine) to address in HL...
  LD (63007),A            ; ...
  LD A,H                  ; ...
  LD (63008),A            ; ...
  POP AF                  ; Restore AF
  POP HL                  ; Restore HL
  RET                     ; Return

; Update Character Printing Routine to Use Base Address of Floor Character Set
; Graphics
;
; Used by the routine at 39393.
  PUSH HL                 ; Store HL (corresponds to POP HL at 63486)
  LD HL,28248             ; Load HL with address of (effective) start Floor
                          ; Character Set graphics
  JR 63476                ; Update character printing routine to this as base
                          ; address of character set graphics and return

; Draw a Graphic with Lookup Index A, Width of 2 and Height of 3 at Character
; Coordinates (C, B)
;
; Used by the routine at 39958. Input:  A  Index of graphic to draw in graphic
; data lookup table at 29272 B y-coordinate (characters) for printing item C
; x-coordinate (characters) for printing item
  LD DE,770               ; Load D with 3 and E with 2
  JR 63507                ; Draw a Graphic with Lookup Index A at Character
                          ; Coordinates (C, B) with width = 2 characters and
                          ; height = 3 characters and return

; Draw a Graphic with Lookup Index A, Width of 2 and Height of 2 at Character
; Coordinates (C, B)
;
; Used by the routines at 46490 and 48191. Input:  A  Index of graphic to draw
; in graphic data lookup table at 29272 B  y-coordinate (characters) for
; printing item C  x-coordinate (characters) for printing item
  LD DE,514               ; Load D and E with 2
  JR 63507                ; Draw a Graphic with Lookup Index A at Character
                          ; Coordinates (C, B) with width = 2 characters and
                          ; height = 2 characters and return

; Draw a Graphic with Lookup Index A at Character Coordinates (C, B)
;
; Used by the routines at 39883 and 42638. Input:  A  Index of graphic to draw
; in graphic data lookup table at 29272 B  y-coordinate (characters) for
; printing item C  x-coordinate (characters) for printing item D  (entry at
; 63507) Graphic height (characters) E  (entry at 63507) Graphic width
; (characters)
  LD DE,1026              ; Set D (height) to 4 and E to 2 (width)
; This entry point is used by the routines at 47193, 63494 and 63499.
  PUSH HL                 ; Store HL
  PUSH DE                 ; Store DE
  PUSH AF                 ; Store AF
  LD A,C                  ; Load x-coordinate to draw item into instruction at
                          ; 63570...
  LD (63571),A            ; ...
  LD A,B                  ; Multiply y-coordinate by 8...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; ...and load into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Double again (so now 16 times y-coordinate, as 8
                          ; pixels in a character block, and two bytes per
                          ; entry in data at 65140)
  LD DE,65140             ; Point DE at Table of Display File Addresses of
                          ; Start of Each Pixel Row
  ADD HL,DE               ; Advance by 16 times y-coordinate to point HL at
                          ; entry for start of item's current pixel row
  PUSH HL                 ; Transfer this value into IX...
  POP IX                  ; ...
  POP AF                  ; Restore A (graphic index of item to draw)...
  LD L,A                  ; ...and load into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Multiply by four (as there are two WORD entries for
                          ; each graphic in the table at 29272)...
  ADD HL,HL               ; ...
  LD BC,29272             ; Point BC at start of Graphics Data Lookup Table at
                          ; 29272...
  ADD HL,BC               ; ...and add offset to point to entry for item of
                          ; interest
  LD E,(HL)               ; Load graphic data address for this graphic into
                          ; DE...
  INC HL                  ; ...
  LD D,(HL)               ; ...
  INC HL                  ; ...
  CALL 64632              ; Load next value in table (address of graphic data
                          ; for this object's mask) into HL
  POP BC                  ; Restore BC (B = height, C = width)
  LD A,B                  ; Load height into A...
  ADD A,A                 ; ...and multiply by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  EX AF,AF'               ; Swap A and A'
  LD B,C                  ; Copy graphic width into B...
  LD A,C                  ; ...and A'...
  LD (63574),A            ; ...and modify instruction at 63573 with this value
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
; The operand of the instruction at 63570 represents the x-coordinate at which
; to draw the item. This is modified by the instruction at 63511.
  LD C,0                  ; Set C' to x-coordinate of item
  ADD HL,BC               ; Add x-coordinate as offset to address of start of
                          ; pixel row in HL' (HL' now points at Display File
                          ; address to begin drawing)
; The operand of the instruction at 63573 represents the width of the graphic
; to draw. This is modified by the instruction at 63554.
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
  DJNZ 63575              ; Loop back to 63575 for next column of object
                          ; graphic data
  INC IX                  ; Advance IX by two bytes to next address in Table of
                          ; Addresses of Starts of Pixel Rows...
  INC IX                  ; ...
  POP BC                  ; Restore BC (C = remaining number of pixel rows to
                          ; draw)
  DEC C                   ; Decrease remaining number pixel rows to draw
  JR NZ,63561             ; If not zero (i.e. still need to draw at least one
                          ; more pixel row of graphic data) then loop back to
                          ; 63561
  POP HL                  ; Restore HL
  RET                     ; Return

; Update Currently Selected Input Device
;
; Used by the routines at 37689 and 37909. Input:  A  Index of currently
; selected input device D  Index of previously selected input device (valid for
; call at 37747 only)
  LD B,A                  ; Load B with index of currently selected input
                          ; device...
  CP 1                    ; ...and if this is 1 (Kempston Joystick)...
  CALL Z,63657            ; ...then if Kempston Joystick is not present, revert
                          ; to previously selected input device
  LD A,B                  ; Load A with currently selected input device
  LD HL,62054             ; Point HL at start of Table of Start Addresses of
                          ; Input Device Reading Routines
  CALL 64627              ; Load HL with A-th entry from table (i.e. the
                          ; routine for the currently selected input device)...
  LD (64040),HL           ; ...and update jump (at 64039) in input reading
                          ; routine to this address
  LD A,(63653)            ; Load index of currently selected input device into
                          ; A
  ADD A,196               ; Add 196 (index in Common Words Table for first
                          ; "control method" string)
  LD (63655),A            ; Store as text code at 63654
  LD HL,18444             ; Load HL with Display File address corresponding to
                          ; (12, 8) (characters)...
  LD (63018),HL           ; ...and move Bitmap Virtual Text Cursor here
  LD A,32                 ; Set character to be repeated to 32 (SPACE)...
  LD (63306),A            ; ...
  LD HL,20                ; Load HL with 20 as we need to draw across 20
                          ; character blocks
  CALL 63302              ; Draw run of 20 SPACE characters (i.e. clear old
                          ; "CONTROL : ..." text)
  LD HL,18434             ; Load HL with Display File address corresponding to
                          ; (2, 8) (characters)...
  LD (63018),HL           ; ...and move Bitmap Virtual Text Cursor here
  LD HL,63654             ; Point HL at Current Control Text (Control Selection
                          ; Screen)
  CALL 46873              ; Print text at location HL to screen using full
                          ; screen width
  XOR A                   ; Set A to zero
  RET                     ; Return

; Index of Currently Selected Input Device
  DEFB 0

; Current Control Text (on Control Selection Screen)
  DEFM 195,196,0          ; CONTROL : KEYBOARD

; If Kempston Joystick is Not Present then Revert to Previously Selected Input
; Device
;
; Used by the routine at 63598. Input:  B  Index of currently selected input
; device D  Index of previously selected input device Output: B  Index of
; currently selected input device if Kempston Joystick is present, otherwise
; index of previously selected input device
  IN A,(31)               ; Load A with current Kempston Joystick state
  AND 224                 ; If bits 5, 6 and 7 (i.e. unused bits) are reset,
                          ; indicating presence of Kempston Joystick...
  RET Z                   ; ...then return
  LD A,D                  ; Load A with index of previously selected input
                          ; device...
  LD (63653),A            ; ...set as currently selected input device...
  LD B,A                  ; ...and load into B
  RET                     ; Return

; If Keypress Was Enqueued then Return Index of Last Key Pressed, Else Wait for
; Keypress and Return Index
;
; Used by the routine at 63740. Output: A  Index of key pressed The operand of
; the instruction at 63668 represents an enqueued keypress. This is modified by
; the instructions at 63686 and 63749.
  LD A,0                  ; Load A with enqueued key index...
  OR A                    ; ...and if not zero...
  JR NZ,63677             ; ...then skip ahead to 63677
  XOR A                   ; Clear last pressed key...
  LD (23560),A            ; ...
  HALT                    ; Wait for interrupt
  LD A,(23560)            ; Load last pressed key into A...
  OR A                    ; ...and if this is zero (i.e. no key pressed)...
  JR Z,63677              ; ...then loop back to 63677
  EX AF,AF'               ; Switch AF and AF'
  XOR A                   ; Set enqueued key index to zero...
  LD (63669),A            ; ...
  EX AF,AF'               ; Switch AF and AF'
  RET                     ; Return

; Print Current Control Keys to Screen
;
; Used by the routines at 37951 and 63740.
  LD HL,63986             ; Point HL at list of current keyboard control
                          ; characters
  LD BC,3589              ; Print LEFT key at (5, 14)...
  CALL 63724              ; ...
  LD BC,3602              ; Print RIGHT key at (18, 14)...
  CALL 63724              ; ...
  LD BC,4101              ; Print JUMP/UP key at (5, 16)...
  CALL 63724              ; ...
  LD BC,4114              ; Print DOWN key at (18, 16)...
  CALL 63724              ; ...
  LD BC,4613              ; Print MENU (FIRE) key at (5, 18)...
  JP 63724                ; ... (see trivia)
  PUSH HL                 ; Store HL (current position in list of current
                          ; keyboard control characters)
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  POP HL                  ; Restore HL (current position in Current Keyboard
                          ; Controls)
  LD A,(HL)               ; Load current keyboard control character into A
  INC HL                  ; Advance HL by one byte to next keyboard control
  CP 32                   ; If current keyboard control character is not 32
                          ; (SPACE)...
  JR NZ,63737             ; ...then skip ahead to 63737
  LD A,127                ; Load A with 127 (index of COPYRIGHT graphic in
                          ; character set)
  JP 63005                ; Print text/graphic character in A and advance
                          ; Bitmap Virtual Text Cursor and return

; Redefine Keyboard Controls
;
; Used by the routine at 37764.
  CALL 63691              ; Print current control keys to Screen
  CALL 63668              ; If keypress was enqueued then load A with index of
                          ; last key pressed, otherwise wait for keypress and
                          ; load A with index
  CP 13                   ; If key pressed was 13 (ENTER)...
  RET Z                   ; ...then return
  LD (63669),A            ; Set enqueued key index to index of key pressed
  LD B,5                  ; Load B with 5 (as there are five controls)
  LD HL,63986             ; Point HL at start of list of current keyboard
                          ; control characters
  LD (HL),0               ; Set current keyboard control character to zero
  INC HL                  ; Advance to next keyboard control character
  DJNZ 63757              ; Decrease B (remaining number of keyboard control
                          ; characters to clear) and loop back to 63757 if not
                          ; zero
  LD BC,1280              ; Load B with 5 and C with zero
  LD HL,63986             ; Point HL at start of list of current keyboard
                          ; control characters
  PUSH BC                 ; Store BC (B = remaining number of controls to
                          ; define, C = number of controls defined)
  PUSH HL                 ; Store HL (current position in List of Keyboard
                          ; Control Characters)
  LD A,C                  ; Load number of controls defined (0, 1, 2, 3 or 4)
                          ; into A
  AND 6                   ; Reset all but bits 1 and 2 (to give 0, 2 or 4)
  ADD A,14                ; Add 14 (to give 14, 16 or 18, the y-coordinates in
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
  CALL 63219              ; Load HL with Attribute File address for coordinates
                          ; (C, B)...
  LD A,(HL)               ; ...and set the FLASH Flag for this address...
  OR 128                  ; ...
  LD (HL),A               ; ...
  POP BC                  ; Restore BC (coordinates in characters of current
                          ; control being defined)
  PUSH BC                 ; Store BC (coordinates in characters of current
                          ; control being defined)
  CALL 63203              ; Move Virtual Cursor (Bitmap) to Display File
                          ; address for Coordinates x=C, y=B and load address
                          ; into HL
  CALL 63668              ; If keypress was enqueued then load A with index of
                          ; last key pressed, otherwise wait for keypress and
                          ; load A with index
  CP 32                   ; If key pressed was SPACE...
  JP Z,63837              ; ...then skip ahead to 63837
  CP 48                   ; If index of key pressed is less than 48 (i.e. below
                          ; "0")...
  JP M,63801              ; ...then jump back to 63801 (i.e. wait for next key
                          ; press and try again)
  CP 91                   ; If index of key pressed is 91 or higher (i.e. above
                          ; "Z")...
  JP P,63801              ; ...then jump back to 63801 (i.e. wait for next key
                          ; press and try again)
  CP 58                   ; If index of key pressed is less than 58 (i.e. "9"
                          ; or below)...
  JP M,63837              ; ...then skip ahead to 63837
  CP 65                   ; If index of key pressed is 65 or higher (i.e. "A"
                          ; or above)...
  JP P,63837              ; ...then skip ahead to 63837
  JP 63801                ; Jump back to 63801 (i.e. wait for next key press
                          ; and try again)
  CALL 63969              ; Set Zero Flag if key pressed is already assigned to
                          ; a control, otherwise reset
  JP Z,63801              ; If key pressed is already assigned then jump back
                          ; to 63801 (i.e. wait for next key press and try
                          ; again)
  LD (23711),A            ; Store pressed key index at 23711
  CP 32                   ; If key was not SPACE...
  JR NZ,63852             ; ...then skip ahead to 63852
  LD A,127                ; Load A with 127 (index in character set of
                          ; COPYRIGHT UDG at 28496)
  CALL 63005              ; Print text character in A and advance Bitmap
                          ; Virtual Text Cursor
  POP BC                  ; Restore BC (coordinates in characters of current
                          ; control being defined)
  CALL 63219              ; Load HL with Attribute File address for coordinates
                          ; (C, B)...
  LD A,(HL)               ; ...and reset the FLASH Flag for this address...
  AND 127                 ; ...
  LD (HL),A               ; ...
  POP HL                  ; Restore HL (current position in List of Keyboard
                          ; Control Characters)
  LD A,(23711)            ; Load A with index of previously defined key...
  LD (HL),A               ; ...and store in List of Keyboard Control Characters
  INC HL                  ; Advance HL to next entry in List of Keyboard
                          ; Control Characters
  POP BC                  ; Restore BC (B = remaining number of controls to
                          ; define, C = number of controls defined)
  INC C                   ; Increase C (number of controls defined)
  DJNZ 63768              ; Decrease B (remaining number of controls to define)
                          ; and loop back to 63768 if not zero
  LD B,5                  ; Load B with 5 (as each keyboard half-row holds five
                          ; keys)
  LD HL,64045             ; Load HL with address of operand of instruction at
                          ; 64044 (MSB of "input address" for keyboard half-row
                          ; reading for LEFT)...
  LD (23711),HL           ; ...and store at 23711
  LD HL,63986             ; Point HL at start of list of current keyboard
                          ; control characters
  PUSH BC                 ; Store BC (B = remaining number of control keys to
                          ; check)
  PUSH HL                 ; Store HL (pointer to current position in list of
                          ; current keyboard control characters)
  LD IX,63994             ; Point IX at Lists of Characters on Each Keyboard
                          ; Half-Row
  LD A,(HL)               ; Load A with current keyboard control character
                          ; index
  LD C,0                  ; Set C (index in list of half-rows) to zero
  CP (IX+0)               ; If current keyboard control character index is the
                          ; same as the current character in keyboard half-row
                          ; groups...
  JR Z,63903              ; ...then skip ahead to 63903
  INC C                   ; Increase C (index in list of half-rows)
  INC IX                  ; Advance to next entry in list of half-rows
  JR 63893                ; Loop back to 63893
  LD A,C                  ; Load A with index of current control key in list of
                          ; half-rows
; At this point we know the index of the current key in the list of half-rows.
; We now need to identify which half row it belongs to.
  LD B,0                  ; Set B (keyboard half-row index) to zero
  SUB 5                   ; If index of key in current half-row is less than 5
                          ; (i.e. key is in the current half-row)...
  JP M,63914              ; ...then skip ahead to 63914
  INC B                   ; Increase B (keyboard half-row index)
  JR 63906                ; Loop back to 63906
; The MSB in the "input address" for the various keyboard half-rows obeys the
; progression (254, 253, 251, 247, 239, 223, 191, 127).
  LD A,B                  ; Load A with index of keyboard half-row containing
                          ; current key
  PUSH BC                 ; Store BC (B = index of keyboard half-row, C = index
                          ; of key in list of half-rows)
  INC B                   ; Increase B
  LD HL,128               ; Load HL with 128
  ADD HL,HL               ; Double value in HL
  DJNZ 63920              ; Decrease B (index of keyboard half-row) and loop
                          ; back to 63920 if not zero
; HL now contains the value (128 * 2^n) where n is the (1-based) index of the
; relevant half-row. H contains (2^m), where m is the (zero-based) index of the
; relevant half-row.
  LD A,255                ; Load A with 255
  SUB H                   ; Subtract H (2^m) to give MSB of input address for
                          ; relevant half-row
  LD HL,(23711)           ; Load HL with address of operand of instruction to
                          ; modify (64044)...
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
                          ; at 64048...
  INC HL                  ; ...
  INC HL                  ; ...
  INC HL                  ; ...
  LD (23711),HL           ; ...and store at 23711
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
  LD HL,(23711)           ; Load HL with address of operand / opcode for "BIT
                          ; n,A" instruction...
  LD (HL),A               ; ...and set "n" accordingly
  LD BC,5                 ; Advance HL by five bytes to operand of next "LD
                          ; B,x" instruction (i.e. MSB of "input address" for
                          ; next control)...
  ADD HL,BC               ; ...
  LD (23711),HL           ; ...and store at 23711
  POP HL                  ; Restore HL (pointer to current position in list of
                          ; current keyboard control characters, PUSHed at
                          ; 63885)
  INC HL                  ; Advance HL to next keyboard control character
  POP BC                  ; Store BC (B = remaining number of control keys to
                          ; check, PUSHed at 63884)
  DJNZ 63884              ; Decrease B (remaining number of control keys to
                          ; check) and loop back to 63884 for next control key
                          ; if not zero
  JP 64230                ; Wait for interrupt then display "PRESS FIRE TO
                          ; CONTINUE" Window and wait for Fire to be pressed
                          ; and return

; Set Zero Flag if Key Pressed is Already Assigned to a Control, Otherwise
; Reset
;
; Used by the routine at 63740. Input:  A  Index of key pressed Output: F  Zero
; Flag set if pressed key is already assigned, otherwise reset
  PUSH BC                 ; Store BC
  PUSH HL                 ; Store HL
  LD HL,63986             ; Point HL at start of list of current keyboard
                          ; control characters
  LD B,5                  ; Load B with 5 (as there are five controls to
                          ; process)
  CP (HL)                 ; If key pressed is the same as current control key
                          ; index...
  JR Z,63983              ; ...then skip ahead to 63983
  INC HL                  ; Advance HL to next entry in list of current
                          ; keyboard control characters
  DJNZ 63976              ; Decrease B (remaining number of control characters
                          ; to process) and loop back to 63976 if not zero
  OR A                    ; Reset Zero Flag
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
; Used by the routines at 38205, 47502, 47592, 64230 and 64836. Output: A
; Stored keypress (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD HL,23487             ; Point HL at input control flags and reset all...
  LD (HL),0               ; ...
; The operand of the instruction at 64039 represents the start address of the
; input reading routine for the currently selected input device. This is
; modified by the instruction at 63611.
  JP 64042                ; Jump to appropriate keyboard / joystick reading
                          ; routine

; Capture Keyboard Input
;
; Used by the routine at 64034. Output: A  Stored keypress (bits: 0=LEFT,
; 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD C,254                ; Load C with 254 (as all keyboard half-row "input
                          ; addresses" have C = 254)
; The operand of the instruction at 64044 represents the MSB of the "input
; address" to use in reading the keyboard for the currently defined LEFT key.
; It is modified by the routine at 63740.
  LD B,127                ; Load B with MSB of "input address"
  IN A,(C)                ; Read keyboard
; The operand of the instruction at 64048 represents the index of the bit to
; use in reading the keyboard. It is modified by the routine at 63740.
  BIT 3,A                 ; "N" key pressed so...
  CALL Z,64192            ; ...store a LEFT input from control device
  LD B,127                ; Load B with MSB of "input address"
  IN A,(C)                ; Read keyboard
  BIT 2,A                 ; "M" key pressed so...
  CALL Z,64195            ; ...store a RIGHT input from control device
  LD B,253                ; IN 65022 reads the half row A to G...
  IN A,(C)                ; Read keyboard
  BIT 0,A                 ; "A" key pressed so...
  CALL Z,64198            ; ...store an UP input from control device
  LD B,254                ; IN 65278 reads the half row CAPS SHIFT to V
  IN A,(C)                ; Read keyboard
  BIT 1,A                 ; "Z" key pressed so...
  CALL Z,64201            ; ...store a DOWN input from control device
  LD B,127                ; IN 32766 reads the half row SPACE to B
  IN A,(C)                ; Read keyboard
  BIT 0,A                 ; SPACE bar pressed so...
  CALL Z,64204            ; ...store a FIRE input from control device
  LD A,(HL)               ; Load stored input into A
  RET                     ; Return

; Capture Kempston Joystick Input Output: A  Stored keypress (bits: 0=LEFT,
; 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD C,31                 ; Load 31 (Kempston port number) into A
  IN A,(C)                ; Read byte from port 31 (i.e. read state of
                          ; joystick)
  BIT 0,A                 ; If joystick moved right...
  CALL NZ,64195           ; ...store a RIGHT input from control device
  BIT 1,A                 ; If joystick moved left...
  CALL NZ,64192           ; ...store a LEFT input from control device
  BIT 2,A                 ; If joystick moved down...
  CALL NZ,64201           ; ...store a DOWN input from control device
  BIT 3,A                 ; If joystick moved up...
  CALL NZ,64198           ; ...store an UP input from control device
  BIT 4,A                 ; If fire button pressed...
  CALL NZ,64204           ; ...store a FIRE input from control device
  LD A,(HL)               ; Return stored joystick movement in A
  RET                     ; Return

; Capture Cursor Joystick Input Output: A  Stored keypress (bits: 0=LEFT,
; 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD C,254                ; IN 63486 reads the half row 1 to 5
  LD B,247                ; ...
  IN A,(C)                ; Read keyboard/joystick
  BIT 4,A                 ; If joystick moved left ("5" key pressed)...
  CALL Z,64192            ; ...store a LEFT input from control device
  LD B,239                ; IN 61438 reads the half row O to 6
  IN A,(C)                ; Read keyboard/joystick
  BIT 2,A                 ; If joystick moved right ("8" key pressed)...
  CALL Z,64195            ; ...store a RIGHT input from control device
  BIT 4,A                 ; If joystick moved down ("6" key pressed)...
  CALL Z,64201            ; ...store a DOWN input from control device
  BIT 3,A                 ; If joystick moved up ("7" key pressed)...
  CALL Z,64198            ; ...store an UP input from control device
  BIT 0,A                 ; If fire button pressed ("0" key pressed)...
  CALL Z,64204            ; ...store a FIRE input from control device
  LD A,(HL)               ; Return stored joystick movement in A
  RET                     ; Return

; Capture Sinclair Joystick 1 Input Output: A  Stored keypress (bits: 0=LEFT,
; 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD C,254                ; IN 61438 reads the half row O to 6
  LD B,239                ; ...
  IN A,(C)                ; ...
  BIT 4,A                 ; If joystick moved left ("6" key pressed)...
  CALL Z,64192            ; ...store a LEFT input from control device
  BIT 3,A                 ; If joystick moved right ("7" key pressed)...
  CALL Z,64195            ; ...store a RIGHT input from control device
  BIT 2,A                 ; If joystick moved down ("8" key pressed)...
  CALL Z,64201            ; ...store a DOWN input from control device
  BIT 1,A                 ; If joystick moved down ("9" key pressed)...
  CALL Z,64198            ; ...store an UP input from control device
  BIT 0,A                 ; If fire button pressed ("0" key pressed)...
  CALL Z,64204            ; ...store a FIRE input from control device
  LD A,(HL)               ; Return stored joystick movement in A
  RET                     ; Return

; Store a LEFT Input from Control Device
;
; Used by the routines at 64042, 64091, 64122 and 64159. Input:  HL  Pointer to
; Input Control Flags (23487)
  SET 0,(HL)              ; Set Left Pressed Flag
  RET                     ; Return

; Store a RIGHT Input from Control Device
;
; Used by the routines at 64042, 64091, 64122 and 64159. Input:  HL  Pointer to
; Input Control Flags (23487)
  SET 1,(HL)              ; Set Right Pressed Flag
  RET                     ; Return

; Store an UP Input from Control Device
;
; Used by the routines at 64042, 64091, 64122 and 64159. Input:  HL  Pointer to
; Input Control Flags (23487)
  SET 2,(HL)              ; Set Up Pressed Flag
  RET                     ; Return

; Store a DOWN Input from Control Device
;
; Used by the routines at 64042, 64091, 64122 and 64159. Input:  HL  Pointer to
; Input Control Flags (23487)
  SET 3,(HL)              ; Set Down Pressed Flag
  RET                     ; Return

; Store a FIRE Input from Control Device
;
; Used by the routines at 64042, 64091, 64122 and 64159. Input:  HL  Pointer to
; Input Control Flags (23487)
  SET 4,(HL)              ; Set Fire Pressed Flag
  RET                     ; Return

; Display Execute / Reject Command Window and Return if Execute Chosen, Else
; Exit to Main Game Loop
;
; Used by the routines at 41578, 41748, 41924, 42257, 42638, 43043, 43494,
; 43636, 43874, 44100, 44337, 44635, 44861, 44933, 44990, 45095, 45131 and
; 45149.
  CALL 47946              ; Play Hiss-Type Sound
  LD A,11                 ; Draw "EXECUTE / REJECT COMMAND" Window...
  CALL 47185              ; ...
  LD HL,50731             ; Point to "EXECUTE COMMAND..." text...
  CALL 46902              ; ...and print to screen
  CALL 47502              ; Process keyboard / joystick input on a menu and
                          ; load A with selected item index...
  OR A                    ; ...and if this is 0 (i.e. Execute Command)...
  RET Z                   ; ...then return
  POP HL                  ; Remove return address from stack
  JP 41742                ; Set Magic Knight's available action flags and jump
                          ; to start of Main Game Loop

; Wait for Interrupt then Display "PRESS FIRE TO CONTINUE" Window and wait for
; Fire to be pressed
;
; Used by the routines at 37764, 37880, 37951, 40258, 41578, 44253, 45641,
; 45685, 45723, 45963, 63740, 64317 and 64582.
  HALT                    ; Wait for interrupt
  CALL 47946              ; Play Hiss-Type Sound
  LD A,14                 ; Draw Window 14 ("PRESS FIRE TO CONTINUE")...
  CALL 47193              ; ...
  LD HL,50714             ; Point HL at "PRESS FIRE TO CONTINUE" text string...
  CALL 46902              ; ...and print to screen
  CALL 64034              ; Capture keyboard or joystick input loading result
                          ; into A
  BIT 4,A                 ; If bit 4 (Fire Button Flag) is not set...
  JR Z,64245              ; ...then loop back to 64245
  CALL 47592              ; Wait for Fire Button / Key to be Released
  JP 47897                ; Play upward scale sound and return

; Display "YOUR HANDS ARE FULL" Window (13), wait for Fire to be pressed then
; Jump to Main Game Loop
;
; Used by the routines at 41578, 41924 and 44635. Input:  HL  (entry at 64261
; only) Address of text to print in window
  LD HL,51849             ; Point HL at "YOUR HANDS ARE FULL" text
; This entry point is used by the routines at 41578, 41748, 41924, 42157,
; 42257, 44635, 64265, 64270 and 64275.
  CALL 64317              ; Display Window 13 with text at HL, wait for Fire to
                          ; be pressed then jump to Main Game Loop...

; Data block at 64264
  DEFB 13                 ; ...

; Display "THE [object] IS TOO HEAVY FOR YOU" Window (13), wait for Fire to be
; pressed then Jump to Main Game Loop
;
; Used by the routines at 41578 and 41924.
  LD HL,51864             ; Point HL at "THE [name of current object] IS TOO
                          ; HEAVY FOR YOU" text
  JR 64261                ; Display Window 13 with text at HL, wait for Fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] WANTS TO KEEP THE [Object]" Window (13), wait for Fire
; to be pressed then Jump to Main Game Loop
;
; Used by the routines at 41924, 42091, 42105 and 42247.
  LD HL,52061             ; Point HL at "[Current Character's short name] WANTS
                          ; TO KEEP THE [name of Current Object]" text
  JR 64261                ; Display Window 13 with text at HL, wait for Fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] DOES NOT WANT THE [Object]" Window (13), wait for Fire
; to be pressed then Jump to Main Game Loop
;
; Used by the routines at 42257 and 42429.
  LD HL,52144             ; Point HL at "[Current Character's short name] DOES
                          ; NOT WANT THE [name of Current Object]" text
  JR 64261                ; Display Window 13 with text at HL, wait for Fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] DOES NOT WANT TO BE COMMANDED BY YOU" Window (29), wait
; for Fire to be pressed then Jump to Main Game Loop
;
; Used by the routines at 43318, 43428 and 45423.
  LD HL,52631             ; Point HL at "[Current Character's short name] DOES
                          ; NOT WANT TO BE COMMANDED BY YOU " text
  JR 64313                ; Display Window 29 with text at HL, wait for Fire to
                          ; be pressed then jump to Main Game Loop

; Display "[Character] CANNOT HELP YOU" Window (29), wait for Fire to be
; pressed then Jump to Main Game Loop
;
; Used by the routines at 43250, 45224, 45227, 45256, 45333, 45342, 45345 and
; 45348.
  LD HL,52770             ; Point HL at "[Current Character's short name]
                          ; CANNOT HELP YOU  " text
  JR 64313                ; Display Window 29 with text at HL, wait for Fire to
                          ; be pressed then jump to Main Game Loop

; Display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait
; for Fire to be pressed then Jump to Main Game Loop
;
; Used by the routines at 43950, 43998, 44001, 44063, 44100 and 44198.
  LD HL,55549             ; Point HL at "YOU CANNOT [Current Command] THAT
                          ; SPELL NOW..." text
; This entry point is used by the routines at 43199, 43636, 44100 and 44337.
  CALL 64317              ; Display Window 15 with text at HL, wait for Fire to
                          ; be pressed then jump to Main Game Loop...

; Data block at 64296
  DEFB 15                 ; ...

; Display Window 12 with Text at HL, wait for Fire to be pressed then Jump to
; Main Game Loop
;
; Used by the routines at 41748, 43494, 44990, 45095, 45131 and 45149.
  CALL 64317              ; Display Window 12 with text at HL, wait for Fire to
                          ; be pressed then jump to Main Game Loop...

; Data block at 64300
  DEFB 12                 ; ...

; Display Window 24 with Text at HL, wait for Fire to be pressed then Jump to
; Main Game Loop
;
; Used by the routines at 45227, 45256 and 45336.
  CALL 64317              ; Display Window 24 with text at HL, wait for Fire to
                          ; be pressed then jump to Main Game Loop...

; Data block at 64304
  DEFB 24                 ; ...

; Display Window 27 with Text at HL, wait for Fire to be pressed then Jump to
; Main Game Loop
;
; Used by the routines at 44001, 44063, 44198 and 44337.
  CALL 64317              ; Display Window 27 with text at HL, wait for Fire to
                          ; be pressed then jump to Main Game Loop...

; Data block at 64308
  DEFB 27                 ; ...

; Display Window 28 with Text at HL, wait for Fire to be pressed then Jump to
; Main Game Loop
;
; Used by the routine at 44337.
  CALL 64317              ; Display Window 28 with text at HL, wait for Fire to
                          ; be pressed then jump to Main Game Loop...

; Data block at 64312
  DEFB 28                 ; ...

; Display Window 29 with Text at HL, wait for Fire to be pressed then Jump to
; Main Game Loop
;
; Used by the routines at 40338, 43117, 43158, 43199, 43250, 43318, 43428,
; 44933, 64280 and 64285.
  CALL 64317              ; Display Window 29 with text at HL, wait for Fire to
                          ; be pressed then jump to Main Game Loop...

; Data block at 64316
  DEFB 29                 ; ...

; Display an Information Window with Text at HL, wait for Fire to be pressed
; then Jump to Main Game Loop
;
; This routine is CALLed by the instructions at 43620, 44896, 64261, 64293,
; 64297, 64301, 64305, 64309 and 64313. Immediately after each of these calls
; is a byte of data representing the index of the window to draw. This data is
; read in this routine by loading the RETurn address (where the data is held)
; into DE and then performing a LD A,(DE). Input:  HL  Points to text to print
; in the window
  POP DE                  ; Remove value on top of stack, as we are not
                          ; RETurning to this address, but reading data from it
  LD A,(DE)               ; Load A with window index data...
  LD (64340),A            ; ...and modify instruction at 64339 with this index
  PUSH HL                 ; Store HL (pointer to text to print)
  LD L,A                  ; Load eight times window index into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  LD DE,49036             ; Point DE at y-coordinate of top of window in first
                          ; entry of Window Data table at 49034
  ADD HL,DE               ; ...and add HL as offset in HL
  EX DE,HL                ; Swap DE (now points to y-coordinate of top of
                          ; required window) and HL (now points to first entry
                          ; in Window Data table)
  POP HL                  ; Restore HL (pointer to text to print)
  CALL 45617              ; Adjust height of window to accommodate text
  PUSH HL                 ; Store HL (pointer to start of text data)
; The operand of the instruction at 64339 represents a window index. This is
; modified by the instruction at 64319.
  LD A,0                  ; Draw window with index specified in data
                          ; previously...
  CALL 47193              ; ...
  POP HL                  ; Restore HL (pointer to start of text data)
  CALL 46902              ; Print text to screen
  CALL 64230              ; Wait for interrupt then display "PRESS FIRE TO
                          ; CONTINUE" Window and wait for Fire to be pressed
  JP 41742                ; Set Magic Knight's available action flags and jump
                          ; to start of Main Game Loop

; Scroll a Region of the Display File Up a Pixel Row Without Wrapping
;
; Used by the routine at 47603.
  LD HL,64360             ; Load HL with address of routine at 64360 (return)
  JP 64367                ; Jump to 64367 (scroll a region of the Display File
                          ; up a pixel row then return)

; Do Nothing (Return)
;
; Used by the routines at 64367 and 64456.
  RET                     ; Return

; Scroll a Region of the Display File Down a Pixel Row Without Wrapping
;
; Used by the routine at 47665.
  LD HL,64360             ; Load HL with address of routine at 64360 (return)
  JP 64456                ; Jump to 64456 (scroll a region of the Display File
                          ; down a pixel row then return)

; Scroll a Region of the Display File Up a Pixel Row
;
; Used by the routine at 64354. Input:  HL  Address to jump to at the end of
; this routine (instruction at 64453)
  LD (64454),HL           ; Modify jump (at 64453) destination to address
                          ; stored in HL
  LD A,(23406)            ; Load y-coordinate of top of region to scroll
                          ; (pixels) into C...
  LD C,A                  ; ...
  LD DE,65140             ; Point DE at Table of Display File Addresses of
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
                          ; 65140)
  LD A,(23407)            ; Load y-coordinate of bottom of region to scroll
                          ; (pixels) into A...
  SUB C                   ; ...and subtract C to get height of region to scroll
                          ; (pixels)
  EX AF,AF'               ; Swap AF and AF' (A' now holds height of region to
                          ; scroll in pixels)
  LD A,(23404)            ; Load C with x-coordinate of left edge of region to
                          ; scroll (characters)...
  LD C,A                  ; ...
  LD A,L                  ; Add this x-coordinate value as offset (via OR) to
                          ; HL...
  OR C                    ; ...
  LD L,A                  ; ...
  LD A,(23405)            ; Load A with x-coordinate of right edge of region to
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
  JP Z,64452              ; If height of region to scroll in pixels is zero
                          ; then skip ahead to 64452
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
  JP NZ,64442             ; ...then skip ahead to 64442
; At least one of the three least significant bits of H are set, meaning we
; could be at the top of a third of the display
  LD A,E                  ; Move DE on by 32 bytes to move up one character row
                          ; (eight rows of pixels)...
  ADD A,32                ; ...
  LD E,A                  ; ...
  JP C,64442              ; If L hasn't gone over 256 (i.e. we haven't moved 32
                          ; bytes on from the top pixel row of the bottom
                          ; character row of a third) then skip ahead to
                          ; 64442...
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
  DJNZ 64421              ; Loop back to 64421 to copy next row of pixels up
  EXX                     ; Swap all registers
; The operand of the instruction at 64453 is the address to jump to upon
; completion of this routine. This is modified by the instruction at 64367, set
; to the value in HL at the start of this routine. The only value this is set
; to is 64360 (return).
  JP 64360                ; Jump to address that was in HL at start of this
                          ; routine (return)

; Scroll a Region of the Display File Down a Pixel Row
;
; Used by the routine at 64361. Input:  HL  Address to jump to at the end of
; this routine (instruction at 64545)
  LD (64546),HL           ; Modify jump (at 64545) destination to address
                          ; stored in HL
  LD A,(23407)            ; Load y-coordinate of bottom of region to scroll
                          ; (pixels) into A and C...
  LD C,A                  ; ...
  LD DE,65140             ; Point DE at Table of Display File Addresses of
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
                          ; 65140)
  LD A,(23406)            ; Load y-coordinate of top of region to scroll
                          ; (pixels) into B...
  LD B,A                  ; ...
  LD A,C                  ; Load y-coordinate of bottom of region to scroll
                          ; into A...
  SUB B                   ; ...and subtract B to get height of region to scroll
                          ; (pixels)
  EX AF,AF'               ; Swap AF and AF' (A' now holds height of region to
                          ; scroll in pixels)
  LD A,(23404)            ; Load C with x-coordinate of left edge of region to
                          ; scroll (characters)...
  LD C,A                  ; ...
  LD A,L                  ; Add this x-coordinate value as offset (via OR) to
                          ; HL...
  OR C                    ; ...
  LD L,A                  ; ...
  LD A,(23405)            ; Load A with x-coordinate of right edge of region to
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
  JP Z,64544              ; If height of region to scroll in pixels is zero
                          ; then skip ahead to 64544
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
  JP NZ,64534             ; ...then skip ahead to 64534
; At least one of the three least significant bits of H are set, meaning we
; could be at the top of a third of the display
  LD A,E                  ; Move DE back by 32 bytes to move up one character
                          ; row (eight rows of pixels)...
  SUB 32                  ; ...
  LD E,A                  ; ...
  JP C,64534              ; If E hasn't gone under zero (i.e. we haven't moved
                          ; 32 bytes back from the top character row of a
                          ; third) then skip ahead to 64534...
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
  DJNZ 64512              ; Loop back to 64512 to copy next row of pixels down
  EXX                     ; Swap all registers
; The operand of the instruction at 64545 is the address to jump to upon
; completion of this routine. This is modified by the instruction at 64456, set
; to the value in HL at the start of this routine. The only value this is set
; to is 64360 (return).
  JP 64360                ; Jump to address that was in HL at start of this
                          ; routine (return)

; Flash Border and Screen (as in Cast a Spell)
;
; Used by the routines at 44216, 44225 and 44253.
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
  JR NZ,64556             ; ...then loop back to 64556
  DJNZ 64550              ; Loop back for another pass
  XOR A                   ; Set A to zero
  OUT (254),A             ; Reset border to black and reset speaker state
  RET                     ; Return

; Display Cyan "Game Over" Window and Return to Control Selection Menu
;
; Used by the routines at 38205, 38841, 40258, 40598, 41748, 43636, 44216,
; 44253, 45723, 46560 and 62877. Input:  HL  Points to location of a string
  RES 0,(IY+65)           ; Reset Game In Progress Flag (IY = 23610)
  LD DE,49228             ; Adjust height of window 24 ("Game Over" Window) to
                          ; accommodate text...
  CALL 45617              ; ...
  PUSH HL                 ; Store HL (points to first character of text to
                          ; display)
  LD A,24                 ; Draw Window 24 ("Game Over" Window)...
  CALL 47193              ; ...
  LD HL,50779             ; Point to string for percentage completion
  LD DE,50791             ; Point to string for time left
  CALL 45522              ; Insert current time and score into "Time Left" and
                          ; "Percentage Completion" texts
  LD HL,50756             ; Point HL at "GAME OVER / TOTAL COMPLETION XX% /
                          ; TIME LEFT XX HOURS" text...
  CALL 46902              ; ...and print to screen
  POP HL                  ; Restore HL (points to first character of text to
                          ; display)
  CALL 46902              ; Print text to screen
  CALL 64230              ; Wait for interrupt then display "PRESS FIRE TO
                          ; CONTINUE" Window and wait for Fire to be pressed
  JP 37689                ; Wait for interrupt then display and handle Input
                          ; Device Selection Menu

; Advance HL by A Words, Load HL with Word at Location HL as Address and Jump
; to it
;
; Used by the routines at 41924, 42257, 42494, 43043, 43250 and 43874. Input:
; A  An index HL  First entry in list of addresses
  CALL 64627              ; Load address with index A in a list of addresses at
                          ; HL into HL
  JP (HL)                 ; Jump to address in HL

; Load address with index A in a list of addresses at HL into HL
;
; Used by the routines at 38841, 39014, 39189, 39655, 63598 and 64623. Input:
; A  Index of required entry in list (0 is first) HL  Address of start of list
; Output: HL  A-th address in list at HL (input)
  ADD A,A                 ; Double offset value...
  LD D,0                  ; ...and load into DE...
  LD E,A                  ; ...
  ADD HL,DE               ; Add doubled offset to address in HL
; This entry point is used by the routines at 40784, 41035 and 63504.
  LD A,(HL)               ; Load address at HL into HL...
  INC HL                  ; ...
  LD H,(HL)               ; ...
  LD L,A                  ; ...
  RET                     ; Return

; If Do Not Draw Storm Cloud Flag is Set then Prepare to Draw Storm Cloud
;
; This routine is only called when the Storm Cloud and Magic Knight are both in
; the same room.
  LD A,(64688)            ; If Do Not Draw Storm Cloud Flag is reset...
  OR A                    ; ...
  RET Z                   ; ...then return
  LD A,(23701)            ; Load BC with Storm Cloud's apparent x-coordinate
                          ; (characters)...
  RRCA                    ; ...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  LD C,A                  ; ...
  LD B,0                  ; ...
  LD HL,16544             ; Load HL with Display File address for top pixel row
                          ; of cell at character coordinates (0, 5)
  ADD HL,BC               ; Add BC to HL as offset...
  LD (64704),HL           ; ...and store at 64703
  LD A,(23701)            ; Load HL with Storm Cloud's apparent x-coordinate
                          ; (pixel-within-character)...
  AND 7                   ; ...
  ADD A,A                 ; ...multiplied by 128...
  ADD A,A                 ; ...as each Storm Cloud frame graphic is 128 bytes
                          ; long...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; ...
  LD H,0                  ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  LD BC,25176             ; Load BC with start address of Storm Cloud graphic
                          ; data...
  ADD HL,BC               ; ...and add HL as offset in HL to give address of
                          ; required frame's graphic data
  LD (64708),HL           ; Store graphic's start address at 64707
  XOR A                   ; Reset Do Not Draw Storm Cloud Flag...
  LD (64688),A            ; ...
  RET                     ; Return

; If Do Not Draw Storm Cloud Flag is Reset then Draw Storm Cloud
;
; If the Do Not Draw Storm Cloud Flag is reset, then the Storm Cloud will be
; drawn. After this, the flag is set, ensuring that the position of the Storm
; Cloud can be updated by the routine at 64637. This also ensures that if Magic
; Knight moves to a different room, the drawing of the Storm Cloud will cease,
; since the Do Not Draw Storm Cloud Flag is only reset by the routine at 64637,
; which in turn is only called when both the Storm Cloud and Magic Knight are
; in the same room. The operand of the instruction at 64687 represents the Do
; Not Draw Storm Cloud Flag. This is modified by the instructions at 38134,
; 64683 and 64806.
  LD A,1                  ; If Do Not Draw Storm Cloud Flag is set...
  OR A                    ; ...
  RET NZ                  ; ...then return
  LD HL,(23677)           ; Store value of system variable COORDS on stack...
  PUSH HL                 ; ...
  LD HL,(63018)           ; Load HL with address of Bitmap Virtual Text Cursor
  PUSH HL                 ; Store HL (Bitmap Virtual Cursor address)
  LD HL,(23707)           ; Load HL with address of Attribute Virtual Text
                          ; Cursor
  PUSH HL                 ; Store HL (Attribute Virtual Cursor address)
; The operand of the instruction at 64703 represents the Display File address
; for the top-left of the Storm Cloud. This is modified by the instruction at
; 64657.
  LD HL,0                 ; Load HL with current Display File address of Storm
                          ; Cloud
  PUSH HL                 ; Store HL (current Display File address of Storm
                          ; Cloud)
; The operand of the instruction at 64707 represents the start address of the
; graphic data for the Storm Cloud's current frame. This is modified by the
; instruction at 64679.
  LD DE,0                 ; Load DE with start address of graphic data for
                          ; Storm Cloud's current frame
  LD B,8                  ; Load B with 8 (as we are drawing the first eight
                          ; pixel rows of cloud graphic data)
  PUSH HL                 ; Store HL (current Display File address at left side
                          ; of cloud)
  LD A,(DE)               ; Copy a run of eight bytes from Storm Cloud's
                          ; graphic data...
  LD (HL),A               ; ...to Display File, starting at current Display
                          ; File address...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC DE                  ; Advance DE to next byte in graphic data (i.e. start
                          ; of next pixel row)
  POP HL                  ; Restore HL (current Display File address at left
                          ; side of cloud)
  INC H                   ; Advance down a pixel row
  DJNZ 64712              ; Decrease remaining number of pixel rows to draw,
                          ; and loop back to 64712 if not zero
  POP HL                  ; Restore HL (current Display File address of Storm
                          ; Cloud)
  LD A,32                 ; Add 32 to Display File address to move down eight
                          ; pixels...
  ADD A,L                 ; ...
  LD L,A                  ; ...
  XOR A                   ; Set A to zero (see trivia)
  LD B,5                  ; Load B with 5 (as we are drawing a further five
                          ; pixel rows of cloud graphic data)
  PUSH HL                 ; Store HL (current Display File address at left side
                          ; of cloud)
  LD A,(DE)               ; Copy a run of eight bytes from Storm Cloud's
                          ; graphic data...
  LD (HL),A               ; ...to Display File, starting at current Display
                          ; File address...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  INC DE                  ; ...
  LD A,(DE)               ; ...
  LD (HL),A               ; ...
  INC DE                  ; ...
  POP HL                  ; Restore HL (current Display File address at left
                          ; side of cloud)
  INC H                   ; Advance down a pixel row
  DJNZ 64756              ; Decrease remaining number of pixel rows to draw,
                          ; and loop back to 64756 if not zero
  POP HL                  ; Restore HL (Attribute Virtual Cursor address)
  LD (23707),HL           ; Restore Attribute Virtual Cursor address
  POP HL                  ; Restore HL (Bitmap Virtual Cursor address)
  LD (63018),HL           ; Restore Bitmap Virtual Cursor address
  POP HL                  ; Restore value of system variable COORDS from
                          ; stack...
  LD (23677),HL           ; ...
  LD A,1                  ; Set Do Not Draw Storm Cloud Flag...
  LD (64688),A            ; ...
  RET                     ; Return

; Set New Random Seed and Load A with a Random Number
;
; Used by the routine at 64829. Output: A  LSB of new random seed
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
  RET                     ; Return

; Generate a Random Seed / Random Number Up To B
;
; Used by the routine at 38024. Input:  B  Cap value Output: A  Random number
  CALL 64810              ; Set new random seed and load A with a random number
  CP B                    ; If random seed is greater than or equal to B...
  JR NC,64829             ; ...then loop back to 64829
  RET                     ; Return

; Select Magic Knight's Room (Cheat / Debug Routine)
;
; Used by the routine at 38205.
  EX AF,AF'               ; Switch AF and AF'
  LD A,(23728)            ; If Cheat Mode Enabled Flag is set (see trivia)...
  OR A                    ; ...
  JR NZ,64845             ; ...then skip ahead to 64845
  EX AF,AF'               ; Switch AF and AF'
  RET                     ; Return
  POP HL                  ; Remove return address from top of Stack
  CALL 47989              ; Set parameters (for Cheat Routine Sound) and play
; This entry point is used by the routine at 64878.
  LD A,2                  ; Set BORDER to red...
  OUT (254),A             ; ...
  CALL 64034              ; Capture keyboard or joystick input loading result
                          ; into A
  BIT 0,A                 ; If left pressed...
  JR NZ,64883             ; ...then jump to 64883 (decrease Magic Knight's
                          ; current room index by 1, wrapping around to 51 if
                          ; below zero)
  BIT 1,A                 ; If right pressed...
  JR NZ,64906             ; ...then jump to 64906 (increase Magic Knight's
                          ; current room index by 1, wrapping around to zero if
                          ; above 51)
  BIT 2,A                 ; If up pressed...
  JR NZ,64912             ; ...then jump to 64912 (increase Magic Knight's
                          ; current room index by 8, wrapping around to zero if
                          ; above 51)
  BIT 3,A                 ; If down pressed...
  JR NZ,64919             ; ...then jump to 64919 (decrease Magic Knight's
                          ; current room index by 8, wrapping around to 51 if
                          ; below zero)
  BIT 4,A                 ; If fire pressed...
  JR NZ,64926             ; ...then jump to 64926 (exit Cheat / Debug Mode)
  JR 64849                ; Loop back to 64849

; Cheat / Debug Routine Draw Magic Knight's Current Room then Jump Back into
; Cheat Routine Main Loop
;
; Used by the routine at 64883.
  CALL 38844              ; Draw Magic Knight's current room, draw objects and
                          ; characters and initialise room-specific data
  JR 64849                ; Jump back into Cheat Routine main loop

; Cheat / Debug Routine Decrease Magic Knight's Current Room Index By 1,
; Wrapping Around to 51 if Below Zero
;
; Used by the routine at 64836.
  LD A,(23702)            ; Load A with index of Magic Knight's current room...
  DEC A                   ; ...minus 1
; This entry point is used by the routines at 64906, 64912 and 64919.
  OR A                    ; If new room index is not less than zero...
  JP P,64893              ; ...then skip ahead to 64893
  ADD A,52                ; Add 52 to new room index (wrap 0 to 51)
  CP 52                   ; If new room index is less than 52...
  JR C,64901              ; ...then skip ahead to 64901
  SUB 52                  ; Subtract 52 from new room index (wrap 51 to 0)
  JR 64893                ; Loop back to 64893
  LD (23702),A            ; Store Magic Knight's new room index
  JR 64878                ; Draw Magic Knight's current room then jump back
                          ; into Cheat Routine Main Loop

; Cheat / Debug Routine Increase Magic Knight's Current Room Index By 1,
; Wrapping Around to Zero if Above 51
;
; Used by the routine at 64836.
  LD A,(23702)            ; Load A with index of Magic Knight's current room...
  INC A                   ; ...plus 1
  JR 64887                ; Wrap new index if out of range, store and jump back
                          ; to Cheat Routine Main Loop

; Cheat / Debug Routine Increase Magic Knight's Current Room Index By 8,
; Wrapping Around to Zero if Above 51
;
; Used by the routine at 64836.
  LD A,(23702)            ; Load A with index of Magic Knight's current room...
  ADD A,8                 ; ...plus 8
  JR 64887                ; Wrap new index if out of range, store and jump back
                          ; to Cheat Routine Main Loop

; Cheat / Debug Routine Decrease Magic Knight's Current Room Index By 8,
; Wrapping Around to Zero if Below Zero
;
; Used by the routine at 64836.
  LD A,(23702)            ; Load A with index of Magic Knight's current room...
  SUB 8                   ; ...minus 8
  JR 64887                ; Wrap new index if out of range, store and jump back
                          ; to Cheat Routine Main Loop

; Cheat / Debug Routine Exit Cheat / Debug Mode
;
; Used by the routine at 64836.
  XOR A                   ; Set BORDER to black...
  OUT (254),A             ; ...
  CALL 47897              ; Play upward scale sound
  JP 38205                ; Jump to start of Main Game Loop

; Set Left and Right x-Coordinates (23408 and 23410) to Edges of Screen and
; Load A with Magic Knight's Current Strength
;
; Used by the routine at 46463. Output: A  Magic Knight's current strength
  XOR A                   ; Set left-edge x-coordinate value at 23408 to
                          ; zero...
  LD (23408),A            ; ...
  LD A,31                 ; Set right-edge x-coordinate value at 23410 to 31...
  LD (23410),A            ; ...
  LD A,(24768)            ; Load A with Magic Knight's current strength
  RET                     ; Return

; Unused
  DEFB 11,24,29,1,28,48,26,34
  DEFB 43,1,17,27,18,56,50,39
  DEFB 33,18,45,1,61,61,61,61
  DEFB 61,61,61,61,61,61,61,24
  DEFB 41,33,61,61,25,22,53,48
  DEFB 37,38,1,24,24,25,25,25
  DEFB 41,41,26,25,38,24,25,24
  DEFB 46,18,52,31,1,29,36,24
  DEFB 43,26,25,25,24,26,25,30
  DEFB 45,26,58,23,25,35,24,53
  DEFB 26,22,26,40,40,42,55,49
  DEFB 47,25,24,27,56,52,50,50
  DEFB 42,44,25,36,25,26,26,49
  DEFB 24,49,54,60,22,56,27,22
  DEFB 22,23,23,21,21,21,35,22
  DEFB 22,22,22,25,24,25,25,26
  DEFB 28,25,23,21,23,35,1,43
  DEFB 34,1,16,16,16,40,26,25
  DEFB 45,40,0,39,59,1,43,43
  DEFB 43,47,58,41,51,27,27,36
  DEFB 41,38,11,1,20,27,16,21
  DEFB 29,28,8,58,42,42,42,42
  DEFB 59,60,60,60,60,60,60,60
  DEFB 60,59,31,25,0,24,76,255

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

; Interrupt Routine (Jump 2)
;
; Note - original values here are 16, 16, 16. These are modified to the JP
; instruction by instructions between 37655 and 37663
  DEFB 0,0,0              ; Jump to main part of interrupt routine at 62178

; Unused
  DEFB 0,0,0,0,0,0,0,0

; Interrupt Routine (Jump 1)
;
; Note - original value at 65535 is 0. This is modified to the JR instruction
; by instruction at 37652. The operand comes from next byte (location 0 in
; ROM.)
  NOP


    SAVESNA "main.sna", main