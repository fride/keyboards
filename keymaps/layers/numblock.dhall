let types = ../../types.dhall
let _______ = "KC_NO"

in types.HomeBlock::{
     l1 = [ "KC_J",    "NUM_G",  "KC_NO",    "KC_P",   _______]
   , l2 = ["KC_LSFT",  "KC_NO",  "KC_LALT",   "KC_LGUI",  "NUM_G"]
    ,l3 = ["SLASH",    "KC_X",   _______,    _______,  _______]

    ,r1 = ["KC_LCBR",  "KC_7",    "KC_8",    "KC_9",    "KC_RCBR"]
    ,r2 = ["KC_SLSH",  "KC_4",    "KC_5",    "KC_6",    "KC_EQL"]
    ,r3 = ["KC_MINS",  "KC_1",    "KC_2",    "KC_3",    "KC_4"]
    , thumb_l =["NAV_SPC", "OS_LSFT"]
    , thumb_r = ["OS_LCTL",   "KC_0"]
}
