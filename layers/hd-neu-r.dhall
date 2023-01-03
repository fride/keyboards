let types = ../types.dhall
let ___R___ = "LT(_SYM,KC_R)"
let ___I___ = "LT(_SYM,KC_I)"

in types.Layer::
{ name = "_BASE"
, keys = [
  "KC_J",    "KC_G", "KC_H", "KC_P", "KC_V",        "KC_EQL",  "KC_7",    "SLASH",   "KC_9", "TO(_NUMBLOCK)",
  ___R___,   "KC_S", "KC_N", "KC_T", "KC_B",        "COMM",    "KC_A",    "KC_E",    "KC_C",  ___I___,
  "KC_X",    "KC_F", "KC_M", "KC_D", "KC_K",        "MINS",    "KC_U",    "KC_O",    "KC_Y", "KC_W",
                         "NAV_SPC", "OS_LSFT",      "OS_LCTL", "LT(_NUM,KC_R)"
 ]
 }
