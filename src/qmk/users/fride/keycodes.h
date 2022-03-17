#pragma once

#include QMK_KEYBOARD_H

enum layers {
  _BASE,
  _QWERTY,
  _MOUSE,
  _SYM,
  _NUM,
  _FUN,
  _MODL,
  _NAV,
  _WNAV,
  _GAME
};

enum custom_keycodes {
    QUOTE = SAFE_RANGE,
    REPEAT,
    LEADER,

    CIRC,
    GRV,
    TILD,

    // Smart caps lock and layers that turn off on certain keys
    CAPSWORD,
    NUMWORD,
    SENTENCE,

    // Layer management
    CANCEL, // Cancel SYMWORD and NUMWORD
    CLEAR, // Clear all WORD, one-shots and reset to BASE

 // N-Shot Mods
    OS_LSFT,   // OS Mods
    OS_LCTL,   // OS Mods
    OS_LALT,   // OS Mods
    OS_LGUI,   // OS Mods
    TS_LCTL,   // Two-shot ctrl

    ARROW_L,
    ARROW_R,
    ANFZCH, // TODO remove this?
    SZ,
    QU,

    SP_MOD, // oneshot modifier and tap, nav layer on hold. See 'NAV_MOD'

    // implement a compose
    AE,
    UE,
    OE,
    GS  // german ß
};

#define xxxxxxx KC_NO

///extra letters

#define KC_ELIPS A(KC_SCLN)


#define JLAYOUT( \
  k15, k16, k17, k18, k19,                          k22, k23, k24, k25, k26,\
  k29, k30, k31, k32, k33,                          k36, k37, k38, k39, k40,\
  k43, k44, k45, k46, k47,                          k50, k51, k52, k53, k54,\
                 k60,   k61,                      k64,   k65\
) \
{ \
    { XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX }, \
    { XXXXXXX, k15, k16, k17, k18, k19, XXXXXXX }, \
    { XXXXXXX, k29, k30, k31, k32, k33, XXXXXXX }, \
    { XXXXXXX, k43, k44, k45, k46, k47, XXXXXXX }, \
    { XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, k60, k61, XXXXXXX }, \
    { XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX }, \
    { XXXXXXX, k26, k25, k24, k23, k22, XXXXXXX }, \
    { XXXXXXX, k40, k39, k38, k37, k36, XXXXXXX }, \
    { XXXXXXX, k54, k53, k52, k51, k50, XXXXXXX }, \
    { XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, k65, k64, XXXXXXX }  \
}

#define TO_NUMS OSL(_NUMS)
#define MODSR OSL(_MODSR)
#define MODSL OSL(_MODSL)
#define OSHIFT OSM(MOD_LSFT)
#define WNAV MO(_WNAV)
#define FUN OSL(_FUN)

#define ONE   RGUI_T(KC_1)
#define TWO   RGUI_T(KC_2)

#define THREE LALT_T(KC_3)
#define FOUR  RALT_T(KC_4)

#define FIVE  LCTL_T(KC_5)
#define SIX   RCTL_T(KC_6)

#define SEVEN LSFT_T(KC_7)
#define EIGHT RSFT_T(KC_8)

#define NINE  KC_9
#define ZERO  KC_0


// new
#define NAV_SPC LT(_NAV,KC_SPC)
#define SCLN_MOD LT(_MODL, KC_SCLN)
#define QUOT_MOD LT(_MODL, KC_QUOT)
#define WNAV MO(_WNAV)


#define NAV_MOD LT(_NAV, SP_MOD)

// combos with mods etc
#define ENT_MOD LT(_MODL, KC_ENT)
#define ESC_SYN LT(_SYMR, KC_ESC)
#define TAB_FUN LT(_FUN, KC_TAB)


#define TAB_L G(S(KC_LBRC))
#define TAB_R G(S(KC_RBRC))
// Home building blocks
// Defined so the combos don't break if I change minor things.
// Lates: https://notgate.github.io/layout/ - because thumbs .....
// https://github.com/CTGAP/ctgap-keyboard-layout
// https://www.keyboard-design.com/letterlayout.html?layout=beakl-mod-ctgap.en.ergodox
#define HM_1_01 KC_V
#define HM_1_02 KC_P
#define HM_1_03 KC_L
#define HM_1_04 KC_C
#define HM_1_05 KC_F

#define HM_1_06 KC_K
#define HM_1_07 KC_U
#define HM_1_08 KC_O
#define HM_1_09 KC_Y
#define HM_1_10 KC_J

#define HM_2_01 KC_R
#define HM_2_02 KC_N
#define HM_2_03 KC_T
#define HM_2_04 KC_S
#define HM_2_05 KC_D

#define HM_2_06 KC_Z
#define HM_2_07 KC_A
#define HM_2_08 KC_E
#define HM_2_09 KC_I
#define HM_2_10 KC_H

#define HM_3_01 KC_MINS
#define HM_3_02 KC_B
#define HM_3_03 KC_M
#define HM_3_04 KC_G
#define HM_3_05 KC_W

#define HM_3_06 KC_X
#define HM_3_07 KC_COMM
#define HM_3_08 KC_DOT
#define HM_3_09 KC_SLASH
#define HM_3_10 KC_UNDS

// thumbs - not perfect yet.
//#define THUMB_L1 KC_SPACE
#define THUMB_L1 NAV_SPC
#define THUMB_L2 NAV_MOD

//#define THUMB_R1 KC_SPC
#define THUMB_R1 KC_F19
#define THUMB_R2 MO(_SYM)



/*
#define HM_1_01 KC_V
#define HM_1_02 KC_P
#define HM_1_03 KC_L
#define HM_1_04 KC_C
#define HM_1_05 KC_F

#define HM_1_06 KC_K
#define HM_1_07 KC_U
#define HM_1_08 REPEAT
#define HM_1_09 KC_Y
#define HM_1_10 KC_J

#define HM_2_01 KC_R
#define HM_2_02 KC_N
#define HM_2_03 KC_T
#define HM_2_04 KC_S
#define HM_2_05 KC_D

#define HM_2_06 KC_Z
#define HM_2_07 KC_A
#define HM_2_08 KC_O
#define HM_2_09 KC_I
#define HM_2_10 KC_H

#define HM_3_01 KC_MINS
#define HM_3_02 KC_B
#define HM_3_03 KC_M
#define HM_3_04 KC_G
#define HM_3_05 KC_W

#define HM_3_06 KC_X
#define HM_3_07 KC_COMM
#define HM_3_08 KC_DOT
#define HM_3_09 KC_SLASH
#define HM_3_10 KC_UNDS
*/
