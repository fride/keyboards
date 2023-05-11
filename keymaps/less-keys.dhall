let types = ../types.dhall
let Ferris = ./ferris.dhall
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
let combos =
[
   cmb "combo_canel" 10 [ 10, 19 ] "CANCEL"
,  cmb "combo_enter" 10 [ 16, 17, 18 ] "KC_ENTER"
, cmb "combo_tab" 10 [ 11, 12, 13 ] "KC_TAB"

, cmb "combo_W" 100 [ 33, 2 ] "KC_W"
, cmb "combo_Z" 100 [ 33, 7 ] "KC_Z"
--, cmb "combo_V" 100 [ 33, 21 ] "KC_V"
--, cmb "combo_w" 100 [ 33, 22 ] "KC_W"
, cmb "combo_M" 100 [ 33, 23 ] "KC_M"
, cmb "combo_q" 100 [ 33, 10 ] "KC_Q"
, cmb "combo_J" 100 [ 33, 11 ] "KC_J"
, cmb "combo_P" 100 [ 33, 12 ] "KC_P"
, cmb "combo_K" 100 [ 33, 13 ] "KC_K"
, cmb "combo_F" 100 [ 33, 26 ] "KC_F"
-- , cmb "combo_U" 100 [ 33, 17 ] "KC_U"
--, cmb "combo_Z" 100 [ 33, 28 ] "KC_Z"
, cmb "combo_B" 100 [ 33, 16 ] "KC_B"
, cmb "combo_X" 100 [ 33, 18 ] "KC_X"
, cmb "combo_Y" 100 [ 33, 19 ] "KC_Y"
]

let alpha21 = types.HomeBlock::
{
  l1 = ["KC_NO",         "KC_NO",         "KC_V",          "KC_NO",           "KC_NO"]
, l2 = ["LT(_NUM,KC_C)", "KC_S",          "KC_R",          "LT(_NAV,KC_T)",  "KC_NO"]
, l3 = ["KC_NO",         "LCTL_T(KC_L)",  "LALT_T(KC_G)",  "LGUI_T(KC_D)",   "KC_NO"]

, r1 = ["KC_NO",  "KC_NO",         "KC_QUOT",           "KC_NO",           "KC_NO"]
, r2 = ["KC_NO",   "LT(_NAV,KC_N)", "KC_E",            "KC_A",           "LT(_NUM,KC_I)"]
, r3 = ["KC_NO",  "RGUI_T(KC_H)",  "RALT_T(KC_U)", "RCTL_T(KC_O)", "KC_NO"]

, thumb_l = [ "LSFT_T(KC_SPC)", "REPEAT"]
, thumb_r = [ "REPEAT",   "OSL(_ALPHA2)" ]
}

let alpha22 = types.HomeBlock::
{
  l1 = ["KC_Z",         "KC_NO",         "KC_W",          "KC_NO",          "KC_NO"]
, l2 = ["KC_Q",          "KC_J",          "KC_P",          "KC_K",          "KC_NO"]
, l3 = ["KC_NO",         "KC_V",          "KC_W",          "KC_M",   "KC_NO"]

, r1 = ["KC_NO",  "KC_NO",        "KC_Z",           "KC_NO",          "KC_NO"]
, r2 = ["KC_NO",  "KC_B",         "KC_COMM",          "KC_X",           "KC_Y"]
, r3 = ["KC_NO",  "KC_F",         "KC_COMM",          "KC_Z",          "KC_NO"]

, thumb_l = [ "LSFT_T(KC_SPC)", "REPEAT"]
, thumb_r = [ "REPEAT",   "KC_SPC" ]
}

