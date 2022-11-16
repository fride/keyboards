-- let Prelude = ../Prelude.dhall
let types = ../types.dhall

let keymap =
      types.Keymap::{
      , name = "Jans Canary Layout with the T on the thumb"
      , layers =
        [ ../layers/hd-neu-platinium.dhall
        , ../layers/navigation.dhall
        , ../layers/symbols.dhall
        , ../layers/num-row.dhall
        , ../layers/numblock.dhall
        , ../layers/function.dhall
        , ../layers/mods.dhall
        ]
      , combos = ./combos.dhall
      }

in  keymap
