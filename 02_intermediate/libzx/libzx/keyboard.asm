;------------------------------------------------------------------------------
; This file is part of the ZX Spectrum libzx library by Sebastian Mihai, 2016
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
;
; Keyboard routines
;
; The high amount of code duplication in this file is for the sake of speed.
;
;------------------------------------------------------------------------------

KEY_B equ %00010000
KEY_H equ %00010000
KEY_Y equ %00010000
KEY_6 equ %00010000
KEY_5 equ %00010000
KEY_T equ %00010000
KEY_G equ %00010000
KEY_V equ %00010000
	
KEY_N equ %00001000
KEY_J equ %00001000
KEY_U equ %00001000
KEY_7 equ %00001000
KEY_4 equ %00001000
KEY_R equ %00001000
KEY_F equ %00001000
KEY_C equ %00001000
	
KEY_M equ %00000100
KEY_K equ %00000100
KEY_I equ %00000100
KEY_8 equ %00000100
KEY_3 equ %00000100
KEY_E equ %00000100
KEY_D equ %00000100
KEY_X equ %00000100
	
KEY_SYMBOL_SHIFT equ %00000010
KEY_L equ %00000010
KEY_O equ %00000010
KEY_9 equ %00000010
KEY_2 equ %00000010
KEY_W equ %00000010
KEY_S equ %00000010
KEY_Z equ %00000010
	
KEY_SPACE equ %00000001
KEY_ENTER equ %00000001
KEY_P equ %00000001
KEY_0 equ %00000001
KEY_1 equ %00000001
KEY_Q equ %00000001
KEY_A equ %00000001
KEY_CAPS_SHIFT equ %00000001

; How to read the keyboard:
;
; Step 1 - select key row in the accumulator by loading port number to the left
;
; $7F - B, N, M, Symbol Shift, Space
; $BF - H, J, K, L, Enter
; $DF - Y, U, I, O, P
; $EF - 6, 7, 8, 9, 0
; $F7 - 5, 4, 3, 2, 1
; $FB - T, R, E, W, Q
; $FD - G, F, D, S, A
; $FE - V, C, X, Z, Caps Shift
;         
;       4  3  2  1  0        These bits will be 0 if the corresponding 
;                            key is pressed
; Step 2 - in a, ($FE)
; Step 3 - look for bit values of 0 to find pressed keys, as shown above 

	; these store the last values read in by keyboard_read
	; and are meant to be ANDed with the constants above when checking
keys_b_n_m_ss_sp db 255
keys_h_j_k_l_en db 255
keys_y_u_i_o_p db 255
keys_6_7_8_9_0 db 255
keys_5_4_3_2_1 db 255
keys_t_r_e_w_q db 255
keys_g_f_d_s_a db 255
keys_v_c_x_z_cs db 255
	
	; these store the second-last values read in by keyboard_read
	; and are meant to allow "just pressed this frame" checks
old_keys_b_n_m_ss_sp db 255
old_keys_h_j_k_l_en db 255
old_keys_y_u_i_o_p db 255
old_keys_6_7_8_9_0 db 255
old_keys_5_4_3_2_1 db 255
old_keys_t_r_e_w_q db 255
old_keys_g_f_d_s_a db 255
old_keys_v_c_x_z_cs db 255


initialize_keyboard:
	ld hl, keys_b_n_m_ss_sp
	ld (hl), 255
	ld hl, keys_h_j_k_l_en
	ld (hl), 255
	ld hl, keys_y_u_i_o_p
	ld (hl), 255
	ld hl, keys_6_7_8_9_0
	ld (hl), 255
	ld hl, keys_5_4_3_2_1
	ld (hl), 255
	ld hl, keys_t_r_e_w_q
	ld (hl), 255
	ld hl, keys_g_f_d_s_a
	ld (hl), 255
	ld hl, keys_v_c_x_z_cs
	ld (hl), 255
	
	ld hl, old_keys_b_n_m_ss_sp
	ld (hl), 255
	ld hl, old_keys_h_j_k_l_en
	ld (hl), 255
	ld hl, old_keys_y_u_i_o_p
	ld (hl), 255
	ld hl, old_keys_6_7_8_9_0
	ld (hl), 255
	ld hl, old_keys_5_4_3_2_1
	ld (hl), 255
	ld hl, old_keys_t_r_e_w_q
	ld (hl), 255
	ld hl, old_keys_g_f_d_s_a
	ld (hl), 255
	ld hl, old_keys_v_c_x_z_cs
	ld (hl), 255
	
	ret
	
	
