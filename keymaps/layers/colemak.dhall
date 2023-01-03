let l1 = ["KC_Q",       "KC_W", "KC_F",         "KC_P",         "KC_B"]
let l2 = ["LT(2,KC_A)", "KC_R", "KC_S",         "LSFT_T(KC_T)", "KC_G"]
let l3 = [ "KC_Z",      "KC_X", "LALT_T(KC_C)", "LGUI_T(KC_D)", "KC_V"]

let r1 = ["KC_J", "KC_L",         "KC_U", "KC_Y", "KC_QUOT"]
let r2 = ["KC_M", "RSFT_T(KC_N)", "KC_E", "KC_I", "LT(2,KC_O)"]
let r3 = ["KC_K","RGUI_T(KC_H)", "RALT_T(KC_COMM)", "KC_DOT", "ANY(REPEAT)"]

let thumb_l = ["LT(1,KC_SPC)", "OSM(MOD_LSFT)"]
let thumb_r = ["OSM(MOD_LCTL)", "OSL(2)"]

in types.HomeBlock::{
      l1 = l1
    , l2 = l2
    , l3 = l3
    , r1 = r1
    , r2 = r2
    , r3 = r3
    , thumb_l = thumb_l
    , thumb_r = thumb_r
}

