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

case CMB_TAB:
   return COMBO_TERM + 5;

case CMB_ENTER:
   return COMBO_TERM + 5;

        default:
            return COMBO_TERM + 25;
    }
}
