init:
    ./init.sh

ferris: init
    dhall text <<< './render/toKeymapSource.dhall ./keymaps/ferris-canary-thumb-t.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/keymap.c
    dhall text <<< './render/renderComboDefs.dhall ./keymaps/ferris-canary-thumb-t.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/combos.def
    dhall text <<< './render/renderComboTerms.dhall ./keymaps/ferris-canary-thumb-t.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/combos_terms.inc

    cd qmk_firmware && qmk flash -km fride -kb ferris/0_2
