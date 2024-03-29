-- let Prelude = ../Prelude.dhall
let types = ../types.dhall
let redox = ./redox.dhall

let base = types.Layer::{
   name="_BASE",
   keys = redox.mk_layer ./layers/hands-down-rhodium.dhall
}

let navigation = types.Layer::{
    name="_NAV",
    keys = redox.mk_layer ./layers/navigation.dhall
}

let num = types.Layer::{
    name="_NUM",
   keys = redox.mk_layer ./layers/numbers.dhall
}
let numblock = types.Layer::{
    name="_NUMBLOCK",
   keys = redox.mk_layer ./layers/numblock.dhall
}

let sym =types.Layer::{
    name="_SYM",
    keys = redox.mk_layer ./layers/symbol.dhall
}

let keymap =
      types.Keymap::{
      , name = "Jans Layout"
      , layout = "LAYOUT"
      , layers = [base
                          , navigation
                          , num
                          , numblock
                          , sym]
      , combos = ./redox/combos.dhall
      }

in  keymap
