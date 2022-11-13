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
    , Combo.combo "combo_q" 10 [ 0, 1 ] "KC_Q"
    , Combo.combo "combo_qu" 10 [ 3, 4 ] "QU"
    , Combo.combo "combo_min" 10 [ 1, 3 ] "KC_MINS"
    -- need to find a nice spot for one time shifts!
    , Combo.combo "combo_shift1" 10 [ 14, 13 ] "OS_LSFT"
    , Combo.combo "combo_shift2" 10 [ 15, 16 ] "OS_LSFT"
    , Combo.combo "combo_backspace" 10 [ 6, 7 ] "KC_BSPC"
    , Combo.combo "combo_del" 10 [ 7, 8 ] "KC_DEL"
    , Combo.combo "combo_eql" 10 [ 6, 8 ] "KC_EQL"
    , Combo.combo "combo_num" 5 [ 11, 12 ] "TG(_NUM)"
    , Combo.combo "combo_quote" 0 [ 11, 13 ] "KC_QUOTE"
    , Combo.combo "combo_esc_sym" 0 [ 12, 13 ] "ESC_SYM"
    , Combo.combo "combo_tab_mod" 10 [ 11, 12, 13 ] "TAB_MODS"
    , Combo.combo "combo_colon_sym" 0 [ 16, 17 ] "CLN_SYM"
    , Combo.combo "combo_enter" 10 [ 16, 17, 18 ] "KC_ENTER"
    , Combo.combo "combo_double_quote" 10 [ 16, 18 ] "KC_DQUO"
    , Combo.combo "combo_lshift" 0 [ 21, 22 ] "OS_LSFT"
    , Combo.combo "combo_gui" 5 [ 22, 23 ] "OS_LGUI"
    , Combo.combo "combo_alt" 5 [ 21, 23 ] "OS_LALT"
    , Combo.combo "combo_rshift" 5 [ 27, 28 ] "OS_LSFT"
    , Combo.combo "combo_caps" 5 [ 26, 28 ] "CAPSWORD"
    , Combo.combo "combo_two" 10 [ 33, 16 ] "KC_2"
    , Combo.combo "combo_four" 10 [ 33, 17 ] "KC_4"
    , Combo.combo "combo_six" 10 [ 33, 18 ] "KC_6"
    , Combo.combo "combo_eight" 10 [ 33, 19 ] "KC_8"
    , Combo.combo "combo_zero" 10 [ 33, 26 ] "KC_0"
    , Combo.combo "combo_one" 10 [ 30, 13 ] "KC_1"
    , Combo.combo "combo_three" 10 [ 30, 12 ] "KC_3"
    , Combo.combo "combo_five" 10 [ 30, 11 ] "KC_5"
    , Combo.combo "combo_seven" 10 [ 30, 10 ] "KC_7"
    , Combo.combo "combo_nine" 10 [ 30, 23 ] "KC_9"
    , Combo.combo "combo_tilde" 10 [ 0, 33 ] "KC_TILD"
    , Combo.combo "combo_plus" 10 [ 1, 33 ] "KC_PPLS"
    , Combo.combo "combo_past" 10 [ 2, 33 ] "KC_PAST"
    , Combo.combo "combo_hash" 10 [ 6, 30 ] "KC_HASH"
    , Combo.combo "combo_at" 10 [ 7, 30 ] "KC_AT"
    , Combo.combo "combo_circ" 10 [ 8, 30 ] "KC_CIRC"
    , Combo.combo "combo_less" 10 [ 10, 33 ] "KC_LT"
    , Combo.combo "combo_pipe" 10 [ 11, 33 ] "KC_PIPE"
    , Combo.combo "combo_mins" 10 [ 12, 33 ] "KC_MINS"
    , Combo.combo "combo_greater" 10 [ 13, 33 ] "KC_GT"
    , Combo.combo "combo_backsl" 10 [ 14, 33 ] "KC_BSLS"
    , Combo.combo "combo_grave" 10 [ 15, 30 ] "KC_GRV"
    , Combo.combo "combo_left_br" 10 [ 16, 30 ] "KC_LCBR"
    , Combo.combo "combo_left_brc" 10 [ 17, 30 ] "KC_LBRC"
    , Combo.combo "combo_right_brc" 10 [ 18, 30 ] "KC_RBRC"
    , Combo.combo "combo_right_br" 10 [ 19, 30 ] "KC_RCBR"
    , Combo.combo "combo_exclamation" 10 [ 21, 33 ] "KC_EXLM"
    , Combo.combo "combo_percent" 10 [ 22, 33 ] "KC_PERC"
    , Combo.combo "combo_question_mark" 10 [ 23, 33 ] "KC_QUES"
    , Combo.combo "combo_ampersen" 10 [ 26, 30 ] "KC_AMPR"
    , Combo.combo "combo_left_paren" 10 [ 27, 30 ] "KC_LPRN"
    , Combo.combo "combo_right_paren" 10 [ 28, 30 ] "KC_RPRN"
    , Combo.combo "combo_underscore" 10 [ 29, 30 ] "KC_UNDS"
    ]
