let layers = ./layers.dhall
let types = ../types.dhall
let Planck = ./planck.dhall

let base = types.HomeBlock::{
      l1 = ["KC_R",  "KC_S",    "KC_N",    "KC_I",  "KC_NO"]
    , l2 = ["KC_A",  "KC_O",    "KC_T",    "KC_E", "KC_W"]
    , l3 = ["KC_NO", "KC_B", "KC_L",    "KC_M", "KC_NO"]

    , r1 = ["KC_NO", "KC_I", "KC_N", "KC_S", "KC_R"]
    , r2 = ["KC_W", "KC_E",  "KC_T", "KC_O", "KC_A"]
    , r3 = ["KC_NO", "KC_M", "KC_L", "KC_B", "KC_NO"]

    , thumb_l = ["NAV_SPC", "KC_BSPC"]
    , thumb_r = ["KC_BSPC", "NAV_SPC"]
}

let keymap =
      types.Keymap::{
      , name = "Colmak Layout"
      , layout = "LAYOUT_split_3x5_2"
      , layers =
        [ { name = "_BASE", keys = Planck.mk_layer base }
          , { name = "_NAV", keys = Planck.mk_layer layers.navigation }
                , { name = "_NUM", keys = Planck.mk_layer layers.number }
                , { name = "_FUN", keys = Planck.mk_layer layers.function }
        ]
      , combos = ./combos-taipo.dhall
      }
in  keymap
