#pragma once

#include QMK_KEYBOARD_H

enum layers {
    _BASE,
    _NAV,
    _ACCENT,
    _NUM,
    _NUMBLOCK,
    _SYM,
    _MODS,
    _FUN
};


// Tap dance codes
enum {
    SCL_END,
};
enum custom_keycodes {
  QUOTE = SAFE_RANGE,
  REPEAT,
  LEADER,
  LLOCK,
  CIRC,
  GRV,
  TILD,
  DELIM, // on the NUM word layer

  // Smart caps lock and layers that turn off on certain keys
  CAPSWORD,
  MINS,
  NUMWORD,
  SENTENCE,
  CAMEL,
  KEBAB,

  // Layer management
  CANCEL, // Cancel SYMWORD and NUMWORD
  CLEAR,  // Clear all WORD, one-shots and reset to BASE

  // N-Shot Mods
  OS_LSFT, // OS Mods
  OS_LCTL, // OS Mods
  OS_LALT, // OS Mods
  OS_LGUI, // OS Mods
  TS_LCTL, // Two-shot ctrl

  // used below in the thumb
  SHIFT,

  NAV_SHIFT,
  ARROW_L,
  ARROW_R,
  ANFZCH, // TODO remove this?
  SZ,
  QU,

  COPY_PASTE,
  SP_MOD, // oneshot modifier and tap, nav layer on hold. See 'NAV_MOD'
  SP_SFT,
  CPYPASTE,

  NUM_G,
  VIM_COLON,
  VIM_SAFE,

  SW_APP,
  SW_WIN,
  MOUSE_TGL,

  // special character keys with double tap and long press?



  // to override shifted stuff!
  //COMM,
  //DOT,

  SLASH,
  UNDER,
};

#define NAV_SPC LT(_NAV, KC_SPC)

// Semantic Keys
#define FWD G(KC_RBRC)
#define BACK G(KC_LBRC)
#define TAB_L G(S(KC_LBRC))
#define TAB_R G(S(KC_RBRC))
#define SPACE_L A(G(KC_LEFT))
#define SPACE_R A(G(KC_RGHT))

//// combos for layers.:
//#define CLN_SYM LT(_SYM, KC_COLON)
//#define QUOT_MOD LT(1, KC_QUOTE)
//#define SCLN_FUN LT(3, KC_SCLN)
//#define ESC_SYM LT(_SYM, KC_ESC)
//#define TAB_MODS LT(_MODS, KC_TAB)

#define TD_SCLN TD(SCL_END)

// without home row

//#define ___R___ KC_R
//#define ___C___ KC_C
//#define ___I___ KC_I
//
//#define ___N___ KC_N
//#define ___H___ KC_H
//#define ___P___ KC_P
//#define ___T___ KC_T
//
//
//#define ___A___ KC_A
//#define ___E___ KC_E
//#define __DOT__ KC_COMM
//#define _COMM__ KC_DOT
//
//
//#define ___F___ KC_F
//#define ___D___ KC_D
//#define ___U___ KC_U
//#define ___S___ KC_S
//#define ___M___ KC_M
//#define ___O___ KC_O
//#define ___L___ KC_L
//#define _SPACE_ LT(_NAV, KC_SPC)
//#define L_THUMB LT(_NAV, SHIFT)

// latest clean stuff with home row
// if hands-down-neu
#define ___R___ LT(_SYM, KC_R)
#define ___C___ KC_C
#define ___I___ LT(_SYM, KC_I)

#define ___N___ LGUI_T(KC_N)
#define ___H___ LALT_T(KC_H)
#define ___P___ LCTL_T(KC_P)
#define ___T___ LSFT_T(KC_T)


#define ___A___ LSFT_T(KC_A)
#define ___E___ RGUI_T(KC_E)
#define __DOT__ RCTL_T(KC_COMM)
#define _COMM__ RALT_T(KC_DOT)


#define ___F___ KC_F
#define ___D___ KC_D
#define ___U___ KC_U
#define ___S___ LT(_NUMBLOCK, KC_S)
#define ___M___ KC_M
#define ___O___ KC_O
#define ___L___ LT(_NUM, KC_L)
#define _SPACE_ LT(_NAV, KC_SPC)
#define L_THUMB LT(_NAV, SHIFT)


// latest clean stuff with home row
// if canary
//#define ___C___ KC_C
//#define ___R___ KC_R
//
//#define ___J___ KC_J
//#define ___V___ KC_V
//#define ___D___ KC_D
//
//// Home block
//#define ___S___ LGUI_T(KC_S)
//#define ___T___ LSFT_T(KC_T)
//#define ___Y___ LALT_T(KC_Y)
//#define ___P___ LCTL_T(KC_P)
//
//#define ___N___ RSFT_T(KC_N)
//#define ___E___ RGUI_T(KC_E)
//#define ___F___ RCTL_T(KC_F)
//#define ___O___ RALT_T(KC_O)
//
//#define ___U___ KC_U
//#define ___I___ KC_I
//#define ___H___ KC_H
//#define ___A___ KC_A
//
//#define L_THUMB LT(_NAV, KC_SPC)
//// TODO Deprectaed!?
//#define _SPACE_ LT(_NAV, SHIFT)
