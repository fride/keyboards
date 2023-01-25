/* THIS FILE WAS GENERATED!
 *
 * This file was generated. You may or may not want to
 * edit it directly.
 */

#include QMK_KEYBOARD_H
#include "keycodes.h"
#include "g/keymap_combo.h"

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
       [_ALPHA1] = LAYOUT_split_3x5_2(KC_R,KC_S,KC_N,KC_I,KC_NO,KC_NO,KC_I,KC_N,KC_S,KC_R,KC_A,KC_O,KC_T,KC_E,KC_W,KC_W,KC_E,KC_T,KC_O,KC_A,KC_LSFT,KC_H,KC_L,KC_D,KC_NO,KC_NO,KC_D,KC_L,KC_H,KC_RSFT,LSFT_T(KC_SPC),KC_BSPC,KC_BSPC,LSFT_T(KC_SPC)),
   [_NAV] = LAYOUT_split_3x5_2(SW_APP,G(KC_GRV),TAB_L,TAB_R,KC_NO,KC_NO,KC_NO,KC_UP,KC_NO,KC_NO,OS_LSFT,OS_LCTL,OS_LALT,OS_LGUI,OSM(MOD_MEH),BACK,KC_LEFT,KC_DOWN,KC_RGHT,FWD,G(KC_Z),G(KC_X),G(KC_C),LLOCK,G(KC_V),KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO),
   [_NUM] = LAYOUT_split_3x5_2(KC_LBRC,KC_7,KC_8,KC_9,KC_RBRC,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_SCLN,KC_4,KC_5,KC_6,KC_EQL,OSM(MOD_MEH),OSM(MOD_RGUI),OSM(MOD_RALT),OSM(MOD_RCTL),OSM(MOD_RSFT),KC_GRV,KC_1,KC_2,KC_3,KC_MINS,KC_NO,KC_NO,KC_NO,KC_BSLS,KC_SLSH,KC_0,OSM(MOD_LSFT),OSM(MOD_LCTL),OSL(_FUN)),
   [_FUN] = LAYOUT_split_3x5_2(KC_NO,KC_F7,KC_F8,KC_F9,KC_F10,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_F4,KC_F5,KC_F6,KC_F11,OSM(MOD_MEH),OSM(MOD_RGUI),OSM(MOD_RALT),OSM(MOD_RCTL),OSM(MOD_RSFT),KC_NO,KC_F1,KC_F2,KC_F3,KC_F12,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,LT(1,KC_SPC),OSM(MOD_LSFT),OSM(MOD_LCTL),OSL(_FUN))
};
#include "combos_terms.inc"
