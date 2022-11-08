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
let renderCombo = ./renderCombo.dhall

let render : List Combo.Type -> List Text -> Text
 = \(combos: List Combo.Type) -> \(layer: List Text) ->
    let renderThisCombo : Combo.Type -> Text = renderCombo layer
    let rendered-combos : List Text = List/map Combo.Type Text renderThisCombo combos
    in Text/concatSep "\n" rendered-combos

in \(keymap: Keymap.Type) ->
    let base-layer : Optional Layer.Type = List/index 0 Layer.Type keymap.layers
    in
      merge
        { Some = \(layer: Layer.Type) -> render keymap.combos layer.keys
        , None = ""
        }
        base-layer
