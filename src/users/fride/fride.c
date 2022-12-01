
#include "fride.h"
//#include "g/keymap_combo.h"
#include "features/casemodes.h"
#include "features/layermodes.h"
#include "features/repeat.h"
#include "features/swapper.h"
#include "features/tap_hold.h"
#include "features/utils.h"
#include "features/layer_lock.h"

void tap16_repeatable(uint16_t keycode) {
  tap_code16(keycode);
  register_key_to_repeat(keycode);
}

void triple_tap(uint16_t keycode) {
  tap_code16(keycode);
  tap_code16(keycode);
  tap_code16(keycode);
}

uint8_t mod_state;
uint8_t oneshot_mod_state;
uint16_t last_keycode;
bool accent = false;

bool process_accents(uint16_t keycode, bool down, keyrecord_t *record){
        if (!accent) {
            return true;
        }
//        if (down) {
//            return true;
//        }
        accent = false;
        switch (keycode) {
            case LT(_NUM, KC_A): // This is a beast!
                SEND_STRING(SS_RALT("a"));
                return false;
            case KC_E:
                SEND_STRING(SS_RALT("e"));
                return false;
            case KC_I:
                tap16_repeatable(A(keycode));
                return false;
            case KC_O:
                tap16_repeatable(A(keycode));
                return false;
            case KC_U:
                tap16_repeatable(A(keycode));
                return false;
            case KC_S:
                tap16_repeatable(A(keycode));
                return false;
            default:
               return true;
        }
}

// Case modes
bool terminate_case_modes(uint16_t keycode, const keyrecord_t *record) {
  switch (keycode) {
  // Keycodes to ignore (don't disable caps word)
  case KC_A ... KC_Z:
  case KC_1 ... KC_0:
  case KC_UNDS:
  case KC_MINS:
  // case QU:
  case KC_BSPC:
    // If mod chording disable the mods
    if (record->event.pressed && (get_mods() != 0)) {
      return true;
    }
    break;
  default:
    if (record->event.pressed) {
      return true;
    }
    break;
  }
  return false;
}

// swap
bool sw_app_active = false;
bool sw_win_active = false;
bool wap_app_cancel(uint16_t keycode) {
  switch (keycode) {
  case KC_TAB:
  case KC_UP:
  case KC_RIGHT:
  case KC_DOWN:
  case KC_LEFT:
    return false;
  }
  return true;
}

#define MODS_SHIFT (MOD_BIT(KC_LSHIFT) | MOD_BIT(KC_RSHIFT))
uint8_t last_mod_state = 0;
uint16_t last_key_code;

