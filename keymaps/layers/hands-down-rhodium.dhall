let types = ../../types.dhall
{-
j  g  h  p qv   \| >& /* '" -
r  s  n  t  b   ,< a  e  c  i
x  f  m  d  k   z  u  o  w  y
            l   ␣
-}
let l1 = ["KC_W",   "KC_V",    "KC_M",         "KC_G", "KC_EQL"]
let l2 = ["KC_C",  "KC_S",     "KC_N",         "___T___", "KC_K"]
let l3 = ["KC_P",   "___F___", "LALT_T(KC_L)", "___D___", "KC_X"]

let r1 = ["KC_BSLS", "_COMM__",   "__DOT__", "KC_J",   "KC_QUOT"]
let r2 = ["KC_MINS", "___A___",  "___E___",  "KC_I", "KC_H"]
let r3 = ["KC_Z",    "___U___",   "___O___", "KC_Y",    "KC_B"]

let thumb_l= [ "_SPACE_", "OS_LSFT"]
let thumb_r = [ "OS_LCTL", "LT(_NUM,KC_R)"]

in types.HomeBlock::{
      l1 = l1
    , l2 = l2
    , l3 = l3
    , r1 = r1
    , r2 = r2
    , r3 = r3
    , thumb_l = thumb_l
    , thumb_r = thumb_r
}
