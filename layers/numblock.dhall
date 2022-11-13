let types = ../types.dhall
let MEH = "OSM(MOD_MEH)"
let NUM = "TO(_NUMBLOCK)"
let SPC_SFT = "LSFT_T(KC_SPC)"
let EURO = "A(S(KC_2))"
in types.Layer::
{ name = "_NUMBLOCK"
, keys = [
  "KC_LBRC", "KC_7", "KC_8", "KC_9", "KC_RBRC",     "KC_BSLS", "COMM",      "DOT",     "KC_RCTL", "KC_NO",
  "KC_SCLN", "KC_1", "KC_2", "KC_3", "KC_MINS",     NUM,       "KC_RGUI",  "KC_RALT", "KC_NO","KC_LSFT",
  "SLASH",   "KC_4", "KC_5", "KC_6", "KC_EQL",      "KC_NO",   EURO,    "KC_NO",   "KC_NO", "KC_NO",
                             "KC_0", "OS_LSFT",     "OS_LCTL",  SPC_SFT
 ]
 }
