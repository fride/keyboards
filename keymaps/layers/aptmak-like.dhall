let types = ../../types.dhall


{-
// ⟳ w f p k         x l u y '
// c r s t b         v n a i o
//   m g d             h , .
//                   e
-}

let l1 = ["REPEAT",  "KC_W", "KC_F", "KC_P",    "KC_K"]
let l2 = ["KC_C",    "KC_R", "KC_S", "___T___", "KC_B"]
let l3 = ["KC_NO" ,  "KC_M", "KC_G", "___D___", "KC_J"]

let r1 = ["KC_X",   "KC_L",   "KC_U",   "KC_Y",    "KC_QUOT"]
let r2 = ["KC_V",   "KC_N",   "KC_A",   "KC_I",    "KC_O"]
let r3 = ["KC_NO",  "KC_H", "KC_COMM", "KC_DOT",  "KC_NO"]

let thumb_l= [ "_SPACE_", "OS_LSFT"]
let thumb_r = [ "OS_LCTL", "___E___"]

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