let alpha1 = types.HomeBlock::
{
  l1 = ["KC_NO",         "KC_NO",         "KC_V",          "KC_NO",           "KC_NO"]
, l2 = ["LT(_NUM,KC_N)", "KC_R",          "KC_S",          "LT(_NAV,KC_T)",  "KC_NO"]
, l3 = ["KC_NO",         "LCTL_T(KC_X)",  "LALT_T(KC_C)",  "LGUI_T(KC_D)",   "KC_NO"]

, r1 = ["KC_NO",  "KC_NO",         "KC_QUOT",           "KC_NO",           "KC_NO"]
, r2 = ["KC_NO",   "LT(_NAV,KC_A)", "KC_E",            "KC_I",           "LT(_NUM,KC_O)"]
, r3 = ["KC_NO",  "RGUI_T(KC_H)",  "RALT_T(KC_U)", "RCTL_T(KC_K)", "KC_NO"]

, thumb_l = [ "LSFT_T(KC_SPC)", "REPEAT"]
, thumb_r = [ "REPEAT",   "OSL(_ALPHA2)" ]
}

let alpha2 = types.HomeBlock::
{
  l1 = ["KC_Z",         "KC_NO",         "KC_W",          "KC_NO",          "KC_NO"]
, l2 = ["KC_J",          "KC_F",          "KC_L",          "KC_P",          "KC_NO"]
, l3 = ["KC_NO",         "KC_B",          "KC_M",          "KC_G",   "KC_NO"]

, r1 = ["KC_NO",  "KC_NO",        "KC_Z",           "KC_NO",          "KC_NO"]
, r2 = ["KC_NO",  "KC_NO",        "KC_NO",          "KC_Y",           "KC_Q"]
, r3 = ["KC_NO",  "KC_NO",        "KC_COMM",        "KC_NO",          "KC_NO"]

, thumb_l = [ "LSFT_T(KC_SPC)", "REPEAT"]
, thumb_r = [ "REPEAT",   "TO(_ALPHA1)" ]
}

let num = types.HomeBlock::{
   l1 = [ "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO"]
 , r1 = [ "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO"]

 , l2 = [ "KC_NO", "LCTL_T(KC_DOT)", "LALT_T(KC_0)", "LGUI_T(KC_1)", "KC_NO"]
 , r2 = [ "KC_NO", "RGUI_T(KC_2)", "RALT_T(KC_3)", "RCTL_T(KC_4)", "KC_NO"]

  , l3 = [ "LT(_NUM,KC_MINS)", "LT(_SYM1,KC_PAST)", "LT(2,KC_5)", "LT(2,KC_6)", "KC_NO"]
  , r3 = [ "KC_NO", "LT(1,7)", "LT(3,KC_8)", "LT(5,KC_9)", "KC_EQL"]

  , thumb_l = [ "MEH_T(KC_SPC)", "KC_LSFT"]
  , thumb_r = [ "REPEAT",   "OSL(_ALPHA2)" ]
}

let nav = types.HomeBlock::
{
  l1 = ["KC_NO",      "SW_APP",        "BACK",          "FWD",       "KC_NO"]
, l2 = ["KC_NO",      "KC_ESC",        "KC_NO",         "KC_NO",     "KC_NO"]
, l3 = [ "KC_NO",     "KC_NO",         "KC_NO",         "KC_NO",     "KC_NO"]

, r1 = ["KC_NO",      "KC_BSPC",        "KC_UP",           "KC_DEL",          "KC_NO"]
, r2 = ["FWD",        "KC_LEFT",        "KC_DOWN",         "KC_RIGHT",         "BACK"]
, r3 = [ "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO"]

, thumb_l = [ "MEH_T(KC_SPC)", "KC_LSFT"]
, thumb_r = [ "REPEAT",   "OSL(_ALPHA2)" ]
}

let keymap =
      types.Keymap::{
      , name = "Jan Layout"
      , layout = "LAYOUT_split_3x5_2"
      , layers =
        [  { name = "_ALPHA1", keys = Ferris.mk_layer alpha21  }
        ,  { name = "_ALPHA2", keys = Ferris.mk_layer alpha22 }
        ,  { name = "_SYM2", keys = Ferris.mk_layer alpha1 }
        ,  { name = "_NAV", keys = Ferris.mk_layer nav }
        ,  { name = "_NUM", keys = Ferris.mk_layer num }
        ,  { name = "_FUN", keys = Ferris.mk_layer alpha1 }
        ,  { name = "_META", keys = Ferris.mk_layer alpha1 }
        ]
      , combos = combos
      }
in  keymap
