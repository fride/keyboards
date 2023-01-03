let types = ../../types.dhall
in  types.HomeBlock::{
    , l1 = [ "KC_F",   "KC_L",   "KC_H",  "KC_D", "KC_M" ]
    , l2 = [ "KC_S",   "KC_R",   "KC_N",  "KC_T", "KC_K"]
    , l3 = [ "KC_J",   "KC_B",   "KC_K",  "KC_X", "KC_Z" ]

    , r1 = [ "KC_V",   "KC_W",  "KC_O",     "KC_U",    "KC_COMM" ]
    , r2 = [ "KC_G",   "KC_Y",  "KC_A",     "KC_E",    "KC_I"]
    , r3 = [ "KC_P",   "KC_C",  "KC_QUOT",  "KC_SCLN", "KC_DOT" ]
    , thumb_l = [ "L_THUMB", "OS_LGUI"]
    , thumb_r = [ "OS_LCTL", "OS_LSFT"]
    }
{-
    https://github.com/whorfian/whorf
    ```
        f l h d m    v w o u ,
        s r n t k    g y a e i
        x j b z q    p c ' ; .
        ```
-}
