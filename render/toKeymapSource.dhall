{-
   See those nice articles.
   - https://github.com/dhall-lang/dhall-haskell/tree/master/dhall-text
   - https://stackoverflow.com/questions/57701120/how-to-emulate-python-join-function-in-dhall
-}
let types = ../types.dhall
let Layer = types.Layer
let Keymap = types.Keymap

let Text/concatSep = https://prelude.dhall-lang.org/Text/concatSep
let List/map = https://prelude.dhall-lang.org/List/map


let layer_to_text = \(layer : Layer.Type) ->
    let key_string = Text/concatSep "," layer.keys
    in
        "   [${layer.name}] = LAYOUT_split_3x5_2(${key_string})"

let layers_to_text = \(layers: List Layer.Type) ->
    let layer_text = List/map Layer.Type Text layer_to_text layers
    let layer_code = Text/concatSep ",\n" layer_text
    in
        ''
        /* THIS FILE WAS GENERATED!
         *
         * This file was generated. You may or may not want to
         * edit it directly.
         */

        #include QMK_KEYBOARD_H
        #include "keycodes.h"
        #include "g/keymap_combo.h"


        const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
            ${layer_code}
        };
        #include "combos_terms.inc"
        ''

in \(keymap: Keymap.Type) -> layers_to_text keymap.layers
