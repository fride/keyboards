let types = ../../types.dhall


{-
j  g  h  p qv   \| >& /* '" -
r  s  n  t  b   ,< a  e  c  i
x  f  m  d  k   z  u  o  w  y
            l   ␣
-}

let l1 = ["KC_J",  "KC_G",  "KC_H", "KC_P",  "KC_V"]
let l2 = ["___R___", "___S___", "KC_N", "___T___", "KC_B"]
let l3 = [ "KC_X",  "KC_F", "___M___", "___D___", "KC_K"]

let r1 = ["KC_BSLS", "DOT",  "SLASH", "QUOTE", "TILD"]
let r2 = ["COMM",   "___A___", "KC_E",   "___I___", "___C___"]
let r3 = ["KC_Z",   "___U___", "___O___",  "KC_Y",  "KC_W"]

let thumb_l= [ "_SPACE_", "OS_LSFT"]
let thumb_r = [ "OS_LCTL", "___L___"]

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
