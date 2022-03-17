// sdothum - 2016 (c) wtfpl
#include QMK_KEYBOARD_H

#include "config.h"
#include "tapdance.h"
#include "tapcodes.h"
#include "keycodes.h"

//  uint8_t shifted = mod_state & MOD_MASK_SHIFT;
// .......................................................... Tap Dance Keycodes

qk_tap_dance_action_t tap_dance_actions[] = {
 [_DOT]      = ACTION_TAP_DANCE_FN_ADVANCED_TIME(NULL, dot, dot_reset, TAPPING_TERM),
 [_TD_NEO4]   = ACTION_TAP_DANCE_FN_ADVANCED_TIME(NULL, neo4, neo4_reset, TAPPING_TERM),

 [_COLN]      = ACTION_TAP_DANCE_FN_ADVANCED_TIME(NULL, colon, colon_reset, TAPPING_TERM),
 [_KC_LCBR]   = ACTION_TAP_DANCE_FN_ADVANCED_TIME(NULL, home_lcbr, home_lcbr_reset, TAPPING_TERM),
 [_KC_RCBR]   = ACTION_TAP_DANCE_FN_ADVANCED_TIME(NULL, home_rcbr, home_rcbr_reset, TAPPING_TERM),
 [_KC_LPRN]   = ACTION_TAP_DANCE_FN_ADVANCED_TIME(NULL, home_lprn, home_lprn_reset, TAPPING_TERM),
 [_KC_RPRN]   = ACTION_TAP_DANCE_FN_ADVANCED_TIME(NULL, home_rprn, home_rprn_reset, TAPPING_TERM),
 [_GT]   = ACTION_TAP_DANCE_FN_ADVANCED_TIME(NULL, gt, gt_reset, TAPPING_TERM),
 [_LT]   = ACTION_TAP_DANCE_FN_ADVANCED_TIME(NULL, lt, lt_reset, TAPPING_TERM)
//  ,[_GT]     = ACTION_TAP_DANCE_FN_ADVANCED_TIME(NULL, greater, greater_reset, TAPPING_TERM)
//  ,[_LT]     = ACTION_TAP_DANCE_FN_ADVANCED_TIME(NULL, lesser, lesser_reset, TAPPING_TERM)
};
// Determine the tapdance state to return
td_state_t cur_dance(qk_tap_dance_state_t *state) {
    if (state->count == 1) {
        if (state->interrupted || !state->pressed) return TD_SINGLE_TAP;
        else return TD_SINGLE_HOLD;
    }

    if (state->count == 2) return TD_DOUBLE_SINGLE_TAP;
    else return TD_UNKNOWN; // Any number higher than the maximum state value you return above
}


void colon(qk_tap_dance_state_t *state, void *user_data){
    td_state = cur_dance(state);
}
void colon_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (td_state) {
        case TD_SINGLE_TAP:
            tap_code16(KC_COLON);
            break;
        case TD_SINGLE_HOLD:
            tap_code16(KC_SCOLON);
            break;
        case TD_DOUBLE_SINGLE_TAP: // Allow nesting of 2 parens `((` within tapping term
            tap_code16(KC_COLON);
            tap_code16(KC_COLON);
            tap_code16(KC_SPC);
        default:
            break;
    }
}
void dot(qk_tap_dance_state_t *state, void *user_data) {
    td_state = cur_dance(state);
}
void dot_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (td_state) {
        case TD_SINGLE_TAP:
            tap_code16(KC_DOT);
            break;
        case TD_SINGLE_HOLD:
            tap_code16(S(KC_DOT));
            break;
        case TD_DOUBLE_SINGLE_TAP: // Allow nesting of 2 parens `((` within tapping term
            tap_code16(KC_DOT);
            tap_code16(KC_SPC);
            set_oneshot_mods(MOD_BIT(KC_LSFT));
        default:
            break;
    }
}

