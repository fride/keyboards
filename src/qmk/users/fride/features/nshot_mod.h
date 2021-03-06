#pragma once

// https://github.com/possumvibes/qmk_firmware/blob/possumdev/users/possumvibes/features/nshot_mod.h

#include QMK_KEYBOARD_H

// Represents the four states an n-shot key can be in (from users/callum)
typedef enum {
    os_up_unqueued,
    os_up_queued,
    os_down_unused,
    os_down_used,
} oneshot_state;

typedef struct {
    uint16_t      trigger;
    uint16_t      mod;
    uint8_t       max_count;
    oneshot_state state;
    uint8_t       count;
} nshot_state_t;

extern nshot_state_t nshot_states[];
extern uint8_t             NUM_NSHOT_STATES;

// Custom one-or-more-shot implementation that does not rely on timers
// and persists across layer changes. Based on the users/callum implementation
// at https://github.com/callum-oakley/qmk_firmware/tree/master/users/callum
void process_nshot_state_pre(uint16_t keycode, keyrecord_t *record);
void process_nshot_state_post(uint16_t keycode, keyrecord_t *record);

// Keys that should cancel the n-shot mod if tapped
bool is_nshot_cancel_key(uint16_t keycode);

// Keys that should not count towards n-shot usage (e.g., layer toggles)
bool is_nshot_ignored_key(uint16_t keycode, keyrecord_t *record);

// cancel all nshots!
// TIL https://stackoverflow.com/questions/42125/warning-error-function-declaration-isnt-a-prototype#47693
void cancel_nshots(void);

void tigger_nshot(uint16_t trigger);