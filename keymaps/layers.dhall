let types = ../types.dhall

--    w  g  m  f  q     j  u  o  k  '
--    r  s  n  t  b´    y  i  e  a  h
--    x  c  l  d  v    -  p  /  ,; .:

let hd_l1 = ["KC_W",       "KC_G",         "KC_M",            "KC_F",         "KC_Q"]
let hd_r1 = ["KC_J",       "KC_U",         "KC_O",            "KC_K",         "KC_QUOT"]
let hd_l2 = ["KC_R",       "KC_S",         "KC_N",            "LSFT_T(KC_T)", "KC_B"]
let hd_r2 = ["KC_Y",       "LSFT_T(KC_A)", "KC_E",            "KC_I",         "KC_H"]
let hd_l3 = ["KC_X",       "KC_C",         "LALT_T(KC_L)",    "LGUI_T(KC_D)", "KC_V"]
let hd_r3 = ["KC_Z",       "LGUI_T(KC_P)", "LALT_T(KC_COMM)", "KC_DOT",      "KC_SLASH"]

{-
  f l h d m  v w o u ,
  s r n t k  g y a e i
  x j b z q  p c ' ; .

  f l h d z  v w o u ,
  s r n t m  g y a e i
  x j b k q  p c ' ; .
-}

let whorf_l1 = ["KC_F",       "KC_L",         "KC_H",            "KC_D",         "KC_M"]
let whorf_r1 = ["KC_V",       "KC_W",         "KC_O",            "KC_U",         "KC_COMM"]
let whorf_l2 = ["KC_S",       "KC_R",         "KC_N",            "LSFT_T(KC_T)", "KC_K"]
let whorf_r2 = ["KC_G",       "LSFT_T(KC_Y)", "KC_A",            "KC_E",         "KC_I"]
let whorf_l3 = ["KC_X",       "KC_J",         "LALT_T(KC_B)",    "LGUI_T(KC_Z)", "KC_Q"]
let whorf_r3 = ["KC_P",       "LGUI_T(KC_C)", "LALT_T(KC_QUOT)", "KC_SCLN",      "KC_DOT"]

{-
f l h v z  ' w u o y
s r n t k  c d e a i
x j b m q  p g , . /
-}

let semimakJQ_l1 = ["KC_F",       "KC_L",         "KC_H",            "KC_V",         "KC_Z"]
let semimakJQ_l2 = ["KC_S",       "KC_R",         "KC_N",            "LSFT_T(KC_T)", "KC_K"]
let semimakJQ_l3 = ["KC_X",       "KC_J",         "LALT_T(KC_B)",    "LGUI_T(KC_M)", "KC_Q"]
let semimakJQ_r1 = ["KC_QUOT",     "KC_W",         "KC_U",            "KC_O",         "KC_Y"]
let semimakJQ_r2 = ["KC_C",       "LSFT_T(KC_D)", "KC_E",            "KC_A",         "KC_I"]
let semimakJQ_r3 = ["KC_P",       "LGUI_T(KC_G)", "LALT_T(KC_COMM)", "KC_DOT",      "KC_SLSH"]


let colmak_l1 = ["KC_Q",       "KC_W", "KC_F",         "KC_P",         "KC_B"]
let colmak_l2 = ["LT(2,KC_A)", "KC_R", "KC_S",         "LSFT_T(KC_T)", "KC_G"]
let colmak_l3 = ["KC_Z",       "KC_X", "LALT_T(KC_C)", "LGUI_T(KC_D)", "KC_V"]
let colmak_r1 = ["KC_J",       "KC_L",         "KC_U", "KC_Y", "KC_QUOT"]
let colmak_r2 = ["KC_M",       "RSFT_T(KC_N)", "KC_E", "KC_I", "LT(2,KC_O)"]
let colmak_r3 = ["KC_K",       "RGUI_T(KC_H)", "RALT_T(KC_COMM)", "KC_DOT", "REPEAT"]

let base_thumb_l = ["LT(_NAV,KC_SPC)", "OSM(MOD_LSFT)"]
let base_thumb_r = ["OSM(MOD_LCTL)", "OSL(_NUM)"]

