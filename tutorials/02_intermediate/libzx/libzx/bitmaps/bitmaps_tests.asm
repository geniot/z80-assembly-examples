;------------------------------------------------------------------------------
; This file is part of the ZX Spectrum libzx library by Sebastian Mihai, 2016
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; This file contains bitmap tests. They're meant to be run after code changes
; are made to bitmap rendering code. Each is described below, in order to help
; verify that the behaviour remains the same.
;
; THIS FILE IS NOT INCLUDED IN LIBZX BY DEFAULT. IT IS PROVIDED HERE TO BE 
; INCLUDED ONLY TEMPORARILY, WHEN VERIFYING THAT NO REGRESSIONS HAVE BEEN
; INTRODUCED AFTER MAKING CHANGES TO THE BITMAP ROUTINES.
;------------------------------------------------------------------------------

; OR test - 2 overlapped squares
; XOR test - 2 overlapped squares with "erased" intersections
; NOT AND (erase) test - 2 squares, with "erasures" like above, 
;                        4-pixel vertical shifted
; VRAM OR test - 2 overlapped squares
; VRAM XOR test - 2 overlapped squares with "erased" intersections
; VRAM OR masked test - square overlapped by circle, only one 
;                       pixel "inside" square
; "copy buffer rectangle to vram" test - single square copied from background

	bitmapTestsCircleImage
		db %00000000
		db %00011000
		db %00100100
		db %01000010
		db %01000010
		db %00100100
		db %00011000
		db %00000000	
	bitmapTestsCircleMask
		db %00000000
		db %00011000
		db %00111100
		db %01111110
		db %01111110
		db %00111100
		db %00011000
		db %00000000
	
	bitmapTestsSquareImage
		db %11111111
		db %10000001
		db %10000001
		db %10000001
		db %10000001
		db %10000001
		db %10000001
		db %11111111
	bitmapTestsSquareMask
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111
		db %11111111

bitmaps_tests:
	
	; OR test
	ld hl, bitmapTestsSquareImage
	ld c, 4
	ld ixl, 48
	ld a, 8
	call draw_bitmap_OR_blitted_background
	
	ld hl, bitmapTestsSquareImage
	ld c, 8
	ld ixl, 52
	ld a, 8
	call draw_bitmap_OR_blitted_background

	
	; XOR test
	ld hl, bitmapTestsSquareImage
	ld c, 24
	ld ixl, 48
	ld a, 8
	call draw_bitmap_XOR_blitted_background
	
	ld hl, bitmapTestsSquareImage
	ld c, 28
	ld ixl, 52
	ld a, 8
	call draw_bitmap_XOR_blitted_background
	
	
	; NOT AND (erase) test
	ld hl, bitmapTestsSquareImage
	ld c, 44
	ld ixl, 48
	ld a, 8
	call draw_bitmap_OR_blitted_background
	
	ld hl, bitmapTestsSquareImage
	ld c, 48
	ld ixl, 60
	ld a, 8
	call draw_bitmap_OR_blitted_background
	
	ld hl, bitmapTestsSquareImage
	ld c, 48
	ld ixl, 52
	ld a, 8
	call draw_bitmap_NOT_AND_blitted_background
	
	ld hl, bitmapTestsSquareImage
	ld c, 52
	ld ixl, 64
	ld a, 8
	call draw_bitmap_NOT_AND_blitted_background
	
	
	; tests before this point drew to the buffer
	call copy_background_buffer_to_video_ram
	; tests after this will draw directly to vram
	
	
	; VRAM OR test
	ld hl, bitmapTestsSquareImage
	ld c, 64
	ld ixl, 48
	ld a, 8
	call draw_bitmap_OR_blitted_vram
	
	ld hl, bitmapTestsSquareImage
	ld c, 68
	ld ixl, 52
	ld a, 8
	call draw_bitmap_OR_blitted_vram
	
	
	; VRAM XOR test
	ld hl, bitmapTestsSquareImage
	ld c, 84
	ld ixl, 48
	ld a, 8
	call draw_bitmap_XOR_blitted_vram
	
	ld hl, bitmapTestsSquareImage
	ld c, 88
	ld ixl, 52
	ld a, 8
	call draw_bitmap_XOR_blitted_vram
	
	
	; VRAM masked OR test
	ld hl, bitmapTestsSquareImage
	ld de, bitmapTestsSquareMask
	ld c, 104
	ld ixl, 48
	ld a, 8
	call draw_bitmap_OR_blitted_masked_vram
	
	ld hl, bitmapTestsCircleImage
	ld de, bitmapTestsCircleMask
	ld c, 108
	ld ixl, 52
	ld a, 8
	call draw_bitmap_OR_blitted_masked_vram
	
	
	; "copy buffer rectangle to vram" test
	ld hl, bitmapTestsSquareImage
	ld c, 124
	ld ixl, 48
	ld a, 8
	call draw_bitmap_OR_blitted_background	
								; this is blitted to the buffer, so it
								; shouldn't be visible until the call below
								; completes
	ld c, 124
	ld ixl, 48
	ld a, 8
	call copy_buffer_rectangle_to_vram	; copy the single square to vram
	
	ret
