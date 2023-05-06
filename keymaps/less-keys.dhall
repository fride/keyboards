let types = ../types.dhall
let Ferris = ./ferris.dhall

{- Nitrogen (GalileoBlues) (2 likes)
     p m l c w  f d o u ,
     n t r s g  y h a e i
     z q j b v  x k ' ; .
-}
let alpha1 = types.HomeBlock::
{
  l1 = ["KC_P",          "KC_M",          "KC_L",          "KC_C",           "KC_W"]
, l2 = ["LT(_NUM,KC_N)", "KC_R",          "KC_T",          "LT(_NAV,KC_S)",  "KC_G"]
, l3 = ["KC_V",         "LCTL_T(KC_X)",  "LALT_T(KC_J)",  "LGUI_T(KC_B)",   "KC_NO"]

, r1 = ["KC_F",  "KC_D",          "KC_O",            "KC_U",           "KC_QUOT"]
, r2 = ["KC_Y",  "LT(_NAV,KC_H)", "KC_A",            "KC_E",           "LT(_NUM,KC_I)"]
, r3 = ["KC_NO",  "RGUI_T(KC_K)",  "RALT_T(KC_COMM)", "RCTL_T(KC_DOT)", "KC_NO"]

, thumb_l = [ "MEH_T(KC_SPC)", "OS_LSFT"]
, thumb_r = [ "REPEAT",   "OSL(_ALPHA2)" ]
}

let alpha2 = types.HomeBlock::
{
  l1 = ["KC_P",          "KC_M",          "KC_L",          "KC_W",           "KC_W"]
, l2 = ["LT(_NUM,KC_P)", "KC_P",          "KC_T",          "LT(_NAV,KC_G)",  "KC_G"]
, l3 = ["KC_NO",         "LCTL_T(KC_X)",  "LALT_T(KC_J)",  "LGUI_T(KC_V)",     "KC_V"]

, r1 = ["KC_NO",  "KC_F",          "A(KC_O)",            "A(KC_U)",           "KC_NO"]
, r2 = ["KC_NO",  "LT(_NAV,KC_Y)", "A(KC_A)",            "KC_E",           "LT(_NUM,KC_Z)"]
, r3 = ["KC_NO",  "RGUI_T(KC_P)",  "RALT_T(KC_QUOT)", "RCTL_T(KC_SLSH)", "KC_NO"]

, thumb_l = [ "MEH_T(KC_SPC)", "OS_LSFT"]
, thumb_r = [ "REPEAT",   "OSL(_ALPHA2)" ]
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
        [  { name = "_ALPHA1", keys = Ferris.mk_layer alpha1  }
        ,  { name = "_ALPHA2", keys = Ferris.mk_layer alpha2 }
        ,  { name = "_SYM2", keys = Ferris.mk_layer alpha1 }
        ,  { name = "_NAV", keys = Ferris.mk_layer nav }
        ,  { name = "_NUM", keys = Ferris.mk_layer num }
        ,  { name = "_FUN", keys = Ferris.mk_layer alpha1 }
        ,  { name = "_META", keys = Ferris.mk_layer alpha1 }
        ]
      , combos = ./combos.dhall
      }
in  keymap
