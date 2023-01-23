let layers = ./layers.dhall
let types = ../types.dhall
let Ferris = ./ferris.dhall

let base = types.HomeBlock::{
          l1 = ["KC_R",  "KC_S",    "KC_N",    "KC_I",  "KC_NO"]
        , l2 = ["KC_A",  "KC_O",    "KC_T",    "KC_E", "KC_W"]
        , l3 = ["KC_NO", "KC_H", "KC_L",    "KC_D", "KC_NO"]

        , r1 = ["KC_NO", "KC_I", "KC_N", "KC_S", "KC_R"]
        , r2 = ["KC_W", "KC_E",  "KC_T", "KC_O", "KC_A"]
        , r3 = ["KC_NO", "KC_D", "KC_L", "KC_H", "KC_NO"]

    , thumb_l = ["KC_SPC", "KC_BSPC"]
    , thumb_r = ["KC_BSPC", "KC_SPC"]
}

let keymap =
      types.Keymap::{
      , name = "Colmak Layout"
      , layout = "LAYOUT_split_3x5_2"
      , layers =
        [ { name = "_ALPHA1", keys = Ferris.mk_layer base }
          , { name = "_NAV", keys = Ferris.mk_layer layers.navigation }
                , { name = "_NUM", keys = Ferris.mk_layer layers.number }
                , { name = "_FUN", keys = Ferris.mk_layer layers.function }
        ]
      , combos = ./combos-taipo.dhall
      }
in  keymap