void home_lcbr(qk_tap_dance_state_t *state, void *user_data) {
    td_state = cur_dance(state);
    switch (td_state) {
        case TD_SINGLE_TAP:
            register_code16(KC_LCBR);
            break;
        case TD_SINGLE_HOLD:
            register_mods(MOD_BIT(KC_LALT)); // For a layer-tap key, use `layer_on(_MY_LAYER)` here
            break;
        case TD_DOUBLE_SINGLE_TAP: // Allow nesting of 2 parens `((` within tapping term
            tap_code16(KC_LCBR);
            register_code16(KC_LCBR);
        default:
            break;
    }
}
void home_lcbr_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (td_state) {
        case TD_SINGLE_TAP:
            unregister_code16(KC_LCBR);
            break;
        case TD_SINGLE_HOLD:
            unregister_mods(MOD_BIT(KC_LALT)); // For a layer-tap key, use `layer_off(_MY_LAYER)` here
            break;
        case TD_DOUBLE_SINGLE_TAP:
            unregister_code16(KC_LCBR);
        default:
            break;
    }
}

void home_rcbr(qk_tap_dance_state_t *state, void *user_data) {
    td_state = cur_dance(state);
    switch (td_state) {
        case TD_SINGLE_TAP:
            register_code16(KC_RCBR);
            break;
        case TD_SINGLE_HOLD:
            register_mods(MOD_BIT(KC_LGUI)); // For a layer-tap key, use `layer_on(_MY_LAYER)` here
            break;
        case TD_DOUBLE_SINGLE_TAP: // Allow nesting of 2 parens `((` within tapping term
            tap_code16(KC_RCBR);
            register_code16(KC_RCBR);
        default:
            break;
    }
}
void home_rcbr_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (td_state) {
        case TD_SINGLE_TAP:
            unregister_code16(KC_RCBR);
            break;
        case TD_SINGLE_HOLD:
            unregister_mods(MOD_BIT(KC_LGUI)); // For a layer-tap key, use `layer_off(_MY_LAYER)` here
            break;
        case TD_DOUBLE_SINGLE_TAP:
            unregister_code16(KC_RCBR);
        default:
            break;
    }
}

void home_lprn(qk_tap_dance_state_t *state, void *user_data) {
    td_state = cur_dance(state);
    switch (td_state) {
        case TD_SINGLE_TAP:
            register_code16(KC_LPRN);
            break;
        case TD_SINGLE_HOLD:
            register_mods(MOD_BIT(KC_LGUI)); // For a layer-tap key, use `layer_on(_MY_LAYER)` here
            break;
        case TD_DOUBLE_SINGLE_TAP: // Allow nesting of 2 parens `((` within tapping term
            tap_code16(KC_LPRN);
            register_code16(KC_LPRN);
        default:
            break;
    }
}
void home_lprn_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (td_state) {
        case TD_SINGLE_TAP:
            unregister_code16(KC_LPRN);
            break;
        case TD_SINGLE_HOLD:
            unregister_mods(MOD_BIT(KC_LGUI)); // For a layer-tap key, use `layer_off(_MY_LAYER)` here
            break;
        case TD_DOUBLE_SINGLE_TAP:
            unregister_code16(KC_LPRN);
        default:
            break;
    }
}

void home_rprn(qk_tap_dance_state_t *state, void *user_data) {
    td_state = cur_dance(state);
    switch (td_state) {
        case TD_SINGLE_TAP:
            register_code16(KC_RPRN);
            break;
        case TD_SINGLE_HOLD:
            register_mods(MOD_BIT(KC_RALT)); // For a layer-tap key, use `layer_on(_MY_LAYER)` here
            break;
        case TD_DOUBLE_SINGLE_TAP: // Allow nesting of 2 parens `((` within tapping term
            tap_code16(KC_RPRN);
            register_code16(KC_RPRN);
        default:
            break;
    }
}
void home_rprn_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (td_state) {
        case TD_SINGLE_TAP:
            unregister_code16(KC_RPRN);
            break;
        case TD_SINGLE_HOLD:
            unregister_mods(MOD_BIT(KC_RALT)); // For a layer-tap key, use `layer_off(_MY_LAYER)` here
            break;
        case TD_DOUBLE_SINGLE_TAP:
            unregister_code16(KC_RPRN);
        default:
            break;
    }
}

