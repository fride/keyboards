let types = ../types.dhall
let ___R___ = "LT(_SYM,KC_R)"
let ___C___ = "LT(_SYM,KC_C)"
let ___I___ = "LT(_NUMBLOCK,KC_I)"
let ___D___ = "RGUI_T(KC_D)"
let ___U___ = "RGUI_T(KC_U)"
{-
j  g  h  p qv   \| >& /* '" -
r  s  n  t  b   ,< a  e  c  i
x  f  m  d  k   z  u  o  w  y
            l   ␣
-}
in types.Layer::
{ name = "_BASE"
, keys = [
  "KC_J",  "KC_G", "KC_H", "KC_P", "KC_V",       "KC_BSLS", "DOT",  "SLASH", "QUOTE", "MINS",
  ___R___, "KC_S", "KC_N", "KC_T", "KC_B",       "COMM",    "KC_A", "KC_E",   ___I___, ___C___,
  "KC_X",  "KC_F", "KC_M", ___D___, "KC_K",       "KC_Z",   ___U___, "KC_O",  "KC_Y",  "KC_W"
 ] # ./thumbs.dhall
 }
