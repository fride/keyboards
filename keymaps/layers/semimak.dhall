{-
    f l h v z    ' w u o y
    s r n t k    c d e a i
    x j b m q    p g , . /
-}
let types = ../../types.dhall

let thumb_l= [ "_SPACE_", "OS_LGUI"]
let thumb_r = [ "OS_LCTL", "OS_LSFT"]

in  types.HomeBlock::{
    , l1 = [ "KC_F",    "KC_L",   "KC_H",    "KC_V", "KC_Z" ]
    , l2 = [ "KC_S",    "KC_R",   "KC_N",    "KC_T", "KC_K"]
    , l3 = [ "KC_X",    "KC_J",   "KC_B",    "KC_M", "KC_Q" ]

    , r1 = [ "KC_QUOT", "KC_W", "KC_U",  "KC_O", "KC_Y" ]
    , r2 = [ "KC_C",    "KC_D", "KC_E",    "KC_A", "KC_I"]
    , r3 = [ "KC_P",    "KC_G", "KC_COMM", "KC_DOT", "KC_SLSH" ]
    , thumb_l = thumb_l
    , thumb_r = thumb_r
    }
