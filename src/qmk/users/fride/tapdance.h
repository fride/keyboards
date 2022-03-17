// Define a type containing as many tapdance states as you need
typedef enum {
    TD_NONE,
    TD_UNKNOWN,
    TD_SINGLE_TAP,
    TD_SINGLE_HOLD,
    TD_DOUBLE_SINGLE_TAP
} td_state_t;

// Create a global instance of the tapdance state type
static td_state_t td_state;

// Declare your tapdance functions:

// Function to determine the current tapdance state
td_state_t cur_dance(qk_tap_dance_state_t *state);

// `finished` and `reset` functions for each tapdance keycode
void colon(qk_tap_dance_state_t *state, void *user_data);
void colon_reset(qk_tap_dance_state_t *state, void *user_data);

void dot(qk_tap_dance_state_t *state, void *user_data);
void dot_reset(qk_tap_dance_state_t *state, void *user_data);

void home_lcbr(qk_tap_dance_state_t *state, void *user_data);
void home_lcbr_reset(qk_tap_dance_state_t *state, void *user_data);

void home_rcbr(qk_tap_dance_state_t *state, void *user_data);
void home_rcbr_reset(qk_tap_dance_state_t *state, void *user_data);

void home_lprn(qk_tap_dance_state_t *state, void *user_data);
void home_lprn_reset(qk_tap_dance_state_t *state, void *user_data);

void home_rprn(qk_tap_dance_state_t *state, void *user_data);
void home_rprn_reset(qk_tap_dance_state_t *state, void *user_data);

void gt(qk_tap_dance_state_t *state, void *user_data);
void gt_reset(qk_tap_dance_state_t *state, void *user_data);

void lt(qk_tap_dance_state_t *state, void *user_data);
void lt_reset(qk_tap_dance_state_t *state, void *user_data);
<<<<<<< Updated upstream:users/fride/tapdance.h


void neo3(qk_tap_dance_state_t *state, void *user_data);
void neo3_reset(qk_tap_dance_state_t *state, void *user_data);

void neo4(qk_tap_dance_state_t *state, void *user_data);
void neo4_reset(qk_tap_dance_state_t *state, void *user_data);


=======
>>>>>>> Stashed changes:keyboards/redox/keymaps/fridox/tapdance.h
