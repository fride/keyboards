let layers = ./layers.dhall
let types = ../types.dhall
let Ferris = ./ferris.dhall

let keymap =
      types.Keymap::{
      , name = "Colmak Layout"
      , layout = "LAYOUT_split_3x5_2"
      , layers =
        [ { name = "_BASE", keys = Ferris.mk_layer layers.base }
        , { name = "_NAV", keys = Ferris.mk_layer layers.navigation }
        , { name = "_NUM", keys = Ferris.mk_layer layers.number }
        , { name = "_FUN", keys = Ferris.mk_layer layers.function }
        ]
      , combos = ./combos.dhall
      }
in  keymap