let base = types.HomeBlock::{
      l1 = whorf_l1
    , l2 = whorf_l2
    , l3 = whorf_l3
    , r1 = whorf_r1
    , r2 = whorf_r2
    , r3 = whorf_r3
    , thumb_l = base_thumb_l
    , thumb_r = base_thumb_r
}


let nav_l1 = [ "SW_APP",  "G(KC_GRV)", "TAB_L",    "TAB_R",   "KC_NO"]
let nav_r1 = ["KC_NO",    "KC_NO",     "KC_UP",    "KC_NO",   "KC_NO"]
let nav_l2 = ["OS_LSFT",  "OS_LCTL",   "OS_LALT",  "OS_LGUI", "OSM(MOD_MEH)"]
let nav_r2 = ["BACK",     "KC_LEFT",   "KC_DOWN",  "KC_RGHT", "FWD"]
let nav_l3 = ["G(KC_Z)",  "G(KC_X)",   "G(KC_C)",  "LLOCK",   "G(KC_V)"]
let nav_r3 = ["KC_NO",    "KC_NO",     "KC_NO",    "KC_NO",   "KC_NO"]
let nav_thumb_l = ["KC_NO", "KC_NO"]
let nav_thumb_r = ["KC_NO", "KC_NO" ]

let navigation = types.HomeBlock::{
      l1 = nav_l1
    , l2 = nav_l2
    , l3 = nav_l3
    , r1 = nav_r1
    , r2 = nav_r2
    , r3 = nav_r3
    , thumb_l = nav_thumb_l
    , thumb_r = nav_thumb_r
}

let number_l1 = ["KC_LBRC", "KC_7", "KC_8", "KC_9", "KC_RBRC"]
let number_r1 = ["KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO"]
let number_l2 = ["KC_SCLN", "KC_4", "KC_5", "KC_6", "KC_EQL"]
let number_r2 = ["OSM(MOD_MEH)", "OSM(MOD_RGUI)", "OSM(MOD_RALT)", "OSM(MOD_RCTL)", "OSM(MOD_RSFT)"]
let number_l3 = ["KC_GRV", "KC_1", "KC_2", "KC_3", "KC_MINS"]
let number_r3 = ["KC_NO", "KC_NO", "KC_NO", "KC_BSLS", "KC_SLSH"]
let number_thumb_l = ["KC_0", "OSM(MOD_LSFT)"]
let number_thumb_r = ["OSM(MOD_LCTL)", "OSL(_FUN)"]

let number = types.HomeBlock::{
      l1 = number_l1
    , l2 = number_l2
    , l3 = number_l3
    , r1 = number_r1
    , r2 = number_r2
    , r3 = number_r3
    , thumb_l = number_thumb_l
    , thumb_r = number_thumb_r
}

let fun_l1 = ["KC_NO", "KC_F7", "KC_F8", "KC_F9", "KC_F10"]
let fun_r1 = ["KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO"]
let fun_l2 = ["KC_NO", "KC_F4", "KC_F5", "KC_F6", "KC_F11"]
let fun_r2 = ["OSM(MOD_MEH)", "OSM(MOD_RGUI)", "OSM(MOD_RALT)", "OSM(MOD_RCTL)", "OSM(MOD_RSFT)"]
let fun_l3 = [ "KC_NO", "KC_F1", "KC_F2", "KC_F3", "KC_F12"]
let fun_r3 = [ "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO"]
let fun_thumb_l = ["LT(1,KC_SPC)", "OSM(MOD_LSFT)"]
let fun_thumb_r = ["OSM(MOD_LCTL)", "OSL(_FUN)"]

let function = types.HomeBlock::{
    l1 = fun_l1
  , l2 = fun_l2
  , l3 = fun_l3
  , r1 = fun_r1
  , r2 = fun_r2
  , r3 = fun_r3
  , thumb_l = fun_thumb_l
  , thumb_r = fun_thumb_r
}

in {
    base = base,
    navigation = navigation,
    number = number,
    function = function
}
