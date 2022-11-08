
-- from https://github.com/dhall-lang/dhall-lang/tree/master/Prelude
let List/index = https://prelude.dhall-lang.org/List/index
let List/map = https://prelude.dhall-lang.org/List/map
let List/concatMap = https://prelude.dhall-lang.org/List/concatMap
let Text/concatSep = https://prelude.dhall-lang.org/Text/concatSep
let Optional/toList = https://prelude.dhall-lang.org/Optional/toList

let types = ../types.dhall
let Layer = types.Layer
let Combo = types.Combo
let Keymap = types.Keymap
let Binding = types.Binding

let lookup-keycode = \(layer: List Text) ->
               \(index: Natural) ->
                List/index index Text layer

-- I had some fun finding out the concatMap Optional Thingy ;)
let lookup-keycodes = \(layer: List Text) ->
                      \(index: List Natural) ->
                        List/concatMap Natural Text (
                            \(index: Natural) ->
                                Optional/toList Text (lookup-keycode layer index)
                        ) index

let combo_trigger = \(layer: List Text) ->
                    \(index: List Natural) ->
                    Text/concatSep "," (lookup-keycodes layer index)

let renderCombo = \(layer : List Text) ->
                  \(combo : Combo.Type) ->
                  let key-codes = combo_trigger layer combo.key-positions
                  in merge
                    { kp = \(binding: Text) -> "COMB( ${combo.name},  ${binding}, ${key-codes})"
                    , macro = \(binding: Text) -> "SUBS ${combo.name},  ${binding}, ${key-codes})"
                    } combo.binding


in renderCombo
