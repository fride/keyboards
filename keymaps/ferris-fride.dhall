-- let Prelude = ../Prelude.dhall
let types = ../types.dhall
let ferris = ./ferris.dhall

let base = types.Layer::{
   name="_BASE",
   keys = ferris.mk_layer ./layers/hands-down-platinium.dhall
}

let navigation = types.Layer::{
    name="_NAV",
   keys = ferris.mk_layer ./layers/navigation.dhall
}
let raise = types.Layer::{
    name="_NUM",
   keys = ferris.mk_layer ./layers/numbers.dhall
}
let lower = types.Layer::{
    name="_SYM",
    keys = ferris.mk_layer ./layers/symbol.dhall
}

let keymap =
      types.Keymap::{
      , name = "Jans Canary Layout with the T on the thumb"
      , layout = "LAYOUT_split_3x5_2"
      , layers =
        [ base
        , navigation
        , raise
        , lower
        ]
      , combos = ./combos.dhall
      }

in  keymap
