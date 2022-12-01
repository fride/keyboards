-- // _ACCENT

let types = ../../types.dhall
in  types.HomeBlock::{
    , l1 = [ "KC_NO",     "KC_NO",    "A(KC_U)", "KC_C",    "KC_V" ]
    , l2 = [ "A(KC_A)",  "A(KC_O)",   "KC_E",   "A(KC_S)", "KC_G"]
    , l3 = [ "KC_SCLN",  "KC_P",   "KC_QUOT", "KC_W",    "KC_Z" ]

    , r1 = [ "KC_Q",   "KC_F", "KC_D",  "KC_L", "KC_Y" ]
    , r2 = [ "KC_B",   "KC_N", "KC_T",  "KC_R", "KC_NO"]
    , r3 = [ "KC_X",   "KC_H", "KC_M",  "KC_K", "KC_J" ]
    , thumb_l = [ "_SPACE_", "OS_LSFT"]
    , thumb_r = [ "OS_LCTL", "___I___"]
    }
