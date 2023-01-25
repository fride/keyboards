let types = ../types.dhall

let kp = types.Binding.kp

let Combo = types.Combo
let cmb = Combo.combo

in [
-- TWO SIDED COMBOS
    -- cmb "combo_numw" 5 [30,33] "NUMWORD" does not work yet! ;)
    -- , cmb "combo_caps" 5 [ 13, 16 ] "CAPSWORD"
    cmb "combo_reset" 10 [ 20, 29 ] "RESET"
    --, cmb "combo_canel" 10 [ 10, 19 ] "CANCEL"

-- taipo combos
    , cmb "combo_l_R" 50 [ 0, 30 ]   "S(KC_R)"
    , cmb "combo_l_gt" 50 [ 0, 31 ]   "S(KC_DOT)"

    , cmb "combo_l_S" 50 [ 1, 30 ]   "S(KC_S)"
    , cmb "combo_l_paran" 50 [ 1, 31 ]   "KC_RPRN"

    , cmb "combo_l_N" 50 [ 2, 30 ]   "S(KC_N)"
    , cmb "combo_l_rbr" 50 [ 2, 31 ]   "KC_RCBR"

    , cmb "combo_l_I" 50 [ 3, 30 ]   "S(KC_I)"
    , cmb "combo_l_r_paren" 50 [ 3, 31 ]   "KC_RPRN"

    , cmb "combo_l_A" 50 [ 10, 30 ]   "S(KC_A)"
    , cmb "combo_l_lt" 50 [ 10, 31 ]   "S(KC_COMM)"

    , cmb "combo_l_O" 50 [ 11, 30 ]   "S(KC_O)"
    , cmb "combo_l_l_paran" 50 [ 11, 31 ]   "KC_LPRN"

    , cmb "combo_l_T" 50 [ 12, 30 ]   "S(KC_T)"
    , cmb "combo_l_lbr" 50 [ 12, 31 ]   "KC_LCBR"

    , cmb "combo_l_E" 50 [ 13, 30 ]   "S(KC_E)"
    , cmb "combo_l_l_paren" 50 [ 13, 31 ]   "KC_LPRN"



    , cmb "combo_l_b" 50 [ 0, 1 ]   "KC_B"
    , cmb "combo_l_B" 50 [ 0, 1, 30]   "S(KC_B)"
    , cmb "combo_9" 50 [ 0, 1, 31]   "KC_9"

    , cmb "combo_l_y" 10 [ 2, 3 ] "KC_Y"
    , cmb "combo_l_Y" 10 [ 2, 3, 30 ] "S(KC_Y)"
    , cmb "combo_5" 10 [ 2, 3, 31 ] "KC_5"


    , cmb "combo_l_l" 50 [ 10, 11 ] "KC_L"
    , cmb "combo_l_L" 50 [ 10, 11,30 ] "S(KC_L)"
    , cmb "combo_l_4" 50 [ 10, 11,31 ] "KC_4"

    , cmb "combo_l_h" 10 [ 12, 13 ] "KC_H"
    , cmb "combo_l_H" 10 [ 12, 13,30 ] "S(KC_H)"
    , cmb "combo_l_zero" 10 [ 12, 13,31 ] "KC_0"

    , cmb "combo_l_p" 10 [ 1, 2 ] "KC_P"
    , cmb "combo_l_u" 10 [ 11, 12 ] "KC_U"

    , cmb "combo_l_g" 50 [ 0, 3 ] "KC_G"
    , cmb "combo_l_z" 50 [ 0, 2 ] "KC_Z"
    , cmb "combo_l_f" 50 [ 1, 3 ] "KC_F"
    , cmb "combo_l_q" 50 [ 10, 12 ] "KC_Q"
    , cmb "combo_l_c" 50 [ 11, 13 ] "KC_C"
    , cmb "combo_l_x" 50 [ 0, 12 ] "KC_X"
    , cmb "combo_l_k" 50 [ 11, 3 ] "KC_K"
    , cmb "combo_l_v" 50 [ 1, 13 ] "KC_V"

    -- I dont't like that one!
    , cmb "combo_l_j_old" 10 [ 10, 2 ] "KC_J"
    , cmb "combo_l_j" 10 [ 11, 23 ] "KC_J"
    , cmb "combo_l_J" 10 [ 11, 23, 30 ] "S(KC_J)"

    , cmb "combo_l_m" 50 [ 0, 13 ] "KC_M"
    , cmb "combo_l_w" 50 [ 10, 3 ] "KC_W"
    -- symbols
    , cmb "combo_l_slash" 50 [ 1, 12 ] "KC_SLSH"
    , cmb "combo_l_mins" 50 [ 11, 2 ] "KC_MINS"
    , cmb "combo_l_scln" 50 [ 0, 11 ] "KC_SCLN"
    , cmb "combo_l_ques" 50 [ 12, 3 ] "KC_QUES"

    , cmb "combo_l_comm" 50 [ 2, 13 ] "KC_COMM"
    , cmb "combo_l_dot" 50 [ 2, 13,30 ] "KC_DOT"
    , cmb "combo_l_grv" 50 [ 2, 13,31 ] "KC_GRV"

    -- this is horrible! [ 10, 1 ]
    , cmb "combo_l_quot" 50 [ 21, 22] "KC_QUOT"

    , cmb "combo_l_enter" 10 [ 11, 12, 13 ] "KC_ENTER"
    , cmb "combo_l_esc" 10 [ 11, 12, 13,30 ] "KC_ESC" -- might need to change this,
    , cmb "combo_l_tab" 10 [ 1, 2, 3 ] "KC_TAB"
    , cmb "combo_l_bspc" 10 [ 1, 2, 3,30 ] "KC_BSPC" -- this is pretty lame! ;)

   -- one shot keys
     , cmb "combo_shift" 10 [ 3, 13 ] "OS_LSFT"
     , cmb "combo_right" 10 [ 3, 13,30 ] "KC_RIGHT"
     , cmb "combo_alt" 10 [ 2, 12 ] "OS_LALT"
     , cmb "combo_down" 10 [ 2, 12,30 ] "KC_DOWN"
     , cmb "combo_ctrl" 10 [ 1, 11 ] "OS_LCTL"
     , cmb "combo_up" 10 [ 1, 11, 30 ] "KC_UP"
     , cmb "combo_gui" 10 [ 0, 10 ] "OS_LGUI"
     , cmb "combo_left" 10 [ 0, 10,30 ] "KC_LEFT"
    -- my own stuff

    ]
