// generated
uint16_t get_combo_term(uint16_t index, combo_t *combo) {
    switch (index) {
        case combo_reset:
   return COMBO_TERM + 10;

case CMB_Z:
   return COMBO_TERM + 50;

case CMB_Q:
   return COMBO_TERM + 50;

case combo_backspace:
   return COMBO_TERM + 10;

case CMB_LSFT:
   return COMBO_TERM + 10;

case CMB_RSFT:
   return COMBO_TERM + 10;

        default:
            return COMBO_TERM + 25;
    }
}
