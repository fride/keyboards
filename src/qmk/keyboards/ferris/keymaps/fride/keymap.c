#include QMK_KEYBOARD_H
#include "fride.h"
#include "wrappers.h"
#include "layout.h"
// fails to compile!?

// https://github.com/precondition/dactyl-manuform-keymap
// https://github.com/rafaelromao/qmk_firmware/blob/rafaelromao/users/rafaelromao/readme.md
// https://github.com/reinier/dotfiles
/// https://github.com/possumvibes/qmk_firmware/tree/possumdev/users/possumvibes

/*
v g m f "[   '] k/q u j/z #@
r s t h p   y i e o a
x c l d b   -+ w / ,; .:
        n   ␣
 */
// https://sites.google.com/alanreiser.com/handsdown/home/hands-down-alt#h.2hy3t4dbrmxw
// https://github.com/qmk/qmk_firmware/tree/master/keyboards/ferris/keymaps/default
const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {

    [_BASE] = LAYOUT_ferris_wrapper(
        _________________BASE_L1_________________, _________________BASE_R1_________________,
        _________________BASE_L2_________________, _________________BASE_R2_________________,
        _________________BASE_L3_________________, _________________BASE_R3_________________,
                            ____THUMBS____
    ),

    [_QWERTY] = LAYOUT_ferris_wrapper(
        _________________QWERTY_L1_________________, _________________QWERTY_R1_________________,
        _________________QWERTY_L2_________________, _________________QWERTY_R2_________________,
        _________________QWERTY_L3_________________, _________________QWERTY_R3_________________,
                            ____THUMBS____
    ),


	[_NAV] = LAYOUT_ferris_wrapper(
        _________________NAV_L1_________________, _________________NAV_R1_________________,
        _________________NAV_L2_________________, _________________NAV_R2_________________,
        _________________NAV_L3_________________, _________________NAV_R3_________________,
                 THUMB_L1, THUMB_L2,       WNAV,  KC_SPC
    ),
	[_WNAV] = LAYOUT_ferris_wrapper(
        _________________WNAV_L1_________________, _________________WNAV_R1_________________,
        _________________WNAV_L2_________________, _________________WNAV_R2_________________,
        _________________WNAV_L3_________________, _________________WNAV_R3_________________,
                 THUMB_L1, THUMB_L2,       WNAV,  KC_SPC
    ),

    [_MODL] = LAYOUT_ferris_wrapper(
        _________________MODL_L1_________________, _________________MODL_R1_________________,
        _________________MODL_L2_________________, _________________MODL_R2_________________,
        _________________MODL_L3_________________, _________________MODL_R3_________________,
                ____THUMBS____
    ),


 	[_SYM] = LAYOUT_ferris_wrapper(
        _________________SYM_L1_________________, _________________SYM_R1_________________,
        _________________SYM_L2_________________, _________________SYM_R2_________________,
        _________________SYM_L3_________________, _________________SYM_R3_________________,
                ____THUMBS____
    ),
	[_NUM] = LAYOUT_ferris_wrapper(
        _________________NUM_L1_________________, _________________NUM_R1_________________,
        _________________NUM_L2_________________, _________________NUM_R2_________________,
        _________________NUM_L3_________________, _________________NUM_R3_________________,
                KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS
    ),
	[_FUN] = LAYOUT_ferris_wrapper(
        _________________FUN_L1_________________, _________________FUN_R1_________________,
        _________________FUN_L2_________________, _________________FUN_R2_________________,
        _________________FUN_L3_________________, _________________FUN_R3_________________,
                KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS
    ),

	[_MOUSE] = LAYOUT_ferris_wrapper(
        _________________MOUSE_L1_________________, _________________MOUSE_R1_________________,
        _________________MOUSE_L2_________________, _________________MOUSE_R2_________________,
        _________________MOUSE_L3_________________, _________________MOUSE_R3_________________,
                LGUI(KC_LBRC), KC_TRNS, KC_TRNS, RGUI(KC_RBRC)
    ),

};
