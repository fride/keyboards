let layers = ./layers.dhall
let types = ../types.dhall
let Ferris = ./ferris.dhall

-- see ~/Documents/org/roam/20230103091346-my_keyboards.org

-- see https://cdn.discordapp.com/attachments/902300082433560606/974645619610243084/unknown.png

let nav = types.HomeBlock::{
  l1 = ["SW_APP",         "KC_ESC",        "TAB_L",            "TAB_R",           "KC_NO"]
, r1 = ["KC_NO",          "KC_BSPC",      "KC_UP",            "KC_DEL",         "KC_Q"]

, l2 = ["OS_LSFT",      "OS_LCTL",        "OS_LALT",          "OS_LGUI",         "OSM(MOD_MEH)"]
, r2 = ["FWD",          "KC_LEFT",        "KC_DOWN",         "KC_RIGHT",           "BACK"]

, l3 = ["KC_NO",          "KC_NO",         "KC_NO",            "KC_NO",           "KC_NO"]
, r3 = ["KC_NO",          "KC_NO",         "KC_NO",            "KC_NO",           "CPYPASTE"]
, thumb_l = ["KC_NO", "MEH_T(KC_SPC)"]
, thumb_r = ["A(KC_SPC)", "OSL(_FUN)"]
}

let janMak = types.HomeBlock::{
   l1 = ["KC_X",      "KC_C" ,       "KC_L",        "KC_D",     "KC_B"]
 , l2 = ["KC_R",      "KC_S",        "KC_N",        "KC_T",     "KC_K"]
 , l3 = ["KC_V",      "KC_W",        "KC_M",        "KC_G",     "KC_Q"]


 , r1 = ["KC_J",    "KC_Y",  "KC_O",      "KC_U",   "KC_QUOT"] -- Z is used more often then ; and in a flow.
 , r2 = ["KC_P",    "KC_H",  "KC_E",      "KC_I",   "REPEAT"]
 , r3 = ["KC_Z",    "KC_F",  "KC_COMM",   "KC_DOT", "KC_SLSH"]

 , thumb_l = ["LT(_NAV,KC_SPC)",  "OSL(_ALPHA2)"]
 , thumb_r = ["OSL(_NUM)",        "KC_A"]
}
let handsDown2 = types.HomeBlock::{
   l3 = ["KC_W",       "KC_X" ,"KC_M",  "KC_G",     "KC_Z"]
 , l2 = ["KC_C",       "KC_S",        "KC_N",        "KC_T",    "KC_K"]
 , l1 = ["KC_P",       "KC_F",        "KC_L",        "KC_D",            "KC_V"]


 , r3 = ["KC_SCLN",    "KC_COMM",    "KC_DOT",   "KC_QUOT",   "KC_Q"] -- Z is used more often then ; and in a flow.
 , r2 = ["KC_J",       "KC_A",  "KC_E",   "KC_I",   "KC_H"]
 , r1 = ["KC_MINS",    "KC_U", "KC_O",      "KC_Y", "KC_B"]

 , thumb_l = ["KC_R",  "OSL(_ALPHA2)"]
 , thumb_r = ["OS_LSFT",        "LT(_NAV,KC_SPC)"]
}

let handsDown = types.HomeBlock::{
    l1 = ["KC_P",       "KC_F",        "KC_L",        "KC_D",            "KC_V"]
  , l2 = ["KC_C",       "KC_S",        "KC_N",        "LSFT_T(KC_T)",    "KC_K"]
  , l3 = ["KC_W",       "LCTL_T(KC_X)","LALT_T(KC_M)",  "LGUI_T(KC_G)",     "KC_Z"]

 , r1 = ["KC_MINS",    "KC_U", "KC_O",      "KC_Y", "KC_B"]
 , r2 = ["KC_COMM",    "RSFT_T(KC_A)",      "KC_E",   "LT(_NUM,KC_I)",   "KC_H"]
 , r3 = ["KC_J",       "RGUI_T(KC_DOT)",    "RALT_T(KC_EQL)",   "RCTL_T(KC_SLSH)",   "KC_QUOT"] -- Z is used more often then ; and in a flow.

 , thumb_l = ["LT(_NAV,KC_R)",  "OS_LSFT"]
 , thumb_r = ["OS_LSFT",        "LT(_NUM,KC_SPC)"]
}


