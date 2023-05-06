init:
    ./init.sh

ferris: init
    dhall text <<< './render/toKeymapSource.dhall ./keymaps/fride.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/keymap.c
    dhall text <<< './render/renderComboDefs.dhall ./keymaps/fride.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/combos.def
    dhall text <<< './render/renderComboTerms.dhall ./keymaps/fride.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/combos_terms.inc

    cd qmk_firmware && qmk flash -km fride -kb ferris/0_2

less: init
    dhall text <<< './render/toKeymapSource.dhall ./keymaps/less-keys.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/keymap.c
    dhall text <<< './render/renderComboDefs.dhall ./keymaps/less-keys.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/combos.def
    dhall text <<< './render/renderComboTerms.dhall ./keymaps/less-keys.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/combos_terms.inc

    cd qmk_firmware && qmk flash -km fride -kb ferris/0_2

redox: init
    dhall text <<< './render/toKeymapSource.dhall ./keymaps/redox.dhall' > qmk_firmware/keyboards/redox/keymaps/fride/keymap.c
    dhall text <<< './render/renderComboDefs.dhall ./keymaps/redox.dhall' > qmk_firmware/keyboards/redox/keymaps/fride/combos.def
    dhall text <<< './render/renderComboTerms.dhall ./keymaps/redox.dhall' > qmk_firmware/keyboards/redox/keymaps/fride/combos_terms.inc

    cd qmk_firmware && qmk flash -km fride -kb redox

planck: init
    dhall text <<< './render/toKeymapSource.dhall ./keymaps/fride-planck.dhall' > qmk_firmware/keyboards/planck/keymaps/fride/keymap.c
    dhall text <<< './render/renderComboDefs.dhall ./keymaps/fride-planck.dhall' > qmk_firmware/keyboards/planck/keymaps/fride/combos.def
    dhall text <<< './render/renderComboTerms.dhall ./keymaps/fride-planck.dhall' > qmk_firmware/keyboards/planck/keymaps/fride/combos_terms.inc

    cd qmk_firmware && qmk flash -km fride -kb planck/rev6

ferris_col: init
    dhall text <<< './render/toKeymapSource.dhall ./keymaps/ferris-colemak.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/keymap.c
    dhall text <<< './render/renderComboDefs.dhall ./keymaps/ferris-colemak.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/combos.def
    dhall text <<< './render/renderComboTerms.dhall ./keymaps/ferris-colemak.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/combos_terms.inc

    cd qmk_firmware && qmk flash -km fride -kb ferris/0_2

ferris_taipo: init
    dhall text <<< './render/toKeymapSource.dhall ./keymaps/ferris-taipo.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/keymap.c
    dhall text <<< './render/renderComboDefs.dhall ./keymaps/ferris-taipo.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/combos.def
    dhall text <<< './render/renderComboTerms.dhall ./keymaps/ferris-taipo.dhall' > qmk_firmware/keyboards/ferris/keymaps/fride/combos_terms.inc

    cd qmk_firmware && qmk flash -km fride -kb ferris/0_2
planck_taipo: init
    dhall text <<< './render/toKeymapSource.dhall ./keymaps/planck-taipo.dhall' > qmk_firmware/keyboards/planck/keymaps/fride/keymap.c
    dhall text <<< './render/renderComboDefs.dhall ./keymaps/planck-taipo.dhall' > qmk_firmware/keyboards/planck/keymaps/fride/combos.def
    dhall text <<< './render/renderComboTerms.dhall ./keymaps/planck-taipo.dhall' > qmk_firmware/keyboards/planck/keymaps/fride/combos_terms.inc

    cd qmk_firmware && qmk flash -km fride -kb ferris/0_2


#planck: init
#    dhall text <<< './render/toKeymapSource.dhall ./keymaps/planck-fride.dhall' > qmk_firmware/keyboards/planck/keymaps/fride/keymap.c
#    dhall text <<< './render/renderComboDefs.dhall ./keymaps/planck-fride.dhall' > qmk_firmware/keyboards/planck/keymaps/fride/combos.def
#    dhall text <<< './render/renderComboTerms.dhall ./keymaps/planck-fride.dhall' > qmk_firmware/keyboards/planck/keymaps/fride/combos_terms.inc
#
#    cd qmk_firmware && qmk flash -km fride -kb planck/rev6

clean:
    (cd qmk_firmware && make clean)
