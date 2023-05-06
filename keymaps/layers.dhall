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
  nerps: https://github.com/GalileoBlues/Layout-Wiki/wiki/AKL-layouts#nerps
  x l d p v  z k o u ;
  n r t s g  y h e i a /
  q j m c w  b f ' , .
-}

let nerps_l1 = ["KC_X",       "KC_L",         "KC_D",            "KC_P",         "KC_V"]
let nerps_r1 = ["KC_Z",       "KC_K",         "KC_O",            "KC_U",         "REPEAT"]
let nerps_l2 = ["KC_N",       "KC_R",         "KC_T",            "LSFT_T(KC_S)", "KC_G"]
let nerps_r2 = ["KC_Y",       "LSFT_T(KC_H)", "KC_E",            "LT(_NUM,KC_I)", "LT(_NUM,KC_A)"]
let nerps_l3 = ["KC_Q",       "KC_J",         "LALT_T(KC_M)",    "LGUI_T(KC_C)", "KC_W"]
let nerps_r3 = ["KC_B",       "LGUI_T(KC_F)", "LALT_T(KC_QUOT)", "KC_COMM",      "KC_DOT"]

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

let base_thumb_l = ["NAV_SPC", "OSM(MOD_LSFT)"]
let base_thumb_r = ["OSM(MOD_LCTL)", "REPEAT"]

