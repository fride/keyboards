
#pragma once
#include QMK_KEYBOARD_H

#include "features/nshot_mod.h"
#include "features/leader.h"
#include "keycodes.h"
#include "features/custom_shift_keys.h"

// later when it works on one keyboard! #include "wrappers.h"

bool process_record_keymap(uint16_t keycode, keyrecord_t *record);
