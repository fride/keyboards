let types = ../../types.dhall
let kp = types.Binding.kp

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

in types.HomeBlock::{
    l1 = [ "KC_J",    "NUM_G",  "KC_NO",    "KC_P",   _______]
   , l2 = [___7___,   ___5___,   ___3___,   ___1___,  "NUM_G"]
    ,l3 = ["SLASH",    "KC_X",   _______,    ___9___,  _______]
    ,r1 = ["KC_BSLS",   "KC_COMM", "KC_DOT",  "KC_MINS", "KC_SLSH"]
    ,r2 = ["KC_SLSH",  ___2___,   ___4___,    ___6___,   ___8___]
    ,r3 = ["KC_P",     ___0___,    "KC_O",    "KC_K",    "KC_J"]
    , thumb_l =["NAV_SPC", "KC_K"]
    , thumb_r = ["KC_NO",   "KC_NO"]
}
