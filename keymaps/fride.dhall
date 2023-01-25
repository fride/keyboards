let layers = ./layers.dhall
let types = ../types.dhall
let Ferris = ./ferris.dhall

let base = types.HomeBlock::{
           l1 = ["KC_X",       "KC_L",         "KC_D",            "KC_P",         "KC_V"]
          , r1 = ["KC_Z",       "KC_K",         "KC_O",            "KC_U",         "REPEAT"]
          , l2 = ["KC_N",       "KC_R",         "KC_T",            "LSFT_T(KC_S)", "KC_G"]
          , r2 = ["KC_Y",       "LSFT_T(KC_H)", "KC_E",            "LT(_NUM,KC_I)", "LT(_NUM,KC_A)"]
          , l3 = ["KC_Q",       "KC_J",         "LALT_T(KC_M)",    "LGUI_T(KC_C)", "KC_W"]
          , r3 = ["KC_B",       "LGUI_T(KC_F)", "LALT_T(KC_QUOT)", "KC_COMM",      "KC_DOT"]


  , thumb_l = ["KC_SPC", "MEH_T(KC_SPC)"]
  , thumb_r = ["REPEAT", "REPEAT"]
}

-- https://media.discordapp.net/attachments/962807598665576478/1031641279521619988/Taipo_Left_Right_v2.png?width=1114&height=645
let taipo = types.HomeBlock::{
          l1 = ["KC_R",  "KC_S",    "KC_N",    "KC_I",  "KC_NO"]
        , l2 = ["KC_A",  "KC_O",    "KC_T",    "KC_E", "KC_W"]
        , l3 = ["KC_LSFT", "KC_H",    "KC_L",    "KC_D", "KC_NO"]

        , r1 = ["KC_NO", "KC_I", "KC_N", "KC_S", "KC_R"]
        , r2 = ["KC_W", "KC_E",  "KC_T", "KC_O", "KC_A"]
        , r3 = ["KC_NO", "KC_D", "KC_L", "KC_H", "KC_RSFT"]

    , thumb_l = ["LSFT_T(KC_SPC)", "KC_BSPC"]
    , thumb_r = ["KC_BSPC", "LSFT_T(KC_SPC)"]
}

let keymap =
      types.Keymap::{
      , name = "Jan Layout"
      , layout = "LAYOUT_split_3x5_2"
      , layers =
        [  { name = "_ALPHA1", keys = Ferris.mk_layer base }
        ,  { name = "_ALPHA2", keys = Ferris.mk_layer taipo }
        ,  { name = "_NAV", keys = Ferris.mk_layer layers.navigation }
        ,  { name = "_NUM", keys = Ferris.mk_layer layers.number }
        ,  { name = "_FUN", keys = Ferris.mk_layer layers.function }
        ]
      , combos = ./combos.dhall
      }
in  keymap
