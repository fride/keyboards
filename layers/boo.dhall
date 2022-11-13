let NUM = \(kc: Text) -> "LT(_NUM,${kc})"
let SYM = \(kc: Text) -> "LT(_SYM,${kc})"

let ___A___ = SYM "KC_A"
let ___O___ = "KC_O"
let ___I___ = SYM "KC_I"
let ___W___ = "LGUI_T(KC_W)"
let ___R___ = "KC_R" -- LT(_NUMBLOCK,KC_R)"
let ___H___ = "LGUI_T(KC_H)"

-- The Boo Layout. Dvorak in modern.
-- Schwachstellen! SC und EU.
-- Anpassungen -> L auf den rechten Daumen
in [
 "COMM",      "DOT",     "KC_U",    "KC_C",    "KC_V",       "KC_BSLS",  "KC_F", "KC_D", "MINS", "KC_Y",
  ___A___,    ___O___,   "KC_E",    "KC_S",    "KC_G",       "KC_B",     "KC_N", "KC_T", ___R___, ___I___,
 "SLASH",     "KC_X",    "KC_QUOT", ___W___,    "KC_Z",       "KC_P",    ___H___, "KC_M", "KC_K", "KC_J",
                                   "NAV_SPC", "OS_LSFT",    "OS_LCTL", "RSFT_T(KC_L)"
]
