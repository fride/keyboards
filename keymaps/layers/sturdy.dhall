-- https://o-x-e-y.github.io/layouts/sturdy/index.html
let types = ../../types.dhall
in  types.HomeBlock::{
    , l1 = [ "KC_V",   "KC_M",   "KC_L",  "KC_C", "KC_P" ]
    , l2 = [ "KC_S",   "KC_T",   "KC_R",  "KC_D", "KC_Y"]
    , l3 = [ "KC_Z",   "KC_K",   "KC_Q",  "KC_G", "KC_W" ]

    , r1 = [ "KC_X",   "KC_F",  "KC_O",     "KC_U",    "KC_J" ]
    , r2 = [ "KC_DOT", "KC_N",  "KC_A",     "KC_E",    "KC_I"]
    , r3 = [ "KC_B",   "KC_H",  "KC_QUOT",  "KC_SCLN", "KC_COMM" ]
    , thumb_l = [ "_SPACE_", "OS_LGUI"]
    , thumb_r = [ "OS_LCTL", "KC_E"]
    }
{-
  v m l c p  x f o u j
  s t r d y  . n a e i -
  z k q g w  b h ' ; ,
-}
