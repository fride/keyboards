let types = ../../types.dhall
in  types.HomeBlock::{
    , l1 = [ "KC_QUOT", "KC_COMM", "KC_DOT", "KC_P",  "KC_Y" ]
    , l2 = [ "KC_A",    "KC_O",    "KC_E",   "KC_U",  "KC_I"] -- I could change i and u?
    , l3 = [ "KC_SCLN", "KC_Q",    "KC_J",   "KC_K",  "KC_X" ]

    , r1 = [ "KC_F",   "KC_G",    "KC_C",   "KC_R", "REPEAT" ]
    , r2 = [ "KC_D",   "KC_H",    "KC_T",  "KC_N", "KC_S"]
    , r3 = [ "KC_B",   "KC_M",    "KC_W",  "KC_V", "KC_Z" ]
    , thumb_l = [ "_SPACE_", "OSL(_NAV)"]
    , thumb_r = [ "OS_LCTL", "LT(_NUM,KC_L)"]
    }
{-
 ' , . p y   f g c r l /
  a o e u i  d h t n s -
  ; q j k x  b m w v z
-}