let alpha2 = types.HomeBlock::{
   l3 = ["KC_W",       "LCTL_T(KC_X)","LALT_T(KC_M)",  "LGUI_T(KC_G)",     "KC_Z"]
 , l2 = ["KC_C",       "KC_S",        "KC_N",        "LSFT_T(KC_T)",    "KC_K"]
 , l1 = ["KC_P",       "KC_F",        "KC_L",        "KC_D",            "KC_V"]


 , r3 = ["KC_SCLN",    "RGUI_T(KC_COMM)",    "RALT_T(KC_DOT)",   "RCTL_T(KC_QUOT)",   "KC_Q"] -- Z is used more often then ; and in a flow.
 , r2 = ["KC_J",       "LALT(KC_A)",  "KC_E",   "LT(_NUM,KC_I)",   "LALT(KC_S)"]
 , r1 = ["KC_MINS",    "LALT(KC_U)", "LALT(KC_O)",      "KC_Y", "KC_B"]

 , thumb_l = ["LT(_NAV,KC_R)",  "OSL(_ALPHA2)"]
 , thumb_r = ["OS_LSFT",        "LT(_NUM,KC_SPC)"]
}

let symbol = types.HomeBlock::{
 , l1 = [ "KC_GRV",   "KC_LT",  "KC_ASTR", "KC_GT",   "KC_NO" ]
 , l2 = [ "KC_BSLS", "KC_LPRN", "KC_PIPE", "KC_HASH", "KC_RPRN" ]
 , l3 = [ "KC_AT",   "KC_EQL",  "KC_AMPR",  "KC_PLUS", "KC_NO" ]

 , r1 = [ "KC_QUES", "KC_LBRC", "KC_UNDS", "KC_MINS", "KC_RBRC" ]
 , r2 = [ "KC_EXLM", "KC_LCBR", "KC_TILD", "KC_SLSH", "KC_RCBR" ]
 , r3 = [ "KC_NO",   "KC_DLR",  "KC_CIRC", "KC_PERC", "KC_NO" ]
 , thumb_l = [ "NAV_SPC", "OS_LSFT" ]
 , thumb_r = [ "OS_LCTL", "KC_TRNS" ]
 }

let code = types.HomeBlock::{
 , l1 = [ "KC_NO",   "KC_ASTR", "KC_HASH",  "KC_DLR",   "KC_NO" ]
 , l2 = [ "KC_BSLS", "KC_GRV",  "KC_TILDE", "S(KC_6)",  "KC_NO" ]
 , l3 = [ "KC_NO",   "KC_NO",   "KC_NO",     "KC_NO",   "KC_NO" ]

 , r1 = [ "KC_NO", "S(KC_COMM)", "S(KC_DOT)", "KC_MINS", "KC_NO" ]
 , r2 = [ "KC_NO", "KC_LBRC",    "KC_RBRC",   "KC_PIPE", "KC_SLSH" ]
 , r3 = [ "KC_NO", "KC_NO",   "KC_NO",   "KC_NO",   "KC_NO" ]
 , thumb_l = [ "NAV_SPC", "OS_LSFT" ]
 , thumb_r = [ "OS_LCTL", "KC_TRNS" ]
 }

 let punct = types.HomeBlock::{
 , l1 = [ "KC_NO",    "KC_AT",   "S(KC_SLSH)", "S(KC_QUOT)", "KC_NO" ]
 , l2 = [ "KC_PAST",  "KC_PERC", "S(KC_1)",    "KC_MINS",  "KC_NO" ]
 , l3 = [ "KC_NO",    "KC_NO",   "KC_NO",      "KC_NO",   "KC_NO" ]

 , r1 = [ "KC_NO", "KC_LPRN", "KC_RPRN", "KC_SCLN", "KC_NO" ]
 , r2 = [ "KC_NO", "KC_LCBR", "KC_RCBR", "KC_AMPR", "KC_COLON" ]
 , r3 = [ "KC_NO", "KC_NO",   "KC_NO",   "KC_NO",   "KC_NO" ]
 , thumb_l = [ "NAV_SPC", "OS_LSFT" ]
 , thumb_r = [ "OS_LCTL", "KC_TRNS" ]
 }


