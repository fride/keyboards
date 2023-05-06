// generated
uint16_t get_combo_term(uint16_t index, combo_t *combo) {
    switch (index) {
        case combo_reset:
   return COMBO_TERM + 10;

case combo_canel:
   return COMBO_TERM + 10;

case CMB_NAV:
   return COMBO_TERM + 5;

case CMB_NUM:
   return COMBO_TERM + 5;

case CMB_NUM2:
   return COMBO_TERM + 5;

case CMB_COMM:
   return COMBO_TERM + 5;

case CMB_DOT:
   return COMBO_TERM + 5;

case CMB_QUOT:
   return COMBO_TERM + 5;

case CMB_TAB:
   return COMBO_TERM + 5;

case CMB_ENTER:
   return COMBO_TERM + 5;

case CMB_V:
   return COMBO_TERM + 5;

case CMB_Q:
   return COMBO_TERM + 5;

case CMB_Z:
   return COMBO_TERM + 5;

case CMB_ESC:
   return COMBO_TERM + 0;

case CMB_ESC2:
   return COMBO_TERM + 0;

case CMB_LCTL:
   return COMBO_TERM + 0;

case CMB_RCTL:
   return COMBO_TERM + 0;

        default:
            return COMBO_TERM + 25;
    }
}
