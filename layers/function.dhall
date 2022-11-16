let types = ../types.dhall
in types.Layer::
{ name = "_FUN"
, keys = [ -- MODS
              "KC_NO",   "KC_NO",  "KC_NO",   "KC_NO",   "KC_NO",     "KC_F11", "KC_F12", "KC_NO", "KC_NO", "KC_NO",
              "KC_LSFT", "KC_NO",  "KC_LALT", "KC_LGUI", "KC_NO",     "KC_F1",  "KC_F2", "KC_F3", "KC_F4", "KC_F5",
              "KC_NO",   "KC_NO",  "KC_NO",   "KC_NO",   "KC_NO",     "KC_F6",  "KC_F7", "KC_F8", "KC_F9", "KC_F10",
                   "NAV_SPC",          "OSM(MOD_LSFT)",        "OSM(MOD_RCTL)",  "KC_LSFT"
         ]
}