void gt(qk_tap_dance_state_t *state, void *user_data){
    td_state = cur_dance(state);
    switch (td_state) {
        case TD_SINGLE_TAP:
            register_code16(KC_GT);
            break;
        case TD_SINGLE_HOLD:
            SEND_STRING("->");
            break;
        case TD_DOUBLE_SINGLE_TAP: // Allow nesting of 2 parens `((` within tapping term
             SEND_STRING("=>");
        default:
            break;
    }
}
void gt_reset(qk_tap_dance_state_t *state, void *user_data){
    switch (td_state) {
        case TD_SINGLE_TAP:
            unregister_code16(KC_GT);
            break;
        default:
            break;
    }
}

void lt(qk_tap_dance_state_t *state, void *user_data){
    td_state = cur_dance(state);
    switch (td_state) {
        case TD_SINGLE_TAP:
            register_code16(KC_LT);
            break;
        case TD_SINGLE_HOLD:
            SEND_STRING("<-");
            break;
        case TD_DOUBLE_SINGLE_TAP: // Allow nesting of 2 parens `((` within tapping term
             SEND_STRING("<=");
        default:
            break;
    }
}

void lt_reset(qk_tap_dance_state_t *state, void *user_data){
    switch (td_state) {
        case TD_SINGLE_TAP:
            unregister_code16(KC_LT);
            break;
        default:
            break;
    }
}
<<<<<<< Updated upstream:users/fride/tapdance.c

static uint8_t neo3_otl;

void neo3(qk_tap_dance_state_t *state, void *user_data){
    td_state = cur_dance(state);
    switch (td_state) {
        case TD_SINGLE_TAP:
            // if (IS_LAYER_OFF(_SYM)) {
            //     set_oneshot_layer(_SYM, ONESHOT_START);
            //     neo3_otl = true;
            // }
            break;
        case TD_SINGLE_HOLD:
           // layer_on(_SYM);
            neo3_otl = false;
            break;
        case TD_DOUBLE_SINGLE_TAP:
            //  layer_on(_SYM);
             neo3_otl = false;
        default:
            break;
    }
}

void neo3_reset(qk_tap_dance_state_t *state, void *user_data){
    switch (td_state) {
        case TD_SINGLE_TAP:
            if (neo3_otl) {
                clear_oneshot_layer_state(ONESHOT_PRESSED);
            } else {
              //  layer_off(_SYM);
            }
            break;
        case TD_SINGLE_HOLD:
            //layer_off(_SYM);
            break;
        default:
            //layer_on(_SYM);
            break;
    }
}
static uint8_t neo4_otl;

void neo4(qk_tap_dance_state_t *state, void *user_data){
    td_state = cur_dance(state);
    switch (td_state) {
        case TD_SINGLE_TAP:
            if (IS_LAYER_OFF(_NAV)) {
                set_oneshot_layer(_NAV, ONESHOT_START);
                neo4_otl = true;
            }
            break;
        case TD_SINGLE_HOLD:
            layer_on(_NAV);
            neo4_otl = false;
            break;
        case TD_DOUBLE_SINGLE_TAP:
             layer_on(_NAV);
             neo4_otl = false;
        default:
            break;
    }
}

void neo4_reset(qk_tap_dance_state_t *state, void *user_data){
    switch (td_state) {
        case TD_SINGLE_TAP:
            if (neo4_otl) {
                clear_oneshot_layer_state(ONESHOT_PRESSED);
            } else {
                layer_off(_NAV);
            }
            break;
        case TD_SINGLE_HOLD:
            layer_off(_NAV);
            break;
        default:
            layer_on(_NAV);
            break;
    }
}
=======
>>>>>>> Stashed changes:keyboards/redox/keymaps/fridox/tapdance.c