let base = types.HomeBlock::{
      l1 = nerps_l1
    , l2 = nerps_l2
    , l3 = nerps_l3
    , r1 = nerps_r1
    , r2 = nerps_r2
    , r3 = nerps_r3
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
    l1 = [ "KC_J",    "NUM_G",  "KC_NO",    "KC_P",   "KC_NO"]
   , l2 = ["KC_7",   "KC_5",   "KC_3",   "KC_1",  "NUM_G"]
    ,l3 = ["SLASH",    "KC_X",   "KC_NO",    "KC_9",  "KC_NO"]
    ,r1 = ["KC_BSLS",   "KC_COMM", "KC_DOT",  "KC_MINS", "KC_SLSH"]
    ,r2 = ["KC_SLSH",  "KC_2",   "KC_4",    "KC_6",   "KC_8"]
    ,r3 = ["KC_P",     "KC_0",    "KC_O",    "KC_K",    "KC_J"]
    , thumb_l = ["LT(_NAV, KC_SPC)", "OS_LSFT"]
    , thumb_r = ["REPEAT", "CANCEL"]
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

-- https://o-x-e-y.github.io/layouts/sturdy/index.html
let sturdy = types.HomeBlock::{
    , l1 = [ "KC_V",   "KC_M",   "KC_L",  "KC_C", "KC_P" ]
    , l2 = [ "KC_S",   "KC_T",   "KC_R",  "KC_D", "KC_Y"]
    , l3 = [ "KC_Z",   "KC_K",   "KC_Q",  "KC_G", "KC_W" ]

    , r1 = [ "KC_X",   "KC_F",  "KC_O",     "KC_U",    "KC_J" ]
    , r2 = [ "KC_DOT", "KC_N",  "KC_A",     "KC_E",    "KC_I"]
    , r3 = [ "KC_B",   "KC_H",  "KC_QUOT",  "KC_SCLN", "KC_COMM" ]
    , thumb_l = [ "_SPACE_", "OS_LSFT"]
    , thumb_r = [ "OS_LCTL", "OS_LSFT"]
    }
{-
  v m l c p  x f o u j
  s t r d y  . n a e i -
  z k q g w  b h ' ; ,
-}


{-
Dwarf (KLCord) (0 likes)
  f l h d v  z g o u .
  s r n t m  p y e i a
  x j b k q  c w ' , ;
-}
in {
    base = base,
    sturdy = sturdy,
    navigation = navigation,
    number = number,
    function = function,
    semimakJQ = types.HomeBlock:: {
      l1 = ["KC_F",       "KC_L",         "KC_H",            "KC_V",         "KC_Z"]
    , l2 = ["KC_S",       "KC_R",         "KC_N",            "LSFT_T(KC_T)", "KC_K"]
    , l3 = ["KC_X",       "KC_J",         "LALT_T(KC_B)",    "LGUI_T(KC_M)", "KC_Q"]
    , r1 = ["KC_QUOT",     "KC_W",         "KC_U",            "KC_O",         "KC_Y"]
    , r2 = ["KC_C",       "LSFT_T(KC_D)", "KC_E",            "KC_A",         "KC_I"]
    , r3 = ["KC_P",       "LGUI_T(KC_G)", "LALT_T(KC_COMM)", "KC_DOT",      "KC_SLSH"]
    , thumb_l = [ "_SPACE_", "OSL(_NAV)"]
    , thumb_r = [ "OS_LCTL", "OS_LSFT"]
    }
    -- v c l d k  x y o u '
    -- r s n t b  p h e i a
    --  g m w      f , .
    , hands_down_mod = types.HomeBlock:: {
      l1 = ["KC_V",        "KC_C",         "KC_L",            "KC_D",         "KC_K"]
    , l2 = ["KC_R",        "KC_S",         "KC_N",            "LSFT_T(KC_T)", "KC_B"]
    , l3 = ["KC_NO",       "KC_G",         "LALT_T(KC_M)",    "LGUI_T(KC_W)", "KC_Q"]
    , r1 = ["KC_X",        "KC_Y",         "KC_O",            "KC_U",         "KC_QUOT"]
    , r2 = ["KC_P",        "LSFT_T(KC_H)", "KC_E",            "KC_I",         "KC_A"]
    , r3 = ["KC_NO",       "LGUI_T(KC_F)", "LALT_T(KC_COMM)", "KC_DOT",      "KC_NO"]
    , thumb_l = [ "_SPACE_", "OSL(_NAV)"]
    , thumb_r = [ "OS_LCTL", "OS_LSFT"]
    },
    whorf = types.HomeBlock:: { -- https://github.com/whorfian/whorf
      l1 = ["KC_F",          "KC_L",         "KC_H",            "KC_D",         "KC_M"]
    , r1 = ["KC_V",          "KC_W",         "KC_O",            "KC_U",         "KC_COMM"]
    , l2 = ["LSFT_T(KC_S)",  "KC_R",         "KC_N",            "LT(_NAV,KC_T)",   "MEH_T(KC_K)"]
    , r2 = ["MEH_T(KC_G)",   "LT(_NAV,KC_Y)", "KC_A",            "LT(_NUM,KC_E)",  "RSFT_T(KC_I)"]
    , l3 = ["KC_X",       "KC_J",         "LALT_T(KC_B)",    "LGUI_T(KC_Z)", "KC_Q"]
    , r3 = ["KC_P",       "LGUI_T(KC_C)", "LALT_T(KC_QUOT)", "KC_SCLN",      "KC_DOT"]
    , thumb_l = [ "_SPACE_", "OSL(_NAV)"]
    , thumb_r = [ "OS_LCTL", "OS_LSFT"]
    },
    dwarf = types.HomeBlock:: {
      l1 = ["KC_F",          "KC_L",         "KC_H",            "KC_D",         "KC_V"]
    , r1 = ["KC_Z",          "KC_G",         "KC_O",            "KC_U",         "KC_DOT"]
    , l2 = ["LSFT_T(KC_S)",  "KC_R",         "KC_N",            "LT(_NAV,KC_T)",   "MEH_T(KC_M)"]
    , r2 = ["MEH_T(KC_P)",   "LT(_NAV,KC_Y)", "KC_E",            "LT(_NUM,KC_I)",  "RSFT_T(KC_A)"]
    , l3 = ["KC_X",       "KC_J",         "LALT_T(KC_B)",    "LGUI_T(KC_K)", "KC_Q"]
    , r3 = ["KC_C",       "LGUI_T(KC_W)", "LALT_T(KC_QUOT)", "KC_COMM",      "KC_SCLN"]
    , thumb_l = [ "_SPACE_", "OSL(_NAV)"]
    , thumb_r = [ "OS_LCTL", "OS_LSFT"]
    },
    isrt = types.HomeBlock::{
        , l1 = [ "KC_Y", "KC_L", "KC_C", "KC_M",  "KC_K" ]
        , l2 = [ "KC_I",  "KC_R",    "KC_S",   "KC_T",  "KC_G"]
        , l3 = [ "KC_X", "KC_W",    "KC_D",   "KC_V",  "KC_J" ]

        , r1 = [ "KC_Z",   "KC_F",    "KC_U",  "KC_COMM", "KC_QUOT" ]
        , r2 = [ "KC_B",   "KC_N",    "KC_E",  "KC_A", "KC_O"]
        , r3 = [ "KC_P",   "KC_H",    "KC_SLSH",  "KC_DOT", "KC_Q" ]
        , thumb_l = [ "_SPACE_", "OS_LSFT"]
        , thumb_r = [ "OS_LCTL", "OS_LSFT"]
    },
    ctgap = types.HomeBlock::{
    , l1 = [ "KC_Q", "KC_P", "KC_L", "KC_C",  "KC_J" ]
    , l2 = [ "KC_R",    "KC_N",    "KC_T",   "KC_S",  "KC_G"]
    , l3 = [ "KC_Z", "KC_B",    "KC_M",   "KC_W",  "KC_V" ]

    , r1 = [ "KC_X",   "KC_F",    "KC_O",   "KC_U", "REPEAT" ]
    , r2 = [ "KC_Y",   "KC_H",    "KC_E",  "KC_I", "KC_A"]
    , r3 = [ "KC_K",   "KC_D",    "KC_W",  "KC_V", "KC_Z" ]
    , thumb_l = [ "_SPACE_", "OSL(_NAV)"]
    , thumb_r = [ "OS_LCTL", "LT(_NUM,KC_L)"]
    }
            {-
                q p l c j   x f o u /
                r n t s g   y h e i a
                z b m w v   k d ' , .
            -}

}
