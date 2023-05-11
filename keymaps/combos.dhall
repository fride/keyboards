let types = ../types.dhall

let kp = types.Binding.kp

let Combo = types.Combo
let cmb = Combo.combo
let sub = Combo.subs


{-
 /*                KEY POSITIONS

          ╭────────────────────╮ ╭────────────────────╮
          │  0   1   2   3   4 │ │  5   6   7   8   9 │
          │ 10  11  12  13  14 │ │ 15  16  17  18  19 │
          │ 20  21  22  23  24 │ │ 25  26  27  28  29 │
          ╰───────╮ 30  31     │ │     32  33 ╭───────╯
                  ╰────────────╯ ╰────────────╯        */
-}
let old =
[
-- TWO SIDED COMBOS
--       cmb "combo_numw" 5 [30,33] "NUMWORD"
    , cmb "combo_caps" 5 [ 8, 9 ] "KC_CAPS"
    , cmb "combo_capsWORD" 5 [ 12, 17 ] "CAPSWORD"
    , cmb "combo_reset" 10 [ 0, 9 ] "QK_BOOT"
    , cmb "combo_canel" 10 [ 10, 19 ] "CANCEL"
-- 3 keys combos
    , cmb "combo_enter" 10 [ 16, 17, 18 ] "KC_ENTER"
    , cmb "combo_tab" 10 [ 11, 12, 13 ] "KC_TAB"
    , cmb "combo_semicolon" 10 [ 11, 13 ] "KC_SCLN"
    , cmb "CMB_2_NAV" 30 [ 1, 2, 3 ] "TG(_NAV)"

    , sub "CMB_SUBS" 20 [26,27,28] "you"

    , cmb "combo_colon" 10 [ 16, 18 ] "KC_COLON"

-- mods
    , cmb "CMB_LGUI" 10 [23,24] "OS_LGUI"
    , cmb "CMB_RGUI" 10 [25,26] "OS_LGUI"
    , cmb "CMB_LSFT" 10 [1,2] "OS_LSFT"
    , cmb "CMB_RSFT" 10 [7,8] "OS_LSFT"
    , cmb "CMB_RCTL" 5 [11,12] "OS_LCTL"
    , cmb "CMB_lCTL" 5 [17,18] "OS_LCTL"
-- parens

    , cmb  "CMB_LB" 50 [1,11] "KC_LBRC"
    , cmb  "CMB_LP" 50 [2,12] "KC_LPRN"
    , cmb  "CMB_LC" 50 [3,13] "KC_LCBR"
    , cmb  "CMB_AR" 50 [4,14] "ARROW_R"

    , cmb  "CMB_AL" 50 [5,15] "ARROW_L"
    , cmb  "CMB_RC" 50 [6,16] "KC_RCBR"
    , cmb  "CMB_RP" 50 [7,17] "KC_RPRN"
    , cmb  "CMB_RB" 50 [8,18] "KC_RBRC"


--    , cmb  "CMB_Q" 5 [0,1] "KC_Q"
--    , cmb  "CMB_QU" 5 [1,2] "QU"

    , cmb  "CMB_Z" 5 [2,3] "KC_Z"
    , cmb  "s1" 5 [12,13] "KC_ESC" -- TODO this should be symbos too?
    -- , cmb  "vim_cmd" 5 [2,3] "VIM_COLON"
    , cmb  "dshift" 5 [3,4] "DOUBLE_SHIFT"

--
--    ,cmb  "s4" 5 [6,7] "KC_BSPC"
--    ,cmb  "s5" 5 [7,8] "KC_DEL"
    , cmb  "CMB_DEL_WORD" 5 [6,7,8] "C(KC_W)"
    ,cmb  "CMB_NUMWORD" 5 [30,33] "NUMWORD"
    ,cmb  "CMB_QUOT" 5 [16,18] "KC_QUOT"
    ,cmb  "CMB_DQUOT" 5 [11,13] "S(KC_QUOT)"
    ,cmb  "CMB_COLON" 5 [16,17] "S(KC_SCLN)"




    ,cmb  "CMB_LEADER" 5 [26,28] "LEADER"

--
    -- left thumb (Numbers on right)
    , cmb "CMB_2" 5 [30,16] "KC_2"
    , cmb "CMB_4" 5 [30,17] "KC_4"
    , cmb "CMB_6" 5 [30,18] "KC_6"
    , cmb "CMB_8" 5 [30,19] "KC_8"
    , cmb "CMB_0" 5 [30,26] "KC_0"
-- TODO THE UMLAUTE!
    , cmb "CMB_AE" 5 [30,27] "A(KC_A)"
    , cmb "CMB_OE" 5 [30,28] "A(KC_O)"
    , cmb "CMB_SS" 5 [30,29] "A(KC_S)"
    , cmb "CMB_UE" 5 [30,9] "A(KC_U)"

-- right thumb (Numbers on right)
    , cmb "CMB_1" 5 [33,13] "KC_1"
    , cmb "CMB_3" 5 [33,12] "KC_3"
    , cmb "CMB_5" 5 [33,11] "KC_5"
    , cmb "CMB_7" 5 [33,10] "KC_7"
    , cmb "CMB_9" 5 [33,23] "KC_9"

]
let older = [
  cmb "CMB_QU" 5 [21,22,23] "QU"
--, cmb "CMB_GRV" 5 [1,2] "KC_GRV"
, cmb "CMB_Z" 5 [1,2] "KC_Z"
,  cmb "CMB_Q" 5 [21,22] "KC_Q"
,  cmb "CMB_V" 5 [22,23] "KC_V"
,  cmb "CMB_NAV" 5 [1,2, 3] "TG(_NAV)"
,  cmb "CMB_NUM" 5 [6,7,8] "NUMWORD"
--,  cmb "CMB_GERM" 5 [6,7, 8] "TG(_ALPHA2)"



, cmb "CMB_X" 5 [21,23] "KC_X"
, cmb "combo_reset" 10 [ 0, 9 ] "QK_BOOT"
, cmb "combo_canel" 10 [ 10, 19 ] "CANCEL"
, cmb "CMB_MINS" 5 [1,3] "KC_MINS"
, cmb "CMB_DQUO" 5 [11,13] "KC_DQUO"
, cmb "CMB_QUOT" 5 [16,18] "KC_QUOT"

,  cmb "CMB_ESC"   5 [12,13] "ESC_SYM"
,  cmb "CMB_COLON" 5 [16,17] "COLN_SYM"

,  cmb "CMB_BSCP" 5 [6,7] "KC_BSPC"
,  cmb "CMB_DEL" 5 [7,8] "KC_DEL"
,  cmb "CMB_EQL" 5 [6,8] "KC_EQL"
,  cmb "CMB_ENTER" 5 [16,17,18] "KC_ENTER"
,  cmb "CMB_TAB" 5 [11,12,13] "TAB_MOD"
,  cmb "CMB_NUMWORD" 5 [30,33] "TG(_NUM)"
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
in
[
  cmb "combo_reset" 10 [ 1, 8 ] "QK_BOOT"
, cmb "combo_canel" 10 [ 10, 19 ] "CANCEL"
, cmb "CMB_NAV" 5 [21,22, 23] "TG(_NAV)"
, cmb "CMB_NUM" 5 [26,27,28] "NUMWORD"
, cmb "CMB_TAB" 5 [11,12,13] "TAB_MOD"
, cmb "CMB_ENTER" 5 [16,17,18] "KC_ENTER"


]
