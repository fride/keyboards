-- let Prelude = ../Prelude.dhall
let types = ../types.dhall

let symbols =
      types.Layer::{ name = "_SYM", keys = ../layers/neo2-symbols.dhall }

let keymap =
      types.Keymap::{
      , name = "Jans Canary Layout with the T on the thumb"
      , layers =
        [ ../layers/hd-neu-platinium.dhall
        , ../layers/navigation.dhall
        , symbols
        , ../layers/num-row.dhall
        , ../layers/numblock.dhall
        , ../layers/mods.dhall
        ]
      , combos = ./combos.dhall
      }

in  keymap
