let layers = ./layers.dhall
let types = ../types.dhall
let Ferris = ./ferris.dhall

let base = types.HomeBlock::{
-- qwert y because fuck it
          l1 = ["KC_COMM",  "KC_L",    "KC_G",    "KC_D",  "KC_T"]
        , l2 = ["KC_I",     "KC_S",   "KC_R",    "KC_T", "OS_LSFT"]
        , l3 = ["KC_1",     "KC_V",  "OS_LCTL",    "OS_LSFT", "KC_F18"]

        , r1 = ["KC_DOT", "KC_H", "KC_U", "KC_O", "KC_BSPC"]
        , r2 = ["OS_LSFT", "KC_N",  "KC_E", "KC_A", "KC_C"]
        , r3 = ["KC_F19", "OS_LSFT",  "OS_LCTL",    "KC_QUOT", "KC_0"]

    , thumb_l = ["MEH_T(KC_SPC)", "KC_BSPC"]
    , thumb_r = ["REPEAT", "OSL(_ALPHA2)"]
}

let alpha2 = types.HomeBlock::{
          l1 = ["KC_NO", "KC_V",    "KC_W",    "KC_M",  "KC_NO"]
        , l2 = ["KC_Q",  "KC_J",    "KC_P",    "KC_K", "OS_LSFT"]
        , l3 = ["KC_1",  "KC_W",    "KC_NO",    "KC_NO", "KC_NO"]

        , r1 = ["KC_NO",   "KC_F",  "KC_QUOT", "KC_Z", "KC_NO"]
        , r2 = ["OS_LSFT", "KC_B",  "KC_DOT", "KC_X", "KC_Y"]
        , r3 = ["KC_NO",  "KC_NO", "KC_NO", "S(KC_QUOT)", "KC_NO"]

    , thumb_l = ["OS_LSFT", "KC_BSPC"]
    , thumb_r = ["OSL(_ALPHA2_UPPER)", "TO_ALPHA2_UPPER"]
}

let alpha2_upper = types.HomeBlock::{
          l1 = ["KC_NO",    "S(KC_V)",  "S(KC_W)",    "S(KC_M)", "KC_NO"]
        , l2 = ["S(KC_Q)",  "S(KC_J)",  "S(KC_P)",    "S(KC_K)", "OS_LSFT"]
        , l3 = ["KC_NO",    "S(KC_W)",    "KC_NO",      "KC_NO",  "KC_NO"]

        , r1 = ["KC_NO", "S(KC_F)",  "S(KC_QUOT)", "S(KC_Z)", "KC_NO"]
        , r2 = ["OS_LSFT", "S(KC_B)",  "KC_COMM", "S(KC_X)", "S(KC_Y)"]
        , r3  = ["KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO"]

    , thumb_l = ["OS_LSFT", "KC_BSPC"]
    , thumb_r = ["KC_BSPC", "TO_ALPHA2_UPPER"]
}

let keymap =
      types.Keymap::{
      , name = "Jan Layout"
      , layout = "LAYOUT_split_3x5_2"
      , layers =
        [   { name = "_ALPHA1", keys = Ferris.mk_layer base }
          , { name = "_ALPHA2", keys = Ferris.mk_layer alpha2 }
          , { name = "_ALPHA2_UPPER", keys = Ferris.mk_layer alpha2_upper }
          , { name = "_NUM", keys = Ferris.mk_layer layers.number }
          , { name = "_FUN", keys = Ferris.mk_layer layers.function }

        ]
      , combos = ./combos.dhall
      }
in  keymap
