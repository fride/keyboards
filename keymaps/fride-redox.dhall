let layers = ./layers.dhall
let types = ../types.dhall
let Redox = ./redox.dhall

-- see ~/Documents/org/roam/20230103091346-my_keyboards.org

-- see https://cdn.discordapp.com/attachments/902300082433560606/974645619610243084/unknown.png
let yanmak = types.HomeBlock::{
   l1 = ["KC_B",       "KC_H",         "KC_Y",         "KC_G",           "KC_Q"]
 , r1 = ["KC_Z",       "KC_C",         "KC_O",         "KC_U",           "KC_QUOT"]

 , l2 = ["KC_R",  "LT(_NUM,KC_L)",  "KC_S",       "LSFT_T(KC_T)",   "KC_D"]
 , r2 = ["KC_M",  "RSFT_T(KC_N)",   "KC_E",       "LT(_NUM,KC_I)",  "KC_A"]

 , l3 = ["KC_X",   "KC_K",  "KC_F",      "KC_P",         "KC_J"]
 , r3 = ["KC_W",   "KC_V",  "KC_COMM",   "KC_DOT",      "KC_SLSH"]

 , thumb_l = ["LT(_NAV, KC_SPC)", "OS_LSFT"]
 , thumb_r = ["OSL(_NUM)", "KC_E"]
}
let yanmak2 = types.HomeBlock::{
   l1 = ["KC_NO",       "KC_NO",         "KC_NO",         "KC_NO",           "A(KC_S)"]
 , r1 = ["KC_NO",       "KC_Z",          "A(KC_O)",      "A(KC_U)",         "A(KC_S)"]

 , l2 = ["KC_Q",  "KC_NO",      "KC_NO",            "KC_NO",   "KC_NO"]
 , r2 = ["KC_NO", "KC_COLON",  "KC_LPRN",         "KC_RPRN",           "A(KC_A)"]

 , l3 = ["KC_NO",           "KC_NO", "KC_NO",   "KC_NO",      "KC_NO"]
 , r3 = ["KC_SLSH",        "KC_W", "KC_NO",   "KC_NO",      "KC_NO"]

 , thumb_l = ["KC_UNDS", "OS_LSFT"]
 , thumb_r = ["OSL(_NUM)", "OSL(_ALPHA2)"]
}


let l2 = types.HomeBlock::{
   l1 = ["KC_B",       "KC_H",         "KC_Y",         "KC_G",           "KC_Q"]
 , r1 = ["KC_Z",       "A(KC_S)",         "A(KC_O)",         "A(KC_U)",           "KC_QUOT"]

 , l2 = ["KC_R",  "LT(_NAV,KC_L)",          "KC_S",            "LSFT_T(KC_T)",   "KC_D"]
 , r2 = ["KC_M",  "RSFT_T(KC_N)",  "A(KC_A)",  "KC_I",           "REPEAT"]

 , l3 = ["KC_X",           "LCTL_T(KC_K)", "LALT_T(KC_F)",   "LGUI_T(KC_P)",      "KC_J"]
 , r3 = ["KC_SLSH",        "RGUI_T(KC_V)", "RALT_T(KC_COMM)",   "RCTL_T(KC_DOT)",      "KC_W"]

 , thumb_l = ["KC_Q", "KC_Z"]
 , thumb_r = ["KC_Q", "KC_E"]
}

let number = types.HomeBlock::{
  l1 = ["KC_GRV",          "KC_EQL",        "KC_MINS",           "KC_UNDS",      "S(KC_8)"]
, l2 = ["LSFT_T(KC_7)",    "LCTL_T(KC_5)",  "KC_3",              "LSFT_T(KC_1)",   "S(KC_EQL)"]
, l3 = ["KC_NO",           "KC_COLON",      "LALT_T(KC_SCLN)",   "LGUI_T(KC_9)",  "KC_NO"]

, r1 = ["KC_BSLS",   "S(KC_7)",         "KC_DOT",             "KC_MINS",           "KC_SLSH"]
, r2 = ["KC_PIPE",   "RSFT_T(KC_2)",    "KC_4",               "KC_6",              "KC_8"]
, r3 = ["KC_SLSH",   "RGUI_T(KC_0)",    "RALT_T(KC_COMM)",    "RCTL_T(KC_DOT)",    "KC_J"]

, thumb_l = ["MEH_T(KC_SPC)", "OS_LCTL"]
, thumb_r = ["REPEAT", "OS_LSFT"]
}



let nav = types.HomeBlock::{
  l1 = ["SW_APP",         "KC_ESC",        "TAB_L",            "TAB_R",           "KC_NO"]
, r1 = ["KC_NO",          "KC_BSPC",      "KC_UP",            "KC_DEL",         "KC_NO"]

, l2 = ["OS_LSFT",      "OS_LCTL",        "OS_LALT",          "OS_LGUI",         "OSM(MOD_MEH)"]
, r2 = ["FWD",          "KC_LEFT",        "KC_DOWN",         "KC_RIGHT",           "BACK"]

, l3 = ["KC_NO",          "KC_NO",         "KC_NO",            "KC_NO",           "KC_NO"]
, r3 = ["KC_NO",          "KC_NO",         "KC_NO",            "KC_NO",           "CPYPASTE"]
, thumb_l = ["KC_LSFT", "MEH_T(KC_SPC)"]
, thumb_r = ["REPEAT", "KC_LGUI"]
}

let keymap =
      types.Keymap::{
      , name = "Jan Layout"
      , layout = "LAYOUT_split_3x5_2"
      , layers =
        [  { name = "_ALPHA1", keys = Redox.mk_layer yanmak }
        ,  { name = "_ALPHA2", keys = Redox.mk_layer yanmak2 }
        ,  { name = "_ALPHA2_UPPER", keys = Redox.mk_layer l2 }
        ,  { name = "_NAV", keys = Redox.mk_layer nav }
        ,  { name = "_NUM", keys = Redox.mk_layer number }
        ,  { name = "_FUN", keys = Redox.mk_layer layers.function }
        ]
      , combos = ./combos.dhall
      }
in  keymap
