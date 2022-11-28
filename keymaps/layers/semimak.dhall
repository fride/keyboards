{-
    f l h v z    ' w u o y
    s r n t k    c d e a i
    x j b m q    p g , . /
-}
let types = ../../types.dhall
in  types.HomeBlock::{
    , l1 = [ "KC_F",    "KC_L",   "K",    "KC_C", "KC_V" ]
    , l2 = [ "KC_A",    "KC_O",   "KC_E",    "KC_S", "KC_G"]
    , l3 = [ "KC_SCLN", "KC_X",   "KC_QUOT", "KC_W", "KC_Z" ]

    , r1 = [ "KC_Q",   "KC_F", "KC_D",  "KC_L", "KC_Y" ]
    , r2 = [ "KC_B",   "KC_N", "KC_T",  "KC_R", "REPEAT"]
    , r3 = [ "KC_P",   "KC_H", "KC_M",  "KC_K", "KC_J" ]
    , thumb_l = [ "_SPACE_", "OS_LSFT"]
    , thumb_r = [ "OS_LCTL", "___I___"]
    }
