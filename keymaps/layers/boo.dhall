{-
    The boo layout: https://ballerboo.github.io/boolayout/
    , . u c v    q f d l y
    a o e s g    b n t r i
    ; p ' w z    x h m k j

    I moved the i to the right thumb as I misliked yikes! :D
    I also exchanged P and X.
-}
let types = ../../types.dhall
in  types.HomeBlock::{
    , l1 = [ "KC_COMM",    "KC_DOT",    "KC_U",    "KC_C", "KC_V" ]
    , l2 = [ "KC_A",    "KC_O",   "KC_E",    "KC_S", "KC_G"]
    , l3 = [ "KC_SCLN", "KC_X",   "KC_QUOT", "KC_W", "KC_Z" ]

    , r1 = [ "KC_Q",   "KC_F",    "KC_D",     "KC_L", "KC_Y" ]
    , r2 = [ "KC_B",   "KC_N", "KC_T",     "KC_R", "REPEAT"]
    , r3 = [ "KC_P",   "KC_H", "KC_M",  "KC_K", "KC_J" ]
    , thumb_l = [ "_SPACE_", "OS_LSFT"]
    , thumb_r = [ "OS_LCTL", "LT(_NUM,KC_I)"]
    }
