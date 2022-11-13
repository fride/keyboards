let types = ../types.dhall
let kp = types.Binding.kp
let Combo = types.Combo

let GUI = \(kc: Text) -> "LGUI_T(${kc})"
let ALT = \(kc: Text) -> "LALT_T(${kc})"
let CTL = \(kc: Text) -> "LCTL_T(${kc})"
let SFT = \(kc: Text) -> "LSFT_T(${kc})"

let ___7___ = SFT "KC_7"
let ___5___ = CTL "KC_5"
let ___3___ = ALT "KC_3"
let ___1___ = GUI "KC_1"
let ___9___ = "KC_9"

let ___2___ = GUI "KC_2"
let ___4___ = ALT "KC_4"
let ___6___ = CTL "KC_6"
let ___8___ = SFT "KC_8"
let ___0___ = "KC_0"
let _______ = "KC_TRNS"

in types.Layer::
{ name = "_NUM"
, keys = [
           "KC_COMM", "KC_DOT",  "KC_MINS", "KC_P",   _______,      "KC_BSLS",   "KC_COMM", "KC_DOT",  "KC_MINS", "KC_SLSH",
           ___7___,   ___5___,   ___3___,   ___1___,  "NUM_G",      "KC_SLSH",  ___2___,   ___4___,    ___6___,   ___8___,
           "SLASH",    "KC_X",   _______,    ___9___,  _______,     "KC_P",     ___0___,    "KC_O",    "KC_K",    "KC_J",
                                           "NAV_SPC", "KC_NO",      "KC_NO",   "KC_NO" -- TODO what would be better here?
         ]
}
