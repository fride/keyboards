let types = ../types.dhall
let kp = types.Binding.kp
let Combo = types.Combo

in [
, Combo.combo "combo_numword" 20 [30,33] "NUMWORD"
, Combo.combo "combo_reset" 10 [ 0,9] "RESET"
, Combo.combo "combo_canel" 10 [10,19] "CANCEL"
-- top row
, Combo.combo "combo_q" 20 [0,1] "KC_Q"
, Combo.combo "combo_min" 10 [1,3] "KC_EQL"
, Combo.combo "combo_qu" 10 [2,3] "QU"
, Combo.combo "combo_backspace" 10 [6,7] "KC_BSPC"
, Combo.combo "combo_del" 10 [7,8] "KC_DEL"
, Combo.combo "combo_eql" 10 [6,8] "KC_EQL"
-- Home row
, Combo.combo "combo_quote" 0 [11,13]    "KC_QUOTE"
, Combo.combo "combo_esc_sym" 0 [12,13]    "ESC_SYM"
, Combo.combo "combo_tab_mod" 10 [11,12,13] "TAB_MODS"
, Combo.combo "combo_colon_sym" 0 [16,17]    "CLN_SYM"
, Combo.combo "combo_enter" 10 [16,17,18] "KC_ENTER"
, Combo.combo "combo_double_quote" 10 [16,18]    "KC_DQUO"

-- lower row
, Combo.combo "combo_gui" 5 [22,23] "OS_LGUI"
--   , Combo.combo "combo_circ" 5 [21,22] "KC_CIRC"
, Combo.combo "combo_alt" 5 [21,23] "OS_LALT"
, Combo.combo "combo_dollar" 5 [27,28] "KC_DLR"
, Combo.combo "combo_caps" 5 [26,28] "CAPSWORD"

-- Number combos, using same side thumb (as pinkies are not used)
, Combo.combo "combo_two" 10 [33,16] "KC_2"
, Combo.combo "combo_four" 10 [33,17] "KC_4"
, Combo.combo "combo_six" 10 [33,18] "KC_6"
, Combo.combo "combo_eight" 10 [33,19] "KC_8"
, Combo.combo "combo_zero" 10 [33,26] "KC_0"

, Combo.combo "combo_one" 10 [30,13] "KC_1"
, Combo.combo "combo_three" 10 [30,12] "KC_3"
, Combo.combo "combo_five" 10 [30,11] "KC_5"
, Combo.combo "combo_seven" 10 [30,10] "KC_7"
, Combo.combo "combo_nine" 10 [30,23] "KC_9"

 -- symbols with the opposite thumb, otherwise pinkies are impossible to use!
 , Combo.combo "combo_tilde" 10 [0, 33] "KC_TILD"
 , Combo.combo "combo_plus" 10 [1, 33] "KC_PPLS"
 , Combo.combo "combo_past" 10 [2, 33] "KC_PAST"

 , Combo.combo "combo_hash" 10 [6,30] "KC_HASH"
 , Combo.combo "combo_at" 10 [7, 30] "KC_AT"
 , Combo.combo "combo_circ" 10 [8, 30] "KC_CIRC"
 , Combo.combo "combo_less" 10 [10,33] "KC_LT"
 , Combo.combo "combo_pipe" 10 [11,33] "KC_PIPE"
 , Combo.combo "combo_mins" 10 [12,33] "KC_MINS"
 , Combo.combo "combo_greater" 10 [13,33] "KC_GT"
 , Combo.combo "combo_backsl" 10 [14,33] "KC_BSLS"
 , Combo.combo "combo_grave" 10 [15,30] "KC_GRV"
 , Combo.combo "combo_left_br" 10 [16,30] "KC_LCBR"
 , Combo.combo "combo_left_brc" 10 [17,30] "KC_LBRC"
 , Combo.combo "combo_right_brc" 10 [18,30] "KC_RBRC"
 , Combo.combo "combo_right_br" 10 [19,30] "KC_RCBR"
 , Combo.combo "combo_exclamation" 10 [21,33] "KC_EXLM"
 , Combo.combo "combo_percent" 10 [22,33] "KC_PERC"
 , Combo.combo "combo_question_mark" 10 [23,33] "KC_QUES"
 , Combo.combo "combo_ampersen" 10 [26,30] "KC_AMPR"
 , Combo.combo "combo_left_paren" 10 [27,30] "KC_LPRN"
 , Combo.combo "combo_right_paren" 10 [28,30] "KC_RPRN"
 , Combo.combo "combo_underscore" 10 [29,30] "KC_UNDS"
]
