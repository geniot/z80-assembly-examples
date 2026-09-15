    SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
    DEVICE ZXSPECTRUM48

  ORG 23296

; Temporary Data Storage Area
;
; Used by the Draw Magic Knight routine at 39224
  DEFW 0                  ; Display File address of bottom of Magic Knight's
                          ; feet: predicted (Magic Knight moving down /
                          ; horizontally) or current (Magic Knight moving up)
  DEFW 0                  ; Current position in Magic Knight graphic data
                          ; (initially: Last byte of Magic Knight graphic frame
                          ; (Magic Knight's current frame to draw [Magic Knight
                          ; moving down / horizontally] or current frame to
                          ; erase [Magic Knight moving up]))
  DEFB 0                  ; Temporary store for Magic Knight's predicted (Magic
                          ; Knight moving down / horizontally) or current
                          ; (Magic Knight moving up) x-coordinate
                          ; (pixel-within-character)
  DEFW 0                  ; Temporary store for Magic Knight's predicted (Magic
                          ; Knight moving down / horizontally) or current
                          ; (Magic Knight moving up) x-coordinate (characters)
  DEFW 0                  ; Temporary store for current Display File address to
                          ; draw to (Magic Knight drawing routine)
  DEFW 0                  ; Last byte of a Magic Knight graphic frame (frame to
                          ; erase [Magic Knight moving down / horizontally] or
                          ; frame to draw [Magic Knight moving up])
  DEFB 0                  ; Temporary store for Magic Knight's current (Magic
                          ; Knight moving down / horizontally) or predicted
                          ; (Magic Knight moving up) x-coordinate
                          ; (pixel-within-character)
  DEFW 0                  ; Temporary store for Magic Knight's current (Magic
                          ; Knight moving down / horizontally) or predicted
                          ; (Magic Knight moving up) x-coordinate (characters)
  DEFW 0                  ; Display File address of leftmost part of Magic
                          ; Knight at current pixel row, mid-drawing
  DEFW 0                  ; Temporary store for Magic Knight's predicted (Magic
                          ; Knight moving down / horizontally) or current
                          ; (Magic Knight moving up) x-coordinate (characters)
  DEFB 0                  ; "Magic Knight changing character position to right"
                          ; flag (Magic Knight moving down / horizontally) or
                          ; "Magic Knight changing character position to left"
                          ; flag (Magic Knight moving up)
  DEFB 0                  ; "Magic Knight changing character position to left"
                          ; flag (Magic Knight moving down / horizontally) or
                          ; "Magic Knight changing character position to right"
                          ; flag (Magic Knight moving up)
  DEFB 0                  ; "Magic Knight is leaving his current character
                          ; position and going left" flag
  DEFB 0                  ; "Magic Knight is leaving his current character
                          ; position and going right" flag
  DEFB 0                  ; "Magic Knight is leaving his current character
                          ; position" flag
  DEFB 0                  ; Temporary store for magnitude of Magic Knight's
                          ; y-velocity
  DEFW 0                  ; Pointer to Display File address of start of pixel
                          ; row at Magic Knight's feet: predicted (Magic Knight
                          ; moving down / horizontally) or current (Magic
                          ; Knight moving up) in table at 26064
  DEFB 0                  ; Temporary store for Magic Knight's predicted (Magic
                          ; Knight moving down / horizontally) or current
                          ; (Magic Knight moving up) x-coordinate (pixels)
  DEFB 0                  ; Temporary store for Magic Knight's current (Magic
                          ; Knight moving down / horizontally) or predicted
                          ; (Magic Knight moving up) x-coordinate (pixels)
  DEFB 0                  ; Temporary store for Magic Knight's predicted (Magic
                          ; Knight moving down / horizontally) or current
                          ; (Magic Knight moving up) y-coordinate (pixels)
  DEFB 0                  ; Temporary store for Magic Knight's current (Magic
                          ; Knight moving down / horizontally) or predicted
                          ; (Magic Knight moving up) y-coordinate (pixels)
  DEFB 0                  ; Temporary store for Magic Knight's current frame to
                          ; draw (Magic Knight moving down / horizontally) or
                          ; current frame to erase (Magic Knight moving up)
  DEFB 0                  ; Temporary store for Magic Knight's current frame to
                          ; erase (Magic Knight moving down / horizontally) or
                          ; current frame to draw (Magic Knight moving up)
  DEFB 0                  ; Temporary store for Magic Knight's current frame to
                          ; erase
  DEFB 0                  ; Temporary store for Magic Knight's current
                          ; x-coordinate (pixels)
  DEFB 0                  ; Temporary store for Magic Knight's current
                          ; y-coordinate (pixels)
  DEFB 0                  ; Temporary store for Magic Knight's predicted
                          ; x-coordinate (pixels)
  DEFB 0                  ; Temporary store for Magic Knight's predicted
                          ; y-coordinate (pixels)
  DEFB 0                  ; Temporary store for Magic Knight's predicted
                          ; x-coordinate (characters)
  DEFB 0                  ; Temporary store for Magic Knight's predicted
                          ; y-coordinate (characters)
  DEFB 0                  ; Temporary store for Magic Knight's predicted
                          ; x-coordinate (pixel-within-character)
  DEFB 0                  ; Temporary store for Magic Knight's predicted
                          ; y-coordinate (pixel-within-character)
  DEFB 0                  ; Temporary store for Magic Knight's attribute
  DEFB 0                  ; Temporary store for "Update Attributes at Magic
                          ; Knight's Predicted Position" flag

; Unused
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0

; Gimbal-White-Out Safe Flag
;
; Controls whether or not the "GIMBAL IS NOT YET RELEASED..." warning window
; appears when a command is selected.
  DEFB 0

; Score Progress Flags
;
; Bitwise flags which record Magic Knight's achievements, and are used in
; calculating percentage completion. Flags are initially reset, and each one is
; set when the corresponding action is performed.
  DEFB 0

; Unused
  DEFB 0,0,0

; Glowing Lift Control Panel Index
;
; Determines which light on the Lift control panel is glowing.
  DEFB 0

; Table of Glowing Attribute File Addresses
;
; Up to ten WORDs can be stored here. Each entry is an address in Attribute
; File and represents a character block on the screen that is glowing (e.g.
; Lift control panel light, candle flames etc.)
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

; Unused
  DEFB 0

; Time Data
;
; Data related to Magic Knight's time left, and also elapsed game time.
  DEFB 0                  ; Current Time Left - game hours (5 real-time minutes
                          ; per game hour)
  DEFB 0                  ; Minute Counter (Time Elapsed since last "hour")
  DEFB 0                  ; Second Counter (Time Elapsed since last minute)
  DEFB 0                  ; 1/50 Second Counter (Time Elapsed since last
                          ; second)

; Compass Glow Update Flag (Locate Compass)
;
; If flag is reset (0), then the attribute of the illuminated Locate A
; Character Compass sector will be updated on next interrupt, if Magic Knight
; is locating. No update will take place if the flag is set (1).
  DEFB 0

; Current INK Colour of Glowing Blocks
  DEFB 0

; Temporary Store for Magic Knight's Movement Flags
;
; Bitwise flags which determine which direction(s) Magic Knight cannot
; currently move (i.e. set means can't move). Set when Magic Knight either:
  DEFB 0

; Game progress flags (1)
;
; Bitwise flags which record some of Magic Knight's achievements. Flags are
; initially reset, and each one is set when the corresponding action is
; performed.
  DEFB 0

; Visited Room Flags
;
; Fifty bytes, one for each room in the game. At the start of the game, these
; are all reset (i.e. zero). Each time Magic Knight enters a room for the first
; time, the flag corresponding to that room is set (to 1). These flags are used
; in calculating percentage completion.
  DEFB 0                  ; The Lift
  DEFB 0,0,0,0,0,0,0,0    ; Roof
  DEFB 0,0,0,0,0,0,0,0    ; 4th Floor
  DEFB 0,0,0,0,0,0,0,0    ; 3rd Floor
  DEFB 0,0,0,0,0,0,0,0    ; 2nd Floor
  DEFB 0,0,0,0,0,0,0,0    ; 1st Floor
  DEFB 0,0,0,0,0,0,0,0    ; Ground Floor
  DEFB 0                  ; Basement

; y- and x- coordinates of top-left corner of currently glowing Locate Compass
; sector
  DEFB 0,0

; Indices of characters in current room
;
; Up to three characters. Data used by routine at 35931
  DEFB 0,0,0

; Game progress flags (2)
;
; Bitwise flags which record more of Magic Knight's achievements. Flags are
; initially reset, and each one is set when the corresponding action is
; performed.
  DEFB 0

; Game progress flags (3)
;
; Bitwise flags which record more of Magic Knight's achievements. Flags are
; initially reset, and each one is set when the corresponding action is
; performed.
  DEFB 0

; Brickwork Drawing Mode
;
; +-------+-------------------------------------+
; | Value | Meaning                             |
; +-------+-------------------------------------+
; | 0     | Draw two rows                       |
; | 1     | Draw one row only                   |
; | 2     | Draw one row then a blank row below |
; +-------+-------------------------------------+
  DEFB 0

; Magic Knight movement flags
;
; Bitwise flags which determine which direction(s) Magic Knight cannot
; currently move (i.e. set means can't move). The bits are as follows:
  DEFB 0

; Position data for drawing Menu Hand Cursor
  DEFB 0                  ; Height available to hand cursor to move down
                          ; (pixels)
  DEFB 0                  ; x-coordinate of left edge of current window
                          ; (characters)
  DEFB 0                  ; y-coordinate of "finger" on hand-cursor
                          ; (characters)
  DEFB 0                  ; Unused
  DEFB 0                  ; Current y-coordinate of hand cursor relative to its
                          ; starting position (pixels)

; Brickwork Drawing Direction Flag
;
; Only bit 0 is used. If reset (0), then direction is horizontal (i.e. floors
; and ceilings). If set (1), then direction is vertical (i.e. walls).
  DEFB 0

; Attribute of interior of current window, i.e. background / foreground colours
; of contents
  DEFB 0

; Magic Knight's predicted position, used in routine at 27666
  DEFB 0                  ; Predicted x-coordinate
  DEFB 0                  ; Predicted y-coordinate

; Unused
  DEFB 0

; Store for current position in Terrain Interaction Parameter Table at 24539
  DEFW 0

; Store for current Terrain Interaction Parameter value
  DEFB 0

; Unused
  DEFB 0

; Store for currently active keyboard press / joystick action
  DEFB 0

; Unused
  DEFB 0

; Attribute File address of Virtual Text Cursor
  DEFW 0

; Position data for drawing windows
  DEFB 0                  ; Initial y-coordinate of top of hand cursor relative
                          ; to current window (characters)
  DEFB 0                  ; x-coordinate of left of interior area of window
                          ; (characters) (i.e. value at 23493 plus 1)
  DEFB 0                  ; y-coordinate of top of hand cursor (pixels)
  DEFB 0                  ; y-coordinate of bottom of window (including frame)
                          ; (pixels)
  DEFB 0                  ; x-coordinate of left edge (of frame, or of
                          ; interior) of current window to draw (characters)
  DEFB 0                  ; y-coordinate of top edge (of frame, or of interior)
                          ; of current window to draw (characters)
  DEFB 0                  ; x-coordinate of right edge (of frame, or of
                          ; interior) of current window to draw (characters)
  DEFB 0                  ; y-coordinate of bottom edge (of frame, or of
                          ; interior) of current window to draw (characters)

; Storage space for ASCII string converted from numeric value
  DEFB 0,0,0,0,0

; Unused
  DEFB 0

; Pointer to index of next character (in summoning sequence table at 33565) who
; will be sent home upon being summoned
  DEFW 0

; "Animate Magic Knight's Puff of Smoke Appearance on Next Room Redraw" Flag
;
; Determines whether or not Magic Knight appears in a puff of smoke the next
; time a room is (re)drawn. Only bit 0 is used.
  DEFB 0

; Characters Sent Home Counter (Score)
;
; For each character sent home, Magic Knight gains a 1% contribution to
; Percentage Completion. This value counts the number of characters sent home
; for this purpose.
  DEFB 0

; Unused
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0
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
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0

; System Data and Stack space
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0

; Basic loader
;
; The basic loader is set to auto-run from line 10, which loads a block of code
; of length 6940 bytes to address 16384. This code block contains the loading
; screen and additional loading code at 23296. This loading code is called,
; before we jump to the start-up routine at 26627. The listing has a disguised
; address for the start-up routine, 26624, which would take us to the "HELLO
; HACKER" routine.
  DEFB 0,0,0              ; 10 CLEAR 26060: POKE 23693,71: BORDER 0: CLS : LOAD
                          ; ""CODE 16384: RANDOMIZE USR 23296: RANDOMIZE USR
                          ; 26624{26627}
  DEFB 0,0,0,0,0
  DEFB 0,0,0
  DEFB 0,0,0,0,0
  DEFB 0,0,0
  DEFB 0,0,0,0,0
  DEFB 0,0,0
  DEFB 0,0,0,0,0
  DEFB 0,0,0
  DEFB 0,0,0,0,0
  DEFB 0,0,0
  DEFB 0,0,0,0,0
  DEFB 0,0,0
  DEFB 0,0,0,0,0
  DEFB 0,0,0
  DEFB 0,0,0,0,0
  DEFB 0,0,0
  DEFB 0,0,0,0,0
  DEFB 0,0,0
  DEFB 0,0,0,0,0
  DEFB 0,0,0
  DEFB 0,0,0,0,0
  DEFB 0,0,0
  DEFB 0,0,0
  DEFB 0,0,0,0,0
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
  DEFB 0,0,0,0,0

; Terrain Interaction Data Table
;
; Table comprised of 32 x 20 entries, each one corresponding to a character
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

; Unused
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

; Slot number (1-3) currently occupied by characters in their current rooms
  DEFB 0                  ; Gimbal the Wizard
  DEFB 0                  ; Thor
  DEFB 0                  ; Florin the Dwarf
  DEFB 0                  ; Orik the Cleric
  DEFB 0                  ; Samsun the Strong
  DEFB 0                  ; Elrand Halfelven
  DEFB 0                  ; Lady Rosmar
  DEFB 0                  ; The Banshee

; Characters' Current Stats
;
; Nine groups of eight bytes, one group per character (including Magic Knight).
; The values are:
  DEFB 0,0,0,0,0,0,0,0    ; Magic Knight
  DEFB 0,0,0,0,0,0,0,0    ; Gimbal the Wizard
  DEFB 0,0,0,0,0,0,0,0    ; Thor
  DEFB 0,0,0,0,0,0,0,0    ; Florin the Dwarf
  DEFB 0,0,0,0,0,0,0,0    ; Orik the Cleric
  DEFB 0,0,0,0,0,0,0,0    ; Samsun the Strong
  DEFB 0,0,0,0,0,0,0,0    ; Elrand Halfelven
  DEFB 0,0,0,0,0,0,0,0    ; Lady Rosmar
  DEFB 0,0,0,0,0,0,0,0    ; The Banshee

; Magic Knight's Current Data
  DEFB 0                  ; x-coordinate (pixels)
  DEFB 0                  ; y-coordinate (pixels)
  DEFB 0                  ; Frame Number (frame to erase)
  DEFB 0                  ; Frame Number (frame to draw)
  DEFB 0                  ; x velocity (pixels) [walking / jumping sideways,
                          ; usually 2 for right and 254 / -2 for left]
  DEFB 0                  ; y velocity (pixels) [jumping]
  DEFB 0                  ; Attribute
  DEFB 0                  ; Update Attributes Mask (zeroes BRIGHT and INK
                          ; component of existing attribute so that Magic
                          ; Knight's INK and BRIGHT bits override) (used by
                          ; routine at 39989)

; Characters' Current Inventories
;
; Nine groups of five bytes, one group per character (including Magic Knight).
; Each of the five bytes per group represents an inventory slot for that
; character. A value of zero indicates that the slot is empty. Non-zero values
; correspond to indices of objects (e.g. 3 = Miolnir)
  DEFB 0,0,0,0,0          ; Magic Knight
  DEFB 0,0,0,0,0          ; Gimbal the Wizard
  DEFB 0,0,0,0,0          ; Thor
  DEFB 0,0,0,0,0          ; Florin the Dwarf
  DEFB 0,0,0,0,0          ; Orik the Cleric
  DEFB 0,0,0,0,0          ; Samsun the Strong
  DEFB 0,0,0,0,0          ; Elrand Halfelven
  DEFB 0,0,0,0,0          ; Lady Rosmar
  DEFB 0,0,0,0,0          ; The Banshee

; Characters' Current Positions
;
; Eight groups of three bytes, one group per character (excluding Magic
; Knight). The values are:
  DEFB 0,0,0              ; Gimbal the Wizard
  DEFB 0,0,0              ; Thor
  DEFB 0,0,0              ; Florin the Dwarf
  DEFB 0,0,0              ; Orik the Cleric
  DEFB 0,0,0              ; Samsun the Strong
  DEFB 0,0,0              ; Elrand Halfelven
  DEFB 0,0,0              ; Lady Rosmar
  DEFB 0,0,0              ; The Banshee

; Objects' Current Positions
;
; Fifty groups of three bytes, one group per object. The values are:
  DEFB 0,0,0              ; "Nothing at All"!
  DEFB 0,0,0              ; Ancient Scroll
  DEFB 0,0,0              ; Book of Shadows
  DEFB 0,0,0              ; Miolnir
  DEFB 0,0,0              ; Axe
  DEFB 0,0,0              ; Sticky Bun
  DEFB 0,0,0              ; Crystal Ball
  DEFB 0,0,0              ; Wand of Command
  DEFB 0,0,0              ; Javelin
  DEFB 0,0,0              ; Cannon Ball
  DEFB 0,0,0              ; Tube of Glue
  DEFB 0,0,0              ; Broken Talisman
  DEFB 0,0,0              ; Magic Talisman
  DEFB 0,0,0              ; Runestone
  DEFB 0,0,0              ; Broken Glass
  DEFB 0,0,0              ; Book of Runes
  DEFB 0,0,0              ; Glowing Bottle
  DEFB 0,0,0              ; Gold Goblet
  DEFB 0,0,0              ; Fast Blow Fuse
  DEFB 0,0,0              ; Red Herring
  DEFB 0,0,0              ; Brick
  DEFB 0,0,0              ; Green Crystal
  DEFB 0,0,0              ; Blue Crystal
  DEFB 0,0,0              ; Red Crystal
  DEFB 0,0,0              ; Willow Rod
  DEFB 0,0,0              ; Lump of Brickwork
  DEFB 0,0,0              ; Bottle of Liquid
  DEFB 0,0,0              ; Four Leaf Clover
  DEFB 0,0,0              ; Loaf of Elf-Bread
  DEFB 0,0,0              ; Platform
  DEFB 0,0,0              ; Gold Bar
  DEFB 0,0,0              ; Pewter Tankard
  DEFB 0,0,0              ; White Gold Ring
  DEFB 0,0,0              ; Engraved Candle
  DEFB 0,0,0              ; Strange Liquid
  DEFB 0,0,0              ; Mirror
  DEFB 0,0,0              ; Pocket Laser
  DEFB 0,0,0              ; Prism
  DEFB 0,0,0              ; Elf-Horn
  DEFB 0,0,0              ; Saxophone
  DEFB 0,0,0              ; Trumpet
  DEFB 0,0,0              ; Instruction Book
  DEFB 0,0,0              ; Key
  DEFB 0,0,0              ; Advert
  DEFB 0,0,0              ; Lump of Brickwork
  DEFB 0,0,0              ; Empty Bottle
  DEFB 0,0,0              ; Power-Pong Plant
  DEFB 0,0,0              ; Shield
  DEFB 0,0,0              ; Teleport Key
  DEFB 0,0,0              ; Teleport Pad

; Movement Data Table for Starfield Routine
;
; Fifty groups of nine bytes, one group per star. The values are:
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

; Display File addresses of start of each pixel row
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

; Unused
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


main:
; Fake Start of Game Code
  JP 27118                ; Jump to "Hello Hacker" routine


; Initialise Interrupt Code then Jump to Input Device Selection Menu
  LD A,(23728)            ; Redundant instructions (part of a previous debug
                          ; routine?)...
  OR A                    ; ...
  NOP                     ; ...
  NOP                     ; ...
  XOR A                   ; Set A to zero (see trivia)
  LD (27236),A            ; Disable debug / cheat mode...
  LD (27237),A            ; ...
  LD (27238),A            ; ...
  DI                      ; Disable interrupts
  XOR A                   ; Reset "Update Game Time and Locate Arrow Glow"
                          ; flag, "Disable In-Game Glow" flag and "Characters
                          ; Can't Move" flag...
  LD (IY+65),A            ; ...
  LD A,24                 ; Put JR instruction at 65535 for jumping to
                          ; interrupt routine...
  LD (65535),A            ; ...
  LD HL,65524             ; Load first three bytes of interrupt routine with
                          ; 195, 69 and 214...
  LD (HL),195             ; ...this corresponds to the instruction "JP 54853"
  INC HL                  ; ...
  LD (HL),69              ; ...
  INC HL                  ; ...
  LD (HL),214             ; ...
; Here we load I with 57, indicating an interrupt vector table at 57*256=14592.
; This is an area of ROM filled with FF values. This causes a jump to $FFFF
; (i.e. 65535) on each interrupt.
  LD A,57                 ; Load I register with 57 (for interrupt routine)...
  LD I,A                  ; ...
  EI                      ; Enable interrupts
  SET 3,(IY+48)           ; Set CAPS LOCK flag (i.e. set CAPS LOCK to ON)

; Display input device selection menu
;
; Used by the routine at 35101.
  HALT                    ; Wait for interrupt
  LD SP,24539             ; Set Stack Pointer to 24539
  XOR A                   ; Reset "Update Game Time and Locate Arrow Glow"
                          ; flag, "Disable In-Game Glow" flag and "Characters
                          ; Can't Move" flag...
  LD (IY+65),A            ; ...
  IM 2                    ; Set interrupt mode 2
  CALL 26853              ; Clear areas of memory and initialise some variables
  CALL 26747              ; Draw Input Selection Menu
  LD A,65                 ; Default to "A: Keyboard"
  CALL 37857              ; Change input device (A=Keyboard, B=Kempston,
                          ; C=Fuller, etc.) depending on which key was pressed
                          ; (forced to keyboard as A is 65)
  CALL 37333              ; Process keyboard / joystick input for menu, and
                          ; load ASCII code of shortcut for selected (i.e.
                          ; SPACE or fire pressed) item into A
  CP 70                   ; If "F" pressed (INSTRUCTIONS)...
  JR Z,26737              ; ...then display instructions
  CP 71                   ; If "G" pressed (PLAY GAME)...
  JP Z,26906              ; ...then start a new game
  CP 65                   ; If key lower than "A" pressed...
  JR C,26689              ; ...then loop back to 26689
  CP 70                   ; If key higher than "F" pressed...
  JR NC,26689             ; ...then loop back to 26689
  EX AF,AF'               ; Switch registers
  LD A,(40140)            ; Load current input device selection into A'
  EX AF,AF'               ; Switch registers
  LD (40140),A            ; Store new input device selection
  EX AF,AF'               ; Switch registers
  SUB 65                  ; Subtract 65 to get index of previous input device
                          ; selection
  ADD A,12                ; Add 12, to give y-coordinate of previous selection
                          ; in menu
  LD B,A                  ; Load this y-coordinate into B
  LD C,1                  ; Load 1 (x-coordinate) into C
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  LD (HL),71              ; Set attribute at this position to 71 (white INK,
                          ; black PAPER, BRIGHT) to "undo" selection glow
  JR 26689                ; Loop back to 26689
  CALL 26788              ; Display instructions
  JR 26686                ; Loop back to 26689

; Return to Basic
;
; Used by the routine at 35420.
  IM 1                    ; Set Interrupt Mode 1
  EI                      ; Enable interrupts
  RST 8                   ; Return to BASIC...

; Data block at 26746
  DEFB 255                ; ...

; Draw Input Device Selection Menu
;
; Used by the routine at 26673.
  CALL 37816              ; Clear Display File
  LD A,70                 ; Load system variable ATTR T with 70 (yellow INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  CALL 37841              ; Flood Attribute File with current value in system
                          ; variable ATTR T
  LD A,5                  ; Draw window 5 ("SPELLBOUND A TRUE GRAPHIC ADVENTURE
                          ; BY DAVID JONES COPYRIGHT 1985" window)...
  CALL 36987              ; ...at top of screen above input selection menu
                          ; window...
  LD HL,43090             ; ...and print the text within...
  CALL 36725              ; ...
  LD A,6                  ; Display the input selection menu window...
  CALL 36979              ; ...
  LD HL,46822             ; ...and print the text within...
  CALL 36725              ; ...
  CALL 38108              ; Set parameters for and play downward scale sound
  XOR A                   ; Clear last pressed key...
  LD (23560),A            ; ...
  RET                     ; Return

; Display Instructions Windows
;
; Used by the routines at 26673 and 32258.
  LD A,7                  ; Draw window 7...
  CALL 36987              ; ...
  LD HL,46899             ; Point HL to location of text for 1st instructions
                          ; window
  CALL 36725              ; Print text
  CALL 26835              ; Wait for a key-press then beep
  LD A,8                  ; Draw window 8...
  CALL 36987              ; ...
  LD HL,47115             ; Point HL to location of text for 2nd instructions
                          ; window
  CALL 36725              ; Print text
  CALL 26835              ; Wait for a key-press then beep
  LD A,9                  ; Draw window 9...
  CALL 36987              ; ...
  LD HL,47200             ; Point HL to location of text for 3rd instructions
                          ; window
  CALL 36725              ; Print text
  CALL 26835              ; Wait for a key-press then beep
  XOR A                   ; Set last key-press to null...
  LD (23560),A            ; ...
  RET                     ; Return

; Wait for a Key-Press then Beep
;
; Used by the routines at 26788 and 35420. Output: A  ASCII index of key
; pressed
  XOR A                   ; Set last key-press to null...
  LD (23560),A            ; ...
  HALT                    ; Wait for interrupt
  LD A,(23560)            ; Load last pressed key into A
  OR A                    ; If A is zero (i.e. no key pressed)...
  JR Z,26840              ; ...then loop back to 26840
  CALL 38221              ; Make a beep
  CALL 37472              ; Wait for keyboard to be released
  RET                     ; Return

; Clear Areas of Memory and Initialise Some Variables
;
; Used by the routine at 26673.
  LD A,7                  ; Set system variable BORDERCR to 7...
  LD (23624),A            ; ...setting border to black and attribute of bottom
                          ; of screen to white INK, black PAPER
  XOR A                   ; Set "pressed key" to null...
  LD (23560),A            ; ...
  OUT (254),A             ; Reset speaker
  LD HL,23296             ; Write 255 zeroes to 23296 onwards, overwriting
                          ; custom loader...
  LD DE,23297             ; ...
  LD BC,255               ; ...
  LD (HL),A               ; ...
  LDIR                    ; ...
  LD HL,25307             ; Write 8 zeroes from 25307 onwards resetting
                          ; characters' current slot numbers
  LD DE,25308             ; ...
  LD BC,7                 ; ...
  LD (HL),A               ; ...
  LDIR                    ; ...
  LD HL,23383             ; Write 20 zeroes from 23383 onwards resetting table
                          ; of attribute memory addresses that are glowing
  LD DE,23384             ; ...
  LD BC,19                ; ...
  LD (HL),A               ; ...
  LDIR                    ; ...
  LD H,A                  ; Set HL to zero...
  LD L,A                  ; ...
  LD (65532),HL           ; Reset Magic Knight's action flags
  RET                     ; Return


; Initialise Data and Start a New Game
;
; Used by the routine at 26673.
  LD A,(40140)            ; Load input device selection into A
  CALL 37857              ; Change input device based on A
  CALL 37816              ; Clear Display File
  LD A,70                 ; Flood Attribute File with value 70 (yellow INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  CALL 37841              ; ...
  LD HL,42170             ; Copy initial characters' stats into "current"
                          ; (modifiable) slots...
  LD DE,25315             ; ...
  LD BC,72                ; ...
  LDIR                    ; ...
  LD HL,40141             ; Copy initial Magic Knight properties (position)
                          ; into "current" (modifiable) slots...
  LD BC,8                 ; ...
  LDIR                    ; ...
  LD HL,41017             ; Copy initial characters' inventories into "current"
                          ; (modifiable) slots...
  LD BC,45                ; ...
  LDIR                    ; ...
  LD HL,41062             ; Copy initial characters' positions into "current"
                          ; (modifiable) slots...
  LD BC,24                ; ...
  LDIR                    ; ...
  LD HL,41086             ; Copy initial objects' locations into "current"
                          ; (modifiable) slots (at 25464)...
  LD BC,150               ; ...
  LDIR                    ; ...
  XOR A                   ; Set A to zero
  LD (23675),A            ; Set UDG system variable to zero...
  LD (23676),A            ; ...
  LD (23382),A            ; Set Lift control panel to display R as current
                          ; floor
  LD (41713),A            ; Set left-hand exit of the left-most Roof Garden
                          ; room to lead to the Lift
  INC A                   ; Set right-hand exit of The Lift to lead to the Roof
                          ; Garden (i.e. move the Lift to the roof)...
  LD (41712),A            ; ...
  LD A,255                ; Set left-hand exits of left-most rooms on all other
                          ; floors to be inaccessible (i.e. Lift isn't
                          ; there!)...
  LD (41729),A            ; ...4th Floor...
  LD (41745),A            ; ...3rd Floor...
  LD (41761),A            ; ...2nd Floor...
  LD (41777),A            ; ...1st Floor...
  LD (41793),A            ; ...Ground Floor...
  LD (41809),A            ; ...and Basement
  CALL 35495              ; Set Magic Knight's available action flags
  XOR A                   ; Set A to zero
  LD (23560),A            ; Set last key pressed to NULL (system variable)
  LD (23484),A            ; Set unused memory address to zero
  LD (23407),A            ; Set number of 1/50 seconds elapsed to zero
  LD H,A                  ; Load HL with zero...
  LD L,A                  ; ...
  LD (23405),HL           ; Set number of minutes elapsed to zero
  LD (23672),A            ; Set system variable FRAMES to zero
  LD (23673),HL           ; ...
  INC A                   ; Set A to 1
  LD (25307),A            ; Set Gimbal's current slot to 1
  LD (65528),A            ; Set temporary store for Magic Knight's frame number
                          ; to zero
  LD (23505),A            ; Set "Animate Magic Knight's Puff of Smoke
                          ; Appearance on Next Room Redraw" flag
  LD A,48                 ; Set number of hours left...
  LD (23404),A            ; ...
  LD A,127                ; Set Gimbal's current attribute to 127 (white INK,
                          ; white PAPER, BRIGHT)...
  LD (29939),A            ; ...
  LD A,139                ; Set read-text property of the Crystal Ball to
                          ; 139...
  LD (42292),A            ; ...
  LD HL,25443             ; Point HL at Thor's current position
  LD BC,1791              ; Load B with 6 and C with 255
  INC C                   ; Increase C (current character index)
  PUSH BC                 ; Store B and C
  LD B,C                  ; Copy C into B
  LD C,(HL)               ; Load character's screen number into C
  PUSH HL                 ; Store HL
  CALL 36327              ; Assign a slot in room C to character B and get x-
                          ; and y-coordinates in BC
  POP HL                  ; Restore HL
  INC HL                  ; Advance HL to character's x-coordinate
  LD (HL),C               ; Update current x-coordinate based upon position of
                          ; assigned slot
  INC HL                  ; Advance HL to character's y-coordinate
  LD (HL),B               ; Update current y-coordinate based upon position of
                          ; assigned slot
  INC HL                  ; Advance HL to start of next character's data
  POP BC                  ; Restore B and C
  DJNZ 27058              ; Repeat loop for next character
  LD A,69                 ; Assign an attribute of 69 (cyan INK, black PAPER,
                          ; BRIGHT) to...
  LD (42360),A            ; ...Broken Glass...
  LD (42640),A            ; ...and Teleport Pad
  LD L,41                 ; Set room layout pointer for "The Wall" to 53289...
  LD H,208                ; ...
  LD (51971),HL           ; ...
  LD HL,33565             ; Point HL at start of character summoning sequence
                          ; to return them home
  LD (23503),HL           ; Store this at 23503
  LD A,9                  ; Make right-wall in Secret Tunnel Entrance height 9
                          ; (i.e. full height of room)...
  LD (53598),A            ; ...
  LD A,8                  ; Set character whose turn it is to move to Banshee
                          ; (8)...
  LD (55218),A            ; ...
  LD A,21                 ; Load A with 21 (The Start Room)
  CALL 27865              ; Move Magic Knight into room A, initialise
                          ; room-specific data and draw room
  SET 0,(IY+65)           ; Set "Update Game Time and Locate Arrow Glow" flag
  JP 27189                ; Jump into Main Game Loop (process keyboard input
                          ; and move Magic Knight, enter menus or execute other
                          ; command)

; Print "HELLO HACKER" Text, Animate Starfield and Reset Spectrum upon
; Key-Press
;
; Used by the routine at 26624.
  LD SP,24539             ; Set Stack Pointer to 24529
  XOR A                   ; Set A to zero
  OUT (254),A             ; Reset speaker state and border to black
  LD HL,16384             ; Fill Display File with zeroes (i.e. black out the
                          ; screen)
  LD DE,16385             ; ...
  LD BC,6144              ; ...
  LD (HL),A               ; ...
  LDIR                    ; ...
  LD A,71                 ; Load A with 71
  LD (23693),A            ; Set system variable ATTR P (permanent colours) to
                          ; 71 (White INK, black PAPER, BRIGHT)
  LD (23695),A            ; Set system variable ATTR T to 71 (White INK, black
                          ; PAPER, BRIGHT)
  LD BC,767               ; Flood Attribute File with value 71 (white INK,
                          ; black PAPER, BRIGHT)
  LD (HL),A               ; ...
  LDIR                    ; ...
  LD HL,20480             ; Set Display File address to print text
  LD (36488),HL           ; ...
  LD HL,43054             ; Point HL at "HELLO HACKER" text
  CALL 36725              ; Print text to screen
  CALL 38884              ; Animate starfield until a key is pressed
  JP 0                    ; Reset the Spectrum

; Redraw Magic Knight's Current Room and Return to Main Game Loop
;
; Used by the routines at 30222 and 35420.
  LD A,(65529)            ; Load A with Magic Knight's current room
  CALL 27865              ; Move Magic Knight into room A, initialise
                          ; room-specific data and draw room
  JR 27189                ; Jump into Main Game Loop (process keyboard input
                          ; and move Magic Knight, enter menus or execute other
                          ; command)

; Main Game Loop - Process Keyboard Input and Move Magic Knight, Enter Menus or
; Execute Other Command
;
; Used by the routine at 35420.
  CALL 34821              ; Update Magic Knight's current frame based on
                          ; x-coordinate
  LD (65528),A            ; Store frame number at 65528...
  LD (25390),A            ; ...and in Magic Knight's current data
  XOR A                   ; Set A to zero (Magic Knight) and...
  CALL 39224              ; ...draw Magic Knight (erase old frame and draw new
                          ; frame)
; This entry point is used by the routines at 26906, 27168, 31636, 32035,
; 32194, 32258, 32390, 32655, 33312, 33593 and 33663.
  CALL 29763              ; Run checks and updates (Magic Knight's current room
                          ; and room-specific routines)
  CALL 27495              ; Handle Magic Knight's fall
  LD A,127                ; Reset bit 7 in A to select the keyboard half-row
                          ; SPACE - B
  IN A,(254)              ; Read the keyboard
  RRA                     ; Reset Carry Flag if SPACE pressed, else set it
  JR C,27213              ; SPACE was not pressed, so skip ahead to 27213
  LD A,254                ; Reset bit 0 in A to select the keyboard half-row
                          ; SHIFT - V
  IN A,(254)              ; Read the keyboard
  RRA                     ; Reset Carry Flag if SHIFT pressed, else set it
  LD HL,43450             ; Point HL at "BREAK KEY PRESSED" text
  JP NC,35101             ; If SHIFT was pressed (i.e. SHIFT-SPACE, or BREAK)
                          ; jump to "Game over" window routine and exit
  CALL 27666              ; Kill Magic Knight's x-velocity if he cannot
                          ; horizontally pass through a block beside him
  CALL 37876              ; Capture keyboard/joystick input into A
  BIT 0,A                 ; If "left" pressed then...
  JP NZ,27307             ; Skip ahead to Move Left Subroutine
  BIT 1,A                 ; If "right" pressed then...
  JP NZ,27358             ; Skip ahead to Move Right Subroutine
  BIT 2,A                 ; If "up" pressed then...
  JP NZ,27374             ; Skip ahead to Jump Subroutine
  BIT 3,A                 ; Check for "down" pressed

; Routine fragment at 27236
;
; This is the conditional jump to the cheat / debug routine which is
; overwritten by the instructions between 26633 and 26640.
;
; The following three bytes are set to zero (NOP) by the instructions between
; 26633 and 26640. This disables the conditional jump to the cheat / debug
; routine at 35420 (see trivia).
  JP NZ,35420             ; Jump to Select Magic Knight's Room (Cheat / Debug
                          ; Routine - see trivia)
  BIT 4,A                 ; If "fire" pressed then...
  JP NZ,27301             ; Skip ahead to 27301
  LD A,(65528)            ; Set Magic Knight's current frame to stored value...
  LD (25390),A            ; ...
  XOR A                   ; Set A to zero (Magic Knight) and...
  CALL 39224              ; ...draw Magic Knight (erase old frame and draw new
                          ; frame)
  LD A,(23560)            ; Load index of last pressed key into A
  OR A                    ; If last key pressed is null (i.e. key NOT
                          ; pressed)...
  JP Z,27189              ; ...then jump into Main Game Loop (process keyboard
                          ; input and move Magic Knight, enter menus or execute
                          ; other command)
  LD HL,41811             ; Point HL at string of keyboard shortcuts for
                          ; commands
  LD B,A                  ; Load index of key pressed into B
  LD C,0                  ; Set C (index of command shortcut) to zero initially
  LD A,(HL)               ; Load command shortcut from table at 41811 into A
  OR A                    ; If A is zero (i.e. we have reached the last command
                          ; shortcut in the table)...
  JP Z,27189              ; ...then jump into Main Game Loop (process keyboard
                          ; input and move Magic Knight, enter menus or execute
                          ; other command)
  CP B                    ; If key pressed matches current command shortcut...
  JP Z,27280              ; ...then skip ahead to 27280
  INC C                   ; Increase C to advance to next command shortcut to
                          ; test
  INC HL                  ; Advance pointer to next shortcut
  JR 27267                ; Loop back to 27267 for next shortcut
  CALL 37472              ; Wait for keyboard to be released
  LD A,C                  ; Load double the index of command shortcut chosen
                          ; into BC...
  ADD A,A                 ; ...
  LD B,0                  ; ...
  LD C,A                  ; ...
  LD HL,41827             ; Point HL at table of routine start addresses for
                          ; Magic Knight's main menu commands
  ADD HL,BC               ; Add double index of this command's entry as offset,
                          ; so HL now points at address in table of chosen
                          ; command
  LD A,(HL)               ; Load address into HL...
  INC HL                  ; ...
  LD H,(HL)               ; ...
  LD L,A                  ; ...
  XOR A                   ; Set last pressed key to null...
  LD (23560),A            ; ...
  JP (HL)                 ; Execute the command, then return to game
; Fire pressed
  CALL 37486              ; Wait for fire button / key to be released
  JP 31153                ; Display and handle main in-game menu, execute
                          ; selected command and return to game
; Left pressed
  LD HL,23470             ; If "Magic Knight Can't Move Left" flag is set...
  BIT 0,(HL)              ; ...
  JP NZ,27254             ; ...then loop back to start of keyboard check
                          ; routine
  LD HL,34824             ; Load HL with 34824 (left-facing version of update
                          ; Magic Knight's current frame routine)
  EX AF,AF'               ; Switch AF and AF'
  LD A,254                ; Set Magic Knight's x-velocity to minus 2...
  LD (25391),A            ; ...
  LD (27405),A            ; Prepare to set Magic Knight's x-velocity to minus 2
  LD (34822),HL           ; Set instruction at 34821 to jump to 34824
                          ; (left-facing version of update Magic Knight's
                          ; current frame routine)
  EX AF,AF'               ; Switch AF and AF' (A now holds pressed controls
                          ; bitmap)
  BIT 2,A                 ; If "up" was also pressed...
  JR NZ,27378             ; ...then skip ahead to 27378 (jumping subroutine)
  XOR A                   ; Set Magic Knight's current y-velocity to zero...
  LD (25392),A            ; ...
  CALL 34821              ; Update Magic Knight's current frame based on
                          ; x-coordinate...
  LD (25390),A            ; ...
  LD (65528),A            ; Store frame number at 65528
  XOR A                   ; Set A to zero (Magic Knight) and...
  CALL 39224              ; ...draw Magic Knight (erase old frame and draw new
                          ; frame)
  CALL 27495              ; Handle Magic Knight's fall
  JP 27254                ; Loop back for next key / control press
; Right pressed
  LD HL,23470             ; If "Magic Knight Can't Move Right" flag is set...
  BIT 1,(HL)              ; ...
  JP NZ,27254             ; ...then loop back to start of keyboard check
                          ; routine
  LD HL,34838             ; Load HL with 34838 (right-facing version of update
                          ; Magic Knight's current frame routine)
  EX AF,AF'               ; Switch AF and AF'
  LD A,2                  ; Jump to 27321, setting Magic Knight's x-velocity to
                          ; 2...
  JR 27321                ; ...
; Up pressed
  XOR A                   ; Prepare to set Magic Knight's x-velocity to zero...
  LD (27405),A            ; ...
  LD HL,41859             ; Point HL at start of Magic Knight's y-velocities
                          ; sequence table
  LD (41857),HL           ; Store current position in Magic Knight's
                          ; y-velocities sequence table at 41857
  LD A,(25388)            ; Load Magic Knight's current y-coordinate into A
  CP 8                    ; If y-coordinate is less than 8...
  JP C,27468              ; ...then jump to 27468 (exit loop as Magic Knight
                          ; can't get any higher!)
  LD HL,(41857)           ; Load HL with current position in Magic Knight's
                          ; y-velocities sequence table
  LD A,(HL)               ; Load the current y-velocity in the sequence into A
  NEG                     ; Negate (as Magic Knight is jumping upwards)
  OR A                    ; If A is zero...
  JR Z,27468              ; ...jump to 27468 (exit loop as we have reached the
                          ; end of the sequence)
  LD (25392),A            ; Load A into Magic Knight's y-velocity
; The operand of the instruction at 27404 represents the x-velocity value
; stored previously. This is modified by the instruction at 27375.
  LD A,0                  ; Set Magic Knight's x-velocity...
  LD (25391),A            ; ...
  CALL 27666              ; Kill Magic Knight's x-velocity if he cannot
                          ; horizontally pass through a block beside him
  LD A,(25391)            ; Load Magic Knight's x-velocity into B...
  LD B,A                  ; ...
  LD A,(23470)            ; Load Magic Knight movement flags into A
  XOR B                   ; Check:
  CP 255                  ; If x-velocity is -2 (left), and Magic Knight can't
                          ; move left...
  JP Z,27480              ; ...then jump ahead to 27480
  CP 253                  ; If x-velocity is -2 (left), and Magic Knight can't
                          ; move left or right...
  JP Z,27480              ; ...then jump ahead to 27480
  CP 1                    ; If x-velocity is +2 (right), and Magic Knight can't
                          ; move left or right...
  JP Z,27480              ; ...then jump ahead to 27480
  OR A                    ; If x-velocity is +2 (right), and Magic Knight can't
                          ; move right...
  JP Z,27480              ; ...then jump ahead to 27480
  CALL 34821              ; Update Magic Knight's current frame based on
                          ; x-coordinate...
  LD (25390),A            ; ...
  LD (65528),A            ; Store frame number at 65528
  CALL 27809              ; Kill Magic Knight's jump if he cannot vertically
                          ; pass through a block above him
  PUSH AF                 ; Store AF
  XOR A                   ; Set A to zero (Magic Knight) and...
  CALL 39224              ; ...draw Magic Knight (erase old frame and draw new
                          ; frame)
  POP AF                  ; Restore AF
  JR NZ,27468             ; If Magic Knight's jump was impeded by a block above
                          ; him then jump to 27468
  CALL 29763              ; Run checks and updates (Magic Knight's current room
                          ; and room-specific routines)
  LD HL,(41857)           ; Load HL with current position in Magic Knight's
                          ; y-velocities sequence table at 41857
  INC HL                  ; Advance to next y-velocity in the sequence
  JR 27381                ; Loop back to 27381
  CALL 34821              ; Update Magic Knight's current frame based on
                          ; x-coordinate
  LD (65528),A            ; Store frame number at 65528
  CALL 27490              ; Handle Magic Knight's fall, preserving x-velocity
  JP 27254                ; Loop back to start of keyboard check routine
  XOR A                   ; Set Magic Knight's x-velocity to zero...
  LD (25391),A            ; ...
  LD (27405),A            ; Prepare to set Magic Knight's x-velocity to zero
  JP 27439                ; Jump back to 27439

; Handle Magic Knight's Fall, Preserving x-Velocity
;
; Used by the routine at 27176.
  LD A,(27405)            ; Load Magic Knight's stored x-velocity
  JR 27496                ; Handle Magic Knight's fall

; Handle Magic Knight's Falls
;
; Used by the routine at 27176.
  XOR A                   ; Set A to zero
; This entry point is used by the routine at 27490.
  LD (27531),A            ; Prepare to set Magic Knight's x-velocity to A
  LD HL,41872             ; Point HL at end of table of y-velocities sequence
                          ; for jumping and falling
  LD (41857),HL           ; Store current position at 41857
  LD A,(23470)            ; If Magic Knight's movement flags are unset...
  OR A                    ; ...
  JR Z,27515              ; ...then skip ahead to 27515
  XOR A                   ; Prepare to set Magic Knight's x-velocity to zero...
  LD (27531),A            ; ...
  LD HL,(41857)           ; Load current position in y-velocities table into HL
  LD A,(HL)               ; Load current y-velocity from table into A
  CP 7                    ; If velocity is 7...
  JR Z,27527              ; ...then skip ahead to 28527
  DEC HL                  ; Step pointer back one byte in y-velocities table
  LD (41857),HL           ; Store pointer
  LD (25392),A            ; Load last y-velocity read from table into Magic
                          ; Knight's y-velocity
; The operand of the instruction at 27530 represents the x-velocity value
; stored previously. This is modified by the instructions at 27496, 27512 and
; 27660.
  LD A,0                  ; Set Magic Knight's x-velocity...
  LD (25391),A            ; ...
  LD A,(25387)            ; Load Magic Knight's current x-coordinate into A
  ADD A,4                 ; Add 4 to x-coordinate
  CALL 30123              ; Divide x-coordinate by eight, rounding down to
                          ; nearest integer
  LD C,A                  ; Load result (Magic Knight's x-coordinate in
                          ; characters) into C, setting B to zero...
  LD B,0                  ; ...
  LD A,(25388)            ; Load Magic Knight's current y-coordinate into A
  AND 7                   ; If y-coordinate is a multiple of eight...
  JR Z,27555              ; ...then skip ahead to 27555
  LD B,8                  ; Set B to 8, as we need to look one character block
                          ; lower due to Magic Knight spanning five, rather
                          ; than four, characters [y-coordinate is not a
                          ; multiple of eight]
  LD A,(25388)            ; Load Magic Knight's current y-coordinate into A
  ADD A,B                 ; Add B to current y-coordinate (i.e. y-coordinate of
                          ; highest full character block spanned by Magic
                          ; Knight)
  ADD A,32                ; Add 32 (as Magic Knight is 32 pixels high, so now
                          ; y-coordinate of highest full character block not
                          ; occupied by Magic Knight)
  RRCA                    ; Divide result by 8, removing remainder...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  LD B,A                  ; Load result (y-coordinate in characters) into B
  CALL 36586              ; Point HL at Terrain Interaction Data for character
                          ; coordinates x=C, y=B (block that Magic Knight is
                          ; "falling through")
  BIT 7,(HL)              ; If block cannot be passed vertically (i.e. Magic
                          ; Knight has landed)...
  JP NZ,27627             ; ...then skip ahead to 27627
  INC HL                  ; Advance to next block right (as Magic Knight is two
                          ; character blocks wide) in Terrain Interaction Table
  BIT 7,(HL)              ; If block cannot be passed vertically (i.e. Magic
                          ; Knight has landed)...
  JP NZ,27627             ; ...then skip ahead to 27627
  CALL 27666              ; Kill Magic Knight's x-velocity if he cannot
                          ; horizontally pass through a block beside him
  LD A,(25391)            ; Load Magic Knight's x-velocity into B...
  LD B,A                  ; ...
  LD A,(23470)            ; Load Magic Knight's movement flags into A
  XOR B                   ; Check:
  CP 255                  ; If x-velocity is -2 (left), and Magic Knight can't
                          ; move left...
  JP Z,27656              ; ...then jump ahead to 27656
  CP 253                  ; If x-velocity is -2 (left), and Magic Knight can't
                          ; move left or right...
  JP Z,27656              ; ...then jump ahead to 27656
  CP 1                    ; If x-velocity is +2 (right), and Magic Knight can't
                          ; move left or right...
  JP Z,27656              ; ...then jump ahead to 27656
  OR A                    ; If x-velocity is +2 (right), and Magic Knight can't
                          ; move right...
  JP Z,27656              ; ...then jump ahead to 27656
  CALL 34821              ; Update Magic Knight's current frame based on
                          ; x-coordinate
  LD (65528),A            ; Store frame number at 65528
  XOR A                   ; Set A to zero (index for Magic Knight) and...
  CALL 39224              ; ...draw Magic Knight (erase old frame and draw new
                          ; frame)
  CALL 29763              ; Run checks and updates (Magic Knight's current room
                          ; and room-specific routines)
  JP 27505                ; Loop back to 27505
  LD A,(25388)            ; Load Magic Knight's current y-coordinate into A
                          ; (e.g. 105)
  AND 15                  ; Retain only pixel-within-two-characters component
                          ; (e.g. 9 pixels down the pair of character blocks)
  NEG                     ; Negate (i.e. -9 pixels)
  AND 15                  ; Retain only pixel-within-two-characters component
                          ; (e.g. 7 pixels up the pair of character blocks, or
                          ; 7 pixels down to the ground)
  LD (25392),A            ; Set Magic Knight's y-velocity so that it will take
                          ; his feet to the ground
  LD A,(65528)            ; Set Magic Knight's frame number to match stored
                          ; value...
  LD (25390),A            ; ...
  XOR A                   ; Set A to zero (Magic Knight) and...
  CALL 39224              ; ...draw Magic Knight (erase old frame and draw new
                          ; frame)
  LD HL,0                 ; Set Magic Knight's x- and y-velocities to zero...
  LD (25391),HL           ; ...
  RET                     ; Return (Magic Knight has landed)
  XOR A                   ; Set Magic Knight's x-velocity to zero...
  LD (25391),A            ; ...
  LD (27531),A            ; Prepare to set Magic Knight's x-velocity to zero
  JP 27611                ; Jump back to 27611

; Kill Magic Knight's x-Velocity if he Cannot Horizontally Pass Through a Block
; Beside Him
;
; Used by the routines at 27176 and 27495.
  LD A,(23410)            ; Load B with Magic Knight's "temporary store"
                          ; movement flags...
  LD B,A                  ; ...
  LD A,(25387)            ; Load Magic Knight's x-coordinate into A
  CP 5                    ; If x-coordinate is less than 5...
  JP C,27685              ; ...then jump ahead to 27685
  CP 229                  ; If x-coordinate is greater than 229...
  JP NC,27685             ; ...then jump ahead to 27685
  LD B,0                  ; Set B (Magic Knight's Temporary Store Movement
                          ; Flags) to zero (i.e. Magic Knight is not at the
                          ; outer edges of his current room, so can move both
                          ; left and right)
  LD A,B                  ; Load Magic Knight's Temporary Store Movement Flags
                          ; into A
  LD (23470),A            ; Set Magic Knight's movement flags
  LD A,(25388)            ; Load Magic Knight's y-coordinate into A
  LD B,A                  ; Copy into B
  LD A,(25392)            ; Add Magic Knight's y-velocity to y-coordinate in
                          ; A...
  ADD A,B                 ; ...
  LD (23479),A            ; Store this new (predicted) y-coordinate at 23479
  LD C,4                  ; Set C to 4 (as Magic Knight is normally four
                          ; characters tall)
  AND 7                   ; If predicted y-coordinate is divisible by eight...
  JR Z,27707              ; ...then skip ahead to 27707...
  INC C                   ; ...else Magic Knight must be airborne and at
                          ; non-integer y-coordinate, and so spans five
                          ; character blocks rather than four
  LD A,C                  ; Load A with number of vertical characters spanned
                          ; by Magic Knight...
  LD (27740),A            ; ...and update instructions at 27739...
  LD (27781),A            ; ...and 27780 with this value
  LD A,(25387)            ; Load Magic Knight's current x-coordinate into C...
  LD C,A                  ; ...
  LD A,(25391)            ; Add Magic Knight's x-velocity to x-coordinate in
                          ; A...
  ADD A,C                 ; ...
  LD (23478),A            ; Store this new (predicted) x-coordinate at 23478
  CALL 30123              ; Divide predicted x-coordinate by eight, rounding
                          ; down to nearest integer...
  LD C,A                  ; ...and load into C
  LD A,(23479)            ; Load predicted y-coordinate into A...
  CALL 30123              ; ...divide it by eight, rounding down to nearest
                          ; integer...
  LD (23479),A            ; ...store back at 23479...
  LD B,A                  ; ...and load into B
; The operand of the instruction at 27739 represents the number of character
; blocks to check. This is modified by the instruction at 27708.
  LD A,0                  ; Load number of characters (vertically) to check for
                          ; impassibility
  PUSH AF                 ; Store remaining number of character blocks spanned
                          ; by Magic Knight vertically to check
  PUSH BC                 ; Store predicted x- and y-coordinates (characters)
  CALL 36586              ; Point HL at Terrain Interaction Data for character
                          ; coordinates x=C, y=B
  POP BC                  ; Restore predicted x- and y-coordinates (characters)
  BIT 5,(HL)              ; If bit 5 of terrain data is set (i.e. Magic Knight
                          ; cannot pass block horizontally)...
  JR NZ,27758             ; ...then jump ahead to 27758
  INC B                   ; Advance check to next character down
  POP AF                  ; Restore remaining number of character blocks
                          ; spanned by Magic Knight vertically to check
  DEC A                   ; Decrease count of remaining character blocks by one
  JR NZ,27741             ; Loop back to 27741 to check next block down
  JR 27767                ; Skip over setting Magic Knight's Cannot Move Left
                          ; Flag as there are no obstructions to the left
  POP AF                  ; Restore AF
  LD A,(23470)            ; Set "Magic Knight Cannot Move Left" flag...
  OR 1                    ; ...
  LD (23470),A            ; ...
  LD A,(23478)            ; Load Magic Knight's predicted x-coordinate (pixels)
                          ; into A...
  ADD A,15                ; ...and add 15
  CALL 30123              ; Divide A by eight, rounding down to nearest
                          ; integer...
  LD C,A                  ; ...and load into C
  LD A,(23479)            ; Load Magic Knight's predicted y-coordinate
                          ; (characters) into B...
  LD B,A                  ; ...
; The operand of the instruction at 27780 represents the number of character
; blocks to check. This is modified by the instruction at 27711.
  LD A,0                  ; Load number of characters (vertically) to check for
                          ; impassibility
  PUSH AF                 ; Store AF (remaining number of vertical characters
                          ; to check for impassibility)
  PUSH BC                 ; Store BC (predicted y- and x-coordinates in
                          ; characters)
  CALL 36586              ; Point HL at Terrain Interaction Data for character
                          ; coordinates x=C, y=B
  POP BC                  ; Restore predicted coordinates
  BIT 5,(HL)              ; If bit 5 is set (i.e. Magic Knight cannot pass
                          ; block horizontally)...
  JR NZ,27799             ; ...jump ahead to 27799
  INC B                   ; Increase y-coordinate by one character
  POP AF                  ; Restore AF
  DEC A                   ; Decrease number of remaining blocks to check
  JR NZ,27782             ; If number of remaining blocks to check is not zero
                          ; then loop back to 27782
  JR 27808                ; Exit routine
  POP AF                  ; Restore AF
  LD A,(23470)            ; Set "Magic Knight Cannot Move Right" flag...
  OR 2                    ; ...
  LD (23470),A            ; ...
  RET                     ; Return

; Kill Magic Knight's Jump if he Cannot Vertically Pass Through a Block Above
; Him
;
; Used by the routine at 27176. Output: A  0 (if Magic Knight's jump was not
; impeded) or 1 (if the jump was impeded)
  LD A,(25388)            ; Load Magic Knight's current y-coordinate into B...
  LD B,A                  ; ...
  LD A,(25392)            ; Load A with Magic Knight's y-velocity
  ADD A,B                 ; Add y-velocity to y-coordinate in A
  CALL 30123              ; Divide A by eight, rounding down to nearest integer
  LD B,A                  ; Load Magic Knight's y-coordinate (characters) into
                          ; B
  LD A,(25387)            ; Load Magic Knight's current x-coordinate into A
  ADD A,4                 ; Add 4 to x-coordinate (to get point roughly quarter
                          ; of the way through Magic Knight's total width)
  CALL 30123              ; Divide A by eight, rounding down to nearest integer
  LD C,A                  ; Load Magic Knight's current x-coordinate
                          ; (characters) into C
  CALL 36586              ; Point HL at Terrain Interaction Data for character
                          ; coordinates x=C, y=B
  BIT 7,(HL)              ; If bit 7 of Magic Knight's current position's
                          ; terrain data (block is impassable vertically) is
                          ; set then...
  JR NZ,27857             ; ...kill Magic Knight's y-velocity and exit routine
  INC HL                  ; Advance to next character block along in Terrain
                          ; Interaction Data
  BIT 7,(HL)              ; If bit 7 of this position's terrain data (block is
                          ; impassable vertically) is set then...
  JR NZ,27857             ; ...kill Magic Knight's y-velocity and exit routine
  DEC B                   ; Advance y-coordinate by one character (to get point
                          ; roughly three quarters of the way through Magic
                          ; Knight's total width)
  CALL 36586              ; Point HL at Terrain Interaction Data for character
                          ; coordinates x=C, y=B
  BIT 7,(HL)              ; If bit 7 of this position's terrain data (block is
                          ; impassable vertically) is set then...
  JR NZ,27857             ; ...kill Magic Knight's y-velocity and exit routine
  INC HL                  ; Advance to next character block along in Terrain
                          ; Interaction Data
  BIT 7,(HL)              ; If bit 7 of this position's terrain data (block is
                          ; impassable vertically) is set then...
  JR NZ,27857             ; ...kill Magic Knight's y-velocity and exit routine
  XOR A                   ; Set A to zero, as jump was not impeded
  RET                     ; Return
  XOR A                   ; Set Magic Knight's y-velocity to zero...
  LD (25392),A            ; ...
  LD A,1                  ; Set A to one
  OR A                    ; Reset zero flag
  RET                     ; Return

; Move Magic Knight into Room A, Initialise Room-Specific Data and Draw Room
;
; Used by the routines at 26906, 27168 and 29514. Input:  A  Room index
  LD (65529),A            ; Update Magic Knight's current room to be room index
                          ; passed to this routine in A
  LD A,(25315)            ; Decrease Magic Knight's current strength by one...
  DEC A                   ; ...
  LD (25315),A            ; ...
  OR A                    ; Set zero flag if strength is zero
  LD HL,43960             ; Point HL to "YOU DIED OF EXHAUSTION" text...
  JP Z,35101              ; ...and if strength is zero, jump to "Game over"
                          ; window routine and exit
  LD A,32                 ; Load 32 into "frame number" property of...
  LD (36187),A            ; ...odd ball 1...
  LD (36195),A            ; ...odd ball 2...
  LD (36203),A            ; ...odd ball 3...
  LD (36211),A            ; ...and odd ball 4
  CALL 30101              ; Indent "SPELLBOUND" text in bottom window to
                          ; indicate Magic Knight's current floor
  LD A,(65529)            ; Flag Magic Knight's current room as visited for
                          ; scoring purposes...
  LD E,A                  ; ...
  LD D,0                  ; ...
  LD HL,23412             ; ...
  ADD HL,DE               ; ...
  LD (HL),1               ; ...
  LD A,7                  ; Set system variable BORDCR to 7...
  LD (23624),A            ; ...
  XOR A                   ; Set A to zero
  OUT (254),A             ; Set border to black and reset speaker state
  LD A,224                ; Set current Terrain Interaction Parameter to
                          ; "impassable horizontally", "impassable vertically"
                          ; and "preserve attribute"...
  LD (23483),A            ; ...
  LD A,71                 ; Set system variable ATTR T to 71 (white INK, black
                          ; PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD A,(23467)            ; Load game progress flags into A
  RRCA                    ; Set A to 2 if Armouris Photonicus has been cast,
                          ; else set A to zero...
  AND 2                   ; ...
  ADD A,69                ; ...add A to 69 (attribute value for cyan INK, black
                          ; PAPER, BRIGHT, i.e. Magic Knight's initial
                          ; attribute)
  LD (25393),A            ; Load this value into Magic Knight's current
                          ; attribute slot
  XOR A                   ; Set brickwork direction flag to zero (horizontal
                          ; mode for floor and ceiling)...
  LD (23476),A            ; ...
  LD HL,24539             ; Point HL at start of Terrain Interaction Data...
  LD DE,24540             ; ...and set 640 bytes from there onwards to 0,
                          ; clearing data...
  LD BC,639               ; ...
  LD (HL),A               ; ...
  LDIR                    ; ...
  LD HL,23383             ; Clear table of glowing Attribute File addresses...
  LD DE,23384             ; ...
  LD BC,19                ; ...
  LD (HL),A               ; ...
  LDIR                    ; ...
  LD (25389),A            ; Set Magic Knight's current frame to erase to zero
                          ; (frame 0 is blank graphic data) so Magic Knight is
                          ; drawn but not erased
  LD (25390),A            ; Set Magic Knight's frame number to zero
  LD HL,16384             ; Set "Display File address to print character to" to
                          ; beginning of Display File...
  LD (36488),HL           ; ...
  LD HL,22528             ; Point attribute cursor to beginning of Attribute
                          ; File...
  LD (23487),HL           ; ...
  LD HL,24539             ; Set Terrain Interaction Table Cursor to point to
                          ; start of Terrain Interaction Table...
  LD (23481),HL           ; ...
  LD A,(65529)            ; Load Magic Knight's current room into A...
  ADD A,A                 ; ...and double the value (as room entries are 2
                          ; bytes wide)
  LD D,0                  ; Load into DE...
  LD E,A                  ; ...
  LD HL,51913             ; ...and add to position of start of table of room
                          ; data addresses...
  ADD HL,DE               ; ...into HL
  LD A,(HL)               ; Read address of room data for this room into HL...
  INC HL                  ; ...
  LD H,(HL)               ; ...
  LD L,A                  ; ...
; Room data is read here
  LD A,(HL)               ; Load byte from room data into A
  OR A                    ; If data is a zero...
  JP Z,28092              ; ...then draw bottom in-game window + room name and
                          ; animate entry (Puff of Smoke) of a character if
                          ; required and return
  CP 160                  ; If data is less than 160...
  JP C,28038              ; ...then skip ahead to 28038
  PUSH HL                 ; Store HL (pointer to current position in current
                          ; room data)
  SUB 230                 ; Subtract 230 from current data
  ADD A,A                 ; Double the remaining value...
  LD E,A                  ; ...and load into DE...
  LD D,0                  ; ...
  LD HL,30170             ; Point HL at table of addresses of room feature
                          ; drawing routines
  ADD HL,DE               ; Add doubled index value as offset to pointer to
                          ; table of room feature drawing routine addresses
  LD A,(HL)               ; Load room feature drawing address into HL...
  INC HL                  ; ...
  LD H,(HL)               ; ...
  LD L,A                  ; ...
  PUSH HL                 ; Transfer room feature drawing address into IX...
  POP IX                  ; ...
  POP HL                  ; Restore HL (pointer to current position in current
                          ; room data)
  JP (IX)                 ; Jump to room feature drawing routine address
; Data is less than 160
  LD B,A                  ; Copy byte of room data into B (repeat counter for
                          ; drawing brickwork / architecture)
  INC HL                  ; Advance pointer to current room data by one byte
  LD A,(HL)               ; Load next byte of room data into A...
  LD C,A                  ; ...and copy into C
  OR A                    ; If this value is zero...
  JR Z,28050              ; ...then skip ahead to 28050
  INC HL                  ; Advance HL by one byte
  LD A,(HL)               ; Load data into system variable ATTR T...
  LD (23695),A            ; ...
  LD A,C                  ; Copy C into A
  CALL 28344              ; Draw a 2-by-2 block of brickwork, depending upon
                          ; brickwork drawing mode, with architecture style A
  DJNZ 28050              ; Loop back to draw next block of brickwork if
                          ; counter is not zero
; This entry point is used by the routines at 28064, 29396 and 29414.
  XOR A                   ; Set brickwork drawing mode to two rows...
  LD (23469),A            ; ...
; This entry point is used by the routines at 28651, 28659, 28667, 28675,
; 28683, 28747, 28841, 28882, 28960, 29032, 29089, 29150, 29184, 29205, 29225,
; 29291, 29356 and 29375.
  INC HL                  ; Advance room data pointer by one byte...
  JP 28007                ; ...and repeat routine for this new data

; Set Brickwork Direction Mode to Vertical and Reset Pointers to Beginning of
; Display
  PUSH HL                 ; Store HL (pointer to current position in current
                          ; room data)
  LD A,1                  ; Set brickwork direction flag to 1 (vertical mode
                          ; for walls)...
  LD (23476),A            ; ...
  LD HL,16384             ; Point HL to start of Display File
  LD (36488),HL           ; Load HL into "memory location to start printing
                          ; character" in character printing routine
  LD HL,22528             ; Point HL to start of Attribute File
  LD (23487),HL           ; Update virtual text cursor (attribute) position to
                          ; 0, 0
  LD HL,24539             ; Set Terrain Interaction Table Cursor to point to
                          ; start of Terrain Interaction Data...
  LD (23481),HL           ; ...
  POP HL                  ; Restore HL (pointer to current position in current
                          ; room data)
  JP 28056                ; Return to room drawing routine, setting brickwork
                          ; drawing mode to two rows (so walls don't have holes
                          ; in them!)

; Draw Bottom in-Game Window + Room Name and Animate Entry (Puff of Smoke) of a
; Character if Required
;
; Used by the routine at 27865. Output: A  Magic Knight's current room
  CALL 28272              ; Print Magic Knight's current room name to top of
                          ; screen
  LD A,15                 ; Prepare to draw window 15 (window at bottom of
                          ; screen)
  HALT                    ; Wait for interrupt
  CALL 36987              ; Draw window 15
  LD HL,43136             ; Point HL to "SPELLBOUND COPYRIGHT..." text (shown
                          ; in window at bottom of in-game screen when Magic
                          ; Knight is not carrying the Mirror)
  PUSH HL                 ; Store HL
  LD A,35                 ; Load A with object index of 35 (Mirror)
  CALL 34256              ; Set Zero Flag if Magic Knight is carrying the
                          ; Mirror
  POP HL                  ; Restore HL
  JR NZ,28116             ; If Magic Knight is not carrying the Mirror, then
                          ; skip to 28116
  LD HL,43913             ; Point to " * STRENGTH *  1  2  3  4  5" text
  CALL 36725              ; Print text at HL to screen
  CALL 36215              ; Draw health bar at bottom of screen
  CALL 36275              ; Draw objects in Magic Knight's inventory to bottom
                          ; of screen if he is carrying mirror
  CALL 29446              ; Set Magic Knight's action flags and prepare to
                          ; execute room-specific routine for his current room
  CALL 38512              ; Set Terrain Interaction Data for all objects in
                          ; Magic Knight's current room
  CALL 30129              ; Draw lift doors if Magic Knight is at Lift entrance
                          ; on a different floor to the Lift
  XOR A                   ; Set Magic Knight's current frame to erase to zero
                          ; (frame 0 is blank graphic data) so Magic Knight is
                          ; drawn but not erased...
  LD (25389),A            ; ...
  CALL 34821              ; Update Magic Knight's current frame based on
                          ; x-coordinate
  LD (65528),A            ; Store frame number at 65528
  LD (25390),A            ; Set Magic Knight's current frame
  XOR A                   ; Set A to zero (Magic Knight) and...
  CALL 39224              ; ...draw Magic Knight (erase old frame and draw new
                          ; frame)
  CALL 29576              ; Draw all characters in current room and animate
                          ; arrival of any new character
  LD A,71                 ; Load system variable ATTR T with 71 (white INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  RES 1,(IY+65)           ; Reset "Disable In-Game Glow" flag
  RES 2,(IY+65)           ; Reset "Characters Can't Move" flag
  LD A,(23505)            ; If "Animate Magic Knight's Puff of Smoke Appearance
                          ; on Next Room Redraw" flag is reset...
  OR A                    ; ...
  JR Z,28264              ; ...then jump ahead to 28264
  LD A,(25390)            ; Load Magic Knight's current frame number into A
  PUSH AF                 ; Store AF (A = Magic Knight's current frame number)
  XOR A                   ; Set Magic Knight's current frame number to zero...
  LD (25390),A            ; ...
  CALL 39224              ; ...draw Magic Knight (erase old frame and draw new
                          ; frame)
  LD A,(25393)            ; Load Magic Knight's current attribute into system
                          ; variable ATTR T...
  LD (23695),A            ; ...
  LD A,(25387)            ; Load Magic Knight's current x-coordinate into A
  RRCA                    ; Divide x-coordinate by eight, rounding down to
                          ; nearest integer...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  LD C,A                  ; Copy x-coordinate (characters) into C
  LD A,(25388)            ; Load Magic Knight's current y-coordinate into A
  RRCA                    ; Divide y-coordinate by eight, rounding down to
                          ; nearest integer...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  LD B,A                  ; Copy y-coordinate (characters) into B
  LD E,63                 ; Load E with 63 (index of Puff of Smoke frame 1)
  PUSH DE                 ; Store DE (E = index of current Puff of Smoke
                          ; animation frame)
  PUSH BC                 ; Store BC (Magic Knight's x- and y-coordinates in
                          ; characters)
  LD A,E                  ; Copy index of first Puff of Smoke animation frame
                          ; into A
  CALL 29950              ; Draw Puff of Smoke frame 1 in XOR mode
  POP BC                  ; Restore BC (Magic Knight's x- and y-coordinates in
                          ; characters)
  POP DE                  ; Restore DE (E = index of current Puff of Smoke
                          ; animation frame)
  LD D,5                  ; Load D with 5 (as there are five frames of the Puff
                          ; of Smoke animation to draw)
  HALT                    ; Wait for interrupts (delay between frames)...
  HALT                    ; ...
  HALT                    ; ...
  HALT                    ; ...
  HALT                    ; ...
  HALT                    ; ...
  PUSH DE                 ; Store DE (D = count of frames to draw, E = graphic
                          ; lookup index)
  PUSH BC                 ; Store BC (Magic Knight's x- and y-coordinates in
                          ; characters)
  LD A,E                  ; Copy E into A (index of current frame of Puff of
                          ; Smoke animation)
  CALL 29950              ; Redraw current frame of Puff of Smoke animation in
                          ; XOR mode, erasing it
  POP BC                  ; Restore BC (Magic Knight's x- and y-coordinates in
                          ; characters)
  POP DE                  ; Restore DE (D = count of frames to draw, E =
                          ; graphic lookup index)
  INC E                   ; Advance index E to next Puff of Smoke frame
  PUSH DE                 ; Store DE (D = count of frames to draw, E = graphic
                          ; lookup index)
  PUSH BC                 ; Store BC (Magic Knight's x- and y-coordinates in
                          ; characters)
  LD A,E                  ; Copy E into A (index of current frame of Puff of
                          ; Smoke animation)
  CALL 29950              ; Draw current frame of Puff of Smoke animation in
                          ; XOR mode
  POP BC                  ; Restore BC (Magic Knight's x- and y-coordinates in
                          ; characters)
  POP DE                  ; Restore DE (D = count of frames to draw, E =
                          ; graphic lookup index)
  DEC D                   ; Decrease D (count of frames to draw)
  JR NZ,28220             ; Loop back to draw next frame if there are any
                          ; remaining
  HALT                    ; Wait for interrupts...
  HALT                    ; ...
  HALT                    ; ...
  HALT                    ; ...
  HALT                    ; ...
  HALT                    ; ...
  LD A,E                  ; Draw final frame in XOR mode, erasing it...
  CALL 29950              ; ...
  POP AF                  ; Restore AF (A = Magic Knight's current frame
                          ; number)
  LD (25390),A            ; Restore Magic Knight's current frame number
  XOR A                   ; Set A to zero (Magic Knight) and...
  CALL 39224              ; ...draw Magic Knight (erase old frame and draw new
                          ; frame)
  XOR A                   ; Reset "Animate Magic Knight's Puff of Smoke
                          ; Appearance on Next Room Redraw" flag...
  LD (23505),A            ; ...
  LD A,(65529)            ; Load Magic Knight's current room into A
  RET                     ; Return

; Print Magic Knight's Current Room Name to Top of Screen
;
; Used by the routine at 28092.
  LD A,71                 ; Load system variable ATTR T with 71 (white INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD HL,54238             ; Point HL to start of list of room names
  LD A,(65529)            ; Load index of Magic Knight's current room into A...
  LD B,A                  ; ...and transfer to B (countdown for search loop)
  LD A,B                  ; Copy value back into A
  OR A                    ; If B is zero then...
  JR Z,28293              ; ...skip ahead to 28293
  CALL 36703              ; Advance HL to start of next zero-terminated string
  DJNZ 28288              ; Repeat until HL points to entry with index same as
                          ; Magic Knight's current room
  LD A,(HL)               ; Get string length data...
  OR A                    ; ...
  RET Z                   ; ...and exit if string is zero-length
  INC HL                  ; Move to first character
  PUSH HL                 ; Store HL (points to Magic Knight's current room
                          ; name text data)
  ADD A,8                 ; Add 8 to length (to get total length including **
                          ; and   **)
  LD B,A                  ; Store length in B
  LD A,32                 ; Subtract string length from total screen width (32
                          ; characters)...
  SUB B                   ; ...
  RRCA                    ; ...and divide by two to obtain number of blank
                          ; characters to leave before writing room name
  AND 31                  ; Ensure value is limited to range 0-31
  LD C,A                  ; Load BC with number of blank characters to leave
                          ; before printing start of string...
  LD B,0                  ; ...
  LD HL,16384             ; ...and add it to 16384 (start of screen data)
  ADD HL,BC               ; HL now points to first Display File byte to modify
                          ; in printing room name
  LD (36488),HL           ; Store this at 36488
  LD HL,28334             ; Load HL with pointer to **   text
  CALL 36725              ; Print text at location HL to screen
  POP HL                  ; Restore HL (actual room name)
  CALL 36725              ; Print text at location HL to screen
  LD HL,28339             ; Load HL with pointer to   ** text
  CALL 36725              ; Print text at location HL to screen
  RET                     ; Return

; Text Data Used in Room Titles as Printed at Top of Screen
  DEFM "**  "             ; Prefix to room name
  DEFM 0                  ; End Marker
  DEFM "  **"             ; Suffix to room name
  DEFM 0                  ; End Marker

; Room Drawing Draw a 2-by-2 Block of Brickwork, then Move Cursor Right or
; Down, Depending Upon Wall Direction Flag
;
; Used by the routines at 27865, 29396 and 29414. Input:  A  Architecture style
; index (e.g. A = C = 19, or 0)
  EXX                     ; Switch BC, DE and HL with BC', DE' and HL'
  LD L,A                  ; Load architecture style index into L
  OR A                    ; If architecture style index is not zero...
  JP NZ,28360             ; ...then jump ahead to 28360
  LD A,(23476)            ; If brickwork direction flag is zero (horizontal
                          ; mode for floor and ceiling)...
  OR A                    ; ...
  JP Z,28510              ; ...then skip ahead to 28510 (blank out bitmap and
                          ; set attribute to current value for 2-by-2 character
                          ; block)
  JP 28471                ; Move location to print and Terrain Interaction
                          ; Cursor down two character rows observing y-wrap,
                          ; then return
  LD H,0                  ; Load four times Architecture Style Index into HL,
                          ; as entries are four bytes wide...
  LD A,L                  ; ...
  ADD A,A                 ; ...
  LD L,A                  ; ...
  ADD HL,HL               ; ...
  LD DE,54617             ; Point DE at Architecture Styles Lookup Table
  ADD HL,DE               ; Add HL (4 times Architecture Style Index) as offset
                          ; to this, in HL (as each entry is 4 bytes wide)
  LD DE,(36488)           ; Load "memory location to start printing character"
                          ; in character printing routine into DE...
  LD (23296),DE           ; ...and store at 23296
  LD A,(HL)               ; Load first architecture style element (top-left)
                          ; into A
  CALL 36510              ; Draw a single character block part of a wall,
                          ; ceiling or floor
  LD DE,(36488)           ; Load "memory location to start printing character"
                          ; in character printing routine into DE...
  INC DE                  ; Advance DE by one byte...
  LD (36488),DE           ; ...and load into "memory location to start printing
                          ; character"
  INC HL                  ; Advance HL to next architecture style element
                          ; (top-right)
  LD A,(HL)               ; Load next architecture style element into A
  CALL 36510              ; Draw a single character block part of a wall,
                          ; ceiling or floor
  INC HL                  ; Advance HL to next architecture style index
                          ; (bottom-left)
  EX DE,HL                ; Switch HL and DE (HL now Display File address to
                          ; print to and DE now pointer to architecture style)
  LD HL,(23296)           ; Advance this pointer down a character row (32 bytes
                          ; from original stored value)...
  LD BC,32                ; ...
  ADD HL,BC               ; ...
  LD (36488),HL           ; Load new position into "memory location to start
                          ; printing character"
  EX DE,HL                ; Switch DE and HL back (HL now pointer to
                          ; architecture style and DE now Display File address
                          ; to print to)
  LD A,(23469)            ; Load brickwork drawing mode into A
  CP 1                    ; If this is 1 [only draw one row of "bricks"]...
  JR Z,28441              ; ...then jump ahead to 28441
  CP 2                    ; If it is not 2 [draw row of bricks and blank row
                          ; beneath]...
  JR NZ,28423             ; ...then jump ahead to 28423...
  LD HL,54617             ; ...else point HL at first entry (blank, i.e. no
                          ; brickwork)
  LD A,(HL)               ; Load brickwork graphic index into A
  CALL 36510              ; Draw a single character block part of a wall,
                          ; ceiling or floor
  LD DE,(36488)           ; Load "memory location to start printing character"
                          ; in character printing routine into DE...
  INC DE                  ; Advance DE by one byte...
  LD (36488),DE           ; ...and load into "memory location to start printing
                          ; character"
  INC HL                  ; Advance HL to next brickwork graphic index...
  LD A,(HL)               ; ...and load into A
  CALL 36510              ; Draw a single character block part of a wall,
                          ; ceiling or floor
  LD HL,(23296)           ; Load previously stored "memory location to start
                          ; printing character" into HL...
  LD (36488),HL           ; ...and place back in character drawing routine
  LD A,(23483)            ; Load stored, "current" Terrain Interaction
                          ; Parameter into A
  LD HL,(23481)           ; Load current Terrain Interaction Table Cursor
                          ; position into HL
  LD (HL),A               ; Set this and the following character blocks to have
                          ; the current Terrain Interaction Flags...
  INC HL                  ; ...
  LD (HL),A               ; ...
  LD A,(23469)            ; Load brickwork drawing mode into A
  OR A                    ; If brickwork drawing mode is not zero (draw two
                          ; rows)...
  JP NZ,28471             ; ...then skip ahead to 28471 (move location to print
                          ; and Terrain Interaction Cursor down two character
                          ; rows observing y-wrap, then return)
  LD A,(HL)               ; Load last written Terrain Interaction Parameter
                          ; back into A
  LD BC,31                ; Advance Terrain Interaction Table Cursor by 31
                          ; bytes (to character below starting position)...
  ADD HL,BC               ; ...
  LD (HL),A               ; Set this and the following character blocks to have
                          ; the current Terrain Interaction Flags...
  INC HL                  ; ...
  LD (HL),A               ; ...
; Mode 1 or 2, Draw one row of bricks This entry point is used by the routine
; at 28510.
  LD A,(23476)            ; If brickwork direction flag is not zero (horizontal
                          ; mode for floor and ceiling)...
  OR A                    ; ...
  JR NZ,28561             ; ...then skip ahead to 28561 (move location to print
                          ; and Terrain Interaction Cursor down two character
                          ; rows with y-wrap, as in vertical mode)
  CALL 36626              ; Advance Display File pointer by two characters
  LD HL,(23481)           ; Update current Terrain Interaction Table Cursor
                          ; position onwards by two characters...
  INC HL                  ; ...
  INC HL                  ; ...
  LD (23481),HL           ; ...
  LD A,(36488)            ; Load LSB of "memory location to start printing
                          ; character" into A
  AND 31                  ; If this is not a multiple of 32 (i.e. not at start
                          ; of a pixel row)...
  JR NZ,28508             ; ...then skip ahead to 28508
  CALL 37703              ; Move virtual text cursor down to start of next text
                          ; row (as 2-by-2 blocks are 2 characters high so we
                          ; need to move down another character)
  LD BC,32                ; Update current Terrain Interaction Table Cursor
                          ; position onwards by 32 characters (i.e. down one
                          ; row)...
  LD HL,(23481)           ; ...
  ADD HL,BC               ; ...
  LD (23481),HL           ; ...
  EXX                     ; Switch BC, DE and HL with BC', DE' and HL',
                          ; restoring values as at input
  RET                     ; Return

; Blank Out Bitmap and Set Attribute to Current Value (ATTR T) for 2-by-2
; Character Block
;
; Used by the routine at 28344.
  LD HL,(36488)           ; Load HL with Display File address to draw character
  LD DE,(36488)           ; Load DE with Display File address to draw character
  INC DE                  ; Advance DE by one byte
  XOR A                   ; Set A to zero
  LD B,8                  ; Load loop counter with 8
  LD (HL),A               ; Draw blank space to Display File addresses HL...
  LD (DE),A               ; ...and DE
  INC H                   ; Advance HL and DE down one pixel row (by adding 256
                          ; to Display File address), drawing down from top...
  INC D                   ; ...
  DJNZ 28521              ; Repeat loop for remaining pixel rows
  LD A,L                  ; Add 32 to HL and DE to move them both down by eight
                          ; pixel rows...
  ADD A,32                ; ...
  LD L,A                  ; ...
  INC A                   ; ...
  LD E,A                  ; ...
  XOR A                   ; Set A to zero
  LD B,8                  ; Load loop counter with 8
  DEC H                   ; Advance HL and DE up one pixel row (by subtracting
                          ; 256 from Display File address), drawing up from
                          ; bottom...
  DEC D                   ; ...
  LD (HL),A               ; Draw blank space to Display File addresses HL...
  LD (DE),A               ; ...and DE
  DJNZ 28536              ; Repeat loop for remaining pixel rows
  CALL 36709              ; Store and point HL at Attribute File address for
                          ; character just printed
  LD A,(23695)            ; Load system variable ATTR T into A...
  LD (HL),A               ; ...and set attribute of four character block just
                          ; rendered to match this value...
  INC HL                  ; ...
  LD (HL),A               ; ...
  LD BC,31                ; ...
  ADD HL,BC               ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  LD (HL),A               ; ...
  JP 28471                ; Move location to print and Terrain Interaction
                          ; Cursor down two character rows observing y-wrap,
                          ; then return

; Move Location to Print and Terrain Interaction Cursor Down Two Character Rows
; with y-Wrap
;
; Instructions from 28609 onwards can only be executed if, after moving down
; two character blocks, the next location to draw to is beneath the
; (two-character deep) floor, on the same character row as the "SPELLBOUND"
; text in the bottom window which shows either the copyright message if Magic
; Knight doesn't hold the mirror, or Magic Knight's strength and inventory if
; he does. Input:  HL  Points to Terrain Interaction Table data for
; bottom-right character block of 2-by-2 brickwork block just drawn
  LD HL,(36488)           ; Load HL with Display File address to draw character
  LD A,L                  ; Clear all but least significant five bits (i.e.
                          ; x-coordinate)...
  AND 31                  ; ...
  LD L,A                  ; ...
  LD H,0                  ; ...
  PUSH HL                 ; Store HL (x-coordinate to draw character)
  CALL 37719              ; Move virtual text cursor to beginning of character
                          ; row two rows below current position
  LD HL,(36488)           ; Load HL with Display File address to draw character
                          ; (as just updated)
  POP DE                  ; Restore DE (new location to draw character,
                          ; previously in HL)
  ADD HL,DE               ; Add x-coordinate as offset to updated location to
                          ; draw character
  LD (36488),HL           ; Store the new location (now two characters below
                          ; position upon entering this routine)
  LD HL,(23481)           ; Update current Terrain Interaction Table Cursor
                          ; position onwards by 64 characters (i.e. down two
                          ; rows)...
  LD BC,64                ; ...
  ADD HL,BC               ; ...
  LD (23481),HL           ; ...
  LD HL,(36488)           ; Load HL with new Display File address to draw
                          ; character
  LD A,H                  ; If memory location to draw character is not in the
                          ; bottom third of the display...
  AND 248                 ; ...
  CP 80                   ; ...
  JR NZ,28645             ; ...then return
  LD A,L                  ; If memory location to draw character is not in the
                          ; fifth character row (any of the 8 pixel rows)...
  AND 224                 ; ...(which is the row two rows beneath the floor
                          ; level, in line with "SPELLBOUND" text in bottom
                          ; window)...
  CP 128                  ; ...
  JR NZ,28645             ; ...then return
  LD A,64                 ; Load 64 into MSB of Display File address to print
                          ; character, wrapping from bottom of display back up
                          ; to top...
  LD (36489),A            ; ...
  LD A,(36488)            ; Increase LSB by two characters (moving right by two
                          ; characters upon bottom-to-top wrap)...
  INC A                   ; ...
  INC A                   ; ...
  AND 31                  ; Cap value to maximum of 31 to ensure that new
                          ; position is in top character row of display (i.e.
                          ; y-coordinate = 0)...
  LD (36488),A            ; ...and store
  LD BC,24539             ; Point BC at Terrain Interaction Table
  XOR A                   ; Set A to zero (and clear carry flag)
  LD HL,(23481)           ; Load HL with Terrain Interaction Table Cursor
  SBC HL,BC               ; Load HL with position of Terrain Interaction Table
                          ; Cursor relative (i.e. offset) to beginning of the
                          ; table
  LD A,L                  ; Advance cursor x-coordinate offset by two character
                          ; blocks...
  INC A                   ; ...
  INC A                   ; ...
  AND 31                  ; ...and cap value to maximum of 31 to ensure that
                          ; new position is in top character row of display
                          ; (i.e. y-coordinate = 0)...
  LD L,A                  ; Place new x-coordinate in HL along with
                          ; y-coordinate of zero...
  LD H,0                  ; ...
  ADD HL,BC               ; Add this new offset to start of Terrain Interaction
                          ; Data
  LD (23481),HL           ; Store the updated Terrain Interaction Table cursor
  EXX                     ; Switch registers
  RET                     ; Return

; Room Drawing Prepare to Draw One Row of Bricks Only
  LD A,1                  ; Prepare to draw one row of bricks only
  JR 28653                ; Set drawing mode and return to room drawing routine
                          ; to process next data

; Room Drawing Prepare to Draw One Row of Bricks with Blank Row Beneath
  LD A,2                  ; Prepare to draw one row of bricks, and one blank
                          ; row beneath it
; This entry point is used by the routine at 28647.
  LD (23469),A            ; Set the mode
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Set Terrain Interaction Parameter to Preserve Attribute /
; impassable Vertically
  LD A,192                ; Set current Terrain Interaction Parameter to
                          ; "preserve attribute" and "impassable vertically"...
  LD (23483),A            ; ...
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Set Terrain Interaction Parameter to Preserve Attribute /
; impassable Vertically and Horizontally
  LD A,224                ; Set current Terrain Interaction Parameter to
                          ; "impassable horizontally", "preserve attribute" and
                          ; "impassable vertically"...
  LD (23483),A            ; ...
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Set Terrain Interaction Parameter to Preserve Attribute
  LD A,64                 ; Set current Terrain Interaction Parameter to
                          ; "preserve attribute"...
  LD (23483),A            ; ...
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Draw Right-Facing Wall-Candle
  CALL 29441              ; Read two bytes AFTER HL position into BC (i.e. y-
                          ; and x-coordinates respectively), advancing HL
                          ; before both reads
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  LD A,68                 ; Load system variable ATTR T with 68 (green INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD A,64                 ; Set current Terrain Interaction Parameter to
                          ; "preserve attribute"...
  LD (23483),A            ; ...
  LD A,56                 ; Draw right-facing wall-candle wall bracket plate...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  PUSH BC                 ; Store BC
  INC B                   ; Increase y-coordinate by three...
  INC B                   ; ...
  INC B                   ; ...
  LD A,55                 ; Draw right-facing wall-candle wall bracket...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  PUSH BC                 ; Store BC
  DEC B                   ; Decrease y-coordinate by one
  INC C                   ; Increase x-coordinate by one
  LD A,71                 ; Load system variable ATTR T with 71 (white INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD A,54                 ; Draw wall-candle...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  DEC B                   ; Decrease y-coordinate
  INC C                   ; Increase x-coordinate
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  CALL 28814              ; Add a glowing character block to the current room
                          ; (left part of the flame)
  INC HL                  ; Advance HL to next character to the right (i.e.
                          ; rest of flame)
  LD (IX+2),L             ; Add another glowing character block to the current
                          ; room (right part of the flame)...
  LD (IX+3),H             ; ...
  POP HL                  ; Restore HL
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Draw Left-Facing Wall-Candle
  CALL 29441              ; Read two bytes AFTER HL position into BC (i.e. y-
                          ; and x-coordinates respectively), advancing HL
                          ; before both reads
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  LD A,68                 ; Load system variable ATTR T with 68 (green INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD A,64                 ; Set current Terrain Interaction Parameter to
                          ; "preserve attribute"...
  LD (23483),A            ; ...
  LD A,58                 ; Draw left-facing wall-candle wall bracket plate...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  PUSH BC                 ; Store BC
  INC B                   ; Increase y-coordinate by three...
  INC B                   ; ...
  INC B                   ; ...
  DEC C                   ; Decrease x-coordinate by two
  DEC C                   ; ...
  LD A,57                 ; Draw left-facing wall-candle wall bracket...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  PUSH BC                 ; Store BC
  DEC B                   ; Decrease y-coordinate by one
  DEC C                   ; Decrease x-coordinate by two
  DEC C                   ; ...
  LD A,71                 ; Load system variable ATTR T with 71 (white INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD A,54                 ; Draw wall-candle...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  DEC B                   ; Decrease y-coordinate
  DEC C                   ; Decrease x-coordinate
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  CALL 28814              ; Add a glowing character block to the current room
                          ; (should be left part of the flame, but is actually
                          ; right part, i.e. a bug!)
  INC HL                  ; Advance HL to next character to the right (i.e.
                          ; what should be rest of flame but is in fact empty
                          ; space - bug!)
  LD (IX+2),L             ; Add another glowing character block to the current
                          ; room (right part of the flame)...
  LD (IX+3),H             ; ...
  POP HL                  ; Restore HL
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Add a Glowing Character Block to the Current Room
;
; Used by the routines at 28683, 28747, 28841, 29184 and 29291. Input:  HL
; Points to a memory address in Attribute File Output: IX  Points to entry in
; the table created on the last pass of this routine
  LD IX,23383             ; Point IX at table of Attribute File addresses of
                          ; glowing characters in current room
  DEC IX                  ; Move IX back two bytes...
  DEC IX                  ; ...
  INC IX                  ; Advance IX by two bytes...
  INC IX                  ; ...
  LD A,(IX+0)             ; If two bytes at IX are non-zero...
  OR (IX+1)               ; ...
  JR NZ,28822             ; ...then loop back to check next two bytes
  LD (IX+0),L             ; Store HL at first empty pair of bytes after
                          ; 23383...
  LD (IX+1),H             ; ...
  RET                     ; Return

; Room Drawing Set Attributes, Including Glow, on Lift Control Panel
  CALL 29441              ; Read two bytes AFTER HL position into BC, advancing
                          ; HL before both reads
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  LD A,(23382)            ; Load A with index of currently illuminated light on
                          ; Lift control panel (showing current floor)
  ADD A,B                 ; To this, add y-coordinate...
  LD B,A                  ; ...and place back into B
  INC B                   ; Increase new y-coordinate by one
  INC C                   ; Increase x-coordinate by one
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  CALL 28814              ; Add a glowing character block to the current room
                          ; for lift indicator panel
  POP BC                  ; Restore BC
  INC BC                  ; Increase x-coordinate by two...
  INC BC                  ; ...
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  LD DE,31                ; Set DE to 31 (to advance current attribute cursor
                          ; down one row and left one character)
  LD B,7                  ; Set B to 7 to repeat loop 8 times
  ADD HL,DE               ; Advance HL down one character and left one
                          ; character (to point to next lift panel indicator,
                          ; e.g. [R])...
  LD (HL),68              ; Set attribute of current lift panel light to 68
                          ; (green INK, black PAPER, BRIGHT)
  INC HL                  ; Advance to the right one character
  LD (HL),70              ; Set attribute of current lift panel light label
                          ; (i.e. "R", "5", "4", "3", "2", "1", "G", or "B") to
                          ; 70 (yellow INK, black PAPER, BRIGHT)
  DJNZ 28870              ; Repeat for next indicator down
  POP HL                  ; Restore HL
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Draw Picture in Frame (59748)
  CALL 29441              ; Read two bytes AFTER HL position into BC, advancing
                          ; HL before both reads
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  LD A,7                  ; Load system variable ATTR T with 7 (white INK,
                          ; black PAPER)...
  LD (23695),A            ; ...
  LD A,64                 ; Set current Terrain Interaction Parameter to
                          ; "preserve attribute"...
  LD (23483),A            ; ...
  LD A,60                 ; Draw Picture in Frame (2) [graphic data at
                          ; 59748]...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  PUSH HL                 ; Transfer memory address of attribute cursor...
  POP IX                  ; ...into  IX
  LD (IX+34),70           ; Set attribute of sun in picture to 70 (yellow INK,
                          ; black PAPER, BRIGHT) (34 bytes, or 1 character down
                          ; and 2 characters right from top-left corner of
                          ; picture)
  LD A,67                 ; Set attribute to 67 (magenta INK, black PAPER,
                          ; BRIGHT) for...
  LD (IX+37),A            ; ...magenta castle in picture (six characters, 3 x
                          ; 2)...
  LD (IX+38),A            ; ...
  LD (IX+39),A            ; ...
  LD (IX+69),A            ; ...
  LD (IX+70),A            ; ...
  LD (IX+71),A            ; ...
  LD A,70                 ; Set attribute to 70 (yellow INK, black PAPER,
                          ; BRIGHT) for...
  LD (IX+97),A            ; ...sand / yellow land (7 characters, 7 x 1)...
  LD (IX+98),A            ; ...
  LD (IX+99),A            ; ...
  LD (IX+100),A           ; ...
  LD (IX+101),A           ; ...
  LD (IX+102),A           ; ...
  LD (IX+103),A           ; ...
  POP HL                  ; Restore HL
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Draw Picture in Frame (59748) and Replace Picture with
; Alternative (60156)
  CALL 29441              ; Read two bytes AFTER HL position into BC, advancing
                          ; HL before both reads
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  LD A,6                  ; Load system variable ATTR T with 6 (yellow INK,
                          ; black PAPER)...
  LD (23695),A            ; ...
  LD A,64                 ; Set current Terrain Interaction Parameter to
                          ; "preserve attribute"...
  LD (23483),A            ; ...
  LD A,60                 ; Draw Picture in Frame (2) [graphic data at
                          ; 59748]...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  PUSH BC                 ; Store BC
  INC B                   ; Increase y-coordinate by one
  INC C                   ; Increase x-coordinate by one
  LD A,4                  ; Load system variable ATTR T with 4 (green INK,
                          ; black PAPER)...
  LD (23695),A            ; ...
  LD A,62                 ; Draw Landscape from picture (2) [graphic data at
                          ; 60156]...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  PUSH HL                 ; Transfer memory address of attribute cursor...
  POP IX                  ; ...into  IX
  LD (IX+34),70           ; Set attribute of sun in picture to 70 (yellow INK,
                          ; black PAPER, BRIGHT) (34 bytes, or 1 character down
                          ; and 2 characters right from top-left corner of
                          ; picture)
  LD A,69                 ; Set attribute to 69 (cyan INK, black PAPER, BRIGHT)
                          ; for...
  LD (IX+97),A            ; ...sea / ocean in picture (7 characters, 7 x 1)...
  LD (IX+98),A            ; ...
  LD (IX+99),A            ; ...
  LD (IX+100),A           ; ...
  LD (IX+101),A           ; ...
  LD (IX+102),A           ; ...
  LD (IX+103),A           ; ...
  POP HL                  ; Restore HL
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Draw Picture in Frame (59548)
  CALL 29441              ; Read two bytes AFTER HL position into BC, advancing
                          ; HL before both reads
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  LD A,7                  ; Load system variable ATTR T with 7 (white INK,
                          ; black PAPER)...
  LD (23695),A            ; ...
  LD A,64                 ; Set current Terrain Interaction Parameter to
                          ; "preserve attribute"...
  LD (23483),A            ; ...
  LD A,59                 ; Draw Picture in Frame (1) [graphic data at
                          ; 59548]...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  PUSH HL                 ; Transfer memory address of attribute cursor...
  POP IX                  ; ...into  IX
  LD (IX+34),70           ; Set attribute of sun in picture to 70 (yellow INK,
                          ; black PAPER, BRIGHT) (34 bytes, or 1 character down
                          ; and 2 characters right from top-left corner of
                          ; picture)
  LD A,7                  ; Set attribute to 7 (white INK, black PAPER) for...
  LD (IX+65),A            ; ...mountain peak in picture (3 characters, 3 x
                          ; 1)...
  LD (IX+66),A            ; ...
  LD (IX+67),A            ; ...
  LD A,68                 ; Set attribute to 68 (green INK, black PAPER,
                          ; BRIGHT) for...
  LD (IX+97),A            ; ...grassland in picture (3 characters, 3 x 1)...
  LD (IX+98),A            ; ...
  LD (IX+99),A            ; ...
  POP HL                  ; Restore HL
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Draw Picture in Frame (59548) and Replace Picture with
; Alternative (60108)
  CALL 29441              ; Read two bytes AFTER HL position into BC, advancing
                          ; HL before both reads
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  LD A,7                  ; Load system variable ATTR T with 7 (white INK,
                          ; black PAPER)...
  LD (23695),A            ; ...
  LD A,64                 ; Set current Terrain Interaction Parameter to
                          ; "preserve attribute"...
  LD (23483),A            ; ...
  LD A,59                 ; Draw Picture in Frame (1) [graphic data at
                          ; 59548]...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  PUSH BC                 ; Store BC
  INC B                   ; Increase y-coordinate by 2...
  INC B                   ; ...
  INC C                   ; Increase x-coordinate by 1
  LD A,4                  ; Load system variable ATTR T with 4 (green INK,
                          ; black PAPER)...
  LD (23695),A            ; ...
  LD A,61                 ; Draw Landscape 1 from picture [graphic data at
                          ; 60108]...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  PUSH HL                 ; Transfer memory address of attribute cursor...
  POP IX                  ; ...into  IX
  LD (IX+34),70           ; Set attribute of sun in picture to 70 (yellow INK,
                          ; black PAPER, BRIGHT) (34 bytes, or 1 character down
                          ; and 2 characters right from top-left corner of
                          ; picture)
  LD A,69                 ; Set attribute to 69 (cyan INK, black PAPER, BRIGHT)
                          ; for...
  LD (IX+97),A            ; ...sea / ocean in picture (3 characters, 3 x 1)...
  LD (IX+98),A            ; ...
  LD (IX+99),A            ; ...
  POP HL                  ; Restore HL
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Draw Goblet Picture or Character Portrait and Corresponding
; Picture Frame
;
; Draw Goblet Picture or Character Portrait and Corresponding Picture Frame
; Input:  B  y-coordinate of picture C x-coordinate of picture
  CALL 29441              ; Read two bytes AFTER HL position into BC, advancing
                          ; HL before both reads
  INC HL                  ; Read index of graphic to draw into D...
  LD D,(HL)               ; ...
  INC HL                  ; Read attribute for this graphic into E...
  LD E,(HL)               ; ...
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC (x- and y-coordinates of top left)
  PUSH DE                 ; Store DE (index of graphic in graphic lookup table
                          ; to draw in window is in D)
  CALL 36919              ; Draw window frame for character portraits (2nd
                          ; floor) and Goblet Picture in Florin's Room
  POP DE                  ; Restore DE
  POP BC                  ; Restore BC
  INC B                   ; Increase y-coordinate
  INC C                   ; Increase x-coordinate
  LD A,E                  ; Load system variable ATTR T with attribute for
                          ; graphic to be drawn...
  LD (23695),A            ; ...
  LD A,64                 ; Set current Terrain Interaction Parameter to
                          ; "preserve attribute"...
  LD (23483),A            ; ...
  LD A,D                  ; Draw graphic (e.g. the Goblet in Florin's Room's
                          ; picture, or a character for their portrait on 2nd
                          ; Floor)...
  CALL 29960              ; ...
  POP HL                  ; Restore HL
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Read Data for and Display Glowing Blocks
  INC HL                  ; Read next parameter into A...
  LD A,(HL)               ; ...
  CP 244                  ; If parameter is 244...
  JP Z,28060              ; ...then return to room drawing routine and process
                          ; next data
  DEC HL                  ; Move pointer back a byte as this was more data, not
                          ; an end marker
  CALL 29441              ; Read two bytes AFTER HL position into BC, advancing
                          ; HL before both reads
  PUSH HL                 ; Store current position of pointer to room data
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  CALL 28814              ; Add a glowing character block to the current room
  POP HL                  ; Restore pointer to HL
  JR 29184                ; Loop back for next data

; Room Drawing Read Data for and Paint Attributes
  INC HL                  ; Read next parameter into A...
  LD A,(HL)               ; ...
  CP 245                  ; If parameter is 245...
  JP Z,28060              ; ...then return to room drawing routine and process
                          ; next data
  EX AF,AF'               ; Switch AF
  CALL 29441              ; Read two bytes AFTER HL position into BC, advancing
                          ; HL before both reads
  PUSH HL                 ; Store HL
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  EX AF,AF'               ; Switch AF
  LD (HL),A               ; Paint attribute data at coordinates in BC
  POP HL                  ; Restore HL
  JR 29205                ; Jump back to start of this routine

; Room Drawing Draw Wall Axes
  CALL 29441              ; Read two bytes AFTER HL position into BC, advancing
                          ; HL before both reads
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  LD A,70                 ; Load system variable ATTR T with 70 (yellow INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD A,64                 ; Set current Terrain Interaction Parameter to
                          ; "preserve attribute"...
  LD (23483),A            ; ...
  LD A,86                 ; Draw Wall Axes...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  INC B                   ; Increase y-coordinate by two...
  INC B                   ; ...
  INC C                   ; Increase x-coordinate by three...
  INC C                   ; ...
  INC C                   ; ...
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  LD A,69                 ; Set attribute at this location to 69 (cyan INK,
                          ; black PAPER, BRIGHT) for top of axe handles...
  LD (HL),A               ; ...
  PUSH HL                 ; Transfer memory address of attribute cursor...
  POP IX                  ; ...into  IX
  LD (IX+1),A             ; Set attribute of rest of handles to 69 (cyan INK,
                          ; black PAPER, BRIGHT)...
  LD (IX+31),A            ; ...
  LD (IX+32),A            ; ...
  LD (IX+33),A            ; ...
  LD (IX+34),A            ; ...
  LD (IX+63),A            ; ...
  LD (IX+64),A            ; ...
  LD (IX+65),A            ; ...
  LD (IX+66),A            ; ...
  POP HL                  ; Restore HL
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Draw Ceiling Candles
  CALL 29441              ; Read two bytes AFTER HL position into BC, advancing
                          ; HL before both reads
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  LD A,7                  ; Load system variable ATTR T with 7 (white INK,
                          ; black PAPER)...
  LD (23695),A            ; ...
  LD A,64                 ; Set current Terrain Interaction Parameter to
                          ; "preserve attribute"...
  LD (23483),A            ; ...
  LD A,96                 ; Draw ceiling candles...
  CALL 29960              ; ...
  POP BC                  ; Restore BC
  INC B                   ; Increase y-coordinate by two...
  INC B                   ; ...
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  PUSH HL                 ; Store HL (memory address of attribute cursor)
  CALL 28814              ; Add a glowing character block to the current room
                          ; (left-hand candle)
  LD BC,34                ; Advance Attribute File pointer down a row and to
                          ; the right by two characters...
  ADD HL,BC               ; ...
  CALL 28814              ; Add a glowing character block to the current room
                          ; (right-hand candle)
  LD A,70                 ; Set attribute at this location to 70 (yellow INK,
                          ; black PAPER, BRIGHT) (candles)...
  POP IX                  ; Restore memory address of attribute cursor to IX
  LD (IX+32),A            ; Set attribute of left-hand candle...
  LD (IX+64),A            ; ...
  LD (IX+66),A            ; ...and right-hand candle to 70 (yellow INK, black
                          ; PAPER, BRIGHT)
  LD A,71                 ; Set attribute at this location to 71 (white INK,
                          ; black PAPER, BRIGHT) (base - 3 bytes, 3 x 1)...
  LD (IX+96),A            ; ...
  LD (IX+97),A            ; ...
  LD (IX+98),A            ; ...
  POP HL                  ; Restore HL
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Point Bitmap Virtual Cursor and Terrain Interaction Cursor to
; Coordinates x=C, y=B
;
; Point Bitmap Virtual Cursor and Terrain Interaction Cursor to Coordinates
; x=C, y=B Input:  B  y-coordinate (characters) C  x-coordinate (characters)
  CALL 29441              ; Read two bytes AFTER HL position into BC, advancing
                          ; HL before both reads
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  CALL 36551              ; Move Virtual Bitmap Cursor to Display File address
                          ; for coordinates x=C, y=B
  POP BC                  ; Restore BC
  CALL 36586              ; Point HL at Terrain Interaction Data for character
                          ; coordinates x=C, y=B
  LD (23481),HL           ; ...and store this pointed-to location
  POP HL                  ; Restore HL
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Draw a Graphic to Screen Reading Parameters from Room Layout
; Data
  CALL 29441              ; Load x- and y-coordinates of graphic to draw into
                          ; BC
  INC HL                  ; Advance HL to attribute data
  LD A,(HL)               ; Load attribute data into system variable ATTR T...
  LD (23695),A            ; ...
  INC HL                  ; Advance HL to Terrain Interaction Parameter
  LD A,(HL)               ; Read Terrain Interaction Parameter and store at
                          ; 23483...
  LD (23483),A            ; ...
  INC HL                  ; Advance HL to graphic lookup index data...
  LD A,(HL)               ; ...and load this data into A
  CALL 29955              ; Draw the graphic in OR mode
  JP 28060                ; Return to room drawing routine and process next
                          ; data

; Room Drawing Read Sequence of Architecture Styles and Draw Appropriate 2-by-2
; Blocks of Brickwork
  INC HL                  ; Read data into system variable ATTR T...
  LD A,(HL)               ; ...
  LD (23695),A            ; ...
  INC HL                  ; Advance HL
  LD A,(HL)               ; Read next data (architecture style)...
  CP 254                  ; ...and if this is 254...
  JP Z,28056              ; ...then return to room drawing routine, setting
                          ; brickwork drawing mode to two rows
  CALL 28344              ; Draw a 2-by-2 block of brickwork, depending upon
                          ; brickwork drawing mode, with architecture style A
  JP 29401                ; Repeat loop for next data byte

; Room Drawing Read Sequence of Architecture Styles and Attributes and Draw
; Appropriate 2-by-2 Blocks of Brickwork
  XOR A                   ; Set system variable ATTR T to 0 (black INK, black
                          ; PAPER)...
  LD (23695),A            ; ...
  INC HL                  ; Advance HL
  LD A,(HL)               ; Read next data (architecture style)...
  CP 255                  ; ...and if this is 255...
  JP Z,28056              ; ...then return to room drawing routine, setting
                          ; brickwork drawing mode to two rows
  LD C,A                  ; Copy architecture style into C
  OR A                    ; If this is zero...
  JR Z,29434              ; ...then skip ahead to 29434 (i.e. draw a blank
                          ; block)
  INC HL                  ; Advance HL
  LD A,(HL)               ; Read next data...
  LD (23695),A            ; ...into system variable ATTR T
  LD A,C                  ; Load architecture style back into A
  CALL 28344              ; Draw a 2-by-2 block of brickwork, depending upon
                          ; brickwork drawing mode, with architecture style A
  JP 29414                ; Repeat loop for next data byte

; Read Two Bytes After HL Position into C and B Respectively, Advancing HL
; Before Both Reads
;
; Used by the routines at 28683, 28747, 28841, 28882, 28960, 29032, 29089,
; 29150, 29184, 29205, 29225, 29291, 29356 and 29375. Input:  HL  Pointer to
; current position in data (before reads) Output: B Second byte AFTER input HL
; position C  First byte AFTER input HL position HL  Two bytes after input HL
; position
  INC HL                  ; Advance HL
  LD C,(HL)               ; Load byte into C
  INC HL                  ; Advance HL
  LD B,(HL)               ; Load byte into B
  RET                     ; Return

; Set Magic Knight's Action Flags and Prepare to Execute Room-Specific Routine
; for his Current Room
;
; Used by the routine at 28092.
  LD A,(65529)            ; Load double Magic Knight's current room index into
                          ; BC...
  ADD A,A                 ; ...
  LD B,0                  ; ...
  LD C,A                  ; ...
  LD HL,54753             ; Add as offset to address of start of table of
                          ; room-specific routine addresses and load this
                          ; result into HL...
  ADD HL,BC               ; ...
  LD A,(HL)               ; Load WORD value at this address into HL...
  INC HL                  ; ...
  LD H,(HL)               ; ...
  LD L,A                  ; ...
  LD (29773),HL           ; Update jump in routine at 29763 to execute
                          ; room-specific routine
  CALL 35495              ; Set Magic Knight's available action flags
  RET                     ; Return

; Check Whether Magic Knight is Moving into a New Room and React if so
;
; Used by the routine at 29763.
  LD A,(25387)            ; Load Magic Knight's current x-coordinate into A
  CP 3                    ; If less than 3...
  JP C,29514              ; ...then skip to 29514
  CP 231                  ; If 231 or more...
  JP NC,29546             ; ...then skip to 29546
  RET                     ; Return

; Change Magic Knight's Current Room if Possible
;
; Used by the routines at 29514 and 29546. Input:  A  Magic Knight's new
; x-coordinate upon entering new room DE Exit that Magic Knight is leaving old
; room from; either 0 (left exit) or 1 (right exit) Output: F  Zero Flag set if
; Magic Knight can't leave his current room, reset otherwise
  PUSH AF                 ; Store new x-coordinate for later
  XOR A                   ; Set Magic Knight's Temporary Movement Flags to zero
                          ; (new room, so Magic Knight can move both left and
                          ; right)...
  LD (23410),A            ; ...
  LD HL,41711             ; Point HL to room connectivity data table
  LD A,(65529)            ; Load Magic Knight's current room's index into A...
  ADD A,A                 ; ...double it...
  LD C,A                  ; ...and load into BC...
  LD B,0                  ; ...
  ADD HL,BC               ; Add BC as offset to HL
  ADD HL,DE               ; Point to left or right exit from current room, as
                          ; determined by DE
  LD A,(HL)               ; Load new room number into A...
  CP 255                  ; ...and if this is 255 (i.e. Magic Knight can't
                          ; leave his current room)...
  JR Z,29511              ; ...set Zero Flag and exit routine...
  LD (65529),A            ; ...else update Magic Knight's current room to be
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
; Used by the routine at 29468. Input:  A  (Entry at 29530 only) Magic Knight's
; new x-coordinate
  LD DE,0                 ; Set DE to zero (dealing with current room's left
                          ; exit)
  LD A,230                ; Load A with Magic Knight's new coordinate when he
                          ; arrives in new room (230 is near right-hand side of
                          ; room)
  CALL 29482              ; Change Magic Knight's current room (if possible)
                          ; based upon left exit of his current room
  JR Z,29540              ; If Magic Knight can't leave his current room then
                          ; jump to 29540
  LD HL,34824             ; Set instruction at 34821 to jump to 34824
                          ; (left-facing version of update Magic Knight's
                          ; current frame routine)...
  LD (34822),HL           ; ...
; This entry point is used by the routine at 29546.
  LD (25387),A            ; Set Magic Knight's x-coordinate
  LD A,(65529)            ; Load Magic Knight's current room into A
  CALL 27865              ; Move Magic Knight into room A, initialise
                          ; room-specific data and draw room
  RET                     ; Return
  LD A,1                  ; Set Magic Knight's Temporary Movement Flags to 1
                          ; (Magic Knight can't move left because he can't
                          ; leave his current room)...
  LD (23410),A            ; ...
  RET                     ; Return

; Move Magic Knight One Room to the Right if Possible
;
; Used by the routine at 29468.
  LD HL,34838             ; Set instruction at 34821 to jump to 34838
                          ; (right-facing version of update Magic Knight's
                          ; current frame routine)...
  LD (34822),HL           ; ...
  LD DE,1                 ; Set DE to one (dealing with current room's right
                          ; exit)
  LD A,4                  ; Load A with Magic Knight's new coordinate when he
                          ; arrives in new room (4 is near left-hand side of
                          ; room)
  CALL 29482              ; Change Magic Knight's current room (if possible)
                          ; based upon right exit of his current room
  JR Z,29570              ; If Magic Knight's can't leave his current room then
                          ; jump to 29570
  LD HL,34838             ; Set instruction at 34821 to jump to 34824
                          ; (right-facing version of update Magic Knight's
                          ; current frame routine)...
  LD (34822),HL           ; ...
  JR 29530                ; Set Magic Knight's x-coordinate and new room, draw
                          ; the room and return
  LD A,2                  ; Set Magic Knight's Temporary Movement Flags to 2
                          ; (Magic Knight can't move right because he can't
                          ; leave his current room)...
  LD (23410),A            ; ...
  RET                     ; Return

; Draw All Characters in Current Room and Animate Arrival of Any New Character
;
; Used by the routine at 28092.
  LD A,71                 ; Load ATTR T system variable with 71 (white INK,
                          ; black PAPER, BRIGHT)
  LD (23695),A            ; ...
  LD A,64                 ; Set current Terrain Interaction Parameter to
                          ; "preserve attribute"...
  LD (23483),A            ; ...
  LD IX,25443             ; Point IX at Thor's entry in characters' current
                          ; positions table
  LD BC,1537              ; Load B with 6 and C with 1
  LD A,(23467)            ; If Banshee is not released...
  AND 1                   ; ...
  JR Z,29601              ; ...then skip ahead to 29601...
  INC B                   ; ...else increase B by one
  LD A,(23468)            ; If Gimbal is not released...
  AND 1                   ; ...
  JR Z,29614              ; ...then skip ahead to 29614...
  INC B                   ; ...else increase B by one...
  DEC C                   ; ...decrease C...
  LD IX,25440             ; ...and point IX at Gimbal's entry in characters'
                          ; current positions table
  LD A,(65529)            ; Load A with Magic Knight's current room
  CP (IX+0)               ; Compare current character's room with Magic
                          ; Knight's...
  CALL Z,29680            ; ...and if they're the same, draw the character to
                          ; the screen
  INC C                   ; Increase C by one
  INC IX                  ; Advance to entry for next character
  INC IX                  ; ...
  INC IX                  ; ...
  DJNZ 29614              ; ...and repeat the loop for the next character
  LD IX,25443             ; Point IX at Thor's entry in characters' current
                          ; positions table
  LD BC,1537              ; Load B with 6 (as there are initially 6 characters
                          ; to consider) and C with 1
  LD A,(23467)            ; If Banshee is not released...
  AND 1                   ; ...
  JR Z,29647              ; ...then skip ahead to 29647...
  INC B                   ; ...else increase B by one (Banshee)
  LD A,(23468)            ; If Gimbal is not released...
  AND 1                   ; ...
  JR Z,29660              ; ...then skip ahead to 29660...
  INC B                   ; ...else increase B by one (Gimbal)...
  DEC C                   ; ...decrease C...
  LD IX,25440             ; ...and point IX at Gimbal's entry in characters'
                          ; current positions table
  LD A,(65529)            ; Load A with Magic Knight's current room
  BIT 7,(IX+0)            ; If high bit of character's current room (pointed to
                          ; by IX) is set...
  CALL NZ,29709           ; ...then animate puff of smoke then draw character
                          ; in position
  INC C                   ; Increase C by one
  INC IX                  ; Advance to room of next character
  INC IX                  ; ...
  INC IX                  ; ...
  DJNZ 29660              ; ...and repeat the loop for the next character
  RET                     ; Return

; Load Character's Coordinates into BC and Graphic Lookup Index into A and Draw
; to Screen
;
; Used by the routines at 29576 and 29709. Input:  C  Index of character to
; draw IX  Pointer to position data for this character (3 bytes: Screen number,
; x-coordinate, y-coordinate)
  PUSH BC                 ; Store BC
  PUSH IX                 ; Store IX
  PUSH AF                 ; Store AF
  LD A,C                  ; Copy index of current character into A...
  ADD A,69                ; ...and add 69 to this (as the characters' entries
                          ; in the graphics data lookup table start at entry
                          ; number 69)
  LD C,A                  ; Copy this index into C
  JR 29694                ; Skip to preparation routine below

; Load Object's coordinates into BC and Graphic Lookup Index into A and Draw to
; Screen
;
; Used by the routine at 29709. Input:  C  Index (in graphics lookup data table
; at 42642) of object to draw IX Pointer to position data for this object (3
; bytes: Screen number, x-coordinate, y-coordinate)
  PUSH BC                 ; Store BC
  PUSH IX                 ; Store IX
  PUSH AF                 ; Store AF
; This entry point is used by the routine at 29680.
  LD A,C                  ; Copy index of object to draw (as it appears in the
                          ; graphics data lookup table at 42642) into A
  LD C,(IX+1)             ; Load x-coordinate of object into C
  LD B,(IX+2)             ; Load y-coordinate of object into B
  CALL 29950              ; Draw graphic in XOR mode
  POP AF                  ; Restore AF
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  RET                     ; Return

; Animate Puff of Smoke then Draw a Character in Position
;
; Only called if high bit of Magic Knight's current room is set Input:  A
; Magic Knight's current room IX  Pointer to position data for this character
; (3 bytes: Screen number, x-coordinate, y-coordinate)
  LD E,(IX+0)             ; Load character's room index into E
  RES 7,E                 ; Reset the most significant bit
  CP E                    ; If new room index is different from Magic Knight's
                          ; then...
  RET NZ                  ; ...return...
  RES 7,(IX+0)            ; ...else reset high bit of character's room index
  PUSH BC                 ; Store BC
  LD C,63                 ; Load C with 63 (index of first frame of puff of
                          ; smoke animation)
  PUSH BC                 ; Store BC (C = index of puff of smoke)
  CALL 29690              ; Load character's coordinates into BC and graphic
                          ; lookup index into A and draw to screen
  POP BC                  ; Restore BC (C = index of puff of smoke)
  LD B,5                  ; Set B to 5 (as there are six frames we need to loop
                          ; 5 times)
  PUSH BC                 ; Store BC (C = index of puff of smoke)
  HALT                    ; Wait for interrupts...
  HALT                    ; ...
  HALT                    ; ...
  HALT                    ; ...
  HALT                    ; ...
  HALT                    ; ...
  CALL 29690              ; Load object's coordinates into BC and graphic
                          ; lookup index into A and draw to screen
  POP BC                  ; Restore BC (C = index of puff of smoke)
  INC C                   ; Advance C by one (to point to next frame of puff of
                          ; smoke animation)
  PUSH BC                 ; Store BC (C = index of puff of smoke)
  CALL 29690              ; Load object's coordinates into BC and graphic
                          ; lookup index into A and draw to screen
  POP BC                  ; Restore BC (C = index of puff of smoke)
  DJNZ 29730              ; Decrease B and loop back for next frame
  HALT                    ; Wait for interrupts...
  HALT                    ; ...
  HALT                    ; ...
  HALT                    ; ...
  HALT                    ; ...
  HALT                    ; ...
  CALL 29690              ; Load object's coordinates into BC and graphic
                          ; lookup index into A and draw to screen
  POP BC                  ; Restore BC
  CALL 29680              ; Draw character to screen
  RET                     ; Return

; Run Checks and Updates (Magic Knight's Current Room and Room-Specific
; Routines)
;
; Used by the routines at 27176 and 27495.
  LD HL,0                 ; Set Magic Knight's current x- and y-velocities to
                          ; zero...
  LD (25391),HL           ; ...
  CALL 29468              ; Check whether Magic Knight is moving into a new
                          ; room and react if so
; The operand of the instruction at 29772 represents the address of the
; appropriate room-specific routine. This is modified by the instruction at
; 29461.
  JP 29775                ; Execute room-specific routine

; Room-Specific Routine Do Nothing (Return) 1
;
; Used by the routine at 29763.
  RET                     ; Return

; Room-Specific Routine Update Positions of 4 Odd-Balls and Display
;
; Used by the routine at 29911.
  XOR A                   ; Ball 0
  CALL 35993              ; Update position of Odd Ball 0, display, and
                          ; decrease Magic Knight's strength if in contact
  LD A,1                  ; Ball 1
  CALL 35993              ; Update position of Odd Ball 1, display, and
                          ; decrease Magic Knight's strength if in contact
  LD A,2                  ; Ball 2
  CALL 35993              ; Update position of Odd Ball 2, display, and
                          ; decrease Magic Knight's strength if in contact
  LD A,3                  ; Ball 3
  CALL 35993              ; Update position of Odd Ball 3, display, and
                          ; decrease Magic Knight's strength if in contact
  RET                     ; Return

; Room-Specific Routine Do Nothing (Return) 2
  RET                     ; Return

; Room-Specific Routine Jump to "Kill Magic Knight if he is in a Dark Room
; Without Illumination"
  JR 29800                ; Jump to "Kill Magic Knight if he is in a Dark Room
                          ; Without Illumination" routine

; Room-Specific Routine Do Nothing (Return) 3
  RET                     ; Return

; Room-Specific Routine Kill Magic Knight if he is in a Dark Room Without
; Illumination
;
; Used by the routine at 29797.
  LD A,(23467)            ; If "Armouris Photonicus cast" flag is set...
  BIT 2,A                 ; ...
  RET NZ                  ; ...then return
  LD A,16                 ; Load A with index of Glowing Bottle
  CALL 34256              ; Check to see if this object is in Magic Knight's
                          ; inventory...
  RET Z                   ; ...and if so, return
  LD A,(25512)            ; Get current "screen" location of Glowing Bottle
  CP 18                   ; If Glowing Bottle is in "The Little Bottle" room,
                          ; then... (Bug. See also trivia)
  RET Z                   ; ...return as room is lit (although not sure how
                          ; bottle can actually get here!)
  LD A,33                 ; Load A with index of Engraved Candle
  CALL 34256              ; Check to see if this object is in Magic Knight's
                          ; inventory...
  JR Z,29832              ; ...and if so, skip ahead to 29832 (to check if it
                          ; is lit)
  LD A,(25563)            ; Get current "screen" location of Engraved Candle
  CP 18                   ; If Engraved Candle is NOT in "The Little Bottle"
                          ; room then...
  JR NZ,29838             ; ...skip ahead to "You have died" section of routine
  LD A,(23467)            ; If the Engraved Candle is lit...
  BIT 1,A                 ; ...
  RET NZ                  ; ...then return
  RES 0,(IY+65)           ; Reset "Update Game Time and Locate Arrow Glow" flag
  LD HL,22528             ; Point to start of Attribute File...
  LD DE,22529             ; ...
  LD BC,607               ; ...
  LD (HL),L               ; L is zero as HL is 22528
  LDIR                    ; Fill top 19 (i.e. 608 / 32) rows of Attribute File
                          ; with zeroes (i.e. make the room black dark!)
  LD A,31                 ; Draw window 31 ("Death info" window, i.e. have
                          ; entered a dark room without illumination)...
  CALL 36987              ; ...
  LD HL,51457             ; Point to "Somebody switched off the light..." text
  CALL 36725              ; Print the text
  CALL 38749              ; Display "PRESS SPACE OR FIRE TO CONTINUE" window
                          ; and wait for space / fire
  LD HL,43467             ; Point HL at "YOU HURT YOURSELF MOVING AROUND IN THE
                          ; DARK" text
  JP 35101                ; Jump to "Game over" window routine and exit

; Room-Specific Routine Update Position of 1 Odd-Ball and Display
  XOR A                   ; Set A to zero
  CALL 35993              ; Update position of Odd Ball 0, display, and
                          ; decrease Magic Knight's strength if in contact
  RET                     ; Return

; Room-Specific Routine Do Nothing (Return) 4
  RET                     ; Return

; Room-Specific Routine Kill Magic Knight if he is in the Gas Room Without
; Protection
  LD A,(23468)            ; Check Magic Knight spell flags...
  AND 2                   ; ...
  RET NZ                  ; ...and return if bit 2 is set (i.e. Fumaticus
                          ; Protectium has been successfully cast)
  RES 0,(IY+65)           ; Reset "Update Game Time and Locate Arrow Glow" flag
  LD A,31                 ; Draw window 31 ("Death info" window, i.e. have
                          ; entered the Gas Room without Fumaticus
                          ; Protectium)...
  CALL 36987              ; ...
  LD HL,51583             ; Point to "CHOKE... CHOKE..." text
  CALL 36725              ; Print the text
  CALL 38749              ; Display "PRESS SPACE OR FIRE TO CONTINUE" window
                          ; and wait for space / fire
  LD HL,43651             ; Point HL at "THE GAS GOT YOU" text
  JP 35101                ; Jump to "Game over" window routine and exit

; Room-Specific Routine Do Nothing (Return) 5
  RET                     ; Return

; Room-Specific Routine Jump to "Update Positions of 4 Odd-Balls and Display"
  JP 29776                ; Update positions of 4 Odd-Balls and display

; Room-Specific Routine Do Nothing (Return) 6
  RET                     ; Return

; Room-Specific Routine Kill Magic Knight if he has Fallen into the Pit of
; Destruction
  LD A,(25388)            ; Load Magic Knight's current y-coordinate into A...
  CP 112                  ; ...and if this is less than 112...
  RET NZ                  ; ...then return...
  LD HL,51723             ; ...else point HL at "YOU FELL INTO THE PIT OF
                          ; DESTRUCTION..." text...
  JP 35101                ; ...display related GAME OVER window and return to
                          ; main menu

; Room-Specific Routine Do Nothing (Return) 7
  RET                     ; Return

; Room-Specific Routine Draw Whited-Out Gimbal if he has not Been Freed
  LD A,(23468)            ; Load A with Game Progress Flags (2)
  BIT 0,A                 ; If Gimbal is free...
  RET NZ                  ; ...then return
  LD C,6                  ; Set x-coordinate to 6
  LD B,2                  ; Set y-coordinate to 2
  LD A,127                ; Set system variable ATTR T to 127 (white INK, white
                          ; PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD A,69                 ; Draw Gimbal the Wizard (whited-out)...
  CALL 29960              ; ...
  RET                     ; Return

; Room-Specific Routine Do Nothing (Return) 8
  RET                     ; Return

; Draw a Graphic (in XOR Mode)
;
; Used by the routines at 28092 and 29690. Input:  A  Index of graphic to draw
; in graphic data lookup table at 42642 B  y-coordinate (characters) for
; printing item C  x-coordinate (characters) for printing item
  EX AF,AF'               ; Switch register AF
  LD A,174                ; Prepare to modify instruction at 30043 to "XOR
                          ; (HL)"
  JR 29962                ; Jump into graphic drawing routine

; Draw a Graphic (in OR Mode)
;
; Used by the routines at 29375 and 38539. Input:  A  Index of graphic to draw
; in graphic data lookup table at 42642 B  y-coordinate (characters) for
; printing item C  x-coordinate (characters) for printing item
  EX AF,AF'               ; Switch register AF
  LD A,182                ; Prepare to modify instruction at 30043 to "OR (HL)"
  JR 29962                ; Jump into graphic drawing routine

; Draw a Graphic (in NOP Mode)
;
; Used by the routines at 28683, 28747, 28882, 28960, 29032, 29089, 29150,
; 29225, 29291, 29928, 30129, 31370, 32035 and 36275. Input:  A  Index of
; graphic to draw in graphic data lookup table at 42642 B  y-coordinate
; (characters) for printing item C  x-coordinate (characters) for printing item
  EX AF,AF'               ; Switch register AF
  XOR A                   ; Prepare to modify instruction at 30043 to "NOP"
                          ; (i.e. A=0)
; This entry point is used by the routines at 29950 and 29955.
  LD (30043),A            ; Modify instruction at 30043 with new opcode in A
  EX AF,AF'               ; Switch back
  PUSH HL                 ; Store HL, BC and AF...
  PUSH BC                 ; ...
  PUSH AF                 ; ...
  LD A,C                  ; Load x-coordinate to draw item into instruction at
                          ; 30037
  LD (30038),A            ; ...
  LD A,B                  ; Multiply y-coordinate by 8...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; ...and load into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Double again (so now 16 times y-coordinate, as 8
                          ; pixels in a character block, and two bytes per
                          ; entry in data at 26064)
  LD DE,26064             ; Point DE at table of Display File addresses of
                          ; starts of each pixel row
  ADD HL,DE               ; Advance by 16 times y-coordinate to point HL at
                          ; entry for start of item's current pixel row
  PUSH HL                 ; Transfer this value into IX...
  POP IX                  ; ...
  POP AF                  ; Restore A (graphic index of item to draw)...
  LD L,A                  ; ...and load into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Multiply by four...
  ADD HL,HL               ; ...
  LD BC,42642             ; Point BC at start of graphics data lookup table...
  ADD HL,BC               ; ...and add offset to point to entry for item of
                          ; interest
  LD C,(HL)               ; Load graphic width into C
  INC HL                  ; Advance to height
  LD B,(HL)               ; Load graphic height into B
  INC HL                  ; Advance to graphic address
  LD A,(HL)               ; Load graphic address into HL...
  INC HL                  ; ...
  LD H,(HL)               ; ...
  LD L,A                  ; ...
  LD A,C                  ; Load graphic width into A
  CP 255                  ; If width is not set to 255, then...
  JR NZ,30014             ; ...skip to 30014...
  LD BC,514               ; ...else set both height and width to 2
  PUSH BC                 ; Store width and height
  EX DE,HL                ; Swap graphic address into DE
  LD A,B                  ; Load height into A...
  ADD A,A                 ; ...and multiply by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; ...and load into L
  LD H,C                  ; Load H with graphic width
  LD A,C                  ; Load A with graphic width
  LD (30041),A            ; Load graphic width into instruction at 30040
  PUSH HL                 ; Transfer width (H) and eight times height (L) from
                          ; HL to...
  POP BC                  ; ...B (width) and C (eight times height)
  PUSH BC                 ; Store B (width) and C (x times height, where x
                          ; decreases through loop)
  LD L,(IX+0)             ; Load HL with Display File address to draw item data
                          ; to screen (stored in IX) from table at 26064...
  LD H,(IX+1)             ; ...
  LD B,0                  ; Set B to zero
; The operand of the instruction at 30037 represents the x-coordinate value
; stored previously. This is modified by the instruction at 29970.
  LD C,0                  ; Load C with x-coordinate of item to draw
  ADD HL,BC               ; Increase Display File offset with x-coordinate
                          ; (characters)
; The operand of the instruction at 30040 represents the width value stored
; previously. This is modified by the instruction at 30023.
  LD B,0                  ; Load B with width of graphic to draw
  LD A,(DE)               ; Load a byte of graphic data into A
; The instruction at 30043 represents the graphic blending mode, and can be
; NOP, XOR (HL) or OR (HL). This is modified by the instruction at 29962.
  NOP                     ; Blend with graphic data already in Display File
  LD (HL),A               ; Write resultant graphic data to Display File
  INC HL                  ; Advance Display File pointer to draw second column
  INC DE                  ; Advance to next graphic data byte
  DJNZ 30042              ; Repeat loop (for second column of graphic)
  INC IX                  ; Advance IX by two (as it is pointing to a table of
                          ; two-byte addresses)...
  INC IX                  ; ...
  POP BC                  ; Restore width and eight times height to BC...
  DEC C                   ; ...and decrease C (eight times height) to move to
                          ; next pixel row
  JR NZ,30028             ; Repeat loop for next pixel row
  POP DE                  ; Restore height (D) and width (E) (characters)
  LD A,E                  ; Load width into A
  LD (30069),A            ; Modify instruction at 30068 with width
  POP BC                  ; Restore y- and x-coordinates for item being drawn
  PUSH BC                 ; Store this again
  PUSH DE                 ; Store width and height
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
; The operand of the instruction at 30068 represents the width value stored
; previously. This is modified by the instruction at 30059.
  LD B,0                  ; Load B with width of item being drawn
  LD A,(23695)            ; Load ATTR T system variable into A (this is set by
                          ; instructions prior to this routine being called)
  LD (HL),A               ; Write attribute to current virtual cursor location
  PUSH HL                 ; Store current virtual cursor location
  XOR A                   ; Set A to zero
  LD DE,22528             ; Point DE to start of Attribute File
  SBC HL,DE               ; Load HL with address of Virtual Attribute Cursor
                          ; location, relative to start of Attribute File
  LD DE,24539             ; Point DE at Terrain Interaction Data
  ADD HL,DE               ; Add relative address of virtual cursor (attribute)
                          ; as offset
  LD A,(23483)            ; Load stored Terrain Interaction Parameter into
                          ; Terrain Interaction Table for this Attribute File
                          ; address...
  LD (HL),A               ; ...
  POP HL                  ; Restore current virtual cursor location
  INC HL                  ; Advance cursor to the right one character
  DJNZ 30070              ; Repeat loop for rest of width
  POP DE                  ; Restore height (D) and width (E)
  POP BC                  ; Restore y (B) and x (C) coordinates for item being
                          ; drawn
  INC B                   ; Increase y-coordinate
  DEC D                   ; Decrease "remaining" height
  JR NZ,30063             ; If there is some remaining height to colour, then
                          ; loop back
  POP HL                  ; Restore HL
  RET                     ; Return

; Indent "SPELLBOUND" Text in Bottom Window to Indicate Magic Knight's Current
; Floor
;
; Used by the routine at 27865.
  LD A,158                ; Load A with 158...
  LD (43138),A            ; ...and place into formatting data at 43138
  LD A,(65529)            ; Load A with Magic Knight's current room
  OR A                    ; Return if room number is zero (i.e. Magic Knight is
                          ; in the Lift)...
  RET Z                   ; ...
  DEC A                   ; ...else...
  RRCA                    ; ...subtract one and divide by eight...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 7                   ; ...to give floor number
  ADD A,158               ; Add floor number to 158
  LD (43138),A            ; Load into formatting data at 43138
  RET                     ; Return

; Divide A by Eight, Rounding Down to Nearest Integer
;
; Used by the routines at 27495, 27666, 27809, 34385, 37333 and 37571.
  RRCA                    ; Divide by eight...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...and remove remainder
  RET                     ; Return

; Draw Lift Doors if Magic Knight is at Lift Entrance on a Different Floor to
; the Lift
;
; Used by the routine at 28092.
  LD A,(65529)            ; Load Magic Knight's current room into A
  DEC A                   ; If room number is not a multiple of 8...
  AND 7                   ; ...(i.e. not a room from which the lift can be
                          ; called)...
  RET NZ                  ; ...then return
  LD A,(65529)            ; Load Magic Knight's current room into A...
  ADD A,A                 ; ...double it...
  LD C,A                  ; ...and copy into BC...
  LD B,0                  ; ...
  LD HL,41711             ; Point HL at room connectivity data table
  ADD HL,BC               ; Add BC as offset
  LD A,(HL)               ; Load index of room to left of current room...
  CP 255                  ; ...and if this is not set to 255 (i.e. the Lift is
                          ; here)...
  RET NZ                  ; ...return...
  LD A,69                 ; ...else set system variable ATTR T to 69 (cyan INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD A,224                ; Set Terrain Interaction Parameter ("impassable
                          ; horizontally", "impassable vertically", and
                          ; "preserve attribute")...
  LD (23483),A            ; ...
  LD BC,3584              ; Set coordinates and...
  LD A,83                 ; ...draw a graphic #83 (lift doors)
  CALL 29960              ; ...
  RET                     ; Return

; Addresses of room feature drawing routines
  DEFW 28064              ; 230 - Set Brickwork Direction Mode to vertical and
                          ; reset pointers to beginning of display
  DEFW 28647              ; 231 - Set brickwork drawing mode 1 (one row of
                          ; bricks only)
  DEFW 28651              ; 232 - Set brickwork drawing mode 2 (one row of
                          ; bricks with blank row beneath)
  DEFW 28659              ; 233 - Set Terrain Interaction Parameter to
                          ; "impassable vertically" and "preserve attribute"
  DEFW 28667              ; 234 - Set Terrain Interaction Parameter to
                          ; "impassable horizontally", "impassable vertically"
                          ; and "preserve attribute"
  DEFW 28675              ; 235 - Set Terrain Interaction Parameter to
                          ; "preserve attribute"
  DEFW 28683              ; 236 - Draw right-facing wall-candle
  DEFW 28747              ; 237 - Draw left-facing wall-candle
  DEFW 28841              ; 238 - Set attributes, including glow, on Lift
                          ; control panel
  DEFW 28882              ; 239 - Draw picture in frame (59748)
  DEFW 28960              ; 240 - Draw picture in frame (59748) and replace
                          ; picture with alternative (60156)
  DEFW 29032              ; 241 - Draw picture in frame (59548)
  DEFW 29089              ; 242 - Draw picture in frame (59548) and replace
                          ; picture with alternative (60108)
  DEFW 29150              ; 243 - Draw Goblet Picture (Florin's Room) or
                          ; character portrait and corresponding picture frame
  DEFW 29184              ; 244 - Read data for and display glowing blocks
  DEFW 29205              ; 245 - Paint attributes
  DEFW 29225              ; 246 - Draw wall axes
  DEFW 29291              ; 247 - Draw ceiling candles
  DEFW 28038              ; 248 - Unused
  DEFW 28038              ; 249 - Unused
  DEFW 29356              ; 250 - Room Drawing: Point Terrain Interaction and
                          ; Bitmap Virtual Cursors to coordinates x=C, y=B
  DEFW 29375              ; 251 - Draw a graphic (x, y, attribute, Terrain
                          ; Interaction Parameter, graphic lookup index)
  DEFW 28038              ; 252 - Unused
  DEFW 28038              ; 253 - Unused
  DEFW 29396              ; 254 - Read sequence of architecture styles and draw
                          ; appropriate 2-by-2 blocks of brickwork
  DEFW 29414              ; 255 - Read sequence of architecture styles and
                          ; attributes and draw appropriate 2-by-2 blocks of
                          ; brickwork

; Process Command to Pick Up an Object
  CALL 38075              ; Play upward scale sound
  CALL 37654              ; Display / update command summary window at bottom
                          ; of screen
  LD DE,45305             ; Point DE at "PICK UP" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  LD IX,25464             ; Point IX at Objects' Current Positions Table
  LD BC,3200              ; Load B with 12 and C with 128 [bug: Should be Load
                          ; B with 50 and C with 0, or LD BC, 12800]
  LD A,(65529)            ; Load A with Magic Knight's current room
  CP (IX+0)               ; If current object's room is not the same as Magic
                          ; Knight's then...
  JR NZ,30250             ; ...skip ahead to 30250
  INC C                   ; Increase C (count of objects in Magic Knight's
                          ; current room)
  INC IX                  ; Advance IX to next object's position...
  INC IX                  ; ...
  INC IX                  ; ...
  DJNZ 30241              ; Decrease B and loop back for next object
  LD A,C                  ; Copy total number of objects into A...
  OR A                    ; ...and if this value is zero... [can't actually
                          ; happen because of bug at 30238]
  JP Z,34436              ; ...display "THERE IS NOTHING IN THIS ROOM" message
                          ; and return to game
  LD IX,25464             ; Point IX at Objects' Current Positions Table
  LD A,(65529)            ; Load A with Magic Knight's current room...
  LD C,A                  ; ...and copy into C
  CALL 34385              ; Load Magic Knight's coordinates (in characters)
                          ; into DE
  XOR A                   ; Set A to zero
  EX AF,AF'               ; Switch A register
  LD B,50                 ; Load B with 50 (as there are 50 objects)
  LD A,C                  ; Load Magic Knight's current room into A
  CP (IX+0)               ; If room of current object is not the same as Magic
                          ; Knight's current room then...
  JR NZ,30327             ; ...skip ahead to 30327 (advance to next object)
  LD A,D                  ; Copy Magic Knight's y-coordinate into A
  CP (IX+2)               ; If y-coordinate of object is not the same as Magic
                          ; Knight's y-coordinate then...
  JR NZ,30327             ; ...skip ahead to 30327 (advance to next object)
  LD A,E                  ; Load Magic Knight's x-coordinate into A
  DEC A                   ; Decrease x-coordinate by two...
  DEC A                   ; ...
  CP (IX+1)               ; If x-coordinate of object is the same as Magic
                          ; Knight's x-coordinate minus two...
  JP Z,30341              ; ...skip ahead to 30341
  INC A                   ; Increase x-coordinate by one
  CP (IX+1)               ; If x-coordinate of object is the same as Magic
                          ; Knight's x-coordinate minus one then...
  JP Z,30341              ; ...skip ahead to 30341
  INC A                   ; Increase x-coordinate by one
  CP (IX+1)               ; If x-coordinate of object is the same as Magic
                          ; Knight's x-coordinate then...
  JP Z,30341              ; ...skip ahead to 30341
  INC A                   ; Increase x-coordinate by one
  CP (IX+1)               ; If x-coordinate of object is the same as Magic
                          ; Knight's x-coordinate plus one then...
  JP Z,30341              ; ...skip ahead to 30341
  INC A                   ; Increase x-coordinate by one
  CP (IX+1)               ; If x-coordinate of object is the same as Magic
                          ; Knight's x-coordinate plus two then...
  JP Z,30341              ; ...skip ahead to 30341
  INC IX                  ; Advance IX by three bytes to move to next object...
  INC IX                  ; ...
  INC IX                  ; ...
  EX AF,AF'               ; Switch A register back (so now contains the index
                          ; of the object to test next)
  INC A                   ; Increase A (index of current object to test)
  EX AF,AF'               ; Switch A register
  DJNZ 30278              ; Loop back to 30278 for next object
  JP 34430                ; Display "THERE IS NOTHING NEAR ENOUGH" message and
                          ; return to game
; An object has been found within Magic Knight's reach so make this the Current
; Object
  EX AF,AF'               ; Switch A register (so now contains index of first
                          ; object that is within Magic Knight's reach)
  LD (30467),A            ; Load index of this object into instruction at 30466
                          ; (i.e. set as Current Object)
  LD HL,41236             ; Point HL at table of object names
  LD B,A                  ; Load B with index of object that is within Magic
                          ; Knight's reach
  CALL 34842              ; Advance HL to B-th entry in object names table
  EX DE,HL                ; Swap DE and HL (so DE now contains pointer to name
                          ; of Current Object)
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  LD A,(30467)            ; Load A with index of Current Object...
  CP 34                   ; ...and if it is not object 34 (Strange Liquid)
                          ; then...
  JR NZ,30369             ; ...jump to 30369
  JP 34592                ; Display "THE LIQUID IS STUCK TO THE FLOOR (IT'S A
                          ; VERY THICK LIQUID)" window and exit
  LD HL,25399             ; Load A with object at Magic Knight's fifth
                          ; inventory slot...
  LD A,(HL)               ; ...
  OR A                    ; If this is not zero (i.e. Magic Knight's hands are
                          ; full)...
  JP NZ,34418             ; ...then display "YOUR HANDS ARE FULL" window and
                          ; return to game
  CALL 34202              ; Check whether object has a weight greater than
                          ; Magic Knight's surplus strength...
  JP P,34424              ; ...and if it does, display "THAT OBJECT IS TOO
                          ; HEAVY" message and return to game
  LD A,(30467)            ; Load A with index of Current Object...
  LD C,A                  ; ...and into C
  LD B,5                  ; Load B with 5 (as 5 inventory slots)
  LD HL,25395             ; Point HL at start of Magic Knight's inventory
  CALL 34151              ; Load object in C into Magic Knight's first empty
                          ; inventory slot
  LD A,(30467)            ; Load A with index of Current Object...
  LD C,A                  ; ...and into C
  ADD A,A                 ; Multiply index by three in A...
  ADD A,C                 ; ...
  LD B,0                  ; Load B with zero
  LD C,A                  ; Load three times object index into C (as position
                          ; data is three bytes wide)
  LD HL,25464             ; Point HL at Objects' Current Positions Table
  ADD HL,BC               ; Add BC as offset to point HL at position data for
                          ; Current Object
  LD (HL),99              ; Set object's room to 99
; This entry point is used by the routines at 30439, 30602 and 30880.
  LD IX,25395             ; Point IX at Magic Knight's current inventory
  LD B,5                  ; Load B with 5 (as five inventory slots)
  LD HL,45285             ; Point HL at "YOU ARE NOW CARRYING" text
  CALL 34907              ; Display "Magic Knight's current inventory" window
                          ; as an information window
  CALL 38749              ; Display "PRESS SPACE OR FIRE TO CONTINUE" window
                          ; and wait for space / fire
  CALL 35495              ; Set Magic Knight's available action flags
; This entry point is used by the routines at 31153, 31370, 32035, 32194,
; 32258, 32655, 33932, 34350, 34768, 35141 and 38725.
  LD A,(23377)            ; Reset Gimbal-White-Out Safe Flag...
  AND 254                 ; ...
  LD (23377),A            ; ...
  JP 27168                ; Redraw current room and return to game

; Process Command to Drop an Object
  CALL 38075              ; Play upward scale sound
  LD IX,25395             ; Point IX at start of Magic Knight's inventory
  LD B,5                  ; Load B with 5, as there are five inventory slots to
                          ; check
  LD HL,45429             ; Point HL at "DROP WHICH OBJECT?" text
  LD DE,45440             ; Point DE at "DROP" text
  CALL 34914              ; Show list of objects (window or menu) and handle
                          ; selection if a menu
  LD HL,25395             ; Point HL at start of Magic Knight's current
                          ; inventory
  CALL 34864              ; Point DE at name of a selected object in object
                          ; names table and print in command summary window
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
; The operand of the instruction at 30466 represents the index of the Current
; Object used in multiple routines. This is modified by the instructions at
; 30342 and 34871.
  LD A,0                  ; Load A with index of Current Object
  LD E,1                  ; Load E with 1 (Drop status)
  CALL 34160              ; Point HL to drop status of object A
  BIT 0,(HL)              ; If drop status is not zero, i.e. object can't be
                          ; dropped then...
  JP NZ,34442             ; ...jump to 34442 (display "YOU CAN'T DROP THAT
                          ; OBJECT" window and return to game)
  LD A,(30467)            ; Load A with index of Current Object
  CP 16                   ; If not object 16 (i.e. not Glowing Bottle)...
  JR NZ,30490             ; ...skip ahead to 30490...
  CALL 30540              ; ...else smash Glowing Bottle and release Banshee...
  JR 30504                ; ...and skip ahead to 30504
  LD A,(30467)            ; Load A with index of Current Object
  LD C,A                  ; Copy into C
  PUSH BC                 ; Store BC
  LD B,5                  ; Load B with 5
  LD HL,25395             ; Point HL at start of Magic Knight's current
                          ; inventory
  CALL 38674              ; Remove object C from Magic Knight's inventory (and
                          ; tidy up remainder of slots)
  POP BC                  ; Restore BC
  LD A,C                  ; Load Current Object's index into A
  ADD A,A                 ; Multiply object index by 3...
  ADD A,C                 ; ...
  LD C,A                  ; ...and load back into C
  LD B,0                  ; Load B with zero
  LD HL,25464             ; Point HL at start of Objects' Current Positions
                          ; Table at 25464
  ADD HL,BC               ; Add three times Current Object's index as offset to
                          ; point HL at position data of Current Object
  LD A,(65529)            ; Load A with Magic Knight's current room
  LD (HL),A               ; Set object's current room to be same as Magic
                          ; Knight's
  INC HL                  ; Advance HL to x-coordinate of object
  LD B,0                  ; Set B to zero
  LD A,(25387)            ; Load Magic Knight's current x-coordinate into A
  AND 7                   ; Get x-coordinate in terms of pixels within current
                          ; character block (i.e. lowest 3 bits of
                          ; x-coordinate)
  JR Z,30529              ; If this is zero (i.e. Magic Knight at left-most
                          ; pixel in character block) then skip ahead to
                          ; 30529...
  INC B                   ; ...else increase B
  CALL 34385              ; Load Magic Knight's coordinates (in characters)
                          ; into DE
  LD A,B                  ; Load B into A
  ADD A,E                 ; Add Magic Knight's x-coordinate to A
  LD (HL),A               ; Set this as object's x-coordinate
  INC HL                  ; Advance HL to y-coordinate of object
  LD (HL),D               ; Set this to same as Magic Knight's y-coordinate
  JP 30410                ; Display Magic Knight's current inventory and return
                          ; to game

; Smash Glowing Bottle
;
; Used by the routines at 30439 and 32390. Input:  C  16 (Item index of Glowing
; Bottle) Output: C  14 (Item index of Broken Glass)
  LD C,16                 ; Remove Glowing Bottle from Magic Knight's
                          ; inventory...
  LD B,5                  ; ...
  LD HL,25395             ; ...
  CALL 38674              ; ...
  LD HL,45496             ; Display "YOU DROPPED THE BOTTLE TO THE GROUND..."
                          ; window (window 26)...
  LD A,26                 ; ...
  CALL 36987              ; ...
  LD HL,45496             ; ...
  CALL 36725              ; ...
  LD A,(23467)            ; Set "Banshee is released" flag...
  SET 0,A                 ; ...
  LD (23467),A            ; ...
  CALL 38749              ; Display "PRESS SPACE OR FIRE TO CONTINUE" window
                          ; and wait for space / fire
  LD B,7                  ; Set B to 7 (index of Banshee)
  LD A,(65529)            ; Load A with Magic Knight's current room...
  LD C,A                  ; ...and copy into C
  CALL 36327              ; Assign a slot in room C to character B and get x-
                          ; and y-coordinates in BC
  CP 4                    ; If assigned slot number is 4 (i.e. already three
                          ; characters in current room)...
  JR Z,30599              ; ...then skip ahead to 30599
  LD HL,25461             ; Point HL at Banshee's current location
  LD A,(65529)            ; Load Magic Knight's current room index into A
  LD (HL),A               ; Set Banshee's current room as Magic Knight's
                          ; current room
  INC HL                  ; Point HL at Banshee's current x-coordinate...
  LD (HL),C               ; ...and set to match assigned slot
  INC HL                  ; Point HL at Banshee's current y-coordinate
  LD (HL),B               ; ...and set to match assigned slot
  LD C,14                 ; Load C with index of Broken Glass (as this will be
                          ; replacing the Glowing Bottle in the world)
  RET                     ; Return

; Process Command to Take an Object
  CALL 38075              ; Play upward scale sound
  LD HL,44051             ; Point HL at "TAKE AN OBJECT FROM ?" text
  LD DE,45619             ; Point DE at "TAKE SOMETHING FROM" text
  CALL 35141              ; Display and process input for character selection
                          ; menu (current room's characters only), setting
                          ; Current Character
; The operand of the instruction at 30614 represents the index of the Current
; Character used in multiple routines. This is modified by the instructions at
; 31430, 34893, 35258, 35349, 35383 and 55462.
  LD A,0                  ; Load A with index of Current Character
  CALL 34186              ; Point IX at current inventory of character in A
  LD A,(IX+0)             ; Load character's first inventory object into A
  OR A                    ; If first object is zero (i.e. character's hands are
                          ; empty)...
  JP Z,34448              ; ...display "[CHARACTER]'S HANDS ARE EMPTY" window
                          ; and exit
  PUSH IX                 ; Store IX (pointer to current inventory of Current
                          ; Character)
  LD B,5                  ; Load B with 5 (as there are 5 inventory slots)
  LD HL,45609             ; Point HL at "TAKE WHICH OBJECT?" text
  LD DE,0                 ; Set DE to zero so Command Summary Window is not
                          ; updated upon selecting a character
  CALL 34914              ; Show list of objects (window or menu) and handle
                          ; selection, loading ASCII index code of chosen
                          ; object into A
  PUSH AF                 ; Store AF (A = ASCII code of letter of chosen
                          ; object, e.g. A = first object, B = second, etc.)
  CALL 37654              ; Display / update command summary window at bottom
                          ; of screen
  LD DE,45616             ; Point DE at "TAKE" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  POP AF                  ; Restore AF (ASCII code of index of selected object)
  POP HL                  ; Restore HL (previously IX, pointer to current
                          ; inventory of Current Character)
  CALL 34864              ; Point DE at name of a selected object in object
                          ; names table and print in command summary window
  LD DE,45623             ; Point DE at "FROM" text...
  CALL 38693              ; ...and print in Command Summary Window
  LD A,(30615)            ; Load A with index of Current Character
  CALL 34896              ; Print short name of Current Character in command
                          ; summary window
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  LD HL,25399             ; Point HL at Magic Knight's fifth inventory slot...
  LD A,(HL)               ; ...and if this is not empty...
  OR A                    ; ...
  JP NZ,34418             ; ...then display "YOUR HANDS ARE FULL" window and
                          ; return to game
  CALL 34202              ; Check whether object has a weight greater than
                          ; Magic Knight's surplus strength...
  JP P,34424              ; ...and if it is, display "THAT OBJECT IS TOO HEAVY"
                          ; message and return to game
  CALL 34137              ; Load happiness of Current Character into A
  CP 30                   ; If character's happiness is less than 30...
  JP C,34454              ; ...then display "[CHARACTER] WANTS TO KEEP THAT"
                          ; window and return to game
  LD A,(30467)            ; Load B with index of Current Object...
  LD B,A                  ; ...
  LD A,(30615)            ; Load index of Current Character into A
  OR A                    ; If character index is not zero (i.e. not Gimbal)...
  JP NZ,30705             ; ...then skip ahead to 30705 (Thor's section)
  JP 30847                ; Skip ahead to 30847 (transfer object from Gimbal's
                          ; inventory to Magic Knight's and return to game)
  CP 1                    ; If character index is not 1 (i.e. not Thor)...
  JP NZ,30745             ; ...then skip ahead to 30745 (Florin's section)
  LD A,B                  ; Load index of selected object into B
  CP 3                    ; If selected object is not Miolnir...
  JR NZ,30742             ; ...then skip ahead to 30742
  LD HL,45668             ; Point HL at "THOR IS ANGRY..." text
  LD A,(HL)               ; Load text height (rows) into A...
  LD (41981),A            ; ...and then into stored bottom y-coordinate of
                          ; window #13
  INC HL                  ; Advance HL to start of actual text data
  PUSH HL                 ; Store HL
  LD A,13                 ; Draw window 13...
  CALL 36987              ; ...
  POP HL                  ; Restore HL (pointer to text)
  CALL 36725              ; Print text into window
  CALL 38749              ; Display "PRESS SPACE OR FIRE TO CONTINUE" window
                          ; and wait for space / fire
  LD HL,45798             ; Point HL at "THOR KILLED YOU" text
  JP 35101                ; Jump to "Game over" window routine and exit
  JP 30847                ; Skip ahead to 30847 (transfer object from Current
                          ; Character's inventory to Magic Knight's and return
                          ; to game)
  CP 2                    ; If character index is not 2 (i.e. not Florin)...
  JP NZ,30784             ; ... then skip ahead to 30784 (Orik's section)
  LD A,B                  ; Load index of selected object into B
  CP 5                    ; If selected object is the Sticky Bun...
  JP Z,34454              ; ...then display "[CHARACTER] WANTS TO KEEP THAT"
                          ; window and return to game
  CP 11                   ; If selected object is the Broken Talisman...
  JP Z,34454              ; ...then display "[CHARACTER] WANTS TO KEEP THAT"
                          ; window and return to game
  CP 10                   ; If selected object is the Tube of Glue...
  JP Z,34454              ; ...then display "[CHARACTER] WANTS TO KEEP THAT"
                          ; window and return to game
  CP 30                   ; If selected object is the Gold Bar...
  JP Z,34454              ; ...then display "[CHARACTER] WANTS TO KEEP THAT"
                          ; window and return to game
  CP 26                   ; If object is not Bottle of Liquid...
  JP NZ,30847             ; ...then skip ahead to 30847 (transfer object from
                          ; Current Character's inventory to Magic Knight's and
                          ; return to game)
  LD A,96                 ; Set Magic Knight's strength to 96...
  LD (25315),A            ; ...
  JP 30847                ; Jump to 30847 (transfer object from Current
                          ; Character's inventory to Magic Knight's and return
                          ; to game)
  CP 3                    ; If character index is not 3 (i.e. not Orik)...
  JP NZ,30798             ; ...then skip ahead to 30798 (Samsun's section)
  LD A,B                  ; Load index of selected object into B
  CP 2                    ; If selected object is the Book of Shadows...
  JP Z,34454              ; ...then display "[CHARACTER] WANTS TO KEEP THAT"
                          ; window and return to game
  JP 30847                ; Skip ahead to 30847 (transfer object from Current
                          ; Character's inventory to Magic Knight's and return
                          ; to game)
  CP 4                    ; If character index is not 4 (i.e. not Samsun)...
  JP NZ,30817             ; ...then skip ahead to 30817 (Elrand's section)
  LD A,B                  ; Load index of selected object into B
  CP 8                    ; If selected object is the Javelin...
  JP Z,34454              ; ...then display "[CHARACTER] WANTS TO KEEP THAT"
                          ; window and return to game
  CP 29                   ; If selected object is the Platform...
  JP Z,34454              ; ...then display "[CHARACTER] WANTS TO KEEP THAT"
                          ; window and return to game
  JP 30847                ; Skip ahead to 30847 (transfer object from Current
                          ; Character's inventory to Magic Knight's and return
                          ; to game)
  CP 5                    ; If character index is not 5 (i.e. not Elrand)...
  JP NZ,30831             ; ...then skip ahead to 30831 (Rosmar's section)
  LD A,B                  ; Load index of selected object into B
  CP 40                   ; If selected object is the Trumpet...
  JP Z,34454              ; ...then display "[CHARACTER] WANTS TO KEEP THAT"
                          ; window and return to game
  JP 30847                ; Skip ahead to 30847 (transfer object from Current
                          ; Character's inventory to Magic Knight's and return
                          ; to game)
  CP 6                    ; If character index is not 6 (i.e. not Rosmar)...
  JP NZ,30847             ; ...then skip ahead to 30847 (transfer object from
                          ; Current Character's inventory to Magic Knight's and
                          ; return to game)
  LD A,B                  ; Load index of selected object into B
  CP 36                   ; If selected object is the Pocket Laser...
  JP Z,34454              ; ...then display "[CHARACTER] WANTS TO KEEP THAT"
                          ; window and return to game
  CP 18                   ; If selected object is the Fast Blow Fuse...
  JP Z,34454              ; ...then display "[CHARACTER] WANTS TO KEEP THAT"
                          ; window and return to game
  LD A,(30615)            ; Load A with index of Current Character
  CALL 34186              ; Point IX at current inventory of character in A
  PUSH IX                 ; Transfer pointer to current inventory of Current
                          ; Character from IX to HL...
  POP HL                  ; ...
  LD A,(30467)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (as five inventory slots)
  CALL 38674              ; Remove current (selected) object from character's
                          ; inventory
  LD A,(30467)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 (as five inventory slots)
  LD HL,25395             ; Point HL at start of Magic Knight's inventory
  CALL 34151              ; Load current (selected) object into Magic Knight's
                          ; first empty inventory slot
  JP 30410                ; Display Magic Knight's current inventory and return
                          ; to game

; Process Command to Give an Object
  CALL 38075              ; Play upward scale sound
  LD IX,25395             ; Point IX at Magic Knight's inventory
  LD B,5                  ; Load B with 5 (as there are five inventory slots)
  LD HL,45810             ; Point HL at "GIVE WHICH OBJECT?" text
  LD DE,45817             ; Point DE at "GIVE" text
  CALL 34914              ; Show list of objects (window or menu) and handle
                          ; selection if a menu
  LD HL,25395             ; Point HL at Magic Knight's inventory
  CALL 34864              ; Point DE at name of a selected object in object
                          ; names table and print in command summary window
  LD DE,45820             ; Point DE at "TO" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  LD HL,44058             ; Point HL to "GIVE AN OBJECT TO ?" text
  LD DE,0                 ; Set DE to zero so Command Summary Window is not
                          ; updated with additional text
  CALL 35141              ; Display and process input for character selection
                          ; menu (current room's characters only), setting
                          ; Current Character
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  LD A,(30615)            ; Load A with index of Current Character
  CALL 34186              ; Point IX at current inventory of character in A
  LD A,(IX+4)             ; Load A with contents of character's last inventory
                          ; slot
  OR A                    ; If inventory slot is not empty...
  JP NZ,34460             ; ...then display "[CHARACTER]'S HANDS ARE FULL"
                          ; window and return to game
  LD BC,1280              ; Load B (number of inventory slots) with 5 and C
                          ; (running total of character's carried weight) with
                          ; 0
  LD A,(IX+0)             ; Load index of object in character's current
                          ; inventory slot into A
  OR A                    ; If object index is zero (i.e. there is nothing in
                          ; this slot and we have reached the end of the
                          ; inventory)...
  JR Z,30953              ; ...then jump ahead to 30953 (IX now points to first
                          ; empty inventory slot)
  CALL 34126              ; Load A with weight of object A
  ADD A,C                 ; Add weight of object to C...
  LD C,A                  ; ...
  INC IX                  ; Advance to next inventory slot
  DJNZ 30938              ; Decrease B and loop back for next slot
  LD A,(30467)            ; Load A with index of Current Object
  CALL 34126              ; Load A with weight of object A
  ADD A,C                 ; Add weight of Current Object to total weight
                          ; currently held by the character...
  LD C,A                  ; ...in C
  LD A,(30615)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at strength of character whose index is
                          ; A...
  CALL 34174              ; ...
  LD A,(HL)               ; Load character's strength into A
  CP C                    ; If total weight in C is greater than character's
                          ; strength in A...
  JP C,34466              ; ...then display "[CHARACTER] IS NOT STRONG ENOUGH"
                          ; window and return to game
  CALL 34137              ; Load happiness of Current Character into A
  CP 25                   ; If character's happiness is less than 25...
  JP C,34472              ; ...then display "[CHARACTER] DOES NOT WANT THAT"
                          ; window and return to game
  LD A,(30467)            ; Load B with index of Current Object...
  LD B,A                  ; ...
  LD A,(30615)            ; Load A with index of Current Character
  OR A                    ; If Current Character is not 0 (Gimbal)...
  JP NZ,31009             ; ...then skip ahead to 31009
  LD A,B                  ; Load index of Current Object into A...
  CP 24                   ; If Current Object is not the Willow Rod...
  JR NZ,31006             ; ...then skip ahead to 31006
  LD A,(25328)            ; Set Gimbal's "can help" flag...  (see trivia)
  OR 1                    ; ...
  LD (25328),A            ; ...
  JP 31135                ; Skip ahead to 31135
  CP 1                    ; If Current Character is not Thor...
  JP NZ,31038             ; ...then skip ahead to 31038
  LD A,B                  ; Load index of Current Object into A
  CP 3                    ; If Current Object is not Miolnir...
  JR NZ,31035             ; ...then skip ahead to 31035
  LD A,(25336)            ; Set Thor's "can help" flag...
  OR 1                    ; ...
  LD (25336),A            ; ...
  LD A,10                 ; Change Thor's "current status" text to 10 (ready to
                          ; help)...
  LD (25338),A            ; ...
  JP 31135                ; Skip ahead to 31135
  JP 31135                ; Skip ahead to 31135 [bug]
  CP 2                    ; If Current Character is not Florin...
  JP NZ,31059             ; ...then skip ahead to 31059
  LD A,B                  ; Load index of Current Object into A
  CP 11                   ; If object is not the Broken Talisman...
  JR NZ,31056             ; ...then skip ahead to 31056
  LD A,(25344)            ; Set Florin's "can help" flag...
  OR 1                    ; ...
  LD (25344),A            ; ...
  JP 31135                ; Skip ahead to 31135
  CP 3                    ; If Current Character is not Orik...
  JP NZ,31068             ; ...then skip ahead to 31068
  LD A,B                  ; Load index of Current Object into A
  JP 31135                ; Skip ahead to 31135
  CP 4                    ; If Current Character is not Samsun...
  JP NZ,31092             ; ...then skip ahead to 31092
  LD A,B                  ; Load index of Current Object into A
  CP 8                    ; If object is not 8 (Javelin)...
  JR NZ,31089             ; ...then skip ahead to 31089
  LD A,(25360)            ; Set Samsun's "can help" flag...
  OR 1                    ; ...
  LD (25360),A            ; ...
  JP 31135                ; Skip ahead to 31135
  JP 31135                ; Skip ahead to 31135 [bug]
  CP 5                    ; If Current Character is not Elrand...
  JP NZ,31111             ; ...then skip ahead to 31111
  LD A,B                  ; Load index of Current Object into A
  CP 40                   ; [bug - missing JP NZ instruction - should check for
                          ; presence of object 40, Trumpet, in Elrand's
                          ; inventory but there is no conditional jump
                          ; following this check]
  LD A,(25368)            ; Set Elrand's "can help" flag...
  OR 1                    ; ...
  LD (25368),A            ; ...
  JP 31135                ; Skip ahead to 31135
  CP 6                    ; If Current Character is not Rosmar...
  JP NZ,31135             ; ...then skip ahead to 31135
  LD A,B                  ; Load index of Current Object into A
  CP 36                   ; If object is not 36 (Pocket Laser)...
  JR NZ,31132             ; ...then skip ahead to 31132
  LD A,(25376)            ; Set Rosmar's "can help" flag...
  OR 1                    ; ...
  LD (25376),A            ; ...
  JP 31135                ; Skip ahead to 31135
  JP 31135                ; Skip ahead to 31135 [bug]
  LD A,(30467)            ; Load index of Current Object into first empty
                          ; inventory slot of character...
  LD (IX+0),A             ; ...
  LD C,A                  ; ...and into C
  LD B,5                  ; Load B with 5 (as there are 5 inventory slots to
                          ; check)
  LD HL,25395             ; Point HL at Magic Knight's inventory
  CALL 38674              ; Remove object C from Magic Knight's inventory (and
                          ; tidy up remainder of slots)
  JP 30410                ; Display Magic Knight's current inventory and return
                          ; to game

; Display and Handle Main In-Game Menu (When Fire is Pressed)
;
; Used by the routine at 27176.
  CALL 38108              ; Set parameters for and play downward scale sound
  LD BC,2048              ; Set B = 8 (eight action flags) and C = 0 (count of
                          ; set flags)
  LD A,(65532)            ; Load Magic Knight's action flags part 1 into A
  RLCA                    ; Pop a flag into carry flag
  JR NC,31166             ; If Magic Knight action flag is not set then skip
                          ; ahead to 31166 to repeat loop for next flag...
  INC C                   ; ...else increase count of set flags
  DJNZ 31162              ; Loop back for next flag until all eight are done
  LD B,8                  ; Set B = 8 (another eight action flags)
  LD A,(65533)            ; Load Magic Knight's action flags part 2 into A
  RLCA                    ; Pop a flag into carry flag
  JR NC,31177             ; If Magic Knight action flag is not set then skip
                          ; ahead to 31177 to repeat loop for next flag...
  INC C                   ; ...else increase count of set flags
  DJNZ 31173              ; Loop back for next flag until all eight are done
  LD A,9                  ; Load A with 9 (as minimal command window has bottom
                          ; y-coordinate of 9)
  ADD A,C                 ; Increase A by number of extra commands available
  LD C,A                  ; Load value back into C
  LD A,(41876)            ; Load A with y-coordinate (characters) of top of
                          ; menu window
  ADD A,C                 ; Update y-coordinate of bottom of window according
                          ; to number of extra commands...
  LD (41877),A            ; ...
  XOR A                   ; Display main in-game menu window (window number
                          ; zero)...
  CALL 36979              ; ...
  LD HL,44103             ; Print "COMMANDS AVAILABLE:-" followed by first five
                          ; commands (Pick up, drop, etc.) that are always
                          ; available...
  CALL 36725              ; ...
  LD HL,16608             ; Set "memory location to start printing character"
                          ; in character printing routine to start of last
                          ; character row of permanent (yellow) menu options...
  LD (36488),HL           ; ...(i.e. "E  EXAMINE") in preparation for printing
                          ; conditional (white) ones, which are [CR]-prefixed
                          ; so will print to next line down
  LD A,(65532)            ; Load A with Magic Knight's action flags part 1
  BIT 0,A                 ; If Command a Character flag is not set then...
  JR Z,31219              ; ...skip ahead to next flag's check
  LD HL,44173             ; Else print "C COMMAND A CHARACTER" text...
  CALL 36725              ; ...
  LD A,(65532)            ; Load A with Magic Knight's action flags part 1
  BIT 1,A                 ; If Locate a Character flag is not set then...
  JR Z,31232              ; ...skip ahead to next flag's check
  LD HL,44181             ; Print "L LOCATE A CHARACTER" text...
  CALL 36725              ; ...
  LD A,(65532)            ; Load A with Magic Knight's action flags part 1
  BIT 2,A                 ; If Teleport flag is not set then...
  JR Z,31245              ; ...skip ahead to next flag's check
  LD HL,44189             ; Print "X TELEPORT" text...
  CALL 36725              ; ...
  LD A,(65532)            ; Load A with Magic Knight's action flags part 1
  BIT 3,A                 ; If Read flag is not set then...
  JR Z,31258              ; ...skip ahead to next flag's check
  LD HL,44194             ; Print "R READ SOMETHING" text...
  CALL 36725              ; ...
  LD A,(65532)            ; Load A with Magic Knight's action flags part 1
  BIT 4,A                 ; If Throw flag is not set then...
  JR Z,31271              ; ...skip ahead to next flag's check
  LD HL,44200             ; Print "Y THROW SOMETHING" text...
  CALL 36725              ; ...
  LD A,(65532)            ; Load A with Magic Knight's action flags part 1
  BIT 5,A                 ; If Cast a spell flag is not set then...
  JR Z,31284              ; ...skip ahead to next flag's check
  LD HL,44206             ; Print "S CAST A SPELL" text...
  CALL 36725              ; ...
  LD A,(65532)            ; Load A with Magic Knight's action flags part 1
  BIT 6,A                 ; If Blow flag is not set then...
  JR Z,31297              ; ...skip ahead to next flag's check
  LD HL,44214             ; Print "B BLOW SOMETHING" text...
  CALL 36725              ; ...
  LD A,(65532)            ; Load A with Magic Knight's action flags part 1
  BIT 7,A                 ; If Call Lift flag is not set then...
  JR Z,31310              ; ...skip ahead to next flag's check
  LD HL,44224             ; Print "W CALL LIFT" text...
  CALL 36725              ; ...
  LD A,(65533)            ; Load A with Magic Knight's action flags part 2
  BIT 0,A                 ; If Move Lift flag is not set then...
  JR Z,31323              ; ...skip ahead to next menu object
  LD HL,44234             ; Print "V MOVE LIFT" text...
  CALL 36725              ; ...
  LD HL,44159             ; Print "Z EXIT MENU" text...
  CALL 36725              ; ...
  CALL 37333              ; Process keyboard / joystick input for menu, and
                          ; load ASCII code of shortcut for selected (i.e.
                          ; SPACE or fire pressed) item into A
  CP 90                   ; If "Z" was pressed...
  JP Z,30428              ; ...reset Gimbal-White-Out Safe Flag, redraw current
                          ; room and return to main game loop
  LD HL,41811             ; Point HL at start of string of keyboard shortcuts
                          ; for commands
  LD B,A                  ; Load ASCII code of key pressed into B
  LD C,0                  ; Set C (selected command number) to zero
  LD A,(HL)               ; Load keyboard shortcut pointed to by HL into A
  CP B                    ; If key pressed matches currently-pointed-at
                          ; shortcut...
  JP Z,31352              ; ...then jump ahead to 31352
  INC C                   ; Increase C (advance to next command to check if
                          ; that was selected instead)
  INC HL                  ; Advance to next entry in list of command shortcuts
  JR 31343                ; Loop back to 31343 to test next command
  LD A,C                  ; Load double index of selected command into BC...
  ADD A,A                 ; ...
  LD B,0                  ; ...
  LD C,A                  ; ...
  LD HL,41827             ; Point HL at table of routine start addresses for
                          ; Magic Knight's main menu commands
  ADD HL,BC               ; Add double index of selected command as offset
  LD A,(HL)               ; Load address of appropriate command processing
                          ; routine into HL...
  INC HL                  ; ...
  LD H,(HL)               ; ...
  LD L,A                  ; ...
  XOR A                   ; Set last key pressed to null...
  LD (23560),A            ; ...
  JP (HL)                 ; Jump to routine to process selected command

; Process Command to Examine an Object, a Character or Magic Knight
  CALL 38075              ; Play upward scale sound
  LD A,(23377)            ; Set Gimbal-White-Out Safe Flag...
  OR 1                    ; ...
  LD (23377),A            ; ...
  CALL 37654              ; Display / update command summary window at bottom
                          ; of screen
  LD DE,45897             ; Point DE at "EXAMINE" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  LD A,16                 ; Display "EXAMINE WHAT?" menu window...
  CALL 36979              ; ...
  LD HL,45899             ; Print "EXAMINE WHAT? ... O OBJECT ... C CHARACTER
                          ; ... S YOURSELF" text...
  CALL 36725              ; ...
  CALL 37333              ; Process keyboard / joystick input for menu, and
                          ; load ASCII code of shortcut for selected (i.e.
                          ; SPACE or fire pressed) item into A
  CP 79                   ; If "O" pressed (i.e. EXAMINE OBJECT)...
  JP Z,31548              ; ...then skip ahead to 31548
  CP 67                   ; If "C" pressed (i.e. EXAMINE CHARACTER)...
  JP Z,31452              ; ...then skip ahead to 31452
; Examine Yourself
  LD DE,46396             ; Point DE at "YOURSELF" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  LD A,18                 ; Draw window 18...
  CALL 36987              ; ...
  LD A,14                 ; Store 14 in current character memory slot...
  LD (30615),A            ; ...as 14 is the position of "MAGIC KNIGHT" text
                          ; relative to start of characters' short names in
                          ; common words table
  LD HL,46126             ; Point HL at percentage completion text
  LD DE,46138             ; Point DE at time left text
  CALL 34268              ; Insert current time and score into "TIME LEFT" and
                          ; "PERCENTAGE COMPLETION" texts
  LD HL,25315             ; Point HL at Magic Knight's current stats
  XOR A                   ; Load 0 (index of Magic Knight Frame 1 [right] in
                          ; Graphics Lookup Data table at 42642) into
                          ; instruction at 31537...
  LD (31538),A            ; ...
  JP 31484                ; Skip ahead to 31484
; Examine Character
  LD HL,44065             ; Point HL at "EXAMINE ?" text
  LD DE,0                 ; Set DE to zero so Command Summary Window is not
                          ; updated with additional text
  CALL 35141              ; Display and process input for character selection
                          ; menu (current room's characters only), setting
                          ; Current Character
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  LD A,18                 ; Draw window 18...
  CALL 36987              ; ...
  LD A,(30615)            ; Load A with index of Current (selected) Character
  ADD A,69                ; Add 69 to index of selected character (as 69 is
                          ; index of first character in Graphics Lookup Data
                          ; table at 42642)...
  LD (31538),A            ; ...and load into instruction at 31537
  SUB 69                  ; Subtract 69 to revert to index of character
  LD E,0                  ; Point HL at strength of the character...
  CALL 34174              ; ...
  CALL 35837              ; Insert numeric stats (at HL) of a character into
                          ; "EXAMINE CHARACTER" window text
  PUSH HL                 ; Store HL (points to start of character's current
                          ; stats)
  LD HL,45924             ; Print Examine Character window text (i.e. "EXAMINE
                          ; [CHARACTER] ... STRENGTH XX..." text)...
  CALL 36725              ; ...
  POP IX                  ; Restore IX (points to start of character's current
                          ; stats)
  LD A,(IX+6)             ; If character's Asleep Flag is set...
  BIT 7,A                 ; ...
  JP NZ,31507             ; ...then skip ahead to 31507
  LD A,(IX+7)             ; Load A with index of character's Current Status
                          ; Text
  AND 127                 ; Reset bit 7 of A (if character is asleep, then A
                          ; holds the value from IX+6 with bit 7 set. Resetting
                          ; bit 7 leaves 12, index of "[CHARACTER] IS ASLEEP"
                          ; text)
  LD B,A                  ; ...and load into B
  LD HL,46116             ; Point HL at start of characters' "current status"
                          ; texts
  CALL 34845              ; Advance HL to B-th entry in list of zero-terminated
                          ; strings
  CALL 36725              ; Print text at HL
  LD A,19                 ; Draw window 19...
  CALL 36987              ; ...
  LD A,(23493)            ; Load C with x-coordinate of left edge of current
                          ; window to draw (characters)...
  LD C,A                  ; ...
  LD A,(23494)            ; Load B with y-coordinate of top edge of current
                          ; window to draw (characters)...
  LD B,A                  ; ...
  LD A,71                 ; Load system variable ATTR T with 71 (white INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
; The operand of the instruction at 31537 represents the graphic index of the
; selected character. This is modified by the instructions at 31446 and 31474.
  LD A,0                  ; Draw the selected character...
  CALL 29960              ; ...
  CALL 38749              ; Display "PRESS SPACE OR FIRE TO CONTINUE" window
                          ; and wait for space / fire
  JP 30428                ; Reset Gimbal-White-Out Safe Flag, redraw current
                          ; room and return to main game loop
; Examine Object
  LD IX,25395             ; Point IX at Magic Knight's inventory
  LD B,5                  ; Load B with 5 (as there are 5 inventory slots)
  LD HL,45890             ; Point HL at "EXAMINE WHICH OBJECT?" text
  LD DE,0                 ; Set DE to zero so Command Summary Window is not
                          ; updated with additional text
  CALL 34914              ; Show list of objects (window or menu) and handle
                          ; selection if a menu
  LD HL,25395             ; Point HL at Magic Knight's inventory
  CALL 34864              ; Point DE at name of a selected object in object
                          ; names table and print in command summary window
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  LD A,(30467)            ; Load A with index of Current Object
  LD E,0                  ; Load E with 0 (Weight)
  CALL 34160              ; Point HL to weight of object A
  CALL 35887              ; Insert numeric / text stats of an object into
                          ; "EXAMINE OBJECT" window text
  LD A,20                 ; Draw window 20...
  CALL 36987              ; ...
  LD HL,46033             ; Print "      EXAMINE" text...
  CALL 36725              ; ...
  LD A,(30467)            ; Load B with index of Current Object...
  LD B,A                  ; ...
  CALL 34842              ; Advance HL to B-th entry in object names table
  CALL 36725              ; Print the object's name
  LD HL,46038             ; Print " EXAMINE" text...
  CALL 36725              ; ...
  LD A,21                 ; Draw window 21...
  CALL 36987              ; ...
  LD A,(23493)            ; Load C with x-coordinate of left edge of current
                          ; window to draw (characters)...
  LD C,A                  ; ...
  LD A,(23494)            ; Load B with y-coordinate of top edge of current
                          ; window to draw (characters)...
  LD B,A                  ; ...
  INC B                   ; Increase y-coordinate so object is drawn within the
                          ; window rather than overlapping the upper frame
  LD A,(30467)            ; Load A with index of Current Object
  CALL 38539              ; Set Terrain Interaction Data for character blocks
                          ; spanned by the object and draw the object
  CALL 38749              ; Display "PRESS SPACE OR FIRE TO CONTINUE" window
                          ; and wait for space / fire
  JP 30428                ; reset Gimbal-White-Out Safe Flag, redraw current
                          ; room and return to main game loop

; Process and Execute Command to Command a Character
  LD A,(65532)            ; Check Magic Knight's action flags...
  BIT 0,A                 ; ...and if he can't command...
  JP Z,27189              ; ...then jump into Main Game Loop (process keyboard
                          ; input and move Magic Knight, enter menus or execute
                          ; other command)
  CALL 38075              ; Play upward scale sound
  LD HL,44073             ; Point HL at "COMMAND ?" text
  LD DE,46402             ; Point DE at "COMMAND" text
  CALL 35141              ; Display and process input for character selection
                          ; menu (current room's characters only), setting
                          ; Current Character
  LD DE,45820             ; Point DE at "TO" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  LD A,23                 ; Display "WHICH COMMAND DO YOU WANT TO USE" (Command
                          ; [CHARACTER] to...) menu window...
  CALL 36979              ; ...
  LD HL,46405             ; Print "WHICH COMMAND DO YOU WANT TO USE" + "A GO TO
                          ; SLEEP ... B WAKE UP ..." etc. text...
  CALL 36725              ; ...
  CALL 37333              ; Process keyboard / joystick input for menu, and
                          ; load ASCII code of shortcut for selected (i.e.
                          ; SPACE or fire pressed) item into A
  SUB 65                  ; Subtract 65 (ASCII code for "A") to leave index of
                          ; selected command
  LD (31696),A            ; Set index of "Command a character" routine to jump
                          ; to later
  LD B,A                  ; Copy into B
  CALL 34859              ; Advance HL to the B-th entry in list of option
                          ; texts from "Command a character" menu
  EX DE,HL                ; Swap DE (now points to selected command's "Command
                          ; a character" menu text) and HL (now undefined)
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  LD A,(30615)            ; Load A with index of Current Character [bug]
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
; The operand of the instruction at 31695 represents the index of the "Command
; a Character" routine to jump to as stored previously. This is modified by the
; instruction at 31678.
  LD A,0                  ; Load A with index of "Command a Character" routine
                          ; to jump to...
  ADD A,A                 ; ...double it (as entries are two bytes wide)...
  LD E,A                  ; ...and load it into DE...
  LD D,0                  ; ...
  LD HL,31710             ; Point HL to start of "Magic Knight command a
                          ; character to..." routines table
  ADD HL,DE               ; Add offset to obtain entry of interest
  LD A,(HL)               ; Load address at this location into HL...
  INC HL                  ; ...
  LD H,(HL)               ; ...
  LD L,A                  ; ...
  JP (HL)                 ; ...and jump to it

; Table of Routine Addresses for Magic Knight Commanding Characters
  DEFW 31722              ; Go to sleep routine
  DEFW 31763              ; Wake up routine
  DEFW 31804              ; Go away routine
  DEFW 31842              ; Help routine
  DEFW 31920              ; Eat & Drink
  DEFW 31980              ; Be happy routine

; Send Current Character to Sleep if Possible
  LD A,(30615)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at strength...
  CALL 34174              ; ...of character whose index is A
  PUSH HL                 ; Switch pointer from HL to IX...
  POP IX                  ; ...
  BIT 7,(IX+6)            ; If "Character is Asleep" flag is set...
  JP NZ,34478             ; ...then display "[CHARACTER] IS ALREADY ASLEEP"
                          ; window and exit
  LD A,(IX+2)             ; Load A with stamina of Current Character...
  CP 70                   ; ...and if this is at least 70...
  JP NC,34484             ; ...then display "[CHARACTER] IS TOO WAKEFUL TO
                          ; SLEEP" window and exit
  LD A,(IX+1)             ; Load A with the happiness of Current Character...
  CP 30                   ; ...and if this is anything up to 30...
  JP C,34490              ; ...then display "[CHARACTER] DOES NOT WANT TO BE
                          ; COMMANDED BY YOU" window and exit
  SET 7,(IX+6)            ; Set the character's "asleep flag"
  JP 34738                ; Display "[CHARACTER] HAS GONE TO SLEEP" window and
                          ; exit

; Wake Current Character Up if Possible
  LD A,(30615)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at strength...
  CALL 34174              ; ...of character whose index is A
  PUSH HL                 ; Switch pointer from HL to IX...
  POP IX                  ; ...
  BIT 7,(IX+6)            ; If "Character is Asleep" flag is not set...
  JP Z,34496              ; ...then display "[CHARACTER] IS ALREADY AWAKE"
                          ; window and exit
  LD A,(IX+2)             ; Load A with stamina of Current Character...
  CP 30                   ; ...and if this is anything up to 30...
  JP C,34502              ; ...then display "[CHARACTER] IS TOO TIRED TO WAKE
                          ; UP" window and exit
  LD A,(IX+1)             ; Load A with the happiness of Current Character...
  CP 30                   ; ...and if this is anything up to 30...
  JP C,34490              ; ...then display "[CHARACTER] DOES NOT WANT TO BE
                          ; COMMANDED BY YOU" window and exit
  RES 7,(IX+6)            ; Reset the character's "asleep flag"
  JP 34744                ; Display "[CHARACTER] HAS WOKEN UP" window and exit

; Make Current Character Go Away if Possible
  CALL 34350              ; Check if Current Character is asleep and display
                          ; "[CHARACTER] IS ASLEEP" window if so
  LD A,(30615)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at strength...
  CALL 34174              ; ...of character whose index is A
  PUSH HL                 ; Switch pointer from HL to IX...
  POP IX                  ; ...
  LD A,(IX+2)             ; Load A with stamina of Current Character...
  CP 20                   ; ...and if this is anything less than 20...
  JP C,34508              ; ...then display "[CHARACTER] IS TOO TIRED TO GO
                          ; AWAY" window and exit
  LD A,(IX+1)             ; Load A with the happiness of Current Character...
  CP 20                   ; ...and if this is anything up to 20...
  JP C,34490              ; ...then display "[CHARACTER] DOES NOT WANT TO BE
                          ; COMMANDED BY YOU" window and exit
  CALL 34402              ; Point HL at current position data for Current
                          ; Character
  LD (HL),99              ; Change current room number for Current Character to
                          ; 99
  JP 34750                ; Display "[CHARACTER] HAS GONE AWAY" window

; Execute Current Character's Help Routine if Possible
  CALL 34350              ; Check if Current Character is asleep and display
                          ; "[CHARACTER] IS ASLEEP" window if so
  LD A,32                 ; Set last character of "[CHARACTER] CANNOT HELP
                          ; YOU..." text to a space (32)...
  LD (46710),A            ; ...
  LD A,(30615)            ; Load A with index of Current Character
  CP 7                    ; If character is 7 (Banshee)...
  JR Z,31888              ; ...jump ahead to 31888 (overriding following
                          ; section, as Banshee always has zero strength)
  LD E,0                  ; Point HL at strength...
  CALL 34174              ; ...of character whose index is A
  PUSH HL                 ; Switch pointer from HL to IX...
  POP IX                  ; ...
  LD A,(IX+5)             ; Load A with character's "can help" flag
  OR A                    ; If "can help" flag is reset...
  JP Z,34514              ; ...then display "[CHARACTER] CANNOT HELP YOU"
                          ; window and return to game
  LD A,(IX+2)             ; Load A with stamina of Current Character...
  CP 10                   ; ...and if this is anything up to 20...
  JP C,34520              ; ...then display "[CHARACTER] IS TOO TIRED TO HELP
                          ; YOU" window and exit
  LD A,(IX+1)             ; Load A with the happiness of Current Character...
  CP 10                   ; ...and if this is anything up to 10...
  JP C,34490              ; ...then display "[CHARACTER] DOES NOT WANT TO BE
                          ; COMMANDED BY YOU" window and exit
  LD A,(30615)            ; Load DE with double the index of the Current
                          ; Character...
  ADD A,A                 ; ...
  LD E,A                  ; ...
  LD D,0                  ; ...
  LD HL,31904             ; Point HL at table of help routine addresses
  ADD HL,DE               ; ...and add double the character index to get
                          ; specific entry for that character
  LD A,(HL)               ; Load the routine's address into HL...
  INC HL                  ; ...
  LD H,(HL)               ; ...
  LD L,A                  ; ...
  JP (HL)                 ; ...and jump to it

; Table of Start Addresses of Routines for Characters Being Commanded to Help
  DEFW 33808              ; Gimbal help routine
  DEFW 33811              ; Thor help routine
  DEFW 33883              ; Florin help routine
  DEFW 33932              ; Orik help routine
  DEFW 33935              ; Samsun help routine
  DEFW 33993              ; Elrand help routine
  DEFW 34062              ; Rosmar help routine
  DEFW 34106              ; Banshee help routine

; Make Current Character Eat & Drink if Possible
  CALL 34350              ; Check if Current Character is asleep and display
                          ; "[CHARACTER] IS ASLEEP" window if so
  LD A,(30615)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at strength...
  CALL 34174              ; ...of character whose index is A
  PUSH HL                 ; Switch pointer from HL to IX...
  POP IX                  ; ...
  LD A,(IX+4)             ; Load A with food level of Current Character
  OR A                    ; If food level is zero...
  JP Z,34526              ; ...then display "[CHARACTER] HAS NO FOOD LEFT"
                          ; window and exit
  LD A,(IX+2)             ; Load A with stamina of Current Character...
  CP 20                   ; ...and if this is anything up to 20...
  JP C,34532              ; ...then display "[CHARACTER] IS TOO TIRED TO EAT OR
                          ; DRINK" window and exit
  LD A,(IX+1)             ; Load A with the happiness of Current Character...
  CP 30                   ; ...and if this is anything up to 30...
  JP C,34490              ; ...then display "[CHARACTER] DOES NOT WANT TO BE
                          ; COMMANDED BY YOU" window and exit
  LD A,(IX+0)             ; Load A with the strength of Current Character...
  CP 100                  ; ...and if this is equal to 100...
  JP Z,34756              ; ...then display "[CHARACTER] HAS TAKEN REFRESHMENT"
                          ; window and exit
  DEC (IX+4)              ; Decrease food level by one
  INC (IX+0)              ; Increase strength by one
  LD A,(IX+4)             ; If food level is not zero...
  OR A                    ; ...
  JR NZ,31957             ; ...then loop back to 31957
  JP 34756                ; ...then display "[CHARACTER] HAS TAKEN REFRESHMENT"
                          ; window and exit

; Make Current Character Be Happy if Possible
  CALL 34350              ; Check if Current Character is asleep and display
                          ; "[CHARACTER] IS ASLEEP" window if so
  LD A,(30615)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at strength...
  CALL 34174              ; ...of character whose index is A
  PUSH HL                 ; Switch pointer from HL to IX...
  POP IX                  ; ...
  LD A,(IX+2)             ; Load A with stamina of Current Character...
  CP 30                   ; ...and if this is anything up to 30...
  JP C,34538              ; ...then display "[CHARACTER] IS TOO TIRED TO BE
                          ; HAPPY" window and exit
  LD A,(IX+1)             ; Load A with the happiness of Current Character...
  CP 5                    ; ...and if this is anything up to 5...
  JP C,34490              ; ...then display "[CHARACTER] DOES NOT WANT TO BE
                          ; COMMANDED BY YOU" window and exit
  LD A,(30615)            ; Load A with index of Current Character...
  LD E,A                  ; ...and copy into DE...
  LD D,0                  ; ...
  LD HL,32027             ; Point HL to table of default happiness levels...
  ADD HL,DE               ; ...and add character index as offset
  LD A,(HL)               ; Load entry into A...
  LD (IX+1),A             ; ...and set happiness of Current Character to this
                          ; value
  JP 34762                ; Display "[CHARACTER] WILL TRY TO BE HAPPY" window

; Table of Characters' Default Happiness Levels
  DEFB 100                ; Gimbal's default happiness
  DEFB 70                 ; Thor's default happiness
  DEFB 80                 ; Florin's default happiness
  DEFB 40                 ; Orik's default happiness
  DEFB 50                 ; Samsun's default happiness
  DEFB 98                 ; Elrand's default happiness
  DEFB 90                 ; Rosmar's default happiness
  DEFB 0                  ; Banshee's default happiness

; Process and Execute Command to Locate a Character
  LD A,(65532)            ; If "Magic Knight Can Locate" flag is not set...
  BIT 1,A                 ; ...
  JP Z,27189              ; ...then jump into Main Game Loop (process keyboard
                          ; input and move Magic Knight, enter menus or execute
                          ; other command)
  CALL 38075              ; Play upward scale sound
  CALL 37654              ; Display / update command summary window at bottom
                          ; of screen
  LD DE,46807             ; Point DE at "LOCATE" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  LD HL,44078             ; Point HL at "LOCATE ?" text
  PUSH HL                 ; Store HL
  CALL 35293              ; Display and handle full character selection menu
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  LD A,22                 ; Draw window 22...
  CALL 36987              ; ...
  LD A,(23493)            ; Load A with x-coordinate of left-hand edge of
                          ; window...
  ADD A,2                 ; ...add 2...
  LD C,A                  ; ...and load into C
  LD A,(23494)            ; Load A with y-coordinate of top edge of window...
  ADD A,3                 ; ...add 3...
  LD B,A                  ; ...and load into B
  LD A,71                 ; Load system variable ATTR T with 71 (white INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD A,1                  ; Draw "Locate a Character" compass...
  CALL 29960              ; ...
  LD HL,46810             ; Print "LOCATED [CHARACTER]" text...
  CALL 36725              ; ...
  CALL 34402              ; Point HL at current position data for Current
                          ; Character
  LD DE,0                 ; Set DE to zero so Command Summary Window is not
                          ; updated with additional text
  LD A,(HL)               ; Load room of Current Character
  OR A                    ; If room is zero (i.e. character is in the Lift)...
  JP Z,32183              ; ...then skip ahead to 32183
  DEC A                   ; Discard floor information and set A to represent
                          ; room number 0-7 (starting at zero for room next to
                          ; Lift), i.e. room's x-coordinate...
  AND 7                   ; ...
  LD B,A                  ; ...and load into B
  LD A,(65529)            ; Load Magic Knight's current room into A
  DEC A                   ; Discard floor information and set A to represent
                          ; room number 0-7 (starting at zero for room next to
                          ; Lift), i.e. room's x-coordinate...
  AND 7                   ; ...
  CP B                    ; Compare character's room x-coordinate to Magic
                          ; Knight's
  JR Z,32131              ; If character's room and Magic Knight's room are at
                          ; the same x-coordinate, then skip ahead to 32131
  JP M,32129              ; If character's room is to the right of Magic
                          ; Knight's, then skip ahead to 32129
; Character's room is to the left of Magic Knight's
  LD E,254                ; Load E with 254 (-2)
  JR 32131                ; Skip ahead to 32131
  LD E,2                  ; Load E with 2
  LD A,(HL)               ; Load A with character's current room
  DEC A                   ; Decrease by one
  AND 248                 ; Clear all but floor information (i.e. y-coordinate)
  LD B,A                  ; Load into B
  LD A,(65529)            ; Load Magic Knight's current room into A
  DEC A                   ; Decrease by one
  AND 248                 ; Clear all but floor information (i.e. y-coordinate)
  CP B                    ; Compare character's room y-coordinate to Magic
                          ; Knight's
  JR Z,32154              ; If character's room and Magic Knight's room are at
                          ; the same y-coordinate, then skip ahead to 32154
  JP M,32152              ; If character's room is below Magic Knight's, then
                          ; skip ahead to 32152
; Character's room is above Magic Knight's
  LD D,254                ; Load D with 254 (-2)
  JR 32154                ; Skip ahead to 32154
  LD D,2                  ; Load D with 2
  LD A,(23494)            ; Load A with y-coordinate of top edge of current
                          ; window to draw (characters)  (typically 1)
  ADD A,5                 ; Add 5 to y-coordinate (now pointing at top row of
                          ; middle "origin" square of "locate compass")
  ADD A,D                 ; Add D (which is either +/-2 to point to top half or
                          ; bottom half of "locate compass")
  LD H,A                  ; Load this y-coordinate into H
  LD A,(23493)            ; Load A with x-coordinate of left edge of current
                          ; window (typically 1)
  ADD A,4                 ; Add 4 to y-coordinate (now pointing at left column
                          ; of middle "origin" square of "locate compass")
  ADD A,E                 ; Add E (which is either +/-2 to point to left half
                          ; or right half of "locate compass")
  LD L,A                  ; Load x-coordinate into L
  LD (23462),HL           ; Store HL at 23462
  CALL 38749              ; Display "PRESS SPACE OR FIRE TO CONTINUE" window
                          ; and wait for space / fire
  LD HL,0                 ; Set word at 23462 to zero...
  LD (23462),HL           ; ...
  JP 30428                ; Reset Gimbal-White-Out Safe Flag, redraw current
                          ; room and return to main game loop
  LD HL,46815             ; Print "IN THE LIFT" text...
  CALL 36725              ; ...
  LD HL,1539              ; Set H to 6 and L to 3 (as Lift is always left of
                          ; Magic Knight's current room when he's not in the
                          ; Lift!)
  JR 32168                ; Skip back to display the compass

; Process and Execute Command to Teleport
  LD A,(65532)            ; If "Magic Knight Can Teleport" flag is not set
                          ; then...
  BIT 2,A                 ; ...
  JP Z,27189              ; ...jump into Main Game Loop (process keyboard input
                          ; and move Magic Knight, enter menus or execute other
                          ; command)
  CALL 38075              ; Play upward scale sound
  CALL 37654              ; Display / update command summary window at bottom
                          ; of screen
  LD DE,50346             ; Point DE at "TELEPORT" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  LD A,(25611)            ; Get current location (room) of Teleport Pad...
  CP 99                   ; ...and if this is set to 99...
  JP Z,34584              ; ...Display "IT IS NOT SAFE TO TELEPORT TRY AGAIN
                          ; LATER" window and exit
  LD HL,25611             ; Point HL to current position data of Teleport Pad
  LD A,(HL)               ; Load A with current location (room) of Teleport
                          ; Pad...
  LD (65529),A            ; ...then update Magic Knight's current room to match
  INC HL                  ; Advance HL to x-coordinate of Teleport Pad...
  LD A,(HL)               ; ...and load this into A
  ADD A,A                 ; Multiply x-coordinate by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (25387),A            ; ...and update Magic Knight's current x-coordinate
                          ; to match
  INC HL                  ; Advance HL to y-coordinate of Teleport Pad...
  LD A,(HL)               ; ...and load this into A
  SUB 3                   ; Subtract three (because Magic Knight is four
                          ; character blocks tall)...
  ADD A,A                 ; ...then multiply by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (25388),A            ; ...then update Magic Knight's current y-coordinate
                          ; to match
  LD A,1                  ; Set "Animate Magic Knight's Puff of Smoke
                          ; Appearance on Next Room Redraw" flag...
  LD (23505),A            ; ...
  JP 30428                ; Reset Gimbal-White-Out Safe Flag, redraw current
                          ; room and return to main game loop

; Process and Execute Command to Read an Object
  LD A,(65532)            ; If "Magic Knight Can Read" flag is not set...
  BIT 3,A                 ; ...
  JP Z,27189              ; ...then jump into Main Game Loop (process keyboard
                          ; input and move Magic Knight, enter menus or execute
                          ; other command)
  CALL 38075              ; Play upward scale sound
  LD IX,25395             ; Point IX at start of Magic Knight's inventory
  LD B,5                  ; Load B with 5 (as there are five inventory slots)
  LD HL,47288             ; Point HL at "READ WHICH OBJECT?" text
  LD DE,47295             ; Point DE at "READ" text
  CALL 34914              ; Show list of objects (window or menu) and handle
                          ; selection if a menu
  LD HL,25395             ; Point HL at Magic Knight's inventory
  CALL 34864              ; Point DE at name of a selected object in object
                          ; names table and print in command summary window
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  LD A,(30467)            ; Load A with index of Current Object
  CP 41                   ; If Current Object is 41 (Instruction Book)...
  JP Z,32384              ; ...then display instructions
  CP 1                    ; If Current Object is not 1 (Ancient Scroll)...
  JR NZ,32326             ; ...then skip ahead to 32326
  LD A,(23467)            ; If the Engraved Candle is not lit...
  BIT 1,A                 ; ...
  JP Z,32361              ; ...then skip ahead to 32361 (display normal
                          ; read-text)
  LD A,33                 ; Load A with index of object 33 (Engraved Candle)
  CALL 34256              ; Check whether Magic Knight is carrying the Engraved
                          ; Candle...
  JP NZ,32361             ; ...and if not, skip to 32361 (display normal
                          ; read-text)
  LD B,8                  ; Set text index to 8 (full Ancient Scroll text)
  JP 32378                ; Point HL at this text, then return
  CP 33                   ; If Current Object is not 33 (Engraved Candle)...
  JP NZ,32344             ; ... then skip ahead to 32344
  LD A,14                 ; Load A with index of object 14 (Broken Glass)
  CALL 34256              ; Check whether Magic Knight is carrying the Broken
                          ; Glass...
  JP NZ,32361             ; ...and if not, skip to 32361
  LD B,9                  ; Set text index to 9 (Engraved Candle text)
  JP 32378                ; Point HL at this text, then return
  CP 13                   ; If Current Object is not 13 (Runestone)...
  JR NZ,32361             ; ...then skip ahead to 32361
  LD A,15                 ; Load A with index of object 15 (Book of Runes)
  CALL 34256              ; Check whether Magic Knight is carrying the Book of
                          ; Runes...
  JP NZ,32361             ; ...and if not, skip to 32361
  LD B,10                 ; Set text index to 10 (full Runestone text)
  JP 32378                ; Point HL at this text, then return
  LD A,(30467)            ; Load A with index of Current Object
  LD E,2                  ; Load E with 2 (Read text)
  CALL 34160              ; Point HL to read text property of object A
  BIT 7,(HL)              ; If bit 7 is reset (i.e. value at HL is less than
                          ; 128 so the object can't be read)...
  JP Z,34576              ; ...then jump to 34576 (display "THERE IS NO WRITING
                          ; FOR ME TO READ" window and return to game)
  LD A,(HL)               ; Load value into B...
  AND 127                 ; ...resetting bit 7 to leave index of text
                          ; required...
  LD B,A                  ; ...
  CALL 34854              ; Advance HL to B-th entry in list of readable
                          ; objects' texts at 47322 then return
  JP 34799                ; Display window showing read-text window
  CALL 26788              ; Display instructions
  JP 30428                ; Reset Gimbal-White-Out Safe Flag, redraw current
                          ; room and return to main game loop

; Process and Execute Command to Throw an Object
  LD A,(65532)            ; If "Magic Knight Can Throw" flag is not set...
  BIT 4,A                 ; ...
  JP Z,27189              ; ...then jump into Main Game Loop (process keyboard
                          ; input and move Magic Knight, enter menus or execute
                          ; other command)
  CALL 38075              ; Play upward scale sound
  LD A,(23377)            ; Set Gimbal-White-Out Safe Flag...
  OR 1                    ; ...
  LD (23377),A            ; ...
  LD IX,25395             ; Point IX at Magic Knight's inventory
  LD B,5                  ; Load B with 5 (as 5 inventory slots)
  LD HL,50381             ; Point HL at "THROW WHICH OBJECT" text
  LD DE,50388             ; Point DE at "THROW" text
  CALL 34914              ; Show list of objects (window or menu) and handle
                          ; selection if a menu
  LD HL,25395             ; Point HL at Magic Knight's inventory
  CALL 34864              ; Point DE at name of a selected object in object
                          ; names table and print in command summary window
  LD DE,50391             ; Point DE at "AT" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  LD HL,44083             ; Point HL at "THROW AN OBJECT AT ?" text
  LD DE,0                 ; Set DE to zero so Command Summary Window is not
                          ; updated with additional text
  CALL 35141              ; Display and process input for character selection
                          ; menu (current room's characters only), setting
                          ; Current Character
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  LD A,(30467)            ; Load A with index of Current Object
  LD E,0                  ; Load E with 0 (Weight)
  CALL 34160              ; Point HL to weight of object A
  PUSH HL                 ; Copy HL...
  POP IX                  ; ...into IX
  LD A,(IX+0)             ; Load A with object's weight
  CP 12                   ; If object has weight greater than 12...
  JP NC,32643             ; ...then kill Magic Knight and end game
  BIT 4,(IX+4)            ; If bit 4 (object is lethal if thrown) of object's
                          ; use status is set...
  JP NZ,32649             ; ...then kill the character who object was thrown at
                          ; and end game
  BIT 5,(IX+4)            ; If bit 5 (object is a crystal) of object's use
                          ; status is not set...
  JR Z,32487              ; ...then skip ahead to 32487
  LD A,(30615)            ; If target of throw is Gimbal...
  OR A                    ; ...
  JP Z,32555              ; ...then skip ahead to 32555
  LD A,(30467)            ; If object thrown is not the Glowing Bottle...
  CP 16                   ; ...
  JP NZ,32499             ; ...then skip ahead to 32499
  CALL 30540              ; Remove Glowing Bottle from Magic Knight's
                          ; inventory, smash it and release Banshee
  LD A,C                  ; Load index of Broken Glass into A (Current Object)
  LD C,A                  ; Load index of Current Object into C
  PUSH BC                 ; Store BC (C=Current Object)
  LD B,5                  ; Load B with 5
  LD HL,25395             ; Point HL at Magic Knight's inventory
  CALL 38674              ; Remove object C from Magic Knight's inventory (and
                          ; tidy up remainder of slots)
  POP BC                  ; Restore BC (C=Current Object)
  LD A,C                  ; Copy index of Current Object into A...
  ADD A,A                 ; ...and multiply by three...
  ADD A,C                 ; ...
  LD C,A                  ; Transfer into BC...
  LD B,0                  ; ...
  LD HL,25464             ; Point HL to Objects' Current Positions Table
  ADD HL,BC               ; Add three times Current Object's index as offset
  LD A,(65529)            ; Set object's room to be Magic Knight's current
                          ; room...
  LD (HL),A               ; ...
  INC HL                  ; Advance HL to object's x-coordinate
  PUSH HL                 ; Store HL (pointer to x-coordinate)
  LD A,(30615)            ; Load BC with three times index of character who was
                          ; target of throw...
  LD C,A                  ; ...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD B,0                  ; ...
  LD C,A                  ; ...
  LD HL,25441             ; Point HL at x-coordinate of first entry in
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
  CALL 35495              ; Set Magic Knight's available action flags
  JP 34724                ; Display "THE [OBJECT] LANDED ON THE FLOOR BY
                          ; [CHARACTER]" window and return to game
  LD A,(23378)            ; If "Crystallium Spectralis cast" score flag is not
                          ; set...
  AND 1                   ; ...
  JP Z,34700              ; ...then display "YOU HEAR A SHORT-RANGE TELEPATHIC
                          ; WHISPER..." message and return to game
  LD A,(30467)            ; Load A with index of Current Object
  LD B,223                ; Set Blue and Red Crystal Flags, reset Green Crystal
                          ; Flag in mask
  CP 21                   ; If object is the Green Crystal...
  JR Z,32580              ; ...then skip ahead to 32580
  LD B,239                ; Set Green and Blue Crystal Flags, reset Red Crystal
                          ; Flag in mask
  CP 23                   ; If object is the Red Crystal...
  JR Z,32580              ; ...then skip ahead to 32580
  LD B,247                ; Set Green and Red Crystal Flags, reset Blue Crystal
                          ; Flag in mask
  LD A,(29939)            ; Load Gimbal's current attribute into A...
  AND B                   ; ...apply mask...
  LD (29939),A            ; ...and store again
  PUSH AF                 ; Store AF (A=Gimbal's current attribute)
  LD A,(30467)            ; Load C with index of Current Object...
  LD C,A                  ; ...
  LD B,5                  ; Load B with 5 as there are 5 inventory slots
  LD HL,25395             ; Point HL at Magic Knight's inventory
  CALL 38674              ; Remove Current Object from Magic Knight's inventory
                          ; and tidy up slots
  POP AF                  ; Restore AF (A=current R, G and B Crystal Flags)
  CP 71                   ; If R, G and B PAPER bits of Gimbal's attribute are
                          ; not all reset...
  JR NZ,32624             ; ...skip ahead to 32624
  LD A,(23468)            ; Set Gimbal is Free game progress flag...
  OR 1                    ; ...
  LD (23468),A            ; ...
  LD A,11                 ; Set Gimbal's "Examine Character" descriptive text
                          ; to...
  LD (25330),A            ; ...
  CALL 33278              ; Flash border and screen (as in cast a spell)
  JP 34646                ; Display "SUCCESS! GIMBAL IS FREE AT LAST!" window
                          ; and return to game
  CALL 33278              ; Flash border and screen (as in cast a spell)
  LD A,(30467)            ; Load A with index of Current Object
  CP 22                   ; If object is the Blue Crystal...
  JP Z,34706              ; ...then display "THE BLUE CRYSTAL FLEW AT GIMBAL
                          ; AND BURST..." window and return to game
  CP 23                   ; If object is the Red Crystal...
  JP Z,34712              ; ...then display "THE RED CRYSTAL FLEW STRAIGHT AT
                          ; GIMBAL AND TURNED INTO A GAS..." window and return
                          ; to game
  JP 34718                ; Display "THE GREEN CRYSTAL FLEW AT GIMBAL AND
                          ; SUCKED..." window and return to game
  LD HL,43504             ; Point HL at "YOU KILLED YOURSELF TRYING TO THROW
                          ; SOMETHING AT [CHARACTER]" text
  JP 35101                ; Jump to "Game over" window routine and exit
  LD HL,43539             ; Point HL at "YOU THREW SOMETHING AND KILLED
                          ; [CHARACTER]" text
  JP 35101                ; Jump to "Game over" window routine and exit

; Process and Execute Command to Cast a Spell
  LD A,(65532)            ; If "Magic Knight Can Cast a Spell" flag is not
                          ; set...
  BIT 5,A                 ; ...
  JP Z,27189              ; ...then jump into Main Game Loop (process keyboard
                          ; input and move Magic Knight, enter menus or execute
                          ; other command)
  CALL 38075              ; Play upward scale sound
  CALL 37654              ; Display / update command summary window at bottom
                          ; of screen
  LD DE,49377             ; Point DE at "CAST A SPELL" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  LD HL,49383             ; Point HL at byte before "WHICH SPELL DO YOU WANT TO
                          ; CAST?" full menu text
  LD A,(HL)               ; Load data into position of right edge of window
                          ; data for "Cast a Spell" window...
  LD (42117),A            ; ...
  INC HL                  ; Advance HL to start of actual text
  PUSH HL                 ; Store HL (pointer to menu text)
  LD A,30                 ; Draw the "Cast a Spell" window...
  CALL 36979              ; ...
  POP HL                  ; Restore HL (pointer to menu text)
  CALL 36725              ; Print the text
  CALL 37333              ; Process keyboard / joystick input for menu, and
                          ; load ASCII code of shortcut for selected (i.e.
                          ; SPACE or fire pressed) item into A
  SUB 65                  ; Subtract ASCII value of "A" to get numeric index of
                          ; option selected
  LD (32726),A            ; Store index of spell selected in this routine at
                          ; 32725
  CP 4                    ; If spell number 4 (Project Physical Body) is
                          ; selected...
  JR Z,32725              ; ...then skip ahead to 32725 (as command summary
                          ; window shows "PROJECT PHYSICAL BODY TO..." rather
                          ; than "CAST..." as with all other spells)
  CALL 37654              ; Display / update command summary window at bottom
                          ; of screen
  LD HL,50184             ; Point HL at "CAST CRYSTALLIUM SPECTRALIS" text
                          ; (i.e. first in list of "CAST [SPELL]" strings)
  LD A,(32726)            ; Load index of spell selected into B...
  LD B,A                  ; ...
  CALL 34845              ; Advance HL to B-th entry in list of zero-terminated
                          ; strings
  EX DE,HL                ; Swap DE (now points to "CAST [SPELL]" text) and HL
                          ; (now points to "CAST A SPELL" text)
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
; The operand of the instruction at 32725 represents the index of the spell to
; cast. This is modified by the instruction at 32698.
  LD A,0                  ; Load A with index of spell to cast
  OR A                    ; If spell is Crystallium Spectralis...
  JP Z,32764              ; ...then cast Crystallium Spectralis if possible,
                          ; else display failure message
  CP 1                    ; If spell is Candelium Illuminatus...
  JP Z,32823              ; ...then jump to 32823
  CP 2                    ; If spell is Armouris Photonicus...
  JP Z,32903              ; ...then jump to 32903
  CP 3                    ; If spell is Fumaticus Protectium...
  JP Z,32982              ; ...then jump to 32982
  CP 4                    ; If spell is Project Physical Body...
  JP Z,33036              ; ...then jump to 33036
  CP 5                    ; If spell is Release Spell...
  JP Z,33129              ; ...then jump to 33129
  CP 6                    ; If spell is Quiticus Gamus...
  JP Z,33269              ; ...then jump to 33269
  JP 30428                ; Reset Gimbal-White-Out Safe Flag, redraw current
                          ; room and return to main game loop

; Cast Crystallium Spectralis if Possible, else Display Failure Message
;
; Used by the routine at 32655.
  LD A,(23468)            ; If "Gimbal is free" flag is set...
  BIT 0,A                 ; ...
  JP NZ,34664             ; ...then display "GIMBAL IS ALREADY FREE..." window
                          ; and exit
  LD A,(65529)            ; ...else load A with Magic Knight's current room
  LD B,A                  ; Copy into B
  LD A,(25440)            ; Load A with Gimbal's current room
  CP B                    ; Check if Gimbal and Magic Knight are in the same
                          ; room...
  JP NZ,34634             ; ...and if they aren't then display "THAT SPELL
                          ; CANNOT YET BE CAST..." window and exit
  LD A,(25449)            ; Load A with Orik's current room
  CP B                    ; Check if Orik and Magic Knight are in the same
                          ; room...
  JP NZ,34634             ; ...and if they aren't then display "THAT SPELL
                          ; CANNOT YET BE CAST..." window and exit
  LD A,6                  ; Load A with 6 (index for Crystal Ball)
  LD HL,25415             ; Point HL at Orik's current inventory
  CALL 34259              ; If Orik is not carrying the Crystal Ball then...
  JP NZ,34634             ; ...display "THAT SPELL CANNOT YET BE CAST..."
                          ; window and exit
  LD A,32                 ; Load A with index of object 32 (White Gold Ring)
  CALL 34256              ; Check whether Magic Knight is carrying the White
                          ; Gold Ring...
  JP NZ,34634             ; ...and if not, display "THAT SPELL CANNOT YET BE
                          ; CAST..." window and exit
  CALL 33278              ; Flash border and screen (as in cast a spell)
  LD A,(23378)            ; Set bit 0 of score progress flags...
  OR 1                    ; ...
  LD (23378),A            ; ...
  JP 34640                ; Display "THE SPELL HAS WORKED!  GIMBAL IS NEARLY
                          ; FREE" window and return to game

; Cast Candelium Illuminatus if Possible, else Display Failure Message
;
; Used by the routine at 32655.
  LD A,(23467)            ; If Engraved Candle is lit (i.e. Candelium
                          ; Illuminatus has been cast)...
  BIT 1,A                 ; ...
  JP NZ,34670             ; ...then display "THE CANDLE IS ALREADY ALIGHT"
                          ; message and exit
  LD A,(25545)            ; Load A with the current screen containing the Four
                          ; Leaf Clover
  LD C,A                  ; Copy into C
  LD A,(65529)            ; Load A with Magic Knight's current room...
  CP C                    ; ...and if Magic Knight is not in the same room as
                          ; the Four Leaf Clover...
  JP NZ,34634             ; ...then display "THAT SPELL CANNOT YET BE CAST..."
                          ; window and exit
  LD A,33                 ; Load A with index of object 33 (Engraved Candle)
  CALL 34256              ; Check whether Magic Knight is carrying the Engraved
                          ; Candle...
  JP NZ,34634             ; ...and if not, display "THAT SPELL CANNOT YET BE
                          ; CAST..." window and exit
  CALL 33278              ; Flash border and screen (as in cast a spell)
  LD A,47                 ; Load A with index of object 47 (Shield)
  CALL 34256              ; Check whether Magic Knight is carrying the
                          ; Shield...
  JR NZ,32876             ; ...and if not then kill Magic Knight with exploding
                          ; candle, exiting to Game Over routine...
  LD HL,23467             ; ...else...
  SET 1,(HL)              ; ...set the "Engraved Candle lit" flag
  LD A,(23378)            ; Set bit 1 of score progress flags...
  OR 2                    ; ...
  LD (23378),A            ; ...
  JP 34652                ; Display "WELL DONE, THE CANDLE IS NOW GLOWING..."
                          ; window and return to game

; Kill Magic Knight with Exploding Candle
;
; Used by the routine at 32823.
  LD HL,49505             ; Load number of rows spanned by "BOOM! THE CANDLE
                          ; BLEW UP..." text into A...
  LD A,(HL)               ; ...
  LD (42157),A            ; ...and adjust height of window 35 accordingly
  INC HL                  ; Advance HL to start of actual text
  LD A,35                 ; Prepare to draw window 35
  PUSH HL                 ; Store HL (pointer to text)
  CALL 36987              ; Draw window 35
  POP HL                  ; Restore HL (pointer to text)
  CALL 36725              ; Print the text in the window
  CALL 38749              ; Display "PRESS SPACE OR FIRE TO CONTINUE" window
                          ; and wait for space / fire
  LD HL,50168             ; Point HL at "YOU BLEW YOURSELF UP" text
  JP 35101                ; Jump to "Game over" window routine and exit

; Cast Armouris Photonicus if Possible, else Display Failure Message
;
; Used by the routine at 32655.
  LD A,(23467)            ; If "Armouris Photonicus cast" flag is set...
  BIT 2,A                 ; ...
  JP NZ,34676             ; ...then display "YOUR ARMOUR IS ALREADY GLOWING"
                          ; message and return to game
  LD A,(65529)            ; Else load Magic Knight's current room into B...
  LD B,A                  ; ...
  LD A,(25566)            ; Load current room of Strange Liquid into A
  CP B                    ; If the rooms are different...
  JP NZ,34634             ; ...then display "THAT SPELL CANNOT YET BE CAST..."
                          ; message and return to game
  CALL 34385              ; Load Magic Knight's coordinates (in characters)
                          ; into DE
  LD A,(25568)            ; Compare y-coordinates of Magic Knight and Strange
                          ; Liquid...
  CP D                    ; ...
  JP NZ,34634             ; ...and if they are different then display "THAT
                          ; SPELL CANNOT YET BE CAST..." message and return to
                          ; game
  LD A,(25567)            ; Compare x-coordinates of Magic Knight and Strange
                          ; Liquid...
  DEC A                   ; ...
  CP E                    ; ...
  JR Z,32950              ; ...and if x-coordinate of Strange Liquid is one
                          ; more than Magic Knight's x-coordinate then skip
                          ; ahead to 32950
  INC A                   ; If x-coordinate of Strange Liquid is the same as
                          ; Magic Knight's x-coordinate...
  CP E                    ; ...
  JR Z,32950              ; ...then skip ahead to 32950
  INC A                   ; If x-coordinate of Strange Liquid is one less than
                          ; Magic Knight's x-coordinate...
  CP E                    ; ...
  JR Z,32950              ; ...then skip ahead to 32950
  JP 34634                ; Display "THAT SPELL CANNOT YET BE CAST..." message
                          ; and return to game
  LD HL,23467             ; Set "Armouris Photonicus cast" flag...
  SET 2,(HL)              ; ...
  CALL 33278              ; Flash border and screen (as in cast a spell)
  LD A,(23378)            ; Set bit 2 of score progress flags...
  OR 4                    ; ...
  LD (23378),A            ; ...
  LD A,99                 ; Set room of Strange Liquid to 99 (i.e. remove it
                          ; from the game)...
  LD (25566),A            ; ...
  LD A,71                 ; Load A with 71 (white INK, black PAPER, BRIGHT)...
  LD (42360),A            ; ...and apply this attribute to Broken Glass...
  LD (42640),A            ; ...and Teleport Pad
  JP 34658                ; Display "THE LIQUID TURNED INTO A VAPOUR..." window
                          ; and return to game

; Cast Fumaticus Protectium if Possible, else Display Failure Message
;
; Used by the routine at 32655.
  LD A,(23468)            ; If "Fumaticus Protectium cast" flag is set then...
  BIT 1,A                 ; ...
  JP NZ,34682             ; Jump to 34682
  LD A,(23404)            ; Load current time left (hours) into A
  CP 48                   ; Compare to 48
  JP Z,34634              ; If time left is 48 hours, then display "THAT SPELL
                          ; CANNOT YET BE CAST..." window and exit
  LD A,46                 ; Load A with index of object 46 (Power-Pong Plant)
  CALL 34256              ; Check whether Magic Knight is holding the
                          ; Power-Pong Plant...
  JP NZ,34634             ; ...and if not, then display "THAT SPELL CANNOT YET
                          ; BE CAST..." window and exit
  LD A,19                 ; Load A with index of object 19 (Red Herring)
  CALL 34256              ; Check whether Magic Knight is holding the Red
                          ; Herring...
  JP NZ,34634             ; ...and if not, then display "THAT SPELL CANNOT YET
                          ; BE CAST..." window and exit
  CALL 33278              ; Flash border and screen (cast spell effect)
  LD A,(23468)            ; Set "Fumaticus Protectium has been cast" flag...
  SET 1,A                 ; ...
  LD (23468),A            ; ...
  LD A,(23378)            ; Set bit 3 of score progress flags...
  OR 8                    ; ...
  LD (23378),A            ; ...
  JP 34688                ; Display Fumaticus Protectium successful window

; Cast Project Physical Body if Possible, else Display Failure Message
;
; Used by the routine at 32655.
  CALL 37654              ; Display / update command summary window at bottom
                          ; of screen
  LD DE,50200             ; Point DE at "PROJECT PHYSICAL BODY TO" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  LD HL,44092             ; Point HL at "TRAVEL TO ?" text
  PUSH HL                 ; Store HL
  CALL 35293              ; Display and handle full character selection menu
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  LD A,6                  ; Load A with index of object 6 (Crystal Ball)
  CALL 34256              ; Check whether Magic Knight is holding the Crystal
                          ; Ball...
  JP NZ,34634             ; ...and if not, then display "THAT SPELL CANNOT YET
                          ; BE CAST..." window and exit
  LD A,12                 ; Load A with index of object 12 (Magic Talisman)
  CALL 34256              ; Check whether Magic Knight is holding the Magic
                          ; Talisman...
  JP NZ,34634             ; ...and if not, then display "THAT SPELL CANNOT YET
                          ; BE CAST..." window and exit
  LD A,(30615)            ; Load A with index of Current Character...
  LD B,A                  ; ...and copy into B
  ADD A,A                 ; Multiply index by three...
  ADD A,B                 ; ...
  LD B,0                  ; ...and load into BC...
  LD C,A                  ; ...
  LD HL,25440             ; Point HL at characters' current locations table
  ADD HL,BC               ; Add three times index of Current Character as
                          ; offset to this address (as entries are three bytes
                          ; wide)
  LD A,(65529)            ; If Magic Knight's current room...
  CP (HL)                 ; ...is the same as the Current Character's current
                          ; room...
  JP Z,34634              ; ...then display the "THAT SPELL CANNOT YET BE
                          ; CAST..." window and return to game
  LD A,(HL)               ; If Current Character's room is set to 99...
  CP 99                   ; ...
  JP Z,34634              ; ...then display the "THAT SPELL CANNOT YET BE
                          ; CAST..." window and return to game
  CP 100                  ; If Current Character's room is set to 100...
  JP Z,34634              ; ...then display the "THAT SPELL CANNOT YET BE
                          ; CAST..." window and return to game
  LD (65529),A            ; Make Magic Knight's current room same as that for
                          ; Current Character
  INC HL                  ; Advance to next byte
  LD A,(HL)               ; Load Current Character's x-coordinate into A
  INC A                   ; Add two...
  INC A                   ; ...
  ADD A,A                 ; ...and multiply by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (25387),A            ; ...and set as Magic Knight's x-coordinate
  INC HL                  ; Advance to next byte
  LD A,(HL)               ; Load Current Character's y-coordinate into A
  ADD A,A                 ; Multiply this by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (25388),A            ; ...and set as Magic Knight's y-coordinate
  CALL 33278              ; Flash border and screen (as in cast a spell)
  JP 34694                ; Display Project Physical Body successful window and
                          ; return to game

; Cast Release Spell if Possible, else Display Failure Message
;
; Used by the routine at 32655.
  LD A,(23378)            ; If any of Crystallium Spectralis, Candelium
                          ; Illuminatus, Armouris Photonicus or Fumaticus
                          ; Protectium have not been cast...
  CP 15                   ; ...
  JP NZ,34634             ; ...then display "THAT SPELL CANNOT YET BE CAST"
                          ; message and return to game
  LD A,(23468)            ; If Gimbal is not free...
  AND 1                   ; ...
  JP Z,34634              ; ...then display "THAT SPELL CANNOT YET BE CAST"
                          ; message and return to game
  LD A,12                 ; Load A with index of object 12 (Magic Talisman)
  CALL 34256              ; Check whether Magic Knight is holding the Magic
                          ; Talisman...
  JP NZ,34634             ; ...and if not, then display "THAT SPELL CANNOT YET
                          ; BE CAST..." window and exit
  LD A,32                 ; Load A with index of object 32 (White Gold Ring)
  CALL 34256              ; Check whether Magic Knight is holding the White
                          ; Gold Ring...
  JP NZ,34634             ; ...and if not, then display "THAT SPELL CANNOT YET
                          ; BE CAST..." window and exit
  LD A,(23378)            ; Set bit 4 of score progress flags...
  OR 16                   ; ...
  LD (23378),A            ; ...
  CALL 33278              ; Flash border and screen (as in cast a spell)
  LD A,30                 ; Display "GIMBAL WILL NOW SEND EACH CHARACTER BACK
                          ; TO THEIR HOMES..." window...
  LD HL,50213             ; ...
  JP 34768                ; ...and return to game

; Show "WELL DONE MAGIC KNIGHT" Screen with Animated Starfield, Jumping to Game
; Over on Key-Press
;
; Used by the routine at 33312.
  IM 1                    ; Set interrupt mode 1
  LD A,(23506)            ; Increase "characters sent home" score...
  INC A                   ; ...
  LD (23506),A            ; ...
  CALL 33278              ; Flash border and screen (as in cast a spell)
  LD A,36                 ; Draw window 36...
  CALL 36987              ; ...
  LD HL,43663             ; Print "WELL DONE MAGIC KNIGHT..." text...
  CALL 36725              ; ...
  LD HL,16384             ; Blank out top two thirds of Display File...
  LD DE,16385             ; ...
  LD BC,4095              ; ...
  LD (HL),L               ; ...
  LDIR                    ; ...
  LD A,71                 ; Load system variable ATTR T with 71 (white INK,
                          ; black PAPER, BRIGHT)...
  LD (23695),A            ; ...
  LD (23693),A            ; ...and flood top two thirds of Attribute File with
                          ; this attribute...
  LD HL,22528             ; ...
  LD DE,22529             ; ...
  LD BC,511               ; ...
  LD (HL),A               ; ...
  LDIR                    ; ...
  LD HL,0                 ; Set Magic Knight's x- and y-velocities to zero...
  LD (25391),HL           ; ...
  LD HL,19320             ; Set Magic Knight's x-coordinate to 120 and
                          ; y-coordinate to 75...
  LD (25387),HL           ; ...
  XOR A                   ; Set Magic Knight's current frame to erase to zero
                          ; (frame 0 is blank graphic data) so Magic Knight is
                          ; drawn but not erased...
  LD (25389),A            ; ...
  LD A,1                  ; Set Magic Knight's current frame to 1...
  LD (25390),A            ; ...
  XOR A                   ; Set A to zero (Magic Knight) and...
  CALL 39224              ; ...draw Magic Knight (erase old frame and draw new
                          ; frame)
  CALL 38884              ; Animate starfield until a key is pressed
  LD HL,43789             ; Point HL at "YOU HAVE SUCCEEDED IN YOUR TASK..."
                          ; text
  JP 35101                ; Jump to "Game over" window routine and exit

; Cast Quiticus Gamus Spell and Jump to Game Over
;
; Used by the routine at 32655.
  CALL 33278              ; Flash border and make sound
  LD HL,43559             ; Index of "Quiticus Gamus" game over text
  JP 35101                ; Jump to "Game over" window routine and exit

; Flash Border and Screen (as in Cast a Spell)
;
; Used by the routines at 32390, 32764, 32823, 32903, 32982, 33036, 33129,
; 33180, 33269 and 33312.
  LD B,96                 ; Load B with 96 (number of times to repeat routine)
  LD DE,608               ; Load DE with 608 (number of bytes to modify - i.e.
                          ; top 19 rows)
  LD HL,22528             ; Point HL at start of Attribute File
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
  JR NZ,33286             ; ...then loop back to 33286
  DJNZ 33280              ; Loop back for another pass
  XOR A                   ; Set A to zero
  OUT (254),A             ; Reset border to black and reset speaker state
  RET                     ; Return

; Process Command to Blow an Object
  LD A,(65532)            ; Load Magic Knight's current action flags into A
  BIT 6,A                 ; If "Magic Knight Can Blow" flag is unset...
  JP Z,27189              ; ...then jump into Main Game Loop (process keyboard
                          ; input and move Magic Knight, enter menus or execute
                          ; other command)
  CALL 38075              ; Play upward scale sound
  LD IX,25395             ; Point IX at Magic Knight's current inventory
  LD B,5                  ; Set B to 5 (as there are 5 inventory slots)
  LD HL,50891             ; Point HL at "BLOW WHICH OBJECT?" text
  LD DE,50902             ; Point DE at "BLOW" text
  CALL 34914              ; Display list of objects in Magic Knight's inventory
                          ; and wait for one to be selected. Load its index
                          ; into A
  LD HL,25395             ; Point DE at name of a selected object in object
                          ; names table and print in command summary window...
  CALL 34864              ; ...
  LD A,(30467)            ; If selected object is not the Elf Horn...
  CP 38                   ; ...
  JP NZ,33574             ; ...then confirm and process blow command (create
                          ; dust or racket!) then return to game
  SET 2,(IY+65)           ; Set "Characters Can't Move" flag
  CALL 37654              ; Display / update command summary window at bottom
                          ; of screen
  LD DE,50909             ; Point DE at "SUMMON" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  LD HL,44069             ; Point HL at "SUMMON ?" text...
  PUSH HL                 ; ...and store
  CALL 35293              ; Display and handle full character selection menu
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  CALL 34402              ; Point HL at current position data for Current
                          ; Character
  LD A,(65529)            ; Load Magic Knight's current room into A
  CP (HL)                 ; If character is in the same room as Magic Knight...
  JP Z,34616              ; ...then display "[CHARACTER] IS ALREADY HERE!"
                          ; message and return to game
  LD A,(HL)               ; Load character's current room into A
  LD HL,51173             ; Point HL at "[CHARACTER] IS NO LONGER AROUND" text
  CP 100                  ; If character's current room is 100...
  JP Z,34808              ; ...then display "[CHARACTER] IS NO LONGER AROUND"
                          ; window then return to game
  LD A,(30615)            ; Load A with index of Current Character
  CP 7                    ; If character is The Banshee...
  JR Z,33435              ; ...skip over asleep / tiredness check as Banshee
                          ; never sleeps or gets tired
  LD A,(30615)            ; Load A with index of Current Character
  LD E,0                  ; Point HL at property 0 (strength) of character...
  CALL 34174              ; ...
  PUSH HL                 ; Copy location from HL to IX...
  POP IX                  ; ...
  BIT 7,(IX+6)            ; If character is asleep (bit 7 of the byte 6 bytes
                          ; forward)...
  JP NZ,34598             ; ...then display "[CHARACTER] IS ASLEEP" message and
                          ; return to game
  LD A,(IX+1)             ; Load A with happiness of Current Character
  CP 40                   ; If happiness is less than 40...
  JP C,34604              ; ...
  LD A,(IX+2)             ; ...then display "[CHARACTER] DOES NOT WANT TO BE
                          ; SUMMONED" message and return to game
  CP 30                   ; If happiness is less than 30...
  JP C,34610              ; ...then display "[CHARACTER] IS TOO TIRED TO BE
                          ; SUMMONED" message and return to game
  CALL 34402              ; Point HL at current position data for Current
                          ; Character
  PUSH HL                 ; Store HL
  PUSH IX                 ; Store IX
  LD A,(65529)            ; Load Magic Knight's current room into C...
  LD C,A                  ; ...
  LD A,(30615)            ; Load B with index of Current Character...
  LD B,A                  ; ...
  CALL 36327              ; Assign a slot in room C to character B and get x-
                          ; and y-coordinates in BC
  POP IX                  ; Restore IX
  POP HL                  ; Restore HL
  CP 4                    ; If assigned slot number is 4 (i.e. already three
                          ; characters in this room)...
  JP Z,34622              ; ...then display "[CHARACTER] DOES NOT WANT TO COME
                          ; TO SUCH A CROWDED ROOM" message and return to game
  PUSH HL                 ; Store HL (current position data for Current
                          ; Character)
  INC HL                  ; Load x-coordinate of character into C...
  LD (HL),C               ; ...
  INC HL                  ; Load y-coordinate of character into B...
  LD (HL),B               ; ...
  POP HL                  ; Restore HL (start of current position data for
                          ; Current Character)
  LD A,(65529)            ; Load Magic Knight's current room into A
  OR 128                  ; Set bit 7 of room index data if it is not already
                          ; set to denote that this character's entry needs to
                          ; be animated (puff of smoke)
  LD (HL),A               ; Load data into current room of Current Character
  LD A,(30615)            ; Load A with index of Current Character
  CP 7                    ; If character is The Banshee...
  JP Z,33512              ; ...then skip over section dealing with decreasing
                          ; summoned characters stats as Banshee's stats never
                          ; change (see trivia)
  LD A,(IX+0)             ; Decrease character's strength by 10...
  SUB 10                  ; ...
  LD (IX+0),A             ; ...
  LD A,(IX+1)             ; Decrease character's happiness by 5...
  SUB 5                   ; ...
  LD (IX+1),A             ; ...
  LD A,(IX+2)             ; Decrease character's stamina by 12...
  SUB 12                  ; ...
  LD (IX+2),A             ; ...
  LD A,(25318)            ; Decrease Magic Knight's spell power by 3...
  SUB 3                   ; ...
  LD (25318),A            ; ...
  LD A,(23378)            ; If Release Spell score flag is not set...
  BIT 4,A                 ; ...
  JP Z,34628              ; ...then display "[CHARACTER] APPEARS IN A THICK
                          ; PUFF OF SMOKE" window and return to game
  LD IX,(23503)           ; Else load IX with address of index of next
                          ; character to send home from table at 33565
  LD A,(30615)            ; Load A with index of Current Character
  CP (IX+0)               ; If data at IX does not match Current Character...
  JP NZ,34628             ; ...then  display "[CHARACTER] APPEARS IN A THICK
                          ; PUFF OF SMOKE" window and return to game (character
                          ; is not to be sent home yet)
  LD (HL),100             ; Set character's current room to 100
  INC IX                  ; Advance IX to next character in sequence...
  LD (23503),IX           ; ...and store this new pointer
  LD A,255                ; If index of next character to go home is 255...
  CP (IX+0)               ; ...
  JP Z,33180              ; ...then jump to "Well Done" (i.e. game complete)
                          ; routine
  CALL 33278              ; Flash border and screen (as in cast a spell)
  LD A,(23506)            ; Add one to "characters sent home" score...
  INC A                   ; ...
  LD (23506),A            ; ...
  LD HL,51194             ; Display "[CHARACTER] APPEARS IN SPIRIT FORM AS
                          ; GIMBAL..." window and return to game...
  JP 34808                ; ...

; Summoning Sequence to Send Everyone Home After Release Spell is Cast
  DEFB 5                  ; Elrand Halfelven
  DEFB 4                  ; Samsun the Strong
  DEFB 1                  ; Thor
  DEFB 6                  ; Lady Rosmar
  DEFB 7                  ; The Banshee
  DEFB 2                  ; Florin the Dwarf
  DEFB 3                  ; Orik the Cleric
  DEFB 0                  ; Gimbal the Wizard
  DEFB 255                ; End marker

; Confirm and Process Blow Command (Create Dust or Racket!) then Return to Game
;
; Used by the routine at 33312.
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  LD A,(30467)            ; Load A with index of Current Object
  LD E,4                  ; Load E with 4 (use properties of object)
  CALL 34160              ; Point HL at use properties of object A
  BIT 0,(HL)              ; If bit zero is set (Blow status) then...
  JP NZ,34560             ; ...display "WHAT A RACKET..." window and return to
                          ; game...
  JP 34568                ; ...else display "WHAT A LOT OF DUST..." window and
                          ; return to game

; Process Command to Call Lift
  LD A,(65532)            ; If "Magic Knight Can Call Lift" flag is not set...
  BIT 7,A                 ; ...
  JP Z,27189              ; ...then jump into Main Game Loop (process keyboard
                          ; input and move Magic Knight, enter menus or execute
                          ; other command)
  CALL 38075              ; Play upward scale sound
  CALL 37654              ; Print command summary window at bottom of screen
  LD DE,51271             ; Point DE to "CALL LIFT" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  CALL 33770              ; Set the Lift as not being at any floor at all
  LD A,(65529)            ; Load A with Magic Knight's current room
  DEC A                   ; Decrease index by one...
  RRCA                    ; ...divide by eight...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 7                   ; ...and leave number 0-7 (0=Roof, 1=4th Floor, ...,
                          ; 6=Basement)
  LD (23382),A            ; Update light on Lift control panel to show current
                          ; floor
  LD A,(65529)            ; Load A with Magic Knight's current room...
  ADD A,A                 ; ...and double the value
  LD HL,41711             ; Point HL at room connectivity data table
  LD E,A                  ; Load double the room number into DE...
  LD D,0                  ; ...
  ADD HL,DE               ; Add DE to HL as offset so HL now points to room
                          ; connectivity entry for current room
  LD (HL),D               ; Set left-hand exit of current room to lead to The
                          ; Lift
  LD A,(65529)            ; Set the right-hand exit of "The Lift" screen to be
                          ; Magic Knight's current room
  LD (41712),A            ; ...
  CALL 38175              ; Play "LIFT HAS ARRIVED" sound
  LD A,(23410)            ; Reset "Magic Knight Can't Move Left" Temporary
                          ; Movement Flag, as the room's left exit has
                          ; opened...
  AND 2                   ; ...
  LD (23410),A            ; ...
  JP 34544                ; Display "THE LIFT IS HERE" window

; Process Command to Move Lift
  LD A,(65533)            ; If Magic Knight can't move Lift...
  BIT 0,A                 ; ...
  JP Z,27189              ; ...then jump into Main Game Loop (process keyboard
                          ; input and move Magic Knight, enter menus or execute
                          ; other command)
  CALL 38075              ; Play upward scale sound
  CALL 37654              ; Display / update command summary window at bottom
                          ; of screen
  LD DE,51290             ; Point DE at "MOVE LIFT" text...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  LD A,25                 ; Draw the "TAKE LIFT TO..." window...
  CALL 36979              ; ...
  LD HL,51300             ; Print "TAKE LIFT TO" + "A ROOF ... B 4TH FLOOR...
                          ; etc." text ...
  CALL 36725              ; ...
  CALL 37333              ; Process keyboard / joystick input for menu, and
                          ; load ASCII code of shortcut for selected (i.e.
                          ; SPACE or fire pressed) item into A
  SUB 65                  ; Subtract 65 (ASCII code for A) to leave index of
                          ; floor selected
  LD (33740),A            ; Load selected floor into instruction at 33739
  LD HL,51354             ; Point HL at start of first entry in list of floor
                          ; names
  LD B,A                  ; Load selected floor number into B
  CALL 34845              ; Advance HL to B-th entry in list of zero-terminated
                          ; strings
  EX DE,HL                ; Swap DE (now points to name of floor of interest)
                          ; and HL (now undefined)
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  CALL 38725              ; Display Execute / Reject Command window and return
                          ; if Execute chosen, else exit
  LD A,(23411)            ; If "Lift fixed" flag is set...
  AND 1                   ; ...
  JR NZ,33736             ; ...then skip over "Lift is broken" section of
                          ; routine
  LD A,(33740)            ; Load selected floor from instruction at 33739 into
                          ; A
  CP 5                    ; If Ground Floor is selected then...
  JP Z,34730              ; ...display "THE LIFT IS BROKEN" message and exit
  CP 6                    ; If Basement is selected then...
  JP Z,34730              ; ...display "THE LIFT IS BROKEN" message and exit
  CALL 33770              ; Set the lift as not being at any floor at all
; The operand of the instruction at 33739 represents the selected floor index
; stored previously. This is modified by the instruction at 33699.
  LD A,0                  ; Set Lift control panel to show...
  LD (23382),A            ; ...Lift as being at "current" floor
  ADD A,A                 ; Multiply current floor number by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  INC A                   ; ...and add one to give index of room that the
                          ; Lift's exit will lead into
  LD (41712),A            ; Set this room as the one connected to the Lift's
                          ; right-exit
  ADD A,A                 ; Double this room index...
  LD D,0                  ; ...and load into DE to give offset of room's
                          ; left-exit in room connectivity table at 41711...
  LD E,A                  ; ...
  LD HL,41711             ; Point HL at room connectivity table at 41711
  ADD HL,DE               ; Add offset in DE to pointer HL
  LD (HL),0               ; Set the room referred to by the pointed-to entry to
                          ; be the Lift (i.e. set the room's left-exit to lead
                          ; into the Lift)
  CALL 33788              ; Flash border and make sound (as in Move Lift)
  CALL 38175              ; Play "LIFT HAS ARRIVED" sound
  JP 34552                ; Display "THE LIFT HAS ARRIVED" window

; Set the Lift as Not Being at Any Floor at all
;
; Used by the routines at 33593, 33663 and 55349.
  LD HL,41713             ; Point HL to room connectivity table entry for
                          ; left-hand exit of left-most room in Roof Garden
  LD DE,16                ; Set DE to 16 (as each floor takes up 16 bytes in
                          ; that table, except the basement of course!)
  LD A,255                ; Set A to 255 (value that makes an exit of a room
                          ; non-traversable)
  LD B,7                  ; Load B with 7 (as there are 8 floors)
  LD (HL),A               ; Set left-most exit of current floor to be
                          ; inaccessible
  ADD HL,DE               ; Advance by 16 bytes to next floor down
  DJNZ 33780              ; Repeat for next floor
  LD (41712),A            ; Set right-hand exit of the Lift to be inaccessible
  RET                     ; Return

; Flash Border and Make Sound (as in Move Lift)
;
; Used by the routine at 33663.
  LD HL,600               ; Load HL with 600
  XOR A                   ; Set A to zero
  OUT (254),A             ; Set bits on port 254
  LD B,250                ; Load B with 250 (length of pause)
  NOP                     ; Pause by doing nothing...
  NOP                     ; ...
  DJNZ 33796              ; Loop back for next part of pause
  XOR 7                   ; Invert bits 0, 1 and 2
  DEC HL                  ; Decrease HL by one
  LD A,H                  ; Set various bits of A...
  OR L                    ; ...
  JR NZ,33792             ; While HL is not zero, repeat loop
  RET                     ; Return

; Display "[CHARACTER] CANNOT HELP YOU" Window and Return to Game (Jump)
  JP 34514

; "Command Character to Help" Routine for Thor
  LD A,169                ; Set last character of "[CHARACTER] CANNOT HELP
                          ; YOU..." text to 169 ("HERE")...
  LD (46710),A            ; ...
  LD A,(65529)            ; If Magic Knight is not in the Lift...
  OR A                    ; ...
  JR NZ,33846             ; ...then skip ahead to 33846
  LD A,(23411)            ; If "Lift fixed" flag is set...
  AND 1                   ; ...
  JP NZ,33875             ; ...then display "THERE IS NOTHING MORE THAT THOR
                          ; CAN DO TO HELP HERE" window and exit
  LD A,(23411)            ; Set "Lift fixed" flag
  OR 1                    ; ...
  LD (23411),A            ; ...
  LD HL,44278             ; Display "THOR SMASHED THE LIFT CONTROL BOX..."
                          ; window and return to game
  LD A,24                 ; ...
  JP 34768                ; ...
  CP 9                    ; If Magic Knight is not at The Tower...
  JP NZ,34514             ; ...then display "THOR CANNOT HELP YOU" window and
                          ; exit
  LD A,(23411)            ; If "Tower zapped by Thor" flag is set...
  AND 2                   ; ...
  JP NZ,33875             ; ...then display "THERE IS NOTHING MORE THAT THOR
                          ; CAN DO TO HELP HERE" window and exit
  LD A,(23411)            ; Set "Tower zapped by Thor" flag...
  OR 2                    ; ...
  LD (23411),A            ; ...
  LD HL,44349             ; Display "THE TOWER SHOOK AS THOR SENT A BOLT OF HIS
                          ; BEST LIGHTNING AT IT..." window and return to game
  LD A,24                 ; ...
  JP 34768                ; ...
; This entry point is used by the routines at 33935, 33993 and 34062.
  LD HL,44244             ; Display "THERE IS NOTHING MORE THAT THOR CAN DO TO
                          ; HELP HERE" window...
  LD A,24                 ; ...
  JP 34768                ; ...and return to game

; "Command Character to Help" Routine for Florin
  LD HL,25410             ; Check whether Florin is carrying the Tube of
                          ; Glue...
  LD A,10                 ; ...
  CALL 34259              ; ...
  JP NZ,34514             ; ...and if he isn't, display "[CHARACTER] CANNOT
                          ; HELP YOU" window and exit
  LD HL,25410             ; Check whether Florin is carrying the Broken
                          ; Talisman...
  LD A,11                 ; ...
  CALL 34259              ; ...
  JP NZ,34514             ; ...and if he isn't, display "[CHARACTER] CANNOT
                          ; HELP YOU" window and exit
  LD HL,25410             ; Point HL to start of Florin's current inventory...
  PUSH HL                 ; ...and store
  LD C,11                 ; Remove Broken Talisman from Florin's inventory
  LD B,5                  ; ...
  CALL 38674              ; ...
  POP HL                  ; Restore HL (points to start of Florin's inventory
                          ; again)
  LD C,12                 ; Load the Magic Talisman into Florin's first
                          ; available inventory slot...
  LD B,5                  ; ...
  CALL 34151              ; ...
  LD HL,44488             ; Display the "FLORIN HAS MENDED THE TALISMAN..."
                          ; window...
  LD A,24                 ; ...
  JP 34768                ; ...and return to game

; "Command Character to Help" Routine for Orik
  JP 30428                ; Reset Gimbal-White-Out Safe Flag, redraw current
                          ; room and return to main game loop

; "Command Character to Help" Routine for Samsun
  LD A,169                ; Set last character of "[CHARACTER] CANNOT HELP
                          ; YOU..." text to 169 ("HERE")...
  LD (46710),A            ; ...
  LD A,(65529)            ; If Magic Knight is not at The Pit...
  CP 46                   ; ...
  JP NZ,34514             ; ...then display "SAMSUN CANNOT HELP YOU" window and
                          ; exit
  LD A,(23411)            ; If "Platform thrown into Pit" flag is set...
  AND 16                  ; ...
  JP NZ,33875             ; ...then display "THERE IS NOTHING MORE THAT SAMSUN
                          ; CAN DO TO HELP YOU HERE" window and exit
  LD A,(23411)            ; Set "Platform thrown into Pit" flag...
  OR 16                   ; ...
  LD (23411),A            ; ...
  LD HL,25420             ; Point HL to start of Samsun's current inventory...
  LD B,5                  ; Remove Platform from Samsun's inventory...
  LD C,29                 ; ...
  CALL 38674              ; ...
  LD HL,25551             ; Set the Platform's current location...
  LD (HL),46              ; ...as being at The Pit...
  INC HL                  ; ...
  LD (HL),15              ; ...at x = 15...
  INC HL                  ; ...
  LD (HL),11              ; ...y = 11
  LD HL,44583             ; Display "GOOD OLD SAMSUN HAS THROWN A PLATFORM..."
                          ; window...
  LD A,24                 ; ...
  JP 34768                ; ...and return to game

; "Command Character to Help" Routine for Elrand
  LD A,169                ; Set last character of "[CHARACTER] CANNOT HELP
                          ; YOU..." text to 169 ("HERE")...
  LD (46710),A            ; ...
  LD A,(65529)            ; If Magic Knight is not at The Wall...
  CP 29                   ; ...
  JP NZ,34514             ; ...then display "ELRAND CANNOT HELP YOU" window and
                          ; exit
  LD A,170                ; Set last character of "[CHARACTER] CANNOT HELP
                          ; YOU..." text to 170 ("YET")...
  LD (46710),A            ; ...
  LD A,(23411)            ; If "Wall broken" flag is set...
  AND 8                   ; ...
  JP NZ,33875             ; ...then display "THERE IS NOTHING MORE THAT ELRAND
                          ; CAN DO TO HELP YOU HERE" window and exit
  LD A,(23411)            ; If "Tower zapped by Thor" flag is not set...
  AND 2                   ; ...
  JP Z,34514              ; ...then display "ELRAND CANNOT HELP YOU" window and
                          ; exit
  LD A,(23411)            ; Set "Wall broken" flag...
  OR 8                    ; ...
  LD (23411),A            ; ...
  LD HL,53317             ; Change room data pointer for The Wall from 53289
                          ; (original version) to 53317 (Wall broken
                          ; version)...
  LD A,L                  ; ...
  LD (51971),A            ; ...
  LD A,H                  ; ...
  LD (51972),A            ; ...
  LD A,29                 ; Set both Lumps of Brickwork to be at The Wall...
  LD (25539),A            ; ...
  LD (25596),A            ; ...
  LD HL,44643             ; Display "THE TRUMPET BLOWS AND THE WALL COMES
                          ; A-TUMBLING DOWN !!" window...
  LD A,24                 ; ...
  JP 34768                ; ...and return to game

; "Command Character to Help" Routine for Rosmar
  LD A,169                ; Set last character of "[CHARACTER] CANNOT HELP
                          ; YOU..." text to 169 ("HERE")...
  LD (46710),A            ; ...
  LD A,(65529)            ; If Magic Knight is not at The Secret Tunnel
                          ; Entrance...
  CP 42                   ; ...
  JP NZ,34514             ; ...then display "ROSMAR CANNOT HELP YOU" window and
                          ; exit
  LD A,(53598)            ; If height of right-wall in Secret Tunnel Entrance
                          ; is 7 (i.e. not full height of room)...
  CP 7                    ; ...
  JP Z,33875              ; ...then display "THERE IS NOTHING MORE THAT ROSMAR
                          ; CAN DO TO HELP HERE" window and exit
  LD A,7                  ; Make right-wall in Secret Tunnel Entrance height 7
                          ; (i.e. Magic Knight-sized gap at bottom)...
  LD (53598),A            ; ...
  LD C,18                 ; Remove Fast Blow Fuse (C=18) from Banshee's
                          ; inventory (HL=25435)... [bug! Should be removed
                          ; from Rosmar's inventory, HL=25430]
  LD B,5                  ; ...
  LD HL,25435             ; ...
  CALL 38674              ; ...
  LD HL,44691             ; Display "ROSMAR PLACED THE FUSE IN THE LASER..."
                          ; window...
  LD A,24                 ; ...
  JP 34768                ; ...and return to game

; "Command Character to Help" Routine for the Banshee
  LD A,(23673)            ; Load A with middle byte of FRAMES system
                          ; variable...
  RRCA                    ; ...divide by eight...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 7                   ; ...
  LD B,A                  ; ...and copy into B
  LD HL,44796             ; Point HL at first text entry corresponding to
                          ; Banshee help quotes
  CALL 34845              ; Advance HL by B entries in list of zero-terminated
                          ; strings (i.e. Banshee quotes) at 44796...
  LD A,24                 ; ...display the quote in a window...
  JP 34768                ; ...and return to game

; Get the Weight of an Object
;
; Used by the routines at 30880 and 34224. Input:  A  Index of an object
; Output: A  Weight of that object
  PUSH HL                 ; Store HL
  PUSH DE                 ; Store DE
  LD E,0                  ; Point HL to property zero (i.e. weight) of object
                          ; A...
  CALL 34160              ; ...
  LD A,(HL)               ; ...and load this into A
  POP DE                  ; Restore DE
  POP HL                  ; Restore HL
  RET                     ; Return

; Load Happiness of Current Character into A
;
; Used by the routines at 30602 and 30880. Output: A  Happiness
  LD A,(30615)            ; Load A with index of Current Character
  PUSH HL                 ; Store HL
  PUSH DE                 ; Store DE
  LD E,1                  ; Point HL to...
  CALL 34174              ; ...happiness (E=1) of Current Character...
  LD A,(HL)               ; ...and load into A
  POP DE                  ; Restore DE
  POP HL                  ; Restore HL
  RET                     ; Return

; Load an Object into the First Empty Inventory Slot of a Character
;
; Used by the routines at 30222, 30602 and 33883. Input:  HL  Points to
; inventory slots of a character B Number of inventory slots to process C
; Index of object to add to this character's inventory
  LD A,(HL)               ; Load A with index of object at character's current
                          ; inventory slot...
  OR A                    ; ...and if this is zero (i.e. empty)...
  JR Z,34158              ; ...skip ahead to 34158
  INC HL                  ; Advance to next inventory slot
  DJNZ 34151              ; Repeat for next slot
  LD (HL),C               ; Load object into this (i.e. first empty) slot
  RET                     ; Return

; Point HL to Property (Given by E) of Object Whose Index is A
;
; Used by the routines at 30439, 31370, 32258, 32390, 33574, 34126, 35629,
; 35669, 35709, 35749 and 36275. Input:  A  Index of an object E  Required
; property from properties table at 42242 (e.g. E = 0 for weight) Output: HL
; Property E of object A
  ADD A,A                 ; Multiply index by eight...
  ADD A,A                 ; ...
  LD L,A                  ; ...
  LD H,0                  ; ...
  ADD HL,HL               ; ...and load into HL
  LD D,0                  ; Add value of E (e.g. 6 for attribute)...
  ADD HL,DE               ; ...
  LD DE,42242             ; Point DE at start of object properties table...
  ADD HL,DE               ; ...and add into HL to point to property "E"
  RET                     ; Return

; Point HL at Property (Given by E) of Character Whose Index is A
;
; Used by the routines at 30880, 31370, 31722, 31763, 31804, 31842, 31920,
; 31980, 33312, 34137, 34211, 34350 and 55233. Input:  A  Character index E
; Property of interest (e.g. 0 = Strength, 1 = Happiness, etc.) Output: HL
; Points to property E of character A
  ADD A,A                 ; Multiply A by 8...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,E                 ; ...and add E...
  LD D,0                  ; Load this offset into DE...
  LD E,A                  ; ...
  LD HL,25323             ; Point HL at start of characters' stats table...
  ADD HL,DE               ; ...and add DE to point HL to property E of
                          ; character A
  RET                     ; Return

; Point IX at Current Inventory of Character A
;
; Used by the routines at 30602, 30880 and 34211. Input:  A  Index of a
; character Output: IX  Points to current inventory of character A
  PUSH DE                 ; Store DE
  LD E,A                  ; Multiply character index by five (as each character
                          ; has five inventory slots)...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,E                 ; ...
  LD E,A                  ; ...and load into DE...
  LD D,0                  ; ...
  LD IX,25400             ; Point IX at start of characters' current
                          ; inventories table (i.e. Gimbal's entry)
  ADD IX,DE               ; Add five times character index to this as offset
  POP DE                  ; Restore DE
  RET                     ; Return

; Prepare to Check Whether Magic Knight Can Pick Up an Object
;
; Used by the routines at 30222 and 30602.
  LD IX,25395             ; Point IX to start of Magic Knight's current
                          ; inventory
  LD A,(25315)            ; Load Magic Knight's current strength into A
  JR 34224                ; Jump ahead to 34224 (test whether object to pick up
                          ; is too heavy for Magic Knight)

; Unused routine
  LD A,(30615)            ; Load A with index of Current Character
  CALL 34186              ; Point IX at current inventory of character in A
  LD A,(30615)            ; Load A with index of Current Character
  CALL 34174              ; Point HL at property (given by E) of character
                          ; whose index is A
  LD A,(HL)               ; Load property into A

; Test Whether Current Object is too Heavy for A Character to Pick Up
;
; Used by the routine at 34202. Input:  A  Character's current strength IX
; Points to Character's current inventory Output: F  S Flag set if object is
; light enough to be picked up, reset otherwise
  PUSH AF                 ; Store AF (A = Character's current strength)
  LD BC,1280              ; Load B with 5 (as five inventory slots to check)
                          ; and C (total weight carried) with zero
  LD A,(IX+0)             ; Load object in current inventory slot
  OR A                    ; If no object present...
  JR Z,34243              ; ...skip ahead to 34243...
  CALL 34126              ; Load A with weight of object A
  ADD A,C                 ; Add C to this...
  LD C,A                  ; ...and load result into C (total weight so far)
  INC IX                  ; Advance to next inventory slot
  DJNZ 34228              ; Loop back for next inventory slot
  POP AF                  ; Restore AF (A = Character's current strength)
  AND 127                 ; Ensure that strength is capped at 127 and that Sign
                          ; Flag is reset (in reality, Magic Knight's strength
                          ; can only go as high as 96)
  SUB C                   ; Subtract total weight of character's carried
                          ; objects from his/her strength to get "surplus"
                          ; strength...
  LD C,A                  ; ...and load into C
  LD A,(30467)            ; Load A with index of Current Object (e.g. object
                          ; character is trying to receive)
  CALL 34126              ; Load A with weight of object A
  CP C                    ; Set Sign Flag if surplus strength exceeds weight of
                          ; object, otherwise reset
  RET                     ; Return

; Check Whether Magic Knight is Carrying an Object
;
; Used by the routines at 28092, 29800, 32258, 32764, 32823, 32982, 33036,
; 33129, 36215 and 36275. Input:  A  Index of an object HL  (Entry at 34259)
; Pointer to start of a character's inventory Output: F  Zero Flag set if
; object is present in inventory, reset otherwise
  LD HL,25395             ; Point HL at start of Magic Knight's current
                          ; Inventory
; This entry point is used by the routines at 32764 and 33883.
  LD B,5                  ; Load B with 5 (as characters have five inventory
                          ; slots)
  CP (HL)                 ; If object at current inventory slot is the object
                          ; of interest...
  RET Z                   ; ...then return with zero flag set
  INC HL                  ; Advance HL to next inventory slot
  DJNZ 34261              ; Decrease B (remaining number of inventory slots to
                          ; check) and loop back to 34261
  OR A                    ; Reset zero flag, as object is not present
  RET                     ; Return

; Insert Current Time and Score into "TIME LEFT" and "PERCENTAGE COMPLETION"
; Texts
;
; Used by the routines at 31370 and 35101. Input:  HL  Points to percentage
; completion text (43230 or 46117) DE  Points to time left text (43253 or
; 46132)
  PUSH DE                 ; Store DE
  PUSH HL                 ; Store HL
  LD HL,23412             ; Point HL at Visited Rooms table
  LD BC,12800             ; Set B=50, C=0
  LD A,(HL)               ; Load A with value at HL
  ADD A,C                 ; Add this to C...
  LD C,A                  ; ...
  INC HL                  ; Advance to next byte
  DJNZ 34276              ; Loop back to 34276 (adding together 50 values from
                          ; 23412 onwards to get score for exploring rooms)
  DEC C                   ; Decrease exploration score by one (due to no score
                          ; for The Start Room)
  LD A,(23378)            ; Add four percent if "Engraved Candle lit" score
                          ; flag is set...
  AND 2                   ; ...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD A,(23378)            ; Add four percent if "Armouris Photonicus spell
                          ; cast" score flag is set...
  AND 4                   ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD A,(23378)            ; Add four percent if "Fumaticus Protectium spell
                          ; cast" score flag is set...
  AND 8                   ; ...
  RRCA                    ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD A,(23378)            ; Add eight percent if "Crystallium Spectralis spell
                          ; cast" score flag is set...
  AND 1                   ; ...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD A,(23378)            ; Add sixteen percent if "Release Spell cast" score
                          ; flag is set...
  AND 16                  ; ...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD A,(23468)            ; If "Crystallium Spectralis spell cast" score flag
                          ; is not set...
  AND 1                   ; ...
  JR Z,34334              ; ...then skip ahead to 34334
  LD A,7                  ; Add seven percent to current score...
  ADD A,C                 ; ...
  LD C,A                  ; ...
  LD A,(23506)            ; Add "characters sent home" score...
  ADD A,C                 ; ...
  POP HL                  ; Restore HL (percentage completion text)
  CALL 36647              ; Splice numeric data A as a string into "PERCENTAGE
                          ; COMPLETION" text
  LD A,(23404)            ; Load A with current number of hours left
  POP HL                  ; Restore HL (originally DE, time left text)
  CALL 36647              ; Splice numeric data A as a string into "TIME LEFT"
                          ; text
  RET                     ; Return

; Check if Current Character is Asleep and Display "[CHARACTER] IS ASLEEP"
; Window if So
;
; Used by the routines at 31804, 31842, 31920 and 31980.
  PUSH HL                 ; Store HL
  LD A,(30615)            ; Load A with index of Current Character
  LD E,6                  ; Point HL at...
  CALL 34174              ; ...Current Character's asleep flag
  BIT 7,(HL)              ; If character is awake...
  JR Z,34382              ; ...then exit routine
  LD A,34                 ; Draw window 34...
  CALL 36987              ; ...
  LD HL,43641             ; Point HL at "[CHARACTER] IS ASLEEP" text...
  CALL 36725              ; ...and print the text
  CALL 38749              ; Display "PRESS SPACE OR FIRE TO CONTINUE" Window
                          ; and wait for SPACE / Fire
  POP HL                  ; Restore HL
  POP HL                  ; Restore HL again, removing return address of
                          ; calling "command a character to" routine, so a RET
                          ; will return to the routine that called THAT routine
  JP 30428                ; Reset Gimbal-White-Out Safe Flag, redraw current
                          ; room and return to main game loop
  POP HL                  ; Restore HL
  XOR A                   ; Set A to zero
  RET                     ; Return

; Load Magic Knight's Coordinates (in Characters) into DE
;
; Used by the routines at 30222, 30439 and 32903. Output: D  y-coordinate
; (characters) E  x-coordinate (characters)
  LD A,(25388)            ; Load Magic Knight's current y-coordinate into A
  CALL 30123              ; Divide by eight, rounding down to nearest integer
  ADD A,3                 ; Add 3 (as Magic Knight is four characters tall)
  LD D,A                  ; And load result into D
  LD A,(25387)            ; Load Magic Knight's current x-coordinate into A
  CALL 30123              ; Divide by eight, rounding down to nearest integer
  LD E,A                  ; Load result into E
  RET                     ; Return

; Point HL to Current Position Data for Current Character
;
; Used by the routines at 31804, 32035 and 33312. Output: HL  Points to entry
; for Current Character in current character positions table at 25440
  PUSH BC                 ; Store BC
  LD A,(30615)            ; Load A with index of Current Character...
  LD C,A                  ; ...copy into C...
  ADD A,A                 ; ...and multiply by 3 (as there are three bytes per
                          ; entry in character positions table; screen, x- and
                          ; y-coordinates)...
  ADD A,C                 ; ...
  LD C,A                  ; Load new value back into BC...
  LD B,0                  ; ...
  LD HL,25440             ; Point HL at table of characters' current positions
  ADD HL,BC               ; Add offset so that HL points to position entry for
                          ; Current Character
  POP BC                  ; Restore BC
  RET                     ; Return

; Display "YOUR HANDS ARE FULL" Window and Return to Game
;
; Used by the routines at 30222 and 30602.
  LD HL,45343             ; Point HL at "YOUR HANDS ARE FULL" text
  JP 34803                ; Draw window (index 13) with text pointed to by HL

; Display "THAT OBJECT IS TOO HEAVY" Window and Return to Game
;
; Used by the routines at 30222 and 30602.
  LD HL,45361             ; Point HL at "THAT OBJECT IS TOO HEAVY" text
  JP 34803                ; Draw window (index 13) with text pointed to by HL

; Display "THERE IS NOTHING NEAR ENOUGH" Window and Return to Game
;
; Used by the routine at 30222.
  LD HL,45326             ; Point HL at "THERE IS NOTHING NEAR ENOUGH" text
  JP 34803                ; Draw window (index 13) with text pointed to by HL

; Display "THERE IS NOTHING IN THIS ROOM" Window and Return to Game
;
; Used by the routine at 30222.
  LD HL,45315             ; Point HL at "THERE IS NOTHING IN THIS ROOM" text
  JP 34803                ; Draw window (index 13) with text pointed to by HL

; Display "YOU CANNOT DROP THAT OBJECT" Window and Return to Game
;
; Used by the routine at 30439.
  LD HL,45475             ; Point HL at "YOU CANNOT DROP THAT OBJECT" text
  JP 34803                ; Draw window (index 13) with text pointed to by HL

; Display "[CHARACTER]'S HANDS ARE EMPTY" Window and Return to Game
;
; Used by the routine at 30602.
  LD HL,45627             ; Point HL at "[CHARACTER]'S HANDS ARE EMPTY" text
  JP 34803                ; Draw window (index 13) with text pointed to by HL

; Display "[CHARACTER] WANTS TO KEEP THAT" Window and Return to Game
;
; Used by the routine at 30602.
  LD HL,45648             ; Point HL at "[CHARACTER] WANTS TO KEEP THAT" text
  JP 34803                ; Draw window (index 13) with text pointed to by HL

; Display "[CHARACTER]'S HANDS ARE FULL" Window and Return to Game
;
; Used by the routine at 30880.
  LD HL,45824             ; Point HL at "[CHARACTER]'S HANDS ARE FULL" text
  JP 34803                ; Draw window (index 13) with text pointed to by HL

; Display "[CHARACTER] IS NOT STRONG ENOUGH" Window and Return to Game
;
; Used by the routine at 30880.
  LD HL,45844             ; Point HL at "[CHARACTER] IS NOT STRONG ENOUGH" text
  JP 34803                ; Draw window (index 13) with text pointed to by HL

; Display "[CHARACTER] DOES NOT WANT THAT" Window and Return to Game
;
; Used by the routine at 30880.
  LD HL,45866             ; Point HL at "[CHARACTER] DOES NOT WANT THAT" text
  JP 34803                ; Draw window (index 13) with text pointed to by HL

; Display "[CHARACTER] IS ALREADY ASLEEP" Window and Return to Game
;
; Used by the routine at 31722.
  LD HL,46567             ; Point HL at "[CHARACTER] IS ALREADY ASLEEP" text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] IS TOO WAKEFUL TO SLEEP" Window and Return to Game
;
; Used by the routine at 31722.
  LD HL,46582             ; Point HL at "[CHARACTER] IS TOO WAKEFUL TO SLEEP"
                          ; text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] DOES NOT WANT TO BE COMMANDED BY YOU" Window and Return
; to Game
;
; Used by the routines at 31722, 31763, 31804, 31842, 31920 and 31980.
  LD HL,46535             ; Point HL at "[CHARACTER] DOES NOT WANT TO BE
                          ; COMMANDED BY YOU" text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] IS ALREADY AWAKE" Window and Return to Game
;
; Used by the routine at 31763.
  LD HL,46627             ; Point HL at "[CHARACTER] IS ALREADY AWAKE" text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] IS TOO TIRED TO WAKE UP" Window and Return to Game
;
; Used by the routine at 31763.
  LD HL,46641             ; Point HL at "[CHARACTER] IS TOO TIRED TO WAKE UP"
                          ; text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] IS TOO TIRED TO GO AWAY" Window and Return to Game
;
; Used by the routine at 31804.
  LD HL,46669             ; Point HL at "[CHARACTER] IS TOO TIRED TO GO AWAY"
                          ; text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] CANNOT HELP YOU" Window and Return to Game
;
; Used by the routines at 31842, 33808, 33811, 33883, 33935, 33993 and 34062.
  LD HL,46698             ; Point HL at "[CHARACTER] CANNOT HELP YOU" text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] IS TOO TIRED TO HELP YOU" Window and Return to Game
;
; Used by the routine at 31842.
  LD HL,46712             ; Point HL at "[CHARACTER] IS TOO TIRED TO HELP YOU"
                          ; text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] HAS NO FOOD LEFT" Window and Return to Game
;
; Used by the routine at 31920.
  LD HL,46718             ; Point HL at "[CHARACTER] HAS NO FOOD LEFT" text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] IS TOO TIRED TO EAT OR DRINK" Window and Return to Game
;
; Used by the routine at 31920.
  LD HL,46738             ; Point HL at "[CHARACTER] IS TOO TIRED TO EAT OR
                          ; DRINK" text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] IS TOO TIRED TO BE HAPPY" Window and Return to Game
;
; Used by the routine at 31980.
  LD HL,46780             ; Point HL at "[CHARACTER] IS TOO TIRED TO BE HAPPY"
                          ; text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "THE LIFT IS HERE" Window and Return to Game
;
; Used by the routine at 33593.
  LD HL,51278             ; Point HL at "THE LIFT IS HERE" text
  LD A,24                 ; Draw window (index 24) with text pointed to by
                          ; HL...
  JP 34768                ; ...and return to game

; Display "THE LIFT HAS ARRIVED" Window and Return to Game
;
; Used by the routine at 33663.
  LD HL,51338             ; Point HL at "THE LIFT HAS ARRIVED" text
  LD A,24                 ; Draw window (index 24) with text pointed to by
                          ; HL...
  JP 34768                ; ...and return to game

; Display "WHAT A RACKET..." Window and Return to Game
;
; Used by the routine at 33574.
  LD HL,50911             ; Point HL at "WHAT A RACKET! APART FROM THE NOISE,
                          ; NOTHING HAPPENED" text
  LD A,27                 ; Draw window (index 27) with text pointed to by
                          ; HL...
  JP 34768                ; ...and return to game

; Display "WHAT A LOT OF DUST..." Window and Return to Game
;
; Used by the routine at 33574.
  LD HL,51086             ; Point HL at "WHAT A LOT OF DUST. DOESN'T ANYBODY
                          ; CLEAN THIS PLACE?" text
  LD A,27                 ; Draw window (index 27) with text pointed to by
                          ; HL...
  JP 34768                ; ...and return to game

; Display "THERE IS NO WRITING FOR ME TO READ" Window and Return to Game
;
; Used by the routine at 32258.
  LD A,12                 ; Draw window (index 12) with text pointed to by HL
  LD HL,47298             ; Point HL at "THERE IS NO WRITING FOR ME TO READ"
                          ; text...
  JP 34768                ; ...and return to game

; Display "IT IS NOT SAFE TO TELEPORT..." Window and Return to Game
;
; Used by the routine at 32194.
  LD HL,50348             ; Point HL at "IT IS NOT SAFE TO TELEPORT TRY AGAIN
                          ; LATER" text
  LD A,17                 ; Draw window (index 17) with text pointed to by
                          ; HL...
  JP 34768                ; ...and return to game

; Display "THE LIQUID IS STUCK TO THE FLOOR..." Window and Return to Game
;
; Used by the routine at 30222.
  LD HL,45380             ; Point HL at "THE LIQUID IS STUCK TO THE FLOOR (IT'S
                          ; A VERY THICK LIQUID)" text
  JP 34803                ; Draw window (index 13) with text pointed to by HL

; Display "[CHARACTER] IS ASLEEP" window and return to game
;
; Used by the routine at 33312.
  LD HL,50965             ; Point HL at "[CHARACTER] IS ASLEEP" text
  JP 34808                ; Draw window (index 28) with text pointed to by HL

; Display "[CHARACTER] DOES NOT WANT TO BE SUMMONED" window and return to game
;
; Used by the routine at 33312.
  LD HL,50976             ; Point HL at "[CHARACTER] DOES NOT WANT TO BE
                          ; SUMMONED" text
  JP 34808                ; Draw window (index 28) with text pointed to by HL

; Display "[CHARACTER] IS TOO TIRED TO BE SUMMONED" window and return to game
;
; Used by the routine at 33312.
  LD HL,51006             ; Point HL at "[CHARACTER] IS TOO TIRED TO BE
                          ; SUMMONED" text
  JP 34808                ; Draw window (index 28) with text pointed to by HL

; Display "[CHARACTER] IS ALREADY HERE!" window and return to game
;
; Used by the routine at 33312.
  LD HL,51033             ; Point HL at "[CHARACTER] IS ALREADY HERE!" text
  JP 34808                ; Draw window (index 28) with text pointed to by HL

; Display "[CHARACTER] DOES NOT WANT TO COME TO SUCH A CROWDED ROOM!" window
; and return to game
;
; Used by the routine at 33312.
  LD HL,51045             ; Point HL at "[CHARACTER] DOES NOT WANT TO COME TO
                          ; SUCH A CROWDED ROOM!" text
  JP 34808                ; Draw window (index 28) with text pointed to by HL

; Display "[CHARACTER] APPEARS IN A THICK PUFF OF SMOKE" window and return to
; game
;
; Used by the routine at 33312.
  LD HL,51138             ; Point HL at "[CHARACTER] APPEARS IN A THICK PUFF OF
                          ; SMOKE" text
  JP 34808                ; Draw window (index 28) with text pointed to by HL

; Display "THAT SPELL CANNOT YET BE CAST..." window and return to game
;
; Used by the routines at 32764, 32823, 32903, 32982, 33036 and 33129.
  LD HL,49435             ; Point HL at "THAT SPELL CANNOT YET BE CAST.
                          ; SOMETHING HAS NOT BEEN DONE OR MAYBE THE TIME IS
                          ; NOT YET SUITABLE" text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display "THE SPELL HAS WORKED!  GIMBAL IS NEARLY FREE" window and return to
; game
;
; Used by the routine at 32764.
  LD HL,49581             ; Point HL at "THE SPELL HAS WORKED!  GIMBAL IS
                          ; NEARLY FREE" text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display "SUCCESS ! GIMBAL IS FREE AT LAST" window and return to game
;
; Used by the routine at 32390.
  LD HL,49613             ; Point HL at "SUCCESS ! GIMBAL IS FREE AT LAST" text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display Candelium Illuminatus successful window and return to game
;
; Used by the routine at 32823.
  LD HL,49640             ; Point HL at "WELL DONE, THE CANDLE IS NOW GLOWING
                          ; WITH A COOL YELLOW LIGHT THAT HAS MAGIC POWER" text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display Armouris Photonicus successful window and return to game
;
; Used by the routine at 32903.
  LD HL,49709             ; Point HL at Armouris Photonicus successful text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display "GIMBAL IS ALREADY FREE" window and return to game
;
; Used by the routine at 32764.
  LD HL,50076             ; Point HL at "GIMBAL IS ALREADY FREE" text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display "THE CANDLE IS ALREADY ALIGHT" window and return to game
;
; Used by the routine at 32823.
  LD HL,50087             ; Point HL at "THE CANDLE IS ALREADY ALIGHT" text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display "YOUR ARMOUR IS GLOWING ALREADY" window and return to game
;
; Used by the routine at 32903.
  LD HL,50102             ; Point HL at "YOUR ARMOUR IS GLOWING ALREADY" text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display "YOU HAVE ALL THE PROTECTION YOU NEED AGAINST GAS ALREADY" window and
; return to game
;
; Used by the routine at 32982.
  LD HL,50124             ; Point HL at "YOU HAVE ALL THE PROTECTION YOU NEED
                          ; AGAINST GAS ALREADY" text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display Fumaticus Protectium successful window and return to game
;
; Used by the routine at 32982.
  LD HL,49880             ; Point HL at Fumaticus Protectium successful text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display Project Physical Body successful window and return to game
;
; Used by the routine at 33036.
  LD HL,50006             ; Point HL at "YOUR SPIRIT FLOWS THROUGH THE GATES OF
                          ; MAGICAL-SPACE-TIME AND THE SPELL CARRIES YOUR BODY
                          ; ALONG" text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display Gimbal's telepathic whisper window and return to game
;
; Used by the routine at 32390.
  LD HL,50396             ; Point HL at "YOU HEAR A SHORT RANGE TELEPATHIC
                          ; WHISPER FROM GIMBAL. 'KEEP THE CRYSTAL FOR LATER -
                          ; IT IS OF NO USE HERE YET'" text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display Blue Crystal used successfully window and return to game
;
; Used by the routine at 32390.
  LD HL,50486             ; Point HL at "THE BLUE CRYSTAL FLEW AT GIMBAL AND
                          ; BURST INTO A SPARKLING POWDER ON CONTACT. THE BLUE
                          ; PORTION THE WHITE-OUT AURA SURROUNDING GIMBAL IS
                          ; DESTROYED" text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display Red Crystal used successfully window and return to game
;
; Used by the routine at 32390.
  LD HL,50605             ; Point HL at "THE RED CRYSTAL FLEW STRAIGHT AT
                          ; GIMBAL AND TURNED INTO A GAS SURROUNDING HIM. THE
                          ; STENCH WAS ALMOST UNBEARABLE BUT NOW THE RED
                          ; ELEMENT OF THE WHITE-OUT SPELL TRAPPING GIMBAL IS
                          ; REMOVED" text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display Green Crystal used successfully window and return to game
;
; Used by the routine at 32390.
  LD HL,50763             ; Point HL at "THE GREEN CRYSTAL FLEW AT GIMBAL AND
                          ; SUCKED UP ALL OF THE GREEN PARTS OF THE WHITE-OUT
                          ; SPELL BEFORE IT BURNED UP IN A BRIGHT FLARE." text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display "THE [OBJECT] LANDED ON THE FLOOR BY [CHARACTER]" window and return
; to game
;
; Used by the routine at 32390.
  LD HL,50869             ; Point HL at "THE [OBJECT] LANDED ON THE FLOOR BY
                          ; [CHARACTER]" text
  JP 34816                ; Draw window (index 35) with text pointed to by HL

; Display "THE LIFT IS BROKEN..." window and return to game
;
; Used by the routine at 33663.
  LD HL,51368             ; Point HL at "THE LIFT IS BROKEN AND CANNOT BE MOVED
                          ; TO THAT FLOOR YET. A GOOD BASH IN THE CONTROL BOX
                          ; WILL PROBABLY FIX IT" text
  LD A,24                 ; Draw window (index 24) with text pointed to by
                          ; HL...
  JP 34768                ; ...and return to game

; Display "[CHARACTER] HAS GONE TO SLEEP" window and return to game
;
; Used by the routine at 31722.
  LD HL,46608             ; Point HL at "[CHARACTER] HAS GONE TO SLEEP" text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] HAS WOKEN UP" window and return to game
;
; Used by the routine at 31763.
  LD HL,46653             ; Point HL at "[CHARACTER] HAS WOKEN UP" text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] HAS GONE AWAY" window and return to game
;
; Used by the routine at 31804.
  LD HL,46681             ; Point HL at "[CHARACTER] HAS GONE AWAY" text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] HAS TAKEN REFRESHMENT" window and return to game
;
; Used by the routine at 31920.
  LD HL,46755             ; Point HL at "[CHARACTER] HAS TAKEN REFRESHMENT"
                          ; text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Display "[CHARACTER] WILL TRY TO BE HAPPY" window and return to game
;
; Used by the routine at 31980.
  LD HL,46789             ; Point HL at "[CHARACTER] WILL TRY TO BE HAPPY" text
  JP 34812                ; Draw window (index 29) with text pointed to by HL

; Adjust the Height and Display a Message Window, then Return to Game
;
; Used by the routines at 33129, 33811, 33883, 33935, 33993, 34062, 34106,
; 34544, 34552, 34560, 34568, 34576, 34584, 34730, 34799, 34803, 34808, 34812,
; 34816, 34914 and 35393. Input:  A Window index HL  Points to text to show in
; window
  PUSH HL                 ; Store HL
  LD L,A                  ; Load index A into HL...
  LD H,0                  ; ...
  EX AF,AF'               ; Exchange AF
  ADD HL,HL               ; Multiply HL by 8...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  LD DE,41877             ; Point DE at bottom position of first window in
                          ; window data table...
  ADD HL,DE               ; ...then add this to HL to obtain bottom position of
                          ; window A location
  POP DE                  ; Restore pointer to text to show in window
  LD A,(DE)               ; Load the first character of the text (a height
                          ; value) into A...
  LD (HL),A               ; ...and from there into window table, thereby
                          ; adjusting the height of the window!
  INC DE                  ; Move to next character (which should be the true
                          ; start of the text)
  PUSH DE                 ; Store this pointer
  EX AF,AF'               ; Switch back to restore window index to A
  CALL 36987              ; Draw the window with index A
  POP HL                  ; Restore pointer to text to HL
  CALL 36725              ; Print the text into the window
  CALL 38749              ; Display "PRESS SPACE OR FIRE TO CONTINUE" window
                          ; and wait for space / fire
  JP 30428                ; Reset Gimbal-White-Out Safe Flag, redraw current
                          ; room and return to main game loop

; Draw Window (Index 2) with Text at HL
;
; Used by the routine at 32258. Input:  HL  Points to text to write in window
  LD A,2                  ; Draw window (index 2) with text pointed to by HL...
  JR 34768                ; ...and return to game

; Draw Window (Index 13) with Text at HL
;
; Used by the routines at 34418, 34424, 34430, 34436, 34442, 34448, 34454,
; 34460, 34466, 34472 and 34592. Input:  HL  Points to text to write in window
  LD A,13                 ; Draw window (index 13) with text pointed to by
                          ; HL...
  JP 34768                ; ...and return to game

; Draw Window (Index 28, Summoning Messages) with Text at HL
;
; Used by the routines at 33312, 34598, 34604, 34610, 34616, 34622 and 34628.
; Input:  HL  Points to text to write in window
  LD A,28                 ; Draw window (index 28) with text pointed to by
                          ; HL...
  JR 34768                ; ...and return to game

; Draw Window (Index 29) with Text at HL
;
; Used by the routines at 34478, 34484, 34490, 34496, 34502, 34508, 34514,
; 34520, 34526, 34532, 34538, 34738, 34744, 34750, 34756 and 34762. Input:  HL
; Points to text to write in window
  LD A,29                 ; Draw window (index 29) with text pointed to by
                          ; HL...
  JR 34768                ; ...and return to game

; Draw Window (Index 35) with Text at HL
;
; Used by the routines at 34634, 34640, 34646, 34652, 34658, 34664, 34670,
; 34676, 34682, 34688, 34694, 34700, 34706, 34712, 34718 and 34724. Input:  HL
; Points to text to write in window
  LD A,35                 ; Draw window (index 35) with text pointed to by
                          ; HL...
  JP 34768                ; ...and return to game

; Update Magic Knight's Current Frame Based on x-Coordinate (Walking Left)
;
; Used by the routines at 27176, 27495 and 28092. Output: A  Frame number The
; operand of the instruction at 34821 represents the address of the appropriate
; "walking" routine to jump to (either 34824 for walking left or 34838 for
; walking right). This is modified by the instructions at 27327, 29527, 29549
; and 29565.
  JP 34824                ; Jump to walking left or walking right version of
                          ; routine
  LD B,5                  ; Load B with 5 (as first graphic frame of Magic
                          ; Knight walking left is frame number 5)
; This entry point is used by the routine at 34838.
  LD HL,25387             ; Point HL at Magic Knight's current data (x- and
                          ; y-coordinates, etc.)
  LD A,(HL)               ; Load A with Magic Knight's x-coordinate
  RRCA                    ; Divide Magic Knight's x-coordinate by 2...
  AND 3                   ; ...and take lowest two bits (0 - 3)
  ADD A,B                 ; Add result to B (1 for walking right frames or 5
                          ; for walking left frames) to get current required
                          ; frame
  LD (25390),A            ; Load frame number into Magic Knight's properties
  RET                     ; Return

; Update Magic Knight's Current Frame Based on x-Coordinate (Walking Right)
  LD B,1                  ; Load B with 1 (as first graphic frame of Magic
                          ; Knight walking right is frame number 1)
  JR 34826                ; Return to routine at 34821

; Advance HL to B-th Entry in List of Zero-Terminated Strings (e.g. Object
; Names Table)
;
; Used by the routines at 30222, 31370, 34864 and 34914. Input:  B  Index of
; required text string Output: HL Points to string of index B (input)
  LD HL,41236             ; Point HL at start of object names table
; This entry point is used by the routines at 31370, 32655, 33663, 34106, 34854
; and 34859.
  LD A,B                  ; Load string index into A
  OR A                    ; Return if index is zero...
  RET Z                   ; ...
  CALL 36703              ; Advance HL to start of next zero-terminated string
  DJNZ 34848              ; Decrease B and repeat loop
  RET                     ; Return

; Advance HL to the B-th Entry in List of Readable Objects' Texts at 47322 then
; Return
;
; Used by the routine at 32258. Input:  B  Index of required text string
  LD HL,47322             ; Point HL at start of list of readable objects'
                          ; texts
  JR 34845                ; Jump to routine that iterates through list of
                          ; zero-terminated strings to get B-th entry then
                          ; return

; Advance HL to the B-th Entry in List of Option Texts from "Command a
; Character" Menu then Return
;
; Used by the routine at 31636. Input:  B  Index of required text string
  LD HL,46490             ; Point HL at list of option texts from "COMMAND A
                          ; CHARACTER" menu
  JR 34845                ; Jump to routine that iterates through list of
                          ; zero-terminated strings to get B-th entry then
                          ; return

; Point DE at Name of a Selected Object in Object Names Table and Print in
; Command Summary Window
;
; Used by the routines at 30439, 30602, 30880, 31370, 32258, 32390 and 33312.
; Input:  A  ASCII code of letter corresponding to an inventory slot (e.g. "B"
; is second inventory slot) HL  Points to start of a character's inventory
  SUB 65                  ; Convert A from ASCII code to inventory slot number
  LD E,A                  ; Load inventory slot number into DE...
  LD D,0                  ; ...
  ADD HL,DE               ; Add to HL as offset
  LD A,(HL)               ; Load index of object in that slot into A
  LD (30467),A            ; Set this object as the Current Object
  LD B,A                  ; Also load index into B
  CALL 34842              ; Point HL at name of object in object names table
  EX DE,HL                ; Switch registers so DE points to object name and HL
                          ; contains inventory slot number
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  RET                     ; Return

; Update Current Character Based Upon Selection Made in Menu
;
; Used by the routine at 35141. Input:  A  ASCII code of letter corresponding
; to a character listed in a character-selection menu (e.g. "B" is second
; character)
  LD HL,23464             ; Point HL at table of indices of characters in
                          ; current room
  SUB 65                  ; Subtract 65 (ASCII code for "A")
  LD E,A                  ; Load remainder (i.e. index of selected item in
                          ; menu) into DE...
  LD D,0                  ; ...
  ADD HL,DE               ; Add this as offset to table of characters in
                          ; current room to identify one of those as the
                          ; character of interest
  LD A,(HL)               ; Load index of this character into A
  LD (30615),A            ; Modify instruction at 30614 to set the Current
                          ; Character
; This entry point is used by the routines at 30602 and 35293.
  LD DE,34903             ; Point DE to code to print short name of Current
                          ; Character...
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  RET                     ; Return

; Code for Printing Routine to Display Short Name of Current Character
  DEFM 31,0               ; short name of Current Character

; Code for Printing Routine to Display Full Name of Current Character
  DEFM 30,0               ; full name of Current Character

; Display a Character's Inventory Window as an Information Window
;
; Used by the routine at 30222. Input:  IX  Points to a character's inventory
; (usually Magic Knight)
  LD A,111                ; Modify instruction at 34989 to display as
                          ; information window, rather than menu window...
  LD (34990),A            ; ...
  JR 34959                ; Jump into inventory window drawing routine

; Show List of Objects (Window or Menu) and Handle Selection if a Menu
;
; Used by the routines at 30439, 30602, 30880, 31370, 32258, 32390 and 33312.
; Input:  B  Number of inventory slots to check DE  Points to summary command
; text (e.g. "BLOW"), or 0 for no summary text HL  Points to full command text
; (e.g. "BLOW WHICH OBJECT?", or "YOU ARE NOW CARRYING") IX  Points to a
; character's inventory Output: A  ASCII code for letter of selected menu item
  PUSH BC                 ; Store BC (B = number of inventory slots)
  PUSH DE                 ; Store DE
  PUSH HL                 ; Store HL
  PUSH IX                 ; Store IX
  CALL 38108              ; Set parameters for and play downward scale sound
  POP IX                  ; Restore IX
  POP HL                  ; Restore HL
  POP DE                  ; Restore DE
  POP BC                  ; Restore BC (B = number of inventory slots)
  LD A,(IX+0)             ; Load first object in character's inventory into A
  OR A                    ; If nothing in first slot...
  JP Z,35069              ; ...jump ahead to 35069 (display "YOU ARE NOT
                          ; CARRYING ANYTHING" message and return to game)
  LD A,105                ; Modify instruction at 34989 with 105, denoting
                          ; window as a menu rather than information window...
  LD (34990),A            ; ...
  PUSH BC                 ; Store BC (B = number of inventory slots)
  PUSH HL                 ; Store HL
  PUSH IX                 ; Store IX
  LD A,D                  ; If DE is zero (i.e. summary command text unset)...
  OR E                    ; ...
  JR Z,34955              ; ...jump ahead to 34955
  PUSH DE                 ; Store DE
  CALL 37654              ; Display / update command summary window at bottom
                          ; of screen
  POP DE                  ; Restore DE
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  POP IX                  ; Restore IX
  POP HL                  ; Restore HL
  POP BC                  ; Restore BC (B = number of inventory slots)
; This entry point is used by the routine at 34907.
  LD C,0                  ; Load C (object counter) with zero
  PUSH BC                 ; Store BC (B = number of inventory slots)
  PUSH IX                 ; Store IX
  LD A,(IX+0)             ; Load object from character's inventory (slot number
                          ; C) into A
  OR A                    ; If nothing in this slot...
  JR Z,34975              ; ...then jump ahead to 34975
  INC C                   ; Increase count of objects in inventory
  INC IX                  ; Advance IX to next slot
  DJNZ 34964              ; Repeat for next slot
  POP IX                  ; Restore IX (points to start of inventory)
  LD A,C                  ; Copy number of objects into A
  OR A                    ; If number of objects is zero... (see trivia)
  JP Z,35078              ; ...then jump ahead to 35078
  LD A,C                  ; Copy number of objects into A
  ADD A,3                 ; Add 3 to this (menu window padding)
  LD (41909),A            ; Modify height of window 4 to accommodate list of C
                          ; objects
  PUSH HL                 ; Store HL (pointer to full command text)
; The operand of the instruction at 34989 represents the "Draw Hand Menu
; Cursor" Flag. This is modified by the instruction at 34936.
  LD A,0                  ; Load A with "Draw Hand Menu Cursor" Flag
  CP 105                  ; If this is not 105 (i.e. window is not a menu, but
                          ; a simple information window)...
  JR NZ,35002             ; ...then jump ahead to 35002
  LD A,4                  ; Draw a menu window...
  CALL 36979              ; ...
  JR 35007                ; ...and skip over "draw an information window"
                          ; section
  LD A,4                  ; Draw window 4...
  CALL 36987              ; ...
  LD A,64                 ; Set character at 43221 (letter preceding menu
                          ; items) to "@" (i.e. the character immediately
                          ; before "A")...
  LD (43221),A            ; ...
  POP HL                  ; Restore HL (pointer to full command text)...
  CALL 36725              ; ...and print the text
  POP BC                  ; Restore BC (B = number of remaining inventory
                          ; slots)
  PUSH BC                 ; Store BC (B = number of remaining inventory slots)
  LD A,(IX+0)             ; Load index of first object in inventory into A
  OR A                    ; If index is zero (i.e. if nothing in inventory)...
  JP Z,35064              ; ...then skip ahead to 35064
  LD B,A                  ; Copy index into B
  PUSH IX                 ; Store IX (pointer to start of inventory)
  LD HL,43221             ; Point HL to letter shortcut (currently set to "@"
                          ; as at instruction 35007)...
  LD A,(HL)               ; ...
  INC A                   ; ...
  LD (HL),A               ; ...and increase index by one to change to "A"
  LD HL,43220             ; Point HL to 43220
  PUSH BC                 ; Store BC (B = index of an object)
  CALL 36725              ; Print text (i.e. "A] ") to screen
  POP BC                  ; Restore BC (B = index of an object)
  CALL 34842              ; Point HL to B-th entry in list of object names
  CALL 36725              ; Print object name to screen
  POP IX                  ; Restore IX (pointer to start of inventory)
  INC IX                  ; Advance IX to next inventory slot
  POP BC                  ; Restore BC (B = number of remaining inventory
                          ; slots)
  DJNZ 35017              ; Repeat loop for next object in inventory,
                          ; decreasing B (number of remaining inventory slots)
  LD A,(34990)            ; If window is a menu, rather than information
                          ; window...
  CP 105                  ; ...
  CALL Z,37333            ; ...then process keyboard / joystick input for menu,
                          ; and load ASCII code of shortcut for selected (i.e.
                          ; SPACE or fire pressed) item into A...
  RET                     ; ...and return
  POP BC                  ; Restore BC
  CALL Z,37333            ; Process keyboard / joystick input for menu, and
                          ; load ASCII code of shortcut for selected (i.e.
                          ; SPACE or fire pressed) item into A
  RET                     ; Return
  LD A,13                 ; Display "YOU ARE NOT CARRYING ANYTHING" window...
  POP HL                  ; ...restoring HL...
  LD HL,45447             ; ...
  JP 34768                ; ...and return to game
  PUSH HL                 ; Store HL (points to full command text, e.g. "BLOW
                          ; WHICH OBJECT?", or "YOU ARE NOW CARRYING")
  LD A,4                  ; Modify height of window 4...
  LD (41909),A            ; ...
  LD A,4                  ; Draw window 4...
  CALL 36987              ; ...
  POP HL                  ; Restore HL (points to window title line, e.g. "BLOW
                          ; WHICH OBJECT?", or "YOU ARE NOW CARRYING")
  CALL 36725              ; Print the text
  LD HL,41236             ; Point HL at NOTHING AT ALL  text...
  CALL 36725              ; ...and print
  POP BC                  ; Restore BC
  RET                     ; Return

; Display Cyan "Game Over" Window and Return to Pre-Game Menu
;
; Used by the routines at 27176, 27865, 29800, 29880, 29915, 30602, 32390,
; 32876, 33180, 33269, 35993, 55461 and 55478. Input:  HL  Points to location
; of a string (e.g. "YOU DIED OF EXHAUSTION...")
  RES 0,(IY+65)           ; Reset "Update Game Time and Locate Arrow Glow" flag
  LD A,(HL)               ; Set height of window to accommodate text...
  LD (42141),A            ; ...
  INC HL                  ; Advance to first character of message...
  PUSH HL                 ; ...and store for later use
  LD A,33                 ; Draw window 33 ("Game Over" window with modified
                          ; height, as above)...
  CALL 36987              ; ...
  LD HL,43247             ; Point to string for percentage completion
  LD DE,43259             ; Point to string for time left
  CALL 34268              ; Insert current time and score into "TIME LEFT" and
                          ; "PERCENTAGE COMPLETION" texts
  LD HL,43224             ; Point HL at "GAME OVER / TOTAL COMPLETION XX% /
                          ; TIME LEFT XX HOURS" text...
  CALL 36725              ; ...and print it to screen
  POP HL                  ; Restore HL (pointer to first character of message
                          ; pointed to on entry to routine)...
  CALL 36725              ; ...and print it to screen
  CALL 38749              ; Display "PRESS SPACE OR FIRE TO CONTINUE" window
                          ; and wait for space / fire
  JP 26673                ; Jump back to pre-game menu (select input device,
                          ; view instructions, play game, etc.)

; Display and Process Input for Character Selection Menu (Current Room's
; Characters Only)
;
; Used by the routines at 30602, 30880, 31370, 31636 and 32390. Input:  HL
; Pointer to primary text DE Pointer to secondary text
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  PUSH IX                 ; Store IX
  PUSH DE                 ; Store DE
  CALL 38116              ; Play short downward scale sound
  POP DE                  ; Restore DE
  LD A,D                  ; If DE is zero...
  OR E                    ; ...
  JR Z,35162              ; ...then skip ahead to 35162
  PUSH DE                 ; Store DE
  CALL 37654              ; Display / update command summary window at bottom
                          ; of screen
  POP DE                  ; Restore DE
  CALL 38693              ; ...and print in Command Summary Window at bottom of
                          ; screen
  LD A,(65529)            ; Load A with Magic Knight's current room
  CALL 35931              ; Load number of characters in this room into C and
                          ; load their indices into table at 23464
  JR NZ,35199             ; If there are characters present then jump to 35199
  LD HL,44035             ; Point HL at "THERE IS NOBODY IN THIS ROOM" text
  LD A,(HL)               ; Load text height (rows) into A...
  LD (41981),A            ; ...and then into stored bottom y-coordinate of
                          ; window #13
  INC HL                  ; Advance HL to next byte (start of actual text)
  PUSH HL                 ; Store HL
  LD A,13                 ; Draw window 13...
  CALL 36987              ; ...
  POP HL                  ; Restore HL
  CALL 36725              ; Print "THERE IS NOBODY IN THIS ROOM" text to screen
  CALL 38749              ; Display "PRESS SPACE OR FIRE TO CONTINUE" window
                          ; and wait for space / fire
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  POP HL                  ; Restore HL
  POP HL                  ; Restore HL again (as this routine was CALLed, but
                          ; we are not RETurning from it, so need to keep stack
                          ; tidy!)
  JP 30428                ; Reset Gimbal-White-Out Safe Flag, redraw current
                          ; room and return to main game loop
  ADD A,4                 ; Add four to number of characters in current room
                          ; (for menu size padding)
  LD (41901),A            ; Load value into "bottom position (characters)"
                          ; field of fourth window in windows data table at
                          ; 41874 (i.e. adjust window's height to accommodate
                          ; all the characters present)
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  LD A,3                  ; Draw "WHO DO YOU WANT TO COMMAND?" menu window...
  CALL 36979              ; ...
  LD HL,44017             ; Point HL at "WHO DO YOU WANT TO COMMAND?" text
  CALL 36725              ; Print text in window
  POP HL                  ; Restore HL (primary text, as at beginning of this
                          ; routine)
  CALL 36725              ; Print text in window
  LD HL,43221             ; Point HL at "0]" text (i.e. letters corresponding
                          ; to menu items)
  LD A,64                 ; Set this character to ASCII code 64 (character
                          ; immediately before "A")...
  LD (HL),A               ; ...
  LD IX,23464             ; Point IX at table of indices of characters in
                          ; current room
  LD B,3                  ; Load 3 into B (as we can have up to three
                          ; characters in this room)
  PUSH BC                 ; Store BC
  LD A,(IX+0)             ; Load index of next character in room...
  CP 255                  ; ...compare with 255 (i.e. empty slot)...
  JP Z,35282              ; ...and if this is an empty slot (i.e. no more
                          ; characters) then jump to 35282
  LD HL,43221             ; Point HL at "0]" text (i.e. letters corresponding
                          ; to menu items)
  LD A,(HL)               ; Load the first text character into A...
  INC A                   ; ...increment...
  LD (HL),A               ; ...and write back to location HL (i.e. advance to
                          ; next letter, as menu choices are labelled A, B, C,
                          ; etc.)
  LD HL,43220             ; Point to beginning of this modified string...
  CALL 36725              ; ...and print it to screen
  LD A,(IX+0)             ; Load index of character into A again...
  LD (30615),A            ; ...and set this as the Current Character
  LD HL,34905             ; Point HL to code to print full name of Current
                          ; Character...
  CALL 36725              ; ...and print it to screen
  INC IX                  ; Advance IX to next character
  POP BC                  ; Restore BC
  DJNZ 35234              ; Repeat loop if we have not yet reached the third
                          ; character
  CALL 37333              ; Process keyboard / joystick input for menu, and
                          ; load ASCII code of shortcut for selected (i.e.
                          ; SPACE or fire pressed) item into A
  CALL 34883              ; Update Current Character based upon selection made
                          ; in menu
  CALL 35393              ; Display warning and abort if command is not safe
                          ; while Gimbal whited-out
  RET                     ; Return
  POP BC                  ; Restore BC
  CALL 37333              ; Process keyboard / joystick input for menu, and
                          ; load ASCII code of shortcut for selected (i.e.
                          ; SPACE or fire pressed) item into A
  CALL 34883              ; Update Current Character based upon selection made
                          ; in menu
  CALL 35393              ; Display warning and abort if command is not safe
                          ; while Gimbal whited-out
  RET                     ; Return

; Display and Process Input for Character Selection Menu for "Travel To",
; "Summon" or "Locate"
;
; Used by the routines at 32035, 33036 and 33312. Input:  HL  (On stack)
; Pointer to text ("TRAVEL TO", "SUMMON" or "LOCATE") pushed onto stack before
; call to this routine
  CALL 38116              ; Set parameters for and play short downward scale
                          ; sound...
  CALL 38116              ; ...twice
  LD A,(23467)            ; Load A with 1 if Banshee is released, else load
                          ; with 0...
  AND 1                   ; ...
  ADD A,11                ; Set height of character selection menu window
                          ; according to whether or not Banshee is free...
  LD (41901),A            ; ...
  LD A,3                  ; Display character selection menu...
  CALL 36979              ; ...
  LD HL,44017             ; Print "WHO DO YOU WANT TO..." text...
  CALL 36725              ; ...
  POP HL                  ; Restore HL (address to return to upon RET
                          ; instruction)...
  EX (SP),HL              ; ...and swap with next value on stack (pointer to
                          ; text that was PUSHed before this routine was
                          ; called)
  CALL 36725              ; Print the text
  LD HL,43221             ; Set character at 43221 (letter preceding menu
                          ; items) to "@" (i.e. the character immediately
                          ; before "A")...
  LD A,64                 ; ...
  LD (HL),A               ; ...
  LD B,7                  ; Load B with 7 as there are initially 7 characters
  LD A,(23467)            ; If Banshee is not released...
  BIT 0,A                 ; ...
  JR Z,35341              ; ...then skip ahead to 35341
  INC B                   ; Add one as with Banshee free there are 8 characters
  LD A,B                  ; Load number of characters into A...
  LD (35375),A            ; ...and use to modify instruction at 35374
  XOR A                   ; Set B to zero...
  LD B,A                  ; ...
  PUSH AF                 ; Store AF
  PUSH BC                 ; Store BC
  LD (30615),A            ; Change Current Character to value in A
  LD A,B                  ; Copy B into A
  ADD A,65                ; Set character at 43221 (letter preceding menu
                          ; items) to ASCII code of "A", plus index of
                          ; character...
  LD (43221),A            ; ...
  LD HL,43220             ; Point HL at this prefix text...
  CALL 36725              ; ...and print it
  LD HL,34905             ; Point HL to code to print full name of Current
                          ; Character...
  CALL 36725              ; ...and print it
  POP BC                  ; Restore BC (B=current character number)
  INC B                   ; Increase B for next character
  POP AF                  ; Restore AF
  INC A                   ; Increase A to count number characters printed in
                          ; menu
; The operand of the instruction at 35374 represents the number of currently
; active characters in the game (excluding Magic Knight). This is modified by
; the instruction at 35342.
  CP 7                    ; If number of characters printed is not equal to
                          ; number of characters to print...
  JR NZ,35347             ; ...then loop back to 35347 for next character
  CALL 37333              ; Process keyboard / joystick input for menu, and
                          ; load ASCII code of shortcut for selected (i.e.
                          ; SPACE or fire pressed) item into A
  SUB 65                  ; Subtract ASCII code of "A" from letter of character
                          ; chosen to get index of selected character in A
  LD (30615),A            ; Set this to be the Current Character
  CALL 34896              ; Print short name of Current Character in command
                          ; summary window at bottom of screen
  CALL 35393              ; Display warning and abort if command is not safe
                          ; while Gimbal whited-out
  RET                     ; Return

; Display Warning and Abort if Command is not Safe While Gimbal is Whited-Out
;
; Used by the routines at 35141 and 35293.
  LD A,(30615)            ; Load index of Current Character into A
  OR A                    ; If not zero (Gimbal)...
  RET NZ                  ; ...then return
  LD A,(23377)            ; If Gimbal-White-Out Safe Flag is set...
  AND 1                   ; ...
  RET NZ                  ; ...then return
  LD A,(23468)            ; If Gimbal is released...
  AND 1                   ; ...
  RET NZ                  ; ...then return
  POP HL                  ; Restore HL
  POP HL                  ; Restore HL
  LD A,32                 ; Display "GIMBAL IS NOT YET RELEASED..." window and
                          ; return to game...
  LD HL,43274             ; ...
  JP 34768                ; ...

; Select Magic Knight's Room (Cheat / Debug Routine)
;
; Used by the routine at 27236.
  CALL 38183              ; Play Cheat Routine Sound
  CALL 26835              ; Wait for a key-press then beep, loading index of
                          ; pressed key into A
  CP 88                   ; If "X" is pressed...
  JP Z,26742              ; ...then return to BASIC
  CP 48                   ; If a key with an index lower than "0" is pressed
                          ; then exit this routine...
  JP M,35489              ; ...
  CP 53                   ; If a key with an index equal to or higher than "5"
                          ; is pressed then exit this routine...
  JP NC,35489             ; ...
  SUB 48                  ; Subtract 48 (ASCII code for "0") from index of key
                          ; pressed to convert to a number
  LD B,A                  ; Multiply number by 10 in A...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  ADD A,B                 ; ...
  ADD A,A                 ; ...
  LD (65529),A            ; Set Magic Knight's current room to this value
  CALL 26835              ; Wait for a key-press then beep, loading index of
                          ; pressed key into A
  CP 88                   ; If "X" is pressed...
  JP Z,26742              ; ...then return to BASIC
  CP 48                   ; If a key with an index lower than "0" is pressed
                          ; then exit this routine...
  JP M,35489              ; ...
  CP 58                   ; If a key with an index equal to or higher than ":"
                          ; (one immediately after "9") is pressed then exit
                          ; this routine...
  JP NC,35489             ; ...
  SUB 48                  ; Subtract 48 (ASCII code for "0") from index of key
                          ; pressed to convert to a number
  LD B,A                  ; Add value of this second digit to value in Magic
                          ; Knight's current room...
  LD A,(65529)            ; ...
  ADD A,B                 ; ...
  LD (65529),A            ; ...
  XOR A                   ; Set Magic Knight's current frame to erase to zero
                          ; (frame 0 is blank graphic data) so Magic Knight is
                          ; drawn but not erased...
  LD (25389),A            ; ...
  CALL 38108              ; Set parameters for and play downward scale sound
  JP 27168                ; Redraw current room and return to game
  CALL 38183              ; Play Cheat Routine Sound
  JP 27176                ; Jump to start of Main Game Loop

; Set Magic Knight's Available Action Flags
;
; Used by the routines at 26906, 29446, 30222 and 32390.
  CALL 35536              ; Set the "Magic Knight Can Command" flag if he is
                          ; carrying the wand of command
  CALL 35567              ; Set the "Magic Knight Can Locate" flag if he is
                          ; carrying the crystal ball
  CALL 35598              ; Set the "Magic Knight Can Teleport" flag if he is
                          ; carrying the teleport key
  CALL 35629              ; Set the "Magic Knight Can Read" flag if he is
                          ; carrying a readable object
  CALL 35669              ; Set the "Magic Knight Can Throw" flag if he is
                          ; carrying a throwable object
  CALL 35709              ; Set the "Magic Knight Can Cast a spell" flag if he
                          ; is carrying a magic object
  CALL 35749              ; Set the "Magic Knight Can Blow" flag if he is
                          ; carrying a blowable object
  CALL 35789              ; Set the "Magic Knight Can Call Lift" flag if he is
                          ; in the first room of a floor
  CALL 35815              ; Set the "Magic Knight Can Move Lift" flag if he is
                          ; in the Lift
  LD A,(65529)            ; Load A with Magic Knight's current room...
  OR A                    ; ...and if he is not in the Lift...
  RET NZ                  ; ...then return
  LD A,(65532)            ; If he IS in the lift...
  RES 1,A                 ; ...reset the "Magic Knight Can Locate" flag (i.e.
                          ; false)...
  LD (65532),A            ; ...
  RET                     ; Return

; Set the "Magic Knight Can Command" Flag if he is Carrying the Wand of Command
;
; Used by the routine at 35495.
  LD A,(65532)            ; Reset "Magic Knight Can Command" flag (i.e.
                          ; false)...
  RES 0,A                 ; ...
  LD (65532),A            ; ...
  LD HL,25395             ; Point HL to start of Magic Knight's current
                          ; inventory
  LD B,5                  ; Set counter to 5 (as Magic Knight can carry 5
                          ; objects)
  LD A,(HL)               ; Load index of object carried by Magic Knight into A
  CP 7                    ; And if this is the Wand of Command (object 7)...
  JR Z,35558              ; ...then skip to 35558...
  INC HL                  ; ...else advance to next inventory slot...
  DJNZ 35549              ; ...and repeat
  RET                     ; If this was last slot, then return with "Magic
                          ; Knight Can Command" flag unset
  LD A,(65532)            ; Set "Magic Knight Can Command" flag (i.e. true)...
  SET 0,A                 ; ...
  LD (65532),A            ; ...
  RET                     ; Return

; set the "Magic Knight Can Locate" Flag if he is Carrying the Crystal Ball
;
; Used by the routine at 35495.
  LD A,(65532)            ; Reset "Magic Knight Can Locate" flag (i.e.
                          ; false)...
  RES 1,A                 ; ...
  LD (65532),A            ; ...
  LD HL,25395             ; Point HL to start of Magic Knight's current
                          ; inventory
  LD B,5                  ; Set counter to 5 (as Magic Knight can carry 5
                          ; objects)
  LD A,(HL)               ; Load index of object carried by Magic Knight into A
  CP 6                    ; And if this is the Crystal Ball (object 6)...
  JR Z,35589              ; ...then skip to 35589...
  INC HL                  ; ...else advance to next inventory slot...
  DJNZ 35580              ; ...and repeat
  RET                     ; If this was last slot, then return with "Magic
                          ; Knight Can Locate" flag unset
  LD A,(65532)            ; Set "Magic Knight Can Locate" flag (i.e. true)...
  SET 1,A                 ; ...
  LD (65532),A            ; ...
  RET                     ; Return

; Set the "Magic Knight Can Teleport" Flag if he is Carrying the Teleport Key
;
; Used by the routine at 35495.
  LD A,(65532)            ; Reset "Magic Knight Can Teleport" flag (i.e.
                          ; false)...
  RES 2,A                 ; ...
  LD (65532),A            ; ...
  LD HL,25395             ; Point HL to start of Magic Knight's current
                          ; inventory
  LD B,5                  ; Set counter to 5 (as Magic Knight can carry 5
                          ; objects)
  LD A,(HL)               ; Load index of object carried by Magic Knight into A
  CP 48                   ; And if this is the Teleport Key (object 48)...
  JR Z,35620              ; ...then skip to 35620...
  INC HL                  ; ...else advance to next inventory slot...
  DJNZ 35611              ; ...and repeat
  RET                     ; If this was last slot, then return with "Magic
                          ; Knight Can Teleport" flag unset
  LD A,(65532)            ; Set "Magic Knight Can Teleport" flag (i.e. true)...
  SET 2,A                 ; ...
  LD (65532),A            ; ...
  RET                     ; Return

; Set the "Magic Knight Can Read" Flag if he is Carrying a Readable Object
;
; Used by the routine at 35495.
  LD A,(65532)            ; Reset "Magic Knight Can Read" flag (i.e. false)...
  RES 3,A                 ; ...
  LD (65532),A            ; ...
  LD B,5                  ; Set counter to 5 (as Magic Knight can carry 5
                          ; objects)
  LD IX,25395             ; Point IX to start of Magic Knight's current
                          ; inventory
  LD A,(IX+0)             ; Load index of object carried by Magic Knight into A
  LD E,2                  ; Point HL to property 2 ("Read Text") of this object
                          ; (in table at 42242)...
  CALL 34160              ; ...
  LD A,(HL)               ; ...and load into A
  OR A                    ; If "Read Text" property is not zero (i.e. if object
                          ; can be read)...
  JR NZ,35660             ; ...then skip to 35660...
  INC IX                  ; ...else advance to next inventory slot...
  DJNZ 35643              ; ...and repeat
  RET                     ; If this was last slot, then return with "Magic
                          ; Knight Can Read" flag unset
  LD A,(65532)            ; Set "Magic Knight Can Read" flag (i.e. true)...
  SET 3,A                 ; ...
  LD (65532),A            ; ...
  RET                     ; Return

; Set the "Magic Knight Can Throw" Flag if he is Carrying a Throwable Object
;
; Used by the routine at 35495.
  LD A,(65532)            ; Reset "Magic Knight Can Throw" flag (i.e. false)...
  RES 4,A                 ; ...
  LD (65532),A            ; ...
  LD B,5                  ; Set counter to 5 (as Magic Knight can carry 5
                          ; objects)
  LD IX,25395             ; Point IX to start of Magic Knight's current
                          ; inventory
  LD A,(IX+0)             ; Load index of object carried by Magic Knight into A
  LD E,4                  ; Point HL to property 4 ("use status") of this
                          ; object (in table at 42242)...
  CALL 34160              ; ...
  BIT 1,(HL)              ; ...and if bit 1 (Throw status) of this is set...
  JR NZ,35700             ; ...then skip to 35700...
  INC IX                  ; ...else advance to next inventory slot...
  DJNZ 35683              ; ...and repeat
  RET                     ; If this was last slot, then return with "Magic
                          ; Knight Can Throw" flag unset
  LD A,(65532)            ; Set "Magic Knight Can Throw" flag (i.e. true)...
  SET 4,A                 ; ...
  LD (65532),A            ; ...
  RET                     ; Return

; Set the "Magic Knight Can Cast a Spell" Flag if he is Carrying a Magic Object
;
; Used by the routine at 35495.
  LD A,(65532)            ; Reset "Magic Knight Can Cast a Spell" flag (i.e.
                          ; false)...
  RES 5,A                 ; ...
  LD (65532),A            ; ...
  LD B,5                  ; Set counter to 5 (as Magic Knight can carry 5
                          ; objects)
  LD IX,25395             ; Point IX to start of Magic Knight's current
                          ; inventory
  LD A,(IX+0)             ; Load index of object carried by Magic Knight into A
  LD E,3                  ; Point HL to property 3 ("Magic Power") of this
                          ; object (in table at 42242)...
  CALL 34160              ; ...
  LD A,(HL)               ; ...and load into A
  OR A                    ; If "Magic Power" property is not zero (i.e. if
                          ; object is magic)...
  JR NZ,35740             ; ...then skip to 35740...
  INC IX                  ; ...else advance to next inventory slot...
  DJNZ 35723              ; ...and repeat
  RET                     ; If this was last slot, then return with "Magic
                          ; Knight Can Cast a Spell" flag unset
  LD A,(65532)            ; Set "Magic Knight Can Cast a Spell" flag (i.e.
                          ; true)...
  SET 5,A                 ; ...
  LD (65532),A            ; ...
  RET                     ; Return

; Set the "Magic Knight Can Blow" Flag if he is Carrying a Blowable Object
;
; Used by the routine at 35495.
  LD A,(65532)            ; Reset "Magic Knight Can Blow" flag (i.e. false)...
  RES 6,A                 ; ...
  LD (65532),A            ; ...
  LD B,5                  ; Set counter to 5 (as Magic Knight can carry 5
                          ; objects)
  LD IX,25395             ; Point IX to start of Magic Knight's current
                          ; inventory
  LD A,(IX+0)             ; Load index of object carried by Magic Knight into A
  LD E,4                  ; Point HL to property 4 ("Use Status") of this
                          ; object (in table at 42242)...
  CALL 34160              ; ...
  BIT 0,(HL)              ; ...and if bit 0 (Blow status) of this is set...
  JR NZ,35780             ; ...then skip to 35780...
  INC IX                  ; ...else advance to next inventory slot...
  DJNZ 35763              ; ...and repeat
  RET                     ; If this was last slot, then return with "Magic
                          ; Knight Can Blow" flag unset
  LD A,(65532)            ; Set "Magic Knight Can Blow" flag (i.e. true)...
  SET 6,A                 ; ...
  LD (65532),A            ; ...
  RET                     ; Return

; Set the "Magic Knight Can Call Lift" Flag if he is in the First Room of a
; Floor
;
; Room numbers from which lift can be called:
  LD A,(65532)            ; Reset "Magic Knight Can Call Lift" flag (i.e.
                          ; false)...
  RES 7,A                 ; ...
  LD (65532),A            ; ...
  LD A,(65529)            ; Load A with Magic Knight's current room
  OR A                    ; If room number is zero (i.e. "The Lift")...
  RET Z                   ; ...then return with flag unset
  DEC A                   ; Decrease room number by one
  AND 7                   ; If this value is not a multiple of eight (i.e. a
                          ; room from which the lift can be called)...
  RET NZ                  ; ...then return with flag unset
  LD A,(65532)            ; Set "Magic Knight Can Call Lift" flag (i.e.
                          ; true)...
  SET 7,A                 ; ...
  LD (65532),A            ; ...
  RET                     ; Return

; Set the "Magic Knight Can Move Lift" Flag if he is in the Lift
;
; Used by the routine at 35495.
  LD A,(65533)            ; Reset "Magic Knight Can Move Lift" flag (i.e.
                          ; false)...
  RES 0,A                 ; ...
  LD (65533),A            ; ...
  LD A,(65529)            ; Load A with Magic Knight's current room
  OR A                    ; If room number is not zero (i.e. not "The Lift")...
  RET NZ                  ; ...then return with flag unset
  LD A,(65533)            ; Set "Magic Knight Can Move Lift" flag (i.e.
                          ; true)...
  SET 0,A                 ; ...
  LD (65533),A            ; ...
  RET                     ; Return

; Insert Numeric Stats (at HL) of a Character into "Examine Character" Window
; Text
;
; Used by the routine at 31370. Input:  HL  Points to strength of a character
  PUSH HL                 ; Store HL (pointer to strength)
  LD A,(HL)               ; Load strength into A
  PUSH HL                 ; Store HL (pointer to strength)
  LD HL,45941             ; Point HL at "strength" 99 in "EXAMINE [CHARACTER]"
                          ; window text
  CALL 36647              ; Splice numeric data A as a string into a string at
                          ; HL
  POP HL                  ; Restore HL (pointer to strength)
  INC HL                  ; Advance HL to happiness
  LD A,(HL)               ; Load happiness into A
  PUSH HL                 ; Store HL (pointer to happiness)
  LD HL,45963             ; Point HL at "happiness" 99 in "EXAMINE [CHARACTER]"
                          ; window text
  CALL 36647              ; Splice numeric data A as a string into a string at
                          ; HL
  POP HL                  ; Restore HL (pointer to happiness)
  INC HL                  ; Advance HL to stamina
  LD A,(HL)               ; Load stamina into A
  PUSH HL                 ; Store HL (pointer to stamina)
  LD HL,45984             ; Point HL at "stamina" 99 in "EXAMINE [CHARACTER]"
                          ; window text
  CALL 36647              ; Splice numeric data A as a string into a string at
                          ; HL
  POP HL                  ; Restore HL (pointer to stamina)
  INC HL                  ; Advance HL to spell power
  LD A,(HL)               ; Load spell power into A
  PUSH HL                 ; Store HL (pointer to spell power)
  LD HL,46002             ; Point HL at "spell power" 99 in "EXAMINE
                          ; [CHARACTER]" window text
  CALL 36647              ; Splice numeric data A as a string into a string at
                          ; HL
  POP HL                  ; Restore HL (pointer to spell power)
  INC HL                  ; Advance HL to food level
  LD A,(HL)               ; Load food level into A
  LD HL,46024             ; Point HL at "food level" 99 in "EXAMINE
                          ; [CHARACTER]" window text
  CALL 36647              ; Splice numeric data A as a string into a string at
                          ; HL
  POP HL                  ; Restore HL (original pointer to strength)
  RET                     ; Return

; Insert Numeric / Text Stats of an Object into "Examine Object" Window Text
;
; Used by the routine at 31370. Input:  HL  Points to weight of an object
  LD A,(HL)               ; Load A with weight of the object
  PUSH HL                 ; Store HL (pointer to weight of object)
  LD HL,46053             ; Point HL at numeric part of "WEIGHT     XXX#"
                          ; string
  CALL 36647              ; Splice numeric data A as a string into a string at
                          ; HL
  POP HL                  ; Restore HL (pointer to weight of object)
  INC HL                  ; Advance HL to Drop Status
  LD B,147                ; Load B with (index for text "YES")
  LD A,(HL)               ; Load A with Drop Status
  OR A                    ; If drop status is zero (i.e. object can be
                          ; dropped)...
  JR Z,35904              ; ...then skip ahead to 35904
  INC B                   ; Increase B to 148 (index for text "NO")
  LD A,B                  ; Load B into A...
  LD (46076),A            ; ...and insert this text into the string "DROP
                          ; STATUS X"
  INC HL                  ; Advance HL to "Read Text" index
  LD B,147                ; Load B with (index for text "YES")
  LD A,(HL)               ; Load A with "Read Text" index
  OR A                    ; If "Read Text" index is not zero (i.e. object can
                          ; be read)...
  JR NZ,35916             ; ...then skip ahead to 35904
  INC B                   ; Increase B to 148 (index for text "NO")
  LD A,B                  ; Load B into A...
  LD (46092),A            ; ...and insert this text into the string "READ
                          ; STATUS X"
  INC HL                  ; Advance HL to "Magic Power" value
  LD A,(HL)               ; Load A with "Magic Power" value
  PUSH HL                 ; Store HL (pointer to Magic Power value)
  LD HL,46107             ; Point HL at numeric part of "MAGIC POWER     XXX#"
                          ; string
  CALL 36647              ; Splice numeric data A as a string into a string at
                          ; HL
  POP HL                  ; Restore HL (pointer to object's Magic Power value)
  RET                     ; Return

; Get Number of Characters in a Room, and Load Their Indices into Table at
; 23464
;
; Used by the routine at 35141. Input:  A  Room number Output: A  number of
; characters in room A (input) C  number of characters in room A (input) F
; Zero Flag reset if characters are present in room, set otherwise
  LD (35967),A            ; Store room index in instruction at 35966
  PUSH HL                 ; Store HL
  PUSH BC                 ; Store BC
  PUSH DE                 ; Store DE
  PUSH IX                 ; Store IX
  LD A,255                ; Load A with 255
  LD HL,23466             ; Clear "characters in current room" data table at
                          ; 23464...
  LD (HL),A               ; ...
  DEC HL                  ; ...
  LD (HL),A               ; ...
  DEC HL                  ; ...
  LD (HL),A               ; ...
  LD IX,25440             ; Point IX at characters' current positions table
  LD D,0                  ; Set D to zero
  LD BC,1792              ; Set B to 7 (as we have seven characters, excluding
                          ; Banshee so loop back seven times) and C to 0
  LD A,(23467)            ; If Banshee has not been released, then...
  BIT 0,A                 ; ...
  JR Z,35966              ; ...skip ahead to 35966...
  INC B                   ; ...else increase B by one to take into account
                          ; presence of Banshee
; The operand of the instruction at 35966 represents the appropriate room
; index. This is modified by the instruction at 35931.
  LD A,0                  ; Load A with room number
  CP (IX+0)               ; Compare to room number of current character...
  JR NZ,35976             ; ...and if not the same, then jump to 35976 (i.e.
                          ; move onto next character)
  INC C                   ; Increase C (number of characters in current room)
                          ; by one
  LD (HL),D               ; Store character index in table at 23464
  INC HL
  INC IX                  ; Advance IX by three bytes, to next character's
                          ; entry...
  INC IX                  ; ...
  INC IX                  ; ...
  INC D                   ; Increase D (index of current character)
  DJNZ 35966              ; Loop back for next character
  LD A,C                  ; Load A with number of characters in current room
  OR A                    ; Set zero flag if no characters present
  POP IX                  ; Restore IX
  POP DE                  ; Restore DE
  POP BC                  ; Restore BC
  POP HL                  ; Restore HL
  RET                     ; Return

; Update Position of Odd Ball, Display, and Decrease Magic Knight's Strength if
; in Contact
;
; Used by the routines at 29776 and 29874. Input:  A  Ball number (0, 1, 2 or
; 3)
  ADD A,A                 ; Multiply value of A by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD C,A                  ; Store in C
  LD B,0                  ; Set B to zero
  LD IX,36183             ; Set IX to point to data for balls
  ADD IX,BC               ; Add eight times ball number as offset to IX pointer
  LD C,(IX+0)             ; Load ball's x-coordinate into C
  LD B,(IX+1)             ; Load ball's y-coordinate into B
  PUSH BC                 ; Store BC
  LD (23677),BC           ; Load BC into system variable "COORDS"
  LD A,(IX+4)             ; Load A with ball's current frame number
  PUSH IX                 ; Store IX
  CALL 39125              ; Draw Odd Ball to screen
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
  LD A,(IX+4)             ; Load A with Odd Ball frame data
  SUB 116                 ; Subtract 116 (i.e. frame number of first Odd Ball
                          ; frame) to get "absolute frame number" (see trivia)
  INC A                   ; Advance absolute frame number by one
  AND 3                   ; Cap absolute frame number to 3, and wrap round from
                          ; 3 to 0 as there are only four frames
  ADD A,116               ; Add 116 to absolute frame number to give relative
                          ; frame number again
  LD (IX+4),A             ; Store new frame number
  PUSH IX                 ; Store IX
  CALL 39125              ; Draw Odd Ball to screen
  POP IX                  ; Restore IX
  LD A,(IX+0)             ; Load x-coordinate of ball
  OR A                    ; If x-coordinate is zero...
  CALL Z,36173            ; ...multiply x "velocity" by minus one
  CP 244                  ; If x-coordinate is 244...
  CALL Z,36173            ; ...multiply x "velocity" by minus one
  INC IX                  ; Temporarily advance IX pointer to work with y
                          ; "velocities"
  LD A,(IX+0)             ; Load y-coordinate of ball
  CP 172                  ; If y-coordinate is 172...
  CALL Z,36173            ; ...multiply y "velocity" by minus one
  CP 40                   ; If y-coordinate is 40...
  CALL Z,36173            ; ...multiply y "velocity" by minus one
  DEC IX                  ; Move IX back one again (reversing instruction at
                          ; 36079)
  LD A,(25387)            ; Load A with Magic Knight's current x-coordinate
  LD B,A                  ; Copy into B
  LD A,(IX+0)             ; Load A with x-coordinate of ball
  ADD A,6                 ; Add 6 to x-coordinate of ball
  SUB B                   ; Subtract B to get x-distance between Magic Knight
                          ; and the ball, plus 6
  CP 21                   ; If this value is not less than 21 then...
  JP NC,36172             ; ...return
  LD A,(25388)            ; Else, load B with Magic Knight's y-coordinate...
  LD B,A                  ; ...
  LD A,(IX+1)             ; Load A with y-coordinate of ball (uses same
                          ; coordinate system as PLOT command, i.e. y=0 is at
                          ; bottom of screen)
  SUB 175                 ; Subtract y-coordinate from 175 to change y-origin
                          ; to top of screen...
  NEG                     ; ...and have y-coordinate increase downwards rather
                          ; than upwards
  ADD A,6                 ; Add 6 to y-coordinate of ball
  SUB B                   ; Subtract B to get y-distance between Magic Knight
                          ; and the ball, plus 6
  CP 39                   ; If this value is not less than 39 then...
  JP NC,36172             ; ...return
  LD A,(25315)            ; Else, decrease Magic Knight's current strength by
                          ; one...
  DEC A                   ; ...
  LD (25315),A            ; ...
  CALL 36215              ; Draw health bar at bottom of screen
  LD A,(25315)            ; Load Magic Knight's current strength into A...
  OR A                    ; If Magic Knight's strength is zero...
  LD HL,43960             ; ...point HL to "YOU DIED OF EXHAUSTION" text...
  JP Z,35101              ; ...and jump to "Game over" window routine and exit
  LD C,32                 ; Set C to 32 (number of times to repeat loop below)
  LD A,16                 ; Set speaker bit...
  OUT (254),A             ; ...
  LD A,R                  ; Load A with random number between 0 - 15 (as R
                          ; register increases with each instruction
                          ; executed)...
  AND 15                  ; ...
  LD B,A                  ; Load value into B
  DJNZ 36161              ; Pause by repeating this line B times
  XOR A                   ; Set A to zero
  OUT (254),A             ; Reset speaker bit
  DEC C                   ; Decrease C...
  JR NZ,36152             ; ...and repeat loop if C is not zero
  XOR A                   ; Reset speaker bit...
  OUT (254),A             ; ...
  RET                     ; Return

; Multiply x or y Velocity of Odd-Ball by Minus One
;
; Used by the routine at 35993. Input:  IX  Address of x or y "velocity" of
; Odd-Ball minus two
  LD A,(IX+2)             ; Load A with x "velocity" of ball
  NEG                     ; Multiply velocity by minus one
  LD (IX+2),A             ; Load back into data block
  XOR A                   ; Set A to zero
  RET                     ; Return

; Properties of the Odd-Balls
;
; Up to four balls may exist in a room, therefore there are four entries in
; this table. Each ball's properties are encoded in eight bytes with the
; following meanings:
  DEFB 12,112,4,2,32,0,0,0 ; Ball 1
  DEFB 12,112,2,252,32,0,0,0 ; Ball 2
  DEFB 200,120,252,2,32,0,0,0 ; Ball 3
  DEFB 200,120,254,252,32,0,0,0 ; Ball 4

; Draw Strength Bar at Bottom of Screen
;
; Used by the routines at 28092 and 35993.
  LD A,35                 ; Load A with index of object 35 (Mirror)
  CALL 34256              ; Check whether Magic Knight is carrying the
                          ; Mirror...
  RET NZ                  ; ...and if not, return
  LD HL,20642             ; Point HL to position of start of health bar in
                          ; Display File
  LD A,(25315)            ; Load A with Magic Knight's strength
  RRCA                    ; Divide strength by eight, rounding down to nearest
                          ; integer...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 15                  ; ...and if lowest four bits are reset (i.e. don't
                          ; need to draw part of a character block)...
  JR Z,36251              ; ...then skip ahead to 36251
  LD B,A                  ; Load number of full character blocks to draw into B
  LD A,255                ; Place 255 into A
  PUSH HL                 ; Store HL (Display File position of start of health
                          ; bar block)
  PUSH BC                 ; Store BC (B = number of full character blocks to
                          ; draw)
  LD B,4                  ; Load B with 4 (health bar has 4 stripes)
  LD (HL),A               ; Draw a byte (i.e. a "block" of 8 health units) to
                          ; health bar
  INC H                   ; Advance HL two rows down (as bar is made of
                          ; alternating horizontal stripes)...
  INC H                   ; ...
  DJNZ 36241              ; And if there's another stripe of the 4 to draw,
                          ; then loop back and draw it
  POP BC                  ; Restore BC (B = number of full character blocks to
                          ; draw)
  POP HL                  ; Restore HL (Display File position of start of
                          ; health bar)
  INC HL                  ; Advance HL (horizontally) one character to draw
                          ; next full block, if applicable
  DJNZ 36237              ; If there's another block to draw, then loop back to
                          ; draw it
  LD A,(25315)            ; Load A with Magic Knight's strength
  AND 7                   ; Get fractional part (i.e. amount by which strength
                          ; is more than a multiple of eight)
  JR NZ,36261             ; If it is not zero, then skip ahead to 36261
  XOR A                   ; Set A to zero
  JR 36267                ; Skip ahead to draw the blank rows (see trivia)
  LD B,A                  ; Load fractional part of strength into B
  XOR A                   ; Set A to zero
  SCF                     ; Set the Carry Flag
  RRA                     ; Move carry Flag bit into MSB of A
  DJNZ 36263              ; Decrease B and loop back if not zero (i.e. place a
                          ; bit at the LHS of A for each unit of strength that
                          ; is left!)
  LD B,4                  ; Load B with 4 (health bar has 4 stripes)
  LD (HL),A               ; Draw a byte (i.e. a "block" of 8 health units) to
                          ; health bar
  INC H                   ; Advance HL two rows down (as bar is made of
                          ; alternating horizontal stripes)...
  INC H                   ; ...
  DJNZ 36269              ; Loop back to draw next row
  RET                     ; Return

; Draw Objects in Magic Knight's Inventory to Bottom of Screen if he is
; Carrying the Mirror
;
; Used by the routine at 28092.
  LD A,35                 ; Load A with index of object 35 (Mirror)
  CALL 34256              ; Check whether Magic Knight is carrying the
                          ; Mirror...
  RET NZ                  ; ...and if not, return
  LD HL,25395             ; Point HL to Magic Knight's inventory
  LD B,5                  ; Set counter to 5 (as inventory has 5 slots)
  LD DE,5392              ; Load DE with x- and y-coordinates respectively to
                          ; start drawing object graphics (D, or x = 21, E, or
                          ; y = 16)
  PUSH BC                 ; Store BC, HL and DE...
  PUSH HL                 ; ...
  PUSH DE                 ; ...
  LD A,(HL)               ; Load index of object at current slot in Magic
                          ; Knight's inventory into A
  OR A                    ; If this is zero...
  JR Z,36323              ; ...then return
  LD E,6                  ; Load 6 into E
  CALL 34160              ; Point HL to property 6 (attribute) of this object
                          ; in properties table...
  LD A,(HL)               ; ...and load value of property into A...
  LD (23695),A            ; ...then into system variable ATTR T
  INC HL                  ; Advance HL to point to graphic index property...
  LD A,(HL)               ; ...and load into A
  POP BC                  ; Restore BC...
  PUSH BC                 ; ...and store again
  CALL 29960              ; Draw the object at the current inventory slot
  POP DE                  ; Restore coordinates
  LD A,E                  ; Add 1 character of horizontal space between this
                          ; and the next object (objects are 2 characters wide,
                          ; plus one of space makes three)...
  ADD A,3                 ; ...
  LD E,A                  ; ...
  POP HL                  ; Advance to next inventory slot...
  INC HL                  ; ...
  POP BC                  ; ...
  DJNZ 36289              ; Repeat loop for next inventory slot
  RET                     ; Return
  POP DE                  ; Restore BC, HL and DE...
  POP HL                  ; ...
  POP BC                  ; ...
  RET                     ; Return

; Assign a Slot in Room C to Character B
;
; Used by the routines at 26906, 30540, 33312 and 55233. Input:  B  Index of a
; character C  Room number Output: A  Number of slot assigned (4 if room is
; full) B  y-coordinate (characters) of slot C  x-coordinate (characters) of
; slot
  LD A,C                  ; Load room number into A
  LD HL,25440             ; Point HL at start of table of current characters'
                          ; locations (i.e. Gimbal, Thor etc.)
  LD DE,25307             ; Point DE at table of characters' slots in their
                          ; current rooms
  LD IX,36472             ; Point IX at 36472 list of occupied slots...
  LD (IX+0),0             ; ...and set three bytes there to zeroes...
  LD (IX+1),0             ; ...
  LD (IX+2),0             ; ...
  PUSH BC                 ; Store BC
  LD B,8                  ; Load B with 8
  CP (HL)                 ; Compare a character's current screen number with
                          ; room number passed to this routine (in A)...
  JR NZ,36364             ; ...and if they're not the same then skip ahead to
                          ; 36364 (move onto next character, if applicable)
  EX AF,AF'               ; Swap registers
  LD A,(DE)               ; Load character's slot (i.e. order of arrival in the
                          ; room) into A
  LD (IX+0),A             ; Copy slot into table at 36472
  INC IX                  ; Advance IX to next entry in this table
  EX AF,AF'               ; Exchange registers
  INC HL                  ; Advance HL by three bytes (i.e. skip over x- and
                          ; y-coordinates to get to screen number of next
                          ; character)...
  INC HL                  ; ...
  INC HL                  ; ...
  INC DE                  ; Advance DE by one byte to get slot of next
                          ; character
  DJNZ 36353              ; Loop back if previous character was not the last
  POP BC                  ; Restore BC
  LD IX,36472             ; Point IX at list of occupied slots
  LD A,1                  ; If one of the characters in room C has a slot of
                          ; 1...
  CP (IX+0)               ; ...then jump ahead to 36394...
  JR Z,36394              ; ...
  CP (IX+1)               ; ...
  JR Z,36394              ; ...
  CP (IX+2)               ; ...
  JR Z,36394              ; ...
  JR 36435                ; ...else jump to 36435
  LD A,2                  ; If one of the characters in room C has a slot of
                          ; 2...
  CP (IX+0)               ; ...then jump ahead to 36413...
  JR Z,36413              ; ...
  CP (IX+1)               ; ...
  JR Z,36413              ; ...
  CP (IX+2)               ; ...
  JR Z,36413              ; ...
  JR 36435                ; ...else jump to 36435
  LD A,3                  ; If one of the characters in room C has a slot of
                          ; 3...
  CP (IX+0)               ; ...then jump ahead to 36432...
  JR Z,36432              ; ...
  CP (IX+1)               ; ...
  JR Z,36432              ; ...
  CP (IX+2)               ; ...
  JR Z,36432              ; ...
  JR 36435                ; ...else jump to 36435
  LD A,4                  ; Return with A=4...
  RET                     ; ...
  LD E,A                  ; Load highest slot among characters plus one in room
                          ; into E
  PUSH DE                 ; Store DE (E=lowest empty slot)
  PUSH BC                 ; Store BC (B=Character index, C=Room number)
  DEC A                   ; Decrease A to get index of lowest empty slot...
  ADD A,A                 ; ...double it...
  LD E,A                  ; ...and load into DE...
  LD D,0                  ; ...
  LD B,0                  ; Set B to zero
  PUSH BC                 ; Copy BC into HL...
  POP HL                  ; ...so that HL contains room number passed to this
                          ; routine initially
  ADD HL,HL               ; Double room number...
  ADD HL,BC               ; ...add room number again (now three times)...
  ADD HL,HL               ; ...and double again to get six times original room
                          ; number in HL
  LD BC,53938             ; Point BC at table of coordinates of character
                          ; positions in rooms
  ADD HL,BC               ; Add to six times room number into HL
  ADD HL,DE               ; Add to this double (slot - 1) from DE
  LD C,(HL)               ; Load x- and y-coordinates into BC
  INC HL                  ; ...
  LD B,(HL)               ; ...
  EXX                     ; Exchange all registers
  POP BC                  ; Restore BC (B=Character index, C=Room number)
  LD HL,25307             ; Point HL at table of characters' slots in their
                          ; current rooms
  LD D,0                  ; Load input character index into DE...
  LD E,B                  ; ...
  ADD HL,DE               ; Add as offset to HL
  POP DE                  ; Restore (E=lowest empty slot)
  LD (HL),E               ; Set this character's slot to be lowest empty slot
                          ; in this room
  LD A,E                  ; Set A to slot number just filled
  EXX                     ; Exchange all registers
  RET                     ; Return

; List of Occupied Slots in a Room
;
; Used by routine at 36327
  DEFB 0,0,0

; Print a Character (e.g. Letter in the Current Room Name, or a Block of a
; Window Border)
;
; Used by the routines at 36725, 36908 and 37147. Input:  A  Index of character
; to print
  PUSH HL                 ; Store HL
  LD DE,63732             ; Point to graphic (Magic Knight, frame 1, facing
                          ; left)
  ADD A,A                 ; Load index of character into HL and multiply by
                          ; 8...
  LD H,0                  ; ...
  LD L,A                  ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  ADD HL,DE               ; ...and add to DE to obtain memory location of
                          ; required character in the character set
  EX DE,HL                ; Swap values (DE now holds memory location of
                          ; character to print and HL holds 63732)
; The operand of the instruction at 36487 represents the Display File address
; to print to. This is modified by the instructions at 28272 and 36551.
  LD HL,0                 ; Load HL with the Display File address to print
                          ; character to
  LD B,8                  ; For eight bytes (i.e. full height of character)...
  LD A,(DE)               ; ...get graphic data from character set...
  LD (HL),A               ; ...and load into Display File...
  INC DE                  ; ...move to next pixel row in character set...
  INC H                   ; ...and move to next pixel row in Display File
  DJNZ 36492              ; (End loop)
  CALL 36709              ; Load memory location 23487 (and HL) with memory
                          ; location of attribute data (Attribute File) for
                          ; character just printed
  LD A,(23695)            ; Obtain attribute data stored previously in system
                          ; variable ATTR T (71 = white INK, black PAPER,
                          ; BRIGHT)
  LD (HL),A               ; Apply attribute to character just printed
  CALL 36606              ; Advance Display File pointer to next location (for
                          ; printing room name)
  POP HL                  ; Restore HL
  RET                     ; Return

; Draw a Single Character Block Part of a Wall, Ceiling or Floor
;
; Used by the routine at 28344. Input:  A  Index of brickwork graphic to draw
; (from lookup table 54617)
  PUSH HL                 ; Store HL
  LD DE,64756             ; Point DE at start of brickwork (architecture)
                          ; graphic data
  ADD A,A                 ; Double architecture style index
  LD H,0                  ; Load brickwork graphic index into HL...
  LD L,A                  ; ...
  ADD HL,HL               ; Multiply by 4 (to give 8 times original value)...
  ADD HL,HL               ; ...
  ADD HL,DE               ; Add to DE as offset
  EX DE,HL                ; Switch DE and HL (so HL points to start of
                          ; brickwork graphic data and DE points graphic data
                          ; for required brickwork block)
  LD HL,(36488)           ; Load "memory location to start printing character"
                          ; in character printing routine into HL...
  LD B,8                  ; Set loop repeat counter to 8
  LD A,(DE)               ; Load a byte of graphic data into A...
  LD (HL),A               ; ...and draw to display
  INC DE                  ; Advance to next data to read
  INC H                   ; Move HL down one pixel row
  DJNZ 36527              ; Repeat loop for next pixel row
  LD HL,(36488)           ; Load "bitmap memory location to start printing
                          ; character" in character printing routine into HL...
  LD A,H                  ; Advance HL to attribute memory location
                          ; corresponding to this Display File address...
  AND 31                  ; ...
  RRCA                    ; ...
  RRCA                    ; ...
  RRCA                    ; ...
  ADD A,88                ; ...
  LD H,A                  ; ...
  LD A,(23695)            ; Load value in system variable ATTR T into this
                          ; memory location (i.e. apply attribute)...
  LD (HL),A               ; ...
  POP HL                  ; Restore HL
  RET                     ; Return

; Move Bitmap Virtual Cursor to Display File address for Coordinates x=C, y=B
;
; Used by the routines at 29356, 36987, 37147, 37333, 37552 and 38417. Input:
; B  y-coordinate (characters) C  x-coordinate (characters) Output: HL  Virtual
; Bitmap Cursor Display File address
  LD A,B                  ; Load y-coordinate into A
  AND 24                  ; AND 24 to determine which third of the bitmap
                          ; memory we are in (A = 0, 8 or 16. Can't be 24 as
                          ; this is greater than y-resolution in characters,
                          ; 0-23)
  ADD A,64                ; Load HL with Display File address of start of
                          ; appropriate third of display...
  LD H,A                  ; ...(16,384, 18,432 or 20,480)
  LD A,B                  ; Load y-coordinate back into A
  AND 7                   ; AND 7 to determine which of the 8 character rows
                          ; within the third we are interested in
  RRCA                    ; Multiply by 8 to get pixel row required...
  RRCA                    ; ...
  RRCA                    ; ...
  ADD A,C                 ; Add x-coordinate
  LD L,A                  ; Add to value currently in HL
  LD (36488),HL           ; Set (video) memory location to start printing
                          ; character
  RET                     ; Return

; Update Virtual Attribute Cursor to Attribute File for Coordinates x=C, y=B
;
; Used by the routines at 26673, 28683, 28747, 28841, 28882, 28960, 29032,
; 29089, 29184, 29205, 29225, 29291, 29960, 37571, 38242, 54853 and 54955.
; Input:  B  y-coordinate (characters) C y-coordinate (characters) Output: HL
; Virtual Attribute Cursor Attribute File address
  LD A,B                  ; Copy y-coordinate into A
  ADD A,A                 ; Multiply by 8...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; Load HL with value...
  LD H,0                  ; ...
  ADD HL,HL               ; Multiply by four...
  ADD HL,HL               ; ...now HL holds 32 times original y-coordinate
  LD D,88                 ; Load DE with position of start of attribute data,
                          ; plus x-coordinate...
  LD E,C                  ; ...
  ADD HL,DE               ; Add 32 times y-coordinate
  LD (23487),HL           ; Store this in memory (virtual attribute cursor
                          ; storage)
  RET                     ; Return

; Point HL at Terrain Interaction Data for Character Coordinates x=C, y=B
;
; Used by the routines at 27495, 27666, 27809, 29356 and 38539. Input:  B
; y-coordinate (characters) C y-coordinate (characters) Output: HL  Points to
; entry in "Terrain Interaction Data" at 24539
  PUSH AF                 ; Store AF
  LD A,B                  ; Load y-coordinate into A
  ADD A,A                 ; Multiply this by 8...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; Copy 8 times y-coordinate into HL...
  LD H,0                  ; ...
  ADD HL,HL               ; Multiply by 4...
  ADD HL,HL               ; ...to give 32 times original y-coordinate in HL
  LD DE,24539             ; Point DE at start of "Terrain Interaction Data"
  ADD HL,DE               ; Add 32 times y-coordinate as offset to HL
  LD D,0                  ; Load x-coordinate into DE...
  LD E,C                  ; ...
  ADD HL,DE               ; Add x-coordinate as offset to HL
  POP AF                  ; Restore AF
  RET                     ; Return

; Advance Display File Pointer to Next Location (for Printing Room Name)
;
; Used by the routines at 36475 and 36875.
  LD HL,(36488)           ; Get Display File byte to modify...
  INC HL                  ; ...and increase (for next character)
  LD A,L                  ; Load LSB of HL into A...
  OR A                    ; ...and check whether it is zero
  JR Z,36618              ; If it is zero (i.e. advancing down a character row
                          ; will take us into a different third of Display
                          ; File) then skip to second part of routine...
  LD (36488),HL           ; ...else store the updated (increased) Display File
                          ; address for next character...
  RET                     ; ...and return
  LD A,H                  ; Add 7 to MSB of Display File address...
  ADD A,7                 ; ...as advancing by one at 36609 took Display File
                          ; pointer back up to 2nd pixel row of the current
                          ; third of the display...
  LD H,A                  ; ...when in fact we need to move to top pixel row of
                          ; the NEXT third of the display (i.e. 7 x 32 x 8 = 7
                          ; x 256 bytes on from this!)...
  LD (36488),HL           ; ...
  RET                     ; Return

; Advance Display File Pointer by Two Characters
;
; Used by the routine at 28344.
  LD HL,(36488)           ; Get Display File byte to modify...
  INC HL                  ; ...and increase by two bytes...
  INC HL                  ; ...
  LD A,L                  ; Load LSB of HL into A...
  OR A                    ; ...and check whether it is zero
  JR Z,36639              ; If it is zero (i.e. advancing down a character row
                          ; will take us into a different third of Display
                          ; File) then skip to second part of routine...
  LD (36488),HL           ; ...else store the updated (increased) Display File
                          ; address for next character...
  RET                     ; ...and return
  LD A,H                  ; Add 7 to MSB of Display File address...
  ADD A,7                 ; ...as advancing by one at 36609 took Display File
                          ; pointer back up to 2nd pixel row of the current
                          ; third of the display...
  LD H,A                  ; ...when in fact we need to move to top pixel row of
                          ; the NEXT third of the display (i.e. 7 x 32 x 8 = 7
                          ; x 256 bytes on from this!)...
  LD (36488),HL           ; ...
  RET                     ; Return

; Splice Numeric Data A as a String into a String at HL
;
; Used by the routines at 34268, 35837 and 35887. Input:  A  Numeric data (e.g.
; percentage completion / character's strength) to be loaded into text at HL HL
; Points to a "numeric" text (e.g. percentage completion / character's
; strength)
  PUSH HL                 ; Store HL (pointer to "numeric text")
  LD HL,23497             ; Point HL at destination location for ASCII string
  LD B,0                  ; Load numeric value into BC...
  LD C,A                  ; ...
  CALL 37746              ; Convert numeric value in BC to ASCII string at
                          ; location 23497
  LD HL,23499             ; Convert up to two (C=2) leading zeroes to spaces in
                          ; last three digits (starting at 23497) of the ASCII
                          ; string number...
  LD C,2                  ; ...
  CALL 36692              ; ...
  POP DE                  ; Restore pointer to "numeric text" (originally in HL
                          ; at start of this routine) into DE
  LD HL,23499             ; Point HL at string number just created
  LD BC,3                 ; Splice ASCII string number just generated into
                          ; "numeric data" text (e.g. put the number XX into
                          ; the "TIME LEFT XX HOURS" text)...
  LDIR                    ; ...
  RET                     ; Return

; Unused routine
  PUSH HL                 ; Transfer HL into BC...
  POP BC                  ; ...
  PUSH IX                 ; Store IX
  PUSH IX                 ; Transfer IX into HL...
  POP HL                  ; ...
  CALL 37746              ; Convert numeric value in BC to ASCII string at
                          ; location HL
  POP HL                  ; Restore HL (was originally in IX)
  LD C,4                  ; Convert leading zeroes to spaces in a string number
                          ; as 4 digit value...
  CALL 36692              ; ...
  RET                     ; Return

; Convert Leading Zeroes to Spaces in a String Number
;
; Used by the routines at 36647 and 36675. Input:  C  Number of required digits
; in string (e.g. 2) HL  Pointer to location within ASCII string
  LD A,(HL)               ; Load ASCII character at HL into A
  CP 48                   ; If character is not a zero ("0")...
  RET NZ                  ; ...then return
  LD (HL),32              ; Replace the zero character with a space (i.e.
                          ; remove leading zeroes from number)
  INC HL                  ; Advance to next character in string
  DEC C                   ; Decrease C (number of remaining digits to process)
  RET Z                   ; Return if last digit has been processed
  JR 36692                ; Loop back for next digit

; Get Start of Next Zero-Terminated String
;
; Used by the routines at 28272, 34842 and 36830. Input:  HL  Current position
; in a list of zero-terminated strings Output: HL  Byte immediately after the
; first zero byte following HL (input) address
  LD A,(HL)               ; Get byte at HL
  INC HL                  ; Advance HL
  OR A                    ; Is byte value from old HL position zero?
  RET Z                   ; If so then exit
  JR 36703                ; If not, then restart this loop with new HL

; Store and Point HL at Attribute File Address for Character Just Printed
;
; Used by the routines at 28510, 36475, 36725, 36800 and 36810.
  LD HL,(36488)           ; Load HL with Display File address for drawing
                          ; character
  LD A,H                  ; Load H into A...
  AND 31                  ; ...and cap at 31, to give screen third of interest
                          ; (H=0-7, top third; H=8-15, middle third; H=16-23,
                          ; bottom third)
  RRCA                    ; Divide by eight to get character row within the
                          ; third...
  RRCA                    ; ...
  RRCA                    ; ...
  ADD A,88                ; Add 22,528 to HL to move into Attribute File
  LD H,A                  ; L still contains offset of x characters, so points
                          ; to start of attributes for area where room name was
                          ; just printed
  LD (23487),HL           ; Store memory location for later use
  RET                     ; Return

; Print Text at Location HL to Screen
;
; Used by the routines at 26747, 26788, 27118, 28092, 28272, 29800, 29880,
; 30540, 30602, 31153, 31370, 31636, 32035, 32655, 32876, 33180, 33663, 34350,
; 34768, 34914, 35101, 35141, 35293, 36830, 37654, 38693, 38725 and 38749.
; Input:  HL  Points to text data to print
  PUSH AF                 ; Store AF
  PUSH HL                 ; Store HL
  CALL 36709              ; Update stored location of start of attribute data
  POP HL                  ; Retrieve HL
  DEC HL                  ; Prepare for loop
; This entry point is used by the routines at 36800 and 36830.
  INC HL                  ; Start of loop - advance to next character to be
                          ; printed
  LD A,(HL)               ; Get character from string at location HL (e.g.
                          ; "**  " text)
  OR A                    ; Check against various values...
  JP Z,36798              ; If character is a null character, exit routine (via
                          ; RET at 36798)
  CP 9                    ; If character is a "9" (move right)...
  JP Z,36875              ; ...then move virtual text cursor right by one
                          ; character
  CP 13                   ; If the character is a "13" ("ENTER" - carriage
                          ; return + line feed)...
  JP Z,36800              ; ...then move Virtual Text Cursor down to start of
                          ; next row
  CP 14                   ; If the character is a "14"...
  JP Z,36810              ; ...then move Virtual Text Cursor down to start of
                          ; next row within current window
  CP 16                   ; If the character is a "16" (change of INK
                          ; colour)...
  JP Z,36861              ; ...then go to change INK colour routine
  CP 17                   ; If the character is a "17" (change of PAPER
                          ; colour)...
  JP Z,36849              ; ...then go to change PAPER colour routine
  CP 18                   ; If the character is a "18" (change of FLASH
                          ; status)...
  JP Z,36857              ; ...go to change FLASH status routine
  CP 19                   ; If the character is a "19" (change of BRIGHT
                          ; status)...
  JP Z,36853              ; ...then go to change BRIGHT status routine
  CP 29                   ; If the character is a "29" (print name of Current
                          ; Object)...
  JP Z,36882              ; ...then go to the print Current Object name routine
  CP 30                   ; If the character is a "30" (print full name of
                          ; Current Character)...
  JP Z,36892              ; ...then print the Current Character's full name
  CP 31                   ; If the character is a "31" (print short name of
                          ; Current Character)...
  JP Z,36900              ; ...then print the Current Character's short name
  CP 91                   ; If value is 91 or greater (i.e. special
                          ; character)...
  JP NC,36830             ; ...then print special character or change text
                          ; attribute
  CALL 36475              ; Print character to screen
  JR 36732                ; Loop back to 36732 to print next character
  POP AF                  ; Restore AF and return
  RET                     ; Return

; Move Virtual Text Cursor Down to Start of Next Row
;
; Used by the routine at 36725.
  PUSH HL                 ; Store HL
  CALL 37703              ; Move virtual text cursor down to start of next text
                          ; row
  CALL 36709              ; Update stored location of start of attribute data
; This entry point is used by the routines at 36810, 36830 and 36875.
  POP HL                  ; Restore HL
  JR 36732                ; Move onto next character

; Move Virtual Text Cursor Down to Start of Next Row Within Current Window
;
; Used by the routine at 36725.
  PUSH HL                 ; Store HL
  CALL 37703              ; Move virtual text cursor down to start of next text
                          ; row
  LD HL,(36488)           ; Get position of virtual text cursor
  LD A,(23493)            ; Load A with x-coordinate of left edge of current
                          ; window (in characters)
  ADD A,L                 ; Offset the text cursor based upon left-edge of
                          ; current window to prepare to print text starting at
                          ; left edge of this window...
  LD L,A                  ; ...
  LD (36488),HL           ; Update virtual text cursor location
  CALL 36709              ; Update stored location of start of attribute data
  JR 36807                ; Go to 36807 for next character

; Print Special Character or Change Text Attribute
;
; Used by the routines at 36725, 36892 and 36900.
  PUSH HL                 ; Store HL
  LD HL,40149             ; Point HL at start of common words table
  SUB 91                  ; Subtract 91 from A to get index of special
                          ; character
; This entry point is used by the routine at 36882.
  JR Z,36844              ; If first string is required (i.e. index is zero),
                          ; then jump straight to print commands
  LD B,A                  ; Load index into B
  CALL 36703              ; Get start of next zero-terminated string...
  DJNZ 36839              ; ...and repeat until the B-th string is found (e.g.
                          ; 20th)...
  CALL 36725              ; ...then print this string to screen
  JR 36807                ; Jump to 36807 (i.e. we have printed the common
                          ; word, so go back to printing rest of original
                          ; string)
; This entry point is used by the routine at 36725.
  LD B,199                ; PAPER bits
  JR 36863                ; Update attribute
; This entry point is used by the routine at 36725.
  LD B,191                ; BRIGHT bit
  JR 36863                ; Update attribute
; This entry point is used by the routine at 36725.
  LD B,127                ; FLASH bit
  JR 36863                ; Update attribute
; This entry point is used by the routine at 36725.
  LD B,248                ; INK bits
  INC HL                  ; Advance to next character
  LD A,(23695)            ; Get system variable ATTR T
  AND B                   ; Clear bits
  OR (HL)                 ; Update bits with value from HL
  LD (23695),A            ; Set system variable ATTR T (i.e. change INK / PAPER
                          ; colour of text)
  JP 36732                ; Move onto next character

; Move Virtual Text Cursor Right by One Character
;
; Used by the routine at 36725.
  PUSH HL                 ; Store HL
  CALL 36606              ; Advance to next character location (Display File)
  JP 36807                ; Loop back

; Print the Current Object's Name
;
; Used by the routine at 36725.
  PUSH HL                 ; Store HL
  LD HL,41236             ; Set HL to start of object names table
  LD A,(30467)            ; Load A with index of Current Object
  OR A                    ; (Re)Set zero flag
  JR 36836                ; Jump back to print this object's name

; Print the Current Character's Full Name
;
; Used by the routine at 36725.
  LD A,(30615)            ; Load index of Current Character into A
  ADD A,117               ; Add as offset to 117 (index of first of characters'
                          ; names)
  JP 36830                ; Jump into the text printing routine to display the
                          ; text

; Print the Current Character's Short Name
;
; Used by the routine at 36725.
  LD A,(30615)            ; Load index of Current Character into A
  ADD A,130               ; Add as offset to 130 (index of first of characters'
                          ; names)
  JP 36830                ; Jump into the text printing routine to display the
                          ; text

; Draw an Edge of Frame of a Window
;
; Used by the routines at 37147 and 37782. Input:  HL  Width of window
; (characters) minus 1 - used as a loop counter to print segments of window
; border
  LD A,H                  ; Check whether remaining window's width is zero...
  OR L                    ; ...and if it is...
  RET Z                   ; ...then return
; The operand of the instruction at 36911 represents the border style
; (character index) to print. This is modified by the instructions at 37028,
; 37176 and 37246.
  LD A,0                  ; Load A with the border style (character index)...
  CALL 36475              ; ...print the character...
  DEC HL                  ; ...decrease the remaining width...
  JR 36908                ; ...and loop back to 36908

; Draw Window Frame for Character Portraits (2nd Floor) and Goblet Picture in
; Florin's Room
;
; Used by the routine at 29150. Input:  B  y-coordinate (characters) of picture
; C  x-coordinate (characters) of picture D  index of graphic to draw inside
; frame
  LD A,10                 ; Load A with 10 (window index)
  EX AF,AF'               ; Switch AF
  PUSH BC                 ; Store BC (x- and y-coordinates of top-left corner)
  LD H,0                  ; Load HL with index of graphic to draw inside frame
  LD L,D                  ; ...
  LD E,3                  ; In preparation for drawing an object (object height
                          ; + 1)
  ADD HL,HL               ; Multiply HL by four...
  ADD HL,HL               ; ...
  LD BC,42642             ; Point to start of graphic lookup data
  ADD HL,BC               ; Add offset (now, for example, pointing to entry for
                          ; Goblet from picture in Florin's room)
  LD A,(HL)               ; Load width data into A
  CP 255                  ; If width data is 255 (i.e. we are drawing an
                          ; object)...
  JR Z,36942              ; ...then jump ahead to 36942
  INC HL                  ; Load height data into E...
  LD E,(HL)               ; ...
  INC E                   ; Increase height by one
  POP BC                  ; Restore BC (x- and y-coordinates of top-left
                          ; corner)
  LD A,112                ; Set window / menu parameter to 112 (window, not
                          ; menu) in window drawing routine...
  LD (37084),A            ; ...
  LD A,C                  ; Load x-coordinate...
  LD (41954),A            ; ...into this window's "left position" entry in the
                          ; window data table at 41874
  ADD A,3                 ; Set window's "right position"...
  LD (41955),A            ; ...as three characters to the right (i.e. width of
                          ; window is 4 characters)
  LD A,B                  ; Load y-coordinate...
  LD (41956),A            ; ...into this window's "top position" entry in the
                          ; window data table at 41874
  ADD A,E                 ; Set window's "right position"...
  LD (41957),A            ; ...as top position plus height data
  LD A,(25393)            ; Load Magic Knight's current attribute into A...
  LD (41959),A            ; ...and set window's border attribute to match
  CALL 36993              ; Draw the window
  RES 1,(IY+65)           ; Reset "Disable In-Game Glow" flag
  RET                     ; Return

; Draw a Menu Window
;
; Used by the routines at 26747, 31153, 31370, 31636, 32655, 33663, 34914,
; 35141, 35293 and 38725. Input:  A  Index of window to draw
  EX AF,AF'               ; Swap AF register (A holds index of window to draw)
  LD A,105                ; Load the value 105 into 37083 (i.e. set "Draw Menu
                          ; (Hand) Cursor" 'flag' to true)...
  LD (37084),A            ; ...
  JR 36993                ; Draw the window

; Draw a Window
;
; Used by the routines at 26747, 26788, 28092, 29800, 29880, 30540, 30602,
; 31370, 32035, 32876, 33180, 34350, 34768, 34914, 35101, 35141, 37654 and
; 38749. Input:  A  Index of window to draw (e.g. 14 for "PRESS SPACE OR FIRE
; TO CONTINUE" window)
  EX AF,AF'               ; Switch AF and AF'
  LD A,111                ; Reset "Draw Hand Menu Cursor" Flag (later in this
                          ; routine)...
  LD (37084),A            ; ...
; This entry point is used by the routines at 36919 and 36979.
  SET 1,(IY+65)           ; Set "Disable In-Game Glow" flag
  EX AF,AF'               ; Restore original AF (with A being index of window)
  LD (37655),A            ; Set this index as the Current Window index
  LD L,A                  ; Load HL with A value (index of required window,
                          ; e.g. 14 for "PRESS SPACE OR FIRE TO CONTINUE"
                          ; window)...
  LD H,0                  ; ...
  ADD HL,HL               ; Multiply index by eight (as each window's data
                          ; takes up eight bytes in table at 41874)...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  LD BC,41874             ; Set BC to start of window data table
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
  LD (36912),A            ; Store for later use
  INC HL                  ; Load A with window's border attribute...
  LD A,(HL)               ; ...
  EX AF,AF'               ; Exchange AF and AF'
  INC HL                  ; Load A with starting y-coordinate of hand cursor...
  LD A,(HL)               ; ...
  LD (23489),A            ; Store for later use
  INC HL                  ; Load A with window's content attribute...
  LD A,(HL)               ; ...
  LD (23477),A            ; Store for later use
  EX AF,AF'               ; Exchange AF and AF' (restoring border attribute to
                          ; A and putting background colour in A')
  CALL 37147              ; Draw window frame
  LD HL,23493             ; Point HL at previously stored values
  INC (HL)                ; Increase top-left x-coordinate
  INC HL                  ; Increase top-left y-coordinate...
  INC (HL)                ; ...
  INC HL                  ; Decrease bottom-right x-coordinate...
  DEC (HL)                ; ...
  INC HL                  ; Decrease bottom-right y-coordinate...
  DEC (HL)                ; ...
  LD A,(23477)            ; Load window background attribute into A
  LD (38250),A            ; Load this attribute into instruction in routine at
                          ; 38242 that sets attribute of window contents
  LD (23695),A            ; Update system variable ATTR T with window
                          ; background attribute
  CALL 38242              ; Fill the interior of the window with its specified
                          ; attribute (i.e. background colour and colour of
                          ; text within)
  CALL 38417              ; Blank the interior of the window (bitmap area)
  LD HL,23493             ; Load x-coordinate of left of interior of window
                          ; into C...
  LD C,(HL)               ; ...
  INC HL                  ; Load y-coordinate of top of interior of window into
                          ; B...
  LD B,(HL)               ; ...
  CALL 36551              ; Move virtual cursor (bitmap) to top-left of
                          ; interior or window
  PUSH HL                 ; Store HL
; The operand of the instruction at 37083 represents the "Draw Hand Menu
; Cursor" Flag. This is modified by the instructions at 36945, 36982 and 36990.
  LD A,0                  ; Load A with "Draw Hand Menu Cursor" Flag
  CP 105                  ; If value is not 105...
  JP NZ,37138             ; ...then jump to 37138 (i.e. don't draw the hand
                          ; cursor)
; Window is a menu (105)
  LD BC,(23493)           ; Load B with y-coordinate of top edge and C with
                          ; x-coordinate of left edge
  INC C                   ; Increase x-coordinate by one
  LD A,(23489)            ; Load A with starting y-coordinate of hand cursor
  ADD A,B                 ; Add y-coordinate of top of area to this...
  LD B,A                  ; ...and place back into B
  PUSH BC                 ; Store Coordinates for later
  CALL 36551              ; Move virtual cursor (bitmap) to coordinates in BC
  LD DE,54701             ; Load DE with pointer to "menu hand" graphic
  LD B,8                  ; Loop over 8 pixel rows (drawing upper half of
                          ; hand):
  LD A,(DE)               ; Load a bitmap byte from hand graphic
  LD (HL),A               ; Place bitmap byte at virtual cursor (bitmap)
                          ; location (i.e. draw it to screen)
  INC DE                  ; Advance DE
  INC L                   ; Advance L (i.e. move right one character as hand
                          ; graphic is 2-by-2 characters)
  LD A,(DE)               ; Load a bitmap byte from hand graphic
  LD (HL),A               ; Place bitmap byte at virtual cursor (bitmap)
                          ; location (i.e. draw it to screen)
  DEC L                   ; Move virtual cursor (bitmap) left one character
                          ; again
  INC DE                  ; Advance DE
  INC H                   ; Advance H (i.e. move down one pixel row, or 256
                          ; bytes)
  DJNZ 37109              ; Repeat loop to draw next row
  POP BC                  ; Recover coordinates
  INC B                   ; Increase y-coordinate as we are now drawing lower
                          ; half of hand
  CALL 36551              ; Move virtual cursor (bitmap) to coordinates in BC
  LD B,8                  ; Loop over 8 pixel rows (drawing lower half of
                          ; hand):
  LD A,(DE)               ; Load a bitmap byte from hand graphic
  LD (HL),A               ; Place bitmap byte at virtual cursor (bitmap)
                          ; location (i.e. draw it to screen)
  INC DE                  ; Advance DE
  INC L                   ; Advance L (i.e. move right one character as hand
                          ; graphic is 2-by-2 characters)
  LD A,(DE)               ; Load a bitmap byte from hand graphic
  LD (HL),A               ; Place bitmap byte at virtual cursor (bitmap)
                          ; location (i.e. draw it to screen)
  DEC L                   ; Move virtual cursor (bitmap) left one character
                          ; again
  INC DE                  ; Advance DE
  INC H                   ; Advance H (i.e. move down one pixel row, or 256
                          ; bytes)
  DJNZ 37127              ; Repeat loop to draw next row
  XOR A                   ; Set A to zero
  LD (23475),A            ; Set hand cursor's current y-coordinate to zero
                          ; (i.e. defaults to top of its movement range within
                          ; current window)
  POP HL                  ; Restore HL
  LD (36488),HL           ; Set memory location to start printing character in
                          ; character printing routine
  RET                     ; Return

; Draw a Window Frame
;
; Used by the routine at 36987. Input:  A  Window border attribute A'  Window
; background colour
  LD (23695),A            ; Store border attribute in system variable ATTR T
  LD A,(23493)            ; Load A with x-coordinate of left of window
  LD C,A                  ; Copy into C
  LD A,(23495)            ; Load A with x-coordinate of right of window
  SUB C                   ; Get distance between left and right coordinates
  DEC A                   ; Subtract 1 to get width of window top-edge (not
                          ; including corner pieces)
  LD C,A                  ; Transfer this to BC...
  LD B,0                  ; ...
  PUSH BC                 ; Store BC on stack
  LD BC,(23493)           ; Load B with y-coordinate of top edge and C with
                          ; x-coordinate of left edge
  INC C                   ; Increase C by one (as top edge strictly starts one
                          ; to the right of this x-coordinate - the left-most
                          ; is actually a corner piece, not an edge)
  CALL 36551              ; Set position of virtual cursor for drawing
  POP HL                  ; Put width of top edge piece into HL...
  PUSH HL                 ; ...but retain it on stack also
  CALL 36908              ; Draw the top edge of the window
  LD A,(36912)            ; Get previously drawn window component character
                          ; (i.e. top edge)...
  INC A                   ; ...and increase to obtain next one (i.e. bottom
                          ; edge)
  LD (36912),A            ; Place this new character into the drawing routine
  LD A,(23493)            ; Load A with x-coordinate of left of window
  LD C,A                  ; Copy into C
  LD A,(23496)            ; Load A with y-coordinate of bottom of window
  LD B,A                  ; Copy into B
  INC C                   ; Increase C by one (as bottom edge strictly starts
                          ; one to the right of this x-coordinate - the
                          ; left-most is actually a corner piece, not an edge)
  CALL 36551              ; Set position of virtual cursor for drawing
  POP HL                  ; Put width of bottom edge into HL...
  CALL 36908              ; Draw the bottom edge of the window
  LD A,(36912)            ; Get previously drawn window component character
                          ; (i.e. bottom edge)...
  INC A                   ; ...and increase to obtain next one (i.e. left edge)
  LD (36912),A            ; Place this new character into the drawing routine
  LD A,(23494)            ; Load y-coordinate of top of window into A
  LD B,A                  ; Copy into B
  LD A,(23496)            ; Load y-coordinate of bottom of window into A
  SUB B                   ; Subtract B...
  DEC A                   ; ...and decrease by one to get length of left-edge
                          ; (not including corner pieces)
  PUSH AF                 ; Store AF (A contains length of left / right edges)
  LD E,A                  ; Store length in E
  LD BC,(23493)           ; Load B with y-coordinate of top edge and C with
                          ; x-coordinate of left edge
  ADD A,B                 ; Add to get starting point of left edge
  LD B,A                  ; Load into B
  PUSH DE                 ; Store DE
  CALL 36551              ; Set position of virtual cursor for drawing
  LD A,(36912)            ; Get character to draw
  CALL 36475              ; Draw character
  POP DE                  ; Restore DE (length of edge in E)
  LD A,(23495)            ; Load x-coordinate of right edge of window into A
  LD C,A                  ; Copy to C
  LD A,(23494)            ; Load y-coordinate of top edge of window into A
  ADD A,E                 ; Add to E to give y-coordinate of bottom of edge
  LD B,A                  ; Copy to B
  CALL 36551              ; Set position of virtual cursor for drawing
  LD A,(36912)            ; Get character previously drawn (left edge)...
  INC A                   ; ...and increase to give right edge
  CALL 36475              ; Draw character
  POP AF                  ; Restore AF  (A contains length of left / right
                          ; edges)
  DEC A                   ; Decrease A by one as we have drawn one character of
                          ; both left and right edges
  JP NZ,37215             ; If there is still some left and right edge to be
                          ; drawn, loop back
; edges of window have been drawn
  LD A,(23495)            ; Load x-coordinate of right edge into A
  LD C,A                  ; Copy to C
  LD A,(23494)            ; Load y-coordinate of top edge into A
  LD B,A                  ; Copy to B
  CALL 36551              ; Set position of virtual cursor for drawing
  LD A,(36912)            ; Get character previously STORED (left edge)...
  INC A                   ; ...and increase twice to get top-right corner
                          ; piece...
  INC A                   ; ...
  LD (36912),A            ; Update drawing routine with this character
  CALL 36475              ; Draw character
  LD BC,(23495)           ; Load B with y-coordinate of bottom edge and C with
                          ; x-coordinate of right edge
  CALL 36551              ; Set position of virtual cursor for drawing
  LD A,(36912)            ; Get character previously stored (top-right
                          ; corner)...
  INC A                   ; ...and increase to get bottom-right corner piece
  LD (36912),A            ; Place this character back into drawing routine
  CALL 36475              ; Draw character
  LD A,(23493)            ; Load x-coordinate of left edge into A
  LD C,A                  ; Copy into C
  LD A,(23496)            ; Load y-coordinate of bottom edge into A
  LD B,A                  ; Copy into B
  CALL 36551              ; Set position of virtual cursor for drawing
  LD A,(36912)            ; Get character previously stored (bottom-right
                          ; corner)...
  INC A                   ; ...and increase to get bottom-left corner piece
  LD (36912),A            ; Place this character back into drawing routine
  CALL 36475              ; Draw character
  LD BC,(23493)           ; Load B with y-coordinate of top edge and C with
                          ; x-coordinate of left edge
  CALL 36551              ; Set position of virtual cursor for drawing
  LD A,(36912)            ; Get character previously stored (bottom-left
                          ; corner)...
  INC A                   ; ...and increase to get top-left corner piece
  CALL 36475              ; Draw character
  RET                     ; Return

; Process Keyboard / Joystick Input on a Menu
;
; Used by the routines at 26673, 31153, 31370, 31636, 32655, 33663, 34914,
; 35141, 35293 and 38725. Output: A  ASCII code of letter shortcut that has
; been selected on menu
  LD A,(37084)            ; Check whether to draw hand cursor on menu...
  CP 105                  ; ...and if not...
  RET NZ                  ; ...return
  LD A,(23493)            ; Load x-coordinate of current window's top-left
                          ; corner into A
  INC A                   ; Increase by one character...
  LD (23490),A            ; ...and store for later use
  LD A,(23489)            ; Load starting y-coordinate of hand cursor into A...
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
  LD A,(23489)            ; Load A with initial y-coordinate of hand cursor
                          ; relative to current window...
  SUB B                   ; ...subtract B...
  NEG                     ; ...and negate to give vertical distance available
                          ; to hand cursor to move
  ADD A,A                 ; Multiply this by eight to convert from chars to
                          ; pixels...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD (23471),A            ; ...and store at 23471
  CALL 37571              ; Apply FLASH attribute to menu letter shortcut next
                          ; to hand menu cursor
; This entry point is used by the routines at 37497 and 37523.
  XOR A                   ; Set A to zero
  LD (23560),A            ; Clear last pressed key
  HALT                    ; Wait for interrupt / reset
  CALL 37876              ; Capture keyboard input, or jump to joystick reading
                          ; routine
  BIT 2,A                 ; If "up" pressed then...
  JP NZ,37497             ; ...jump to routine to move Hand Cursor up and
                          ; update flashing menu shortcut
  BIT 3,A                 ; If "down" pressed then...
  JP NZ,37523             ; ...jump to routine to move Hand Cursor down and
                          ; update flashing menu shortcut
  BIT 4,A                 ; If "fire" pressed then...
  JP NZ,37552             ; ...jump to routine to load A with ASCII code of
                          ; shortcut for selected item in menu
  LD A,(23560)            ; Load last pressed key (system variable) into A...
  OR A                    ; ...and if this is zero (i.e. no key pressed)...
  JR Z,37396              ; ...loop back to 37396
  LD (37457),A            ; Store pressed key further on in this routine
  LD A,(23491)            ; Load A with y-coordinate of top of hand cursor
                          ; (pixels)...
  CALL 30123              ; ...and divide by eight to get top of cursor in
                          ; characters
  INC A                   ; Add one to this
  LD B,A                  ; Copy into B
  LD A,(23493)            ; Load A with x-coordinate of left edge of current
                          ; window (characters)
  LD C,A                  ; Copy into C
  LD A,(23492)            ; Load A with y-coordinate of bottom of window
                          ; (including frame) (pixels)
  CALL 30123              ; Divide by eight to get coordinate in characters...
  INC A                   ; ...and add one
  EX AF,AF'               ; Switch A register
  PUSH BC                 ; Store B and C
  CALL 36551              ; Move Virtual Bitmap Cursor to Display File address
                          ; for coordinates (C,B)
  CALL 37613              ; Load ASCII code of character in Display File
                          ; address stored at 36488 into A (i.e. letter
                          ; shortcut for command at current y-coordinate)
  POP BC                  ; Restore coordinates to BC
; The operand of the instruction at 37456 represents the index of the key that
; was pressed. This is modified by the instruction at 37425.
  CP 0                    ; If last-pressed key matches this letter shortcut...
  JR Z,37468              ; ...then jump to end of routine
  INC B                   ; ...else increase y-coordinate by one (i.e. move
                          ; onto next row of menu)
  EX AF,AF'               ; Switch A register...
  CP B                    ; ...and if current y-coordinate is less than this
                          ; (i.e. we haven't yet reached the last command in
                          ; this window)...
  JR NZ,37447             ; ...then loop back to 37447 for next row of text in
                          ; window
  JP 37396                ; Repeat process for next key-press
  CALL 37472              ; Wait for keyboard to be released
  RET                     ; Return

; Wait for Keyboard to be Released
;
; Used by the routines at 26835, 27176, 37333 and 38749.
  PUSH AF                 ; Store AF
  LD A,(23556)            ; Read first byte of second keyboard map (system
                          ; variable)...
  CP 255                  ; ...and if this is not 255 (i.e. not marked as
                          ; "free")...
  JR NZ,37473             ; ...loop back
  XOR A                   ; Set last key pressed to NULL...
  LD (23560),A            ; ...
  POP AF                  ; Restore AF
  RET                     ; Return

; Wait for Fire Button / Key to be Released
;
; Used by the routines at 27176, 37552 and 38749.
  PUSH AF                 ; Store AF
  HALT                    ; Wait for interrupt
  CALL 37876              ; Capture keyboard / joystick input into A
  BIT 4,A                 ; If fire button / key pressed...
  JR NZ,37487             ; ...loop back
  POP AF                  ; Restore AF
  RET                     ; Return

; Move Hand Cursor Up and Update Flashing Menu Shortcut
;
; Used by the routine at 37333.
  CALL 37566              ; Remove FLASH attribute from menu letter shortcut
                          ; next to hand menu cursor
  LD A,(23475)            ; Load menu hand cursor's current y-coordinate into A
  OR A                    ; If coordinate is zero...
  JR Z,37517              ; ...then skip ahead to end of this routine
  DEC A                   ; Decrease cursor's y-coordinate by two...
  DEC A                   ; ...
  LD (23475),A            ; Place new coordinate back into memory
  CALL 38296              ; Scroll Hand Cursor up a unit
  CALL 38296              ; Scroll Hand Cursor up a unit
  CALL 37571              ; Apply FLASH attribute to menu letter shortcut next
                          ; to hand menu cursor
  JP 37396                ; Jump back to input processing routine

; Move Hand Cursor Down and Update Flashing Menu Shortcut
;
; Used by the routine at 37333.
  CALL 37566              ; Remove FLASH attribute from menu letter shortcut
                          ; next to hand menu cursor
  LD A,(23475)            ; Load menu hand cursor's current y-coordinate into A
  LD HL,23471             ; Point HL at height available to hand cursor to move
                          ; down...
  CP (HL)                 ; ...and if these are equal (i.e. hand cursor is as
                          ; far down as it can go)...
  JR Z,37546              ; ...then skip ahead to end of this routine
  INC A                   ; Increase cursor's y-coordinate by two...
  INC A                   ; ...
  LD (23475),A            ; Place new coordinate back into memory
  CALL 38356              ; Scroll Hand Cursor down a unit
  CALL 38356              ; Scroll Hand Cursor down a unit
  CALL 37571              ; Apply FLASH attribute to menu letter shortcut next
                          ; to hand menu cursor
  JP 37396                ; Jump back to input processing routine

; Load A with ASCII Code of Shortcut for Selected Item in Menu
;
; Used by the routine at 37333. Output: A  ASCII code of letter shortcut that
; has been selected on menu
  CALL 37486              ; Wait for fire button / key to be released
  LD BC,(23472)           ; Load y-coordinate of Hand Cursor's finger and
                          ; x-coordinate of left edge of interior of window
                          ; into B and C respectively
  CALL 36551              ; Move Virtual Bitmap Cursor to Display File address
                          ; for coordinates x=C, y=B
  CALL 37613              ; Load ASCII code of character in Display File
                          ; address stored at 36488 into A
  RET                     ; Return

; Remove FLASH Attribute from Menu Letter Shortcut Next to Hand Menu Cursor
;
; Used by the routines at 37497 and 37523.
  LD HL,32742             ; Load HL with opcode for "AND 127" (remove FLASH
                          ; attribute)
  JR 37574                ; Remove FLASH attribute on menu letter shortcut next
                          ; to hand menu cursor

; Apply FLASH Attribute to Menu Letter Shortcut Next to Hand Menu Cursor
;
; Used by the routines at 37333, 37497 and 37523.
  LD HL,33014             ; Load HL with opcode for "OR 128" (apply FLASH
                          ; attribute)
; This entry point is used by the routine at 37566.
  LD (37609),HL           ; Modify attribute modification code below with
                          ; opcode stored in HL
  LD A,(23493)            ; Load A with x-coordinate of left edge of current
                          ; window...
  LD C,A                  ; ...and copy into C
  LD A,(23475)            ; Load hand cursor's current y-coordinate into A
  ADD A,5                 ; Add five (as the "finger" of the cursor naturally
                          ; points five pixels below the cursor's actual
                          ; position)
  CALL 30123              ; Divide this new y-coordinate by eight to get
                          ; y-coordinate in characters
  LD B,A                  ; Load this y-coordinate into B
  LD A,(23489)            ; Load initial y-coordinate of top of hand cursor
                          ; relative to current window, into A
  ADD A,B                 ; Add this to y-coordinate of "finger"
  LD B,A                  ; Load this into B, so that B now contains
                          ; y-coordinate of "finger" relative to top of window
                          ; (characters)
  LD A,(23494)            ; Load y-coordinate of top edge of current window
                          ; into A
  ADD A,B                 ; Add...
  INC A                   ; ...then add one (for window frame at top) so we now
                          ; have y-coordinate of "finger" relative to screen
  LD B,A                  ; Load into B
  LD (23472),BC           ; Store coordinates at 23472
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  LD A,(HL)               ; Load current attribute at this location into A
; The instruction at 37609 represents the modification to make to the attribute
; value (either AND 127 which removes FLASH, or OR 128 which applies FLASH).
; This is modified by the instruction at 37574.
  NOP                     ; Update FLASH Flag as required...
  NOP                     ; ...
  LD (HL),A               ; Load modified attribute back into Attribute File at
                          ; coordinates X=C, Y=B
  RET                     ; Return

; Load ASCII Code of Character in Display File Address Stored at 36488 into A
;
; Used by the routines at 37333 and 37552. Output: A  ASCII code of character
  LD HL,64252             ; Point HL at start of letter A graphic in character
                          ; set
  EX DE,HL                ; Swap into DE
  LD B,26                 ; Load B with 26
  PUSH BC                 ; Store BC
  LD HL,(36488)           ; Load (video) memory location to start printing
                          ; character into HL
  LD BC,2048              ; Load B with 8 and C with zero
  LD A,(DE)               ; Read a byte of the character's graphic data...
  CP (HL)                 ; ...compare to what is already displayed in Display
                          ; File at to-print location...
  JR Z,37631              ; ...and if they're the same, jump to 37631
  INC C                   ; Else increase C
  INC H                   ; Move down one pixel row (advance by 256 bytes) in
                          ; Display File
  INC DE                  ; Advance to next pixel row of character of interest
  DJNZ 37626              ; Loop back for next row
  LD A,C                  ; Copy C into A...
  OR A                    ; ...and if it is zero (i.e. current character in
                          ; character set is same as character at to-print
                          ; location in Display File)...
  JR Z,37645              ; ...jump ahead to 37645
  POP BC                  ; Restore BC
  DJNZ 37619              ; Loop back for next character
  LD A,48                 ; Load A with 48
  RET                     ; Return
  POP BC                  ; Character in Display File at to-print location is
                          ; same as character with index (26 - B)...
  LD A,B                  ; ...so load B into A...
  SUB 26                  ; ...subtract 26...
  NEG                     ; ...and negate to get index of character in A (e.g.
                          ; A=0, B=1, C=2 ...)
  ADD A,65                ; Add 65 to get ASCII index
  RET                     ; Return

; Print or Update Command Summary Window at Bottom of Screen
;
; Used by the routines at 30222, 30602, 31370, 32035, 32194, 32655, 33036,
; 33312, 33593, 33663, 34914 and 35141. The operand of the instruction at 37654
; represents the index of the window being drawn. This is modified by the
; instructions at 36998 and 37699.
  LD A,0                  ; Load A with the index of the window being drawn
  PUSH AF                 ; Store AF
  LD HL,(36488)           ; Store current (video) memory location to start
                          ; printing character...
  PUSH HL                 ; ...
  LD HL,(23493)           ; Store x- & y-coordinates of top-left of currently
                          ; drawn window...
  PUSH HL                 ; ...
  LD HL,(23494)           ; Store y- & x-coordinates of top-right of currently
                          ; drawn window...
  PUSH HL                 ; ...
  LD A,1                  ; Draw window 1 (Command Summary Window at bottom of
                          ; screen)...
  CALL 36987              ; ...
  LD HL,43271             ; Point HL to ("COMMAND") text...
  CALL 36725              ; ...and print text
  LD HL,(36488)           ; Copy current (video) memory location to start
                          ; printing character into memory at 65530...
  LD (65530),HL           ; ...
  POP HL                  ; Restore y- & x-coordinates of top-right of
                          ; currently drawn window...
  LD (23494),HL           ; ...
  POP HL                  ; Restore x- & y-coordinates of top-left of currently
                          ; drawn window...
  LD (23493),HL           ; ...
  POP HL                  ; Restore current (video) memory location to start
                          ; printing character...
  LD (36488),HL           ; ...
  POP AF                  ; Restore AF (A = index of window being drawn)...
  LD (37655),A            ; ...and store at 37654
  RET                     ; Return

; Move Virtual Text Cursor to Beginning of Character Row Below its Current
; Position
;
; Used by the routines at 28344, 36800 and 36810.
  LD HL,(36488)           ; Load "memory location to start printing character"
                          ; in character printing routine into HL
  LD A,L                  ; Add 32 to LSB (i.e. move down a character row)...
  ADD A,32                ; ...
  JP C,37735              ; If overflows from A register (crossing between
                          ; successive thirds of the bitmap display) then jump
                          ; to 37735
  AND 224                 ; Clear bits for 1, 2, 4, 8 and 16 (i.e. set to zero)
                          ; to set cursor to beginning of new character row
  LD L,A                  ; Place modified value back into HL...
  LD (36488),HL           ; ...and update stored value accordingly
  RET                     ; Return

; Move Virtual Text Cursor to Beginning of Character Row Two Rows Below its
; Current Position
;
; Used by the routine at 28561.
  LD HL,(36488)           ; Load "memory location to start printing character"
                          ; in character printing routine into HL
  LD A,L                  ; Add 64 to LSB (i.e. move down two rows)...
  ADD A,64                ; ...
  JP C,37735              ; If overflows from A register (crossing between
                          ; successive thirds of the bitmap display) then jump
                          ; to 37735
  AND 224                 ; Clear bits for 1, 2, 4, 8 and 16 (i.e. set to zero)
                          ; to set cursor to beginning of new character row
  LD L,A                  ; Place modified value back into HL...
  LD (36488),HL           ; ...and update stored value accordingly
  RET                     ; Return

; Move Virtual Text Cursor from One Third to Another in Display File
;
; Used by the routines at 37703 and 37719.
  AND 224                 ; Clear bits for 1, 2, 4, 8 and 16 (i.e. set to zero)
                          ; to set cursor to beginning of new character row
  LD L,A                  ; Put value back into L
  LD A,H                  ; Get value of H
  ADD A,8                 ; Increase by 8 (as we're moving one text row, or
                          ; EIGHT pixel rows down)
  LD H,A                  ; Place modified value back into HL...
  LD (36488),HL           ; ...and update stored value accordingly
  RET                     ; Return

; Convert Numeric Value BC to ASCII String at Location HL
;
; Used by the routines at 36647 and 36675. Input:  BC  A numeric value HL
; Points to location to hold a five-character string, e.g. 23497)
  PUSH DE                 ; Store DE
  LD DE,54743             ; Point DE at table of powers of ten
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
  JR NC,37763             ; If carry flag was not set then loop back to 37763
  ADD HL,BC               ; Add power of ten back to HL
  EX (SP),HL              ; Swap value on top of stack (now remaining value)
                          ; with HL (now location to hold string)
  LD (HL),A               ; Store ASCII code in table at 23497 and advance HL
                          ; to next slot...
  INC HL                  ; ...
  EX (SP),HL              ; Swap value on top of stack (pointer to entry in
                          ; table of ASCII characters at 23497) with HL (now
                          ; remaining value)
  DEC C                   ; Decrease C to check if last power of ten (i.e. 1)
                          ; has been reached...
  JR NZ,37755             ; ...and if not, then loop back to 37755 for next
                          ; power of ten
  POP HL                  ; Restore HL
  POP HL                  ; Restore HL
  POP BC                  ; Restore BC
  POP DE                  ; Restore DE
  RET                     ; Return

; Clear Top Two Thirds of Display File and Draw Two Rows of [SPACE] Characters
; Below (UNUSED)
  LD HL,20480             ; Point HL two thirds of the way down Display File
  LD (36488),HL           ; Store this address at 36488
  LD HL,64                ; Set width to 64
  LD A,32                 ; Set window border style character to 32 (a SPACE
                          ; character)...
  LD (36912),A            ; ...
  CALL 36908              ; Draw upper edge of frame of a window
  LD HL,0                 ; Load zero (all bits reset) into HL
  LD BC,8                 ; Load 0 into B and 8 into C to repeat outer loop 8
                          ; times
  DI                      ; Disable interrupts
  LD (37837),SP           ; Store stack pointer at 37837
  LD SP,20480             ; Point stack pointer two thirds of the way down
                          ; Display File
  JP 37830                ; Jump into clearing routine

; Clear Display File
;
; Used by the routines at 26747 and 26906.
  LD HL,0                 ; Load zero (all bits reset) into HL
  LD BC,12                ; Load 0 into B and 12 into C to repeat outer loop 12
                          ; times
  DI                      ; Disable interrupts
  LD (37837),SP           ; Store stack pointer at 37837
  LD SP,22528             ; Point stack pointer at start of Attribute File
; This entry point is used by the routine at 37782.
  PUSH HL                 ; Decrease current stack pointer position by two and
                          ; load two zeroes into it
  DJNZ 37830              ; As B is already zero, this will "decrease" B to 255
                          ; and thus run through loop 256 times
  DEC C                   ; Decrease C...
  JR NZ,37830             ; ...and repeat if C is still greater than zero
; The operand of the instruction at 37836 represents the original value in SP
; stored previously. This is modified by the instructions at 37806 and 37823.
  LD SP,0                 ; Restore stack pointer to original value
  EI                      ; Enable interrupts
  RET                     ; Return

; Set Entire Attribute File to Colour Housed in ATTR T System Variable
;
; Used by the routines at 26747 and 26906.
  LD HL,22528             ; Load HL with start of Attribute File
  LD DE,22529             ; Load DE with next byte up
  LD BC,767               ; Load BC with length of data to copy (767 bytes =
                          ; length of Attribute File minus one)
  LD A,(23695)            ; Load system variable ATTR T into A
  LD (HL),A               ; Load memory at HL with this attribute...
  LDIR                    ; ...and repeat 767 times
  RET                     ; Return

; Change Input Device (Keyboard / Joysticks)
;
; Used by the routines at 26673 and 26906. Input:  A  ASCII code of selected
; menu option from "A" to "E" (65 - 69)
  SUB 65                  ; Subtract 65 (ASCII code for "A") to get index of
                          ; menu item selected
  ADD A,A                 ; Double the value
  LD H,0                  ; Load into HL...
  LD L,A                  ; ...
  LD BC,54733             ; Point BC at start table of start addresses of input
                          ; device reading routines
  ADD HL,BC               ; Add double selected item index to BC in HL (HL now
                          ; points to entry for selected input device)
  LD A,(HL)               ; Load address into HL...
  INC HL                  ; ...
  LD H,(HL)               ; ...
  LD L,A                  ; ...
  LD (37882),HL           ; Place in routine at 37882
  XOR A                   ; Reset A to zero
  RET                     ; Return

; Capture Keyboard Input, or Jump to Joystick Reading Routine
;
; Used by the routines at 27176, 37333, 37486 and 38749. Output: A  Stored
; key-press (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD HL,23485             ; Set stored keyboard / joystick action to zero...
  LD (HL),0               ; ...
; The operand of the instruction at 37881 represents the address of the
; appropriate keyboard / joystick reading routine. This is modified by the
; instruction at 37857.
  JP 37884                ; Jump to keyboard / joystick reading routine
  LD C,254                ; IN 65022 reads the half row A to G...
  LD B,253                ; ...
  IN A,(C)                ; Read keyboard
  BIT 0,A                 ; "A" key pressed so...
  CALL Z,38066            ; ...store an UP input from control device
  INC B                   ; IN 65278 reads the half row CAPS SHIFT to V
  IN A,(C)                ; Read keyboard
  BIT 1,A                 ; "Z" key pressed so...
  CALL Z,38069            ; ...store a DOWN input from control device
  LD B,127                ; IN 32766 reads the half row SPACE to B
  IN A,(C)                ; Read keyboard
  BIT 3,A                 ; "N" key pressed so...
  CALL Z,38060            ; ...store a LEFT input from control device
  IN A,(C)                ; Read keyboard
  BIT 2,A                 ; "M" key pressed so...
  CALL Z,38063            ; ...store a RIGHT input from control device
  IN A,(C)                ; Read keyboard
  BIT 0,A                 ; SPACE bar pressed so...
  CALL Z,38072            ; ...store a FIRE input from control device
  LD A,(HL)               ; Return stored key-press in A
  RET                     ; Return

; Capture Kempston Joystick Input Input:  HL  23485 (store for currently active
; keyboard press / joystick action) Output: A  Stored key-press (bits: 0=LEFT,
; 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD C,31                 ; Load 31 (Kempston port number) into A
  IN A,(C)                ; Read byte from port 31 (i.e. read state of
                          ; joystick)
  BIT 0,A                 ; If joystick moved right...
  CALL NZ,38063           ; ...store a RIGHT input from control device
  BIT 1,A                 ; If joystick moved left...
  CALL NZ,38060           ; ...store a LEFT input from control device
  BIT 2,A                 ; If joystick moved down...
  CALL NZ,38069           ; ...store a DOWN input from control device
  BIT 3,A                 ; If joystick moved up...
  CALL NZ,38066           ; ...store an UP input from control device
  BIT 4,A                 ; If fire button pressed...
  CALL NZ,38072           ; ...store a FIRE input from control device
  LD A,(HL)               ; Return stored joystick movement in A
  RET                     ; Return

; Capture Fuller Joystick Input Input:  HL  23485 (store for currently active
; keyboard press / joystick action) Output: A  Stored key-press (bits: 0=LEFT,
; 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD C,127                ; Load 127 (Fuller port number) into A
  IN A,(C)                ; Read byte from port 127 (i.e. read state of
                          ; joystick)
  BIT 2,A                 ; If joystick moved left...
  CALL Z,38060            ; ...store a LEFT input from control device
  BIT 3,A                 ; If joystick moved right...
  CALL Z,38063            ; ...store a RIGHT input from control device
  BIT 1,A                 ; If joystick moved down...
  CALL Z,38069            ; ...store a DOWN input from control device
  BIT 0,A                 ; If joystick moved up...
  CALL Z,38066            ; ...store an UP input from control device
  BIT 7,A                 ; If fire button pressed...
  CALL Z,38072            ; ...store a FIRE input from control device
  LD A,(HL)               ; Return stored joystick movement in A
  RET                     ; Return

; Capture Cursor Joystick Input Input:  HL  23485 (store for currently active
; keyboard press / joystick action) Output: A  Stored key-press (bits: 0=LEFT,
; 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD C,254                ; IN 63486 reads the half row 1 to 5...
  LD B,247                ; ...
  IN A,(C)                ; Read keyboard/joystick
  BIT 4,A                 ; If joystick moved left ("5" key pressed)...
  CALL Z,38060            ; ...store a LEFT input from control device
  LD B,239                ; IN 61438 reads the half row O to 6
  IN A,(C)                ; Read keyboard/joystick
  BIT 2,A                 ; If joystick moved right ("8" key pressed)...
  CALL Z,38063            ; ...store a RIGHT input from control device
  BIT 4,A                 ; If joystick moved down ("6" key pressed)...
  CALL Z,38069            ; ...store a DOWN input from control device
  BIT 3,A                 ; If joystick moved up ("7" key pressed)...
  CALL Z,38066            ; ...store an UP input from control device
  BIT 0,A                 ; If fire button pressed ("0" key pressed)...
  CALL Z,38072            ; ...store a FIRE input from control device
  LD A,(HL)               ; Return stored joystick movement in A
  RET                     ; Return

; Capture ZX Interface 2 Joystick 1 Input Input:  HL  23485 (store for
; currently active keyboard press / joystick action) Output: A  Stored
; key-press (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
  LD C,254                ; IN 61438 reads the half row O to 6...
  LD B,239                ; ...
  IN A,(C)                ; ...
  BIT 4,A                 ; If joystick moved left ("6" key pressed)...
  CALL Z,38060            ; ...store a LEFT input from control device
  BIT 3,A                 ; If joystick moved right ("7" key pressed)...
  CALL Z,38063            ; ...store a RIGHT input from control device
  BIT 2,A                 ; If joystick moved down ("8" key pressed)...
  CALL Z,38069            ; ...store a DOWN input from control device
  BIT 1,A                 ; If joystick moved down ("9" key pressed)...
  CALL Z,38066            ; ...store an UP input from control device
  BIT 0,A                 ; If fire button pressed ("0" key pressed)...
  CALL Z,38072            ; ...store a FIRE input from control device
  LD A,(HL)               ; Return stored joystick movement in A
  RET                     ; Return

; Store a LEFT Input from Control Device
;
; Used by the routines at 37876, 37928, 37959, 37990 and 38027. Input:  HL
; 23485 (store for currently active keyboard press / joystick action)
  SET 0,(HL)              ; Set Left Pressed Flag
  RET                     ; Return

; Store a RIGHT Input from Control Device
;
; Used by the routines at 37876, 37928, 37959, 37990 and 38027. Input:  HL
; 23485 (store for currently active keyboard press / joystick action)
  SET 1,(HL)              ; Set Right Pressed Flag
  RET                     ; Return

; Store an UP Input from Control Device
;
; Used by the routines at 37876, 37928, 37959, 37990 and 38027. Input:  HL
; 23485 (store for currently active keyboard press / joystick action)
  SET 2,(HL)              ; Set Up Pressed Flag
  RET                     ; Return

; Store a DOWN Input from Control Device
;
; Used by the routines at 37876, 37928, 37959, 37990 and 38027. Input:  HL
; 23485 (store for currently active keyboard press / joystick action)
  SET 3,(HL)              ; Set Down Pressed Flag
  RET                     ; Return

; Store a FIRE Input from Control Device
;
; Used by the routines at 37876, 37928, 37959, 37990 and 38027. Input:  HL
; 23485 (store for currently active keyboard press / joystick action)
  SET 4,(HL)              ; Set Fire Pressed Flag
  RET                     ; Return

; Set Parameters for and Play Upward Scale Sound
;
; The value of A (set to zero at the start of this routine, or set to 1 before
; jumps from other routines into 38080) is a delay constant that determines the
; speed at which the sound is played. Input:  A  (Entry at 38080 only) Delay
; constant
  XOR A                   ; Set A to 0
  LD B,13                 ; Set B to 13 (DEC C)
  LD H,A                  ; Set HL to 0...
  LD L,A                  ; ...
; This entry point is used by the routines at 38108 and 38116.
  LD (38094),A            ; Modify instruction at 38093 with value of delay
                          ; constant
  LD A,B                  ; Load B into A
  LD (38102),A            ; Set instruction at 38102
  LD (38103),HL           ; Set instructions at 38103 and 38104
  CALL 38212              ; Load A with current border colour
; The operand of the instruction at 38093 represents the value of the delay
; constant. This is modified by the instruction at 38080.
  LD C,0                  ; Load C with delay constant
  OUT (254),A             ; Set border colour, and reset ear/speaker
  XOR 16                  ; Invert ear/speaker bit of A
  LD B,C                  ; Load C (delay constant) into B...
  DJNZ 38100              ; ...and delay
; The instructions at 38102 - 38104 represent the manipulation of the delay
; constant between iterations of this routine. These instructions may decrease
; C by one, increase C by three or do nothing. These instructions are modified
; by the instructions at 38084 and 38087.
  DEC C                   ; Decrease / increase delay constant for next pass,
                          ; increasing / decreasing pitch of tone respectively
  NOP                     ; Do nothing, or increase delay constant
  NOP                     ; Do nothing, or increase delay constant
  JR NZ,38095             ; If delay constant is not zero, then loop back to
                          ; continue playing tone
  RET                     ; Return

; Set Parameters for and Play Downward Scale Sound
;
; Used by the routines at 26747, 31153, 34914 and 35420.
  XOR A                   ; Set parameters...
  LD B,12                 ; ...(INC C)...
  LD H,A                  ; ...
  LD L,A                  ; ...
  INC A                   ; ...
  JR 38080                ; ...and play sound

; Set Parameters for and Play Short Downward Scale Sound
;
; Used by the routines at 35141 and 35293.
  LD A,1                  ; Set parameters...
  LD B,12                 ; ...(INC C)...
  LD H,B                  ; ...
  LD L,B                  ; ...
  JR 38080                ; ...and play sound

; Play Hiss-Type Sound
;
; Used by the routines at 38725 and 38749.
  CALL 38212
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
  JR C,38157
  DEC A
  LD H,A
  DEC A
  JR NZ,38158
  DEC BC
  LD A,B
  OR C
  JR NZ,38133
  RET

; Set Parameters (for Unknown Sound) and Jump to Playing Routine (Unused)
  LD HL,33006             ; Load HL with bytecodes for instruction "XOR 128"
  LD DE,255               ; Load D with 0 and E with 255
  JR 38189                ; Jump into sound playing routine

; Set Parameters (for "Lift has Arrived" Sound) and Jump to Playing Routine
;
; Used by the routines at 33593 and 33663.
  LD HL,8390              ; Load HL with bytecodes for instruction "ADD A,32"
  LD DE,255               ; Load D with 0 and E with 255
  JR 38189                ; Jump into sound playing routine

; Set Parameters (for Cheat Routine Sound) and Play
;
; Used by the routine at 35420.
  LD HL,1222              ; Load HL with bytecodes for instruction "ADD A,4"
  LD DE,0                 ; Load D with 0 and E with 0
; This entry point is used by the routines at 38167 and 38175.
  CALL 38212              ; Load A with current border colour
  LD (38204),HL           ; Set instruction at 38204 to "XOR 128", "ADD A,4" or
                          ; "ADD A,32" depending upon value in HL
  OUT (254),A             ; Set current border colour and reset speaker state
  XOR 16                  ; Flip "speaker" bit
  LD B,E                  ; Copy E into B
  DJNZ 38200              ; Delay for period determined by B
  EX AF,AF'               ; Switch AF and AF'
  LD A,E                  ; Copy E into A
; The instruction at 38204 is modified by the instruction at 38192, resulting
; in different sounds.
  XOR 128                 ; Change E (delay constant)...
  LD E,A                  ; ...
  EX AF,AF'               ; Switch AF and AF' again
  DEC D                   ; Decrease D (initially zero)...
  JR NZ,38195             ; ...and repeat loop (256 times)
  RET                     ; Return

; Get Current Border Colour
;
; Used by the routines at 38075, 38124 and 38183. Output: A  Current border
; colour (0 - 7)
  LD A,(23624)            ; Get border & BASIC cursor area attribute
  RRCA                    ; Clear bits for 1, 2 and 4 to leave (border colour *
                          ; 8) only...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 7                   ; Ensure all other bits are cleared
  RET                     ; Return

; Play "Beep" Sound (as in Moving Through Instructions Windows)
;
; Used by the routine at 26835.
  PUSH AF                 ; Store AF
  PUSH BC                 ; Store BC
  LD B,0                  ; Set B to zero
  XOR A                   ; Set A to zero
  OUT (254),A             ; Reset speaker and border colour to zero
  LD C,100                ; Do nothing for 100 "cycles"...
  DEC C                   ; ...
  JR NZ,38230             ; ...
  XOR 16                  ; Invert bit 4 (Ear / speaker bit)...
  OUT (254),A             ; ...and write to port 254 (inverting state of
                          ; speaker, making a sound)
  DJNZ 38225              ; Decrease B and loop back
  POP BC                  ; Restore BC
  POP AF                  ; Restore AF
  RET                     ; Return

; Fill the Interior of a Drawn Window With its Specified Attribute (i.e.
; Background Colour and Colour of Text Within)
;
; Used by the routine at 36987.
  LD BC,(23493)           ; Load B with y-coordinate of top edge and C with
                          ; x-coordinate of left edge - these will become the
                          ; current x- and y-coordinates of fill area
  CALL 36569              ; Update virtual attribute cursor (memory location
                          ; 23487 and in HL)
; The operand of the instruction at 38249 represents the attribute value with
; which to paint the window. This is modified by the instruction at 37061.
  LD A,0                  ; Load A with attribute to paint with
  LD (HL),A               ; Paint attribute data to Attribute File at current
                          ; virtual cursor (attribute) position
  LD A,(23495)            ; Load A with x-coordinate of right side of area to
                          ; fill
  CP C                    ; Check if left and right edges are at same
                          ; x-coordinate (i.e. zero width)...
  JP Z,38272              ; ... and if so, skip to 38272
  INC C                   ; Increase C
  LD A,C                  ; Copy C into A
  AND 31                  ; Ensure current x-coordinate doesn't exceed 31 (i.e.
                          ; width of screen)
  LD C,A                  ; Place back into C
  LD A,L                  ; Get LSB of Attribute File address (Virtual
                          ; Attribute Cursor location)
  AND 224                 ; Decrease to nearest multiple of 32 (i.e. start of
                          ; character row in Attribute File)
  ADD A,C                 ; Add x-offset (i.e. current x-coordinate, C)
  LD L,A                  ; Update virtual attribute cursor position
  JP 38249                ; Loop back to print next attribute block
  LD A,(23493)            ; Get x-coordinate of left of area to fill
  LD C,A                  ; Store in C
  LD A,(23496)            ; Get y-coordinate of bottom of area to fill
  CP B                    ; Compare with y-coordinate of top of area to fill
  RET Z                   ; If no difference between current y-coordinate and
                          ; y-coordinate of bottom of area to fill then exit
                          ; function and return
  INC B                   ; Move current y-coord down one unit
  LD A,B                  ; Copy current y-coord into A...
  CP 24                   ; ...and ensure it doesn't exceed 24 (i.e. height of
                          ; screen)...
  JP NZ,38290             ; ...if it doesn't then skip ahead...
  LD B,0                  ; ...else set current y-coord to zero (top of screen)
  CALL 36569              ; Update virtual attribute cursor (memory location
                          ; 23487 and in HL)
  JP 38249                ; Loop back to print next attribute block row

; Scroll Hand Cursor Up a Unit
;
; Used by the routine at 37497.
  LD A,(23491)            ; Load y-coordinate of top of hand cursor into A
  LD C,A                  ; Copy into C
  LD DE,26064             ; Point DE at table of Display File addresses of
                          ; starts of each pixel row
  LD H,0                  ; Load y-coordinate into HL...
  LD L,A                  ; ...
  ADD HL,HL               ; Double it
  ADD HL,DE               ; And add as offset to table of Display File
                          ; addresses of starts of each pixel row
  PUSH HL                 ; Transfer value into IX...
  POP IX                  ; ...
  LD A,(23492)            ; Load y-coordinate of bottom of window into A
  SUB C                   ; Subtract y-coordinate of top of hand cursor
  DEC A                   ; Decrease by one, so now holds distance between top
                          ; of hand cursor and bottom of window
  EX AF,AF'               ; Exchange A register
  LD A,(23490)            ; Load x-coordinate of left of interior of window
                          ; (characters) into A
  LD C,A                  ; Copy into BC...
  LD B,0                  ; ...
  EX AF,AF'               ; Switch A register
  EX AF,AF'               ; Switch A register (now holds y-coordinate of top of
                          ; interior of window on first pass)
  INC IX                  ; Advance IX by two bytes...
  INC IX                  ; ...
  LD L,(IX+0)             ; Load HL with Display File address of start of pixel
                          ; row 1...
  LD H,(IX+1)             ; ...
  LD E,(IX+2)             ; Load DE with Display File address of start of pixel
                          ; row 2...
  LD D,(IX+3)             ; ...
  ADD HL,BC               ; Add x-coordinate of left of interior of window to
                          ; Display File address
  EX DE,HL                ; Swap addresses
  ADD HL,BC               ; Add x-coordinate of left of interior of window to
                          ; Display File address
  EX DE,HL                ; Swap addresses back (HL points to upper row and DE
                          ; points to lower row)
  LD A,(DE)               ; Read Display File data from lower row...
  LD (HL),A               ; ...and copy into upper row
  INC DE                  ; Increase DE and HL (as hand cursor is two
                          ; characters wide)...
  INC HL                  ; ...
  LD A,(DE)               ; Read Display File data from lower row...
  LD (HL),A               ; ...and copy into upper row
  EX AF,AF'               ; Swap A register (holds remaining distance between
                          ; top of hand cursor and bottom of window)
  DEC A                   ; Decrease A, as one less pixel row to scroll up
  JR NZ,38324             ; Loop back to 38324 for next pixel row
  RET                     ; Return

; Scroll Hand Cursor Down a Unit
;
; Used by the routine at 37523.
  LD A,(23492)            ; Load y-coordinate of bottom of window (pixels) into
                          ; A
  LD C,A                  ; Copy into C
  LD DE,26064             ; Point DE at table of Display File addresses of
                          ; starts of each pixel row
  LD H,0                  ; Load y-coordinate into HL...
  LD L,A                  ; ...
  ADD HL,HL               ; Double it
  ADD HL,DE               ; And add as offset to table of Display File
                          ; addresses of starts of each pixel row
  PUSH HL                 ; Transfer value into IX...
  POP IX                  ; ...
  LD A,(23491)            ; Load y-coordinate of top of hand cursor (pixels)
                          ; into A
  SUB C                   ; Subtract y-coordinate of bottom of window
  NEG                     ; Negate, so A now holds distance between top of hand
                          ; cursor and bottom of window
  EX AF,AF'               ; Exchange A register
  LD A,(23490)            ; Load x-coordinate of left of interior of window
                          ; (characters) into A
  LD C,A                  ; Copy into BC...
  LD B,0                  ; ...
  EX AF,AF'               ; Switch A register (A now holds distance between top
                          ; of hand cursor and bottom of window)
  EX AF,AF'               ; Switch A register (now holds x-coordinate of left
                          ; of interior of window in characters on first pass)
  DEC IX                  ; Move IX back by two bytes...
  DEC IX                  ; ...
  LD L,(IX+0)             ; Load HL with Display File address of start of pixel
                          ; row 1...
  LD H,(IX+1)             ; ...
  LD E,(IX+2)             ; Load DE with Display File address of start of pixel
                          ; row 2...
  LD D,(IX+3)             ; ...
  ADD HL,BC               ; Add x-coordinate of left of interior of window to
                          ; Display File address
  EX DE,HL                ; Swap addresses
  ADD HL,BC               ; Add x-coordinate of left of interior of window to
                          ; Display File address
  EX DE,HL                ; Swap addresses back (HL points to upper row and DE
                          ; points to lower row)
  LD A,(HL)               ; Read Display File data from upper row...
  LD (DE),A               ; ...and copy into lower row
  INC DE                  ; Increase DE and HL (as hand cursor is two
                          ; characters wide)...
  INC HL                  ; ...
  LD A,(HL)               ; Read Display File data from upper row...
  LD (DE),A               ; ...and copy into lower row
  EX AF,AF'               ; Swap A register (A now holds remaining distance
                          ; between top of hand cursor and bottom of window)
  DEC A                   ; Decrease remaining distance in A
  JR NZ,38385             ; Loop back to 38385 for next pixel row
  RET                     ; Return

; Blank an Area of the Display File
;
; We write zeroes to the Display File in order to blank out a region, for
; example the interior of a window. The top-left and bottom-right coordinates
; of the area to be blanked by this routine are stored at 23493).
  LD BC,(23493)           ; Load B with y-coordinate of top edge and C with
                          ; x-coordinate of left edge
  LD HL,(36488)           ; Load HL with current virtual text cursor
                          ; location...
  PUSH HL                 ; ...and store on the stack
  CALL 36551              ; Set virtual cursor location (bitmap area)
  LD A,(23495)            ; Load A with x-coordinate of right-edge
  SUB C                   ; Subtract x-coordinate of left-edge...
  INC A                   ; ...and add one to obtain width
  LD D,A                  ; Store width in D
  LD A,(23496)            ; Load A with y-coordinate of bottom
  SUB B                   ; Subtract y-coordinate of top-edge...
  INC A                   ; ...and add one to obtain height
  LD E,A                  ; Store height in E
  PUSH DE                 ; Copy width and height...
  POP BC                  ; ...into BC
  PUSH HL                 ; Store (initial) HL on stack
  LD A,B                  ; Copy width into A
  EX AF,AF'               ; Exchange AF register (preserve width)
  PUSH BC                 ; Store width and height on stack
  PUSH HL                 ; Store (current) HL on stack
  XOR A                   ; Set A to zero
  LD B,8                  ; Set B to 8
  LD (HL),A               ; Write zero to current Display File address
  INC H                   ; Move down one pixel row (by adding 256 bytes to
                          ; current Display File address)
  DJNZ 38450              ; Repeat for other 7 pixel rows
  POP HL                  ; Recover previous (current) value of HL (start of
                          ; previous character block)...
  INC HL                  ; ...and increase to obtain next block
  POP BC                  ; Restore width and height...
  DJNZ 38445              ; ...reduce width by one and loop back to clear next
                          ; block (until remaining width = 0)
  POP HL                  ; Recover (initial) value of HL
  DEC C                   ; Reduce remaining height by one...
  JR Z,38481              ; ...and if it is now zero, then exit loop...
  LD A,32                 ; ...else...
  ADD A,L                 ; ...add 32 (screen width) to current Display File
                          ; pointer to move down to next character row...
  LD L,A                  ; ...
  JP NC,38474             ; If moving down a character row is valid (i.e. if
                          ; we're not moving down one row from the bottom row
                          ; of one of the three thirds of the bitmap area,
                          ; which would actually wrap back up to the second
                          ; pixel row of the top character row of the current
                          ; third!) then skip ahead
  LD A,8                  ; We need to move down from the bottom character row
                          ; of one third of the screen to the top character row
                          ; of the third below so...
  ADD A,H                 ; ...increase HL accordingly...
  LD H,A                  ; ...
  EX AF,AF'               ; Swap AF register
  LD B,A                  ; Recover width (stored earlier, at instr. 38444)
                          ; into B
  EX AF,AF'               ; Preserve width again
  PUSH HL                 ; Store current Display File address on stack...
  JP 38445                ; ...and loop back to 38445 to write another row of
                          ; zeroes
  POP HL                  ; Restore virtual bitmap cursor location...
  LD (36488),HL           ; ...and store
  RET                     ; Return

; Set New Random Seed
;
; Used by the routines at 38505 and 38795. Output: A  LSB of new random seed
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

; Load A With a Random Number Less than or Equal to B
;
; Used by the routine at 55349. Input:  B  Cap for random value Output: A
; Random number less than or equal to B (input)
  CALL 38486              ; Set new random seed and load LSB of this (random
                          ; value) into A
  CP B                    ; If random value is greater than B...
  JR NC,38505             ; ...then generate another
  RET                     ; Return

; Set Terrain Interaction Data for all Objects in Magic Knight's Current Room
;
; Used by the routine at 28092.
  LD IX,25464             ; Point IX at start of Objects' Current Positions
                          ; Table at 25464
  LD C,0                  ; Set current object to zero
  LD B,50                 ; Set counter to 50 (as there are 50 objects,
                          ; including "Nothing at All")
  LD A,(65529)            ; Load A with Magic Knight's current room
  CP (IX+0)               ; If object and Magic Knight are in the same room...
  CALL Z,38550            ; ...then set Terrain Interaction Data for character
                          ; blocks spanned by that object
  INC C                   ; Increase C
  INC IX                  ; Advance to next object...
  INC IX                  ; ...
  INC IX                  ; ...
  DJNZ 38520              ; ...and repeat
  RET                     ; Return

; Set Terrain Interaction Data for Character Blocks Spanned by an Object and
; Draw the Object
;
; Used by the routine at 31370. Input:  A  Index of current object (call to
; 38539 only) B  y-coordinate (call to 38539 only) C  x-coordinate (call to
; 38539 only) IX  Points at object's position data (call to 38550 only)
  LD IX,23296             ; Store object's position data temporarily at 23296 -
                          ; 23298...
  LD (IX+1),C             ; ...x-coordinate...
  LD (IX+2),B             ; ...y-coordinate...
  LD C,A                  ; Load index of object of interest into C
; This entry point is used by the routine at 38512.
  PUSH BC                 ; Store BC
  PUSH IX                 ; Store IX
  LD A,C                  ; Load HL with eight times current object number...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD L,A                  ; ...
  LD H,0                  ; ...
  ADD HL,HL               ; ...
  LD DE,42249             ; Point DE at last byte (graphic index) of "Nothing
                          ; at All" properties
  ADD HL,DE               ; Add eight times current object index as offset
  LD A,(HL)               ; Load graphic index into A...
  PUSH AF                 ; ...and store
  DEC HL                  ; Move pointer back one byte to point at attribute of
                          ; object...
  LD A,(HL)               ; ...
  LD (23695),A            ; ...and copy into system variable ATTR T
  LD C,(IX+1)             ; Load C with x-coordinate of current object
  LD B,(IX+2)             ; Load B with y-coordinate of current object
  DEC B                   ; Decrease y-coordinate by one
  XOR A                   ; Set A to zero
  LD (23483),A            ; Reset all Terrain Interaction Parameter flags
  POP AF                  ; Restore graphic index to A
  PUSH AF                 ; And store again
  PUSH IX                 ; Store IX (pointer to position data for current
                          ; object)
  CALL 29955              ; Draw the object in OR mode
  POP IX                  ; Restore IX
  POP AF                  ; Restore graphic index to A
  ADD A,A                 ; Load into HL...
  LD L,A                  ; ...
  LD H,0                  ; ...
  ADD HL,HL               ; ...and multiply by four
  LD DE,42643             ; Point DE at height property of first object in
                          ; graphics data lookup table...
  ADD HL,DE               ; ...and add four times graphic index (as entries are
                          ; 4 bytes wide) as offset to get entry for current
                          ; object
  LD A,(HL)               ; Load height property of current object into A...
  LD (38616),A            ; ...and modify later instruction with this data
  LD C,(IX+1)             ; Load C with x-coordinate of current object
  LD B,(IX+2)             ; Load B with y-coordinate of current object
  DEC B                   ; Decrease y-coordinate by one
  CALL 36586              ; Point HL at Terrain Interaction Data for character
                          ; coordinates x=C, y=B
; The operand of the instruction at 38615 represents the height of the object.
; This is modified by the instruction at 38602.
  LD A,0                  ; Load A with "height" property of graphic of current
                          ; object (x=height property of current object's
                          ; graphic)
  AND 192                 ; Discard all but the two most significant bits
  OR (HL)                 ; Combine with Terrain Interaction Data already
                          ; present for that block...
  LD (HL),A               ; ...
  INC HL                  ; Advance HL to next byte in Terrain Interaction Data
  LD A,(38616)            ; Load A with height property of graphic of current
                          ; object
  RLCA                    ; Next two bits correspond to next character block's
                          ; Terrain Interaction Data...
  RLCA                    ; ...
  AND 192                 ; Discard all but the two most significant bits
  OR (HL)                 ; Combine with Terrain Interaction Data already
                          ; present for that block...
  LD (HL),A               ; ...
  LD BC,31                ; Advance HL by 31 bytes in Terrain Interaction Data
                          ; (i.e. down a character row and to the left one
                          ; character)...
  ADD HL,BC               ; ...
  LD A,(38616)            ; Load A with height property of graphic of current
                          ; object
  RLCA                    ; Next two bits correspond to next character block's
                          ; Terrain Interaction Data...
  RLCA                    ; ...
  RLCA                    ; ...
  RLCA                    ; ...
  AND 192                 ; Discard all but the two most significant bits
  OR (HL)                 ; Combine with Terrain Interaction Data already
                          ; present for that block...
  LD (HL),A               ; ...
  INC HL                  ; Advance HL to next byte in Terrain Interaction Data
  LD A,(38616)            ; Load A with height property of graphic of current
                          ; object
  RRCA                    ; Next two bits correspond to next character block's
                          ; Terrain Interaction Data...
  RRCA                    ; ...
  AND 192                 ; Discard all but the two most significant bits
  OR (HL)                 ; Combine with Terrain Interaction Data already
                          ; present for that block...
  LD (HL),A               ; ...
  POP IX                  ; Restore IX
  POP BC                  ; Restore BC
  RET                     ; Return

; Get x- and y- Coordinates of Object A (Unused) Input:  A  Index of required
; object Output: B  y-coordinate C x-coordinate
  LD C,A                  ; Multiply A by three...
  ADD A,A                 ; ...as entries in table at 25464 are three bytes
                          ; long...
  ADD A,C                 ; ...
  LD L,A                  ; Load value into HL...
  LD H,0                  ; ...
  LD BC,25465             ; Point BC at x-coordinate property of "Nothing at
                          ; All" in table at 25464
  ADD HL,BC               ; Add HL as offset to BC (into HL)
  LD C,(HL)               ; Load x-coordinate into C
  INC HL                  ; Advance by one byte
  LD B,(HL)               ; Load y-coordinate into B
  RET                     ; Return

; Remove Object C from a Character's Inventory and Tidy Up Remaining Entries
;
; Used by the routines at 30439, 30540, 30602, 30880, 32390, 33883, 33935 and
; 34062. Input:  B Number of inventory slots to check C  Index of object to be
; removed HL  Pointer to a character's current inventory
  LD A,(HL)               ; Load A with inventory object
  CP C                    ; If this matches index in C...
  JR Z,38682              ; ...then skip ahead to 38682
  INC HL                  ; Advance to next inventory slot...
  DJNZ 38674              ; ...and repeat loop for next slot
  RET                     ; Return if object not found
  INC HL                  ; Advance to next inventory slot
  LD A,(HL)               ; Load object at this slot into A
  DEC HL                  ; Move back to previous slot again
  LD (HL),A               ; Place object from next slot into current one
  INC HL                  ; Advance to next slot again
  DJNZ 38682              ; Repeat for all remaining slots
  DEC HL                  ; Move back to previous slot (i.e. final slot for
                          ; this character)...
  XOR A                   ; ...and set to empty...
  LD (HL),A               ; ...
  RET                     ; Return

; Print Command Summary in Command Summary Window at Bottom of Screen
;
; Used by the routines at 30222, 30602, 30880, 31370, 31636, 32035, 32194,
; 32390, 32655, 33036, 33312, 33593, 33663, 34864, 34883, 34914 and 35141.
; Input:  DE  Points to command text
  PUSH DE                 ; Store DE
  LD A,78                 ; Set system variable ATTR T to 78 (yellow INK, blue
                          ; PAPER, BRIGHT)
  LD (23695),A            ; ...
  LD HL,(36488)           ; Load HL with (video) memory location to start
                          ; printing character
  EX (SP),HL              ; Swap registers so that HL points to text to be
                          ; printed, and (SP) i.e. PUSHed value) contains
                          ; Display File address to start printing character
  LD DE,(65530)           ; Load DE with new Display File address to print
                          ; character...
  LD (36488),DE           ; ...and update printing routine with this location
  CALL 36725              ; Print text at location HL to screen
  LD HL,(36488)           ; Load Display File address just printed to into HL
  LD (65530),HL           ; Store at 65530 (where it was just read from!)
  POP HL                  ; Restore original memory location that was replaced
                          ; in printing routine...
  LD (36488),HL           ; ...and put it back into the printing routine
  RET                     ; Return

; Display Execute / Reject Command Window and Return if Execute Chosen, Else
; Exit
;
; Used by the routines at 30222, 30439, 30602, 30880, 31370, 31636, 32035,
; 32194, 32258, 32390, 32655, 33036, 33312, 33574, 33593 and 33663.
  CALL 38124              ; Play hiss-type sound
  LD A,11                 ; Set window index to draw as 11...
  CALL 36979              ; ...and draw
  LD HL,43196             ; Point to "E] EXECUTE COMMAND..." text
  CALL 36725              ; Print the text
  CALL 37333              ; Process keyboard / joystick input for menu, and
                          ; load ASCII code of shortcut for selected (i.e.
                          ; SPACE or fire pressed) item into A...
  CP 69                   ; ...and if this is "E" (i.e. Execute Command)...
  RET Z                   ; ...return...
  POP HL                  ; ...else restore HL and...
  JP 30428                ; ...reset Gimbal-White-Out Safe Flag, redraw current
                          ; room and return to main game loop

; Display "PRESS SPACE OR FIRE TO CONTINUE" Window and Wait for Space / Fire
;
; Used by the routines at 29800, 29880, 30222, 30540, 30602, 31370, 32035,
; 32876, 34350, 34768, 35101 and 35141.
  CALL 38124              ; Play hiss-type sound
  LD A,14                 ; Draw window 14...
  CALL 36987              ; ...
  LD HL,43166             ; Point HL at "PRESS SPACE OR FIRE" text string
  CALL 36725              ; Print the text
  XOR A                   ; Clear key-press buffer...
  LD (23560),A            ; ...
  CALL 37876              ; Capture keyboard / joystick input into A
  BIT 4,A                 ; If "FIRE" button / key pressed...
  JR NZ,38788             ; ...jump to 38788
  LD A,(23560)            ; Capture last key pressed
  CP 32                   ; If not a space then...
  JR NZ,38763             ; Go back to start of loop
  CALL 37472              ; Wait for keyboard to be released
  CALL 38075              ; Play upward scale sound
  RET                     ; Return
  CALL 37486              ; Wait for fire button / key to be released
  CALL 38075              ; Play upward scale sound
  RET                     ; Return

; Reset Star to Point of Origin and Generate a New Direction and Movement Data
;
; Used by the routines at 38884 and 38961. Input:  IX  Points to an entry in
; table of stars' movement data at 25614
  CALL 38486              ; Set new random seed and load LSB of this into A
  AND 31                  ; Discard bits five to seven
  SUB 15                  ; Subtract 15
  LD B,A                  ; Load result into B (random number -15 to 16)
                          ; (y-component of star's direction)
  CALL 38486              ; Set new random seed and load LSB of this into A
  AND 31                  ; Discard bits five to seven
  SUB 15                  ; Subtract 15
  LD C,A                  ; Load result into C (random number -15 to 16)
                          ; (x-component of star's direction)
  LD A,128                ; Add to 128 (set bit 7) in C...
  ADD A,C                 ; ...
  LD C,A                  ; ...(random number 113 to 144)
  LD A,B                  ; Add 87 to B...
  ADD A,87                ; ...
  LD B,A                  ; ...(random number 72 to 103)
  CP 87                   ; If A is not 87 (i.e. y-direction component is not
                          ; zero)...
  JR NZ,38828             ; ...skip ahead to 38828
  LD C,A                  ; If A (loaded into C) is 128... [bug: this
                          ; instruction only executed if A is 87, so how could
                          ; it ever be 128 here? This should actually be LD
                          ; A,C, preventing stars having zero for both
                          ; direction components]
  CP 128                  ; ...
  JR Z,38795              ; ...then restart this routine to generate two new
                          ; random numbers/seeds
  LD D,87                 ; Load D (initial y-coordinate) with 87
  LD E,128                ; Load E (initial x-coordinate) with 128
  PUSH DE                 ; Store DE
  CALL 39016              ; Set up star's movement data based upon starting
                          ; position and direction
  POP DE                  ; Restore DE
  LD (IX+0),E             ; Set star's initial coordinates as (128, 87)...
  LD (IX+1),D             ; ...
  RET                     ; Return

; Unused routine
;
; This routine plots the path of a star with point of origin (100,100) and
; direction (10,10).
  LD BC,2570              ; Load B with 10 (y-component of star's direction)
                          ; and C with 10 (x-component of direction)
  LD DE,25700             ; Load D with 100 and E with 100 (initial coordinates
                          ; of star)
  LD IX,25614             ; Point IX at start of table of stars' movement data
  PUSH DE                 ; Store DE
  CALL 39016              ; Set up star's movement data based upon starting
                          ; position and direction
  POP DE                  ; Restore DE
  LD (IX+0),E             ; Set initial x-coordinate of star
  LD (IX+1),D             ; Set initial y-coordinate of star
  LD B,50                 ; Load B with 50 (as loop runs 50 times)
  PUSH BC                 ; Store BC
  CALL 39081              ; Load BC with new (y,x) coordinates of a star
                          ; depending upon the signs and magnitudes of its
                          ; direction
  LD (IX+0),C             ; Load C (x-coordinate to PLOT) into star's
                          ; x-coordinate
  LD (IX+1),B             ; Load B (y-coordinate to PLOT) into star's
                          ; y-coordinate
  CALL 8933               ; PLOT the pixel (x=C, y=B)
  POP BC                  ; Restore BC (B = remaining number of iterations)
  DJNZ 38867              ; Decrease B by one and loop back to 38867
  RET                     ; Return

; Animate Starfield Until a Key is Pressed
;
; Used by the routines at 27118 and 33180.
  XOR A                   ; Clear last pressed key...
  LD (23560),A            ; ...
  SET 0,(IY+87)           ; Set P-FLAG bit 0 (OVER 1)
  SET 1,(IY+87)           ; Set P-FLAG bit 1 (OVER 1)
  CALL 38961              ; Reset all stars to point of origin and generate new
                          ; velocities and movement data
  LD A,(23560)            ; If last pressed key (system variable LAST-K) is not
                          ; set to zero (i.e. a key has been pressed)...
  OR A                    ; ...
  RET NZ                  ; ...then return...
  LD IX,25614             ; ...else point IX at start of table of stars'
                          ; movement data
  LD B,50                 ; Load B with 50, as we are dealing with 50 "stars"
  PUSH BC                 ; Store BC (B = remaining number of stars to process)
  LD B,(IX+1)             ; Load old y-coordinate from star's movement data
                          ; into B
  LD C,(IX+0)             ; Load old x-coordinate from star's movement data
                          ; into C
  CALL 8933               ; Un-PLOT the pixel (x=C, y=B - star's old position)
                          ; (as "OVER" flag is set, so PLOTting an already
                          ; PLOTted point removes it)
  CALL 39081              ; Load BC with new (y,x) coordinates of a star
                          ; depending upon the signs and magnitudes of its
                          ; direction
  LD A,B                  ; Load new y-coordinate into A
  CP 48                   ; If new y-coordinate is less than 48... (How far
                          ; down the star goes)
  JR C,38932              ; ...then skip ahead to 38932
  CP 175                  ; If new y-coordinate is less than 175... (How far up
                          ; the star goes)
  JR C,38937              ; ...then skip ahead to 38937
  CALL 38795              ; Reset star to point of origin and generate a new
                          ; direction and movement data
  JR 38950                ; Skip ahead to 38950
  LD A,C                  ; Load x-coordinate into A
  AND A                   ; If x-coordinate is zero...
  JR Z,38932              ; ...then jump to 38932
  LD (IX+0),C             ; Store new x- and y-coordinates in star's movement
                          ; data table entry...
  LD (IX+1),B             ; ...
  CALL 8933               ; PLOT the star's new position (x=C, y=B)
  POP BC                  ; Restore BC (B = remaining number of stars to
                          ; process)
  LD DE,9                 ; Advance IX by nine bytes to next entry in table of
                          ; star movement data...
  ADD IX,DE               ; ...
  DJNZ 38910              ; Loop back to 38910 for next star
  JP 38899                ; Jump back to 38899 to repeat routine again

; Reset All Stars to Point of Origin and Generate New Velocities and Movement
; Data
;
; Used by the routine at 38884.
  LD IX,25614             ; Point IX at start of table of stars' movement data
  LD B,50                 ; Load B with 50 (as there are 50 stars to process)
  PUSH BC                 ; Store BC (B = remaining number of stars to process)
  CALL 38795              ; Reset star to point of origin and generate a new
                          ; direction and movement data
  LD DE,9                 ; Load DE with 9
  ADD IX,DE               ; Advance IX by 9 bytes
  POP BC                  ; Restore BC
  DJNZ 38967              ; Decrease B and repeat loop
  RET                     ; Return

; Unused routine
;
; This routine draws a line from (C, B) to (E, D).
  LD (23677),DE           ; Load contents of DE into system variable COORDS
                          ; (start point of line)
  LD A,B                  ; Subtract y-coordinate of start of line from
                          ; y-coordinate of end of line...
  SUB D                   ; ...to get delta-y
  LD D,1                  ; Set direction of vertical change to +1 (upward)
  JR NC,38994             ; If delta-y is positive (i.e. upward) then skip
                          ; ahead to 38994
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
  JR NC,39005             ; If delta-x is positive (i.e. rightward) then skip
                          ; ahead to 39005
  CPL                     ; Multiply delta-x by -1 (leftward) to get absolute
                          ; magnitude...
  INC A                   ; ...
  LD E,255                ; Set direction of vertical change to -1 (leftward)
  LD C,A                  ; Load C with magnitude of difference in x-coordinate
                          ; between start and end of line
  EXX                     ; Switch registers
  PUSH HL                 ; Store HL
  EXX                     ; Switch registers
  CALL 9402               ; Draw a line (ROM routine)
  EXX                     ; Switch registers
  POP HL                  ; Restore HL
  EXX                     ; Switch registers
  RET                     ; Return

; Set Up Star Movement Data Based Upon Starting Position and Direction
;
; Used by the routines at 38795 and 38844. Input:  B  y component of star
; direction added to initial y-coordinate (random number 72 to 103) C  x
; component of star direction added to initial x-coordinate (random number 113
; to 144) D  Initial y-coordinate of star (87) (pixels) E  Initial x-coordinate
; of star (128) (pixels) IX Points to an entry in table of stars' movement data
; at 25614
  LD A,B                  ; Load (DIR-Y + INIT-Y) into A
  SUB D                   ; Subtract initial y-coordinate to leave y-component
                          ; of direction in A
  LD D,1                  ; Set D to 1 (because star is moving up)
  JR NC,39026             ; If y-component is positive (i.e. star is moving up)
                          ; then skip ahead to 39026
  CPL                     ; Negate negative y-direction component...
  INC A                   ; ...
  LD D,255                ; Set D to -1 (because star is moving down)
  LD B,A                  ; Load magnitude of y-component into B
  LD A,C                  ; Load (DIR-X + INIT-X) into A
  SUB E                   ; Subtract initial x-coordinate to leave x-component
                          ; of direction in A
  LD E,1                  ; Set D to 1 (because star is moving 1 pixel right)
  JR NC,39037             ; If x-component is positive (i.e. star is moving
                          ; right) then skip ahead to 39037
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
  JR NC,39063             ; ...then skip ahead to 39063
  LD (IX+8),C             ; Store magnitude of x-component at byte 9
  LD (IX+2),0             ; Set byte 3 to zero
  JR 39073                ; Skip ahead to 39073
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
; table at 25614 Output: B  New y-coordinate to plot C  New x-coordinate to
; plot
  LD A,(IX+6)             ; Load current "ratio" value into A
  ADD A,(IX+8)            ; Add smaller of x- and y-component magnitudes
  JR C,39094              ; If result is crosses the 255-0 boundary then skip
                          ; ahead to 39094
  CP (IX+7)               ; If result is less than larger of x- and y-component
                          ; magnitudes...
  JR C,39105              ; ...then skip ahead to 39105 (move star only on axis
                          ; with larger magnitude)
  SUB (IX+7)              ; Subtract larger of x- and y-magnitudes
  LD H,(IX+5)             ; Load y-step into H...
  LD L,(IX+4)             ; ...and x-step into H (moving star on BOTH axes)
  JR 39111                ; Skip ahead to 39111
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

; Draw Odd Ball to Screen
;
; Used by the routine at 35993. Input:  A  Frame Number (32, 116, 117, 118 or
; 119)
  PUSH HL                 ; Store HL
  LD DE,64500             ; Point DE at 64500
  ADD A,A                 ; Double A...
  LD H,0                  ; ...Load into HL...
  LD L,A                  ; ...
  ADD HL,HL               ; ...Double again...
  ADD HL,HL               ; ...and again to get 8 times original A value...
  ADD HL,DE               ; ...and add DE to this to point to one of the five
                          ; sets of Odd Ball frame graphic data (64756, 65428,
                          ; 65436, 65444 or 65452)
  EX DE,HL                ; Swap so DE now points to an Odd Ball graphic and HL
                          ; holds 64500
  PUSH DE                 ; Copy DE into IX...
  POP IX                  ; ...
  LD BC,(23677)           ; Load system variable COORDS into BC (holds x- and
                          ; y-coordinates of Odd Ball)
  CALL 8874               ; Call ROM routine (Get Pixel Address) - Loads HL
                          ; with Display File address corresponding to pixel at
                          ; coordinates BC, and A with the location of that
                          ; pixel within the byte
  LD C,A                  ; Load pixel-within-byte "address" into C
  LD B,8                  ; Load 8 into B (as Odd Ball graphic data comprises 8
                          ; pixel rows)
  LD D,(IX+0)             ; Load a byte of Odd Ball graphic data into D
  CALL 39175              ; Shift Odd Ball graphic data right by C pixels and
                          ; load into D (LHS) and A' (RHS)
  LD A,D                  ; Load left part of Odd Ball graphic data into A
  LD E,(HL)               ; Load E with graphic data currently at Odd Ball's
                          ; position on screen
  XOR E                   ; Blend Odd Ball graphic data with what is already on
                          ; screen at its position to make things look more
                          ; natural...
  LD (HL),A               ; ...and write new graphic data back to screen
  INC HL                  ; Advance right one byte in Display File
  EX AF,AF'               ; Switch registers to restore right part of Odd Ball
                          ; graphic data to A
  LD E,(HL)               ; Load E with graphic data currently at Odd Ball's
                          ; position on screen
  XOR E                   ; Blend Odd Ball graphic data with what is already on
                          ; screen at its position to make things look more
                          ; natural...
  LD (HL),A               ; ...and write new graphic data back to screen
  DEC HL                  ; Move left one byte in Display File
  INC IX                  ; Advance IX to next row of Odd Ball graphic data
  CALL 39200              ; Advance HL down one pixel row in Display File
  DJNZ 39150              ; Loop back to draw next row of Odd Ball data
  POP HL                  ; Restore HL
  RET                     ; Return

; Shift Odd Ball Graphic Data Right by C Pixels and Load into D (L.H.S.) and A'
; (R.H.S.)
;
; Used by the routine at 39125. Input:  C  Pixel-within-byte "address" D  A
; byte of graphic data for an Odd Ball Output: D  (Right-shifted) partial byte
; of graphic data for an Odd Ball A'  Remainder of the graphic data for an Odd
; Ball (i.e. displaying D and A' side-by-side would show a complete row of Odd
; Ball graphic data, shifted right by C (input) pixels) E  Set bits represent
; number of pixels to the right that the Odd Ball graphic has been shifted
  LD A,C                  ; Load pixel-within-byte "address" into A
  OR A                    ; Check if we're dealing with pixel zero...
  JR Z,39195              ; ...and if so, skip ahead to 39195
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
  DJNZ 39183              ; Repeat loop to shift graphic right another pixel if
                          ; necessary
  EX AF,AF'               ; Switch AF registers
  LD A,E                  ; Load A with value in E (set bits represent number
                          ; of pixels by which Odd Ball graphic has been
                          ; shifted right)
  POP BC                  ; Restore (B=graphic row counter, C=pixel-within-byte
                          ; "address")
  RET                     ; Return
  XOR A                   ; Set A to zero
  EX AF,AF'               ; Switch registers
  XOR A                   ; Set A to zero
  LD E,A                  ; Set E to zero as Odd Ball graphic hasn't been
                          ; shifted
  RET                     ; Return

; Advance HL Down One Pixel Row in Display File
;
; Used by the routine at 39125. Input:  HL  Points to a byte in Display File
; Output: HL  Points to the byte in Display File below HL (input)
  INC H                   ; Increase H by 1 (i.e. advance HL by 256)
  LD A,H                  ; If at least one of the three rightmost bits of H
                          ; are set (i.e. we haven't crossed over from one
                          ; third of the display to the next third)...
  AND 7                   ; ...
  RET NZ                  ; ...then return (as HL now points to next pixel row
                          ; down)...
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
  RET NC                  ; If L hasn't gone over 256 (i.e. we haven't moved 32
                          ; bytes on from the top pixel row of the bottom
                          ; character row of the third) then return...
  LD A,H                  ; ...else move down by a third...
  ADD A,8                 ; ...
  LD H,A                  ; ...
  XOR 88                  ; If we have not reached the start of the Attribute
                          ; File, then return...
  RET NZ                  ; ...
  LD H,64                 ; ...else wrap back round to the start of Display
                          ; File again
  RET                     ; Return

; Draw Magic Knight (Erase Old Frame and Draw New Frame)
;
; Magic Knight is erased from his old position and redrawn at his new position.
; If Magic Knight has y-velocity (i.e. he is moving up or down with or without
; horizontal motion) then this is done in three stages, each depending on the
; magnitude of his y-velocity. If he is not moving up or down, then the three
; stages are still followed, but with zero y-velocity, stages 1 and 3 do
; nothing. The three stages are (with Y = magnitude of Magic Knight's
; y-velocity): Input:  A  Always zero
  PUSH IX                 ; Store IX
  ADD A,A                 ; Multiply A by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD B,0                  ; ...and load into BC...
  LD C,A                  ; ...
  LD HL,25387             ; Point HL at Magic Knight's current data (x- and
                          ; y-coordinates, etc.)
  ADD HL,BC               ; Add eight times original A value as offset to this
  PUSH HL                 ; Store HL
  LD A,(HL)               ; Load Magic Knight's x-coordinate into A...
  LD (23329),A            ; ...and copy to 23329...
  LD C,A                  ; ...and C
  INC HL                  ; Advance HL to Magic Knight's y-coordinate
  LD A,(HL)               ; Load Magic Knight's y-coordinate into A...
  LD (23330),A            ; ...and copy to 23330...
  LD B,A                  ; ...and B
  INC HL                  ; Advance HL to Magic Knight's current frame to
                          ; erase...
  LD A,(HL)               ; ...
  LD (23328),A            ; ...and copy to 23328
  INC HL                  ; Advance HL by two bytes to Magic Knight's current
                          ; x-velocity...
  INC HL                  ; ...
  LD E,(HL)               ; Load Magic Knight's current x-velocity into E
  INC HL                  ; Advance HL to Magic Knight's current y-velocity...
  LD D,(HL)               ; ...and load into D
  INC HL                  ; Advance HL to Magic Knight's attribute...
  LD A,(HL)               ; ...and load into A
  LD (23337),A            ; Copy Magic Knight's attribute into 23337
  INC HL                  ; Advance HL to Magic Knight's "Update Attributes at
                          ; Magic Knight's Predicted Position" flag (Reset is
                          ; 255, any other value is set)...
  LD A,(HL)               ; ...load into A...
  LD (23338),A            ; ...and copy into 23338
  LD A,C                  ; Load Magic Knight's x-coordinate into A
  ADD A,E                 ; Add Magic Knight's x-velocity to give predicted
                          ; x-coordinate
  LD (23331),A            ; Store at 23331
  LD A,B                  ; Load Magic Knight's y-coordinate into A
  ADD A,D                 ; Add Magic Knight's y-velocity to give predicted
                          ; y-coordinate
  LD (23332),A            ; Store at 23332
  LD A,(23338)            ; Load Magic Knight's Update Attributes Mask flag
                          ; (stored earlier) into A
  CP 255                  ; If this is not 255 (i.e. no components to
                          ; override)...
  CALL NZ,39989           ; ...then update attributes at Magic Knight's
                          ; predicted position
  XOR A                   ; Set bytes 23316 - 23318 to zero...
  LD (23317),A            ; ...
  LD (23316),A            ; ...
  LD (23318),A            ; ...
  LD A,C                  ; Set three least significant bits of Magic Knight's
                          ; x-coordinate to zero (i.e. set
                          ; pixel-within-character to zero)...
  AND 248                 ; ...
  LD C,A                  ; ...
  LD A,(23331)            ; Load predicted x-coordinate (pixels) into A
  AND 248                 ; Set three least significant bits of Magic Knight's
                          ; predicted x-coordinate to zero (i.e. set
                          ; pixel-within-character to zero)
  SUB C                   ; Test:
  JP Z,39331              ; If x-coordinate and predicted x-coordinate are now
                          ; the same (i.e. Magic Knight is not changing his
                          ; position in characters) then skip ahead to 39331
  JP P,39323              ; If x-coordinate is smaller than predicted
                          ; x-coordinate (i.e. Magic Knight is moving right)
                          ; then skip ahead to 39323
; [Magic Knight is moving left]
  LD A,1                  ; Set...
  LD (23316),A            ; ..."Magic Knight is leaving his current character
                          ; position and going left" flag and...
  LD (23318),A            ; ..."Magic Knight is leaving his current character
                          ; position" flag
  JP 39331                ; Skip ahead to 39331 (over Magic Knight is moving
                          ; right section)
; [Magic Knight is moving right]
  LD A,1                  ; Set...
  LD (23317),A            ; ..."Magic Knight is leaving his current character
                          ; position and going right" flag and...
  LD (23318),A            ; ..."Magic Knight is leaving his current character
                          ; position" flag
  LD A,(23332)            ; Load predicted y-coordinate (pixels) into 23324...
  LD (23324),A            ; ...
  LD A,(23330)            ; Load current y-coordinate (pixels) into 23325...
  LD (23325),A            ; ...
  LD A,(23331)            ; Load predicted x-coordinate (pixels) into 23322...
  LD (23322),A            ; ...
  LD A,(23329)            ; Load current x-coordinate (pixels) into 23323...
  LD (23323),A            ; ...
  LD A,(25390)            ; Load Magic Knight's current frame into 23326...
  LD (23326),A            ; ...
  LD A,(23328)            ; Load Magic Knight's current frame to erase into
                          ; 23327...
  LD (23327),A            ; ...
  LD A,(23317)            ; Load "Magic Knight is leaving his current character
                          ; position and going right" flag into 23314...
  LD (23314),A            ; ...
  LD A,(23316)            ; Load "Magic Knight is leaving his current character
                          ; position and going left" flag into 23315...
  LD (23315),A            ; ...
  LD A,D                  ; Load Magic Knight's current y-velocity into A
  OR A                    ; If y-velocity is positive (Magic Knight moving
                          ; downwards)...
  JP P,39432              ; ...then jump ahead to 39432
  LD A,(23330)            ; Load current y-coordinate (pixels) into 23324...
  LD (23324),A            ; ...
  LD A,(23332)            ; Load predicted y-coordinate (pixels) into 23325...
  LD (23325),A            ; ...
  LD A,(23329)            ; Load current x-coordinate (pixels) into 23322...
  LD (23322),A            ; ...
  LD A,(23331)            ; Load predicted x-coordinate (pixels) into 23323...
  LD (23323),A            ; ...
  LD A,(23328)            ; Load Magic Knight's current frame to erase into
                          ; 23326...
  LD (23326),A            ; ...
  LD A,(25390)            ; Load Magic Knight's current frame number into
                          ; 23327...
  LD (23327),A            ; ...
  LD A,(23316)            ; Load "Magic Knight is leaving his current character
                          ; position and going left" flag into 23314...
  LD (23314),A            ; ...
  LD A,(23317)            ; Load "Magic Knight is leaving his current character
                          ; position and going right" flag into 23315...
  LD (23315),A            ; ...
  LD A,D                  ; Load Magic Knight's current y-velocity into A
  BIT 7,A                 ; If y-velocity is positive (moving downwards)...
  JP Z,39440              ; ...then skip ahead to 39440
  NEG                     ; Negate negative velocity
  LD (23319),A            ; Load magnitude of y-velocity into 23319
  LD A,(23325)            ; Load current / predicted y-coordinate into A
  ADD A,31                ; Add 31 (as Magic Knight is 32 pixels high) to get
                          ; current / predicted y-coordinate of bottom of Magic
                          ; Knight's feet...
  LD (23325),A            ; ...and store back at 23325
  LD A,(23324)            ; Load current / predicted y-coordinate into A
  ADD A,31                ; Add 31 (as Magic Knight is 32 pixels high) to get
                          ; current / predicted y-coordinate of bottom of Magic
                          ; Knight's feet...
  LD (23324),A            ; ...and store back at 23324
  LD H,0                  ; Also load into HL...
  LD L,A                  ; ...
  ADD HL,HL               ; Double value (to use as offset in WORD lookup
                          ; table)
  LD DE,26064             ; Point DE at table of Display File addresses of
                          ; starts of each pixel row
  ADD HL,DE               ; Add double y-coordinate as offset to start of table
                          ; of Display File addresses in HL
  LD (23320),HL           ; Store at 23320
  LD E,(HL)               ; Load memory address of start of this pixel row into
                          ; DE...
  INC HL                  ; ...
  LD D,(HL)               ; ...
  LD C,0                  ; Load C with zero
  LD A,(23322)            ; Load Magic Knight's predicted (Magic Knight moving
                          ; down / horizontally) or current (Magic Knight
                          ; moving up) x-coordinate (pixels) into A
  SRL A                   ; Rotate three least significant bits
                          ; (pixel-within-character) of x-coordinate out of
                          ; A...
  RR C                    ; ...and into three most significant bits of C...
  SRL A                   ; ...
  RR C                    ; ...
  SRL A                   ; ...
  RR C                    ; ...
  LD H,0                  ; Load HL with remaining value in A (x-coordinate in
                          ; characters)...
  LD L,A                  ; ...
  LD (23301),HL           ; Store at 23301
  LD A,(23318)            ; If "Magic Knight is leaving his current character
                          ; position" flag is reset...
  OR A                    ; ...
  JP Z,39513              ; ...then skip ahead to 39513
  LD A,(23314)            ; If "Magic Knight changing character position to
                          ; right" flag (Magic Knight moving down /
                          ; horizontally) or "Magic Knight changing character
                          ; position to left" flag (Magic Knight moving up) is
                          ; set...
  OR A                    ; ...
  JP NZ,39513             ; ...then skip ahead to 39513
  LD (23312),HL           ; Load predicted (Magic Knight moving down /
                          ; horizontally) or current (Magic Knight moving up)
                          ; x-coordinate (pixels) into 23312
  ADD HL,DE               ; Add x-coordinate (HL) as offset to Display File
                          ; address of start of row (DE) in HL
  LD (23296),HL           ; Store Display File address at 23296
  LD A,C                  ; Load A with pixel-within-character coordinate (in 3
                          ; MS bits of C)
  RLCA                    ; Rotate left to get into least significant 3 bits of
                          ; A...
  RLCA                    ; ...
  RLCA                    ; ...
  LD (23300),A            ; Store at 23300
  LD H,0                  ; Load Magic Knight's current frame to draw (Magic
                          ; Knight moving down / horizontally) or current frame
                          ; to erase (Magic Knight moving up) into HL...
  LD A,(23326)            ; ...
  LD L,A                  ; ...
  ADD A,A                 ; Multiply A by four...
  ADD A,A                 ; ...
  LD L,A                  ; Load into HL again (so now HL contains 4x original
                          ; value)
  ADD HL,HL               ; Multiply by 16...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...so now HL contains 4 x 16 (i.e. 64) times
                          ; original value (as Magic Knight frame graphics are
                          ; 64 bytes long)
  LD DE,63475             ; Point DE at last byte of "Magic Knight Frame 0"
                          ; graphic data (this is blank as index of first frame
                          ; is actually 1, with Magic Knight facing right)
  ADD HL,DE               ; Add HL as offset (to point to last byte of required
                          ; frame)
  LD (23298),HL           ; Store at 23298
  LD C,0                  ; Load C with zero
  LD A,(23323)            ; Load Magic Knight's current (Magic Knight moving
                          ; down / horizontally) or predicted (Magic Knight
                          ; moving up) x-coordinate (pixels) into A
  SRL A                   ; Rotate three least significant bits of predicted
                          ; x-coordinate (pixel-within-character) out of A...
  RR C                    ; ...and into most significant three bits of C...
  SRL A                   ; ...
  RR C                    ; ...
  SRL A                   ; ...
  RR C                    ; ...
  LD H,0                  ; Load HL with remaining value in A (x-coordinate in
                          ; characters)...
  LD L,A                  ; ...
  LD (23308),HL           ; Store this at 23308
  LD A,(23318)            ; If "Magic Knight is leaving his current character
                          ; position" flag is reset...
  OR A                    ; ...
  JP Z,39584              ; ...then skip ahead to 39584
  LD A,(23315)            ; If "Magic Knight changing character position to
                          ; left" flag (Magic Knight moving down /
                          ; horizontally) or "Magic Knight changing character
                          ; position to right" flag (Magic Knight moving up) is
                          ; set...
  OR A                    ; ...
  JP NZ,39584             ; ...then skip ahead to 39584
  LD (23312),HL           ; Load predicted (Magic Knight moving down /
                          ; horizontally) or current (Magic Knight moving up)
                          ; x-coordinate (characters) into 23312
  LD A,C                  ; Load A with pixel-within-character coordinate (in
                          ; three most significant bits)
  RLCA                    ; Rotate data from most significant to least
                          ; significant three bits...
  RLCA                    ; ...
  RLCA                    ; ...
  LD (23307),A            ; Store at 23307
  LD H,0                  ; Load Magic Knight's current frame to erase (Magic
                          ; Knight moving down / horizontally) or current frame
                          ; to draw (Magic Knight moving up) into HL...
  LD A,(23327)            ; ...
  LD L,A                  ; ...
  ADD A,A                 ; Multiply A by four...
  ADD A,A                 ; ...
  LD L,A                  ; Load into HL again (so now HL contains 4x original
                          ; value)
  ADD HL,HL               ; Multiply by 16...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...
  ADD HL,HL               ; ...so now HL contains 4 x 16 (i.e. 64) times
                          ; original value (as Magic Knight frame graphics are
                          ; 64 bytes long)
  LD DE,63475             ; Point DE at last byte of "Magic Knight Frame 0"
                          ; graphic data (this is blank as index of first frame
                          ; is actually 1, with Magic Knight facing right)
  ADD HL,DE               ; Add HL as offset (to point to last byte of required
                          ; frame)
  LD (23305),HL           ; Store at 23305
  LD A,(23318)            ; If "Magic Knight is leaving his current character
                          ; position" flag is set...
  OR A                    ; ...
  JP NZ,39624             ; ...then skip ahead to 39624
  LD HL,(23301)           ; Load Magic Knight's predicted (Magic Knight moving
                          ; down / horizontally) or current (Magic Knight
                          ; moving up) x-coordinate (characters) into HL...
  LD (23312),HL           ; ...and store at 23312
  LD A,(23319)            ; If magnitude of y-velocity is zero...
  OR A                    ; ...
  JR Z,39696              ; ...then skip ahead to 39696
  LD HL,(23298)           ; Load HL with pointer to last byte of Magic Knight
                          ; graphic frame (Magic Knight's current frame to draw
                          ; [Magic Knight moving down / horizontally] or
                          ; current frame to erase [Magic Knight moving up])
  LD B,A                  ; Load magnitude of y-velocity into B
; [This section draws / erases only bottom Y pixel rows, where Y is magnitude
; of Magic Knight's y-velocity. e.g. draw / erase 7 pixel rows if Magic
; Knight's y-velocity magnitude = 7]
  PUSH BC                 ; Store BC (B = magnitude of y-velocity)
  LD D,(HL)               ; Load byte of graphic data (right-hand column) into
                          ; D
  DEC HL                  ; Move back to previous byte of graphic data
  LD B,(HL)               ; Load byte of graphic data (left-hand column) into B
  DEC HL                  ; Move back to previous byte of graphic data
                          ; (right-hand column, row above)
  PUSH HL                 ; Store HL (pointer to current position in graphic
                          ; data)
  LD C,0                  ; Load C with zero (i.e. clear bits for loading of
                          ; graphic data)
  LD A,(23300)            ; Load A with Magic Knight's predicted (Magic Knight
                          ; moving down / horizontally) or current (Magic
                          ; Knight moving up) x-coordinate
                          ; (pixel-within-character) as stored previously
  OR A                    ; If value is zero...
  JP Z,39658              ; ...then skip ahead to 39658 (i.e. printing graphic
                          ; data as-is with no need to shift bits for
                          ; pixel-within-character offset)
  RR B                    ; Move graphic data one pixel right through D and
                          ; into C...
  RR D                    ; ...
  RR C                    ; ...
  DEC A                   ; Decrease A (as one less pixel space left to deal
                          ; with)
  JR NZ,39649             ; If A is not zero (i.e. not all pixels yet dealt
                          ; with) then loop back to 39649 for next one
  LD HL,(23296)           ; Load HL with Display File address of bottom of
                          ; Magic Knight's feet: predicted (Magic Knight moving
                          ; down / horizontally) or current (Magic Knight
                          ; moving up)
  LD A,B                  ; Print the three consecutive 8-pixel strips to
                          ; Display File, XORring with what is already there...
  XOR (HL)                ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  LD A,D                  ; ...
  XOR (HL)                ; ...
  LD (HL),A               ; ...
  INC HL                  ; ...
  LD A,C                  ; ...
  XOR (HL)                ; ...
  LD (HL),A               ; ...
  LD HL,(23320)           ; Point HL at entry for Display File address of start
                          ; of pixel row at Magic Knight's feet: predicted
                          ; (Magic Knight moving down / horizontally) or
                          ; current (Magic Knight moving up) in table at 26064
  DEC HL                  ; Load Display File address of start of pixel row
                          ; above this into DE...
  LD D,(HL)               ; ...
  DEC HL                  ; ...
  LD E,(HL)               ; ...
  LD (23320),HL           ; ...and place decreased pointer (y-coordinate
                          ; offset, pixels) back at 23320
  LD HL,(23301)           ; Load Magic Knight's predicted (Magic Knight moving
                          ; down / horizontally) or current (Magic Knight
                          ; moving up) x-coordinate (characters) into HL
  ADD HL,DE               ; Add as offset to Display File address of start of
                          ; relevant pixel row in HL
  LD (23296),HL           ; Store as memory address to print next graphic data
  POP HL                  ; Restore HL (pointer to current position in graphic
                          ; data)
  POP BC                  ; Restore BC (B = magnitude of y-velocity)
  DJNZ 39634              ; Loop back to 39634
; [This section calculates remaining number of pixel rows to be drawn]
  LD (23298),HL           ; Store current position in graphic data at 23298
  LD HL,(23320)           ; Point HL at entry for Display File address of start
                          ; of pixel row current position (part-way through
                          ; drawing Magic Knight) in table at 26064
  LD E,(HL)               ; Load Display File address of start of this pixel
                          ; row into DE...
  INC HL                  ; ...
  LD D,(HL)               ; ...
  LD HL,(23312)           ; Load HL with Magic Knight's predicted (Magic Knight
                          ; moving down / horizontally) or current (Magic
                          ; Knight moving up) x-coordinate (characters)
  ADD HL,DE               ; Add to HL as offset
  LD (23310),HL           ; Store at 23310 (Display File address of leftmost
                          ; part of Magic Knight at current pixel row,
                          ; mid-drawing)
  LD A,(23319)            ; Load magnitude of y-velocity into A
  SUB 32                  ; Subtract 32 (as Magic Knight is 32 pixels high)...
  NEG                     ; ...and negate to get number of pixel rows still to
                          ; draw (i.e. 32-n here, but drew other n in loop
                          ; between 39634 - 39691)
; [This section loads the graphic data to draw / erase]
  EX AF,AF'               ; Swap registers
  LD HL,(23298)           ; Load HL with current position in Magic Knight
                          ; graphic data
  LD D,(HL)               ; Load two bytes of graphic data into D and C,
                          ; reading backwards...
  DEC HL                  ; ...
  LD C,(HL)               ; ...
  DEC HL                  ; ...
  LD (23298),HL           ; Store updated position in graphic data at 23298
  LD B,0                  ; Blank out bitmap data in B
  LD L,0                  ; Blank out bitmap data in L
  LD A,(23300)            ; Load A Magic Knight's predicted (Magic Knight
                          ; moving down / horizontally) or current (Magic
                          ; Knight moving up) x-coordinate
                          ; (pixel-within-character)
  OR A                    ; If this is zero...
  JP Z,39747              ; ...then skip ahead to 39747
  RR C                    ; Move graphic data one pixel right through D and
                          ; into B...
  RR D                    ; ...
  RR B                    ; ...
  DEC A                   ; Decrease number of remaining pixels to shift
  JR NZ,39738             ; If there are still pixels to shift, loop back to
                          ; 39738
  LD A,(23314)            ; If "Magic Knight changing character position to
                          ; right" flag (Magic Knight moving down /
                          ; horizontally) or "Magic Knight changing character
                          ; position to left" flag (Magic Knight moving up) is
                          ; reset...
  OR A                    ; ...
  JP Z,39759              ; ...then skip ahead to 39759
  LD L,B                  ; Move data from C, through D, then B to L...
  LD B,D                  ; ...
  LD D,C                  ; ...
  LD C,0                  ; ...
; [This section loads the graphic data to erase / draw]
  EXX                     ; Swap registers
  LD HL,(23305)           ; Point HL' at current position (initially last byte)
                          ; of Magic Knight graphic frame (Magic Knight's
                          ; current frame to erase [Magic Knight moving down /
                          ; horizontally] or current frame to draw [Magic
                          ; Knight moving up])
  LD D,(HL)               ; Load two bytes of graphic data into D' and C',
                          ; reading backwards...
  DEC HL                  ; ...
  LD C,(HL)               ; ...
  DEC HL                  ; ...
  LD (23305),HL           ; Store updated position in graphic data at 23305
  LD B,0                  ; Blank out bitmap data in B'
  LD L,0                  ; Blank out bitmap data in L'
  LD A,(23307)            ; Load A Magic Knight's current (Magic Knight moving
                          ; down / horizontally) or predicted (Magic Knight
                          ; moving up) x-coordinate (pixel-within-character)
  OR A                    ; If this is zero...
  JP Z,39790              ; ...then skip ahead to 39790
  RR C                    ; Move graphic data one pixel right through D and
                          ; into B...
  RR D                    ; ...
  RR B                    ; ...
  DEC A                   ; Decrease remaining number of pixels to shift
  JR NZ,39781             ; If there are still pixels left to shift, then loop
                          ; back to 39781
  LD A,(23315)            ; "Magic Knight changing character position to left"
                          ; flag (Magic Knight moving down / horizontally) or
                          ; "Magic Knight changing character position to right"
                          ; flag (Magic Knight moving up) is reset...
  OR A                    ; ...
  JP Z,39802              ; ...then skip ahead to 39802
  LD L,B                  ; Move data from C', through D', then B' to L'...
  LD B,D                  ; ...
  LD D,C                  ; ...
  LD C,0                  ; ...
; At this point: [L,  B,  D,  C  contain graphic data to print, from current
; position in Magic Knight's current frame to draw [Magic Knight moving down /
; horizontally] or current frame to erase [Magic Knight moving up] [L', B', D',
; C' contain graphic data to print, from current position in Magic Knight's
; current frame to erase [Magic Knight moving down / horizontally] or current
; frame to draw [Magic Knight moving up]
  LD IX,(23310)           ; Load IX with Display File address of leftmost part
                          ; of Magic Knight at current pixel row, mid-drawing
  LD A,C                  ; XOR together values from C, C' and current location
                          ; in Display File...
  EXX                     ; ...erasing old and drawing new graphic data...
  XOR C                   ; ...
  EXX                     ; ...
  XOR (IX+0)              ; ...
  LD (IX+0),A             ; ...and print at current location in Display File
  INC IX                  ; Advance right one character
  LD A,D                  ; XOR together values from D, D' and current location
                          ; in Display File...
  EXX                     ; ...erasing old and drawing new graphic data...
  XOR D                   ; ...
  EXX                     ; ...
  XOR (IX+0)              ; ...
  LD (IX+0),A             ; ...and print at current location in Display File
  INC IX                  ; Advance right one character
  LD A,B                  ; XOR together values from B, B' and current location
                          ; in Display File...
  EXX                     ; ...erasing old and drawing new graphic data...
  XOR B                   ; ...
  EXX                     ; ...
  XOR (IX+0)              ; ...
  LD (IX+0),A             ; ...and print at current location in Display File
  INC IX                  ; Advance right one character
  LD A,L                  ; XOR together values from L, L' and current location
                          ; in Display File...
  EXX                     ; ...erasing old and drawing new graphic data...
  XOR L                   ; ...
  EXX                     ; ...
  XOR (IX+0)              ; ...
  LD (IX+0),A             ; ...and print at current location in Display File
  LD HL,(23320)           ; Point HL' at entry for Display File address of
                          ; start of pixel row current position (part-way
                          ; through drawing Magic Knight) in table at 26064
  DEC HL                  ; Load Display File address of start of pixel row
                          ; above this into DE'...
  LD D,(HL)               ; ...
  DEC HL                  ; ...
  LD E,(HL)               ; ...
  LD (23320),HL           ; ...and place decreased pointer (y-coordinate
                          ; offset, pixels) back at 23320
  LD HL,(23312)           ; Load HL' with Magic Knight's predicted (Magic
                          ; Knight moving down / horizontally) or current
                          ; (Magic Knight moving up) x-coordinate (characters)
  ADD HL,DE               ; Add x-coordinate (HL') as offset to Display File
                          ; address of start of row (DE') in HL'
  LD (23310),HL           ; Store at 23310 (Display File address of leftmost
                          ; part of Magic Knight at current pixel row,
                          ; mid-drawing)
  EX AF,AF'               ; Swap registers (A = number of pixel rows still to
                          ; draw)
  DEC A                   ; Decrease A by one, as there is now one less pixel
                          ; row to draw
  JP NZ,39716             ; If there are still more pixel rows to draw, then
                          ; loop back to 39716
  LD A,(23319)            ; If magnitude of y-velocity is zero...
  OR A                    ; ...
  JR Z,39973              ; ...then skip ahead to 39973 (nothing more to draw /
                          ; erase)
  LD HL,(23320)           ; Point HL at entry for Display File address of start
                          ; of pixel row current position (part-way through
                          ; drawing Magic Knight) in table at 26064
  LD E,(HL)               ; Load memory address of start of this pixel row into
                          ; DE...
  INC HL                  ; ...
  LD D,(HL)               ; ...
  LD HL,(23308)           ; Load HL with Magic Knight's current (Magic Knight
                          ; moving down / horizontally) or predicted (Magic
                          ; Knight moving up) x-coordinate (characters)
  ADD HL,DE               ; Add as offset to Display File address of start of
                          ; relevant pixel row in HL
  LD (23303),HL           ; Store at 23303 (current position to print to)
  LD HL,(23305)           ; Load HL with current position in frame of Magic
                          ; Knight graphic data, for Magic Knight's current
                          ; frame to erase [Magic Knight moving down /
                          ; horizontally] or current frame to draw [Magic
                          ; Knight moving up]
  LD B,A                  ; Load magnitude of y-velocity into B
; [This section draws / erases only top Y pixel rows, where Y is magnitude of
; Magic Knight's y-velocity. e.g. draw / erase 7 pixel rows if Magic Knight's
; y-velocity magnitude = 7)
  PUSH BC                 ; Store BC (B = magnitude of y-velocity)
  LD D,(HL)               ; Load byte of graphic data (right-hand column) into
                          ; D
  DEC HL                  ; Move back to previous byte of graphic data
  LD B,(HL)               ; Load byte of graphic data (right-hand column) into
                          ; B
  DEC HL                  ; Move back to previous byte of graphic data
  PUSH HL                 ; Store HL (pointer to current position in graphic
                          ; data)
  LD C,0                  ; Load C with zero (i.e. clear bits for loading of
                          ; graphic data)
  LD L,0                  ; Load L with zero (i.e. clear bits for loading of
                          ; graphic data)
  LD A,(23307)            ; Load A with Magic Knight's current (Magic Knight
                          ; moving down / horizontally) or predicted (Magic
                          ; Knight moving up) x-coordinate
                          ; (pixel-within-character) as stored previously
  OR A                    ; If value is zero...
  JP Z,39923              ; ...then skip ahead to 39923 (i.e. printing graphic
                          ; data as-is with no need to shift bits for
                          ; pixel-within-character offset)
  RR B                    ; Move graphic data one pixel right through D and
                          ; into C...
  RR D                    ; ...
  RR C                    ; ...
  DEC A                   ; Decrease A (as one less pixel space left to deal
                          ; with)
  JR NZ,39914             ; If A is not zero (i.e. not all pixels yet dealt
                          ; with) then loop back to 39649 for next one
  LD IX,(23303)           ; Load current position in bitmap Display File to
                          ; print to into IX
  LD A,B                  ; Print the three consecutive 8-pixel strips to
                          ; Display File, XORring with what is already there...
  XOR (IX+0)              ; ...
  LD (IX+0),A             ; ...
  INC IX                  ; ...
  LD A,D                  ; ...
  XOR (IX+0)              ; ...
  LD (IX+0),A             ; ...
  INC IX                  ; ...
  LD A,C                  ; ...
  XOR (IX+0)              ; ...
  LD (IX+0),A             ; ...
  LD HL,(23320)           ; Point HL at entry for Display File address of start
                          ; of pixel row for current mid-drawing position:
                          ; predicted (Magic Knight moving down / horizontally)
                          ; or current (Magic Knight moving up) in table at
                          ; 26064
  DEC HL                  ; Load Display File address of start of pixel row
                          ; above this into DE...
  LD D,(HL)               ; ...
  DEC HL                  ; ...
  LD E,(HL)               ; ...
  LD (23320),HL           ; ...and place decreased pointer (y-coordinate
                          ; offset, pixels) back at 23320
  LD HL,(23308)           ; Load HL with Magic Knight's current (Magic Knight
                          ; moving down / horizontally) or predicted (Magic
                          ; Knight moving up) x-coordinate (characters)
  ADD HL,DE               ; Add as offset to Display File address of start of
                          ; relevant pixel row in HL
  LD (23303),HL           ; Store at 23303 (current position to print to)
  POP HL                  ; Restore HL (pointer to current position in graphic
                          ; data)
  POP BC                  ; Restore BC (B = magnitude of y-velocity)
  DJNZ 39897              ; Loop back to 39897 for next pixel row up
  POP HL                  ; Restore HL (pointer to Magic Knight's current data,
                          ; stored at 39639)
  LD BC,(23331)           ; Load BC with Magic Knight's predicted x-coordinate
                          ; (pixels)
  LD (HL),C               ; Set Magic Knight's current x-coordinate to be value
                          ; in predicted x-coordinate
  INC HL                  ; Advance HL to Magic Knight's y-coordinate
  LD (HL),B               ; Set Magic Knight's current y-coordinate to be value
                          ; in predicted y-coordinate
  INC HL                  ; Advance HL to Magic Knight's current frame to erase
  LD A,(25390)            ; Set this to same as Magic Knight's current frame
                          ; number (as it is now drawn, so on the next call to
                          ; this routine it will be the one to be erased)...
  LD (HL),A               ; ...
  POP IX                  ; Restore IX
  RET                     ; Return

; Update Attributes at Magic Knight's Predicted Position
;
; Used by the routine at 39224.
  PUSH IX                 ; Store IX
  PUSH BC                 ; Store BC
  PUSH DE                 ; Store DE
  LD A,(23331)            ; Load Magic Knight's predicted x-coordinate into A
  RRCA                    ; Divide by eight, rounding down to nearest
                          ; integer...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  LD (23333),A            ; ...and store at 23333
  LD A,(23331)            ; Load three least significant bits of predicted
                          ; x-coordinate into 23335...
  AND 7                   ; ...
  LD (23335),A            ; ...
  LD A,(23332)            ; Load Magic Knight's predicted x-coordinate into A
  RRCA                    ; Divide by eight, rounding down to nearest
                          ; integer...
  RRCA                    ; ...
  RRCA                    ; ...
  AND 31                  ; ...
  LD (23334),A            ; ...and store at 23333
  LD A,(23332)            ; Load three least significant bits of predicted
                          ; x-coordinate into 23336...
  AND 7                   ; ...
  LD (23336),A            ; ...
  LD A,(23334)            ; Load predicted y-coordinate in characters into A
  ADD A,A                 ; Multiply by 8...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  LD H,0                  ; Load into HL...
  LD L,A                  ; ...
  ADD HL,HL               ; Multiply by 4 (i.e. 32 times original value)...
  ADD HL,HL               ; ...
  LD A,(23333)            ; Load predicted x-coordinate in characters into A
  LD D,0                  ; Load into DE...
  LD E,A                  ; ...
  ADD HL,DE               ; Add x-coordinate to 32 times y-coordinate (to get
                          ; offset from, for example, start of Attribute File)
  PUSH HL                 ; Store HL (x + 32*y offset value)
  LD DE,22528             ; Point DE at start of Attribute File
  ADD HL,DE               ; Add HL to address of start of Attribute File as
                          ; offset
  PUSH HL                 ; Transfer updated Display File address (predicted
                          ; attribute Display File address of Magic Knight)
                          ; from HL to IX...
  POP IX                  ; ...
  POP HL                  ; Restore HL (x + 32*y offset value)
  LD DE,24539             ; Point DE at start of Terrain Interaction Data
  ADD HL,DE               ; Add HL to DE as offset (in HL)
  LD B,0                  ; Load BC with 30, as 30 characters have to be
                          ; skipped when moving from right side of Magic Knight
                          ; on one character row to left side on next row...
  LD C,30                 ; ...
  LD A,(23335)            ; Load pixel-within-character predicted x-coordinate
                          ; of Magic Knight into A
  OR A                    ; If this is zero...
  JR Z,40074              ; ...then skip ahead to 40074...
  LD C,29                 ; ...else load BC with 29, as Magic Knight is spans
                          ; three characters rather than two
  LD DE,(23337)           ; Load Magic Knight's attribute and "Update
                          ; Attributes at Magic Knight's Predicted Position"
                          ; flag into DE
  EXX                     ; Switch registers
  LD C,4                  ; Load C with 4 (as Magic Knight is 4 characters
                          ; tall)
  LD A,(23336)            ; Load predicted pixel-within-character y-coordinate
  OR A                    ; If this is zero...
  JR Z,40089              ; ...then skip ahead to 40089...
  LD C,5                  ; ...else add one, as Magic Knight is "between"
                          ; characters, and therefore spans 5 characters tall
  LD B,2                  ; Load B with 2 (as Magic Knight is 2 characters
                          ; wide)
  LD A,(23335)            ; Load predicted pixel-within-character x-coordinate
  OR A                    ; If this is zero...
  JR Z,40099              ; ...then skip ahead to 40099...
  LD B,3                  ; ...else add one, as Magic Knight is "between"
                          ; characters, and therefore spans 3 characters wide
  LD A,B                  ; Load number of characters spanned by Magic Knight
                          ; into A...
  LD (40104),A            ; ...and into instruction at 40103
; The operand of the instruction at 40103 represents the number of characters
; spanned by Magic Knight horizontally. This is modified by the instruction at
; 40100.
  LD B,0                  ; Load B with number of characters spanned by Magic
                          ; Knight horizontally
  EXX                     ; Switch registers
  BIT 6,(HL)              ; If bit 6 (i.e. preserve attribute) is set in
                          ; Terrain Interaction Data for Magic Knight's
                          ; predicted x- and y-coordinates...
  JP NZ,40120             ; ...then skip ahead to 40120
  LD A,(IX+0)             ; Load attribute at Magic Knight's predicted x- and
                          ; y-coordinates into A
  XOR E                   ; XOR with Magic Knight's current attribute
  AND D                   ; Reset INK and BRIGHT bits, preserving only PAPER
                          ; and FLASH
  XOR E                   ; XOR with Magic Knight's current attribute (Magic
                          ; Knight's INK and BRIGHT bits override whatever was
                          ; there before)
  LD (IX+0),A             ; Load processed attribute value at Magic Knight's
                          ; predicted x- and y-coordinates back into Display
                          ; File
  INC HL                  ; Advance by one byte in Terrain Interaction Data
  INC IX                  ; Advance by one byte in Display File
  EXX                     ; Switch registers
  DJNZ 40105              ; Loop back to 40105 for next character in Magic
                          ; Knight's spanned characters
  EXX                     ; Switch registers
  ADD HL,BC               ; Advance pointer in Terrain Interaction Data by
                          ; 29/30 bytes (down to next row, depending on how
                          ; many characters Magic Knight spans)
  ADD IX,BC               ; Advance pointer in Attribute File by 29/30 bytes
                          ; (down to next row, depending on how many characters
                          ; Magic Knight spans)
  EXX                     ; Switch registers
  DEC C                   ; Decrease number of characters spanned by Magic
                          ; Knight vertically...
  JR NZ,40103             ; ...and if not zero (i.e. more to go) then loop back
                          ; to 40103
  EXX                     ; Switch registers
  POP DE                  ; Restore DE
  POP BC                  ; Restore BC
  POP IX                  ; Restore IX
  RET                     ; Return

; Data - currently selected control device
  DEFB 65

; Magic Knight's initial data
  DEFB 128                ; x-coordinate (pixels)
  DEFB 110                ; y-coordinate (pixels)
  DEFB 0                  ; Frame Number (frame to erase)
  DEFB 0                  ; Frame Number (frame to draw)
  DEFB 0                  ; x velocity (pixels) [walking / jumping sideways,
                          ; usually 2 for right and 254 / -2 for left]
  DEFB 0                  ; y velocity (pixels) [jumping]
  DEFB 69                 ; Attribute
  DEFB 184                ; Update Attributes Mask (zeroes BRIGHT and INK
                          ; component of existing attribute so that Magic
                          ; Knight's INK and BRIGHT bits override) (used by
                          ; routine at 39989)

; Common Words Table
;
; This data block contains a list of zero-terminated (sub-)strings. Other text
; blocks reference this table when a particular string is required. This
; reduces the space requirements for storage of all of the game's text.
  DEFM 14,14,0            ; carriage return / line feed}{carriage return / line
                          ; feed
  DEFM 16,5,0             ; change INK colour to cyan
  DEFM 9,9,0              ; move text cursor right by two characters
  DEFM 14,16,7,0          ; carriage return / line feed}{change INK colour to
                          ; white
  DEFM "INSTRUCTION",0    ; INSTRUCTION
  DEFM " = ",0            ; =
  DEFM "A ",0             ; A
  DEFM "AN ",0            ; AN
  DEFM "TO ",0            ; TO
  DEFM "COMMAND",0        ; COMMAND
  DEFM "CHARACTER",0      ; CHARACTER
  DEFM "FROM ",0          ; FROM
  DEFM "OBJECT ",0        ; OBJECT
  DEFM "AND ",0           ; AND
  DEFM "YOU ",0           ; YOU
  DEFM "GAME ",0          ; GAME
  DEFM "EXAMINE ",0       ; EXAMINE
  DEFM "ANY ",0           ; ANY
  DEFM "KEY",0            ; KEY
  DEFM "   ",0
  DEFM "THE ",0           ; THE
  DEFM "WHICH ",0         ; WHICH
  DEFM "TAKE ",0          ; TAKE
  DEFM "GIVE ",0          ; GIVE
  DEFM "SUMMON ",0        ; SUMMON
  DEFM "LOCATE",0         ; LOCATE
  DEFM 130," ",111,"WIZARD ",0 ; GIMBAL THE WIZARD
  DEFM 131,0              ; THOR
  DEFM 132," ",111,"DWARF ",0 ; FLORIN THE DWARF
  DEFM 133," ",111,"CLERIC ",0 ; ORIK THE CLERIC
  DEFM 134," ",111,"STRONG ",0 ; SAMSUN THE STRONG
  DEFM 135," HALFELVEN ",0 ; ELRAND HALFELVEN
  DEFM "LADY ",136,0      ; LADY ROSMAR
  DEFM 111,137,0          ; THE BANSHEE
  DEFM "SOMETHING ",0     ; SOMETHING
  DEFM "TELEPORT ",0      ; TELEPORT
  DEFM " JOYSTICK ",0     ; JOYSTICK
  DEFM "HELP ",0          ; HELP
  DEFM "DAVID JONES",0    ; DAVID JONES
  DEFM "GIMBAL",0         ; GIMBAL
  DEFM "THOR",0           ; THOR
  DEFM "FLORIN",0         ; FLORIN
  DEFM "ORIK",0           ; ORIK
  DEFM "SAMSUN",0         ; SAMSUN
  DEFM "ELRAND",0         ; ELRAND
  DEFM "ROSMAR",0         ; ROSMAR
  DEFM "BANSHEE",0        ; BANSHEE
  DEFM "CRYSTAL",0        ; CRYSTAL
  DEFM "THIS ",0          ; THIS
  DEFM "NOTHING",0        ; NOTHING
  DEFM "THROW ",0         ; THROW
  DEFM "THERE ",0         ; THERE
  DEFM "THEIR",0          ; THEIR
  DEFM "MAGIC KNIGHT",0   ; MAGIC KNIGHT
  DEFM "BOOK",0           ; BOOK
  DEFM "READ ",0          ; READ
  DEFM "YES",0            ; YES
  DEFM "NO",0             ; NO
  DEFM "BOTTLE",0         ; BOTTLE
  DEFM " OF ",0           ; OF
  DEFM "ROOF",0           ; ROOF
  DEFM "4TH ",177,0       ; 4TH FLOOR
  DEFM "3RD ",177,0       ; 3RD FLOOR
  DEFM "2ND ",177,0       ; 2ND FLOOR
  DEFM "1ST ",177,0       ; 1ST FLOOR
  DEFM "GROUND ",177,0    ; GROUND FLOOR
  DEFM "BASEMENT",0       ; BASEMENT
  DEFM " ",0
  DEFM "   ",0
  DEFM 159,"  ",0
  DEFM 160,"  ",0
  DEFM 161,"  ",0
  DEFM 162,"  ",0
  DEFM 163,"  ",0
  DEFM "SPELLBOUND",0     ; SPELLBOUND
  DEFM "COPYRIGHT ",0     ; COPYRIGHT
  DEFM " IS",14           ; IS TOO TIRED TO
  DEFM "TOO TIRED TO",0
  DEFM 92,29,14           ; name of Current Object} YE UNBINDE SPELL HOLD IN
                          ; THY HAND A MOST MAGIC OBJECT YOU CAST THEE ONCE THY
                          ; SPELL OF
  DEFM 14
  DEFM "YE UNBINDE ",175,14
  DEFM 14
  DEFM "HOLD IN THY HAND aMOST",14
  DEFM "MAGIC OBJECT i",174,14
  DEFM "THEE ONCE THY ",175," OF",14,0
  DEFM "HERE",0           ; HERE
  DEFM "YET",0            ; YET
  DEFM 111,"ROOF GARDEN",0 ; THE ROOF GARDEN
  DEFM "SECRET TUNNEL",0  ; SECRET TUNNEL
  DEFM "QUITICUS GAMUS",0 ; QUITICUS GAMUS
  DEFM "CAST",0           ; CAST
  DEFM "SPELL",0          ; SPELL
  DEFM "FUMATICUS PROTECTIUM",0 ; FUMATICUS PROTECTIUM
  DEFM "FLOOR",0          ; FLOOR
  DEFM "ROOM",0           ; ROOM
  DEFM "CRYSTALLIUM SPECTRALIS",0 ; CRYSTALLIUM SPECTRALIS
  DEFM "CANDELIUM ILLUMINATUS",0 ; CANDELIUM ILLUMINATUS
  DEFM "ARMOURIS PHOTONICUS",0 ; ARMOURIS PHOTONICUS
  DEFM "PROJECT PHYSICAL BODY",0 ; PROJECT PHYSICAL BODY
  DEFM "RELEASE ",175,0   ; RELEASE SPELL
  DEFM "HAPPY",0          ; HAPPY
  DEFM "SAYS",0           ; SAYS
  DEFM "YOUR",0           ; YOUR
  DEFM "CANDLE",0         ; CANDLE
  DEFM "ALREADY",0        ; ALREADY
  DEFM "LUMP OF BRICKWORK",0 ; LUMP OF BRICKWORK
  DEFM "MASTERTRONIC ",0  ; MASTERTRONIC
  DEFM "LIFT",0           ; LIFT
  DEFM "IS ",0            ; IS
  DEFM "TIME",0           ; TIME
  DEFM "MAGIC",0          ; MAGIC

; Characters' Initial Inventories
;
; Nine groups of five bytes, one group per character (including Magic Knight).
; Each of the five bytes per group represents an inventory slot for that
; character. A value of zero indicates that the slot is empty. Non-zero values
; correspond to indices of objects (e.g. 3 = Miolnir)
  DEFB 43,0,0,0,0         ; Magic Knight
  DEFB 0,0,0,0,0          ; Gimbal the Wizard
  DEFB 0,0,0,0,0          ; Thor
  DEFB 4,0,0,0,0          ; Florin the Dwarf
  DEFB 0,0,0,0,0          ; Orik the Cleric
  DEFB 29,38,0,0,0        ; Samsun the Strong
  DEFB 3,28,0,0,0         ; Elrand Halfelven
  DEFB 24,18,0,0,0        ; Lady Rosmar
  DEFB 0,0,0,0,0          ; The Banshee

; Characters' Initial Positions
;
; Eight groups of three bytes, one group per character (excluding Magic
; Knight). The values are:
  DEFB 48,6,2             ; Gimbal the Wizard
  DEFB 23,0,0             ; Thor
  DEFB 20,0,0             ; Florin the Dwarf
  DEFB 32,0,0             ; Orik the Cleric
  DEFB 28,0,0             ; Samsun the Strong
  DEFB 25,0,0             ; Elrand Halfelven
  DEFB 4,0,0              ; Lady Rosmar
  DEFB 99,0,0             ; The Banshee

; Objects' Initial Positions
;
; Fifty groups of three bytes, one group per object. The values are:
  DEFB 99,0,0             ; "Nothing at All"
  DEFB 9,28,17            ; Ancient Scroll
  DEFB 26,4,17            ; Book of Shadows
  DEFB 99,0,0             ; Miolnir
  DEFB 99,0,0             ; Axe
  DEFB 33,8,17            ; Sticky Bun
  DEFB 0,2,17             ; Crystal Ball
  DEFB 8,10,17            ; Wand of Command
  DEFB 16,12,17           ; Javelin
  DEFB 29,28,17           ; Cannon Ball
  DEFB 37,15,9            ; Tube of Glue
  DEFB 46,26,9            ; Broken Talisman
  DEFB 99,0,0             ; Magic Talisman
  DEFB 2,15,17            ; Runestone
  DEFB 99,0,0             ; Broken Glass
  DEFB 34,20,17           ; Book of Runes
  DEFB 22,20,7            ; Glowing Bottle
  DEFB 34,28,17           ; Gold Goblet
  DEFB 99,0,0             ; Fast Blow Fuse
  DEFB 22,2,17            ; Red Herring
  DEFB 27,26,17           ; Brick
  DEFB 12,15,9            ; Green Crystal
  DEFB 31,12,17           ; Blue Crystal
  DEFB 9,14,7             ; Red Crystal
  DEFB 99,0,0             ; Willow Rod
  DEFB 99,12,17           ; Lump of Brickwork
  DEFB 1,20,17            ; Bottle of Liquid
  DEFB 1,8,17             ; Four Leaf Clover
  DEFB 99,0,0             ; Loaf of Elf-Bread
  DEFB 99,0,0             ; Platform
  DEFB 29,6,17            ; Gold Bar
  DEFB 18,8,17            ; Pewter Tankard
  DEFB 31,16,17           ; White Gold Ring
  DEFB 17,5,17            ; Engraved Candle
  DEFB 42,10,17           ; Strange Liquid
  DEFB 19,15,9            ; Mirror
  DEFB 42,14,17           ; Pocket Laser
  DEFB 6,16,17            ; Prism
  DEFB 99,0,0             ; Elf-Horn
  DEFB 20,18,17           ; Saxophone
  DEFB 40,16,17           ; Trumpet
  DEFB 24,3,17            ; Instruction Book
  DEFB 17,9,17            ; Key
  DEFB 99,0,0             ; Advert
  DEFB 99,16,17           ; Lump of Brickwork
  DEFB 28,24,17           ; Empty Bottle
  DEFB 49,6,17            ; Power-Pong Plant
  DEFB 41,28,17           ; Shield
  DEFB 21,2,17            ; Teleport Key
  DEFB 23,20,17           ; Teleport Pad

; Object Names
  DEFM 140," AT ALL ",0   ; NOTHING AT ALL
  DEFM "ANCIENT SCROLL",0 ; ANCIENT SCROLL
  DEFM 145,150,"SHADOWS",0 ; BOOK OF SHADOWS
  DEFM "MIOLNIR",0        ; MIOLNIR
  DEFM "AXE",0            ; AXE
  DEFM "STICKY BUN",0     ; STICKY BUN
  DEFM 138," BALL",0      ; CRYSTAL BALL
  DEFM "W",104,"OF ",100,0 ; WAND OF COMMAND
  DEFM "JAVELIN",0        ; JAVELIN
  DEFM "CANNON BALL",0    ; CANNON BALL
  DEFM "TUBE",150,"GLUE",0 ; TUBE OF GLUE
  DEFM "BROKEN TALISMAN",0 ; BROKEN TALISMAN
  DEFM 194," TALISMAN",0  ; MAGIC TALISMAN
  DEFM "RUNESTONE",0      ; RUNESTONE
  DEFM "BROKEN GLASS",0   ; BROKEN GLASS
  DEFM 145,150,"RUNES",0  ; BOOK OF RUNES
  DEFM "GLOWING ",149,0   ; GLOWING BOTTLE
  DEFM "GOLD GOBLET",0    ; GOLD GOBLET
  DEFM "FAST BLOW FUSE",0 ; FAST BLOW FUSE
  DEFM "RED HERRING",0    ; RED HERRING
  DEFM "BRICK",0          ; BRICK
  DEFM "GREEN ",138,0     ; GREEN CRYSTAL
  DEFM "BLUE ",138,0      ; BLUE CRYSTAL
  DEFM "RED ",138,0       ; RED CRYSTAL
  DEFM "WILLOW ROD",0     ; WILLOW ROD
  DEFM 189,0              ; LUMP OF BRICKWORK
  DEFM 149,150,"LIQUID",0 ; BOTTLE OF LIQUID
  DEFM "FOUR LEAF CLOVER",0 ; FOUR LEAF CLOVER
  DEFM "LOAF",150,"ELF-B",146,0 ; LOAF OF ELF-BREAD
  DEFM "PLATFORM",0       ; PLATFORM
  DEFM "GOLD BAR",0       ; GOLD BAR
  DEFM "PEWTER TANKARD",0 ; PEWTER TANKARD
  DEFM "WHITE GOLD RING",0 ; WHITE GOLD RING
  DEFM "ENGRAVED ",187,0  ; ENGRAVED CANDLE
  DEFM "STRANGE LIQUID",0 ; STRANGE LIQUID
  DEFM "MIRROR",0         ; MIRROR
  DEFM "POCKET LASER",0   ; POCKET LASER
  DEFM "PRISM",0          ; PRISM
  DEFM "ELF-HORN",0       ; ELF-HORN
  DEFM "SAXAPHONE",0      ; SAXAPHONE [bug]
  DEFM "TRUMPET",0        ; TRUMPET
  DEFM 95," ",145,0       ; INSTRUCTION BOOK
  DEFM 109,0              ; KEY
  DEFM "ADVERT",0         ; ADVERT
  DEFM 189,0              ; LUMP OF BRICKWORK
  DEFM "EMPTY BOTTLE",0   ; EMPTY BOTTLE
  DEFM "POWER-PONG PLANT",0 ; POWER-PONG PLANT
  DEFM "SHIELD",0         ; SHIELD
  DEFM 126,109,0          ; TELEPORT KEY
  DEFM 126,"PAD",0        ; TELEPORT PAD

; Room Connectivity Data
;
; Two values per room:
  DEFB 255,1              ; The Lift
  DEFB 0,2,1,3,2,4,3,5,4,6,5,7,6,8,7,255 ; Roof
  DEFB 255,10,9,11,10,12,11,13,12,14,13,15,14,16,15,255 ; 4th Floor
  DEFB 255,18,17,19,18,20,19,21,20,22,21,23,22,24,23,255 ; 3rd Floor
  DEFB 255,26,25,27,26,28,27,29,28,30,29,31,30,32,31,255 ; 2nd Floor
  DEFB 255,34,33,35,34,36,35,37,36,38,37,39,38,40,39,255 ; 1st Floor
  DEFB 255,42,41,43,42,44,43,45,44,46,45,47,46,48,47,255 ; Ground Floor
  DEFB 255,255            ; Basement

; Keyboard Shortcuts for Commands
  DEFM "PDTGHECLXRYSBWV"
  DEFB 0

; Routine Start Addresses for Magic Knight's Commands (Main Menu)
  DEFW 30222              ; Process command to pick up an object
  DEFW 30439              ; Process command to drop an object
  DEFW 30602              ; Process command to take an object
  DEFW 30880              ; Process command to give an object
  DEFW 31153              ; Display and Handle Main In-Game Menu
  DEFW 31370              ; Process command to examine an object, a character
                          ; or Magic Knight
  DEFW 31636              ; Process and Execute Command to Command a Character
  DEFW 32035              ; Process command to locate a character
  DEFW 32194              ; Process command to teleport
  DEFW 32258              ; Process and Execute Command to Read an Object
  DEFW 32390              ; Process command to throw an object
  DEFW 32655              ; Process command to cast a spell
  DEFW 33312              ; Process command to blow an object
  DEFW 33593              ; Process command to call Lift
  DEFW 33663              ; Process command to move Lift

; Store for address of current position in Magic Knight's y-velocities sequence
; table at 41857
  DEFW 0

; Magic Knight's y-Velocities Sequence for Jumping and Falling
;
; This is the sequence of y-velocity increments / decrements applied to Magic
; Knight's y-coordinate when he is jumping or falling. The data is
; zero-terminated.
  DEFB 7,7,6,6,5,5,4,4
  DEFB 3,3,2,2,1,1,0

; Window Data
;
; Eight bytes per window. The meaning of the data is:
  DEFB 0,23,0,14,117,79,1,79 ; (00) Main (Game) Window
  DEFB 0,31,19,23,101,67,0,79 ; (01) Command Summary Window
  DEFB 0,25,0,9,117,68,0,79 ; (02) Window showing an object's read text (i.e.
                            ; "READ OBJECT successful" window)
  DEFB 0,22,0,12,117,68,2,79 ; (03) Character Selection Window
  DEFB 0,23,0,8,117,70,1,79 ; (04) List of objects window (menu or info)
  DEFB 5,26,1,6,101,70,0,0 ; (05) "SPELLBOUND A TRUE GRAPHIC ADVENTURE BY DAVID
                           ; JONES COPYRIGHT 1985" window above Control
                           ; Selection Window
  DEFB 0,31,10,19,101,70,0,69 ; (06) Control Selection Window
  DEFB 0,31,10,21,117,70,0,79 ; (07) Instructions Window (1/3)
  DEFB 3,28,9,19,117,84,0,14 ; (08) Instructions Window (2/3)
  DEFB 5,26,8,22,117,115,0,69 ; (09) Instructions Window (3/3)
  DEFB 0,0,0,0,117,7,0,7  ; (10) 2nd Floor portraits and Florin's Room Picture
                          ; frame
  DEFB 0,19,0,4,117,76,0,70 ; (11) "EXECUTE / REJECT COMMAND" Window
  DEFB 0,15,0,4,117,98,0,104 ; (12) "THERE IS NO WRITING FOR ME TO READ" window
  DEFB 0,18,0,3,117,67,0,78 ; (13) Pick Up / Drop / Give / Take failed
                            ; (including "THOR IS ANGRY...") messages window
  DEFB 0,18,15,18,117,70,0,205 ; (14) "PRESS SPACE OR FIRE TO CONTINUE" window
  DEFB 0,31,19,23,101,78,0,69 ; (15) In-game window at bottom of screen
                              ; ("SPELLBOUND COPYRIGHT MASTERTRONIC..." / Magic
                              ; Knight's strength and inventory if carrying
                              ; mirror)
  DEFB 0,15,0,6,117,98,1,112 ; (16) "EXAMINE WHAT?" Window
  DEFB 0,16,0,4,117,67,0,78 ; (17) "IT IS NOT SAFE TO TELEPORT..." window
  DEFB 0,22,0,12,117,67,0,120 ; (18) "EXAMINE YOURSELF" / "EXAMINE CHARACTER"
                              ; Window
  DEFB 2,5,3,8,117,68,0,71 ; (19) Frame around portrait of character on
                           ; "EXAMINE CHARACTER" and "EXAMINE YOURSELF" windows
  DEFB 0,22,0,9,117,67,0,120 ; (20) "EXAMINE OBJECT" Window
  DEFB 2,5,4,7,117,69,0,69 ; (21) Frame around object in "EXAMINE OBJECT"
                           ; Window
  DEFB 0,11,0,11,117,78,0,71 ; (22) "LOCATE A CHARACTER" Window
  DEFB 0,22,0,10,117,77,2,78 ; (23) "WHICH COMMAND DO YOU WANT TO USE?"
                             ; ("COMMAND [CHARACTER] TO...") Window
  DEFB 0,21,0,2,117,98,0,120 ; (24) "Command a character to help successful"
                             ; window / Lift Messages Window
  DEFB 0,16,0,10,117,77,1,71 ; (25) "TAKE LIFT TO:" Window
  DEFB 0,23,0,10,117,67,0,71 ; (26) "YOU DROPPED THE BOTTLE TO THE GROUND..."
                             ; Window
  DEFB 0,15,0,5,117,115,0,112 ; (27) "WHAT A RACKET" / "WHAT A LOT OF DUST"
                              ; Window
  DEFB 0,22,0,3,117,68,2,71 ; (28) Summoning messages
  DEFB 0,19,0,3,117,68,2,71 ; (29) "Result of commanding a character" Window
  DEFB 0,26,0,1,117,87,2,87 ; (30) Spell Selection Window
  DEFB 4,27,1,12,117,87,0,87 ; (31) Red death information window
  DEFB 0,31,0,10,117,96,0,96 ; (32) Green "GIMBAL IS NOT YET RELEASED..."
                             ; Window
  DEFB 4,27,1,12,117,104,0,104 ; (33) Game Over Window
  DEFB 0,10,0,3,117,104,0,104 ; (34) "[CHARACTER] IS ASLEEP" window
  DEFB 0,23,0,3,117,68,0,71 ; (35) "Result of casting a spell (or failing)"
                            ; Window
  DEFB 0,31,16,23,101,67,0,79 ; (36) "WELL DONE MAGIC KNIGHT..." window

; Characters' Initial Stats
;
; Nine groups of eight bytes, one group per character (including Magic Knight).
; The values are:
  DEFB 70,17,82,14,62,0,0,1 ; Magic Knight
  DEFB 90,70,30,250,100,0,12,2 ; Gimbal the Wizard
  DEFB 100,65,41,10,210,0,12,3 ; Thor
  DEFB 40,60,52,15,250,0,140,4 ; Florin the Dwarf
  DEFB 50,55,63,55,180,0,140,5 ; Orik the Cleric
  DEFB 100,50,74,5,200,0,12,6 ; Samsun the Strong
  DEFB 60,45,75,60,250,0,12,7 ; Elrand Halfelven
  DEFB 80,40,76,5,165,0,12,8 ; Lady Rosmar
  DEFB 0,0,0,100,0,1,0,9  ; The Banshee

; Object Properties
;
; Fifty groups of eight bytes, one group per object (including "Nothing at
; All"). The values are:
  DEFB 0,0,0,0,0,0,0,0    ; "Nothing at All"
  DEFB 1,0,128,0,0,0,71,7 ; Ancient Scroll
  DEFB 1,0,129,10,0,0,70,18 ; Book of Shadows
  DEFB 25,0,0,12,18,0,70,16 ; Miolnir
  DEFB 10,0,0,0,18,0,70,15 ; Axe
  DEFB 1,1,0,0,0,0,71,26  ; Sticky Bun
  DEFB 2,0,139,35,0,0,71,5 ; Crystal Ball
  DEFB 1,0,0,37,0,0,70,27 ; Wand of Command
  DEFB 5,0,0,0,18,0,70,28 ; Javelin
  DEFB 20,0,0,0,18,0,69,5 ; Cannon Ball
  DEFB 1,1,0,0,0,0,70,29  ; Tube of Glue
  DEFB 1,0,0,0,0,0,70,30  ; Broken Talisman
  DEFB 1,0,0,85,0,0,70,31 ; Magic Talisman
  DEFB 10,0,130,90,16,0,70,17 ; Runestone
  DEFB 1,0,0,0,0,0,71,24  ; Broken Glass
  DEFB 1,0,131,57,0,0,68,18 ; Book of Runes
  DEFB 1,2,148,0,0,0,71,6 ; Glowing Bottle
  DEFB 5,0,0,17,18,0,70,32 ; Gold Goblet
  DEFB 1,0,0,0,0,0,0,0    ; Fast Blow Fuse
  DEFB 1,0,145,25,0,0,66,8 ; Red Herring
  DEFB 25,0,0,0,18,0,6,13 ; Brick
  DEFB 2,0,0,33,34,0,68,3 ; Green Crystal
  DEFB 2,0,0,33,34,0,65,3 ; Blue Crystal
  DEFB 2,0,0,33,34,0,66,3 ; Red Crystal
  DEFB 1,0,0,31,0,0,70,33 ; Willow Rod
  DEFB 1,0,0,0,0,0,7,25   ; Lump of Brickwork
  DEFB 2,0,135,0,0,0,68,6 ; Bottle of Liquid
  DEFB 1,0,0,16,0,0,68,37 ; Four Leaf Clover
  DEFB 1,0,0,0,0,0,71,11  ; Loaf of Elf-Bread
  DEFB 80,0,0,0,16,0,67,25 ; Platform
  DEFB 30,0,0,0,18,0,70,13 ; Gold Bar
  DEFB 1,0,132,0,0,0,71,21 ; Pewter Tankard
  DEFB 1,0,0,100,0,0,71,20 ; White Gold Ring
  DEFB 1,0,133,77,0,0,70,22 ; Engraved Candle
  DEFB 1,0,0,0,0,0,69,10  ; Strange Liquid
  DEFB 1,0,0,0,0,0,71,14  ; Mirror
  DEFB 1,0,144,0,0,0,69,19 ; Pocket Laser
  DEFB 1,0,0,0,0,0,69,39  ; Prism
  DEFB 1,0,0,81,1,0,68,23 ; Elf-Horn
  DEFB 1,0,146,46,1,0,70,35 ; Saxophone
  DEFB 1,0,0,0,1,0,70,36  ; Trumpet
  DEFB 2,0,128,0,0,0,67,18 ; Instruction Book
  DEFB 1,0,151,0,0,0,70,12 ; Key
  DEFB 1,0,134,0,0,0,70,38 ; Advert
  DEFB 1,0,0,0,0,0,7,25   ; Lump of Brickwork
  DEFB 1,0,135,0,0,0,69,6 ; Empty Bottle
  DEFB 1,0,150,0,0,0,70,34 ; Power-Pong Plant
  DEFB 1,0,0,0,0,0,71,4   ; Shield
  DEFB 1,0,149,0,0,0,67,12 ; Teleport Key
  DEFB 20,0,147,0,0,0,69,9 ; Teleport Pad

; Graphic Lookup Table
;
; Three values per graphic. First two are BYTEs and third is a WORD. The values
; are:
  DEFB 2,4,244,247        ; (000) - Graphics (63476) - Magic Knight Frame 1
                          ; (Right)
  DEFB 6,6,148,246        ; (001) - Graphics (63124) - "Locate a Character"
                          ; Compass
  DEFB 2,2,173,213        ; (002) - Graphics (54701) - Menu Cursor (Hand)
  DEFB 255,85,52,245      ; (003) - Graphics (62772) - Crystal (Object)
  DEFB 255,85,84,245      ; (004) - Graphics (62804) - Shield (Object)
  DEFB 255,85,116,245     ; (005) - Graphics (62836) - Cannon / Crystal Ball
                          ; (Object)
  DEFB 255,17,148,245     ; (006) - Graphics (62868) - Bottle (Object)
  DEFB 255,85,180,245     ; (007) - Graphics (62900) - Ancient Scroll (Object)
  DEFB 255,5,212,245      ; (008) - Graphics (62932) - Red Herring (Object)
  DEFB 255,0,244,245      ; (009) - Graphics (62964) - Teleport Pad (Object)
  DEFB 255,0,20,246       ; (010) - Graphics (62996) - Pool of Liquid (Object)
  DEFB 255,85,52,246      ; (011) - Graphics (63028) - Loaf of Bread (Object)
  DEFB 255,5,84,246       ; (012) - Graphics (63060) - (Teleport) Key (Object)
  DEFB 255,5,116,246      ; (013) - Graphics (63092) - Brick / Gold Bar
                          ; (Object)
  DEFB 255,85,212,243     ; (014) - Graphics (62420) - Mirror (Object)
  DEFB 255,85,244,243     ; (015) - Graphics (62452) - Axe (Object)
  DEFB 255,85,20,244      ; (016) - Graphics (62484) - Miolnir (Object)
  DEFB 255,85,52,244      ; (017) - Graphics (62516) - Runestone (Object)
  DEFB 255,85,84,244      ; (018) - Graphics (62548) - Book (Object)
  DEFB 255,5,116,244      ; (019) - Graphics (62580) - Pocket Laser (Object)
  DEFB 255,85,148,244     ; (020) - Graphics (62612) - White Gold Ring (Object)
  DEFB 255,85,180,244     ; (021) - Graphics (62644) - Pewter Tankard (Object)
  DEFB 255,17,212,244     ; (022) - Graphics (62676) - Engraved Candle (Object)
  DEFB 255,85,244,244     ; (023) - Graphics (62708) - Elf Horn (Object)
  DEFB 255,0,20,245       ; (024) - Graphics (62740) - Broken Glass (Object)
  DEFB 255,255,116,242    ; (025) - Graphics (62068) - Lump of Brickwork
                          ; (Object)
  DEFB 255,5,148,242      ; (026) - Graphics (62100) - Sticky Bun (Object)
  DEFB 255,17,180,242     ; (027) - Graphics (62132) - Wand of Command (Object)
                          ; [bug]
  DEFB 255,85,212,242     ; (028) - Graphics (62164) - Javelin (Object)
  DEFB 255,5,244,242      ; (029) - Graphics (62196) - Tube of Glue (Object)
  DEFB 255,5,20,243       ; (030) - Graphics (62228) - Broken Talisman (Object)
  DEFB 255,17,52,243      ; (031) - Graphics (62260) - Magic Talisman (Object)
                          ; [bug]
  DEFB 255,85,84,243      ; (032) - Graphics (62292) - Goblet (Object) [bug]
  DEFB 255,85,116,243     ; (033) - Graphics (62324) - Willow Rod (Object)
  DEFB 255,85,148,243     ; (034) - Graphics (62356) - Power Pong Plant
                          ; (Object)
  DEFB 255,85,180,243     ; (035) - Graphics (62388) - Saxophone (Object)
  DEFB 255,85,20,241      ; (036) - Graphics (61716) - Trumpet
  DEFB 255,85,52,241      ; (037) - Graphics (61748) - Four Leaf Clover
  DEFB 255,85,84,241      ; (038) - Graphics (61780) - Advert
  DEFB 255,85,116,241     ; (039) - Graphics (61812) - Prism
  DEFB 2,2,148,241        ; (040) - Graphics (61844) - Plant Pot (1)
  DEFB 2,1,180,241        ; (041) - Graphics (61876) - Plant Pot (2)
  DEFB 2,2,196,241        ; (042) - Graphics (61892) - Plant Pot (3)
  DEFB 2,3,228,241        ; (043) - Graphics (61924) - Goblet (from Picture in
                          ; Florin's Room)
  DEFB 2,3,20,242         ; (044) - Graphics (61972) - Plant Pot (4)
  DEFB 2,3,68,242         ; (045) - Graphics (62020) - Plant (7)
  DEFB 0,0,0,0            ; (046) - Unused
  DEFB 8,5,212,239        ; (047) - Graphics (61396) - Tree Trunk (2)
  DEFB 8,5,84,237         ; (048) - Graphics (60756) - Tree Top (2)
  DEFB 8,5,148,238        ; (049) - Graphics (61076) - Tree Top (3)
  DEFB 2,5,116,236        ; (050) - Graphics (60532) - Plant (3)
  DEFB 2,3,196,236        ; (051) - Graphics (60612) - Plant (4)
  DEFB 2,3,244,236        ; (052) - Graphics (60660) - Plant (5)
  DEFB 2,3,36,237         ; (053) - Graphics (60708) - Plant (6)
  DEFB 2,4,164,235        ; (054) - Graphics (60324) - Wall Bracketed Candle
  DEFB 3,2,228,235        ; (055) - Graphics (60388) - Right-Facing Candle Wall
                          ; Bracket
  DEFB 1,3,20,236         ; (056) - Graphics (60436) - Right-Facing Candle Wall
                          ; Bracket Plate
  DEFB 3,2,44,236         ; (057) - Graphics (60460) - Left-Facing Candle Wall
                          ; Bracket
  DEFB 1,3,92,236         ; (058) - Graphics (60508) - Left-Facing Candle Wall
                          ; Bracket Plate
  DEFB 5,5,156,232        ; (059) - Graphics (59548) - Picture in Frame (1)
  DEFB 9,5,100,233        ; (060) - Graphics (59748) - Picture in Frame (2)
  DEFB 3,2,204,234        ; (061) - Graphics (60108) - Landscape 1 (from framed
                          ; picture)
  DEFB 7,3,252,234        ; (062) - Graphics (60156) - Landscape 2 (from framed
                          ; picture)
  DEFB 2,3,124,231        ; (063) - Graphics (59260) - Puff of Smoke Frame 1
  DEFB 2,3,172,231        ; (064) - Graphics (59308) - Puff of Smoke Frame 2
  DEFB 2,3,220,231        ; (065) - Graphics (59356) - Puff of Smoke Frame 3
  DEFB 2,3,12,232         ; (066) - Graphics (59404) - Puff of Smoke Frame 4
  DEFB 2,3,60,232         ; (067) - Graphics (59452) - Puff of Smoke Frame 5
  DEFB 2,3,108,232        ; (068) - Graphics (59500) - Puff of Smoke Frame 6
  DEFB 2,4,124,229        ; (069) - Graphics (58748) - Gimbal the Wizard
  DEFB 2,4,188,229        ; (070) - Graphics (58812) - Thor
  DEFB 2,4,252,229        ; (071) - Graphics (58876) - Florin the Dwarf
  DEFB 2,4,60,230         ; (072) - Graphics (58940) - Orik the Cleric
  DEFB 2,4,124,230        ; (073) - Graphics (59004) - Samsun the Strong
  DEFB 2,4,188,230        ; (074) - Graphics (59068) - Elrand Halfelven
  DEFB 2,4,252,230        ; (075) - Graphics (59132) - Lady Rosmar
  DEFB 2,4,60,231         ; (076) - Graphics (59196) - The Banshee
  DEFB 4,9,92,228         ; (077) - Graphics (58460) - Lift Control Panel
  DEFB 2,2,148,227        ; (078) - Graphics (58260) - Mushroom (1)
  DEFB 2,2,180,227        ; (079) - Graphics (58292) - Mushroom (2)
  DEFB 2,2,212,227        ; (080) - Graphics (58324) - Mushroom (3)
  DEFB 2,2,244,227        ; (081) - Graphics (58356) - Mushroom (4)
  DEFB 3,3,20,228         ; (082) - Graphics (58388) - Large Mushroom
  DEFB 2,4,84,227         ; (083) - Graphics (58196) - Lift Door
  DEFB 6,4,244,225        ; (084) - Graphics (57844) - Tree Top (1)
  DEFB 4,5,180,226        ; (085) - Graphics (58036) - Tree Trunk (1)
  DEFB 8,5,180,224        ; (086) - Graphics (57524) - Wall axes
  DEFB 2,5,164,223        ; (087) - Graphics (57252) - Unknown
  DEFB 2,2,244,223        ; (088) - Graphics (57332) - Unknown
  DEFB 2,5,20,224         ; (089) - Graphics (57364) - Plant (1)
  DEFB 2,5,100,224        ; (090) - Graphics (57444) - Plant (2)
  DEFB 3,10,180,222       ; (091) - Graphics (57012) - Wall clock
  DEFB 6,7,100,221        ; (092) - Graphics (56676) - Stag's Head
  DEFB 4,4,36,220         ; (093) - Graphics (56356) - Big Bottle Top
  DEFB 4,4,164,220        ; (094) - Graphics (56484) - Big / Little Bottle Body
  DEFB 4,2,36,221         ; (095) - Graphics (56612) - Little Bottle Top
  DEFB 3,6,148,219        ; (096) - Graphics (56212) - Ceiling Candles
  DEFB 5,2,4,218          ; (097) - Graphics (55812) - Books (1)
  DEFB 5,3,84,218         ; (098) - Graphics (55892) - Books (2)
  DEFB 5,3,204,218        ; (099) - Graphics (56012) - Books (3)
  DEFB 5,2,68,219         ; (100) - Graphics (56132) - Books (4)
  DEFB 3,2,164,217        ; (101) - Graphics (55716) - Right bookend
  DEFB 3,2,212,217        ; (102) - Graphics (55764) - Left bookend

; "HELLO HACKER" text
  DEFM "HELLO HACKER",13  ; HELLO HACKER FANCY MEETING YOU HERE !
  DEFM 13
  DEFM "FANCY MEETING ",105,"HERE !"
  DEFM 0

; Miscellaneous Text (1)
  DEFM 92," ",165,16,6," ",97,"TRUE",14 ; SPELLBOUND A TRUE GRAPHIC ADVENTURE
                                        ; BY DAVID JONES COPYRIGHT 1985
  DEFM " GRAPHIC ADVENTURE",14
  DEFM 16,7,110,"BY ",129,14
  DEFM 110,166,"1985"
  DEFM 0
  DEFM 16,6,158,165,14    ; SPELLBOUND COPYRIGHT MASTERTRONIC 1985 BY DAVID
                          ; JONES 1985
  DEFM 16,7,19,0," ",166,190,"1985",14
  DEFM 19,64," BY ",129," 1985"
  DEFM 0
  DEFM "PRESS SPACE OR",14 ; PRESS SPACE OR FIRE TO CONTINUE
  DEFM "FIRE ",99,"CONTINUE"
  DEFM 0
  DEFM 14                 ; E  EXECUTE COMMAND R  REJECT COMMAND
  DEFM "E",93,"EXECUTE ",100,14
  DEFM "R",93,"REJECT ",100
  DEFM 0
  DEFM 14                 ; 0
  DEFM "0",93
  DEFM 0
  DEFM 106,"OVER",14      ; GAME OVER TOTAL COMPLETION 000 % TIME LEFT 48 HOURS
  DEFM "TOTAL COMPLETION 000 %",14
  DEFM 193," LEFT 48 HOURS",14
  DEFM 14
  DEFM 0
  DEFM 100,14             ; COMMAND
  DEFM 0
  DEFM 10                 ; Height = 10
  DEFM 130," ",192,"NOT ",170," RELEASED",14 ; GIMBAL IS NOT YET RELEASED FROM
                                             ; THE WHITE-OUT SPELL THAT HE
                                             ; ACCIDENTALLY CAST UPON HIMSELF.
                                             ; A SPELL IS REQUIRED TO RELEASE
                                             ; HIM. IF HE IS NOT RELEASED SOON
                                             ; HIS SPIRIT WILL BE TOTALLY
                                             ; BLEACHED OUT (NASTY !!)
  DEFM "FROM ",111,"WHITE-OUT ",175," THAT",14
  DEFM "HE ACCIDENTALLY ",174," UPON",14
  DEFM "HIMSELF.",14
  DEFM 97,175," ",192,"REQUIRED ",99,14
  DEFM "RELEASE HIM.",14
  DEFM "IF HE ",192,"NOT RELEASED SOON",14
  DEFM "H",192,"SPIRIT WILL BE TOTALLY",14
  DEFM "BLEACHED OUT (NASTY !!)"
  DEFM 0

; Cyan "Game Over" Window Additional Texts
  DEFM 7                  ; Height = 7
  DEFM "BREAK ",109," PRESSED" ; BREAK KEY PRESSED
  DEFM 0
  DEFM 9,105,"HURT ",186,"SELF",14 ; YOU HURT YOURSELF MOVING AROUND IN THE
                                   ; DARK
  DEFM "MOVING AROUND IN ",111,14
  DEFM "DARK"
  DEFM 0
  DEFM 10                 ; Height = 10
  DEFM 105,"KILLED ",186,"SELF",14 ; YOU KILLED YOURSELF TRYING TO THROW
                                   ; SOMETHING AT {short name of Current
                                   ; Character}
  DEFM "TRYING ",99,"THROW",14
  DEFM 125,"AT",14
  DEFM 31
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 105,"THREW ",125,14 ; YOU THREW SOMETHING AND KILLED {short name of
                           ; Current Character}
  DEFM 104,"KILLED ",31
  DEFM 0
  DEFM 12                 ; Height = 12
  DEFM "I SUPPOSE ",105,"REALISED",14 ; I SUPPOSE YOU REALISED THAT QUITICUS
                                      ; GAMUS IS A SPELL TO QUIT THE GAME BUT
                                      ; PRESSING THE BREAK KEY IS MUCH QUICKER
                                      ; !
  DEFM "THAT ",173," IS",14
  DEFM 97,175," ",99,"QUIT ",111,14
  DEFM 106,"BUT PRESSING ",111,14
  DEFM "BREAK ",109," ",192,"MUCH",14
  DEFM "QUICKER !"
  DEFM 0

; Miscellaneous Text (2)
  DEFM 31,14              ; short name of Current Character} IS ASLEEP
  DEFM 192,"ASLEEP"
  DEFM 0
  DEFM 7                  ; Height = 7
  DEFM 111,"GAS GOT ",105 ; THE GAS GOT YOU
  DEFM 0
  DEFM "WELL DONE ",144," ",105,14 ; WELL DONE MAGIC KNIGHT YOU HAVE COMPLETED
                                   ; YOUR TASK BUT THE LAST SPELL HAS THROWN
                                   ; YOU INTO A TIMESTREAM AND YOU WILL EMERGE
                                   ; SHORTLY IN KNIGHT-TYME ALSO FROM
                                   ; MASTERTRONIC
  DEFM "HAVE COMPLETED ",186," TASK BUT",14
  DEFM 111,"LAST ",175," HAS THROWN YOU",14
  DEFM "INTO ",97,193,"STREAM ",104,105,"WILL",14
  DEFM "EMERGE SHORTLY IN KNIGHT-TYME",14
  DEFM "ALSO FROM ",190
  DEFM 0
  DEFM 15                 ; Height = 15
  DEFM 105,"HAVE SUCCEEDED IN",14 ; YOU HAVE SUCCEEDED IN YOUR TASK BUT A MUCH
                                  ; GREATER CHALLENGE AWAITS YOU IN THE FAR
                                  ; FUTURE. CAN YOU ESCAPE BACK TO YOUR OWN
                                  ; TIME ? TO BE CONTINUED....
  DEFM 186," TASK BUT ",97,"MUCH",14
  DEFM "GREATER CHALLENGE",14
  DEFM "AWAITS ",105,"IN ",111,"FAR",14
  DEFM "FUTURE.",14
  DEFM "C",98,105,"ESCAPE BACK",14
  DEFM 99,186," OWN ",193," ?",14
  DEFM 14
  DEFM 99,"BE CONTINUED...."
  DEFM 0
  DEFM " * STRENGTH *  1  2  3  4  5",14 ; * STRENGTH *  1  2  3  4  5
  DEFM " ",16,2,17,32,"            "
  DEFM 0
  DEFM 10                 ; Height = 10
  DEFM 105,"DIED OF EXHAUSTION",14 ; YOU DIED OF EXHAUSTION (YOU REALLY SHOULD
                                   ; BE MORE CAREFUL !)
  DEFM 14
  DEFM "(",105,"REALLY SHOULD BE",14
  DEFM "MORE CAREFUL !)"
  DEFM 0
  DEFM 16,6,"WHO DO ",105,"WANT ",99,14 ; WHO DO YOU WANT TO
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 142,192,"NOBODY",14 ; THERE IS NOBODY IN THIS ROOM
  DEFM "IN ",139,178
  DEFM 0
  DEFM 113,98,103,102,"?",14 ; TAKE AN OBJECT FROM ?
  DEFM 0
  DEFM 114,98,103,99,"?",14 ; GIVE AN OBJECT TO ?
  DEFM 0
  DEFM 107,"?",14         ; EXAMINE ?
  DEFM 0
  DEFM 115,"?",14         ; SUMMON ?
  DEFM 0
  DEFM 100," ?",14        ; COMMAND ?
  DEFM 0
  DEFM 116," ?",14        ; LOCATE ?
  DEFM 0
  DEFM 141,98,103,"AT ?",14 ; THROW AN OBJECT AT ?
  DEFM 0
  DEFM "TRAVEL ",99,"?",14 ; TRAVEL TO ?
  DEFM 0

; Main In-Game Menu Strings
  DEFM 16,4,100,"S AVAILABLE :-",14 ; COMMANDS AVAILABLE :- P  PICK UP OBJECT D
                                    ; DROP OBJECT T  TAKE OBJECT G GIVE OBJECT
                                    ; E  EXAMINE
  DEFM 14
  DEFM 16,6,"P",93,"PICK UP ",103,14
  DEFM "D",93,"DROP ",103,14
  DEFM "T",93,113,103,14
  DEFM "G",93,114,103,14
  DEFM "E",93,107
  DEFM 0
  DEFM 14                 ; Z  EXIT MENU
  DEFM 92,"Z",93,"EXIT MENU"
  DEFM 0
  DEFM 94,"C",93,100," ",97,101 ; C  COMMAND A CHARACTER
  DEFM 0
  DEFM 94,"L",93,116," ",97,101 ; L  LOCATE A CHARACTER
  DEFM 0
  DEFM 94,"X",93,126      ; X  TELEPORT
  DEFM 0
  DEFM 94,"R",93,146,125  ; R  READ SOMETHING
  DEFM 0
  DEFM 94,"Y",93,141,125  ; Y  THROW SOMETHING
  DEFM 0
  DEFM 94,"S",93,174," ",97,175 ; S  CAST A SPELL
  DEFM 0
  DEFM 94,"B",93,"BLOW ",125 ; B  BLOW SOMETHING
  DEFM 0
  DEFM 94,"W",93,"CALL ",191 ; W  CALL LIFT
  DEFM 0
  DEFM 94,"V",93,"MOVE ",191 ; V  MOVE LIFT
  DEFM 0

; "Command a Character to Help" Text Messages
  DEFM 4                  ; Height = 4
  DEFM 142,192,"NOTHING",14 ; THERE IS NOTHING MORE THAT {short name of Current
                            ; Character} CAN DO TO HELP HERE
  DEFM "MORE THAT ",31," CAN",14
  DEFM "DO ",99,128,169
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM 131," SMASHED ",111,14 ; THOR SMASHED THE LIFT CONTROL BOX WITH MIOLNIR.
                              ; "THAT SHOULD DO THE TRICK" HE SAYS
  DEFM 191," CONTROL BOX",14
  DEFM "WITH MIOLNIR.",14
  DEFM 34,"THAT SHOULD DO ",111,14
  DEFM "TRICK",34," HE ",185
  DEFM 0
  DEFM 11                 ; Height = 11
  DEFM 111,"TOWER SHOOK AS",14 ; THE TOWER SHOOK AS THOR SENT A BOLT OF HIS
                               ; BEST LIGHTNING AT IT. THE TOWER STILL STANDS
                               ; BUT HE HAS WEAKENED A WALL SOMEWHERE DUE TO
                               ; ALL THE SHAKING AND NOISE
  DEFM 131," SENT ",97,"BOLT OF",14
  DEFM "H",192,"BEST LIGHTNING",14
  DEFM "AT IT.",14
  DEFM 111,"TOWER STILL",14
  DEFM "STANDS BUT HE HAS",14
  DEFM "WEAKENED ",97,"WALL",14
  DEFM "SOMEWHERE DUE ",99,"ALL",14
  DEFM 111,"SHAKING ",104,14
  DEFM "NOISE"
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 132," HAS MENDED",14 ; FLORIN HAS MENDED THE TALISMAN USING THE GLUE.
                            ; THEN HE CAST AN OLD SPELL IN DWARVISH TO RESTORE
                            ; IT TO FULL MAGIC POTENCY
  DEFM 111,"TALISMAN USING",14
  DEFM 111,"GLUE.",14
  DEFM "THEN HE ",174," ",98,"OLD",14
  DEFM 175," IN DWARVISH",14
  DEFM 99,"RESTORE IT ",99,14
  DEFM "FULL ",194," POTENCY"
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM "GOOD OLD ",134," HAS",14 ; GOOD OLD SAMSUN HAS THROWN A PLATFORM INTO
                                 ; THE MIDDLE OF THE PIT FOR YOU
  DEFM "THROWN ",97,"PLATFORM",14
  DEFM "INTO ",111,"MIDDLE OF",14
  DEFM 111,"PIT FOR ",105
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 111,"TRUMPET BLOWS",14 ; THE TRUMPET BLOWS AND THE WALL COMES A-TUMBLING
                              ; DOWN !!
  DEFM 104,111,"WALL COMES",14
  DEFM "A-TUMBLING DOWN !!"
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 136," PLACED ",111,14 ; ROSMAR PLACED THE FUSE IN THE LASER AND MELTED A
                             ; HOLE IN THE WALL. NOT THE MOST SUBTLE METHOD OF
                             ; ENTRY BUT VERY EFFECTIVE !
  DEFM "FUSE IN ",111,"LASER",14
  DEFM 104,"MELTED ",97,"HOLE",14
  DEFM "IN ",111,"WALL.",14
  DEFM "NOT ",111,"MOST SUBTLE",14
  DEFM "METHOD OF ENTRY BUT",14
  DEFM "VERY EFFECTIVE !"
  DEFM 0

; The Banshee's Help Texts
  DEFM 6                  ; Height = 6
  DEFM 111,137," ",185,14 ; THE BANSHEE SAYS "THEY THAT WOULD BE FIRST SHALL BE
                          ; LAST AND THE LAST SHALL BE FIRST"
  DEFM 34,"THEY THAT WOULD BE",14
  DEFM "FIRST SHALL BE LAST",14
  DEFM 104,111,"LAST SHALL",14
  DEFM "BE FIRST",34
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM 111,137," ",185,14 ; THE BANSHEE SAYS "FLORIN THE DWARF IS GOOD AT
                          ; MENDING THINGS"
  DEFM 34,119,"IS",14,"GOOD AT MENDING",14
  DEFM "THINGS",34
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 111,137," ",185,14 ; THE BANSHEE SAYS "BRING BACK LOST IN SPACE !"
  DEFM 34,"BRING BACK LOST",14
  DEFM "IN SPACE !",34
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 111,137," ",185,14 ; THE BANSHEE SAYS "A DISTANT COUSIN OF MINE IS
                          ; PRETENDING TO BE A POOL OF LIQUID. A SPELL COULD BE
                          ; OF USE TO BOTH OF YOU  (bug)
  DEFM 34,97,"DISTANT COUSIN OF",14
  DEFM "MINE ",192,"PRETENDING",14
  DEFM 99,"BE ",97,"POOL OF",14
  DEFM "LIQUID.",14
  DEFM 97,175," COULD BE OF",14
  DEFM "USE ",99,"BOTH OF ",105
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 111,137," ",185,14 ; THE BANSHEE SAYS "RED HERRINGS ARE NOT ALWAYS FISH"
  DEFM 34,"RED HERRINGS ARE",14
  DEFM "NOT ALWAYS FISH",34
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 111,137," ",185,14 ; THE BANSHEE SAYS "THE PROOF IS IN THE BOTTLE. LEND
                          ; IT TO FLORIN AND GAIN STRENGTH BY YOUR ACTIONS WHEN
                          ; YOU CLAIM IT BACK"
  DEFM 34,111,"PROOF ",192,"IN",14
  DEFM 111,149,".",14
  DEFM "LEND IT ",99,132,14
  DEFM 104,"GAIN STRENGTH BY",14
  DEFM 186," ACTIONS WHEN",14
  DEFM 105,"CLAIM IT BACK",34
  DEFM 0
  DEFM 9                  ; Height = 9
  DEFM 111,137," CHANTS",14 ; THE BANSHEE CHANTS "CANDLE LIGHT CANDLE BRIGHT
                            ; FOUR LEAF CLOVER FROM THE NIGHT WITHOUT THE LOT
                            ; YOUR CHANCE IS SLIGHT"
  DEFM 34,187," LIGHT",14
  DEFM 187," BRIGHT",14
  DEFM "FOUR LEAF CLOVER",14
  DEFM "FROM ",111,"NIGHT",14
  DEFM "WITHOUT ",111,"LOT",14
  DEFM 186," CHANCE ",192,14
  DEFM "SLIGHT",34
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM 111,137," ",185,14 ; THE BANSHEE SAYS "I THINK YOU HAVE HAD ENOUGH HELP
                          ; FROM ME."
  DEFM 34,"I THINK ",105,"HAVE",14
  DEFM "HAD ENOUGH ",128,"FROM",14
  DEFM "ME.",34
  DEFM 0

; Text Relating to "Pick Up" Command
  DEFM 92,105,"ARE NOW CARRYING",94 ; YOU ARE NOW CARRYING
  DEFM 0
  DEFM 92,"PICK UP "      ; PICK UP
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 142,192,140,14     ; THERE IS NOTHING IN THIS ROOM
  DEFM "IN ",139,178
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 142,192,140,14     ; THERE IS NOTHING NEAR ENOUGH
  DEFM "NEAR ENOUGH"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 186," HANDS ARE",14 ; YOUR HANDS ARE FULL
  DEFM "FULL"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM "THAT ",103,192,14 ; THAT OBJECT IS TOO HEAVY
  DEFM "TOO HEAVY"
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM 111,"LIQUID ",192,14 ; THE LIQUID IS STUCK TO THE FLOOR. (IT'S A VERY
                            ; THICK LIQUID)
  DEFM "STUCK ",99,111,14
  DEFM 177,".",14
  DEFM "(IT'S ",97,"VERY",14
  DEFM "THICK LIQUID)"
  DEFM 0

; Text Relating to "Drop" Command
  DEFM 92,"DROP ",112,103,"?",94 ; DROP WHICH OBJECT ?
  DEFM 0
  DEFM 92,"DROP "         ; DROP
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 105,"ARE NOT",14   ; YOU ARE NOT CARRYING ANYTHING
  DEFM "CARRYING ANYTHING"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 105,"CANNOT",14    ; YOU CANNOT DROP THAT OBJECT
  DEFM "DROP THAT ",103
  DEFM 0
  DEFM 16,6,105,"DROPPED ",111,149,14 ; YOU DROPPED THE BOTTLE TO THE GROUND
                                      ; AND NOW THERE IS A WAILING SOUND AN
                                      ; ANCIENT SPIRIT YOU WILL SEE FOR YOU
                                      ; HAVE RELEASED ...... BANSHEE
  DEFM 99,111,"GROUND",14
  DEFM 104,"NOW THERE ",192,"A",14
  DEFM "WAILING SOUND",14
  DEFM 14
  DEFM 98,"ANCIENT SPIRIT",14
  DEFM 105,"WILL SEE",14
  DEFM "FOR ",105,"HAVE RELEASED",14
  DEFM 46,46,46,46,46,46,16,4,18,128,32,137,32,18,0
  DEFM 0

; Text Relating to "Take" Command
  DEFM 92,113,112,103,"?",94 ; TAKE WHICH OBJECT ?
  DEFM 0
  DEFM 92,113             ; TAKE
  DEFM 0
  DEFM 113,125,102        ; TAKE SOMETHING FROM
  DEFM 0
  DEFM " ",102,14         ; FROM
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31,"'S",14         ; short name of Current Character}'S HANDS ARE EMPTY
  DEFM "HANDS ARE EMPTY"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," WANTS",14     ; short name of Current Character} WANTS TO KEEP THAT
  DEFM 99,"KEEP THAT"
  DEFM 0
  DEFM 10                 ; Height = 10
  DEFM 131," ",192,"ANGRY.",14 ; THOR IS ANGRY. A THUNDER STORM ERRUPTS FROM
                               ; THE END OF HIS MIGHTY HAMMER MIOLNIR. "DIE
                               ; MORTAL" CRIES THOR AND A BOLT OF LIGHTNING
                               ; STRIKES YOU DEAD. [bug]
  DEFM 97,"THUNDER STORM",14
  DEFM "ERRUPTS FROM ",111,14
  DEFM "END OF H",192,"MIGHTY",14
  DEFM "HAMMER MIOLNIR.",14
  DEFM 34,"DIE MORTAL",34,14
  DEFM "CRIES ",131," ",104,"A",14
  DEFM "BOLT OF LIGHTNING",14
  DEFM "STRIKES ",105,"DEAD."
  DEFM 0
  DEFM 7                  ; Height = 7
  DEFM 131," KILLED ",105 ; THOR KILLED YOU
  DEFM 0

; Text Relating to "Give" Command
  DEFM 92,114,112,103,"?",94 ; GIVE WHICH OBJECT ?
  DEFM 0
  DEFM 92,114             ; GIVE
  DEFM 0
  DEFM 32,99,14           ; TO
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31,"'S HANDS",14   ; short name of Current Character}'S HANDS ARE FULL
  DEFM "ARE FULL"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," ",192,"NOT",14 ; short name of Current Character} IS NOT STRONG
                           ; ENOUGH
  DEFM "STRONG ENOUGH"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," DOES NOT",14  ; short name of Current Character} DOES NOT WANT THAT
                          ; YET
  DEFM "WANT THAT ",170
  DEFM 0

; Text Relating to "Examine" Command
  DEFM 92,107,112,103,"?",94 ; EXAMINE WHICH OBJECT ?
  DEFM 0
  DEFM 107                ; EXAMINE
  DEFM 0
  DEFM 107,"WHAT ?",14    ; EXAMINE WHAT ? O  OBJECT C  CHARACTER S  YOURSELF
  DEFM 14
  DEFM "O",93,103,14
  DEFM "C",93,101,14
  DEFM "S",93,186,"SELF"
  DEFM 0
  DEFM 107,31,14          ; EXAMINE {short name of Current Character} STRENGTH
                          ; 99 HAPPINESS   99 STAMINA     99 SPELL POWER 99
                          ; FOOD LEVEL 99
  DEFM 14
  DEFM 110,110,"STRENGTH",110,16,4," 99 ",16,0,14
  DEFM 110,110,"HAPPINESS  ",16,4," 99 ",16,0,14
  DEFM 110,110,"STAMIN",97,"   ",16,4," 99 ",16,0,14
  DEFM 110,110,175," POWER",16,4," 99 ",16,0,14
  DEFM 110,110,"FOOD LEVEL ",16,4," 99 ",16,0,14
  DEFM 14
  DEFM 0
  DEFM 110,110,107,14     ; EXAMINE
  DEFM 0
  DEFM 14                 ; WEIGHT      99# DROP STATUS . READ STATUS . MAGIC
                          ; POWER 99
  DEFM 14
  DEFM 110,110,"WEIGHT",110,"  ",16,4," 99#",16,0,14
  DEFM 110,110,"DROP STATUS ",16,4,".",16,0,14
  DEFM 110,110,146,"STATUS ",16,4,".",16,0,14
  DEFM 110,110,194," POWER",16,4," 99 ",16,0,14
  DEFM 14
  DEFM 0

; Characters' "Current Status" Texts
  DEFM 0                  ; Unused
  DEFM "PROGRESS 000 %",14 ; PROGRESS 000 % TIME LEFT 48 HOURS
  DEFM 193," LEFT 48 HOURS"
  DEFM 0
  DEFM 130," ",192,"TRAPPED IN",14 ; GIMBAL IS TRAPPED IN A WHITE-OUT SOMEWHERE
  DEFM 97,"WHITE-OUT SOMEWHERE"
  DEFM 0
  DEFM 131," WANT'S HIS",14 ; THOR WANT'S HIS HAMMER BACK (bug)
  DEFM "HAMMER BACK"
  DEFM 0
  DEFM 132," LIKES SINGING",14 ; FLORIN LIKES SINGING (ABOUT GOLD MOSTLY)
  DEFM "(ABOUT GOLD MOSTLY)"
  DEFM 0
  DEFM 133," ",192,"LEARNING",14 ; ORIK IS LEARNING MAGIC BY POST
  DEFM 194," BY POST"
  DEFM 0
  DEFM 134," ",192,97,"LITTLE",14 ; SAMSUN IS A LITTLE BIT STUPID
  DEFM "BIT STUPID"
  DEFM 0
  DEFM 135," ",192,"VERY",14 ; ELRAND IS VERY MUSICAL
  DEFM "MUSICAL"
  DEFM 0
  DEFM 123," ",192,"VERY",14 ; LADY ROSMAR IS VERY CLEVER
  DEFM "CLEVER"
  DEFM 0
  DEFM 124," ",192,"QUIET",14 ; THE BANSHEE IS QUIET AT THE MOMENT
  DEFM "AT ",111,"MOMENT"
  DEFM 0
  DEFM 131," ",192,"READY ",99,14 ; THOR IS READY TO HELP YOU WHEN YOU ASK
  DEFM 128,105,"WHEN ",105,"ASK"
  DEFM 0
  DEFM 130," ",192,"READY ",99,14 ; GIMBAL IS READY TO CAST A RELEASE SPELL
  DEFM 174," ",97,"RELEASE ",175
  DEFM 0
  DEFM 31," ",192,"ASLEEP" ; short name of Current Character} IS ASLEEP
  DEFM 0

; Miscellaneous Text (3)
  DEFM 186,"SELF"         ; YOURSELF
  DEFM 0

; Text Relating to "Command" Command
  DEFM 100," "            ; COMMAND
  DEFM 0
  DEFM "WHICH ",100," DO YOU",14 ; WHICH COMMAND DO YOU WANT TO USE ? A  GO TO
                                 ; SLEEP B  WAKE UP C  GO AWAY D HELP E  EAT &
                                 ; DRINK F  BE HAPPY
  DEFM "WANT ",99,"USE ?",14
  DEFM 14
  DEFM "A",93,"GO ",99,"SLEEP",14
  DEFM "B",93,"WAKE UP",14
  DEFM "C",93,"GO AWAY",14
  DEFM "D",93,128,14
  DEFM "E",93,"EAT & DRINK",14
  DEFM "F",93,"BE ",184
  DEFM 0
  DEFM "GO ",99,"SLEEP"   ; GO TO SLEEP
  DEFM 0
  DEFM "WAKE UP"          ; WAKE UP
  DEFM 0
  DEFM "GO AWAY"          ; GO AWAY
  DEFM 0
  DEFM 128                ; HELP
  DEFM 0
  DEFM "EAT & DRINK"      ; EAT & DRINK
  DEFM 0
  DEFM "BE ",184          ; BE HAPPY
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31," DOES NOT",14  ; short name of Current Character} DOES NOT WANT TO
                          ; BE COMMANDED BY YOU
  DEFM "WANT ",99,"BE",14
  DEFM 100,"ED BY YOU"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," IS",14        ; short name of Current Character} IS ALREADY ASLEEP
  DEFM 188," ASLEEP"
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31," IS",14        ; short name of Current Character} IS TOO WAKEFUL TO
                          ; SLEEP
  DEFM "TOO WAKEFUL ",99,14
  DEFM "SLEEP"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," HAS",14       ; short name of Current Character} HAS GONE TO SLEEP
  DEFM "GONE ",99,"SLEEP"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," IS",14        ; short name of Current Character} IS ALREADY AWAKE
  DEFM 188," AWAKE"
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31,167,14          ; short name of Current Character} IS TOO TIRED TO
                          ; WAKE UP
  DEFM "WAKE UP"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," HAS",14       ; short name of Current Character} HAS WOKEN UP
  DEFM "WOKEN UP"
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31,167,14          ; short name of Current Character} IS TOO TIRED TO GO
                          ; AWAY
  DEFM "GO AWAY"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," HAS",14       ; short name of Current Character} HAS GONE AWAY
  DEFM "GONE AWAY"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," CANNOT",14    ; short name of Current Character} CANNOT HELP YOU
  DEFM 128,105," "
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31,167,14          ; short name of Current Character} IS TOO TIRED TO
                          ; HELP YOU   (bug - no end marker)
  DEFM 128,105
  DEFM 3                  ; Height = 3
  DEFM 31," HAS",14       ; short name of Current Character} HAS NO FOOD LEFT
  DEFM "NO FOOD LEFT"
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31,167,14          ; short name of Current Character} IS TOO TIRED TO
                          ; EAT OR DRINK
  DEFM "EAT OR DRINK"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," HAS",14       ; short name of Current Character} HAS TAKEN
                          ; REFRESHMENT
  DEFM "TAKEN REFRESHMENT"
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 31,167,14          ; short name of Current Character} IS TOO TIRED TO BE
                          ; HAPPY
  DEFM "BE ",184
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 31," WILL",14      ; short name of Current Character} WILL TRY TO BE
                          ; HAPPY
  DEFM "TRY ",99,"BE ",184
  DEFM 0

; Text Relating to "Locate" Command
  DEFM 116," "            ; LOCATE
  DEFM 0
  DEFM 116,"D",14         ; LOCATED {short name of Current Character}
  DEFM 31
  DEFM 0
  DEFM " IN",14           ; IN THE LIFT
  DEFM 111,191
  DEFM 0

; Initial Control Selection Menu Text
  DEFM 16,7,14            ; A  KEYBOARD B  KEMPSTON JOYSTICK C  FULLER JOYSTICK
                          ; D  CURSOR JOYSTICK E  ZX INTERFACE 2 JOYSTICK 1 F
                          ; INSTRUCTIONS G  PLAY GAME
  DEFM "A",93,109,"BOARD",14
  DEFM "B",93,"KEMPSTON",127,14
  DEFM "C",93,"FULLER",127,14
  DEFM "D",93,"CURSOR",127,14
  DEFM "E",93,"ZX INTERFACE 2",127,"1",14
  DEFM "F",93,95,"S",14
  DEFM "G",93,"PLAY ",106
  DEFM 0

; Instructions Text
  DEFM 117,"HAS BEEN",14  ; GIMBAL THE WIZARD HAS BEEN MAKING A MESS OF HIS
                          ; SPELLS AGAIN ! HE HAS MANAGED TO BIND YOU AND A
                          ; NUMBER OF OTHER PEOPLE IN A SUMMON SPELL. YOU MUST
                          ; RETURN EVERYBODY TO THEIR CORRECT TIME/SPACE ZONES
                          ; BUT FIRST YOU HAVE TO RELEASE GIMBAL WHO HAS GOT
                          ; HIMSELF TRAPPED IN A WHITE-OUT SPELL.
  DEFM "MAKING ",97,"MESS",150,"H",192,175,"S",14
  DEFM "AGAIN ! HE HAS MANAGED ",99,14
  DEFM "BIND ",105,104,97,"NUMBER",150,"OTHER",14
  DEFM "PEOPLE IN ",97,"SUMMON ",175,". ",105,14
  DEFM "MUST RETURN EVERYBODY ",99,143,14
  DEFM "CORRECT ",193,"/SPACE ZONES BUT",14
  DEFM "FIRST ",105,"HAVE ",99,"RELEASE",14
  DEFM 130," WHO HAS GOT HIMSELF",14
  DEFM "TRAPPED IN ",97,"WHITE-OUT ",175,"."
  DEFM 0
  DEFM "  ",111,109,"S ARE :-",91 ; THE KEYS ARE :- N = LEFT     M = RIGHT A =
                                  ; JUMP/UP  Z = DOWN PRESS SPACE OR FIRE FOR
                                  ; MENU
  DEFM " N",96,"LEFT  ",110,"M",96,"RIGHT",91
  DEFM " A",96,"JUMP/UP  Z",96,"DOWN",91
  DEFM "  ",110,"PRESS SPACE OR",91
  DEFM "  ",110,"FIRE FOR MENU"
  DEFM 0
  DEFM " ",139,106,"FEATURES",14 ; THIS GAME FEATURES WINDIMATION STARRING YOU
                                 ; AS MAGIC KNIGHT WITH GIMBAL THE WIZARD THOR
                                 ; FLORIN THE DWARF ORIK THE CLERIC SAMSUN THE
                                 ; STRONG ELRAND HALFELVEN LADY ROSMAR THE
                                 ; BANSHEE
  DEFM 159," WINDIMATION",14
  DEFM 160,16,4,18,128,"STARRING",18,0,92,14
  DEFM 16,7,"YOU AS ",144,14
  DEFM 16,5,"WITH",14
  DEFM " ",117,14
  DEFM " ",118,14
  DEFM " ",119,14
  DEFM " ",120,14
  DEFM " ",121,14
  DEFM " ",122,14
  DEFM " ",123,14
  DEFM " ",124
  DEFM 0
  DEFM 95,"S"             ; INSTRUCTIONS
  DEFM 0

; Text Relating to "Read" Command
  DEFM 92,146,112,103,"?",94 ; READ WHICH OBJECT ?
  DEFM 0
  DEFM 92,146             ; READ
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 142,192,"NO",14    ; THERE IS NO WRITING FOR ME TO READ
  DEFM "WRITING FOR ME",14
  DEFM 99,146
  DEFM 0

; List of Read-Texts of Readable Objects
  DEFM 11                 ; Height = 11
  DEFM 168,"CRY......",14 ; name of Current Object} YE UNBINDE SPELL HOLD IN
                          ; THY HAND A MOST MAGIC OBJECT YOU CAST THEE ONCE THY
                          ; SPELL OF CRY...... THE REST OF THE SCROLL IS
                          ; UNREADABLE !
  DEFM 16,6,111,"REST OF ",111,"SCROLL",14
  DEFM 192,"UNREADABLE !"
  DEFM 0
  DEFM 9                  ; Height = 9
  DEFM 92,29,14           ; name of Current Object} CASTING SPELLS TO CAST THE
                          ; SPELL OF FUMATICUS PROTECTIUM YOU WILL REQUIRE TWO
                          ; VERY SMELLY OBJECTS.
  DEFM 14
  DEFM 174,"ING ",175,"S",14
  DEFM 14
  DEFM 99,174," ",111,175," OF",14
  DEFM 176," YOU",14
  DEFM "WILL REQUIRE TWO VERY",14
  DEFM "SMELLY OBJECTS."
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM 92,29,14           ; name of Current Object} THE RUNES CANNOT BE
                          ; UNDERSTOOD WITHOUT THE BOOK TO EXPLAIN THEM
  DEFM 14
  DEFM 111,"RUNES CANNOT BE",14
  DEFM "UNDERSTOOD WITHOUT ",111,14
  DEFM 145," ",99,"EXPLAIN THEM"
  DEFM 0
  DEFM 10                 ; Height = 10
  DEFM 92,29,14           ; name of Current Object} ALL THE RUNES THAT YOU WILL
                          ; FIND WERE WRITTEN BY THE ANCIENT GIANTS OF
                          ; GORFLAND. THEY ARE OF NO USE TO YOU SINCE MOST ARE
                          ; SIMPLY COOKING RECIPIES [bug]
  DEFM 14
  DEFM "ALL ",111,"RUNES THAT YOU",14
  DEFM "WILL FIND WERE WRITTEN",14
  DEFM "BY ",111,"ANCIENT GIANTS",14
  DEFM "OF GORFLAND. THEY ARE",14
  DEFM "OF ",148," USE ",99,105,"SINCE",14
  DEFM "MOST ARE SIMPLY COOKING",14
  DEFM "RECIPIES"
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM 92,29,14           ; name of Current Object} IT IS ENGRAVED. IT SAYS
                          ; GOOD LUCK ON YOUR QUEST
  DEFM 14
  DEFM "IT ",192,"ENGRAVED. IT ",185,14
  DEFM "GOOD LUCK ON ",186," QUEST"
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM 92,29,14           ; name of Current Object} THE WRITING IS FAR TOO
                          ; SMALL TO READ
  DEFM 14
  DEFM 111,"WRITING ",192,"FAR TOO",14
  DEFM "SMALL ",99,146
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 92,29,14           ; name of Current Object} GAME CONCEPT AND PROGRAM BY
                          ; DAVID JONES. WHY NOT GO OUT AND BUY MY LAST GAME
                          ; CALLED FINDERS KEEPERS
  DEFM 14
  DEFM 16,7,106,"CONCEPT ",104,"PROGRAM",14
  DEFM "BY ",16,6,18,128,129,".",18,1,16,7,14
  DEFM "WHY NOT GO OUT ",104,"BUY",14
  DEFM "MY LAST ",106,"CALLED",14
  DEFM 16,6,18,128,"FINDERS KEEPERS",18,1
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM 92,29,14           ; name of Current Object} THE LABEL READS
                          ; "RESTORATIVE FLUID 100% PROOF"
  DEFM 14
  DEFM 111,"LABEL READS",14
  DEFM 34,"RESTORATIVE FLUID",14
  DEFM "100% PROOF",34
  DEFM 0
  DEFM 14                 ; Height = 14
  DEFM 168,179,".",14     ; name of Current Object} YE UNBINDE SPELL HOLD IN
                          ; THY HAND A MOST MAGIC OBJECT YOU CAST THEE ONCE THY
                          ; SPELL OF CRYSTALLIUM SPECTRALIS. THROW EACH OF THE
                          ; CRYSTALS AT GIMBAL. SOMEBODY MUST HOLD YE CRYSTAL
                          ; BALL FOR THY SPELL TO SUCCEED.
  DEFM "THROW EACH OF ",111,14
  DEFM 138,"S AT ",130,".",14
  DEFM "SOMEBODY MUST HOLD",14
  DEFM "YE ",138," BALL FOR",14
  DEFM "THY ",175," ",99,"SUCCEED."
  DEFM 0
  DEFM 13                 ; Height = 13
  DEFM 92,29,14           ; name of Current Object} LIGHT CANDLE WITH CARE
                          ; USING AN APPROPRIATE MAGIC SPELL. DISCLAIMER THE
                          ; MANUFACTURER WILL NOT BE HELD RESPONSIBLE FOR ANY
                          ; LOSS HOWSOEVER CAUSED RESULTING FROM THE USE OR
                          ; MISUSE OF THIS CANDLE
  DEFM 14
  DEFM "LIGHT ",187," WITH CARE",14
  DEFM "USING ",98,"APPROPRIATE",14
  DEFM 194," ",175,".",14
  DEFM 16,6,"DISCLAIMER",14
  DEFM 16,4,111,"MANUFACTURER WILL",14
  DEFM "NOT BE HELD RESPONSIBLE",14
  DEFM "FOR ",108,"LOSS HOWSOEVER",14
  DEFM "CAUSED RESULTING FROM",14
  DEFM 111,"USE OR MISUSE OF",14
  DEFM 139,187
  DEFM 0
  DEFM 14                 ; Height = 14
  DEFM 92,29,14           ; name of Current Object} TANGY WALDATE TART 300
                          ; LEMONS 30 KG CASTOR SUGAR 15 KG SEMOLINA 68 KG
                          ; SHORTCRUST PASTRY MIX 15 KG WALNUTS 30 KG DATES 30
                          ; KG MARGARINE 300 EGGS ICING SUGAR
  DEFM 14
  DEFM "TANGY WALDATE TART",14
  DEFM 16,6,"300 LEMONS",14
  DEFM "30 KG ",174,"OR SUGAR",14
  DEFM "15 KG SEMOLINA",14
  DEFM "68 KG SHORTCRUST PASTRY",14
  DEFM "   MIX",14
  DEFM "15 KG WALNUTS",14
  DEFM "30 KG DATES",14
  DEFM "30 KG MARGARINE",14
  DEFM "300 EGGS",14
  DEFM "ICING SUGAR"
  DEFM 0
  DEFM 7                  ; Height = 7
  DEFM 92,29,14           ; name of Current Object} THE CRYSTAL BALL IS TOO
                          ; CLOUDY AND THERE ARE NO IMAGES THAT CAN BE READ AT
                          ; THIS TIME
  DEFM 14
  DEFM 111,138," BALL ",192,"TOO",14
  DEFM "CLOUDY ",104,"THERE ARE NO",14
  DEFM "IMAGES THAT CAN BE ",146,14
  DEFM "AT ",139,193
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM 92,29,14           ; name of Current Object} THE MIST CLEARS TO SHOW
                          ; THOR HELPING YOU IN THE LIFT
  DEFM 14
  DEFM 111,"MIST CLEARS ",99,"SHOW",14
  DEFM 131," HELPING ",105,"IN ",111,14
  DEFM 191
  DEFM 0
  DEFM 9                  ; Height = 9
  DEFM 92,29,14           ; name of Current Object} IN THE MIDST OF THE MIST
                          ; YOU CAN SEE A TAROT CARD WHICH MEANS DEATH AND
                          ; DESTRUCTION OR THE DEMOLISHING OF HOPES AND PRIDE
  DEFM 14
  DEFM "IN ",111,"MIDST OF ",111,"MIST",14
  DEFM 105,"CAN SEE ",97,"TAROT CARD",14
  DEFM "WHICH MEANS DEATH ",104,14
  DEFM "DESTRUCTION OR ",111,14
  DEFM "DEMOLISHING OF HOPES",14
  DEFM 104,"PRIDE"
  DEFM 0
  DEFM 9                  ; Height = 9
  DEFM 92,29,14           ; name of Current Object} YOU CAN SEE A WALL COME
                          ; CRASHING TO THE GROUND. THERE  IS A NOISE AND AN
                          ; IMAGE OF AN OLD RELIGIOUS BOOK WRITTEN IN HEBREW
  DEFM 14
  DEFM 105,"CAN SEE ",97,"WALL COME",14
  DEFM "CRASHING ",99,111,"GROUND.",14
  DEFM 142," ",192,97,"NOISE ",104,14
  DEFM 98,"IMAGE OF ",98,"OLD",14
  DEFM "RELIGIOUS ",145," WRITTEN",14
  DEFM "IN HEBREW"
  DEFM 0
  DEFM 7                  ; Height = 7
  DEFM 92,29,14           ; name of Current Object} A SPIRIT APPEARS AND TELLS
                          ; YOU THAT SAMSUN WILL BE OF USE IF YOU GIVE HIM THE
                          ; JAVELIN
  DEFM 14
  DEFM 97,"SPIRIT APPEARS AND",14
  DEFM "TELLS ",105,"THAT ",134,14
  DEFM "WILL BE OF USE IF YOU",14
  DEFM "GIVE HIM ",111,"JAVELIN"
  DEFM 0
  DEFM 7                  ; Height = 7
  DEFM 92,29,14           ; name of Current Object} THE LABEL SAYS :- 240 V AC
                          ; 50 HZ MAXIMUM RATING 1 WATT. USE CORRECT FUSE
  DEFM 14
  DEFM 111,"LABEL ",185," :-",14
  DEFM "240 V AC 50 HZ MAXIMUM",14
  DEFM "RATING 1 WATT.",14
  DEFM "USE CORRECT FUSE"
  DEFM 0
  DEFM 15                 ; Height = 15
  DEFM 92,29,14           ; name of Current Object} HERE ARE SOME CLUES TWO OF
                          ; THE MOST USEFUL OBJECTS WILL START IN THE ROOF
                          ; GARDEN A CERTAIN BOTTLE WILL BE USEFUL IF GIVEN TO
                          ; FLORIN AND THEN TAKEN BACK (DUE TO FLORIN'S MAGICAL
                          ; POWERS) NOW READ THE KEY
  DEFM 16,6,"HERE ARE SOME CLUES",16,5,14
  DEFM 14
  DEFM "TWO OF ",111,"MOST USEFUL",14
  DEFM "OBJECTS WILL START IN",14
  DEFM 171,14
  DEFM 14
  DEFM 97,"CERTAIN ",149," WILL BE",14
  DEFM "USEFUL IF GIVEN ",99,14
  DEFM 132," ",104,"THEN TAKEN",14
  DEFM "BACK (DUE ",99,132,"'S",14
  DEFM 194,"AL POWERS)",14
  DEFM 14
  DEFM 16,7,"NOW READ ",111,"KEY"
  DEFM 0
  DEFM 9                  ; Height = 9
  DEFM 92,29,14           ; name of Current Object} THERE IS A LABEL FIXED TO
                          ; THIS SAXAPHONE. IT READS "SID THE FISH WAS HERE".
                          ; IT CERTAINLY DOESN'T SOUND LIKE A CLUE TO ME (bug)
  DEFM 14
  DEFM "THERE ",192,97,"LABEL FIXED",14
  DEFM 99,139,"SAXAPHONE.",14
  DEFM "IT READS ",34,"SID ",111,"FISH",14
  DEFM "WAS HERE",34,".",14
  DEFM "IT CERTAINLY DOESN'T",14
  DEFM "SOUND LIKE ",97,"CLUE ",99,"ME"
  DEFM 0
  DEFM 7                  ; Height = 7
  DEFM 92,29,14           ; name of Current Object} THE TELEPORT PAD IS THE
                          ; PROPERTY OF LAO TSE INC. ESTABLISHED 6000 BC. MADE
                          ; IN CHINA.
  DEFM 14
  DEFM 111,"TELEPORT PAD ",192,111,14
  DEFM "PROPERTY OF LAO TSE INC.",14
  DEFM "ESTABLISHED 6000 BC.",14
  DEFM "MADE IN CHINA."
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 92,29,14           ; name of Current Object} THE LABEL READS "FIZZY POP
                          ; LEMONADE WITH EXTRA ADDED RADIUM WILL MAKE YOU THE
                          ; TALK OF ANY PARTY."
  DEFM 14
  DEFM 111,"LABEL READS ",34,"FIZZY",14
  DEFM "POP LEMONADE WITH EXTRA",14
  DEFM "ADDED RADIUM WILL MAKE",14
  DEFM 105,111,"TALK OF ANY",14
  DEFM "PARTY.",34
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM 92,29,14           ; name of Current Object} THERE IS A YIN-YANG SYMBOL
                          ; ON THIS KEY.
  DEFM 14
  DEFM "THERE ",192,97,"YIN-YANG",14
  DEFM "SYMBOL ON ",139,"KEY."
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM 92,29,14           ; name of Current Object} THE PLANT SAYS "FEED ME
                          ; SYMORE !" HOW STRANGE !
  DEFM 14
  DEFM 111,"PLANT ",185,14
  DEFM 34,"FEED ME SYMORE !",34,14
  DEFM "HOW STRANGE !"
  DEFM 0
  DEFM 9                  ; Height = 9
  DEFM 92,29,14           ; name of Current Object} MORE CLUES THE MAGIC
                          ; TALISMAN CAN BE OF MUCH USE IF YOU CAN MEND IT. (OR
                          ; GET SOMEBODY ELSE TO MEND IT)
  DEFM 16,6,"MORE CLUES",16,5,14
  DEFM 14
  DEFM 111,194," TALISMAN CAN",14
  DEFM "BE OF MUCH USE IF ",105,14
  DEFM "CAN MEND IT.",14
  DEFM "(OR GET SOMEBODY ELSE",14
  DEFM 99,"MEND IT)"
  DEFM 0

; Text Relating to "Cast a Spell" Command
  DEFM 92,174," ",97,175  ; CAST A SPELL
  DEFM 0
  DEFM 11                 ; Height = 11
  DEFM "WHICH ",175," DO ",105,"WANT",14 ; WHICH SPELL DO YOU WANT TO CAST ? A
                                         ; CRYSTALLIUM SPECTRALIS B CANDELIUM
                                         ; ILLUMINATUS C  ARMOURIS PHOTONICUS D
                                         ; FUMATICUS PROTECTIUM E  PROJECT
                                         ; PHYSICAL BODY F  RELEASE SPELL G
                                         ; QUITICUS GAMUS
  DEFM 99,174," ?",14
  DEFM 14
  DEFM "A",93,179,14
  DEFM "B",93,180,14
  DEFM "C",93,181,14
  DEFM "D",93,176,14
  DEFM "E",93,182,14
  DEFM "F",93,183,14
  DEFM "G",93,173
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM "THAT ",175," CANNOT ",170,14 ; THAT SPELL CANNOT YET BE CAST. SOMETHING
                                     ; HAS NOT BEEN DONE OR MAYBE THE TIME IS
                                     ; NOT YET SUITABLE
  DEFM "BE ",174,". ",125,"HAS",14
  DEFM "NOT BEEN DONE OR MAYBE",14
  DEFM 111,193," ",192,"NOT ",170,14
  DEFM "SUITABLE"
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM "BOOOOOMMM !!",14  ; BOOOOOMMM !! THE CANDLE BLEW UP IN YOUR FACE. SOME
                          ; PROTECTION WOULD HAVE BEEN USEFUL.
  DEFM 111,187," BLEW UP IN",14
  DEFM 186," FACE.",14
  DEFM "SOME PROTECTION WOULD",14
  DEFM "HAVE BEEN USEFUL."
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 111,175," HAS WORKED !",14 ; THE SPELL HAS WORKED ! GIMBAL IS NEARLY
                                  ; FREE
  DEFM 130," ",192,"NEARLY FREE"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM "SUCCESS !",14     ; SUCCESS ! GIMBAL IS FREE AT LAST
  DEFM 130," ",192,"FREE AT LAST"
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM "WELL DONE, ",111,187,14 ; WELL DONE, THE CANDLE IS NOW GLOWING WITH A
                                ; COOL YELLOW LIGHT THAT HAS MAGIC POWER
  DEFM 192,"NOW GLOWING WITH",14
  DEFM 97,"COOL YELLOW LIGHT",14
  DEFM "THAT HAS ",194," POWER"
  DEFM 0
  DEFM 10                 ; Height = 10
  DEFM 111,"LIQUID TURNED ",99,14 ; THE LIQUID TURNED TO A VAPOUR AND FORMED A
                                  ; CLOUD AROUND YOU, THEN IT STARTED TO GLOW.
                                  ; ALL OF A SUDDEN THE CLOUD DISAPPEARED AND
                                  ; YOU FOUND YOUR ARMOUR GLOWING BRILLIANTLY.
                                  ; (COULD BE USEFUL !)
  DEFM 97,"VAPOUR ",104,"FORMED ",97,14
  DEFM "CLOUD AROUND YOU, THEN",14
  DEFM "IT STARTED ",99,"GLOW.",14
  DEFM "ALL OF ",97,"SUDDEN ",111,14
  DEFM "CLOUD DISAPPEARED ",104,14
  DEFM 105,"FOUND ",186," ARMOUR",14
  DEFM "GLOWING BRILLIANTLY.",14
  DEFM "(COULD BE USEFUL !)"
  DEFM 0
  DEFM 9                  ; Height = 9
  DEFM 111,"FUMES FROM ",111,14 ; THE FUMES FROM THE PLANT & FISH MINGLE UNDER
                                ; THE INFLUENCE OF THE SPELL TO GIVE YOU A
                                ; NASTY HEADACHE. IF THE SPELL WORKED YOU
                                ; SHOULD BE IMMUNE FROM GAS NOW
  DEFM "PLANT & FISH MINGLE",14
  DEFM "UNDER ",111,"INFLUENCE",14
  DEFM "OF ",111,175," ",99,"GIVE",14
  DEFM 105,97,"NASTY HEADACHE.",14
  DEFM "IF ",111,175," WORKED",14
  DEFM 105,"SHOULD BE",14
  DEFM "IMMUNE FROM GAS NOW"
  DEFM 0
  DEFM 6                  ; Height = 6
  DEFM 186," SPIRT FLOWS",14 ; YOUR SPIRT FLOWS THROUGH THE GATES OF
                             ; MAGICAL-SPACE-TIME AND THE SPELL CARRIES YOUR
                             ; BODY ALONG (bug)
  DEFM "THROUGH ",111,"GATES OF",14
  DEFM 194,"AL-SPACE-",193,14
  DEFM 104,111,175," CARRIES",14
  DEFM 186," BODY ALONG"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 130," ",192,188,14 ; GIMBAL IS ALREADY FREE
  DEFM "FREE"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 111,187," ",192,14 ; THE CANDLE IS ALREADY ALIGHT
  DEFM 188," ALIGHT"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 186," ARMOUR ",192,14 ; YOUR ARMOUR IS GLOWING ALREADY
  DEFM "GLOWING ",188
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 105,"HAVE ALL ",111,14 ; YOU HAVE ALL THE PROTECTION YOU NEED AGAINST
                              ; GAS ALREADY
  DEFM "PROTECTION ",105,"NEED",14
  DEFM "AGAINST GAS ",188
  DEFM 0
  DEFM 7                  ; Height = 7
  DEFM 105,"BLEW ",186,"SELF UP" ; YOU BLEW YOURSELF UP
  DEFM 0

; Miscellaneous Text (4)
  DEFM 174," ",179,0      ; CAST CRYSTALLIUM SPECTRALIS
  DEFM 174," ",180,0      ; CAST CANDELIUM ILLUMINATUS
  DEFM 174," ",181,0      ; CAST ARMOURIS PHOTONICUS
  DEFM 174," ",176,0      ; CAST FUMATICUS PROTECTIUM
  DEFM 182," ",99,14,0    ; PROJECT PHYSICAL BODY TO
  DEFM 174," ",183,0      ; CAST RELEASE SPELL
  DEFB 174," ",173,0      ; CAST QUITICUS GAMUS
  DEFM 8                  ; Height = 8
  DEFM 130," WILL NOW SEND EACH",14 ; GIMBAL WILL NOW SEND EACH CHARACTER BACK
                                    ; TO THEIR HOMES AS YOU SUMMON THEM. THE
                                    ; ORDER IS VERY IMPORTANT BUT GIMBAL THINKS
                                    ; YOU SHOULD HAVE THE PICTURE BY NOW.
  DEFM "CHARACTER BACK ",99,"THEIR",14
  DEFM "HOMES AS ",105,"SUMMON THEM.",14
  DEFM 111,"ORDER ",192,"VERY",14
  DEFM "IMPORTANT BUT ",130,14
  DEFM "THINKS ",105,"SHOULD HAVE",14
  DEFM 111,"PICTURE BY NOW."
  DEFM 0

; Text Relating to "Teleport" Command
  DEFM 126                ; TELEPORT
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM "IT ",192,"NOT SAFE",14 ; IT IS NOT SAFE TO TELEPORT TRY AGAIN LATER
  DEFM 99,126,14
  DEFM "TRY AGAIN LATER"
  DEFM 0

; Text Relating to "Throw" Command
  DEFM 92,141,112,103,"?",94 ; THROW WHICH OBJECT ?
  DEFM 0
  DEFM 92,141             ; THROW
  DEFM 0
  DEFM " AT",14           ; AT
  DEFM 0
  DEFM 7                  ; Height = 7
  DEFM 105,"HEAR ",97,"SHORT RANGE",14 ; YOU HEAR A SHORT RANGE TELEPATHIC
                                       ; WHISPER FROM GIMBAL. "KEEP THE CRYSTAL
                                       ; FOR LATER - IT IS OF NO USE HERE YET"
  DEFM "TELEPATHIC WHISPER",14
  DEFM "FROM ",130,".",14
  DEFM 34,"KEEP ",111,138," FOR",14
  DEFM "LATER - IT ",192,"OF NO",14
  DEFM "USE HERE ",170,34
  DEFM 0
  DEFM 9                  ; Height = 9
  DEFM 111,"BLUE ",138," FLEW",14 ; THE BLUE CRYSTAL FLEW AT GIMBAL AND BURST
                                  ; INTO A SPARKLING POWDER ON CONTACT. THE
                                  ; BLUE PORTION OF THE WHITE-OUT AURA
                                  ; SURROUNDING GIMBAL IS DESTROYED
  DEFM "AT ",130," ",104,"BURST",14
  DEFM "INTO ",97,"SPARKLING",14
  DEFM "POWDER ON CONTACT.",14
  DEFM 111,"BLUE PORTION OF",14
  DEFM 111,"WHITE-OUT AURA",14
  DEFM "SURROUNDING ",130,14
  DEFM 192,"DESTROYED"
  DEFM 0
  DEFM 11                 ; Height = 11
  DEFM 111,"RED ",138," FLEW",14 ; THE RED CRYSTAL FLEW STRAIGHT AT GIMBAL AND
                                 ; TURNED INTO A GAS SURROUNDING HIM. THE
                                 ; STENCH WAS ALMOST UNBEARABLE BUT NOW THE RED
                                 ; ELEMENT OF THE WHITE-OUT SPELL TRAPPING
                                 ; GIMBAL IS REMOVED
  DEFM "STRAIGHT AT ",130," AND",14
  DEFM "TURNED INTO ",97,"GAS",14
  DEFM "SURROUNDING HIM.",14
  DEFM 111,"STENCH WAS ALMOST",14
  DEFM "UNBEARABLE BUT NOW THE",14
  DEFM "RED ELEMENT OF ",111,14
  DEFM "WHITE-OUT ",175,14
  DEFM "TRAPPING ",130," IS",14
  DEFM "REMOVED"
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 111,"GREEN ",138," FLEW",14 ; THE GREEN CRYSTAL FLEW AT GIMBAL AND
                                   ; SUCKED UP ALL OF THE GREEN PARTS OF THE
                                   ; WHITE- OUT SPELL BEFORE IT BURNED UP IN A
                                   ; BRIGHT FLARE.
  DEFM "AT ",130," ",104,"SUCKED",14
  DEFM "UP ALL OF ",111,"GREEN",14
  DEFM "PARTS OF ",111,"WHITE-",14
  DEFM "OUT ",175," BEFORE IT",14
  DEFM "BURNED UP IN ",97,"BRIGHT",14
  DEFM "FLARE."
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 111,29,14          ; THE {name of Current Object} LANDED ON THE FLOOR BY
                          ; {short name of Current Character}
  DEFM "LANDED ON ",111,177,14
  DEFM "BY ",31
  DEFM 0

; Text Relating to "Blow" Command
  DEFM 92,"BLOW ",112,103,"?",94 ; BLOW WHICH OBJECT ?
  DEFM 0
  DEFM 92,"BLOW "         ; BLOW
  DEFM 0
  DEFM 115                ; SUMMON
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM "WHAT ",97,"RACKET!",14 ; WHAT A RACKET! APART FROM THE NOISE, NOTHING
                               ; HAPPENED
  DEFM "APART FROM THE",14
  DEFM "NOISE, NOTHING",14
  DEFM "HAPPENED"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 30,14              ; full name of Current Character} IS ASLEEP
  DEFM 192,"ASLEEP"
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 30,14              ; full name of Current Character} DOES NOT WANT TO BE
                          ; SUMMONED
  DEFM "DOES NOT WANT ",99,"BE",14
  DEFM "SUMMONED"
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 30,14              ; full name of Current Character} IS TOO TIRED TO BE
                          ; SUMMONED
  DEFM 192,"TOO TIRED ",99,"BE",14
  DEFM "SUMMONED"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 30,14              ; full name of Current Character} IS ALREADY HERE!
  DEFM 192,188," HERE!"
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM 30,14              ; full name of Current Character} DOES NOT WANT TO
                          ; COME TO SUCH A CROWDED ROOM!
  DEFM "DOES NOT WANT ",99,"COME",14
  DEFM 99,"SUCH ",97,"CROWDED",14
  DEFM 178,"!"
  DEFM 0
  DEFM 5                  ; Height = 5
  DEFM "WHAT ",97,"LOT OF",14 ; WHAT A LOT OF DUST. DOESN'T ANYBODY CLEAN THIS
                              ; PLACE ?
  DEFM "DUST. DOESN'T",14
  DEFM "ANYBODY CLEAN",14
  DEFM 139," PLACE ?"
  DEFM 0
  DEFM 4                  ; Height = 4
  DEFM 30,14              ; full name of Current Character} APPEARS IN A THICK
                          ; PUFF OF SMOKE
  DEFM "APPEARS IN ",97,"THICK",14
  DEFM "PUFF OF SMOKE"
  DEFM 0
  DEFM 3                  ; Height = 3
  DEFM 30,14              ; full name of Current Character} IS NO LONGER AROUND
  DEFM 192,"NO LONGER AROUND"
  DEFM 0
  DEFM 8                  ; Height = 8
  DEFM 30,14              ; full name of Current Character} APPEARS IN SPIRIT
                          ; FORM AS GIMBAL UTTERS THE SPELL OF FINAL RETURN.
                          ; {full name of Current Character} HAS ARRIVED HOME
  DEFM "APPEARS IN SPIRIT",14
  DEFM "FORM AS ",130,14
  DEFM "UTTERS ",111,175," OF",14
  DEFM "FINAL RETURN.",14
  DEFM 30,14
  DEFM "HAS ARRIVED HOME"
  DEFM 0

; Text Relating to "Call Lift" Command
  DEFM "CALL ",191        ; CALL LIFT
  DEFM 0
  DEFM 2                  ; Height = 2
  DEFM "  ",111,191," ",192,"HERE" ; THE LIFT IS HERE
  DEFM 0

; Text Relating to "Move Lift" Command
  DEFM "MOVE ",191," ",99,111 ; MOVE LIFT TO THE
  DEFM 0
  DEFM "TAKE ",191," ",99,14 ; TAKE LIFT TO A  ROOF B  4TH FLOOR C  3RD FLOOR D
                             ; 2ND FLOOR E  1ST FLOOR F  GROUND FLOOR G
                             ; BASEMENT
  DEFM 14
  DEFM "A",93,151,14
  DEFM "B",93,152,14
  DEFM "C",93,153,14
  DEFM "D",93,154,14
  DEFM "E",93,155,14
  DEFM "F",93,156,14
  DEFM "G",93,157
  DEFM 0
  DEFM 2                  ; Height = 2
  DEFM 111,191," HAS ARRIVED" ; THE LIFT HAS ARRIVED
  DEFM 0
  DEFM 151,0              ; ROOF
  DEFM 152,0              ; 4TH FLOOR
  DEFM 153,0              ; 3RD FLOOR
  DEFM 154,0              ; 2ND FLOOR
  DEFM 155,0              ; 1ST FLOOR
  DEFM 156,0              ; GROUND FLOOR
  DEFM 157,0              ; BASEMENT
  DEFM 7                  ; Height = 7
  DEFM 111,191," ",192,"BROKEN",14 ; THE LIFT IS BROKEN AND CANNOT BE MOVED TO
                                   ; THAT FLOOR YET. A GOOD BASH IN THE CONTROL
                                   ; BOX WILL PROBABLY FIX IT
  DEFM 104,"CANNOT BE MOVED",14
  DEFM 99,"THAT ",177," ",170,".",14
  DEFM 97,"GOOD BASH IN ",111,14
  DEFM "CONTROL BOX WILL",14
  DEFM "PROBABLY FIX IT"
  DEFM 0

; More "Game Over" Texts
  DEFM "SOMEBODY SWITCHED OUT",14 ; SOMEBODY SWITCHED OUT THE LIGHT. YOU FALL
                                  ; AND INJURE YOURSELF FATALLY ON YOUR ARMOUR
                                  ; WHY NOT CARRY A TORCH OR SOMETHING SIMILAR
                                  ; NEXT TIME ? HARD LUCK MAGIC KNIGHT
  DEFM 111,"LIGHT. ",105,"FALL",14
  DEFM 104,"INJURE ",186,"SELF",14
  DEFM "FATALLY ON ",186," ARMOUR",14
  DEFM 14
  DEFM "WHY NOT CARRY ",97,"TORCH",14
  DEFM "OR ",125,"SIMILAR",14
  DEFM "NEXT ",193," ?",14
  DEFM 14
  DEFM "HARD LUCK ",144
  DEFM 0
  DEFM "CHOKE... CHOKE.......",14 ; CHOKE... CHOKE....... THIS ROOM IS FULL OF
                                  ; DEADLY KNIGHTSHADE GAS WHICH IS FATAL TO
                                  ; ALL WHO ATTEMPT TO LEARN AND MASTER THE
                                  ; SECRETS OF DEEP MAGIC. (THAT MEANS YOU !)
  DEFM 14
  DEFM 139,178," ",192,"FULL OF",14
  DEFM "DEADLY KNIGHTSHADE GAS",14
  DEFM "WHICH ",192,"FATAL ",99,"ALL",14
  DEFM "WHO ATTEMPT ",99,"LEARN",14
  DEFM 104,"MASTER ",111,"SECRETS",14
  DEFM "OF DEEP ",194,".",14
  DEFM 14
  DEFM "(THAT MEANS ",105,"!)"
  DEFM 0
  DEFM 10                 ; Height = 10
  DEFM 105,"FELL INTO ",111,14 ; YOU FELL INTO THE PIT OF DESTRUCTION. MAYBE
                               ; YOU NEED SOME HELP TO CROSS IT ?
  DEFM "PIT OF DESTRUCTION.",14
  DEFM "MAYBE ",105,"NEED SOME",14
  DEFM 128,99,"CROSS IT ?"
  DEFM 0
  DEFM 14                 ; Height = 14
  DEFM 31," HAS STARVED",14 ; short name of Current Character} HAS STARVED TO
                            ; DEATH. IT WAS YOUR JOB TO KEEP EVERYBODY ALIVE
                            ; AND SEND THEM HOME SAFELY. NOT UP TO YOUR USUAL
                            ; STANDARD MAGIC KNIGHT.
  DEFM 99,"DEATH.",14
  DEFM "IT WAS ",186," JOB ",99,14
  DEFM "KEEP EVERYBODY ALIVE",14
  DEFM 104,"SEND THEM HOME",14
  DEFM "SAFELY.",14
  DEFM "NOT UP ",99,186," USUAL",14
  DEFM "STANDARD ",144,"."
  DEFM 0
  DEFM 7                  ; Height = 7
  DEFM 105,"RAN OUT OF ",193 ; YOU RAN OUT OF TIME
  DEFM 0

; Room Layout Data Pointers
  DEFW 52013              ; (00) - The Lift
  DEFW 52052              ; (01) - Roof 1 (The Roof Garden)
  DEFW 52134              ; (02) - Roof 2 (The Roof Garden)
  DEFW 52166              ; (03) - Roof 3 (The Roof Garden)
  DEFW 52212              ; (04) - Roof 4 (The Roof Garden)
  DEFW 52273              ; (05) - Roof 5 (The Roof Garden)
  DEFW 52307              ; (06) - Roof 6 (The Roof Garden)
  DEFW 52339              ; (07) - Roof 7 (The Roof Garden)
  DEFW 52365              ; (08) - Roof 8 (The Roof Garden)
  DEFW 52423              ; (09) - 4th Floor 1 (The Tower)
  DEFW 52456              ; (10) - 4th Floor 2 (Beyond the Tower)
  DEFW 52535              ; (11) - 4th Floor 3 (Further Beyond the Tower)
  DEFW 52559              ; (12) - 4th Floor 4 (The Ballroom)
  DEFW 52597              ; (13) - 4th Floor 5 (The Tree of Karn)
  DEFW 52631              ; (14) - 4th Floor 6 (The Stalagmites)
  DEFW 52709              ; (15) - 4th Floor 7 (The Big Bottle)
  DEFW 52744              ; (16) - 4th Floor 8
  DEFW 52795              ; (17) - 3rd Floor 1 (The Library)
  DEFW 52869              ; (18) - 3rd Floor 2 (The Little Bottle)
  DEFW 52559              ; (19) - 3rd Floor 3 (The Odd-Ball)
  DEFW 52904              ; (20) - 3rd Floor 4 (Florin's room)
  DEFW 52927              ; (21) - 3rd Floor 5 (The Start Room)
  DEFW 52981              ; (22) - 3rd Floor 6 (The L-Shaped Room)
  DEFW 53027              ; (23) - 3rd Floor 7 (The Plant Room [Thor's room])
  DEFW 53100              ; (24) - 3rd Floor 8 (More Plant Room)
  DEFW 53188              ; (25) - 2nd Floor 1
  DEFW 53215              ; (26) - 2nd Floor 2
  DEFW 53233              ; (27) - 2nd Floor 3
  DEFW 53261              ; (28) - 2nd Floor 4
  DEFW 53289              ; (29) - 2nd Floor 5 (The Wall) (Originally 53289,
                          ; changed to 53317 when Elrand blows the Trumpet at
                          ; the Wall)
  DEFW 53356              ; (30) - 2nd Floor 6 (The Gallery)
  DEFW 53377              ; (31) - 2nd Floor 7 (The Gallery)
  DEFW 53398              ; (32) - 2nd Floor 8 (The Gallery)
  DEFW 53439              ; (33) - 1st Floor 1 (The Mush Room)
  DEFW 53537              ; (34) - 1st Floor 2 (The Gas Room)
  DEFW 53555              ; (35) - 1st Floor 3
  DEFW 52535              ; (36) - 1st Floor 4
  DEFW 52559              ; (37) - 1st Floor 5 (The Spare Ballroom)
  DEFW 52709              ; (38) - 1st Floor 6
  DEFW 52927              ; (39) - 1st Floor 7 (The Trophy Room)
  DEFW 52744              ; (40) - 1st Floor 8
  DEFW 53188              ; (41) - Ground Floor 1
  DEFW 53579              ; (42) - Ground Floor 2 (Secret Tunnel Entrance)
  DEFW 52795              ; (43) - Ground Floor 3 (Gimbal's Secret Study)
  DEFW 53649              ; (44) - Ground Floor 4 (The Secret Tunnel)
  DEFW 53688              ; (45) - Ground Floor 5 (More Secret Tunnel)
  DEFW 53703              ; (46) - Ground Floor 6 (The Pit)
  DEFW 53769              ; (47) - Ground Floor 7
  DEFW 53811              ; (48) - Ground Floor 8 (The Most Magic Room)
  DEFW 53883              ; (49) - The Basement

; Room Layout Data The Lift
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,0,0            ; Point bitmap and terrain interaction pointers to 0,
                          ; 0 (top-left of screen)
  DEFB 9,19,7             ; Draw left wall (9 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 250,30,0           ; Point bitmap and terrain interaction pointers to
                          ; 30, 0 (top-right of screen)
  DEFB 7,19,7             ; Draw right wall (7 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 236,2,5            ; Draw right-facing wall-candle at coordinates (2, 5)
  DEFB 237,29,5           ; Draw left-facing wall-candle at coordinates (29, 5)
  DEFB 251,10,4,69,64,77  ; Draw Lift Control Panel (77) at (10, 4) with
                          ; attribute of 69, preserve attribute
  DEFB 238,10,4           ; Set attributes, including glow, on Lift control
                          ; panel
  DEFB 0                  ; End of room data

; Room Layout Data Roof 1 (The Roof Garden)
  DEFB 144,0              ; Draw 144 2x blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,3,68            ; Draw floor (16 blocks, architecture style 3,
                          ; attribute 68)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,0,0            ; Point bitmap and terrain interaction pointers to 0,
                          ; 0 (top-left of screen)
  DEFB 7,19,7             ; Draw left wall (7 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 251,10,8,68,64,48  ; Draw Tree Top (2) at (10,  8) with attribute of 68,
                          ; preserve attribute
  DEFB 251,10,13,69,64,47 ; Draw Tree Trunk (2) at (10, 13) with attribute of
                          ; 69, preserve attribute
  DEFB 251,6,15,68,64,52  ; Draw Plant (5) at ( 6, 15) with attribute of 68,
                          ; preserve attribute
  DEFB 251,25,15,68,64,52 ; Draw Plant (5) at (25, 15) with attribute of 68,
                          ; preserve attribute
  DEFB 251,26,13,68,64,50 ; Draw Plant (3) at (26, 13) with attribute of 68,
                          ; preserve attribute
  DEFB 251,27,15,68,64,52 ; Draw Plant (5) at (27, 15) with attribute of 68,
                          ; preserve attribute
  DEFB 251,10,16,69,64,78 ; Draw Mushroom (1) at (10, 16) with attribute of 69,
                          ; preserve attribute
  DEFB 251,16,16,69,64,79 ; Draw Mushroom (2) at (16, 16) with attribute of 69,
                          ; preserve attribute
  DEFB 245                ; Begin attribute painting block
  DEFB 66,13,9            ; Paint attribute 66 at (13,9)
  DEFB 66,10,13           ; Paint attribute 66 at (10,13)
  DEFB 66,16,12           ; Paint attribute 66 at (16,12)
  DEFB 66,14,11           ; Paint attribute 66 at (14,11)
  DEFB 67,26,13           ; Paint attribute 67 at (26,13)
  DEFB 2,27,13            ; Paint attribute  2 at (27,13)
  DEFB 245                ; End attribute painting block
  DEFB 0                  ; End of room data

; Room Layout Data Roof 2 (The Roof Garden)
  DEFB 144,0              ; Draw 144 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,3,68            ; Draw floor (16 blocks, architecture style 3,
                          ; attribute 68)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 251,4,8,4,64,49    ; Draw Tree Top (3) at ( 4, 8) with attribute of  4,
                          ; preserve attribute
  DEFB 251,4,13,69,64,47  ; Draw Tree Trunk (2) at ( 4,13) with attribute of
                          ; 69, preserve attribute
  DEFB 251,19,8,4,64,49   ; Draw Tree Top (3) at (19, 8) with attribute of  4,
                          ; preserve attribute
  DEFB 251,21,13,69,64,85 ; Draw Tree Trunk (1) at (21,13) with attribute of
                          ; 69, preserve attribute
  DEFB 0                  ; End of room data

; Room Layout Data Roof 3 (The Roof Garden)
  DEFB 144,0              ; Draw 144 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,3,68            ; Draw floor (16 blocks, architecture style 3,
                          ; attribute 68)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 251,16,13,68,64,50 ; Draw Plant (3) at (16,13) with attribute of 68,
                          ; preserve attribute
  DEFB 251,10,15,68,64,51 ; Draw Plant (4) at (10,15) with attribute of 68,
                          ; preserve attribute
  DEFB 251,11,15,68,64,52 ; Draw Plant (5) at (11,15) with attribute of 68,
                          ; preserve attribute
  DEFB 251,26,15,68,64,52 ; Draw Plant (5) at (26,15) with attribute of 68,
                          ; preserve attribute
  DEFB 251,20,15,68,64,53 ; Draw Plant (6) at (20,15) with attribute of 68,
                          ; preserve attribute
  DEFB 245                ; Begin attribute painting block
  DEFB 70,16,13           ; Paint attribute 70 at (16,13)
  DEFB 70,17,13           ; Paint attribute 70 at (17,13)
  DEFB 245                ; End attribute painting block
  DEFB 0                  ; End of room data

; Room Layout Data Roof 4 (The Roof Garden)
  DEFB 144,0              ; Draw 144 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,3,68            ; Draw floor (16 blocks, architecture style 3,
                          ; attribute 68)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 251,10,15,68,64,53 ; Draw Plant (6) at (10,15) with attribute of 68,
                          ; preserve attribute
  DEFB 251,18,13,68,64,50 ; Draw Plant (3) at (18,13) with attribute of 68,
                          ; preserve attribute
  DEFB 251,20,13,68,64,50 ; Draw Plant (3) at (20,13) with attribute of 68,
                          ; preserve attribute
  DEFB 251,22,13,68,64,50 ; Draw Plant (3) at (22,13) with attribute of 68,
                          ; preserve attribute
  DEFB 251,23,13,68,64,50 ; Draw Plant (3) at (23,13) with attribute of 68,
                          ; preserve attribute
  DEFB 245                ; Begin attribute painting block
  DEFB 66,18,13           ; Paint attribute 66 at (18,13)
  DEFB 67,19,13           ; Paint attribute 67 at (19,13)
  DEFB 67,20,13           ; Paint attribute 67 at (20,13)
  DEFB 66,21,13           ; Paint attribute 66 at (21,13)
  DEFB 69,22,13           ; Paint attribute 69 at (22,13)
  DEFB 67,23,13           ; Paint attribute 67 at (23,13)
  DEFB 66,24,13           ; Paint attribute 66 at (24,13)
  DEFB 245                ; End attribute painting block
  DEFB 0                  ; End of room data

; Room Layout Data Roof 5 (The Roof Garden)
  DEFB 144,0              ; Draw 144 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,3,68            ; Draw floor (16 blocks, architecture style 3,
                          ; attribute 68)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 251,10,13,68,64,50 ; Draw Plant (3) at (10,13) with attribute of 68,
                          ; preserve attribute
  DEFB 251,15,15,68,64,51 ; Draw Plant (4) at (15,15) with attribute of 68,
                          ; preserve attribute
  DEFB 251,20,15,68,64,52 ; Draw Plant (5) at (20,15) with attribute of 68,
                          ; preserve attribute
  DEFB 245                ; Begin attribute painting block
  DEFB 71,10,13           ; Paint attribute 71 at (10,13)
  DEFB 71,11,13           ; Paint attribute 71 at (11,13)
  DEFB 245                ; End attribute painting block
  DEFB 0                  ; End of room data

; Room Layout Data Roof 6 (The Roof Garden)
  DEFB 144,0              ; Draw 144 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,3,68            ; Draw floor (16 blocks, architecture style 3,
                          ; attribute 68)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 251,14,15,68,64,52 ; Draw Plant (5) at (14,15) with attribute of 68,
                          ; preserve attribute
  DEFB 251,18,15,68,64,52 ; Draw Plant (5) at (18,15) with attribute of 68,
                          ; preserve attribute
  DEFB 251,2,16,70,64,78  ; Draw Mushroom (1) at ( 2,16) with attribute of 70,
                          ; preserve attribute
  DEFB 251,5,16,71,64,79  ; Draw Mushroom (2) at ( 5,16) with attribute of 71,
                          ; preserve attribute
  DEFB 0                  ; End of room data

; Room Layout Data Roof 7 (The Roof Garden)
  DEFB 144,0              ; Draw 144 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,3,68            ; Draw floor (16 blocks, architecture style 3,
                          ; attribute 68)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 251,8,16,70,64,80  ; Draw Mushroom (3) at ( 8,16) with attribute of 70,
                          ; preserve attribute
  DEFB 251,11,16,71,64,81 ; Draw Mushroom (4) at (11,16) with attribute of 71,
                          ; preserve attribute
  DEFB 251,14,15,70,64,82 ; Draw Large Mushroom at (14,15) with attribute of
                          ; 70, preserve attribute
  DEFB 0                  ; End of room data

; Room Layout Data Roof 8 (The Roof Garden)
  DEFB 144,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,3,68            ; Draw floor (16 blocks, architecture style 3,
                          ; attribute 68)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,30,0           ; Point bitmap and terrain interaction pointers to
                          ; 30, 0
  DEFB 9,19,7             ; Draw right wall (9 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 251,20,8,68,64,48  ; Draw Tree Top (2) at (20, 8) with attribute of 68,
                          ; preserve attribute
  DEFB 251,20,13,69,64,47 ; Draw Tree Trunk (2) at (20,13) with attribute of
                          ; 69, preserve attribute
  DEFB 251,3,9,69,64,84   ; Draw Tree Top (1) at ( 3, 9) with attribute of 69,
                          ; preserve attribute
  DEFB 251,4,13,69,64,85  ; Draw Tree Trunk (1) at ( 4,13) with attribute of
                          ; 69, preserve attribute
  DEFB 251,18,15,68,64,52 ; Draw Plant (5) at (18,15) with attribute of 68,
                          ; preserve attribute
  DEFB 245                ; Begin attribute painting block
  DEFB 66,23,9            ; Paint attribute 66 at (23, 9)
  DEFB 66,20,13           ; Paint attribute 66 at (20,13)
  DEFB 66,26,12           ; Paint attribute 66 at (26,12)
  DEFB 66,24,11           ; Paint attribute 66 at (24,11)
  DEFB 245                ; End attribute painting block
  DEFB 0                  ; End of room data

; Room Layout Data 4th Floor 1 (The Tower)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,86           ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 86)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,14,8           ; Point bitmap and terrain interaction pointers to
                          ; 14, 8
  DEFB 5,19,7             ; Draw The Tower (5 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 250,18,12          ; Point bitmap and terrain interaction pointers to
                          ; 18, 12
  DEFB 1,19,7             ; Draw platform to right of Tower (1 block,
                          ; architecture style 19, attribute 7)
  DEFB 250,0,0            ; Point bitmap and terrain interaction pointers to 0,
                          ; 0 (top-left of screen)
  DEFB 7,19,7             ; Draw left wall (7 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 236,2,5            ; Draw right-facing wall-candle at coordinates (2, 5)
  DEFB 0                  ; End of room data

; Room Layout Data 4th Floor 2 (Beyond the Tower)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 51,0               ; Draw 51 2-by-2 blocks of nothing
  DEFB 10,19,7            ; Draw plant shelf (10 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 67,0               ; Draw 67 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,86           ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 86)
  DEFB 247,2,1            ; Draw ceiling candles at coordinates ( 2, 1)
  DEFB 247,27,1           ; Draw ceiling candles at coordinates (27, 1)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 251,7,3,68,64,51   ; Draw Plant (4) at ( 7, 3) with attribute of 68,
                          ; preserve attribute
  DEFB 251,10,3,68,64,53  ; Draw Plant (6) at (10, 3) with attribute of 68,
                          ; preserve attribute
  DEFB 251,19,1,68,64,50  ; Draw Plant (3) at (19, 1) with attribute of 68,
                          ; preserve attribute
  DEFB 251,7,6,66,64,42   ; Draw Plant Pot (3) at ( 7, 6) with attribute of 66,
                          ; preserve attribute
  DEFB 251,10,6,66,64,42  ; Draw Plant Pot (3) at (10, 6) with attribute of 66,
                          ; preserve attribute
  DEFB 251,19,6,66,64,42  ; Draw Plant Pot (3) at (19, 6) with attribute of 66,
                          ; preserve attribute
  DEFB 251,15,3,68,64,45  ; Draw Plant (7) at (15, 3) with attribute of 68,
                          ; preserve attribute
  DEFB 251,15,6,69,64,42  ; Draw Plant Pot (3) at (15, 6) with attribute of 69,
                          ; preserve attribute
  DEFB 245                ; Begin attribute painting block
  DEFB 69,19,1            ; Paint attribute 69 at (19, 1)
  DEFB 71,20,1            ; Paint attribute 71 at (20, 1)
  DEFB 245                ; End attribute painting block
  DEFB 0                  ; End of room data

; Room Layout Data 4th Floor 3 (Further Beyond the Tower) and 1st Floor 4
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,86           ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 86)
  DEFB 247,2,1            ; Draw ceiling candles at coordinates ( 2, 1)
  DEFB 247,27,1           ; Draw ceiling candles at coordinates (27, 1)
  DEFB 239,5,6            ; Draw picture in frame (59748) at (5, 6)
  DEFB 240,18,6           ; Draw picture in frame (59748) and replace picture
                          ; with alternative (60156) at 18, 6
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 0                  ; End of room data

; Room Layout Data 4th Floor 4 (The Ballroom) and 3rd Floor 3 (The Odd-Ball)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 71,0               ; Draw 71 2-by-2 blocks of nothing
  DEFB 2,19,7             ; Draw top row of "pyramid" (2 blocks, architecture
                          ; style 19, attribute 7)
  DEFB 13,0               ; Draw 13 2-by-2 blocks of nothing
  DEFB 4,19,7             ; Draw second row of "pyramid" (4 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 10,0               ; Draw 10 2-by-2 blocks of nothing
  DEFB 8,19,7             ; Draw third row of "pyramid" (8 blocks, architecture
                          ; style 19, attribute 7)
  DEFB 6,0                ; Draw  6 2-by-2 blocks of nothing
  DEFB 12,19,7            ; Draw fourth row of "pyramid" (12 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 2,0                ; Draw  2 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 247,2,1            ; Draw ceiling candles at coordinates ( 2, 1)
  DEFB 247,27,1           ; Draw ceiling candles at coordinates (27, 1)
  DEFB 0                  ; End of room data

; Room Layout Data 4th Floor 5 (The Tree of Karn)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,86           ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 86)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 251,12,8,68,64,48  ; Draw Tree Top (2) at (12, 8) with attribute of 68,
                          ; preserve attribute
  DEFB 251,12,13,69,64,47 ; Draw Tree Trunk (2) at (12,13) with attribute of
                          ; 69, preserve attribute
  DEFB 244                ; Start painting glowing blocks
  DEFB 15,9               ; (15, 9)
  DEFB 12,13              ; (12,13)
  DEFB 18,12              ; (18,12)
  DEFB 16,11              ; (16,11)
  DEFB 244                ; Stop painting glowing blocks
  DEFB 0                  ; End of room data

; Room Layout Data 4th Floor 6 (The Stalagmites)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,86           ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 86)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,4,16           ; Point bitmap and terrain interaction pointers to 4,
                          ; 16
  DEFB 1,19,7             ; Draw left column of left stalagmite (1 block,
                          ; architecture style 19, attribute 7)
  DEFB 250,6,12           ; Point bitmap and terrain interaction pointers to 6,
                          ; 12
  DEFB 3,19,7             ; Draw second column of left stalagmite (3 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 250,8,10           ; Point bitmap and terrain interaction pointers to 8,
                          ; 10
  DEFB 4,19,7             ; Draw third column of left stalagmite (4 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 250,10,12          ; Point bitmap and terrain interaction pointers to
                          ; 10, 12
  DEFB 3,19,7             ; Draw fourth column of left stalagmite (3 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 250,12,16          ; Point bitmap and terrain interaction pointers to
                          ; 12, 16
  DEFB 1,19,7             ; Draw fifth column of left stalagmite (1 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 250,18,16          ; Point bitmap and terrain interaction pointers to
                          ; 18, 16
  DEFB 1,19,7             ; Draw left column of right stalagmite (1 block,
                          ; architecture style 19, attribute 7)
  DEFB 250,20,12          ; Point bitmap and terrain interaction pointers to
                          ; 20, 12
  DEFB 3,19,7             ; Draw second column of right stalagmite (3 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 250,22,10          ; Point bitmap and terrain interaction pointers to
                          ; 22, 10
  DEFB 4,19,7             ; Draw third column of right stalagmite (4 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 250,24,12          ; Point bitmap and terrain interaction pointers to
                          ; 24, 12
  DEFB 3,19,7             ; Draw fourth column of right stalagmite (3 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 250,26,16          ; Point bitmap and terrain interaction pointers to
                          ; 26, 16
  DEFB 1,19,7             ; Draw fifth column of right stalagmite (1 block,
                          ; architecture style 19, attribute 7)
  DEFB 247,2,1            ; Draw ceiling candles at coordinates ( 2, 1)
  DEFB 247,27,1           ; Draw ceiling candles at coordinates (27, 1)
  DEFB 0                  ; End of room data

; Room Layout Data 4th Floor 7 (The Big Bottle) and 1st Floor 6
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 118,0              ; Draw 118 2-by-2 blocks of nothing
  DEFB 4,19,7             ; Draw bottle's plinth (4 blocks, architecture style
                          ; 19, attribute 7)
  DEFB 6,0                ; Draw 6 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,86           ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 86)
  DEFB 251,14,8,70,64,93  ; Draw Big Bottle Top at (14, 8) with attribute of
                          ; 70, preserve attribute
  DEFB 251,14,12,70,64,94 ; Draw Big Bottle Body at (14,12) with attribute of
                          ; 70, preserve attribute
  DEFB 247,2,1            ; Draw ceiling candles at coordinates ( 2, 1) [bug]
  DEFB 247,27,1           ; Draw ceiling candles at coordinates (27, 1) [bug]
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 0                  ; End of room data

; Room Layout Data 4th Floor 8 and 1st Floor 8
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,86           ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 86)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,30,0           ; Point bitmap and terrain interaction pointers to
                          ; (30, 0)
  DEFB 9,19,7             ; Draw right wall (9 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 251,3,8,70,64,4    ; Draw Shield at ( 3, 8) with attribute of 70,
                          ; preserve attribute
  DEFB 251,8,8,69,64,4    ; Draw Shield at ( 8, 8) with attribute of 69,
                          ; preserve attribute
  DEFB 246,12,4           ; Draw wall axes at 12, 4
  DEFB 251,22,8,70,64,4   ; Draw Shield at (22, 8) with attribute of 70,
                          ; preserve attribute
  DEFB 251,27,8,68,64,4   ; Draw Shield at (27, 8) with attribute of 68,
                          ; preserve attribute
  DEFB 247,2,1            ; Draw ceiling candles at coordinates ( 2, 1)
  DEFB 247,27,1           ; Draw ceiling candles at coordinates (27, 1)
  DEFB 0                  ; End of room data

; Room Layout Data 3rd Floor 1 (The Library) and Ground Floor 3 (Gimbal's
; Secret Study)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 52,0               ; Draw 52 2-by-2 blocks of nothing
  DEFB 10,19,7            ; Draw book-shelf (10 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 66,0               ; Draw 66 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,0,0            ; Point bitmap and terrain interaction pointers to
                          ; (0, 0) (top-left of screen)
  DEFB 7,19,7             ; Draw left wall (7 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 236,2,5            ; Draw right-facing wall-candle at coordinates (2, 5)
  DEFB 251,12,6,68,64,97  ; Draw Books (1) at (12, 6) with attribute of 68,
                          ; preserve attribute
  DEFB 251,17,5,69,64,98  ; Draw Books (2) at (17, 5) with attribute of 69,
                          ; preserve attribute
  DEFB 251,22,6,67,64,101 ; Draw Right Bookend at (22, 6) with attribute of 67,
                          ; preserve attribute
  DEFB 251,9,6,67,64,102  ; Draw Left Bookend at ( 9, 6) with attribute of 67,
                          ; preserve attribute
  DEFB 251,16,15,66,64,99 ; Draw Books (3) at (16,15) with attribute of 66,
                          ; preserve attribute
  DEFB 251,21,16,69,70,100 ; Draw Books (4) at (21,16) with attribute of 69,
                           ; preserve attribute [bug - 70 is not a valid value]
  DEFB 251,26,16,67,64,101 ; Draw Right Bookend at (26,16) with attribute of
                           ; 67, preserve attribute
  DEFB 251,13,16,67,64,102 ; Draw Left Bookend at (13,16) with attribute of 67,
                           ; preserve attribute
  DEFB 0                  ; End of room data

; Room Layout Data 3rd Floor 2 (The Little Bottle)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 118,0              ; Draw 118 2-by-2 blocks of nothing
  DEFB 4,19,7             ; Draw bottle's plinth (4 blocks, architecture style
                          ; 19, attribute 7)
  DEFB 6,0                ; Draw 6 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,86           ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 86)
  DEFB 251,14,10,70,64,95 ; Draw Little Bottle Top at (14,10) with attribute of
                          ; 70, preserve attribute
  DEFB 251,14,12,70,64,94 ; Draw Little Bottle Body at (14,12) with attribute
                          ; of 70, preserve attribute
  DEFB 247,2,1            ; Draw ceiling candles at coordinates ( 2, 1) [bug]
  DEFB 247,27,1           ; Draw ceiling candles at coordinates (27, 1) [bug]
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 0                  ; End of room data

; Room Layout Data 3rd Floor 4 (Florin's room)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 243,2,6,43,70      ; Draw framed picture at ( 2, 6) with contents of
                          ; graphic lookup index 43 (Goblet) and attribute 70
  DEFB 247,14,1           ; Draw ceiling candles at coordinates (14, 1)
  DEFB 242,25,6           ; Draw picture in frame (59548) and replace picture
                          ; with alternative (60108) at 25, 6
  DEFB 0                  ; End of room data

; Room Layout Data 3rd Floor 5 (The Start Room) and 1st Floor 7 (The Trophy
; Room)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 251,2,8,70,64,4    ; Draw shield at    ( 2, 8) with attribute of 70,
                          ; preserve attribute, and graphic lookup index  4
                          ; (shield)
  DEFB 251,6,8,69,64,4    ; Draw shield at    ( 6, 8) with attribute of 69,
                          ; preserve attribute, and graphic lookup index  4
                          ; (shield)
  DEFB 251,10,8,71,64,4   ; Draw shield at    (10, 8) with attribute of 71,
                          ; preserve attribute, and graphic lookup index  4
                          ; (shield)
  DEFB 251,13,6,69,64,92  ; Draw stag head at (13, 6) with attribute of 69,
                          ; preserve attribute, and graphic lookup index 92
                          ; (stag head)
  DEFB 251,20,8,69,64,4   ; Draw shield at    (20, 8) with attribute of 69,
                          ; preserve attribute, and graphic lookup index  4
                          ; (shield)
  DEFB 251,24,8,70,64,4   ; Draw shield at    (24, 8) with attribute of 70,
                          ; preserve attribute, and graphic lookup index  4
                          ; (shield)
  DEFB 251,28,8,68,64,4   ; Draw shield at    (28, 8) with attribute of 68,
                          ; preserve attribute, and graphic lookup index  4
                          ; (shield)
  DEFB 0                  ; End of room data

; Room Layout Data 3rd Floor 6 (The L-Shaped Room)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 56,0               ; Draw 56 2-by-2 blocks of nothing
  DEFB 8,19,7             ; Draw horizontal platform holding plant (8 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 64,0               ; Draw 64 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,16,0           ; Point bitmap and terrain interaction pointers to
                          ; (16, 0) (top-left of screen)
  DEFB 4,19,7             ; Draw wall at end of platform (4 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 246,4,4            ; Draw wall axes at 4, 4
  DEFB 251,26,1,68,64,50  ; Draw Plant (3) at (26, 1) with attribute of 68,
                          ; preserve attribute
  DEFB 251,26,6,70,64,42  ; Draw Plant Pot (3) at (26, 6) with attribute of 70,
                          ; preserve attribute
  DEFB 245                ; Begin attribute painting block
  DEFB 69,26,1            ; Paint attribute 69 at (26,1)
  DEFB 70,27,1            ; Paint attribute 70 at (27,1)
  DEFB 245                ; End attribute painting block
  DEFB 0                  ; End of room data

; Room Layout Data 3rd Floor 7 (The Plant Room [Thor's room])
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 48,0               ; Draw 48 2-by-2 blocks of nothing
  DEFB 16,19,7            ; Draw horizontal platform holding plants (16 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 64,0               ; Draw 64 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 251,5,3,68,64,51   ; Draw Plant (4) at ( 5, 3) with attribute of 68,
                          ; preserve attribute
  DEFB 251,10,4,68,64,53  ; Draw Plant (6) at (10, 4) with attribute of 68,
                          ; preserve attribute
  DEFB 251,19,1,68,64,50  ; Draw Plant (3) at (19, 1) with attribute of 68,
                          ; preserve attribute
  DEFB 251,5,6,66,64,42   ; Draw Plant Pot (3) at ( 5, 6) with attribute of 66,
                          ; preserve attribute
  DEFB 251,10,7,70,64,41  ; Draw Plant Pot (2) at (10, 7) with attribute of 70,
                          ; preserve attribute
  DEFB 251,19,6,66,64,40  ; Draw Plant Pot (1) at (19, 6) with attribute of 66,
                          ; preserve attribute
  DEFB 251,27,2,68,64,45  ; Draw Plant (7) at (27, 2) with attribute of 68,
                          ; preserve attribute
  DEFB 251,27,5,69,64,44  ; Draw Plant Pot (4) at (27, 5) with attribute of 68,
                          ; preserve attribute
  DEFB 245                ; Begin attribute painting block
  DEFB 69,19,1            ; Paint attribute 66 at (19, 1)
  DEFB 71,20,1            ; Paint attribute 66 at (20, 1)
  DEFB 245                ; End attribute painting block
  DEFB 0                  ; End of room data

; Room Layout Data 3rd Floor 8 (More Plant Room)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 48,0               ; Draw 48 2-by-2 blocks of nothing
  DEFB 12,19,7            ; Draw horizontal platform holding plants (12 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 68,0               ; Draw 68 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,28,14          ; Point bitmap and terrain interaction pointers to
                          ; (28, 14) (near bottom-right of screen)
  DEFB 9,19,7             ; Draw wall protrusion / platform (9 blocks,
                          ; architecture style 19, attribute 7) [bug! Should
                          ; only be 2 blocks!]
  DEFB 250,30,0           ; Point bitmap and terrain interaction pointers to
                          ; (30, 0)
  DEFB 9,19,7             ; Draw right wall (9 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 237,29,3           ; Draw left-facing wall-candle at coordinates (29, 3)
  DEFB 251,6,3,68,64,52   ; Draw Plant (5) at ( 6, 3) with attribute of 68,
                          ; preserve attribute
  DEFB 251,10,4,68,64,52  ; Draw Plant (5) at (10, 4) with attribute of 68,
                          ; preserve attribute
  DEFB 251,14,1,68,64,50  ; Draw Plant (3) at (14, 1) with attribute of 68,
                          ; preserve attribute
  DEFB 251,6,6,70,64,40   ; Draw Plant Pot (1) at ( 6, 6) with attribute of 70,
                          ; preserve attribute
  DEFB 251,10,7,66,64,41  ; Draw Plant Pot (2) at (10, 7) with attribute of 66,
                          ; preserve attribute
  DEFB 251,14,6,69,64,42  ; Draw Plant Pot (3) at (14, 6) with attribute of 69,
                          ; preserve attribute
  DEFB 251,18,2,68,64,52  ; Draw Plant (5) at (18, 2) with attribute of 68,
                          ; preserve attribute
  DEFB 251,18,5,66,64,44  ; Draw Plant Pot (4) at (18, 5) with attribute of 68,
                          ; preserve attribute
  DEFB 245                ; Begin attribute painting block
  DEFB 67,14,1            ; Paint attribute 67 at (14, 1)
  DEFB 67,15,1            ; Paint attribute 67 at (15, 1)
  DEFB 245                ; End attribute painting block
  DEFB 0                  ; End of room data

; Room Layout Data 2nd Floor 1 and Ground Floor 1
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,0,0            ; Point bitmap and terrain interaction pointers to 0,
                          ; 0 (top-left of screen)
  DEFB 7,19,7             ; Draw left wall (7 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 236,2,5            ; Draw right-facing wall-candle at 2, 5
  DEFB 246,8,4            ; Draw wall axes at  8, 4
  DEFB 246,18,4           ; Draw wall axes at 18, 4
  DEFB 0                  ; End of room data

; Room Layout Data 2nd Floor 2
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 246,8,4            ; Draw wall axes at  8, 4
  DEFB 246,18,4           ; Draw wall axes at 18, 4
  DEFB 0                  ; End of room data

; Room Layout Data 2nd Floor 3
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 243,8,6,69,70      ; Draw framed picture at ( 8, 6) with contents of
                          ; graphic lookup index 69 (Gimbal) and attribute 70
  DEFB 243,20,6,72,71     ; Draw framed picture at (20, 6) with contents of
                          ; graphic lookup index 72 (Orik) and attribute 71
  DEFB 247,2,1            ; Draw ceiling candles at coordinates ( 2, 1)
  DEFB 247,27,1           ; Draw ceiling candles at coordinates (27, 1)
  DEFB 0                  ; End of room data

; Room Layout Data 2nd Floor 4
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 243,8,6,71,70      ; Draw framed picture at ( 8, 6) with contents of
                          ; graphic lookup index 71 (Florin) and attribute 70
  DEFB 243,20,6,76,71     ; Draw framed picture at (20, 6) with contents of
                          ; graphic lookup index 76 (Banshee) and attribute 71
  DEFB 247,2,1            ; Draw ceiling candles at coordinates ( 2, 1)
  DEFB 247,27,1           ; Draw ceiling candles at coordinates (27, 1)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 0                  ; End of room data

; Room Layout Data 2nd Floor 5 (The Wall, original)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,14,0           ; Point bitmap and terrain interaction pointers to
                          ; 14, 0
  DEFB 9,19,7             ; Draw The Wall (9 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 1,19,7             ; Draw bottom block of The Wall (1 blocks,
                          ; architecture style 19, attribute 7) (Unnecessary,
                          ; as this is already part of the previously drawn
                          ; floor -  (see trivia))
  DEFB 236,16,3           ; Draw right-facing wall-candle at coordinates (16,
                          ; 3)
  DEFB 239,20,6           ; Draw picture in frame (59748) at (20, 6)
  DEFB 0                  ; End of room data

; Room Layout Data 2nd Floor 5 (The Wall, after Elrand has helped)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,14,0           ; Point bitmap and terrain interaction pointers to
                          ; 14, 0
  DEFB 4,19,7             ; Draw top section of The Wall (4 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 3,0                ; Draw 3 2-by-2 blocks of nothing
  DEFB 2,19,7             ; Draw bottom section of The Wall (2 blocks,
                          ; architecture style 19, attribute 7)
  DEFB 236,16,3           ; Draw right-facing wall-candle at coordinates (16,
                          ; 3)
  DEFB 239,20,6           ; Draw picture in frame (59748) at (20, 6)
  DEFB 243,2,6,71,70      ; Draw framed picture at ( 2, 6) with contents of
                          ; graphic lookup index 71 (Florin) and attribute 70
                          ; [bug]
  DEFB 243,8,6,76,71      ; Draw framed picture at ( 8, 6) with contents of
                          ; graphic lookup index 76 (Banshee) and attribute 71
                          ; [bug]
  DEFB 0                  ; End of room data

; Room Layout Data 2nd Floor 6 (The Gallery)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 239,2,6            ; Draw picture in frame (59748) at (2, 6)
  DEFB 240,12,6           ; Draw picture in frame (59748) and replace picture
                          ; with alternative (60156) at 12, 6
  DEFB 241,24,6           ; Draw picture in frame (59548) at 24, 6
  DEFB 0                  ; End of room data

; Room Layout Data 2nd Floor 7 (The Gallery)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 242,4,6            ; Draw picture in frame (59548) and replace picture
                          ; with alternative (60108) at 4, 6
  DEFB 241,14,6           ; Draw picture in frame (59548) at 14, 6
  DEFB 240,20,6           ; Draw picture in frame (59748) and replace picture
                          ; with alternative (60156) at 20, 6
  DEFB 0                  ; End of room data

; Room Layout Data 2nd Floor 8 (The Gallery)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,30,0           ; Point bitmap and terrain interaction pointers to
                          ; 30, 0
  DEFB 9,19,7             ; Draw right wall (9 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 237,29,5           ; Draw left-facing wall-candle at coordinates (29, 5)
  DEFB 243,2,6,75,70      ; Draw framed picture at ( 2, 6) with contents of
                          ; graphic lookup index 75 (Rosmar) and attribute 70
  DEFB 243,8,6,70,71      ; Draw framed picture at ( 8, 6) with contents of
                          ; graphic lookup index 70 (Thor) and attribute 71
  DEFB 243,14,6,73,69     ; Draw framed picture at (14, 6) with contents of
                          ; graphic lookup index 73 (Samsun) and attribute 69
  DEFB 243,20,6,74,68     ; Draw framed picture at (20, 6) with contents of
                          ; graphic lookup index 74 (Elrand) and attribute 68
  DEFB 0                  ; End of room data

; Room Layout Data 1st Floor 1 (The Mush Room)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 52,0               ; Draw 52 2-by-2 blocks of nothing
  DEFB 10,19,7            ; Draw mushroom shelf (10 blocks, architecture style
                          ; 19, attribute 7)
  DEFB 66,0               ; Draw 66 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,0,0            ; Point bitmap and terrain interaction pointers to 0,
                          ; 0 (top-left of screen)
  DEFB 7,19,7             ; Draw left wall (7 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 236,2,5            ; Draw right-facing wall-candle at coordinates (2, 5)
  DEFB 251,8,6,70,64,78   ; Draw Mushroom (1) at ( 8, 6) with attribute of 70,
                          ; preserve attribute
  DEFB 251,11,6,71,64,79  ; Draw Mushroom (2) at (11, 6) with attribute of 71,
                          ; preserve attribute
  DEFB 251,14,5,70,64,82  ; Draw Large Mushroom at (14, 5) with attribute of
                          ; 70, preserve attribute
  DEFB 251,17,6,70,64,80  ; Draw Mushroom (3) at (17, 6) with attribute of 70,
                          ; preserve attribute
  DEFB 251,20,6,71,64,81  ; Draw Mushroom (4) at (20, 6) with attribute of 71,
                          ; preserve attribute
  DEFB 251,24,5,70,64,82  ; Draw Large Mushroom at (24, 5) with attribute of
                          ; 70, preserve attribute
  DEFB 251,5,16,70,64,80  ; Draw Mushroom (3) at ( 5,16) with attribute of 70,
                          ; preserve attribute
  DEFB 251,10,16,71,64,81 ; Draw Mushroom (4) at (10,16) with attribute of 71,
                          ; preserve attribute
  DEFB 251,14,15,70,64,82 ; Draw Large Mushroom at (14,15) with attribute of
                          ; 70, preserve attribute
  DEFB 251,19,16,70,64,80 ; Draw Mushroom (3) at (19,16) with attribute of 70,
                          ; preserve attribute
  DEFB 251,22,16,71,64,81 ; Draw Mushroom (4) at (22,16) with attribute of 71,
                          ; preserve attribute
  DEFB 251,25,15,70,64,82 ; Draw Large Mushroom at (25,15) with attribute of
                          ; 70, preserve attribute
  DEFB 0                  ; End of room data

; Room Layout Data 1st Floor 2 (The Gas Room)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 247,2,1            ; Draw ceiling candles at coordinates ( 2, 1)
  DEFB 247,27,1           ; Draw ceiling candles at coordinates (27, 1)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 0                  ; End of room data

; Room Layout Data 1st Floor 3
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 247,2,1            ; Draw ceiling candles at coordinates ( 2, 1)
  DEFB 247,27,1           ; Draw ceiling candles at coordinates (27, 1)
  DEFB 251,15,5,69,64,91  ; Draw Wall Clock at (15, 5) with attribute of 69,
                          ; preserve attribute
  DEFB 0                  ; End of room data

; Room Layout Data Ground Floor 2 (Secret Tunnel Entrance)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 51,0               ; Draw 51 2-by-2 blocks of nothing
  DEFB 10,19,7            ; Draw plant shelf (10 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 67,0               ; Draw 67 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,30,0           ; Point bitmap and terrain interaction pointers to
                          ; 30, 0
  DEFB 9,19,7             ; Draw right wall (9 blocks, architecture style 19,
                          ; attribute 7) [9 originally, becomes 7 after Rosmar
                          ; helps]
  DEFB 237,29,5           ; Draw left-facing wall-candle at coordinates (29, 5)
  DEFB 251,10,4,68,64,53  ; Draw Plant (6) at (10, 4) with attribute of 68,
                          ; preserve attribute
  DEFB 251,19,1,68,64,50  ; Draw Plant (3) at (19, 1) with attribute of 68,
                          ; preserve attribute
  DEFB 251,10,7,70,64,41  ; Draw Plant Pot (2) at (10, 7) with attribute of 70,
                          ; preserve attribute
  DEFB 251,19,6,66,64,40  ; Draw Plant Pot (1) at (19, 6) with attribute of 66,
                          ; preserve attribute
  DEFB 251,22,2,68,64,45  ; Draw Plant (7) at (22, 2) with attribute of 68,
                          ; preserve attribute
  DEFB 251,22,5,69,64,44  ; Draw Plant Pot (4) at (22, 5) with attribute of 69,
                          ; preserve attribute
  DEFB 245                ; Begin attribute painting block
  DEFB 69,19,1            ; Paint attribute 69 at (19, 1)
  DEFB 71,20,1            ; Paint attribute 71 at (20, 1)
  DEFB 245                ; End attribute painting block
  DEFB 0                  ; End of room data

; Room Layout Data Ground Floor 4 (The Secret Tunnel)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 250,18,10          ; Point bitmap and terrain interaction pointers to
                          ; 18, 10
  DEFB 7,19,87            ; Draw top row of "floor" (7 blocks, architecture
                          ; style 19, attribute 87)
  DEFB 250,14,12          ; Point bitmap and terrain interaction pointers to
                          ; (14,12)
  DEFB 9,19,87            ; Draw second row of "floor" (9 blocks, architecture
                          ; style 19, attribute 87)
  DEFB 250,10,14          ; Point bitmap and terrain interaction pointers to
                          ; (10,14)
  DEFB 11,19,87           ; Draw third row of "floor" (11 blocks, architecture
                          ; style 19, attribute 87)
  DEFB 250,6,16           ; Point bitmap and terrain interaction pointers to (
                          ; 6,16)
  DEFB 13,19,87           ; Draw fourth row of "floor" (13 blocks, architecture
                          ; style 19, attribute 87)
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,87           ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 87)
  DEFB 247,2,1            ; Draw ceiling candles at coordinates (2, 1)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 0                  ; End of room data

; Room Layout Data Ground Floor 5 (More Secret Tunnel)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 64,0               ; Draw 64 2-by-2 blocks of nothing
  DEFB 64,19,87           ; Draw four rows of "floor" (64 blocks, architecture
                          ; style 19, attribute 87)
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,87           ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 87)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 0                  ; End of room data

; Room Layout Data Ground Floor 6 (The Pit)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 250,0,10           ; Point bitmap and terrain interaction pointers to 0,
                          ; 10
  DEFB 6,19,87            ; Draw top row of left "floor" (6 blocks,
                          ; architecture style 19, attribute 87)
  DEFB 250,20,10          ; Point bitmap and terrain interaction pointers to
                          ; (20,10)
  DEFB 12,19,87           ; Draw top row of right, and second row of left
                          ; "floor" (12 blocks, architecture style 19,
                          ; attribute 87)
  DEFB 250,20,12          ; Point bitmap and terrain interaction pointers to
                          ; (20,12)
  DEFB 12,19,87           ; Draw second row of right, and third row of left
                          ; "floor" (12 blocks, architecture style 19,
                          ; attribute 87)
  DEFB 250,20,14          ; Point bitmap and terrain interaction pointers to
                          ; (20,14)
  DEFB 12,19,87           ; Draw third row of right, and fourth row of left
                          ; "floor" (12 blocks, architecture style 19,
                          ; attribute 87)
  DEFB 250,20,16          ; Point bitmap and terrain interaction pointers to
                          ; (20,16)
  DEFB 6,19,87            ; Draw fourth row of right "floor" (6 blocks,
                          ; architecture style 19, attribute 87)
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 6,19,87            ; Draw left section of floor (6 blocks, architecture
                          ; style 19, attribute 87)
  DEFB 4,15,70            ; Draw pit flames (4 blocks, architecture style 15,
                          ; attribute 70) [bug]
  DEFB 6,19,87            ; Draw right section of floor (6 blocks, architecture
                          ; style 19, attribute 87) [bug]
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 244                ; Start painting glowing blocks
  DEFB 12,18              ; (12,18)
  DEFB 13,18              ; (13,18)
  DEFB 14,18              ; (14,18)
  DEFB 15,18              ; (15,18)
  DEFB 16,18              ; (16,18)
  DEFB 17,18              ; (17,18)
  DEFB 18,18              ; (18,18)
  DEFB 19,18              ; (19,18)
  DEFB 244                ; Stop painting glowing blocks
  DEFB 0                  ; End of room data

; Room Layout Data Ground Floor 7
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 128,0              ; Draw 128 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,87           ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 87)
  DEFB 250,0,10           ; Point bitmap and terrain interaction pointers to 0,
                          ; 10
  DEFB 2,19,87            ; Draw top row of "floor" (2 blocks, architecture
                          ; style 19, attribute 87)
  DEFB 250,0,12           ; Point bitmap and terrain interaction pointers to (
                          ; 0,12)
  DEFB 4,19,87            ; Draw second row of "floor" (4 blocks, architecture
                          ; style 19, attribute 87)
  DEFB 250,0,14           ; Point bitmap and terrain interaction pointers to (
                          ; 0,14)
  DEFB 6,19,87            ; Draw third row of "floor" (6 blocks, architecture
                          ; style 19, attribute 87)
  DEFB 250,0,16           ; Point bitmap and terrain interaction pointers to (
                          ; 0,16)
  DEFB 8,19,87            ; Draw fourth row of "floor" (8 blocks, architecture
                          ; style 19, attribute 87)
  DEFB 247,2,1            ; Draw ceiling candles at coordinates ( 2, 1)
  DEFB 247,27,1           ; Draw ceiling candles at coordinates (27, 1)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 0                  ; End of room data

; Room Layout Data Ground Floor 8 (The Most Magic Room)
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 35,0               ; Draw 35 2-by-2 blocks of nothing
  DEFB 2,19,7             ; Draw left platform (2 blocks, architecture style
                          ; 19, attribute 7)
  DEFB 16,0               ; Draw 16 2-by-2 blocks of nothing
  DEFB 3,19,7             ; Draw right platform (3 blocks, architecture style
                          ; 19, attribute 7)
  DEFB 72,0               ; Draw 72 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,10,0           ; Point bitmap and terrain interaction pointers to
                          ; (10, 0)
  DEFB 254                ; Start drawing 2-by-2 blocks of brickwork
  DEFB 68                 ; Set attribute to 68 (green INK, black PAPER,
                          ; BRIGHT)
  DEFB 2                  ; Arch. style  2 (top green block)
  DEFB 3                  ; Arch. style  3 (2nd green block)
  DEFB 4                  ; Arch. style  4 (3rd green block)
  DEFB 5                  ; Arch. style  5 (4th green block)
  DEFB 254                ; Stop drawing 2-by-2 blocks of brickwork
  DEFB 235                ; Set Terrain Interaction Parameter to "preserve
                          ; attribute"
  DEFB 250,6,2            ; Point bitmap and terrain interaction pointers to (
                          ; 6, 2)
  DEFB 254                ; Start drawing 2-by-2 blocks of brickwork
  DEFB 127                ; Set attribute to 127 (white INK, white PAPER,
                          ; BRIGHT)
  DEFB 16                 ; Arch. style  16 (top of white-out zone)
  DEFB 16                 ; Arch. style  16 (bottom of white-out zone)
  DEFB 254                ; Stop drawing 2-by-2 blocks of brickwork
  DEFB 250,6,8            ; Point bitmap and terrain interaction pointers to (
                          ; 6, 8)
  DEFB 254                ; Start drawing 2-by-2 blocks of brickwork (left-hand
                          ; column)
  DEFB 71                 ; Set attribute to 71 (white INK, black PAPER,
                          ; BRIGHT)
  DEFB 11                 ; Arch. style 11 (top of column)
  DEFB 13                 ; Arch. style 13 (body of column, 2nd block)
  DEFB 13                 ; Arch. style 13 (body of column, 3rd block)
  DEFB 13                 ; Arch. style 13 (body of column, 4th block)
  DEFB 12                 ; Arch. style 12 (base of column)
  DEFB 254                ; Stop drawing 2-by-2 blocks of brickwork
  DEFB 250,14,10          ; Point bitmap and terrain interaction pointers to
                          ; (14,10)
  DEFB 254                ; Start drawing 2-by-2 blocks of brickwork
                          ; (right-hand column)
  DEFB 71                 ; Set attribute to 71 (white INK, black PAPER,
                          ; BRIGHT)
  DEFB 11                 ; Arch. style 11 (top of column)
  DEFB 13                 ; Arch. style 13 (body of column, 2nd block)
  DEFB 13                 ; Arch. style 13 (body of column, 3rd block)
  DEFB 12                 ; Arch. style 12 (base of column)
  DEFB 254                ; Stop drawing 2-by-2 blocks of brickwork
  DEFB 234                ; Set Terrain Interaction Parameter to "impassable
                          ; horizontally", "impassable vertically" and
                          ; "preserve attribute"
  DEFB 250,30,0           ; Point bitmap and terrain interaction pointers to
                          ; (30, 0)
  DEFB 9,19,7             ; Draw right wall (9 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 237,29,5           ; Draw left-facing wall-candle at coordinates (29, 5)
  DEFB 0                  ; End of room data

; Room Layout Data The Basement
  DEFB 232                ; Set brickwork drawing mode 2 (draw one row and
                          ; blank row beneath)
  DEFB 16,19,7            ; Draw ceiling (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 61,0               ; Draw 61 2-by-2 blocks of nothing
  DEFB 3,19,7             ; Draw upper floor (3 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 12,0               ; Draw 12 2-by-2 blocks of nothing
  DEFB 2,19,7             ; Draw 4th step's row (2 blocks, architecture style
                          ; 19, attribute 7)
  DEFB 13,0               ; Draw 13 2-by-2 blocks of nothing
  DEFB 3,19,7             ; Draw 3rd step's row (3 blocks, architecture style
                          ; 19, attribute 7)
  DEFB 12,0               ; Draw 12 2-by-2 blocks of nothing
  DEFB 4,19,7             ; Draw 2nd step's row (4 blocks, architecture style
                          ; 19, attribute 7)
  DEFB 11,0               ; Draw 11 2-by-2 blocks of nothing
  DEFB 5,19,7             ; Draw 1st step's row (5 blocks, architecture style
                          ; 19, attribute 7)
  DEFB 2,0                ; Draw 2 2-by-2 blocks of nothing
  DEFB 231                ; Set brickwork drawing mode 1 (draw one row only)
  DEFB 16,19,7            ; Draw floor (16 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 230                ; Set Brickwork Direction Mode to vertical and reset
                          ; pointers to beginning of display
  DEFB 250,0,0            ; Point bitmap and terrain interaction pointers to (
                          ; 0, 0)
  DEFB 7,19,7             ; Draw left wall (7 blocks, architecture style 19,
                          ; attribute 7)
  DEFB 250,30,0           ; Point bitmap and terrain interaction pointers to
                          ; (30, 0)
  DEFB 4,1,5              ; Draw cyan basement wall (4 blocks, architecture
                          ; style 1, attribute 5)
  DEFB 236,2,5            ; Draw right-facing wall-candle at coordinates ( 2,
                          ; 5)
  DEFB 236,28,11          ; Draw right-facing wall-candle at coordinates (28,
                          ; 11)
  DEFB 0                  ; End of room data

; x- and y-Coordinates of Three Positions in Room that Characters Can Occupy
  DEFB 4,14,8,14,12,14    ; The Lift
  DEFB 3,14,8,14,23,14    ; Roof 1 (The Roof Garden)
  DEFB 2,14,14,14,28,14   ; Roof 2 (The Roof Garden)
  DEFB 3,14,10,14,22,14   ; Roof 3 (The Roof Garden)
  DEFB 26,14,14,14,6,14   ; Roof 4 (The Roof Garden)
  DEFB 17,14,4,14,9,14    ; Roof 5 (The Roof Garden)
  DEFB 4,14,10,14,16,14   ; Roof 6 (The Roof Garden)
  DEFB 4,14,10,14,16,14   ; Roof 7 (The Roof Garden)
  DEFB 26,14,2,14,7,14    ; Roof 8 (The Roof Garden)
  DEFB 20,14,24,14,16,14  ; 4th Floor 1 (The Tower)
  DEFB 10,14,14,14,18,14  ; 4th Floor 2 (Beyond the Tower)
  DEFB 10,14,14,14,18,14  ; 4th Floor 3 (Further Beyond the Tower)
  DEFB 8,10,14,6,20,10    ; 4th Floor 4 (The Ballroom)
  DEFB 4,14,6,14,20,14    ; 4th Floor 5 (The Tree of Karn)
  DEFB 0,14,14,14,26,12   ; 4th Floor 6 (The Stalagmites)
  DEFB 2,14,8,14,22,14    ; 4th Floor 7 (The Big Bottle)
  DEFB 10,14,14,14,18,14  ; 4th Floor 8
  DEFB 10,14,14,14,18,14  ; 3rd Floor 1 (The Library)
  DEFB 2,14,8,14,22,14    ; 3rd Floor 2 (The Little Bottle)
  DEFB 8,10,14,6,20,10    ; 3rd Floor 3 (The Odd-Ball)
  DEFB 10,14,14,14,20,14  ; 3rd Floor 4 (Florin's room)
  DEFB 10,14,14,14,19,14  ; 3rd Floor 5 (The Start Room)
  DEFB 10,14,14,14,20,14  ; 3rd Floor 6 (The L-Shaped Room)
  DEFB 8,14,12,14,16,14   ; 3rd Floor 7 (The Plant Room [Thor's room])
  DEFB 8,14,12,14,16,14   ; 3rd Floor 8 (More Plant Room)
  DEFB 8,14,12,14,16,14   ; 2nd Floor 1
  DEFB 8,14,12,14,16,14   ; 2nd Floor 2
  DEFB 8,14,12,14,16,14   ; 2nd Floor 3
  DEFB 8,14,12,14,16,14   ; 2nd Floor 4
  DEFB 2,14,8,14,14,14    ; 2nd Floor 5 (The Wall) [bug]
  DEFB 14,14,18,14,26,14  ; 2nd Floor 6 (The Gallery)
  DEFB 14,14,18,14,24,14  ; 2nd Floor 7 (The Gallery)
  DEFB 14,14,18,14,22,14  ; 2nd Floor 8 (The Gallery)
  DEFB 14,14,18,14,26,14  ; 1st Floor 1 (The Mush Room)
  DEFB 14,14,18,14,24,14  ; 1st Floor 2 (The Gas Room)
  DEFB 2,14,8,14,12,14    ; 1st Floor 3
  DEFB 2,14,8,14,12,14    ; 1st Floor 4
  DEFB 8,10,14,6,20,10    ; 1st Floor 5 (The Spare Ballroom)
  DEFB 2,14,8,14,22,14    ; 1st Floor 6
  DEFB 2,14,8,14,12,14    ; 1st Floor 7 (The Trophy Room)
  DEFB 2,14,8,14,16,14    ; 1st Floor 8
  DEFB 22,14,14,14,6,14   ; Ground Floor 1
  DEFB 22,14,14,14,6,14   ; Ground Floor 2 (Secret Tunnel Entrance)
  DEFB 2,14,15,14,8,14    ; Ground Floor 3 (Gimbal's Secret Study)
  DEFB 18,6,22,6,26,6     ; Ground Floor 4 (The Secret Tunnel)
  DEFB 4,6,8,6,12,6       ; Ground Floor 5 (More Secret Tunnel)
  DEFB 0,6,4,6,8,6        ; Ground Floor 6 (The Pit)
  DEFB 18,14,22,14,26,14  ; Ground Floor 7
  DEFB 6,2,9,14,22,14     ; Ground Floor 8 (The Most Magic Room)
  DEFB 4,14,8,14,12,14    ; The Basement

; Room names
;
; Strings are zero-terminated. For rooms without a name, the entry is a single
; zero byte. For rooms with names, the first byte of the entry is data, and the
; text string itself starts at the second byte. The data structure is:
  DEFM 8,111,"LIFT",0     ; THE LIFT
  DEFM 15,171,0           ; THE ROOF GARDEN
  DEFM 15,171,0           ; THE ROOF GARDEN
  DEFM 15,171,0           ; THE ROOF GARDEN
  DEFM 15,171,0           ; THE ROOF GARDEN
  DEFM 15,171,0           ; THE ROOF GARDEN
  DEFM 15,171,0           ; THE ROOF GARDEN
  DEFM 15,171,0           ; THE ROOF GARDEN
  DEFM 15,171,0           ; THE ROOF GARDEN
  DEFM 9,111,"TOWER",0    ; THE TOWER
  DEFM 16,"BEYOND ",111,"TOWER",0 ; BEYOND THE TOWER
  DEFM 24,"FURTHUR BEYOND ",111,"TOWER",0 ; FURTHUR BEYOND THE TOWER [bug]
  DEFM 12,111,"BALL",178,0 ; THE BALLROOM
  DEFM 16,111,"TREE OF KARN",0 ; THE TREE OF KARN
  DEFM 15,"THE STALAGMITES",0 ; THE STALAGMITES
  DEFM 14,111,"BIG BOTTLE",0 ; THE BIG BOTTLE
  DEFM 0
  DEFM 11,111,"LIBRARY",0 ; THE LIBRARY
  DEFM 17,111,"LITTLE BOTTLE",0 ; THE LITTLE BOTTLE
  DEFM 12,111,"ODD-BALL",0 ; THE ODD-BALL
  DEFM 0
  DEFM 14,111,"START ",178,0 ; THE START ROOM
  DEFM 17,111,"L-SHAPED ",178,0 ; THE L-SHAPED ROOM
  DEFM 14,111,"PLANT ",178,0 ; THE PLANT ROOM
  DEFM 15,"MORE PLANT ",178,0 ; MORE PLANT ROOM
  DEFM 0
  DEFM 0
  DEFM 0
  DEFM 0
  DEFM 8,111,"WALL",0     ; THE WALL
  DEFM 11,111,"GALLERY",0 ; THE GALLERY
  DEFM 11,111,"GALLERY",0 ; THE GALLERY
  DEFM 11,111,"GALLERY",0 ; THE GALLERY
  DEFM 13,111,"MUSH ",178,0 ; THE MUSH ROOM
  DEFM 12,111,"GAS ",178,0 ; THE GAS ROOM
  DEFM 0
  DEFM 0
  DEFM 18,111,"SPARE BALL",178,0 ; THE SPARE BALLROOM
  DEFM 0
  DEFM 15,111,"TROPHY ",178,0 ; THE TROPHY ROOM
  DEFM 0
  DEFM 0
  DEFM 22,172," ENTRANCE",0 ; SECRET TUNNEL ENTRANCE
  DEFM 21,130,"'S SECRET STUDY",0 ; GIMBAL'S SECRET STUDY
  DEFM 17,111,172,0       ; THE SECRET TUNNEL
  DEFM 18,"MORE ",172,0   ; MORE SECRET TUNNEL
  DEFM 7,111,"PIT",0      ; THE PIT
  DEFM 0
  DEFM 19,111,"MOST MAGIC ",178,0 ; THE MOST MAGIC ROOM
  DEFM 12,111,"BASEMENT",0 ; THE BASEMENT

; Architecture Styles Lookup Table
;
; +--------+---------------------------+
; | Offset | Meaning                   |
; +--------+---------------------------+
; | 0      | Index of top-left UDG     |
; | 1      | Index of top-right UDG    |
; | 2      | Index of bottom-left UDG  |
; | 3      | Index of bottom-right UDG |
; +--------+---------------------------+
  DEFB 0,0,0,0
  DEFB 24,24,24,24
  DEFB 2,3,26,27
  DEFB 4,5,28,29
  DEFB 6,7,30,31
  DEFB 8,9,32,33
  DEFB 10,11,34,35        ; (unused)
  DEFB 12,13,36,37        ; (unused)
  DEFB 14,15,38,39        ; (unused)
  DEFB 48,49,72,73        ; (unused)
  DEFB 10,11,38,39        ; (unused)
  DEFB 54,55,78,79
  DEFB 56,57,80,81
  DEFB 58,59,58,59
  DEFB 16,17,40,41        ; (unused)
  DEFB 82,83,0,0
  DEFB 0,0,0,0
  DEFB 16,17,0,41         ; (unused)
  DEFB 18,19,42,0         ; (unused)
  DEFB 66,67,90,91
  DEFB 42,43,66,67        ; (unused)

; Graphics (Hand Menu Cursor)
  DEFB 0,0,0,48,0,120,0,252
  DEFB 1,254,24,255,23,127,16,54
  DEFB 8,28,18,40,37,32,74,160
  DEFB 149,64,162,128,193,0,0,0

; Table of Start Addresses of Input Device Reading Routines
  DEFW 37884              ; Address of keyboard reading routine
  DEFW 37928              ; Address of Kempston Joystick reading routine
  DEFW 37959              ; Address of Fuller Joystick reading routine
  DEFW 37990              ; Address of Cursor Joystick reading routine
  DEFW 38027              ; Address of ZX Interface 2 Joystick 1 reading
                          ; routine

; Powers of Ten
;
; Used by the routine at 37746 for Converting Numbers to ASCII Strings
  DEFW 10000
  DEFW 1000
  DEFW 100
  DEFW 10
  DEFW 1

; Addresses of Room-Specific Routines
  DEFW 29775              ; The Lift
  DEFW 29775              ; Roof 1 (The Roof Garden)
  DEFW 29775              ; Roof 2 (The Roof Garden)
  DEFW 29775              ; Roof 3 (The Roof Garden)
  DEFW 29775              ; Roof 4 (The Roof Garden)
  DEFW 29775              ; Roof 5 (The Roof Garden)
  DEFW 29775              ; Roof 6 (The Roof Garden)
  DEFW 29775              ; Roof 7 (The Roof Garden)
  DEFW 29775              ; Roof 8 (The Roof Garden)
  DEFW 29775              ; 4th Floor 1 (The Tower)
  DEFW 29775              ; 4th Floor 2 (Beyond the Tower)
  DEFW 29775              ; 4th Floor 3 (Further Beyond the Tower)
  DEFW 29776              ; Update positions of 4 Odd-Balls and display [4th
                          ; Floor 4 (The Ballroom)]
  DEFW 29796              ; 4th Floor 5 (The Tree of Karn)
  DEFW 29796              ; 4th Floor 6 (The Stalagmites)
  DEFW 29797              ; 4th Floor 7 (The Big Bottle)
  DEFW 29799              ; 4th Floor 8
  DEFW 29799              ; 3rd Floor 1 (The Library)
  DEFW 29800              ; 3rd Floor 2 (The Little Bottle)
  DEFW 29874              ; Update position of 1 Odd-Ball and display [3rd
                          ; Floor 3 (The Odd-Ball)]
  DEFW 29879              ; 3rd Floor 4 (Florin's room)
  DEFW 29879              ; 3rd Floor 5 (The Start Room)
  DEFW 29879              ; 3rd Floor 6 (The L-Shaped Room)
  DEFW 29879              ; 3rd Floor 7 (The Plant Room [Thor's room])
  DEFW 29879              ; 3rd Floor 8 (More Plant Room)
  DEFW 29879              ; 2nd Floor 1
  DEFW 29879              ; 2nd Floor 2
  DEFW 29879              ; 2nd Floor 3
  DEFW 29879              ; 2nd Floor 4
  DEFW 29879              ; 2nd Floor 5 (The Wall)
  DEFW 29879              ; 2nd Floor 6 (The Gallery)
  DEFW 29879              ; 2nd Floor 7 (The Gallery)
  DEFW 29879              ; 2nd Floor 8 (The Gallery)
  DEFW 29879              ; 1st Floor 1 (The Mush Room)
  DEFW 29880              ; 1st Floor 2 (The Gas Room)
  DEFW 29910              ; 1st Floor 3
  DEFW 29910              ; 1st Floor 4
  DEFW 29911              ; Update positions of 4 Odd-Balls and display [1st
                          ; Floor 5 (The Spare Ballroom)]
  DEFW 29914              ; 1st Floor 6
  DEFW 29914              ; 1st Floor 7 (The Trophy Room)
  DEFW 29914              ; 1st Floor 8
  DEFW 29914              ; Ground Floor 1
  DEFW 29914              ; Ground Floor 2 (Secret Tunnel Entrance)
  DEFW 29914              ; Ground Floor 3 (Gimbal's Secret Study)
  DEFW 29914              ; Ground Floor 4 (The Secret Tunnel)
  DEFW 29914              ; Ground Floor 5 (More Secret Tunnel)
  DEFW 29915              ; Ground Floor 6 (The Pit)
  DEFW 29927              ; Ground Floor 7
  DEFW 29928              ; Ground Floor 8 (The Most Magic Room)
  DEFW 29949              ; The Basement


; Call Time-Dependent Routines [Main Interrupt Routine]
;
; Used by the routine at 65524.
  CALL 55546              ; Store all registers on the stack
  LD A,(37655)            ; Load A with index of Current Window...
  CP 6                    ; ...and if this is 6 (Control Selection Window)...
  JP Z,54955              ; ...then skip ahead to 54955
  BIT 0,(IY+65)           ; If "Update Game Time and Locate Arrow Glow" flag is
                          ; reset...
  JP Z,54949              ; ...then skip to end of interrupt routine
  CALL 54996              ; Update game time, time left and (every minute)
                          ; read-text of Crystal Ball
  LD BC,(23462)           ; Load x- & y- coordinate of top-left character of
                          ; currently glowing "Locate Compass" component into
                          ; BC
  LD A,B                  ; If this is zero (i.e. compass not glowing because
                          ; Magic Knight isn't "locating")...
  OR C                    ; ...
  JP Z,54916              ; ...jump to 54916...
  LD A,(23408)            ; Else, load "Compass Glow Update Flag" into A
  INC A                   ; Invert Compass Glow Update Flag
  AND 1                   ; Store back at 23408 and if Compass Glow Update Flag
                          ; is set...
  LD (23408),A            ; ...
  JR NZ,54916             ; ...then skip over glow attribute update section to
                          ; 54916 (don't update glowing attributes this time)
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  CALL 54983              ; Update glowing blocks' attribute to next colour in
                          ; sequence and load into E
  CALL 54976              ; Write current attribute for a glowing block to
                          ; Attribute File (HL) and advance HL
  CALL 54976              ; Write current attribute for a glowing block to
                          ; Attribute File (HL) and advance HL
  LD BC,30                ; Advance Attribute File address (HL) down to next
                          ; row, to the block immediately below the first one
                          ; updated at instruction 54900...
  ADD HL,BC               ; ...
  CALL 54976              ; Write current attribute for a glowing block to
                          ; Attribute File (HL) and advance HL
  CALL 54976              ; Write current attribute for a glowing block to
                          ; Attribute File (HL) and advance HL
  BIT 1,(IY+65)           ; If "Disable In-Game Glow" flag is set...
  JP NZ,54949             ; ...then skip to end of interrupt routine
  LD IX,23383             ; Point IX at table of Attribute File addresses that
                          ; are glowing
  CALL 54983              ; Update glowing blocks' attribute to next colour in
                          ; sequence and load into E
  LD L,(IX+0)             ; Load a glowing Attribute File address into HL...
  LD H,(IX+1)             ; ...
  LD A,L                  ; If HL is zero...
  OR H                    ; ...
  JR Z,54949              ; ...then jump to 54949 (to exit loop)
  CALL 54976              ; Write current attribute for a glowing block to
                          ; Attribute File (HL) and advance HL
  INC IX                  ; Advance to next Attribute File address in list of
                          ; glowing blocks...
  INC IX                  ; ...
  JR 54930                ; Jump back to 54930 to update next block
; This entry point is used by the routine at 54955.
  CALL 55574              ; Restore all registers from the stack
  JP 56                   ; Jump to ROM maskable interrupt routine (update
                          ; frame counter, read keyboard and then return to
                          ; main game code where the interrupt was triggered)

; Interrupt Routine Update Glowing Character on Input Selection Menu
;
; Used by the routine at 54853.
  LD A,(40140)            ; Load input device selection into A
  SUB 65                  ; Subtract 65 (minimum value it can be)
  ADD A,12                ; Add 12
  LD B,A                  ; Load coordinates of glowing square (control
                          ; selection menu) into BC...
  LD C,1                  ; ...
  CALL 36569              ; Update Virtual Attribute Cursor storage location to
                          ; coordinates x=C y=B and point HL to corresponding
                          ; Attribute File address
  CALL 54983              ; Update glowing blocks' attribute to next colour in
                          ; sequence and load into E
  CALL 54976              ; Write current attribute for a glowing block to
                          ; Attribute File
  JR 54949                ; Exit interrupt routine

; Interrupt Routine Write Current Attribute for a Glowing Block to Attribute
; File
;
; Used by the routines at 54853 and 54955. Input:  HL  Attribute File address
; that is glowing E  Current attribute of glowing blocks Output: HL  Next
; Attribute File address on from that in HL on input
  LD A,(HL)               ; Load current attribute of this memory location into
                          ; A
  AND 248                 ; Reset all INK bits
  OR E                    ; Set required INK bits for current colour
  LD (HL),A               ; Write data to Attribute File to display the colour
  INC HL                  ; Advance to next Attribute File address
  RET                     ; Return

; Interrupt Routine Update Glowing Blocks' Attribute to Next Colour in Sequence
;
; Used by the routines at 54853 and 54955. Output: E  New attribute of glowing
; blocks
  LD A,(23409)            ; Load A with current INK colour of glowing blocks
  INC A                   ; Advance to next colour in sequence
  AND 7                   ; Ensure that only INK attributes are used, rolling
                          ; back over to zero (black) after seven (white)
  JR Z,54986              ; We don't want "black" light, so advance from zero
                          ; (black) to one (blue) if black
  LD (23409),A            ; Place updated attribute back in memory
  LD E,A                  ; Copy new attribute into E
  RET                     ; Return

; Update Game Time, Time Left and (Every Minute) Read-Text of Crystal Ball
;
; Used by the routine at 54853.
  LD A,(23407)            ; [EVERY 1/50 SECOND] Increase number of elapsed 1/50
                          ; seconds
  INC A                   ; ...
  LD (23407),A            ; ...
  CP 50                   ; If new value isn't 50 then return...
  RET NZ                  ; ...
  XOR A                   ; [EVERY 1 SECOND] Else, set the value to zero (start
                          ; of next full second)...
  LD (23407),A            ; ...
  CALL 55233              ; If character whose turn it is to move is free and
                          ; awake, then update their current room if possible
  LD A,(23406)            ; Increase number of seconds elapsed...
  INC A                   ; ...
  LD (23406),A            ; ...
  CP 60                   ; If new value isn't 60 then return...
  RET NZ                  ; ...
  XOR A                   ; [EVERY 1 MINUTE] Else, set the value to zero (start
                          ; of next minute)...
  LD (23406),A            ; ...
  CALL 55077              ; Update all characters' stats (deteriorate or
                          ; regenerate) and wake up / send to sleep if required
  CALL 55349              ; Move the Lift to a random floor if Magic Knight is
                          ; not nearby
  LD A,(42292)            ; Update read-text property of Crystal Ball...
  INC A                   ; ...
  LD (42292),A            ; ...
  CP 144                  ; If read-text property is less than 144...
  JR NZ,55049             ; ...skip ahead to 55049...
  LD A,139                ; ...else set read-text property of Crystal Ball to
                          ; 139...
  LD (42292),A            ; ...
  LD A,(23405)            ; Increase number of minutes elapsed...
  INC A                   ; ...
  LD (23405),A            ; ...
  CP 5                    ; If new value isn't 5 then return...
  RET NZ                  ; ...
  XOR A                   ; [EVERY 5 MINUTES] Else, set the value to zero
                          ; (start of next "hour")...
  LD (23405),A            ; ...
  LD A,(23404)            ; Decrease number of hours left...
  DEC A                   ; ...
  LD (23404),A            ; ...
  JP Z,55478              ; If zero then jump to "Out of time" game over
                          ; message
  CALL 38075              ; Set parameters for and play upward scale sound
  RET                     ; Return

; Update All Characters' Stats (Deteriorate or Regenerate) and Wake Up / Send
; to Sleep if Required
;
; Used by the routine at 54996.
  LD DE,8                 ; Load DE with 8 (as data is 8 bytes long)
  LD HL,55490             ; Point HL at Gimbal's stat regeneration data
  LD IX,25323             ; Point IX to Gimbal's current stats
  LD B,7                  ; Load B with 7 (as there are 7 characters to which
                          ; this routine applies - Banshee is excluded)
  LD A,(23468)            ; If "Gimbal is free" flag is set...
  AND 1                   ; ...
  JR NZ,55104             ; ...then jump ahead to 55104
  LD HL,55498             ; Else point HL at Thor's stat regeneration data
  LD IX,25331             ; Point IX to Thor's current stats
  DEC B                   ; Decrease B to 6 as, since Gimbal is not free, he is
                          ; not included in this routine's function
  BIT 7,(IX+6)            ; If current character is awake...
  JR Z,55114              ; ...then skip ahead to 55114
  INC HL                  ; Advance HL by four bytes to stat deterioration
                          ; data...
  INC HL                  ; ...
  INC HL                  ; ...
  INC HL                  ; ...
  LD C,(HL)               ; Load stat change value into C
  LD A,(IX+0)             ; Load current character's strength into A
  CALL 55219              ; Update character's strength as they tire (awake) or
                          ; regenerate (asleep)...
  LD (IX+0),A             ; ...
  INC HL                  ; Advance HL to next (happiness) data
  LD C,(HL)               ; Load stat change value into C
  LD A,(IX+1)             ; Load current character's happiness into A
  CALL 55219              ; Update character's happiness as they tire (awake)
                          ; or regenerate (asleep)...
  LD (IX+1),A             ; ...
  INC HL                  ; Advance HL to next (stamina) data
  LD C,(HL)               ; Load stat change value into C
  LD A,(IX+2)             ; Load current character's stamina into A
  CALL 55219              ; Update character's stamina as they tire (awake) or
                          ; regenerate (asleep)...
  LD (IX+2),A             ; ...
  INC HL                  ; Advance HL to next (spell power) data
  LD C,(HL)               ; Load stat change value into C
  LD A,(IX+3)             ; Load current character's spell power into A
  CALL 55219              ; Update character's spell power as they tire (awake)
                          ; or regenerate (asleep)...
  LD (IX+3),A             ; ...
  INC HL                  ; Advance HL to next block of data
  BIT 7,(IX+6)            ; If current character is asleep...
  JR NZ,55168             ; ...then we have already moved into data for next
                          ; character, so skip ahead to 55168
  INC HL                  ; Else, we are now in same character's "asleep" data,
                          ; so need to advance HL by four bytes to get to next
                          ; character's data...
  INC HL                  ; ...
  INC HL                  ; ...
  INC HL                  ; ...
  ADD IX,DE               ; Advance IX by eight bytes to next character's stats
  DJNZ 55104              ; Loop back to 55104
  LD DE,8                 ; Load DE with 8
  LD IX,25323             ; Point IX to Gimbal's current stats
  LD B,7                  ; Load B with 7 (as there are 7 characters to which
                          ; this routine applies - Banshee is excluded)
  LD C,0                  ; Load C with zero (to denote first character,
                          ; Gimbal)
  LD A,(IX+2)             ; Load current character's stamina into A
  OR A                    ; If stamina is not zero...
  JP NZ,55196             ; ...then skip ahead to 55196
  SET 7,(IX+6)            ; Else send character to sleep
  JR 55205                ; Skip ahead to 55205
  CP 100                  ; If stamina is not 100...
  JP NZ,55205             ; ...then skip ahead to 55205
  RES 7,(IX+6)            ; Else wake character up
  LD A,(IX+0)             ; Load character's strength into A
  OR A                    ; If strength is zero...
  JP Z,55461              ; ...then the character has starved to death, so jump
                          ; to 55461
  ADD IX,DE               ; Advance IX to next character's stats
  INC C                   ; Increase C for next character
  DJNZ 55183              ; Loop back to 55183 for next character
  RET                     ; Return

; Index of Character Whose Turn it is to Move
  DEFB 8

; Update Characters' Stats as They Tire (Awake) or Regenerate (Asleep)
;
; Used by the routine at 55077. Input:  A  A character's stat (strength,
; stamina, happiness or spell power) C  An increment (while asleep) or
; decrement (while awake) for that stat Output: A  New value of stat
  ADD A,C                 ; Add stat and data together
  OR A                    ; (Re)set sign flag
  JP P,55226              ; If sign flag reset (i.e. MSB is reset and result is
                          ; positive) then jump ahead to 55226
  XOR A                   ; else stat must have dropped below zero, so set stat
                          ; to zero (as it can't be less than 0)
  RET                     ; Return
  CP 100                  ; If new value of stat is less than or equal to
                          ; 100...
  RET Z                   ; ...then return...
  RET C                   ; ...
  LD A,100                ; ...else set stat to 100 (as it can't be greater
                          ; than 100)
  RET                     ; Return

; Interrupt Routine If Character is Free and Awake, then Update Their Current
; Room if Possible
;
; Used by the routine at 54996.
  BIT 2,(IY+65)           ; If "Characters Can't Move" flag is set...
  RET NZ                  ; ...then return without moving characters
  LD A,(55218)            ; Load "character to move" index into A
  INC A                   ; Increase by one, but cap at 31 and reset to zero if
                          ; now above this...
  AND 31                  ; ...
  LD (55218),A            ; ...
  AND 24                  ; Return if value is over 7...
  RET NZ                  ; ...
  LD A,(55218)            ; Load "character to move" index into A
  OR A                    ; If value is not zero...
  JR NZ,55264             ; ...then skip ahead to 55264
  LD A,(23468)            ; If Gimbal is not free...
  AND 1                   ; ...
  RET Z                   ; ...then return
  JR 55274                ; Skip ahead to 55274
  CP 7                    ; If value is not 7...
  JR NZ,55274             ; ...then skip ahead to 55274
  LD A,(23467)            ; If Banshee not released...
  AND 1                   ; ...
  RET Z                   ; ...then return
  LD A,(55218)            ; Load A with "character to move" index
  LD E,6                  ; Point HL at character's "asleep flag"...
  CALL 34174              ; ...
  BIT 7,(HL)              ; ...and if character is asleep...
  RET NZ                  ; ...then return
  LD A,(55218)            ; Load "character to move" index into A
  LD C,A                  ; Multiply by three (as data entries are three bytes
                          ; wide)...
  ADD A,A                 ; ...
  ADD A,C                 ; ...
  LD C,A                  ; Load into BC...
  LD B,0                  ; ...
  LD HL,25440             ; Point HL at start of current character positions
                          ; table
  ADD HL,BC               ; Add BC as offset
  LD A,(65529)            ; Load Magic Knight's current room into A
  CP (HL)                 ; If Magic Knight and the character are both in the
                          ; same room...
  RET Z                   ; ...then return
  LD B,A                  ; Copy Magic Knight's current room into B
  LD A,(HL)               ; If character's current room is not 99...
  CP 99                   ; ...
  JR NZ,55319             ; ...then jump to 55319
  CP 100                  ; If character's current room is 100 (i.e. character
                          ; has been sent home)... [bug: can't happen as won't
                          ; reach this instruction if room is 100]
  RET Z                   ; ...then return
  LD A,(55218)            ; Current room is 99 (character has been commanded to
                          ; go away), so calculate the index of that
                          ; character's "Go Away Base Room"...
  ADD A,A                 ; ...((4 x Character Index) + 5)...
  ADD A,A                 ; ...
  ADD A,5                 ; ...
  CALL 55404              ; Load A with new room index for character to move
                          ; into based upon current room
  CP 255                  ; If new room index is 255...
  RET Z                   ; ...then return
  CP B                    ; If new room index is same as Magic Knight's current
                          ; room...
  RET Z                   ; ...then return
  PUSH AF                 ; Store AF (A = new room index)
  LD C,A                  ; Load new room index into C
  LD A,(55218)            ; Load "character to move" index into B...
  LD B,A                  ; ...
  PUSH HL                 ; Store HL (pointer to character's current room)
  CALL 36327              ; Assign a slot in room C to character B and get x-
                          ; and y-coordinates in BC
  POP HL                  ; Restore HL (pointer to character's current room)
  POP DE                  ; Restore DE (was AF, now D = new room index)
  CP 4                    ; If new room is full...
  RET Z                   ; ...then return
  LD A,D                  ; Copy new room index into A
  LD (HL),A               ; Set character to be at coordinates (C, B) in room
                          ; A...
  INC HL                  ; ...
  LD (HL),C               ; ...
  INC HL                  ; ...
  LD (HL),B               ; ...
  RET                     ; Return

; Move the Lift to a Random Floor if Magic Knight is not Nearby
;
; Used by the routine at 54996.
  LD A,(65529)            ; Load Magic Knight's current room into A
  OR A                    ; Return is Magic Knight is in the Lift (room 0)...
  RET Z                   ; ...
  DEC A                   ; Return if Magic Knight is in a room that connects
                          ; with the lift...
  AND 7                   ; ...
  RET Z                   ; ...
  LD B,6                  ; Load A with a random number less than or equal to
                          ; 6...
  CALL 38505              ; ...
  LD B,A                  ; Copy random number into B
  LD A,(23411)            ; Load A with game progress flags
  AND 1                   ; If the Lift is fixed...
  JR NZ,55378             ; ...then jump to 55378
  LD A,B                  ; Else copy random number back to A
  CP 5                    ; If random number is 5 or 6 then return...
  RET Z                   ; ...
  CP 6                    ; ...
  RET Z                   ; ...
  PUSH BC                 ; Store BC...
  CALL 33770              ; ...set the Lift as not being at any floor at all...
  POP AF                  ; ...and restore BC value to AF
  LD (23382),A            ; Set Lift control panel light corresponding with
                          ; previous randomly generated number to glow
  ADD A,A                 ; Multiply A by eight...
  ADD A,A                 ; ...
  ADD A,A                 ; ...
  INC A                   ; ...and add one to get first room on "random" floor
  LD (41712),A            ; Set right-exit of Lift to first room on floor
  ADD A,A                 ; Double room number
  LD D,0                  ; Load into DE...
  LD E,A                  ; ...
  LD HL,41711             ; Point HL at start of room connectivity data
  ADD HL,DE               ; Add offset for left-exit of first room on random
                          ; floor...
  LD (HL),0               ; ...and set this exit to lead to the Lift
  RET                     ; Return

; Load A with New Room Index for a Character to Move into
;
; This routine causes a character to leave his / her current room and move to
; an adjacent room if that character has a current room index not equal to 99.
; In this case, the value of A upon entering this routine is the index of that
; character's current room. Input:  A  Character's current room index, or ((4 x
; character index) + 5) Output: A  New room index for character to move into
  PUSH HL                 ; Store HL
  PUSH DE                 ; Store DE
  ADD A,A                 ; Load double A (now either "character to move" index
                          ; x 8 + 10, or double a room index) into E...
  LD E,A                  ; ...
  LD A,(55218)            ; Load "character to move" index into A
  AND 1                   ; Discard all but bit 0 (odd / even)
  LD D,A                  ; Load 0 for even-numbered character (EC), or 1 for
                          ; odd-numbered character (OC) into D
  LD A,(23404)            ; Load A with number of hours left
  AND 1                   ; Set A to 0 for even number of hours left (EH), or 1
                          ; for odd number of hours left (OH)
  XOR D                   ; Set A to 0 for EH / EC or OH/OH, and 1 for EH / OC
                          ; or OH / EC
  ADD A,E                 ; Add A (0 or 1, i.e. left or right) to double room
                          ; index in DE...
  LD E,A                  ; ...
  LD D,0                  ; ...
  LD HL,41711             ; Point HL at table of room connectivity data
  ADD HL,DE               ; Add DE as offset
  LD A,(HL)               ; Load room index off current room's exit of interest
  CP 255                  ; If 255 (i.e. no exit from room)...
  JR Z,55456              ; ...return with A = 255
  CP 34                   ; If 34 (i.e. "The Gas Room")...
  JR Z,55456              ; ...return with A = 255
  CP 18                   ; If 18 (i.e. "The Little Bottle")...
  JR Z,55456              ; ...return with A = 255
  CP 46                   ; If 46 (i.e. "The Pit")...
  JR Z,55456              ; ...return with A = 255
  CP 9                    ; If 9 (i.e. "The Tower")...
  JR Z,55456              ; ...return with A = 255
  CP 29                   ; If 29 (i.e. "The Wall")...
  JR Z,55456              ; ...return with A = 255
  POP DE                  ; Restore DE
  POP HL                  ; Restore HL
  RET                     ; Return
  LD A,255                ; Set A to 255 (to denote that chosen room exit is
                          ; impassable)
  POP DE                  ; Restore DE
  POP HL                  ; Restore HL
  RET                     ; Return

; Interrupt Routine End Game Due to a Character Starving to Death
;
; Used by the routine at 55077. Input:  C  Index of character who has starved
; to death
  LD A,C                  ; Set starved character to be Current Character...
  LD (30615),A            ; ...
  POP HL                  ; Restore HL (return address from call to "Update All
                          ; Characters' Stats (Deteriorate or Regenerate) and
                          ; Wake Up / Send to Sleep if Required" routine at
                          ; 55077)
  POP HL                  ; Restore HL (return address from call to "Update
                          ; Game Time, Time Left and (Every Minute) Read-Text
                          ; of Crystal Ball" routine at 54996)
  CALL 55574              ; Restore all registers from stack
  POP HL                  ; Restore HL (return address from call to interrupt
                          ; routine)
  LD HL,51787             ; Point HL at "[CHARACTER] HAS STARVED TO DEATH..."
                          ; text
  EI                      ; Enable interrupts
  JP 35101                ; Jump to Game Over routine and return to pre-game
                          ; menu

; Interrupt Routine End Game Due to Running Out of Time
;
; Used by the routine at 54996.
  POP HL                  ; Restore HL (return address from call to "Update
                          ; Game Time, Time Left and (Every Minute) Read-Text
                          ; of Crystal Ball" routine at 54996)
  CALL 55574              ; Restore all registers from stack
  POP HL                  ; Restore HL (return address from call to interrupt
                          ; routine)
  LD HL,51898             ; Point HL at "YOU RAN OUT OF TIME" text
  EI                      ; Enable interrupts
  JP 35101                ; Jump to Game Over routine and return to pre-game
                          ; menu

; Characters' Rates of Stat Regeneration
;
; Stats are in order:
  DEFB 255,255,253,252,10,8,15,10 ; Gimbal (-1, -1, -3, -4, 10, 8, 15, 10)
  DEFB 250,253,255,255,5,3,4,1 ; Thor   (-6, -3, -1, -1,  5, 3,  4,  1)
  DEFB 253,255,252,251,3,7,4,8 ; Florin (-3, -1, -4, -5,  3, 7,  4,  8)
  DEFB 253,254,252,252,7,8,3,9 ; Orik   (-3, -2, -4, -4,  7, 8,  3,  9)
  DEFB 255,253,253,255,10,2,10,1 ; Samsun (-1, -3, -3, -1, 10, 2, 10,  1)
  DEFB 253,254,252,250,8,4,4,8 ; Elrand (-3, -2, -4, -6,  8, 4,  4,  8)
  DEFB 253,254,252,252,8,4,4,3 ; Rosmar (-3, -2, -4, -4,  8, 4,  4,  3)

; Store All Registers on the Stack
;
; Used by the routine at 54853.
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

; Interrupt Routine Restore All Registers from the Stack
;
; Used by the routines at 54853, 55461 and 55478.
  POP HL                  ; Restore registers HL, IY & IX (HL has address of
                          ; call to this routine, i.e. 55574)...
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
  EX (SP),HL              ; Put HL (address of call to 55574) back on stack in
                          ; preparation for RET and take off original value of
                          ; HL
  RET                     ; Return

; Source Code Fragment
;
; This source code fragment appears to be part of the routine at 55077, dealing
; with characters' stat regeneration / deterioration
  DEFM "M",141
  DEFM "LD HL,DETAILSCUPD1+8",141
  DEFM "LD IX,DETAILSC+8",141
  DEFM "DEC B",141
  DEFM "ICUPD1:BIT 7,(IX+6)",141
  DEFM "JR Z,ICUPDAS1 ",59,"AWAKE",141
  DEFM 59,"ASLEEP",141
  DEFM "INC HL",141
  DEFM "INC HL",141
  DEFM "INC HL",141
  DEFM "INC HL",141
  DEFM "I"

; Graphics (Scenery Part 1) Right bookend (3 x 2)
  DEFB 192,0,0,224,0,0,254,0
  DEFB 0,255,128,0,225,192,0,193
  DEFB 192,0,206,224,0,222,224,0
  DEFB 217,199,128,223,143,192,206,31
  DEFB 224,192,60,112,224,121,176,216
  DEFB 241,48,207,192,112,255,255,224
; Left bookend (3 x 2)
  DEFB 0,0,3,0,0,7,0,0
  DEFB 127,0,1,255,0,3,135,0
  DEFB 3,131,0,7,115,0,7,123
  DEFB 1,227,155,3,241,251,7,248
  DEFB 115,14,60,3,13,158,7,12
  DEFB 143,27,14,3,243,7,255,255
; Books (1) (5 x 2)
  DEFB 254,3,248,15,240,130,2,8
  DEFB 15,240,254,114,232,12,48,198
  DEFB 114,168,9,144,254,114,233,203
  DEFB 208,254,114,233,74,80,198,114
  DEFB 233,202,80,146,114,233,202,80
  DEFB 186,114,233,203,208,186,114,233
  DEFB 203,208,186,114,233,203,208,186
  DEFB 114,233,203,208,186,114,233,202
  DEFB 80,146,114,233,201,144,198,114
  DEFB 9,76,48,254,115,249,207,240
; Books (2) (5 x 3)
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,254
  DEFB 0,0,0,0,254,0,0,3
  DEFB 252,198,0,0,3,252,130,0
  DEFB 0,3,156,186,0,0,3,12
  DEFB 130,15,240,3,12,130,15,243
  DEFB 243,108,186,12,51,51,12,130
  DEFB 9,146,19,12,131,203,210,211
  DEFB 12,147,74,82,211,12,131,202
  DEFB 82,19,12,131,202,82,147,12
  DEFB 131,203,210,19,12,131,203,210
  DEFB 19,12,131,203,210,19,108,187
  DEFB 203,210,19,108,187,202,82,211
  DEFB 12,131,201,146,19,156,199,76
  DEFB 51,51,252,255,207,243,243,252
; Books (3) (5 x 3)
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,254
  DEFB 0,0,0,0,254,0,0,3
  DEFB 252,198,0,0,3,252,130,0
  DEFB 0,3,156,186,0,0,3,12
  DEFB 130,248,0,3,12,130,248,7
  DEFB 243,108,186,136,6,51,12,130
  DEFB 139,228,19,12,130,251,229,211
  DEFB 12,146,218,37,211,12,130,250
  DEFB 36,19,12,130,251,228,147,12
  DEFB 130,251,228,19,12,130,250,36
  DEFB 19,12,130,250,36,19,108,186
  DEFB 250,36,19,108,186,218,37,211
  DEFB 12,130,250,36,19,156,198,138
  DEFB 38,51,252,254,251,231,243,252
; Books (4) (5 x 2)
  DEFB 240,15,240,3,248,240,15,240
  DEFB 2,8,144,12,48,114,232,144
  DEFB 9,144,114,168,147,203,208,114
  DEFB 232,146,74,80,114,232,147,202
  DEFB 80,114,232,243,202,80,114,232
  DEFB 243,203,208,114,232,243,203,208
  DEFB 114,232,243,203,208,114,232,243
  DEFB 203,208,114,232,147,202,80,114
  DEFB 232,243,201,144,114,232,146,76
  DEFB 48,114,8,243,207,240,115,248
; Ceiling Candles (3 x 6)
  DEFB 0,0,0,31,255,248,15,255
  DEFB 240,0,0,0,0,255,0,0
  DEFB 255,0,0,60,0,0,24,0
  DEFB 0,24,0,0,24,0,0,24
  DEFB 0,0,24,0,0,24,0,0
  DEFB 24,0,0,24,0,0,24,0
  DEFB 0,24,0,0,24,0,8,24
  DEFB 0,28,24,0,28,24,0,28
  DEFB 24,0,8,24,0,0,24,0
  DEFB 30,24,0,62,24,0,58,24
  DEFB 0,122,24,8,94,24,12,94
  DEFB 24,28,124,24,28,124,24,24
  DEFB 124,24,8,60,24,32,60,24
  DEFB 56,60,24,44,60,24,60,60
  DEFB 24,60,255,24,255,255,24,255
  DEFB 0,8,0,255,255,255,127,255
  DEFB 254,0,0,0,63,255,252,0
  DEFB 60,0,0,0,0,0,0,0
; Big Bottle Top (4 x 4)
  DEFB 0,15,240,0,0,25,248,0
  DEFB 0,25,248,0,0,31,248,0
  DEFB 0,0,0,0,0,15,240,0
  DEFB 0,15,240,0,0,0,0,0
  DEFB 0,31,240,0,0,239,246,0
  DEFB 2,79,251,128,6,15,253,192
  DEFB 14,15,252,96,31,31,251,176
  DEFB 27,31,250,144,57,191,196,216
  DEFB 49,191,132,220,1,127,132,140
  DEFB 0,95,143,36,2,191,188,98
  DEFB 6,127,240,98,180,255,240,226
  DEFB 181,255,224,194,173,255,225,218
  DEFB 171,255,243,250,219,111,247,254
  DEFB 219,39,255,242,211,3,255,248
  DEFB 193,3,255,192,229,3,255,128
  DEFB 229,131,255,194,246,231,131,254
; Big / Little Bottle Body (4 x 4)
  DEFB 247,119,0,126,119,119,0,252
  DEFB 111,119,48,60,111,118,255,252
  DEFB 111,173,255,252,111,172,7,252
  DEFB 55,160,3,248,55,156,3,248
  DEFB 59,126,15,248,42,255,199,248
  DEFB 52,255,247,248,54,127,255,248
  DEFB 23,127,255,240,27,127,255,240
  DEFB 27,56,127,240,27,176,31,240
  DEFB 29,176,7,240,14,32,127,224
  DEFB 15,32,15,224,3,135,255,224
  DEFB 13,223,255,224,13,223,129,192
  DEFB 6,95,3,192,7,158,1,192
  DEFB 7,209,143,192,7,207,255,192
  DEFB 7,223,255,192,7,159,255,128
  DEFB 2,63,254,0,3,15,225,128
  DEFB 1,240,31,0,0,31,248,0
; Little Bottle Top (4 x 2)
  DEFB 0,15,192,0,0,127,252,0
  DEFB 0,239,254,0,0,207,254,0
  DEFB 0,239,254,0,0,255,254,0
  DEFB 0,127,252,0,0,0,0,0
  DEFB 0,255,254,0,1,143,255,0
  DEFB 0,255,254,0,0,0,0,0
  DEFB 3,249,255,128,27,197,255,240
  DEFB 115,185,240,60,247,187,128,126
; Stag's Head (6 x 7)
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,6,0,0,0,0,0
  DEFB 6,0,0,24,0,0,7,0
  DEFB 0,24,0,0,7,0,0,24
  DEFB 0,0,7,3,0,24,0,0
  DEFB 7,3,12,28,0,0,7,3
  DEFB 12,28,0,12,7,199,14,60
  DEFB 7,156,15,255,15,60,15,223
  DEFB 207,254,7,254,30,199,255,224
  DEFB 0,254,56,0,126,0,0,15
  DEFB 56,0,124,0,0,7,240,0
  DEFB 28,0,0,1,240,0,120,0
  DEFB 0,0,56,1,240,0,0,0
  DEFB 28,15,224,0,0,0,30,31
  DEFB 128,0,0,0,14,28,0,0
  DEFB 0,0,7,24,127,0,0,7
  DEFB 231,24,195,0,0,3,187,41
  DEFB 142,0,0,3,9,203,24,0
  DEFB 0,1,137,203,24,0,0,1
  DEFB 206,251,240,0,0,0,127,255
  DEFB 224,0,0,0,7,252,0,0
  DEFB 0,0,13,236,0,0,0,0
  DEFB 14,222,0,0,0,0,30,222
  DEFB 0,0,0,0,31,254,0,0
  DEFB 0,0,31,254,0,0,0,0
  DEFB 31,250,0,0,0,0,23,248
  DEFB 0,0,0,0,7,248,0,0
  DEFB 0,0,36,12,0,0,0,0
  DEFB 104,101,0,0,0,0,236,37
  DEFB 128,0,0,1,204,5,192,0
  DEFB 0,1,151,28,224,0,0,3
  DEFB 215,59,96,0,0,3,216,5
  DEFB 48,0,0,3,156,77,176,0
  DEFB 0,3,15,253,176,0,0,2
  DEFB 110,245,192,0,0,1,238,97
  DEFB 240,0,0,1,236,105,224,0
  DEFB 0,0,225,125,128,0,0,0
  DEFB 103,63,0,0,0,0,15,188
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,7,248
  DEFB 0,0,0,0,7,248,0,0
; Wall Clock (3 x 10)
  DEFB 0,8,0,0,8,0,0,28
  DEFB 0,0,28,0,0,62,0,0
  DEFB 227,128,1,193,192,1,193,192
  DEFB 1,193,128,28,227,56,62,126
  DEFB 124,48,0,12,48,255,12,51
  DEFB 1,204,22,124,104,29,239,48
  DEFB 59,199,184,51,199,152,119,239
  DEFB 220,119,239,220,116,206,92,119
  DEFB 31,220,119,31,220,67,255,132
  DEFB 59,239,152,125,239,60,108,124
  DEFB 100,127,3,252,63,255,248,0
  DEFB 0,0,252,0,126,127,255,252
  DEFB 0,0,0,112,255,28,227,129
  DEFB 134,206,124,230,253,198,126,123
  DEFB 3,60,0,0,0,63,255,248
  DEFB 31,255,240,0,0,0,3,131
  DEFB 128,1,255,0,0,130,0,0
  DEFB 68,0,0,130,0,0,68,0
  DEFB 0,130,0,0,68,0,0,130
  DEFB 0,0,68,0,0,130,0,0
  DEFB 68,0,0,130,0,0,68,0
  DEFB 0,130,0,0,68,0,0,130
  DEFB 0,0,68,0,0,130,0,1
  DEFB 196,0,1,194,0,3,228,0
  DEFB 3,226,0,3,164,0,3,34
  DEFB 0,3,36,0,1,194,0,0
  DEFB 4,0,0,2,0,0,4,0
  DEFB 0,6,0,0,15,0,0,15
  DEFB 0,0,31,128,0,30,128,0
  DEFB 28,128,0,24,128,0,15,0
; Unknown (2 x 5)
  DEFB 3,160,7,224,0,0,31,224
  DEFB 63,48,63,144,63,16,31,224
  DEFB 0,0,15,224,30,240,22,240
  DEFB 63,176,43,240,43,80,43,80
  DEFB 47,88,111,200,95,216,93,248
  DEFB 95,236,87,228,95,164,122,164
  DEFB 58,180,43,148,105,180,109,164
  DEFB 100,236,68,232,69,232,205,232
  DEFB 253,108,237,100,237,228,167,166
  DEFB 4,130,4,0,0,0,0,0
; Unknown (2 x 2)
  DEFB 3,160,7,32,15,64,15,192
  DEFB 31,128,31,64,30,224,13,160
  DEFB 3,160,7,32,15,64,15,192
  DEFB 31,128,31,64,30,224,13,160
; Plant (1) (2 x 5)
  DEFB 0,0,0,0,7,128,12,192
  DEFB 8,64,8,96,15,32,13,160
  DEFB 12,160,8,167,0,173,0,168
  DEFB 12,239,124,157,70,128,66,120
  DEFB 66,252,194,156,130,156,134,158
  DEFB 181,158,245,182,213,22,221,22
  DEFB 141,22,141,18,141,18,13,32
  DEFB 13,96,9,96,11,64,11,64
  DEFB 11,70,10,79,10,201,10,143
  DEFB 10,157,10,48,10,0,0,0
; Plant (2) (2 x 5)
  DEFB 4,64,12,32,12,32,12,96
  DEFB 14,224,7,192,7,192,3,128
  DEFB 3,0,1,0,1,0,1,60
  DEFB 1,126,1,126,13,126,30,248
  DEFB 30,128,28,128,12,136,4,156
  DEFB 4,156,4,156,4,136,3,136
  DEFB 1,56,1,64,17,64,57,64
  DEFB 57,128,57,28,13,124,5,252
  DEFB 7,24,1,0,3,0,2,0
  DEFB 2,0,2,0,2,0,0,0
; Wall Axes (8 x 5)
  DEFB 0,0,64,0,0,2,0,0
  DEFB 0,6,224,0,0,7,96,0
  DEFB 0,13,176,0,0,13,176,0
  DEFB 0,11,152,0,0,25,208,0
  DEFB 0,7,204,0,0,51,224,0
  DEFB 0,15,228,0,0,39,240,0
  DEFB 0,63,246,0,0,111,252,0
  DEFB 1,255,243,0,0,207,255,128
  DEFB 15,255,249,128,1,159,255,240
  DEFB 63,255,252,192,3,63,255,28
  DEFB 113,255,254,192,3,127,255,140
  DEFB 35,255,254,96,6,127,255,236
  DEFB 51,255,255,48,12,255,255,232
  DEFB 51,255,255,152,25,255,255,248
  DEFB 27,255,255,252,63,255,255,248
  DEFB 31,255,255,224,7,255,255,240
  DEFB 15,255,255,216,27,255,255,240
  DEFB 7,255,255,188,61,255,255,224
  DEFB 7,255,255,158,121,255,255,192
  DEFB 3,255,255,30,248,255,255,192
  DEFB 1,255,254,13,240,127,255,128
  DEFB 0,255,254,3,224,127,255,0
  DEFB 0,127,236,3,224,51,254,0
  DEFB 0,63,216,7,208,25,252,0
  DEFB 0,30,16,15,184,12,120,0
  DEFB 0,6,48,31,188,12,224,0
  DEFB 0,3,224,63,126,7,192,0
  DEFB 0,0,224,62,63,7,0,0
  DEFB 0,0,0,126,31,128,0,0
  DEFB 0,0,0,252,31,128,0,0
  DEFB 0,0,1,248,15,192,0,0
  DEFB 0,0,3,240,6,96,0,0
  DEFB 0,0,7,240,3,48,0,0
  DEFB 0,0,7,96,1,184,0,0
  DEFB 0,0,14,64,0,140,0,0
  DEFB 0,0,28,192,0,196,0,0
  DEFB 0,0,49,128,0,98,0,0
  DEFB 0,0,57,0,0,44,0,0
  DEFB 0,0,31,0,0,56,0,0
  DEFB 0,0,14,0,0,0,0,0
; Tree Top (1) (6 x 4)
  DEFB 0,0,0,20,0,0,0,0
  DEFB 0,28,0,0,0,0,64,14
  DEFB 0,0,0,0,66,14,0,0
  DEFB 0,0,38,6,0,0,0,0
  DEFB 24,6,0,0,4,0,16,7
  DEFB 3,0,4,0,16,5,195,0
  DEFB 6,0,32,7,227,16,6,15
  DEFB 192,0,179,16,6,0,252,0
  DEFB 151,48,3,0,7,0,215,32
  DEFB 3,128,7,0,71,240,3,130
  DEFB 7,0,30,8,1,142,7,199
  DEFB 246,6,1,145,199,255,252,0
  DEFB 1,160,3,255,240,0,1,192
  DEFB 1,255,132,0,1,224,1,248
  DEFB 60,0,0,190,3,240,120,0
  DEFB 0,195,195,224,120,0,0,127
  DEFB 247,224,240,0,0,3,255,224
  DEFB 240,0,0,1,255,225,208,0
  DEFB 0,7,127,251,176,0,252,12
  DEFB 60,255,160,0,15,251,190,95
  DEFB 96,0,0,255,255,127,192,0
  DEFB 0,15,127,127,128,0,0,2
  DEFB 15,255,0,0,0,0,7,255
  DEFB 0,0,0,0,7,255,0,0
; Tree Trunk (1) (4 x 5)
  DEFB 0,7,254,0,0,7,246,0
  DEFB 0,7,183,0,0,7,183,0
  DEFB 0,7,55,128,0,15,63,128
  DEFB 0,14,63,128,0,12,159,128
  DEFB 0,9,223,128,0,10,62,128
  DEFB 0,10,22,128,0,10,214,128
  DEFB 0,10,23,128,0,11,55,128
  DEFB 0,9,63,128,0,13,127,0
  DEFB 0,13,95,0,0,13,190,0
  DEFB 0,28,126,0,0,30,126,0
  DEFB 0,30,126,0,0,30,126,0
  DEFB 0,30,251,0,0,30,251,0
  DEFB 0,63,123,0,0,59,123,0
  DEFB 0,59,127,0,0,123,247,0
  DEFB 0,123,247,0,0,127,247,0
  DEFB 0,127,254,0,0,254,254,0
  DEFB 0,254,238,0,0,254,238,0
  DEFB 0,255,247,0,0,62,247,0
  DEFB 7,158,247,0,31,255,119,0
  DEFB 255,255,159,224,248,31,131,248
; Lift Door (2 x 4)
  DEFB 251,223,243,207,235,215,219,219
  DEFB 187,221,123,222,251,223,251,223
  DEFB 251,223,251,223,123,222,187,221
  DEFB 219,219,235,215,243,207,251,223
  DEFB 251,223,243,207,235,215,219,219
  DEFB 187,221,123,222,251,223,251,223
  DEFB 251,223,251,223,123,222,187,221
  DEFB 219,219,235,215,243,207,251,223
; Mushroom (1) (2 x 2)
  DEFB 0,0,0,0,7,192,31,120
  DEFB 47,220,125,100,127,254,127,254
  DEFB 56,62,3,156,3,192,7,192
  DEFB 7,224,7,224,7,224,3,192
; Mushroom (2) (2 x 2)
  DEFB 0,0,0,0,31,128,121,192
  DEFB 208,224,223,160,250,48,127,48
  DEFB 15,208,27,144,61,240,125,228
  DEFB 120,30,248,30,248,132,113,204
; Mushroom (3) (2 x 2)
  DEFB 0,0,0,0,0,0,7,240
  DEFB 29,188,55,110,63,255,127,255
  DEFB 60,31,25,204,3,224,1,225
  DEFB 1,225,3,227,3,230,1,198
; Mushroom (4) (2 x 2)
  DEFB 0,0,0,0,7,128,31,112
  DEFB 53,248,127,248,239,248,254,56
  DEFB 189,192,251,224,247,224,119,240
  DEFB 3,248,3,248,3,248,1,240
; Large Mushroom (3 x 3)
  DEFB 0,0,0,0,0,0,7,254
  DEFB 0,31,7,128,62,123,224,49
  DEFB 18,48,118,198,144,118,254,88
  DEFB 113,243,24,125,241,252,127,255
  DEFB 132,126,31,182,60,15,150,60
  DEFB 1,198,24,1,254,4,145,242
  DEFB 15,240,242,13,241,226,13,241
  DEFB 252,27,227,248,27,231,224,31
  DEFB 224,0,31,224,0,15,192,0
; Lift Control Panel (4 x 9) (see bug)
  DEFB 3,255,255,192,15,255,255,240
  DEFB 12,0,0,48,24,211,187,152
  DEFB 24,146,170,152,24,210,171,24
  DEFB 24,155,186,152,24,0,0,24
  DEFB 24,0,0,24,24,0,124,24
  DEFB 24,124,126,24,24,124,102,24
  DEFB 24,124,124,24,24,124,126,24
  DEFB 24,0,102,24,24,0,102,24
  DEFB 24,0,0,24,24,0,28,24
  DEFB 24,124,60,24,24,124,108,24
  DEFB 24,124,126,24,24,124,126,24
  DEFB 24,0,12,24,24,0,12,24
  DEFB 24,0,0,24,24,0,60,24
  DEFB 24,124,126,24,24,124,102,24
  DEFB 24,124,28,24,24,124,102,24
  DEFB 24,0,126,24,24,0,60,24
  DEFB 24,0,0,24,24,0,60,24
  DEFB 24,124,126,24,24,124,14,24
  DEFB 24,124,60,24,24,124,112,24
  DEFB 24,0,126,24,24,0,126,24
  DEFB 24,0,0,24,24,0,28,24
  DEFB 24,124,60,24,24,124,44,24
  DEFB 24,124,12,24,24,124,12,24
  DEFB 24,0,63,24,24,0,63,24
  DEFB 24,0,0,24,24,0,62,24
  DEFB 24,124,126,24,24,124,96,24
  DEFB 24,124,110,24,24,124,102,24
  DEFB 24,0,126,24,24,0,60,24
  DEFB 24,0,0,24,24,0,124,24
  DEFB 24,124,126,24,24,124,102,24
  DEFB 24,124,124,24,24,124,102,24
  DEFB 24,0,126,24,24,0,124,24
  DEFB 24,0,0,24,8,0,0,48
  DEFB 15,255,255,240,3,255,255,192
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0

; Graphics (Characters)
;
; All character graphics are (2 x 4). Gimbal the Wizard
  DEFB 2,0,2,0,3,0,3,128
  DEFB 7,64,7,96,6,48,7,112
  DEFB 15,96,15,152,0,48,31,206
  DEFB 0,31,25,191,18,54,51,0
  DEFB 51,246,49,206,50,28,3,252
  DEFB 112,248,120,250,236,122,28,59
  DEFB 220,179,222,199,62,127,254,127
  DEFB 254,110,223,126,223,110,78,124
; Thor
  DEFB 0,0,0,0,0,240,3,252
  DEFB 7,134,14,0,12,102,28,111
  DEFB 30,31,18,22,22,0,19,28
  DEFB 27,178,31,254,25,252,16,252
  DEFB 22,120,15,0,15,136,14,136
  DEFB 14,136,14,216,6,216,9,216
  DEFB 13,216,5,248,3,240,0,0
  DEFB 3,48,2,32,7,188,7,222
; Florin the Dwarf
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 8,2,8,2,28,246,29,134
  DEFB 60,0,52,156,38,190,38,60
  DEFB 63,130,27,254,9,198,0,236
  DEFB 0,56,6,64,15,112,9,248
  DEFB 25,204,17,12,51,228,55,96
  DEFB 6,48,6,48,5,40,3,156
; Orik the Cleric
  DEFB 0,0,0,120,3,254,3,254
  DEFB 15,134,30,240,28,134,28,47
  DEFB 30,31,6,64,59,119,43,54
  DEFB 43,128,49,226,24,254,0,252
  DEFB 6,120,15,0,15,136,14,216
  DEFB 14,216,14,216,6,240,8,0
  DEFB 13,176,5,176,3,176,3,48
  DEFB 3,48,2,32,7,188,7,222
; Samsun the Strong
  DEFB 3,240,14,56,12,12,13,36
  DEFB 0,140,12,216,15,56,6,80
  DEFB 115,230,253,223,231,51,251,239
  DEFB 248,30,127,238,31,156,4,120
  DEFB 1,224,12,0,15,240,15,208
  DEFB 31,176,31,56,31,120,31,120
  DEFB 30,120,30,56,28,120,60,120
  DEFB 120,112,120,120,126,126,63,62
; Elrand Halfelven
  DEFB 0,0,0,128,5,144,7,226
  DEFB 79,114,94,5,201,21,227,7
  DEFB 176,114,144,250,208,244,87,12
  DEFB 115,216,44,0,63,136,15,240
  DEFB 19,224,60,24,60,56,102,56
  DEFB 102,108,78,236,79,192,15,196
  DEFB 206,204,142,192,204,192,12,192
  DEFB 12,192,0,0,4,32,14,112
; Lady Rosmar
  DEFB 0,224,3,252,15,152,30,32
  DEFB 30,240,62,156,61,188,94,240
  DEFB 110,248,125,216,61,192,78,240
  DEFB 124,192,56,128,55,0,109,0
  DEFB 108,192,116,224,52,224,20,192
  DEFB 20,128,5,128,12,128,31,128
  DEFB 31,0,31,0,15,0,0,0
  DEFB 12,0,12,0,15,0,13,128
; The Banshee
  DEFB 3,192,15,240,31,240,28,248
  DEFB 56,56,56,24,58,92,114,94
  DEFB 114,94,112,31,112,31,112,31
  DEFB 120,63,124,57,76,113,70,113
  DEFB 38,115,46,114,46,250,60,250
  DEFB 61,254,57,254,57,252,56,252
  DEFB 56,248,16,248,0,248,0,248
  DEFB 0,240,0,112,0,96,0,0

; Graphics (Puff of Smoke)
;
; All Puff of Smoke frame graphics are (2 x 3). Frame 1
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,1,128,2,64,2,64
  DEFB 1,128,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 2
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,2,128
  DEFB 4,96,8,16,8,16,4,0
  DEFB 4,32,2,64,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 3
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,1,128,7,224
  DEFB 12,240,14,112,2,0,7,96
  DEFB 14,112,28,240,29,240,30,224
  DEFB 14,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 4
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,14,112,28,56,24,56
  DEFB 12,16,4,16,0,0,0,0
  DEFB 8,32,16,24,54,24,60,112
  DEFB 24,32,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 5
  DEFB 0,0,0,0,15,0,31,128
  DEFB 63,204,63,222,63,190,62,126
  DEFB 62,30,31,60,7,0,3,112
  DEFB 60,124,62,60,126,254,125,254
  DEFB 126,254,126,126,127,124,62,56
  DEFB 0,0,0,0,0,0,0,0
; Frame 6
  DEFB 0,0,0,0,15,0,31,128
  DEFB 63,204,57,222,56,150,48,6
  DEFB 48,14,16,12,0,0,8,0
  DEFB 56,12,48,12,112,14,113,134
  DEFB 112,198,122,126,127,124,62,56
  DEFB 0,0,0,0,0,0,0,0

; Graphics (Scenery Part 2) Picture in Frame (1) (5 x 5)
  DEFB 127,255,255,255,254,128,0,0
  DEFB 0,1,223,255,255,255,251,239
  DEFB 255,255,255,247,183,255,255,255
  DEFB 237,187,255,255,255,221,188,0
  DEFB 0,0,61,188,0,0,0,61
  DEFB 188,0,0,0,61,188,0,0
  DEFB 0,61,188,7,128,0,61,188
  DEFB 15,224,0,61,188,15,224,0
  DEFB 61,188,15,224,0,61,188,15
  DEFB 224,0,61,188,7,192,0,61
  DEFB 188,0,0,0,61,188,0,0
  DEFB 0,61,188,0,0,0,61,188
  DEFB 0,0,240,61,188,0,7,240
  DEFB 61,188,0,31,252,61,188,0
  DEFB 127,255,61,188,3,255,255,61
  DEFB 188,15,255,255,61,188,255,255
  DEFB 255,61,188,255,255,255,61,188
  DEFB 255,255,255,61,188,255,255,255
  DEFB 61,188,255,255,255,61,188,255
  DEFB 255,255,61,188,255,255,255,61
  DEFB 188,0,0,0,61,188,0,0
  DEFB 0,61,187,255,255,255,221,183
  DEFB 240,0,63,237,175,240,0,63
  DEFB 245,159,255,255,255,249,176,0
  DEFB 0,0,13,127,255,255,255,254
; Picture in Frame (2) (9 x 5)
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,63,255,255,255,255,255
  DEFB 255,255,252,48,0,0,0,0
  DEFB 0,0,0,12,47,255,255,255
  DEFB 255,255,255,255,244,44,0,0
  DEFB 0,0,0,0,0,52,43,255
  DEFB 255,255,255,255,255,255,212,43
  DEFB 255,255,255,255,255,255,255,212
  DEFB 43,0,0,0,0,0,0,0
  DEFB 212,43,0,0,0,0,0,0
  DEFB 0,212,43,0,0,0,0,0
  DEFB 0,0,212,43,0,0,0,0
  DEFB 0,0,0,212,43,0,28,0
  DEFB 0,0,0,0,212,43,0,62
  DEFB 0,0,0,1,80,212,43,0
  DEFB 62,0,0,170,1,240,212,43
  DEFB 0,62,0,0,254,1,240,212
  DEFB 43,0,28,0,0,254,85,176
  DEFB 212,43,0,0,0,0,223,255
  DEFB 240,212,43,0,0,0,0,222
  DEFB 124,208,212,43,0,0,0,0
  DEFB 222,255,240,212,43,0,0,0
  DEFB 0,223,227,240,212,43,0,0
  DEFB 0,0,223,193,240,212,43,0
  DEFB 0,0,0,255,193,240,212,43
  DEFB 0,0,0,0,127,193,240,212
  DEFB 43,0,0,7,255,30,0,0
  DEFB 212,43,62,0,127,255,192,231
  DEFB 252,212,43,63,131,255,195,255
  DEFB 255,252,212,43,63,255,255,255
  DEFB 255,255,252,212,43,63,231,240
  DEFB 127,231,252,252,212,43,59,255
  DEFB 199,255,255,255,252,212,43,63
  DEFB 255,255,255,255,255,252,212,43
  DEFB 0,0,0,0,0,0,0,212
  DEFB 43,255,255,255,255,255,255,255
  DEFB 212,43,255,255,255,255,255,255
  DEFB 255,212,42,0,0,24,0,24
  DEFB 0,0,52,47,255,255,248,0
  DEFB 31,255,255,244,40,0,0,24
  DEFB 0,24,0,0,12,63,255,255
  DEFB 255,255,255,255,255,252,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Alternative Picture Landscape (1) (3 x 2)
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,112,3,192,95
  DEFB 135,224,112,206,52,127,255,255
  DEFB 127,255,251,198,31,231,255,255
  DEFB 255,224,254,31,252,7,255,199
  DEFB 255,131,223,241,255,255,143,255
; Alternative Picture Landscape (2) (7 x 3)
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,12,0
  DEFB 0,0,0,0,0,30,0,0
  DEFB 0,0,0,0,31,0,0,0
  DEFB 0,0,0,63,0,0,0,0
  DEFB 0,0,30,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 62,0,0,0,0,0,0,127
  DEFB 128,120,0,0,11,191,247,195
  DEFB 206,0,0,124,255,128,115,131
  DEFB 192,7,255,255,248,127,191,240
  DEFB 63,255,255,255,7,255,252,63
  DEFB 227,255,255,255,255,252,63,255
  DEFB 227,255,255,248,252,56,255,255
  DEFB 254,63,15,252,63,241,255,255
  DEFB 255,255,140,63,255,255,31,227
  DEFB 255,252,63,255,255,255,255,255
  DEFB 252,0,0,0,0,0,0,0
; Wall Bracketed Candle (2 x 4)
  DEFB 0,0,0,0,0,128,0,192
  DEFB 1,224,1,96,1,224,0,192
  DEFB 0,0,3,224,3,224,7,160
  DEFB 5,160,7,160,3,160,3,224
  DEFB 3,192,3,192,3,192,3,192
  DEFB 3,192,3,192,3,192,0,0
  DEFB 255,255,195,225,227,241,227,243
  DEFB 115,230,57,204,29,216,15,240
; Right-Facing Candle Wall Bracket (3 x 2)
  DEFB 192,255,255,192,96,6,192,63
  DEFB 252,192,124,60,216,241,142,241
  DEFB 231,238,227,207,238,239,142,46
  DEFB 255,15,28,254,15,252,252,3
  DEFB 240,240,0,0,192,0,0,192
  DEFB 0,0,192,0,0,192,0,0
; Right-Facing Candle Wall Bracket Plate (1 x 3)
  DEFB 0,56,112,96,96,96,224,224
  DEFB 192,192,192,192,192,192,192,192
  DEFB 192,192,192,192,192,192,192,192
; Left-Facing Candle Wall Bracket (3 x 2)
  DEFB 255,255,3,96,6,3,63,252
  DEFB 3,60,62,3,113,143,27,119
  DEFB 231,143,119,243,199,116,113,247
  DEFB 56,240,255,63,240,127,15,192
  DEFB 63,0,0,15,0,0,3,0
  DEFB 0,3,0,0,3,0,0,3
; Left-Facing Candle Wall Bracket Plate (1 x 3)
  DEFB 0,28,14,6,6,6,7,7
  DEFB 3,3,3,3,3,3,3,3
  DEFB 3,3,3,3,3,3,3,3
; Plant (3) (2 x 5)
  DEFB 0,0,14,0,30,0,31,28
  DEFB 23,158,1,186,1,176,0,176
  DEFB 0,160,0,160,0,160,0,160
  DEFB 14,32,27,32,51,160,61,160
  DEFB 53,160,37,160,39,128,3,60
  DEFB 3,126,0,99,30,73,55,125
  DEFB 99,119,219,115,239,113,199,96
  DEFB 135,96,135,111,135,105,7,110
  DEFB 7,111,51,109,235,104,139,88
  DEFB 235,88,251,80,155,80,11,80
; Plant (4) (2 x 3)
  DEFB 0,0,0,0,7,224,62,48
  DEFB 3,184,64,204,64,116,114,52
  DEFB 91,54,199,50,239,178,205,162
  DEFB 89,174,27,184,59,0,59,158
  DEFB 57,187,61,177,29,188,25,183
  DEFB 13,96,6,9,2,56,2,32
; Plant (5) (2 x 3)
  DEFB 15,224,24,176,49,144,55,0
  DEFB 52,0,92,0,120,248,17,176
  DEFB 27,32,11,98,15,194,54,14
  DEFB 114,11,83,25,113,19,65,94
  DEFB 0,240,32,142,60,185,53,231
  DEFB 29,127,5,3,1,4,0,0
; Plant (6) (2 x 3)
  DEFB 15,224,24,176,49,144,55,0
  DEFB 52,0,92,0,120,248,17,176
  DEFB 27,32,11,98,15,194,54,14
  DEFB 114,11,83,25,113,19,65,94
  DEFB 0,240,32,142,60,185,53,231
  DEFB 29,127,5,3,1,4,0,0
; Tree Top (2) (8 x 5)
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,2,0,0
  DEFB 0,0,0,0,0,7,15,0
  DEFB 0,0,0,0,0,5,153,128
  DEFB 0,0,3,240,0,12,191,128
  DEFB 0,0,6,120,0,12,184,0
  DEFB 0,0,12,216,0,15,143,128
  DEFB 0,0,11,128,64,7,88,192
  DEFB 0,1,206,56,96,0,220,96
  DEFB 0,7,240,124,120,60,7,224
  DEFB 0,15,216,226,76,249,243,96
  DEFB 0,14,104,242,69,179,248,34
  DEFB 0,8,124,246,101,51,137,134
  DEFB 0,8,0,124,61,51,189,254
  DEFB 0,0,248,56,1,97,228,100
  DEFB 0,1,141,129,225,225,5,56
  DEFB 0,1,229,231,48,195,123,0
  DEFB 0,1,61,54,144,220,254,0
  DEFB 8,60,5,119,240,112,184,0
  DEFB 12,102,65,187,145,199,135,224
  DEFB 12,94,120,185,1,31,204,56
  DEFB 30,82,148,153,243,24,203,136
  DEFB 27,97,230,220,254,110,239,232
  DEFB 27,32,38,116,54,195,241,248
  DEFB 25,7,175,47,56,128,12,24
  DEFB 29,12,201,13,100,249,239,136
  DEFB 13,11,201,9,230,156,182,128
  DEFB 6,94,77,45,246,204,211,192
  DEFB 230,225,69,45,254,124,113,226
  DEFB 178,240,247,109,124,24,48,14
  DEFB 120,120,0,109,56,8,32,254
  DEFB 71,120,252,103,15,160,28,204
  DEFB 221,185,158,102,120,62,58,120
  DEFB 14,129,238,96,79,155,113,0
  DEFB 6,60,114,243,196,205,97,0
  DEFB 112,255,0,250,6,103,125,0
  DEFB 205,199,217,58,243,35,127,0
  DEFB 187,241,241,155,153,225,126,0
  DEFB 224,255,129,131,204,36,60,0
; Tree Top (3) (8 x 5)
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,16,1,192,0
  DEFB 0,0,62,0,112,3,224,0
  DEFB 60,0,127,0,120,46,240,0
  DEFB 102,192,71,0,104,56,216,0
  DEFB 95,224,115,192,120,48,104,0
  DEFB 126,112,94,96,56,28,56,0
  DEFB 78,120,0,96,240,4,24,0
  DEFB 64,60,0,99,128,4,0,0
  DEFB 0,255,28,114,0,4,1,0
  DEFB 7,147,48,112,0,4,3,0
  DEFB 4,19,240,124,1,244,3,128
  DEFB 192,51,16,30,15,12,6,192
  DEFB 96,113,136,30,127,8,4,192
  DEFB 39,253,192,206,252,8,5,128
  DEFB 31,252,240,143,224,56,7,128
  DEFB 0,62,240,143,192,32,2,0
  DEFB 2,6,113,143,131,252,2,0
  DEFB 3,231,121,31,3,224,129,0
  DEFB 0,32,121,63,199,128,129,240
  DEFB 0,56,125,127,254,0,135,254
  DEFB 0,12,63,254,14,35,135,192
  DEFB 0,4,63,224,14,34,15,0
  DEFB 63,119,191,204,14,38,15,0
  DEFB 12,255,223,188,28,60,31,0
  DEFB 60,7,223,188,124,8,30,0
  DEFB 54,0,223,156,120,12,30,62
  DEFB 54,0,95,222,248,4,126,236
  DEFB 126,0,79,223,112,3,255,184
  DEFB 252,0,15,223,240,7,248,224
  DEFB 64,0,15,199,240,15,240,0
  DEFB 0,0,12,231,224,255,16,0
  DEFB 0,0,14,99,199,254,56,0
  DEFB 0,0,7,113,247,254,108,0
  DEFB 0,0,7,113,255,252,108,0
  DEFB 0,60,3,113,252,240,108,0
  DEFB 0,255,3,121,249,240,120,0
  DEFB 1,199,223,59,235,248,120,0
  DEFB 3,241,243,191,235,204,48,0
  DEFB 1,255,131,239,207,196,16,0
; Tree Trunk (2) (8 x 5)
  DEFB 0,126,8,199,197,7,0,0
  DEFB 14,0,60,100,117,135,0,0
  DEFB 31,28,62,37,28,197,144,0
  DEFB 57,182,31,20,12,132,240,0
  DEFB 57,183,191,156,137,134,240,0
  DEFB 61,180,231,224,199,3,224,0
  DEFB 63,28,199,185,231,128,0,0
  DEFB 30,24,131,173,61,128,0,0
  DEFB 0,8,3,205,125,128,0,0
  DEFB 0,0,3,223,125,128,0,0
  DEFB 0,0,3,219,119,192,0,0
  DEFB 0,2,1,155,119,192,0,0
  DEFB 0,3,1,187,119,192,0,0
  DEFB 0,1,193,187,247,192,0,0
  DEFB 0,0,125,179,231,192,0,0
  DEFB 0,1,199,183,235,192,0,0
  DEFB 0,1,3,183,235,128,0,0
  DEFB 0,63,3,247,201,128,0,0
  DEFB 0,32,3,54,220,128,0,0
  DEFB 0,0,3,118,214,132,0,0
  DEFB 0,0,3,118,247,196,48,0
  DEFB 0,0,6,118,227,196,96,0
  DEFB 0,0,6,221,195,195,128,0
  DEFB 0,0,6,221,193,194,0,0
  DEFB 0,0,7,221,193,225,0,0
  DEFB 0,0,7,221,193,227,0,0
  DEFB 0,0,7,205,227,226,0,0
  DEFB 0,0,7,239,227,238,0,0
  DEFB 0,0,7,239,245,232,0,0
  DEFB 0,0,7,239,245,232,0,0
  DEFB 0,0,3,175,249,248,0,0
  DEFB 0,0,3,189,251,236,0,0
  DEFB 0,0,7,63,251,228,0,0
  DEFB 0,0,13,127,123,244,0,0
  DEFB 0,0,11,111,127,246,0,0
  DEFB 0,0,30,111,127,243,128,0
  DEFB 0,0,252,255,63,254,128,0
  DEFB 0,3,255,159,6,63,224,224
  DEFB 0,15,143,193,3,227,249,176
  DEFB 0,63,3,252,0,127,31,248

; Graphics (Objects Part 1)
;
; All object graphics are (2 x 2). Trumpet
  DEFB 0,0,0,0,0,0,0,3
  DEFB 0,3,0,7,15,247,130,175
  DEFB 255,255,255,249,152,237,191,247
  DEFB 112,59,112,59,127,248,63,240
; Four Leaf Clover
  DEFB 0,0,0,0,0,0,28,28
  DEFB 62,62,62,62,63,126,31,124
  DEFB 3,112,57,76,124,62,126,126
  DEFB 62,124,1,128,1,128,1,128
; Advert
  DEFB 255,255,255,255,192,197,200,255
  DEFB 220,193,206,255,192,193,255,197
  DEFB 196,217,255,217,200,193,255,255
  DEFB 192,201,255,255,196,193,255,255
; Prism
  DEFB 1,128,1,128,3,192,3,192
  DEFB 7,224,7,224,15,240,15,240
  DEFB 31,248,31,248,63,252,63,252
  DEFB 127,254,127,254,255,255,255,255

; Graphics (Scenery Part 3) Plant Pot (1) (2 x 2)
  DEFB 103,254,231,255,231,255,103,254
  DEFB 0,0,255,255,202,147,138,145
  DEFB 138,145,138,145,202,147,255,255
  DEFB 127,254,127,254,31,248,7,224
; Plant Pot (2) (2 x 1)
  DEFB 127,255,99,255,99,255,113,254
  DEFB 121,254,60,124,31,248,7,224
; Plant Pot (3) (2 x 2)
  DEFB 255,255,255,255,192,7,127,254
  DEFB 103,254,103,254,103,254,103,254
  DEFB 99,254,115,254,51,252,51,252
  DEFB 51,252,63,252,63,252,31,248
; Goblet (from Picture) (2 x 3)
  DEFB 255,255,194,67,218,91,90,90
  DEFB 90,90,74,82,106,86,34,84
  DEFB 50,76,30,88,7,224,0,0
  DEFB 1,128,1,128,1,128,1,128
  DEFB 1,128,1,128,0,0,3,192
  DEFB 3,192,0,0,15,240,63,252
; Plant Pot (4) (2 x 3)
  DEFB 255,255,255,255,0,0,255,255
  DEFB 99,250,99,250,99,250,115,242
  DEFB 115,246,51,244,51,244,51,244
  DEFB 51,244,51,244,51,244,51,228
  DEFB 59,236,27,232,27,232,27,232
  DEFB 27,232,27,200,31,248,31,248
; Plant (7) (2 x 3)
  DEFB 0,0,0,0,1,0,3,128
  DEFB 3,128,48,24,123,188,36,216
  DEFB 15,192,7,128,24,112,60,112
  DEFB 26,0,1,128,16,135,60,142
  DEFB 46,217,50,83,29,215,7,238
  DEFB 0,252,0,96,0,96,0,96

; Graphics (Objects Part 2)
;
; All object graphics are (2 x 2). Lump of Brickwork
  DEFB 63,126,127,255,255,255,255,255
  DEFB 223,253,255,231,255,254,123,252
  DEFB 0,0,190,63,254,127,255,127
  DEFB 255,111,247,103,255,115,252,63
; Sticky Bun
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,3,240,12,124
  DEFB 49,254,115,254,127,254,63,252
; Wand of Command
  DEFB 0,0,1,0,32,0,8,0
  DEFB 17,0,72,0,16,32,2,0
  DEFB 3,128,8,192,64,96,0,48
  DEFB 0,24,0,12,0,6,0,3
; Javelin
  DEFB 0,1,0,2,0,12,0,28
  DEFB 0,56,0,112,0,224,1,192
  DEFB 3,128,7,0,14,0,28,0
  DEFB 56,0,112,0,96,0,128,0
; Tube of Glue
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 63,255,255,255,255,255,63,255
; Broken Talisman
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 1,1,1,1,3,3,3,3
  DEFB 7,199,7,247,15,255,15,255
; Talisman
  DEFB 1,128,1,128,3,192,3,192
  DEFB 7,224,7,224,14,112,13,176
  DEFB 13,176,14,112,7,224,7,224
  DEFB 3,192,3,192,1,128,1,128
; Goblet
  DEFB 0,255,0,94,0,94,0,94
  DEFB 0,94,0,110,0,60,0,0
  DEFB 0,24,0,0,0,24,0,60
  DEFB 0,24,0,0,0,24,0,60
; Willow Rod
  DEFB 1,128,1,128,1,128,1,128
  DEFB 1,128,1,128,3,192,6,96
  DEFB 12,48,24,24,48,12,96,6
  DEFB 96,6,96,6,96,6,96,6
; Power Pong Plant
  DEFB 3,192,7,224,6,96,14,112
  DEFB 11,208,14,112,6,96,3,192
  DEFB 1,128,1,128,15,240,15,240
  DEFB 15,240,15,240,7,224,7,224
; Saxophone
  DEFB 0,0,0,6,0,14,0,24
  DEFB 0,48,0,48,0,48,0,48
  DEFB 8,48,24,48,60,48,124,112
  DEFB 30,240,15,224,7,224,3,128
; Mirror
  DEFB 164,37,152,25,127,254,97,6
  DEFB 162,5,36,132,161,5,98,6
  DEFB 100,134,161,5,34,4,164,5
  DEFB 96,6,127,254,152,25,164,37
; Axe
  DEFB 0,0,0,0,0,0,59,0
  DEFB 55,128,15,192,63,224,127,224
  DEFB 223,192,239,176,119,104,63,100
  DEFB 30,114,12,57,0,29,0,14
; Miolnir
  DEFB 3,224,3,240,3,232,3,212
  DEFB 3,210,3,209,3,209,3,206
  DEFB 3,192,3,192,31,248,127,254
  DEFB 127,254,127,254,127,254,31,248
; Runestone
  DEFB 60,60,127,254,255,255,239,131
  DEFB 231,255,107,142,109,254,111,254
  DEFB 127,246,91,246,91,182,219,223
  DEFB 219,239,219,247,127,254,60,60
; Book
  DEFB 0,0,0,0,63,252,192,8
  DEFB 255,252,255,248,255,248,255,248
  DEFB 255,248,255,248,255,248,255,248
  DEFB 255,248,255,252,255,248,63,252
; Pocket Laser
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 85,0,85,0,255,192,255,254
  DEFB 255,254,255,192,85,0,85,0
; White Gold Ring
  DEFB 0,0,0,0,7,224,28,120
  DEFB 49,252,103,254,76,62,216,31
  DEFB 208,15,240,15,240,15,112,14
  DEFB 112,14,120,28,60,56,15,224
; Pewter Tankard
  DEFB 0,0,0,0,255,192,127,128
  DEFB 63,28,127,190,255,230,255,198
  DEFB 255,198,255,204,255,216,255,240
  DEFB 127,160,63,48,127,144,255,192
; Candle
  DEFB 0,8,0,16,0,8,0,126
  DEFB 0,126,0,86,0,126,0,74
  DEFB 0,126,0,82,0,126,0,110
  DEFB 0,126,0,74,0,126,0,126
; Elf Horn
  DEFB 0,0,0,0,0,0,0,56
  DEFB 0,126,0,102,128,195,128,195
  DEFB 193,195,227,102,254,126,113,252
  DEFB 127,248,63,224,31,128,0,0
; Broken Glass
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,32,132,170,221,255,255
; Crystal
  DEFB 1,127,3,127,7,127,15,127
  DEFB 31,127,63,127,127,127,255,0
  DEFB 254,255,253,254,251,252,247,248
  DEFB 239,240,223,224,191,192,127,128
; Shield
  DEFB 128,1,192,3,252,63,255,255
  DEFB 255,243,255,231,255,207,127,158
  DEFB 127,62,126,126,60,252,57,252
  DEFB 27,248,15,240,7,224,3,192
; Cannon / Crystal Ball
  DEFB 0,0,7,192,31,240,60,248
  DEFB 120,252,115,252,247,254,231,254
  DEFB 255,254,255,254,255,254,127,252
  DEFB 127,252,63,248,31,240,7,192
; Bottle
  DEFB 0,60,0,24,0,24,0,0
  DEFB 0,60,0,44,0,44,0,110
  DEFB 0,255,0,221,0,193,0,213
  DEFB 0,201,0,213,0,193,0,126
; Ancient Scroll
  DEFB 127,254,255,255,127,254,32,4
  DEFB 45,228,44,4,45,100,32,4
  DEFB 44,196,32,36,47,84,32,36
  DEFB 32,84,127,254,255,255,127,254
; Red Herring
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 15,1,63,198,79,236,223,252
  DEFB 255,252,95,236,63,198,15,1
; Teleport Pad
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,127,254,255,255,127,254
; Pool of Liquid
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,255,255,255,255
; Loaf of Bread
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,15,240,127,126,237,239
  DEFB 247,187,255,255,255,255,127,254
  DEFB 127,254,127,254,127,254,63,252
; (Teleport) Key
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,62,0,127,255,231,128,103
  DEFB 255,231,0,127,248,62,216,0
; Brick / Gold Bar
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 255,255,192,3,191,253,191,253
  DEFB 191,253,191,253,192,3,255,255

; Graphics - "Locate a Character" Compass (6 x 6)
  DEFB 0,0,0,0,0,0,0,0
  DEFB 1,128,0,0,0,0,3,192
  DEFB 0,0,31,240,7,224,15,248
  DEFB 31,224,15,240,7,248,31,0
  DEFB 31,248,0,248,31,128,51,204
  DEFB 1,248,31,192,3,192,3,248
  DEFB 27,224,3,192,7,216,25,240
  DEFB 3,192,15,152,24,248,3,192
  DEFB 31,24,16,124,3,192,62,8
  DEFB 0,62,3,192,124,0,0,28
  DEFB 3,192,56,0,0,8,0,0
  DEFB 16,0,0,0,0,0,0,0
  DEFB 0,0,227,199,0,0,0,0
  DEFB 243,207,0,0,2,0,251,223
  DEFB 0,64,6,0,123,222,0,96
  DEFB 12,0,59,220,0,48,28,0
  DEFB 3,192,0,56,63,252,255,255
  DEFB 63,252,127,252,255,255,63,254
  DEFB 127,252,255,255,63,254,63,252
  DEFB 255,255,63,252,28,0,3,192
  DEFB 0,56,12,0,59,220,0,48
  DEFB 6,0,123,222,0,96,2,0
  DEFB 251,223,0,64,0,0,243,207
  DEFB 0,0,0,0,227,199,0,0
  DEFB 0,0,0,0,0,0,0,8
  DEFB 0,0,16,0,0,28,3,192
  DEFB 56,0,0,62,3,192,124,0
  DEFB 16,124,3,192,62,8,24,248
  DEFB 3,192,31,24,25,240,3,192
  DEFB 15,152,27,224,3,192,7,216
  DEFB 31,192,3,192,3,248,31,128
  DEFB 51,204,1,248,31,0,31,248
  DEFB 0,248,31,224,15,240,7,248
  DEFB 31,240,7,224,15,248,0,0
  DEFB 3,192,0,0,0,0,1,128
  DEFB 0,0,0,0,0,0,0,0

; Graphics (Magic Knight)
;
; All Magic Knight frame graphics are (2 x 4). Frame 0 (Blank) This "frame" is
; used when Magic Knight is to be drawn without a previously drawn frame
; waiting to be erased. The Draw / Erase Magic Knight routine at 39224 first
; erases the previously drawn frame before drawing the new one. When Magic
; Knight enters a new room, however, there is no previously drawn frame to
; erase, so frame zero (blank) is used causing the erase phase of the routine
; to leave the display unchanged.
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
; Frame 1 (Right)
  DEFB 0,0,0,0,15,192,63,224
  DEFB 124,30,227,255,28,147,228,147
  DEFB 196,147,252,147,15,147,96,254
  DEFB 63,0,31,252,7,252,1,224
  DEFB 3,192,6,96,6,112,6,48
  DEFB 7,56,7,184,7,184,7,184
  DEFB 7,240,3,224,1,192,1,192
  DEFB 1,224,3,248,3,252,1,252
; Frame 2 (Right)
  DEFB 0,0,0,0,15,192,63,224
  DEFB 124,30,227,255,28,147,228,147
  DEFB 196,147,252,147,15,147,96,254
  DEFB 63,0,31,252,7,252,1,224
  DEFB 3,192,6,96,6,96,6,112
  DEFB 6,120,6,120,6,248,7,248
  DEFB 1,240,3,224,3,220,7,220
  DEFB 28,124,28,124,30,120,30,120
; Frame 3 (Right)
  DEFB 0,0,0,0,15,192,63,224
  DEFB 124,30,227,255,28,147,228,147
  DEFB 196,147,252,147,15,147,96,254
  DEFB 63,0,31,252,7,252,1,224
  DEFB 3,192,6,96,6,96,6,112
  DEFB 6,120,7,184,7,184,7,184
  DEFB 59,243,59,231,61,239,29,255
  DEFB 30,60,14,60,6,56,6,56
; Frame 4 (Right)
  DEFB 0,0,0,0,15,192,63,224
  DEFB 124,30,227,255,28,147,228,147
  DEFB 196,147,252,147,15,147,96,254
  DEFB 63,0,31,252,7,252,1,224
  DEFB 3,192,6,96,6,32,7,48
  DEFB 7,56,7,184,7,248,7,248
  DEFB 7,240,55,224,61,220,61,156
  DEFB 62,124,30,124,6,120,6,120
; Frame 5 (Left)
  DEFB 0,0,0,0,3,240,7,252
  DEFB 120,62,255,199,201,56,201,39
  DEFB 201,35,201,63,201,240,127,6
  DEFB 0,252,63,248,63,224,7,128
  DEFB 3,192,6,96,14,96,12,96
  DEFB 28,224,29,224,29,224,29,224
  DEFB 15,224,7,192,3,128,3,128
  DEFB 7,128,31,192,63,192,63,128
; Frame 6 (Left)
  DEFB 0,0,0,0,3,240,7,252
  DEFB 120,62,255,199,201,56,201,39
  DEFB 201,35,201,63,201,240,127,6
  DEFB 0,252,63,248,63,224,7,128
  DEFB 3,192,6,96,6,96,14,96
  DEFB 30,96,30,96,31,96,31,224
  DEFB 15,128,7,192,59,192,59,224
  DEFB 62,56,62,56,30,120,30,120
; Frame 7 (Left)
  DEFB 0,0,0,0,3,240,7,252
  DEFB 120,62,255,199,201,56,201,39
  DEFB 201,35,201,63,201,240,127,6
  DEFB 0,252,63,248,63,224,7,128
  DEFB 3,192,6,96,6,96,14,96
  DEFB 30,96,29,224,29,224,29,224
  DEFB 207,220,231,220,247,188,255,184
  DEFB 60,120,60,112,28,96,28,96
; Frame 8 (Left)
  DEFB 0,0,0,0,3,240,7,252
  DEFB 120,62,255,199,201,56,201,39
  DEFB 201,35,201,63,201,240,127,6
  DEFB 0,252,63,248,63,224,7,128
  DEFB 3,192,6,96,4,96,12,224
  DEFB 28,224,29,224,31,224,31,224
  DEFB 15,224,7,236,59,188,57,188
  DEFB 62,124,62,120,30,96,30,96

; Graphics (Interface)
;
; The character set (font) used by the game. The index of the first entry is 32
; (ASCII code for SPACE character), and runs through to Z (90). Characters 91
; and 92 are unknown.
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,48,48,48,48,0,48,48
  DEFB 0,36,36,0,0,0,0,0
  DEFB 0,36,126,36,36,126,36,0
  DEFB 0,8,62,40,62,10,62,8
  DEFB 0,98,100,8,16,38,70,0
  DEFB 0,56,108,59,126,108,127,59
  DEFB 0,12,24,16,0,0,0,0
  DEFB 0,12,24,24,24,24,12,4
  DEFB 0,48,24,24,24,24,48,32
  DEFB 0,0,20,8,62,8,20,0
  DEFB 0,0,8,8,62,8,8,0
  DEFB 0,0,0,0,0,12,12,24
  DEFB 0,0,0,62,62,0,0,0
  DEFB 0,0,0,0,0,0,24,24
  DEFB 0,6,14,28,56,112,96,0
  DEFB 0,60,126,110,126,118,126,60
  DEFB 0,28,60,44,12,12,63,63
  DEFB 0,60,126,14,60,112,126,126
  DEFB 0,60,126,102,28,102,126,60
  DEFB 0,28,60,108,126,126,12,12
  DEFB 0,126,126,96,124,6,126,124
  DEFB 0,60,124,96,124,102,126,60
  DEFB 0,126,126,14,28,24,24,24
  DEFB 0,60,126,102,60,102,126,60
  DEFB 0,60,126,102,62,6,62,60
  DEFB 0,0,24,24,0,0,24,24
  DEFB 0,0,24,24,0,24,24,48
  DEFB 0,0,6,12,24,24,12,6
  DEFB 0,0,0,62,0,62,0,0
  DEFB 0,0,96,48,24,24,48,96
  DEFB 0,60,110,30,28,0,24,24
  DEFB 0,60,74,86,94,64,60,0
  DEFB 0,60,126,102,126,126,102,102
  DEFB 0,124,126,102,124,102,126,124
  DEFB 0,60,126,102,96,102,126,60
  DEFB 0,120,124,110,102,110,124,120
  DEFB 0,126,126,96,124,96,126,126
  DEFB 0,126,126,96,124,124,96,96
  DEFB 0,62,126,96,110,102,126,60
  DEFB 0,102,102,126,126,102,102,102
  DEFB 0,126,126,24,24,24,126,126
  DEFB 0,6,6,6,102,102,126,60
  DEFB 0,110,124,120,124,110,102,102
  DEFB 0,96,96,96,96,96,126,126
  DEFB 0,198,254,254,214,198,198,198
  DEFB 0,102,118,126,110,102,102,102
  DEFB 0,60,126,102,102,102,126,60
  DEFB 0,124,126,102,126,124,96,96
  DEFB 0,60,126,102,118,110,126,60
  DEFB 0,124,126,102,124,126,102,102
  DEFB 0,60,124,96,60,6,126,124
  DEFB 0,254,254,48,48,48,48,48
  DEFB 0,102,102,102,102,102,126,60
  DEFB 0,102,102,102,102,102,60,24
  DEFB 0,102,102,102,102,126,126,36
  DEFB 0,231,255,60,60,126,231,195
  DEFB 0,195,231,126,60,24,24,24
  DEFB 0,126,126,28,56,112,126,126
; Unknown Character 1
  DEFB 0,3,15,31,63,127,255,255
; Unknown Character 2
  DEFB 0,192,240,248,252,254,255,255
; Window Border 1
  DEFB 255,255,0,255,0,255,0,255
  DEFB 255,0,255,0,255,0,255,255
  DEFB 213,213,213,213,213,213,213,213
  DEFB 171,171,171,171,171,171,171,171
  DEFB 255,255,3,251,11,235,43,171
  DEFB 171,43,235,11,251,3,255,255
  DEFB 213,212,215,208,223,192,255,255
  DEFB 255,255,192,223,208,215,212,213
; Window Border 2
  DEFB 255,255,0,36,219,0,255,255
  DEFB 255,255,0,219,36,0,255,255
  DEFB 203,203,211,203,203,211,203,203
  DEFB 211,211,203,211,211,203,211,211
  DEFB 194,227,124,28,204,38,151,211
  DEFB 211,151,38,204,28,124,227,194
  DEFB 203,233,100,51,56,62,199,67
  DEFB 67,199,62,56,51,100,233,203
; Window Border 3
  DEFB 153,153,195,66,102,189,129,255
  DEFB 255,129,189,102,66,195,153,153
  DEFB 231,156,176,163,163,176,156,231
  DEFB 231,57,13,197,197,13,57,231
  DEFB 155,155,196,75,115,176,156,231
  DEFB 231,156,176,115,75,196,155,155
  DEFB 231,57,13,206,210,35,217,217
  DEFB 217,217,35,210,206,13,57,231
; Window Border 4
  DEFB 255,255,0,255,0,0,0,0
  DEFB 0,0,0,0,255,0,255,255
  DEFB 208,208,208,208,208,208,208,208
  DEFB 11,11,11,11,11,11,11,11
  DEFB 255,255,7,251,11,11,11,11
  DEFB 11,11,11,11,251,7,255,255
  DEFB 208,208,208,208,223,224,255,255
  DEFB 255,255,224,223,208,208,208,208
; Character Set (Additional)
  DEFB 0,16,56,84,16,16,16,0
  DEFB 0,28,62,112,124,48,126,126
  DEFB 0,60,126,227,223,227,126,60

; Graphics - Brickwork Blocks (Part 1)
;
; Referenced by Architecture Styles Table at 54617
  DEFB 0,0,0,0,0,0,0,0    ; 00  Initial frame of odd ball and second, blank row
                          ; in brickwork drawing
  DEFB 254,130,254,198,254,254,198,146 ; 01  Unused
  DEFB 63,127,239,223,255,255,255,255 ; 02  Top green block in Most Magic Room
  DEFB 56,248,252,222,238,254,255,255 ; 03  Top green block in Most Magic Room
  DEFB 111,255,247,239,127,127,31,207 ; 04  2nd green block in Most Magic Room
  DEFB 0,240,254,255,247,251,255,255 ; 05  2nd green block in Most Magic Room
  DEFB 7,63,127,255,255,255,127,127 ; 06  3rd green block in Most Magic Room
  DEFB 192,248,222,231,255,255,254,254 ; 07  3rd green block in Most Magic Room
  DEFB 3,31,63,127,255,255,255,255 ; 08  4th green block in Most Magic Room
  DEFB 240,254,255,255,255,255,255,255 ; 09  4th green block in Most Magic Room
  DEFB 56,124,238,246,246,254,255,255 ; 10  Unused
  DEFB 24,60,110,246,251,251,255,255 ; 11  Unused
  DEFB 14,63,127,239,223,255,255,255 ; 12  Unused
  DEFB 7,255,255,255,255,255,255,255 ; 13  Unused
  DEFB 131,255,255,255,255,255,255,252 ; 14  Unused
  DEFB 252,238,247,255,255,130,60,254 ; 15  Unused
  DEFB 63,127,255,255,223,255,255,123 ; 16  Unused
  DEFB 126,255,255,255,253,231,254,252 ; 17  Unused
  DEFB 63,63,103,111,127,127,127,62 ; 18  Unused
  DEFB 62,255,255,255,251,243,254,112 ; 19  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 20  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 21  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 22  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 23  Unused
  DEFB 126,126,126,0,239,239,239,0 ; 24  (Basement Wall)
  DEFB 186,186,186,186,186,146,198,254 ; 25  Unused
  DEFB 127,127,127,127,255,255,127,63 ; 26  Top green block in Most Magic Room
  DEFB 255,255,255,238,158,254,252,24 ; 27  Top green block in Most Magic Room
  DEFB 247,251,249,252,126,119,123,63 ; 28  2nd green block in Most Magic Room
  DEFB 255,254,254,250,246,126,60,24 ; 29  2nd green block in Most Magic Room
  DEFB 127,121,126,255,247,238,124,56 ; 30  3rd green block in Most Magic Room
  DEFB 240,238,223,123,255,255,254,112 ; 31  3rd green block in Most Magic Room
  DEFB 127,119,121,63,71,243,125,28 ; 32  4th green block in Most Magic Room
  DEFB 255,255,255,255,254,255,240,224 ; 33  4th green block in Most Magic Room
  DEFB 255,254,254,126,252,252,124,56 ; 34  Unused
  DEFB 255,127,126,126,254,252,252,120 ; 35  Unused
  DEFB 127,127,127,111,119,127,63,28 ; 36  Unused
  DEFB 255,255,238,221,243,207,30,14 ; 37  Unused
  DEFB 49,199,255,255,255,255,63,0 ; 38  Unused
  DEFB 255,255,255,255,246,206,254,252 ; 39  Unused
  DEFB 0,190,254,255,255,247,255,252 ; 40  Unused
  DEFB 0,63,127,127,111,103,115,63 ; 41  Unused
  DEFB 0,124,255,255,255,254,238,124 ; 42  Unused
  DEFB 0,63,127,127,127,119,115,63 ; 43  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 44  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 45  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 46  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 47  Unused
  DEFB 7,15,63,119,239,255,255,255 ; 48  Unused
  DEFB 240,248,254,255,255,255,255,255 ; 49  Unused
  DEFB 255,146,146,147,150,154,106,73 ; 50  Unused
  DEFB 255,91,101,203,83,37,95,137 ; 51  Unused
  DEFB 255,228,255,0,63,3,0,0 ; 52  Unused
  DEFB 255,39,255,0,252,192,0,0 ; 53  Unused
  DEFB 255,255,255,156,63,115,109,54 ; 54  Top of columns in Most Magic Room
  DEFB 255,255,255,57,252,206,182,108 ; 55  Top of columns in Most Magic Room
  DEFB 54,54,54,54,54,54,63,63 ; 56  Base of columns in Most Magic Room
  DEFB 108,108,108,108,108,108,252,252 ; 57  Base of columns in Most Magic Room
  DEFB 54,54,54,54,54,54,54,54 ; 58  Body of columns in Most Magic Room
  DEFB 108,108,108,108,108,108,108,108 ; 59  Body of columns in Most Magic Room
  DEFB 0,0,0,0,0,0,0,0    ; 60  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 61  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 62  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 63  Unused
  DEFB 0,127,255,255,223,255,255,123 ; 64  Unused
  DEFB 0,222,255,255,253,231,254,252 ; 65  Unused
  DEFB 0,63,127,127,111,103,127,62 ; 66  Standard (used by most rooms in the
                                   ; game)
  DEFB 0,206,255,249,253,255,254,112 ; 67  Standard (used by most rooms in the
                                     ; game)
  DEFB 0,0,0,0,0,0,0,0    ; 68  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 69  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 70  Unused
  DEFB 0,0,0,0,0,0,0,0    ; 71  Unused
  DEFB 255,127,127,231,231,115,63,15 ; 72  Unused
  DEFB 255,246,238,252,250,247,239,134 ; 73  Unused
  DEFB 73,38,38,25,24,6,1,0 ; 74  Unused
  DEFB 137,127,17,161,127,65,193,63 ; 75  Unused
  DEFB 120,6,254,254,254,8,120,120 ; 76  Unused
  DEFB 255,0,255,0,255,255,0,0 ; 77  Unused
  DEFB 62,29,195,255,127,54,54,54 ; 78  Top of columns in Most Magic Room
  DEFB 124,184,195,255,254,108,108,108 ; 79  Top of columns in Most Magic Room
  DEFB 63,0,127,127,0,255,255,255 ; 80  Base of columns in Most Magic Room
  DEFB 252,0,254,254,0,255,255,255 ; 81  Base of columns in Most Magic Room
  DEFB 24,12,10,7,10,20,58,217 ; 82  Pit of Destruction flames
  DEFB 16,24,44,52,40,20,46,77 ; 83  Pit of Destruction flames

; Graphics (Odd Ball)
  DEFB 60,126,255,255,251,243,126,60 ; Frame 1
  DEFB 60,126,255,255,223,207,126,60 ; Frame 2
  DEFB 60,126,207,223,255,255,126,60 ; Frame 3
  DEFB 60,126,243,251,255,255,126,60 ; Frame 4

; Graphics - Brickwork Blocks (Part 2)
;
; Referenced by Architecture Styles Table at 54617
  DEFB 0,190,254,255,255,247,255,252 ; 88  Unused
  DEFB 0,63,127,127,111,103,115,63 ; 89  Unused
  DEFB 0,124,255,255,255,254,238,124 ; 90  Standard (used by most rooms in the
                                     ; game)
  DEFB 0,63,126,126,127,127,127,63 ; 91  Standard (used by most rooms in the
                                   ; game)

; Unused
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0
  DEFB 0,0,0,0,0,0,0,0

; Interrupt Routine (Jump 2)
;
; Note - original values here are 16, 16, 16. These are modified to the JP
; instruction by instructions between 26653 and 26662
  DEFB 16,16,16           ; Jump to main part of interrupt routine at 54853

; Unused
  DEFB 0

; Temporary store for Magic Knight's frame number (to draw)
  DEFB 0

; Magic Knight's current room
  DEFB 66

; Store for Display File Address to Print Text to in Command Summary Window
  DEFW 16962

; Magic Knight's Current Action Flags
;
; Bitwise flags which determine which commands appear in the main in-game menu.
; The bits are:
  DEFB 66                 ; Magic Knight's current action flags (1)
  DEFB 66                 ; Magic Knight's current action flags (2)

; Unused
  DEFB 0

; Interrupt Routine (Jump 1)
;
; Note - original value at 65535 is 0. This is modified to the JR instruction
; by instruction at 26650. The operand comes from next byte (location 0 in
; ROM.)
  NOP                     ; Jump to next part of interrupt routine

    SAVESNA "main.sna", main