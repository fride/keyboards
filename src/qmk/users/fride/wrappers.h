#pragma once

#include "keycodes.h"

/*
   Wrappers approach is from users/drashna.
   By defining row sections in blocks like this,EWUI
   they are easily reusable in very different keyboard layouts.
*/

// base is https://github.com/CTGAP/ctgap-keyboard-layout
// Pk, I failed din learning it - back to qwerty!
#define _________________BASE_L1_________________  HM_1_01, HM_1_02, HM_1_03, HM_1_04, HM_1_05
#define _________________BASE_L2_________________  HM_2_01, HM_2_02, HM_2_03, HM_2_04, HM_2_05
#define _________________BASE_L3_________________  HM_3_01, HM_3_02, HM_3_03, HM_3_04, HM_3_05

#define _________________BASE_R1_________________  HM_1_06, HM_1_07, HM_1_08, HM_1_09, HM_1_10
#define _________________BASE_R2_________________  HM_2_06, HM_2_07, HM_2_08, HM_2_09, HM_2_10
#define _________________BASE_R3_________________  HM_3_06, HM_3_07, HM_3_08, HM_3_09, HM_3_10

#define _________________QWERTY_L1_________________  KC_Q,          KC_W,          KC_E,                           KC_R, KC_T
#define _________________QWERTY_L2_________________  LSFT_T(KC_A),  LT(_FUN,KC_S), LT(_MOUSE,KC_D), LT(_SYM,KC_F), KC_G
#define _________________QWERTY_L3_________________  KC_Z,          LCTL_T(KC_X),  LALT_T(KC_C),    LGUI_T(KC_V),  KC_B

#define _________________QWERTY_R1_________________  KC_Y, KC_U,          KC_I,          KC_O,            KC_P
#define _________________QWERTY_R2_________________  KC_H, LT(_SYM,KC_J), LT(_NAV,KC_K), LT(_NUM,KC_L),   KC_SCLN
#define _________________QWERTY_R3_________________  KC_B, RGUI_T(KC_N),  RALT_T(KC_M),  LCTL_T(KC_COMM), KC_DOT


#define _________________NAV_L1_________________  S(G(KC_GRV)), LGUI(KC_GRV), TAB_L,       TAB_R,      LCTL(KC_F4)
#define _________________NAV_L2_________________  OS_LSFT,      OS_LCTL,      OS_LALT,     OS_LGUI,    MEH(KC_NO)
#define _________________NAV_L3_________________  LGUI(KC_Z),   LGUI(KC_X),   LGUI(KC_C),  LGUI(KC_V), S(G(KC_Z))

#define _________________NAV_R1_________________ KC_PGUP, RGUI(KC_LBRC),   KC_UP,         RGUI(KC_RBRC),  KC_ESC
#define _________________NAV_R2_________________ KC_PGDN, KC_LEFT,         KC_DOWN,       KC_RGHT,        KC_ENT
#define _________________NAV_R3_________________ KC_TAB,  S(C(A(KC_M))),   S(G(KC_SLSH)), KC_TRNS,        KC_TRNS


// ----------------- Mod left

#define _________________MODL_L1_________________ KC_A,    KC_TRNS, KC_TRNS, KC_TRNS,  KC_TRNS
#define _________________MODL_L2_________________ OS_LSFT, OS_LCTL, OS_LALT, OS_LGUI,  KC_TRNS
#define _________________MODL_L3_________________ KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,  KC_TRNS

#define _________________MODL_R1_________________ KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,  KC_TRNS
#define _________________MODL_R2_________________ KC_TRNS, OS_LGUI, OS_LALT, OS_LCTL,  OS_LSFT
#define _________________MODL_R3_________________ KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,  KC_TRNS


/*
https://getreuer.info/posts/keyboards/symbol-layer/index.html
I started with the neo symbol layer and changed it for nice scala code typing
  @ _ [ ] ^      ! < > = &
  \ / ( ) `      ? ( ) - *
  # $ { } „”     + % " | ~
*/

