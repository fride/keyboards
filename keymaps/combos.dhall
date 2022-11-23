let types = ../types.dhall

let kp = types.Binding.kp

let Combo = types.Combo
{-
 /*                KEY POSITIONS

          ╭────────────────────╮ ╭────────────────────╮
          │  0   1   2   3   4 │ │  5   6   7   8   9 │
          │ 10  11  12  13  14 │ │ 15  16  17  18  19 │
          │ 20  21  22  23  24 │ │ 25  26  27  28  29 │
          ╰───────╮ 30  31     │ │     32  33 ╭───────╯
                  ╰────────────╯ ╰────────────╯        */
-}
in  [ Combo.combo "combo_numword" 20 [ 30, 33 ] "NUMWORD"
    , Combo.combo "combo_reset" 10 [ 0, 9 ] "RESET"
    , Combo.combo "combo_canel" 10 [ 10, 19 ] "CANCEL"
    , Combo.combo "combo_arrow_left" 10 [ 4, 14 ] "ARROW_L"
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
    , Combo.combo "combo_shift2" 10 [ 15, 16 ] "CAPSWORD"
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
    , Combo.combo "combo_caps" 5 [ 26, 28 ] "CAPSWORD"
--
-- Thumbs combos
--

--
--
    ]
