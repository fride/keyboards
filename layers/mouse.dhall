let types = ../types.dhall
in types.Layer::
{ name = "_MOUSE"
, KEYS = [ -- MODS
              "KC_NO", "KC_NO",  "KC_NO",   "KC_NO", "KC_NO",     "KC_NO", "KC_NO",   "KC_NO",         "KC_NO",   "KC_NO",
              "KC_NO", "KC_NO",  "KC_NO",   "KC_NO", "KC_NO",     "KC_NO", "OS_LGUI", "OS_LALT",       "OS_LCTL", "OS_LSFT",
              "KC_NO", "KC_NO",  "KC_NO",   "KC_NO", "KC_NO",     "KC_NO", "KC_NO",   "OSM(MOD_RALT)", "KC_NO",   "KC_NO",
              "TO(0)",          "OSM(MOD_LSFT)",        "OSM(MOD_RCTL)",  "TO(_NUM)"
         ]
}