; Reads the entire keyboard, storing the result. 
; This is meant to be called before any keyboard checks are made.
keyboard_read_keys:
	; save current values into old_
	ld a, (keys_b_n_m_ss_sp)
	ld hl, old_keys_b_n_m_ss_sp
	ld (hl), a
	
	ld a, (keys_h_j_k_l_en)
	ld hl, old_keys_h_j_k_l_en
	ld (hl), a
	
	ld a, (keys_y_u_i_o_p)
	ld hl, old_keys_y_u_i_o_p
	ld (hl), a
	
	ld a, (keys_6_7_8_9_0)
	ld hl, old_keys_6_7_8_9_0
	ld (hl), a
	
	ld a, (keys_5_4_3_2_1)
	ld hl, old_keys_5_4_3_2_1
	ld (hl), a
	
	ld a, (keys_t_r_e_w_q)
	ld hl, old_keys_t_r_e_w_q
	ld (hl), a
	
	ld a, (keys_g_f_d_s_a)
	ld hl, old_keys_g_f_d_s_a
	ld (hl), a
	
	ld a, (keys_v_c_x_z_cs)
	ld hl, old_keys_v_c_x_z_cs
	ld (hl), a
	
	; read in new values
	ld a, $7F
	in a, ($FE)
	ld hl, keys_b_n_m_ss_sp
	ld (hl), a
	
	ld a, $BF
	in a, ($FE)
	ld hl, keys_h_j_k_l_en
	ld (hl), a

	ld a, $DF
	in a, ($FE)
	ld hl, keys_y_u_i_o_p
	ld (hl), a

	ld a, $EF
	in a, ($FE)
	ld hl, keys_6_7_8_9_0
	ld (hl), a

	ld a, $F7
	in a, ($FE)
	ld hl, keys_5_4_3_2_1
	ld (hl), a

	ld a, $FB
	in a, ($FE)
	ld hl, keys_t_r_e_w_q
	ld (hl), a

	ld a, $FD
	in a, ($FE)
	ld hl, keys_g_f_d_s_a
	ld (hl), a

	ld a, $FE
	in a, ($FE)
	ld hl, keys_v_c_x_z_cs
	ld (hl), a
	
	ret


; Checks whether a certain key(s) has just become pressed.
;
; Input:
;         B - key(s) to check (OR together multiple keys)
; Output:
;         A - 1 when the key(s) has just been pressed, 0 otherwise
check_just_pressed_keys_b_n_m_ss_sp:
	ld a, (keys_b_n_m_ss_sp)
	and b
	jp nz, check_just_pressed_keys_b_n_m_ss_sp_not	
									; if key is not pressed, then just return
	ld a, (old_keys_b_n_m_ss_sp)
	and b
	jp z, check_just_pressed_keys_b_n_m_ss_sp_not	
									; if key was pressed last frame, then
									; key is being held down, and this is not 
									; the first frame when it became pressed
	ld a, 1
	ret
check_just_pressed_keys_b_n_m_ss_sp_not:
	ld a, 0
	ret


; Checks whether a certain key(s) has just become pressed.
;
; Input:
;         B - key(s) to check (OR together multiple keys)
; Output:
;         A - 1 when the key(s) has just been pressed, 0 otherwise
check_just_pressed_keys_h_j_k_l_en:
	ld a, (keys_h_j_k_l_en)
	and b
	jp nz, check_just_pressed_keys_h_j_k_l_en_not	
									; if key is not pressed, then just return
	ld a, (old_keys_h_j_k_l_en)
	and b
	jp z, check_just_pressed_keys_h_j_k_l_en_not	
									; if key was pressed last frame, then
									; key is being held down, and this is not 
									; the first frame when it became pressed
	ld a, 1
	ret
check_just_pressed_keys_h_j_k_l_en_not:
	ld a, 0
	ret


; Checks whether a certain key(s) has just become pressed.
;
; Input:
;         B - key(s) to check (OR together multiple keys)
; Output:
;         A - 1 when the key(s) has just been pressed, 0 otherwise
check_just_pressed_keys_y_u_i_o_p:
	ld a, (keys_y_u_i_o_p)
	and b
	jp nz, check_just_pressed_keys_y_u_i_o_p_not	
									; if key is not pressed, then just return
	ld a, (old_keys_y_u_i_o_p)
	and b
	jp z, check_just_pressed_keys_y_u_i_o_p_not	
									; if key was pressed last frame, then
									; key is being held down, and this is not 
									; the first frame when it became pressed
	ld a, 1
	ret
