#include "layermodes.h"
#include "keycodes.h"

static uint16_t num_word_timer;
static bool _num_word_enabled = false;

bool num_word_enabled(void) { return _num_word_enabled; }

void enable_num_word(void) {
  _num_word_enabled = true;
  layer_on(_NUM);
}

void disable_num_word(void) {
  _num_word_enabled = false;
  layer_off(_NUM);
}

void process_num_word_activation(const keyrecord_t *record) {
  if (record->event.pressed) {
    layer_on(_NUM);
    num_word_timer = timer_read();
  } else {
    if (timer_elapsed(num_word_timer) < TAPPING_TERM) {
      // Tapping enables NUMWORD
      _num_word_enabled = true;
    } else {
      // Holding turns off NUM when released
      layer_off(_NUM);
    }
  }
}

bool process_num_word(uint16_t keycode, const keyrecord_t *record) {
  if (!_num_word_enabled)
    return true;

  switch (keycode) {
  case QK_MOD_TAP ... QK_MOD_TAP_MAX:
  case QK_LAYER_TAP ... QK_LAYER_TAP_MAX:
  case QK_TAP_DANCE ... QK_TAP_DANCE_MAX:
    if (record->tap.count == 0)
      return true;
    keycode = keycode & 0xFF;
  }
  switch (keycode) {
  case KC_1 ... KC_0:
  case KC_PERC:
  case KC_COMM:
  case KC_DOT: // still a . stops!?
  case KC_SLSH:
  case KC_MINS:
  case KC_ASTR:
  case KC_PLUS:
  case KC_EQL:
  case KC_F18:
  case KC_F19:
  case KC_ENT:
  case REPEAT:
  case KC_UNDS:
  case KC_BSPC:
  case OS_LSFT:
  case OS_LALT:
  case OS_LCTL:
  case OS_LGUI:
    // Don't disable for above keycodes
    break;
  case CANCEL:
    if (record->event.pressed) {
      disable_num_word();
    }
    return false;
  default:
    if (record->event.pressed) {
      disable_num_word();
    }
  }
  return true;
}
