let types = ../types.dhall

let nerts = [
  "KC_NO", "KC_7",  "KC_5",  "KC_3",  "KC_1",            "KC_9",                                       "KC_8", "KC_0", "KC_2",    "KC_4",   "KC_6",    "KC_NO",
  "KC_NO", "KC_W",  "KC_X",  "KC_M",  "KC_G",            "KC_J",  "KC_NO",                     "KC_NO", "KC_Z", "KC_COMM", "KC_LPRN",    "KC_RPRN",   "KC_QUOT", "KC_NO",
  "KC_NO", "KC_C",  "KC_S",  "KC_N",  "KC_T",            "KC_K",  "KC_NO",                     "KC_NO", "KC_DOT", "KC_A",    "KC_E",    "KC_I",   "KC_H",   "KC_NO",
  "KC_NO", "KC_P",  "KC_F",  "KC_L",  "KC_D",            "KC_V",  "KC_NO", "KC_NO",   "KC_NO", "KC_NO", "KC_MINS", "KC_U", "KC_O",     "KC_Y", "KC_B", "KC_SLSH",
  "KC_NO", "KC_NO", "KC_DOWN", "KC_UP", "LT(_NAV,KC_R)", "KC_NO", "KC_NO", "KC_NO", "OS_LSFT", "LT(_NUM,KC_SPACE)", "KC_LEFT", "KC_RIGHT", "KC_NO", "KC_NO"
]

let nav = [
  "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO",
  "KC_NO", "SW_APP", "KC_NO", "TAB_L", "TAB_R", "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_BSPC", "KC_UP", "KC_DEL", "KC_NO", "KC_NO",
  "KC_NO", "OS_LSFT", "OS_LCTL", "OS_LALT", "OS_LGUI", "OS_LSFT", "KC_NO", "KC_NO", "KC_NO", "KC_LEFT", "KC_DOWN", "KC_RGHT", "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO",
      "KC_NO"
]

let keymap =
      types.Keymap::{
      , name = "Jan Layout"
      , layout = "LAYOUT"
      , layers =
        [  { name = "_ALPHA1", keys = nerts }
        ,  { name = "_ALPHA2", keys = nerts }
        ,  { name = "_ALPHA2_UPPER", keys = nerts }
        ,  { name = "_NAV", keys = nav }
        ,  { name = "_NUM", keys = nerts  }
        ,  { name = "_FUN", keys = nerts }
        ]
      , combos = ./combos-redox.dhall
      }
in  keymap