check_just_pressed_keys_y_u_i_o_p_not:
	ld a, 0
	ret


; Checks whether a certain key(s) has just become pressed.
;
; Input:
;         B - key(s) to check (OR together multiple keys)
; Output:
;         A - 1 when the key(s) has just been pressed, 0 otherwise
check_just_pressed_keys_6_7_8_9_0:
	ld a, (keys_6_7_8_9_0)
	and b
	jp nz, check_just_pressed_keys_6_7_8_9_0_not	
									; if key is not pressed, then just return
	ld a, (old_keys_6_7_8_9_0)
	and b
	jp z, check_just_pressed_keys_6_7_8_9_0_not	
									; if key was pressed last frame, then
									; key is being held down, and this is not 
									; the first frame when it became pressed
	ld a, 1
	ret
check_just_pressed_keys_6_7_8_9_0_not:
	ld a, 0
	ret


; Checks whether a certain key(s) has just become pressed.
;
; Input:
;         B - key(s) to check (OR together multiple keys)
; Output:
;         A - 1 when the key(s) has just been pressed, 0 otherwise
check_just_pressed_keys_5_4_3_2_1:
	ld a, (keys_5_4_3_2_1)
	and b
	jp nz, check_just_pressed_keys_5_4_3_2_1_not	
									; if key is not pressed, then just return
	ld a, (old_keys_5_4_3_2_1)
	and b
	jp z, check_just_pressed_keys_5_4_3_2_1_not	
									; if key was pressed last frame, then
									; key is being held down, and this is not 
									; the first frame when it became pressed
	ld a, 1
	ret
check_just_pressed_keys_5_4_3_2_1_not:
	ld a, 0
	ret


; Checks whether a certain key(s) has just become pressed.
;
; Input:
;         B - key(s) to check (OR together multiple keys)
; Output:
;         A - 1 when the key(s) has just been pressed, 0 otherwise
check_just_pressed_keys_t_r_e_w_q:
	ld a, (keys_t_r_e_w_q)
	and b
	jp nz, check_just_pressed_keys_t_r_e_w_q_not	
									; if key is not pressed, then just return
	ld a, (old_keys_t_r_e_w_q)
	and b
	jp z, check_just_pressed_keys_t_r_e_w_q_not	
									; if key was pressed last frame, then
									; key is being held down, and this is not 
									; the first frame when it became pressed
	ld a, 1
	ret
check_just_pressed_keys_t_r_e_w_q_not:
	ld a, 0
	ret


; Checks whether a certain key(s) has just become pressed.
;
; Input:
;         B - key(s) to check (OR together multiple keys)
; Output:
;         A - 1 when the key(s) has just been pressed, 0 otherwise
check_just_pressed_keys_g_f_d_s_a:
	ld a, (keys_g_f_d_s_a)
	and b
	jp nz, check_just_pressed_keys_g_f_d_s_a_not	
									; if key is not pressed, then just return
	ld a, (old_keys_g_f_d_s_a)
	and b
	jp z, check_just_pressed_keys_g_f_d_s_a_not	
									; if key was pressed last frame, then
									; key is being held down, and this is not 
									; the first frame when it became pressed
	ld a, 1
	ret
check_just_pressed_keys_g_f_d_s_a_not:
	ld a, 0
	ret


; Checks whether a certain key(s) has just become pressed.
;
; Input:
;         B - key(s) to check (OR together multiple keys)
; Output:
;         A - 1 when the key(s) has just been pressed, 0 otherwise
check_just_pressed_keys_v_c_x_z_cs:
	ld a, (keys_v_c_x_z_cs)
	and b
	jp nz, check_just_pressed_keys_v_c_x_z_cs_not	
									; if key is not pressed, then just return
	ld a, (old_keys_v_c_x_z_cs)
	and b
	jp z, check_just_pressed_keys_v_c_x_z_cs_not	
									; if key was pressed last frame, then
									; key is being held down, and this is not 
									; the first frame when it became pressed
	ld a, 1
	ret
check_just_pressed_keys_v_c_x_z_cs_not:
	ld a, 0
	ret

