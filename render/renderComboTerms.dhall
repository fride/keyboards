-- from https://github.com/dhall-lang/dhall-lang/tree/master/Prelude
let List/index = https://prelude.dhall-lang.org/List/index
let List/map = https://prelude.dhall-lang.org/List/map
let List/concatMap = https://prelude.dhall-lang.org/List/concatMap
let Text/concatSep = https://prelude.dhall-lang.org/Text/concatSep
-- let Natural/show = https://prelude.dhall-lang.org/Natural/show
let Optional/toList = https://prelude.dhall-lang.org/Optional/toList

let types = ../types.dhall
let Layer = types.Layer
let Combo = types.Combo
let Keymap = types.Keymap
let renderCombo = ./renderCombo.dhall

let render-term : Combo.Type -> Text
 = \(combo: Combo.Type) ->
    let timeout : Text = Natural/show combo.timeout
    in
        ''
        case ${combo.name}:
           return COMBO_TERM + ${timeout};
        ''

in \(keymap: Keymap.Type) ->
    let terms : List Text = List/map Combo.Type Text render-term keymap.combos
    let terms-string = Text/concatSep "\n" terms
    in
        ''
        // generated
        uint16_t get_combo_term(uint16_t index, combo_t *combo) {
            switch (index) {
                ${terms-string}
                default:
                    return COMBO_TERM + 25;
            }
        }
        ''