bool _process_record_user(uint16_t keycode, keyrecord_t *record) {
  bool down = record->event.pressed;
  if (!process_layer_lock(keycode, record, LLOCK)) { return false; }
  if (!process_leader(keycode, record)) {
    return false;
  }
  if (!process_num_word(keycode, record)) {
    return false;
  }
  if (!process_case_modes(keycode, record)) {
    return false;
  }

  if (!process_tap_hold(keycode, record)) {
    // Extra register here to allow fast rolls without waiting for tap hold,
    // (which will also overwrite this).
    if (record->event.pressed) {
      register_key_to_repeat(keycode);
    }
    return false;
  }
  // this is like some leader key maybe?
  if (!process_accents(keycode, down, record)) {
    return false;
  }

  mod_state = get_mods();
  oneshot_mod_state = get_oneshot_mods();

  switch (keycode) {
    case TILD:
        if (record->event.pressed) {
            // nothing? Maybe later!?
        } else {
            accent = true;
        }
        return false;
  // layer toggle or repeat key :-)
//  case UREPEAT:
//    if (record->event.pressed && record->tap.count > 0) {
//        update_repeat_key(record);
//        return false;
//    }
//    break;
  // one time shift on press, tap toggle else
  // see https://precondition.github.io/home-row-mods for source!
// TODO write down what I did but I don't use it anymore!
//  case L_THUMB:
//    if (record->event.pressed && record->tap.count > 0) {
//          trigger_one_shot(OS_LSFT);
//          return false;
//      }
//    break;
  case QU:
      if (record->event.pressed) {
          if (mod_state & MOD_MASK_SHIFT || oneshot_mod_state & MOD_MASK_SHIFT) {
              send_string("Qu");
          } else {
              send_string("qu");
          }
     }
    break;
  // TODO for unknown reasons this does not work with one shot shift!. :)
  case SLASH:
    if (!record->event.pressed) {
      if (mod_state & MOD_MASK_SHIFT || oneshot_mod_state & MOD_MASK_SHIFT) {
          tap16_repeatable(KC_ASTR);
      } else {
         tap16_repeatable(KC_SLSH);
      }
      return true;
    }
    break;

  case MINS:
    if (record->event.pressed) {
        if (mod_state & MOD_MASK_SHIFT || oneshot_mod_state & MOD_MASK_SHIFT) {
            tap16_repeatable(KC_PLUS);
        } else {
            tap16_repeatable(KC_MINS);
        }
        return true;
    }

  case CAMEL:
    enable_xcase_with(OSM(MOD_LSFT));
    return true;
  case NUM_G:
    if (record->event.pressed) {
      tap_code16(S(KC_G));
    }
    return false;

  case KEBAB:
    enable_xcase_with(KC_MINS);
    return true;

  case MOUSE_TGL: {
    if (record->event.pressed) {
      // see https://docs.qmk.fm/#/feature_layers
      layer_invert(5);
      return false;
    }
    break;
  }
  case QUOTE:
    //tap_undead_key(true, KC_QUOT);
    // TODO I could think about dead and undead keys.
    if (record->event.pressed) {
        tap16_repeatable(KC_QUOT);
        return false;
    }
    break;

  case VIM_COLON: {
    if (record->event.pressed) {
      tap_code16(KC_ESC);
      tap_code16(KC_COLON);
      return false;
    }
    break;
  }
  // one handed mouse nonsens!
  case CPYPASTE:
    if (record->event.pressed) {
      tap_code16(G(KC_C));
    } else {
      tap_code16(G(KC_V));
    }
    return false;
    break;
  case LEADER:
    start_leading();
    return false;
  case SENTENCE:
    if (record->event.pressed) {
      tap_code16(KC_DOT);
      tap_code16(KC_SPACE);
      set_oneshot_mods(MOD_BIT(KC_RSHIFT));
    }
    return false;
  case REPEAT:
    update_repeat_key(record);
    return false;
  case CLEAR:
    clear_oneshot_mods();
    // layer_move(_BASE);
    return false;
  case CIRC:
    tap_undead_key(record->event.pressed, KC_CIRC);
    return false;
  case NUMWORD:
    process_num_word_activation(record);
    return false;
  case CAPSWORD:
    if (record->event.pressed) {
      enable_caps_word();
    }
    return false;
//  case CLN_SYM:
//    if (record->tap.count && record->event.pressed) {
//      tap16_repeatable(KC_COLON);
//      return false;
//    }
//    break;
  case GRV:
    tap_undead_key(true, KC_GRV);
    tap_undead_key(true, KC_GRV);
    tap_undead_key(true, KC_GRV);
    return false;
  case CANCEL:
    stop_leading();
    layer_off(_NAV);
    layer_off(_NUM);
    layer_off(_SYM);
    disable_caps_word();
    disable_num_word();
    layer_move(_BASE);
    return false;
  }
  return true;
}

bool process_record_user(uint16_t keycode, keyrecord_t *record) {

  update_swapper(&sw_app_active, KC_LGUI, KC_TAB, SW_APP, keycode, record,
                 wap_app_cancel);

  // adding a seconds breaks both!?
  update_swapper(&sw_win_active, KC_LGUI, KC_GRV, SW_WIN, keycode, record,
                 NULL);
  // process_nshot_state_pre(keycode, record);
  process_nshot_state(keycode, record);
  bool res = _process_record_user(keycode, record);
  // If `false` was returned, then we did something special and should register
  // that manually.
  // Otherwise register it here by default.
  // Skip Space to not interfere with NAV toggling.
  // TODO -> Do I need this!?
  if (res && record->event.pressed && keycode != NAV_SPC) {
    register_key_to_repeat(keycode);
    last_mod_state = get_mods();
  }
  //process_nshot_state_post(keycode, record);
  return res;
}

