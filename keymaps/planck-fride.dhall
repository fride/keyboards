-- let Prelude = ../Prelude.dhall
let types = ../types.dhall
let planck = ./planck.dhall
let base = types.Layer::{
   name="_BASE",
   keys = planck.mk_layer ./layers/hands-down-platinium.dhall
}

let navigation = types.Layer::{
    name="_NAV",
   keys = planck.mk_layer ./layers/navigation.dhall
}
let symbol = types.Layer::{
    name="_SYM",
   keys = planck.mk_layer ./layers/symbols.dhall
}
let numbers = types.Layer::{
    name="_NUM",
   keys = planck.mk_layer ./layers/numbers.dhall
}

let keymap =
      types.Keymap::{
      , name = "Jans Canary Layout with the T on the thumb"
      , layout = "LAYOUT"
      , layers = [base, navigation,numbers, symbol]
      , combos = ./redox/combos.dhall
      }

in  keymap