#define _________________SYM_L1_________________ KC_AT,   KC_UNDS, KC_LBRC, KC_RBRC, KC_CIRC
#define _________________SYM_L2_________________ KC_BSLS, KC_SLSH, KC_LPRN, KC_RPRN, KC_GRV
#define _________________SYM_L3_________________ KC_HASH, KC_DLR,  KC_LCBR, KC_RCBR, ANFZCH

#define _________________SYM_R1_________________ KC_EXLM, KC_LT,   KC_GT,         KC_EQL,  KC_AMPR
#define _________________SYM_R2_________________ KC_QUES, KC_SCLN, KC_COLON,      KC_MINS, KC_ASTR
#define _________________SYM_R3_________________ KC_PLUS, KC_PERC, S(A(KC_LBRC)), KC_PIPE, KC_TILD

#define _________________NUM_L1_________________ KC_TRNS, KC_TRNS,  KC_TRNS, KC_TRNS, KC_TRNS
#define _________________NUM_L2_________________ EIGHT,   SIX,      FOUR,    TWO,     KC_TRNS
#define _________________NUM_L3_________________ KC_TRNS,  KC_TRNS, KC_TRNS, ZERO,    KC_TRNS

#define _________________NUM_R1_________________ KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,  KC_TRNS
#define _________________NUM_R2_________________ KC_TRNS, ONE,     THREE,   FIVE,     SEVEN
#define _________________NUM_R3_________________ KC_TRNS, NINE,    KC_TRNS, KC_TRNS,  KC_TRNS

#define _________________WNAV_L1_________________ KC_TRNS,       KC_TRNS,  KC_TRNS, KC_TRNS, KC_TRNS
#define _________________WNAV_L2_________________ C(A(G(KC_8))), C(A(G(KC_6))), C(A(G(KC_4))), C(A(G(KC_2))),     KC_TRNS
#define _________________WNAV_L3_________________ KC_TRNS,       KC_TRNS, KC_TRNS, C(A(G(KC_0))),    KC_TRNS

#define _________________WNAV_R1_________________ KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,  KC_TRNS
#define _________________WNAV_R2_________________ KC_TRNS, ONE,     THREE,   FIVE,     SEVEN
#define _________________WNAV_R3_________________ KC_TRNS, NINE,    KC_TRNS, KC_TRNS,  KC_TRNS

#define _________________FUN_L1_________________ RESET,   TO(_QWERTY), TO(_GAME),   KC_TRNS,    KC_TRNS
#define _________________FUN_L2_________________ KC_TRNS, KC_NO,       LCTL(KC_NO), MEH(KC_NO), KC_F20
#define _________________FUN_L3_________________ KC_TRNS, KC_TRNS,     KC_TRNS,     KC_TRNS,    KC_TRNS

#define _________________FUN_R1_________________ KC_F20, KC_F7, KC_F8, KC_F9, KC_F10
#define _________________FUN_R2_________________ KC_F19, KC_F4, KC_F5, KC_F6, KC_F11
#define _________________FUN_R3_________________ KC_F18, KC_F1, KC_F2, KC_F3, KC_F12

#define _________________MOUSE_L1_________________ KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS
#define _________________MOUSE_L2_________________ KC_TRNS, KC_BTN2, KC_NO,   KC_BTN1, KC_TRNS
#define _________________MOUSE_L3_________________ KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS

#define _________________MOUSE_R1_________________ KC_TRNS, KC_BTN1, KC_WH_U, KC_BTN2, KC_TRNS
#define _________________MOUSE_R2_________________ KC_TRNS, KC_MS_L, KC_MS_D, KC_MS_U, KC_MS_R
#define _________________MOUSE_R3_________________ KC_TRNS, KC_WH_L, KC_WH_D, KC_WH_R, KC_TRNS

#define ____THUMBS____  THUMB_L1, THUMB_L2,       THUMB_R1,  THUMB_R2
