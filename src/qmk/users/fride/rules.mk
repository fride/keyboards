AUTO_SHIFT_ENABLE = yes
COMBO_ENABLE = yes
MOUSEKEY_ENABLE = yes
TAP_DANCE_ENABLE = yes

# Easy definition of combos
VPATH +=  keyboards/gboards/

APPLY_USERSPACE			= yes

# Extra features that are nice but takes space
WPM_ENABLE = no
EXTRAKEY_ENABLE = no        # For volume keys and similar
KEY_OVERRIDE_ENABLE = no
LEADER_ENABLE = no
TAP_DANCE_ENABLE = no
RGBLIGHT_ENABLE = no        # Keyboard RGB underglow
RGB_MATRIX_ENABLE = no      # Disable RGB, not used on Kyria

# Saves a bunch of memory
EXTRAFLAGS += -flto
CONSOLE_ENABLE = no
VERBOSE = no
DEBUG_MATRIX_SCAN_RATE  = no
DEBUG_MATRIX = no
MAGIC_ENABLE = no
SPACE_CADET_ENABLE = no
GRAVE_ESC_ENABLE = no

SRC += layermodes.c
SRC += casemodes.c
SRC += repeat.c
SRC += swapper.c
SRC += fride.c
SRC += features/nshot_mod.c
SRC += features/leader.c
SRC += features/custom_shift_keys.c
SRC += features/utils.c
SRC += tap_hold.c
