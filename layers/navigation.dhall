let types = ../types.dhall
in types.Layer::{
      , name = "_NAV"
      , keys =
        [ "SW_APP" ,  "G(KC_GRV)" , "BACK" ,    "FWD" ,     "KC_NO" ,             "KC_NO" ,   "TAB_L" ,   "KC_UP" ,   "TAB_R" ,    "KC_RPRN"
        , "OS_LSFT" , "OS_LCTL" ,   "OS_LALT" , "OS_LGUI" , "OSM(MOD_MEH)" ,      "KC_NO" ,   "KC_LEFT" , "KC_DOWN" , "KC_RIGHT" , "KC_RGHT"
        ,  "KC_NO" ,  "SPACE_L" ,   "KC_NO" ,   "SPACE_R" , "KC_NO" ,             "KC_NO" ,   "KC_LBRC" , "KC_RBRC" ,  "KC_GT" ,   "LLOCK"
                                              , "KC_NO" ,   "KC_NO" ,             "OS_LCTL" , "KC_SPACE"
        ]
      }

