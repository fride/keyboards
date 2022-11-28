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
    , l1 = [ "COMM",    "DOT",    "KC_U",    "KC_C", "KC_V" ]
    , l2 = [ "KC_A",    "KC_O",   "KC_E",    "___S___", "KC_G"]
    , l3 = [ "KC_SCLN", "KC_P",   "_QUOT__", "___W___", "KC_Z" ]

    , r1 = [ "KC_Q",   "KC_F",    "KC_D",     "KC_L", "UREPEAT" ]
    , r2 = [ "KC_B",   "___N___", "KC_T",     "KC_R", "KC_a"]
    , r3 = [ "KC_X",   "___H___", "___M___",  "KC_K", "KC_J" ]
    , thumb_l = [ "_SPACE_", "OS_LSFT"]
    , thumb_r = [ "OS_LCTL", "___I___"]
    }
