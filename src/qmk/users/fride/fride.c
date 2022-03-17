
#include "fride.h"
#include "casemodes.h"
#include "layermodes.h"
#include "tapcodes.h"
#include "repeat.h"
#include "swapper.h"
#include "tap_hold.h"
#include "g/keymap_combo.h"
#include "features/utils.h"

const custom_shift_key_t custom_shift_keys[] = {
  {KC_MINS, KC_PIPE},
};
uint8_t NUM_CUSTOM_SHIFT_KEYS =
    sizeof(custom_shift_keys) / sizeof(custom_shift_key_t);



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


#define MODS_SHIFT  (MOD_BIT(KC_LSHIFT)|MOD_BIT(KC_RSHIFT))
uint8_t last_mod_state=0;
uint16_t last_key_code;

bool _process_record_user(uint16_t keycode, keyrecord_t *record) {
    if (!process_custom_shift_keys(keycode, record)) { return false; }
    if (!process_leader(keycode, record)) {
        return false;
    }
    if (!process_num_word(keycode, record)) {
        return false;
    }
    if (!process_case_modes(keycode, record)) {
        return false;
    }

    process_nshot_state(keycode, record);

    if (!process_tap_hold(keycode, record)) {
        // Extra register here to allow fast rolls without waiting for tap hold,
        // (which will also overwrite this).
        if (record->event.pressed) {
            register_key_to_repeat(keycode);
        }
        return false;
    }
    mod_state = get_mods();
    oneshot_mod_state = get_oneshot_mods();

    switch (keycode) {
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
        case TILD:
            tap_undead_key(record->event.pressed, KC_TILD);
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
        case SCLN_MOD:
            if (record->tap.count && record->event.pressed) {
                tap16_repeatable(KC_SCLN);
                return false;
            }
            break;
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

    bool res = _process_record_user(keycode, record);
       // If `false` was returned, then we did something special and should register that manually.
    // Otherwise register it here by default.
    // Skip Space to not interfere with NAV toggling.
    if (res && record->event.pressed && keycode != NAV_SPC) {
        register_key_to_repeat(keycode);
        last_mod_state = get_mods();
    }
    return res;
}

__attribute__((weak)) bool process_record_keymap(uint16_t keycode, keyrecord_t *record) {
    return true;
}

uint16_t get_combo_term(uint16_t index, combo_t *combo) {
    switch (index) {
        // Home-row and other tight combos
        case tab_fun:
        case escape_sym:
        case quot:
        case dquot:
        case colon:
        case scln_mod:
        case enter_mod:
            return COMBO_TERM;
        // Vertical combos, very relaxed
        case fat_arr_l:
        case thin_arr_l:
        case fat_arr_r:
        case thin_arr_r:
        case pipe_to:
        // case sp:
        case gt_eq:

            return COMBO_TERM + 55;
        // Regular combos, slightly relaxed
        default:
            return COMBO_TERM + 25;
   }
}



// Tap hold
bool tap_hold(uint16_t keycode) {
    switch (keycode) {
        case KC_DQUO:
        case KC_EXLM:
        case KC_EQL:
        case KC_LBRC:
        case KC_LPRN:
        case KC_LCBR:
        case KC_DLR:
        case KC_LEFT:
        case KC_RIGHT:
        case KC_TILD:
        case KC_GRV:
        case QU:
        case ARROW_R:
        case ARROW_L:
        case KC_DOT:
        case ANFZCH:
            return true;
        default:
            return false;
    }
}

void tap_hold_send_hold(uint16_t keycode) {
    disable_caps_word();
    switch (keycode) {
        case ANFZCH:
            // A(S(KC_W))
            SEND_STRING(SS_DOWN(X_LALT) SS_DOWN(X_LSFT)  SS_TAP(X_W) SS_UP(X_LSFT) SS_UP(X_LALT));
            SEND_STRING(SS_DOWN(X_LALT) SS_DOWN(X_LSFT)  SS_TAP(X_LBRC) SS_UP(X_LSFT) SS_UP(X_LALT));
            tap_code16(KC_LEFT);
            break;
        case ARROW_R:
            send_string("=>");
            break;
        case ARROW_L:
            send_string("<=");
            break;
        case KC_DOT:
            break;
        case QU:
            send_string("Qu");
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
        case KC_MINS:
            tap_code16(KC_TILD);
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
        case KC_TILD:
            set_oneshot_mods(MOD_BIT(KC_RGUI));
            tap_code16(KC_TILD);
            return;
    }
}


void tap_hold_send_tap(uint16_t keycode) {
    switch (keycode) {
        case ANFZCH:
            // A(S(KC_W))
            SEND_STRING(SS_DOWN(X_LALT) SS_DOWN(X_LSFT)  SS_TAP(X_LBRC) SS_UP(X_LSFT) SS_UP(X_LALT));
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
        case KC_LABK:
            send_string("<");
            break;
        case GRV:
            tap_undead_key(true, KC_GRV);
            break;
        case QU:
            send_string("qu");
            break;
        default:
            tap16_repeatable(keycode);
    }
}

void matrix_scan_user(void) {
    tap_hold_matrix_scan();
}


// https://github.com/qmk/qmk_firmware/blob/master/docs/feature_combo.md
bool get_combo_must_tap(uint16_t index, combo_t *combo) {
   return false;
}



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
            layer_on(_MOUSE);
            break;
        case KC_F: // Normal caps word.
            layer_on(_FUN);
            break;
        case KC_V: // qwerty.
            layer_move(_QWERTY);
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

void *leader_start_func(uint16_t keycode) {
    switch (keycode) {
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
            return NULL; // signal that we're done
        default:
            return NULL;
    }
}

