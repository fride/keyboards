let types = ../../types.dhall
{-
    +----------------------------+
    | w l y p b   z f o u ;  [ ] |
    | c r s t g   m n e i a  ' \ |
    | q j v d k   x h / , .      |
    +----------------------------+
    https://github.com/DreymaR/BigBagKbdTrixPKL/tree/master/Layouts/Canary
-}

let l1 = ["KC_W",    "KC_L",    "___Y___",  "___P___",      "KC_B"]
let l2 = ["___C___", "___R___", "___S___", "___T___", "KC_G"]
let l3 = [ "KC_Q",   "___J___", "___V___", "___D___", "KC_K"]

let r1 = ["KC_Z",    "___F___",   "___O___",  "___U___",   "KC_QUOT"]
let r2 = ["KC_M",    "___N___",   "___E___",  "___I___", "___A___"]
let r3 = ["KC_X",    "___H___",   "KC_COMM",  "KC_DOT",    "KC_SLASH"]

let thumb_l= [ "L_THUMB", "OS_LGUI"]
let thumb_r = [ "OS_LCTL", "OS_LSFT"]

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
