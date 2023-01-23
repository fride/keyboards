let types = ../types.dhall

let kp = types.Binding.kp

let Combo = types.Combo
let cmb = Combo.combo

let test = [
-- TWO SIDED COMBOS
--       cmb "combo_numw" 5 [30,33] "NUMWORD"
    , cmb "combo_caps" 5 [ 13, 16 ] "CAPSWORD"
    , cmb "combo_reset" 10 [ 0, 9 ] "RESET"
    , cmb "combo_canel" 10 [ 10, 19 ] "CANCEL"
-- 3 keys combos
    , cmb "combo_enter" 10 [ 16, 17, 18 ] "KC_ENTER"
    , cmb "combo_tab" 10 [ 11, 12, 13 ] "KC_TAB"
    , cmb "combo_semicolon" 10 [ 11, 13 ] "KC_SCLN"
    , cmb "combo_colon" 10 [ 16, 18 ] "KC_COLON"

--- new and inspired by https://github.com/urob/zmk-config/
--- symbols!
    , cmb  "q" 5 [0,1] "QU"
    , cmb  "s1" 5 [1,2] "KC_ESC"
    , cmb  "vim_cmd" 5 [2,3] "VIM_COLON"
    , cmb  "dshift" 5 [3,4] "DOUBLE_SHIFT"

    , cmb  "s3" 5 [13,14] "OS_LSFT"
    , cmb  "s2" 5 [16,15] "OS_LSFT"
--
    ,cmb  "s4" 5 [6,7] "KC_BSPC"
    ,cmb  "s5" 5 [7,8] "KC_DEL"
--
    ,cmb  "s6" 45 [1,11] "KC_AT"
    ,cmb  "s7" 45 [2,12] "KC_HASH"
    ,cmb  "s8" 45 [3,13] "KC_DLR"
    ,cmb  "s9" 45 [4,14] "KC_PERC"
--
    ,cmb  "s10" 50 [5,15] "KC_CIRC"
    ,cmb  "s11" 50 [6,16] "KC_PLUS"
    ,cmb  "s12" 50 [7,17] "KC_ASTR"
    ,cmb  "s13" 50 [8,18] "KC_AMPR"
--
    ,cmb  "s14" 0 [11,12] "KC_EXLM"
    ,cmb  "s16" 0 [12,13] "KC_QUES"
--
    ,cmb  "s17" 0 [16,17] "KC_LPRN"
    ,cmb  "s18" 0 [17,18] "KC_RPRN"
--
    ,cmb  "s19" 50 [11,21] "KC_GRV"
    ,cmb  "s20" 50 [12,22] "KC_BSLS"
    ,cmb  "s21" 50 [13,23] "KC_EQL"
    ,cmb  "s22" 50 [14,24] "KC_TILD"
--
    ,cmb  "s23" 50 [15,25] "KC_UNDS"
    ,cmb  "s24" 50 [16,26] "KC_MINS"
    ,cmb  "s25" 50 [17,27] "KC_SLSH"
    ,cmb  "s27" 50 [18,28] "KC_PIPE"
--
    ,cmb  "s28" 5 [21,22] "KC_LCBR"
    ,cmb  "s29" 5 [22,23] "KC_RCBR"
--
    ,cmb  "s30" 5 [26,27] "KC_LBRC"
    ,cmb  "s31" 5 [27,28] "KC_RBRC"
]
{-
 /*                KEY POSITIONS

          ╭────────────────────╮ ╭────────────────────╮
          │  0   1   2   3   4 │ │  5   6   7   8   9 │
          │ 10  11  12  13  14 │ │ 15  16  17  18  19 │
          │ 20  21  22  23  24 │ │ 25  26  27  28  29 │
          ╰───────╮ 30  31     │ │     32  33 ╭───────╯
                  ╰────────────╯ ╰────────────╯        */
-}
let old =  [ Combo.combo "combo_numword" 20 [ 30, 33 ] "NUMWORD"
    , Combo.combo "combo_reset" 10 [ 0, 9 ] "RESET"
    , Combo.combo "combo_canel" 10 [ 10, 19 ] "CANCEL"
-- Vertical Combos
    , Combo.combo "combo_arrow_left" 10 [ 3, 13 ] "ARROW_L"
    , Combo.combo "combo_arrow_right" 10 [ 6, 16 ] "ARROW_R"
--
-- home row combos
--
    , Combo.combo "combo_q" 10 [ 0, 1 ] "KC_Q"
    , Combo.combo "combo_grv" 10 [ 1, 2 ] "KC_GRV"
    , Combo.combo "combo_qu" 10 [ 3, 4 ] "QU"
    , Combo.combo "combo_min" 10 [ 1, 3 ] "KC_MINS"
    -- need to find a nice spot for one time shifts!
    , Combo.combo "combo_shift1" 10 [ 14, 13 ] "OS_LSFT"
    , Combo.combo "combo_backspace" 10 [ 6, 7 ] "KC_BSPC"
    , Combo.combo "combo_del" 10 [ 7, 8 ] "KC_DEL"
    , Combo.combo "combo_eql" 10 [ 6, 8 ] "KC_EQL"
--
--
--    , Combo.combo "combo_num" 5 [ 11, 12 ] "LT(_FUN, KC_SCLN)" -- TODO
    , Combo.combo "combo_quote" 0 [ 11, 13 ] "KC_QUOTE"
    , Combo.combo "combo_esc_sym" 0 [ 12, 13 ] "KC_ESC"
    , Combo.combo "combo_tab_mod" 10 [ 11, 12, 13 ] "KC_TAB"
    , Combo.combo "combo_colon_sym" 0 [ 16, 17 ] "KC_COLON"
    , Combo.combo "combo_semicolon" 0 [ 16, 18 ] "KC_SCLN"
    , Combo.combo "combo_enter" 10 [ 16, 17, 18 ] "KC_ENTER"
    , Combo.combo "combo_lshift" 0 [ 21, 22 ] "OS_LSFT"
    , Combo.combo "combo_gui" 5 [ 22, 23 ] "OS_LGUI"
    , Combo.combo "combo_alt" 5 [ 21, 23 ] "OS_LALT"
    , Combo.combo "combo_rshift" 5 [ 27, 28 ] "OS_LSFT"

-- home row both sided
    , Combo.combo "combo_capsword" 10 [ 12, 17 ] "CAPSWORD"
--
-- Vertical
--
    , Combo.combo "combo_caps" 5 [ 26, 28 ] "CAPSWORD"
--
--
    ]
in test
