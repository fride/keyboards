init:
    ./init.sh

ferris: init
    dhall text <<< './render/toKeymapSource.dhall ./keymaps/ferris-fride.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/keymap.c
    dhall text <<< './render/renderComboDefs.dhall ./keymaps/ferris-fride.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/combos.def
    dhall text <<< './render/renderComboTerms.dhall ./keymaps/ferris-fride.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/combos_terms.inc

    cd qmk_firmware && qmk flash -km fride -kb ferris/0_2

redox: init
    dhall text <<< './render/toKeymapSource.dhall ./keymaps/redox-fride.dhall' > qmk_firmware/keyboards/redox/keymaps/fride/keymap.c
    dhall text <<< './render/renderComboDefs.dhall ./keymaps/redox-fride.dhall' > qmk_firmware/keyboards/redox/keymaps/fride/combos.def
    dhall text <<< './render/renderComboTerms.dhall ./keymaps/redox-fride.dhall' > qmk_firmware/keyboards/redox/keymaps/fride/combos_terms.inc

    cd qmk_firmware && qmk flash -km fride -kb redox

planck: init
    dhall text <<< './render/toKeymapSource.dhall ./keymaps/planck-fride.dhall' > qmk_firmware/keyboards/planck/keymaps/fride/keymap.c
    dhall text <<< './render/renderComboDefs.dhall ./keymaps/planck-fride.dhall' > qmk_firmware/keyboards/planck/keymaps/fride/combos.def
    dhall text <<< './render/renderComboTerms.dhall ./keymaps/planck-fride.dhall' > qmk_firmware/keyboards/planck/keymaps/fride/combos_terms.inc

    cd qmk_firmware && qmk flash -km fride -kb planck/rev6
