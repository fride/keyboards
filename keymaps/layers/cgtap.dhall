let types = ../../types.dhall
in  types.HomeBlock::{
    , l1 = [ "KC_Q", "KC_P", "KC_L", "KC_C",  "KC_J" ]
    , l2 = [ "KC_R",    "KC_N",    "KC_T",   "KC_S",  "KC_G"]
    , l3 = [ "KC_Z", "KC_B",    "KC_M",   "KC_W",  "KC_V" ]

    , r1 = [ "KC_X",   "KC_F",    "KC_O",   "KC_U", "REPEAT" ]
    , r2 = [ "KC_Y",   "KC_H",    "KC_E",  "KC_I", "KC_A"]
    , r3 = [ "KC_K",   "KC_D",    "KC_W",  "KC_V", "KC_Z" ]
    , thumb_l = [ "_SPACE_", "OSL(_NAV)"]
    , thumb_r = [ "OS_LCTL", "LT(_NUM,KC_L)"]
    }
{-
    q p l c j   x f o u /
    r n t s g   y h e i a
    z b m w v   k d ' , .
-}
