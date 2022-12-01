-- let Prelude = ../Prelude.dhall
let types = ../types.dhall
let ferris = ./ferris.dhall

let base = types.Layer::{
   name="_BASE",
   -- keys = ferris.mk_layer ./layers/whorf.dhall
   keys = ferris.mk_layer ./layers/hands-down-platinium.dhall
}

let numblock = types.Layer::{
    name="_NUMBLOCK",
   keys = ferris.mk_layer ./layers/numblock.dhall
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
let accent = types.Layer::{
    name="_ACCENT",
    keys = ferris.mk_layer ./layers/accent.dhall
}

let keymap =
      types.Keymap::{
      , name = "BOO with I on the Thumb"
      , layout = "LAYOUT_split_3x5_2"
      , layers =
        [ base
        , navigation
        , raise
        , numblock
        , lower
        , accent
        ]
      , combos = ./combos.dhall
      }

in  keymap