__attribute__((weak)) bool process_record_keymap(uint16_t keycode,
                                                 keyrecord_t *record) {
  return true;
}

// Tap hold
bool tap_hold(uint16_t keycode) {
  switch (keycode) {
  case KC_DQUO:
  case KC_EXLM:
  case KC_EQL:
  case KC_MINS:
  case KC_LBRC:
  case KC_LPRN:
  case KC_LCBR:
  case KC_DLR:
  case KC_LEFT:
  case KC_RIGHT:
  case KC_GRV:
//  case QU:
  case ARROW_R:
  case ARROW_L:
  case ANFZCH:
  case UNDER:
  case KC_LT:
  case KC_QUES:
  case KC_HASH:
  case COPY_PASTE:
  case NAV_SHIFT:
    return true;
  default:
    return false;
  }
}

void tap_hold_send_hold(uint16_t keycode) {
  disable_caps_word();
  mod_state = get_mods();
  switch (keycode) {
  case NAV_SHIFT:
  break;
  case UNDER:
    tap_code16(KC_EXLM);
    break;
  case KC_LT:
    tap_code16(KC_LT);
    tap_code16(KC_GT);
    tap_code16(KC_LEFT);
    break;
  case COPY_PASTE:
    SEND_STRING(SS_DOWN(X_LGUI) SS_TAP(X_V) SS_UP(X_LGUI));
    break;
  case ANFZCH:
    // A(S(KC_W))
    SEND_STRING(SS_DOWN(X_LALT) SS_DOWN(X_LSFT) SS_TAP(X_W) SS_UP(X_LSFT)
                    SS_UP(X_LALT));
    SEND_STRING(SS_DOWN(X_LALT) SS_DOWN(X_LSFT) SS_TAP(X_LBRC) SS_UP(X_LSFT)
                    SS_UP(X_LALT));
    tap_code16(KC_LEFT);
    break;
  case ARROW_R:
    send_string("=>");
    break;
  case ARROW_L:
    send_string("<=");
    break;
  case KC_LEFT:
    SEND_STRING(SS_DOWN(X_LGUI) SS_TAP(X_LEFT) SS_UP(X_LGUI));
    return;
  case KC_RIGHT:
    SEND_STRING(SS_DOWN(X_LGUI) SS_TAP(X_RIGHT) SS_UP(X_LGUI));
    return;
  case KC_DLR:
    tap_code16(KC_DLR);
    tap_code16(KC_LCBR);
    tap_code16(KC_RCBR);
    tap_code16(KC_LEFT);
    return;
  case KC_DQUO:
    triple_tap(KC_DQUO);
    return;
  case KC_GRV:
    tap_code16(KC_GRV);
    tap_code16(KC_GRV);
    tap_code16(KC_GRV);
    return;
  case KC_EQL:
    tap_code16(KC_EQL);
    tap_code16(KC_EQL);
    return;
  case KC_EXLM:
    tap_code16(KC_EXLM);
    tap_code16(KC_EQL);
    return;
  case KC_LBRC:
    double_parens_left(keycode, KC_RBRC);
    return;
  case KC_LPRN:
    double_parens_left(keycode, KC_RPRN);
    return;
  case KC_LCBR:
    double_parens_left(keycode, KC_RCBR);
    return;
   case KC_QUES:
       send_string("{:?}");
        return;
    case KC_HASH:
      send_string("{:#?}");
      return;
      }
}