let numberBlock = types.HomeBlock::{
  l1 = ["KC_LBRC",      "KC_7",          "KC_8",        "KC_9",     "KC_RBRC"]
, l2 = ["OS_LSFT",      "KC_4",          "KC_5",        "KC_6",     "KC_PLUS"]
, l3 = ["KC_PIPE",      "KC_1",          "KC_2",        "KC_3",     "KC_DLR"]

, r1 = ["KC_BSLS",    "KC_7",          "KC_8",             "KC_9",     "KC_PSLS"]
, r2 = ["KC_PIPE",    "KC_LGUI",       "KC_RALT",          "KC_RCTL",  "KC_RSFT"]
, r3 = ["KC_NO",      "KC_4",          "KC_5",             "KC_6",      "KC_J"]

, thumb_l = ["KC_0", "KC_NO"]
, thumb_r = ["KC_LCTL", "KC_LGUI"]
}

let number = types.HomeBlock::{
  l1 = ["KC_LBRC",      "KC_7",          "KC_8",        "KC_9",     "KC_RBRC"]
, l2 = ["KC_7",         "KC_5",          "KC_3",        "KC_1",     "KC_PLUS"]
, l3 = ["KC_PIPE",      "KC_1",          "KC_2",        "KC_9",     "KC_DLR"]

, r1 = ["KC_BSLS",    "KC_7",          "KC_8",             "KC_9",     "KC_PSLS"]
, r2 = ["KC_PIPE",    "KC_2",          "KC_4",             "KC_6",     "KC_8"]
, r3 = ["KC_NO",      "KC_0",          "KC_COMM",          "KC_DOT",   "KC_SLSH"]

, thumb_l = ["KC_SPACE", "OS_LCTL"]
, thumb_r = ["KC_NO",    "KC_SPACE"]
}



let meta = types.HomeBlock::{
  l1 = ["KC_TRNS",       "KC_TRNS",      "KC_COLON",    "KC_ESC",    "KC_TRNS"]
, l2 = ["KC_TRNS",       "KC_PERC",      "KC_SLSH",     "KC_ENTER",  "KC_MEH"]
, l3 = ["KC_TRNS",       "KC_TRNS",      "KC_TRNS",     "S(KC_1)",   "KC_TRNS"]

, r1 = ["KC_TRNS",    "KC_TRNS",         "KC_TRNS",          "KC_TRNS",    "KC_TRNS"]
, r2 = ["KC_COMM",    "OS_LGUI",         "OS_LALT",          "OS_LCTL",    "KC_LSFT"]
, r3 = ["KC_TRNS",    "KC_TRNS",         "KC_TRNS",          "KC_TRNS",    "KC_TRNS"]

, thumb_l = ["KC_TRNS", "KC_TRNS"]
, thumb_r = ["KC_TRNS", "KC_NO"]
}

let keymap =
      types.Keymap::{
      , name = "Jan Layout"
      , layout = "LAYOUT_split_3x5_2"
      , layers =
        [  { name = "_ALPHA1", keys = Ferris.mk_layer janMak  }
        ,  { name = "_ALPHA2", keys = Ferris.mk_layer alpha2  }
        ,  { name = "_SYM1", keys = Ferris.mk_layer symbol }
        ,  { name = "_SYM2", keys = Ferris.mk_layer symbol }
        ,  { name = "_NAV", keys = Ferris.mk_layer nav }
        ,  { name = "_NUM", keys = Ferris.mk_layer number }
        ,  { name = "_FUN", keys = Ferris.mk_layer layers.function }
        ,  { name = "_META", keys = Ferris.mk_layer meta }
        ]
      , combos = ./combos.dhall
      }
in  keymap
