let types = ../../types.dhall
in types.HomeBlock::{
    l1 = ["SW_APP" ,  "G(KC_GRV)" , "BACK" ,      "FWD" ,     "KC_NO"],
    l2 = ["OS_LSFT" , "OS_LCTL" ,   "OS_LALT" ,   "OS_LGUI" , "OSM(MOD_MEH)"],
    l3 = ["G(KC_Z)" , "G(KC_X)" ,   "G(KC_C)" ,   "G(KC_V)" , "KC_NO"],

    r1 = ["KC_NO" ,   "KC_BSPC" , "KC_UP" ,    "KC_DEL" ,    "KC_RPRN"],
    r2 = ["KC_NO" ,   "KC_LEFT" , "KC_DOWN" ,  "KC_RIGHT" ,  "KC_RGHT"],
    r3 = ["KC_NO" ,   "KC_LBRC" , "KC_RBRC" ,  "KC_GT" ,     "LLOCK"]
    ,thumb_l = ["NAV_SPC", "OS_LSFT"]
    ,thumb_r = ["OS_LCTL", "KC_RGUI"]
}

