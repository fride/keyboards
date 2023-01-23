#pragma once

#include QMK_KEYBOARD_H

enum layers {
    _ALPHA1,
    _ALPHA2,
    _ALPHA2_UPPER,
    _NAV,
    _NUM,
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
  SLASH,
  UNDER,
  DOUBLE_SHIFT
};


#define TO_ALPHA2       OSL(_ALPHA2)
#define TO_ALPHA2_UPPER OSL(_ALPHA2_UPPER)

#define NAV_SPC LT(_NAV, KC_SPC)

// Semantic Keys
#define FWD G(KC_RBRC)
#define BACK G(KC_LBRC)
#define TAB_L G(S(KC_LBRC))
#define TAB_R G(S(KC_RBRC))
#define SPACE_L A(G(KC_LEFT))
#define SPACE_R A(G(KC_RGHT))

#define TD_SCLN TD(SCL_END)

#define ___R___ LT(_SYM, KC_R)
#define ___C___ KC_C
#define ___I___ LT(_SYM, KC_I)
// nt ae
// md uo
#define ___T___ LSFT_T(KC_T)
#define ___D___ LGUI_T(KC_D)
#define ___M___ LALT_T(KC_M)
#define ___P___ KC_P
#define ___H___ KC_H
#define ___N___ KC_N

#define ___A___ LSFT_T(KC_A)
#define ___E___ KC_E
#define ___U___ RGUI_T(KC_U)
#define ___O___ RALT_T(KC_O)

#define __DOT__ KC_DOT
#define _COMM__ KC_COMM
#define ___F___ KC_F

#define ___S___ LT(_NUMBLOCK, KC_S)

#define ___L___ LT(_NUM, KC_L)
#define _SPACE_ LT(_NAV, KC_SPC)
#define L_THUMB LT(_NAV, SHIFT)
