-- let Prelude = ../Prelude.dhall
let types = ../types.dhall
let kp = types.Binding.kp
let Combo = types.Combo

let base = types.Layer::
{ name = "_BASE"
, keys =
   [
     "KC_W",    "KC_L", "KC_Y", "KC_P",    "KC_B",       "KC_Z", "KC_F", "KC_O", "KC_U", "KC_DOT",
     "KC_C",    "KC_R", "KC_S", "KC_D",    "KC_G",       "KC_M", "KC_N", "KC_E", "KC_I", "KC_A",
     "KC_COMM", "KC_J", "KC_V", "KC_K",    "KC_X",       "KC_SLSH",  "KC_H", "KC_LPRN", "KC_RPRN", "KC_UNDS",
                               "KC_SPC", "NAV_SPC",     "OS_LCTL",   "KC_T"
   ]
}
let navigation = types.Layer::
{ name = "_NAV"
, keys =
   [
    "SW_APP",   "G(KC_GRV)",  "BACK",    "FWD",      "KC_NO",           "KC_NO",  "TAB_L",    "KC_UP", "TAB_R", "KC_RPRN",
    "OS_LSFT",  "OS_LCTL",    "OS_LALT", "OS_LGUI",  "OSM(MOD_MEH)",    "KC_NO",  "KC_LEFT",  "KC_DOWN",      "KC_RIGHT",   "KC_RGHT",

           "KC_NO",      "SPACE_L",      "KC_NO",      "SPACE_R",      "KC_NO",
           "KC_NO",      "KC_LBRC",      "KC_RBRC",    "KC_GT",      "KC_LT",

           "KC_NO",        "KC_NO",
           "OS_LCTL",      "KC_SPACE"
   ]
}
let symbols = types.Layer::
{ name = "_SYM"
, keys = [ -- symbol, reachable via combos.
                          "KC_TILD", "KC_PPLS", "KC_PAST", "KC_HASH", "KC_NO",
                          "KC_NO",   "KC_HASH", "KC_AT",   "KC_CIRC", "KC_DOT",

                          "KC_LT", "KC_PIPE", "KC_MINS", "KC_GT", "KC_BSLS",
                          "KC_GRV", "KC_LCBR", "KC_LBRC", "KC_RBRC", "KC_RCBR",

                          "KC_COMM", "KC_EXLM", "KC_PERC", "KC_QUES", "KC_NO",
                          "KC_SLSH", "KC_AMPR", "KC_LPRN", "KC_RPRN", "KC_UNDS",

                          "TO(0)",          "OSM(MOD_LSFT)",
                          "OSM(MOD_RCTL)",  "TO(_NUM)"
         ]
}
let numbers = types.Layer::
{ name = "_NUM"
, keys = [
           "KC_NO", "KC_PLUS", "KC_MINS", "KC_P",  "KC_NO",        "KC_NO", "KC_NO", "KC_NO", "KC_NO", "KC_NO",
           "KC_7",  "KC_5",    "KC_3",    "KC_1",  "NUM_G",        "KC_NO", "KC_2",  "KC_4",  "KC_6",  "KC_8",
           "KC_NO", "KC_J",    "KC_NO",   "KC_9",   "KC_K",        "KC_X", "KC_0", "KC_SLSH", "KC_COMM", "KC_DOT",
                                          "NAV_SPC", "KC_NO",      "KC_NO",   "TO(3)"
         ]
}

let mods = types.Layer::
{ name = "_MODS"
, keys = [ -- MODS
              "KC_NO", "KC_NO",  "KC_NO",   "KC_NO", "KC_NO",     "KC_NO", "KC_NO",   "KC_NO",         "KC_NO",   "KC_NO",
              "KC_NO", "KC_NO",  "KC_NO",   "KC_NO", "KC_NO",     "KC_NO", "OS_LGUI", "OS_LALT",       "OS_LCTL", "OS_LSFT",
              "KC_NO", "KC_NO",  "KC_NO",   "KC_NO", "KC_NO",     "KC_NO", "KC_NO",   "OSM(MOD_RALT)", "KC_NO",   "KC_NO",

              "TO(0)",          "OSM(MOD_LSFT)",
              "OSM(MOD_RCTL)",  "TO(_NUM)"
         ]
}

let keymap = types.Keymap::{
    , name = "Jans Canary Layout with the T on the thumb"
    , layers = [base,navigation, symbols,numbers,mods]
    , combos = ./combos.dhall
}
in keymap
