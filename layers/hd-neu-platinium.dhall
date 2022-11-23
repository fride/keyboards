let types = ../types.dhall
let ___R___ = "KC_R"
let ___C___ = "KC_C"
let ___I___ = "LT(_NUMBLOCK, KC_I)"
let ___D___ = "LGUI_T(KC_D)"
let ___U___ = "RGUI_T(KC_U)"
let ___S___ = "LT(_FUN, KC_S)"
let ___T___ = "LT(_SYM, KC_T)"
let ___A___ = "LT(_SYM, KC_A)"
let ___M___ = "LALT_T(KC_M)"
let ___O___ = "RALT_T(KC_O)"
let _SPACE_ = "LT(_SYM,KC_SPC)"
let ___L___ = "LSFT_T(KC_L)"
{-
j  g  h  p qv   \| >& /* '" -
r  s  n  t  b   ,< a  e  c  i
x  f  m  d  k   z  u  o  w  y
            l   ␣
-}
in types.Layer::
{ name = "_BASE"
, keys = [
  "KC_J",  "KC_G",  "KC_H", "KC_P",  "KC_V",       "KC_BSLS", "DOT",  "SLASH", "QUOTE", "MINS",
  ___R___, ___S___, "KC_N", ___T___, "KC_B",       "COMM",   ___A___, "KC_E",   ___I___, ___C___,
  "KC_X",  "KC_F", ___M___, ___D___, "KC_K",       "KC_Z",   ___U___, ___O___,  "KC_Y",  "KC_W",
                            _SPACE_, "L_THUMB" , "OS_LCTL", ___L___]
 }
