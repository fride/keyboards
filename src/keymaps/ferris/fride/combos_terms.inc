// generated
uint16_t get_combo_term(uint16_t index, combo_t *combo) {
    switch (index) {
        case combo_numword:
   return COMBO_TERM + 20;

case combo_reset:
   return COMBO_TERM + 10;

case combo_canel:
   return COMBO_TERM + 10;

case combo_arrow_left:
   return COMBO_TERM + 10;

case combo_arrow_right:
   return COMBO_TERM + 10;

case combo_q:
   return COMBO_TERM + 10;

case combo_grv:
   return COMBO_TERM + 10;

case combo_qu:
   return COMBO_TERM + 10;

case combo_min:
   return COMBO_TERM + 10;

case combo_shift1:
   return COMBO_TERM + 10;

case combo_shift2:
   return COMBO_TERM + 10;

case combo_backspace:
   return COMBO_TERM + 10;

case combo_del:
   return COMBO_TERM + 10;

case combo_eql:
   return COMBO_TERM + 10;

case combo_quote:
   return COMBO_TERM + 0;

case combo_esc_sym:
   return COMBO_TERM + 0;

case combo_tab_mod:
   return COMBO_TERM + 10;

case combo_colon_sym:
   return COMBO_TERM + 0;

case combo_semicolon:
   return COMBO_TERM + 0;

case combo_enter:
   return COMBO_TERM + 10;

case combo_lshift:
   return COMBO_TERM + 0;

case combo_gui:
   return COMBO_TERM + 5;

case combo_alt:
   return COMBO_TERM + 5;

case combo_rshift:
   return COMBO_TERM + 5;

case combo_caps:
   return COMBO_TERM + 5;

        default:
            return COMBO_TERM + 25;
    }
}