void tap_hold_send_tap(uint16_t keycode) {
  mod_state = get_mods();
  oneshot_mod_state = get_oneshot_mods();
  switch (keycode) {
  case KC_LT:
    tap_code16(KC_LT);
    break;
    // TODO should not b here!?
  case UNDER:
    tap_code16(KC_UNDS);
    break;
  case KC_MINS:
    tap_code16(KC_MINS);
    break;
  case COPY_PASTE:
    SEND_STRING(SS_DOWN(X_LGUI) SS_TAP(X_C) SS_UP(X_LGUI));
    break;
  case ANFZCH:
    // A(S(KC_W))
    SEND_STRING(SS_DOWN(X_LALT) SS_DOWN(X_LSFT) SS_TAP(X_LBRC) SS_UP(X_LSFT)
                    SS_UP(X_LALT));
    break;
  case ARROW_R:
    send_string("->");
    break;
  case ARROW_L:
    send_string("<-");
    break;
  case KC_RABK:
    send_string(">");
    break;
  case GRV:
    tap_undead_key(true, KC_GRV);
    break;
  default:
    tap16_repeatable(keycode);
  }
}

void matrix_scan_user(void) { tap_hold_matrix_scan(); }

// https://github.com/qmk/qmk_firmware/blob/master/docs/feature_combo.md
bool get_combo_must_tap(uint16_t index, combo_t *combo) { return false; }

///// leader
// https://github.com/andrewjrae/kyria-keymap#userspace-leader-sequences

void *leader_case_func(uint16_t keycode) {
  switch (keycode) {
  case KC_N: // Normal caps word.
    enable_caps_word();
    break;
  case KC_C: // Camel
    enable_xcase_with(OSM(MOD_LSFT));
    break;
  case KC_J: // Java Camel ;)
    set_oneshot_mods(MOD_LSFT);
    enable_xcase_with(OSM(MOD_LSFT));
    break;
  case KC_S: // Snake
    enable_xcase_with(KC_UNDS);
    break;
  case KC_K: // Kebab
    enable_xcase_with(KC_MINS);
    break;
  case KC_P: // Path
    enable_xcase_with(KC_SLASH);
    break;
  default:
    break;
  }
  return NULL; // this function is always an endpoint
}
void *leader_toggle_func(uint16_t keycode) {
  switch (keycode) {
  case KC_N: // Normal caps word.
    layer_on(_NUM);
    break;
  case KC_M: // Normal caps word.
    // layer_on(_MOUSE);
    break;
  case KC_F: // Normal caps word.
    layer_on(_FUN);
    break;
  case KC_V: // qwerty.
    // layer_move(_QWERTY);
    break;
  default:
    break;
  }
  return NULL; // this function is always an endpoint
}
void *leader_quote_func(uint16_t keycode) {
  switch (keycode) {
  case KC_A: // Normal caps word.
    SEND_STRING(SS_DOWN(X_LALT) SS_TAP(X_U) SS_UP(X_LALT) SS_TAP(X_A));
    break;
  default:
    break;
  }
  return NULL; // this function is always an endpoint
}
void *leader_windows_func(uint16_t keycode) {
  switch (keycode) {
  case KC_G: // Normal caps word.
    SEND_STRING(SS_DOWN(X_LALT) SS_TAP(X_U) SS_UP(X_LALT) SS_TAP(X_A));
    break;
  default:
    break;
  }
  return NULL; // this function is always an endpoint
}

void *leader_start_func(uint16_t keycode) {
  switch (keycode) {
  case KC_W:
    return leader_windows_func; // function that will choose new base layers
  case KC_C:
    return leader_case_func; // function that will choose new base layers
  case KC_QUOTE:
    return leader_quote_func; // function that will choose new base layers
  case KC_T:
    return leader_toggle_func; // function that will choose new base layers
  // case KC_O:
  //     return leader_open_func; // function that opens common applications
  // case KC_T:
  //     return leader_toggles_func; // function that toggles keyboard settings
  case KC_R:
    reset_keyboard(); // here LDR r will reset the keyboard
    return NULL;      // signal that we're done
  default:
    return NULL;
  }
}
