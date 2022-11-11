-- let Prelude = ../Prelude.dhall
let types = ../types.dhall
let kp = types.Binding.kp
let Combo = types.Combo

let NUM = \(kc: Text) -> "LT(_NUM,${kc})"
let SYM = \(kc: Text) -> "LT(_SYM,${kc})"
-- The base layer is based on https://sites.google.com/alanreiser.com/handsdown/home/hands-down-neu
-- I decided to use those symbols that would normally be on the base layer (short cuts).
-- its also very convenient to write arrows-> <- => <= without any layer switches.

{-
[ -- all keys except ` and [] are on the
     "KC_J",    "KC_G",  "KC_H",   "KC_P",    "KC_V",       "KC_Q",     "KC_COMM", "KC_DOT", "KC_EQL", "KC_UNDS",
     "KC_R",    "KC_S",  "KC_N",   "KC_T",    "KC_B",       "KC_SLSH",  "KC_A",    "KC_E",   "KC_I",   "KC_C",
     "KC_MINS", "KC_M",  "KC_F",   "KC_D",    "KC_K",       "KC_X",     "KC_U",    "KC_O",   "KC_Y",   "KC_W",
                                   "KC_L",    "OS_LCTL",    "OS_LSFT",  "NAV_SPC"
   ]
-}

let hd-neu = [ -- based on hands down neu from https://cdn.discordapp.com/attachments/894633019061698601/896516530517467197/Screenshot_2021-10-05_2.02.47_PM.png
                  -- https://sites.google.com/alanreiser.com/handsdown/home/hands-down-neu
                   "KC_W",       "KC_F",    "KC_M",   "KC_P",    "KC_V",       "KC_Z",     "KC_COMM",  "KC_DOT", "KC_QUOT", "KC_SLSH",
                   SYM "KC_R",   "KC_S",    "KC_N",   "KC_T",    "KC_G",       "KC_J",     "KC_A",    "KC_E",    "KC_I",     SYM "KC_H",
                   "KC_X",       "KC_C",    "KC_L",   "KC_D",    "KC_B",       "KC_Q",     "KC_U",    "KC_O",    "KC_Y",    "KC_K",
                                                 "NAV_SPC",   "OS_LCTL",    "OS_LSFT",  "OS_LSFT"
                ]
let base = types.Layer::
{ name = "_BASE"
, keys = ../layouts/boo.dhall
}

let navigation = types.Layer::
{ name = "_NAV"
, keys =
   [
    "SW_APP",   "G(KC_GRV)",  "BACK",    "FWD",      "KC_NO",           "KC_NO",  "TAB_L",    "KC_UP", "TAB_R", "KC_RPRN",
    "OS_LSFT",  "OS_LCTL",    "OS_LALT", "OS_LGUI",  "OSM(MOD_MEH)",    "KC_NO",  "KC_LEFT",  "KC_DOWN",      "KC_RIGHT",   "KC_RGHT",
    "KC_NO",      "SPACE_L",      "KC_NO",      "SPACE_R",      "KC_NO",       "KC_NO",      "KC_LBRC",      "KC_RBRC",    "KC_GT",      "KC_LT",

           "KC_NO",        "KC_NO",
           "OS_LCTL",      "KC_SPACE"
   ]
}
{-
    see the https://www.neo-layout.org/ for an idea.
-}
let neo-navigation = types.Layer::
{ name = "_NAV_NEO"
, keys =
   [
    "KC_NO",    "KC_NO",   "KC_UP",   "FWD",      "KC_NO",               "KC_NO",  "KC_7",   "KC_8",  "KC_9",  "KC_RPRN",
    "KC_NO",    "KC_LEFT", "KC_DOWN", "KC_RIGHT", "OSM(MOD_MEH)",        "KC_NO",  "KC_4",   "KC_5",  "KC_6",  "KC_RGHT",
    "KC_NO",    "SPACE_L", "KC_NO",   "SPACE_R",  "KC_NO",               "KC_NO",  "KC_1",   "KC_2",  "KC_3",  "KC_LT",
                                      "KC_0",    "KC_NO",                "KC_NO",  "KC_NO"
   ]
}

let symbols = types.Layer::
{ name = "_SYM"
, keys = [ -- symbol, reachable via combos.
          "KC_TILD", "KC_PPLS", "KC_PAST", "KC_HASH", "KC_NO",     "KC_NO",   "KC_HASH", "KC_AT",   "KC_CIRC", "KC_DOT",
          "KC_LT", "KC_PIPE", "KC_MINS", "KC_GT", "KC_BSLS",      "KC_GRV", "KC_LCBR", "KC_LBRC", "KC_RBRC", "KC_RCBR",
          "KC_COMM", "KC_EXLM", "KC_PERC", "KC_QUES", "KC_NO",      "KC_SLSH", "KC_AMPR", "KC_LPRN", "KC_RPRN", "KC_UNDS",
          "TO(0)",          "OSM(MOD_LSFT)",            "OSM(MOD_RCTL)",  "TO(_NUM)"
         ]
}
let numbers = types.Layer::
{ name = "_NUM"
, keys = [
           "KC_J",   "NUM_G",   "KC_MINS", "KC_P",  "KC_NO",       "KC_Z",    "KC_COMM", "KC_DOT",  "KC_QUOT", "KC_SLSH",
           "KC_7",   "KC_5",    "KC_3",    "KC_1",  "NUM_G",       "KC_SLSH", "KC_2",    "KC_4",    "KC_6",    "KC_8",
           "KC_X",   "KC_C",    "KC_L",    "KC_9",  "KC_B",        "KC_Q",    "KC_0",    "KC_O",    "KC_Y",    "KC_K",
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
