let types = ../../types.dhall
-- http://thedarnedestthing.com/daily%20beakl
-- inspired by https://github.com/EricGebhart/qmk_firmware/tree/ericgebhart/users/ericgebhart
in  types.HomeBlock::{
    , l1 = [ "KC_GRV",   "KC_LT",  "KC_ASTR", "KC_GT",   "KC_NO" ]
    , l2 = [ "KC_BSLS", "KC_LPRN", "KC_PIPE", "KC_HASH", "KC_RPRN" ]
    , l3 = [ "KC_AT",   "KC_EQL",  "KC_AMPR",  "KC_PLUS", "KC_NO" ]

    , r1 = [ "KC_QUES", "KC_LBRC", "KC_UNDS", "KC_MINS", "KC_RBRC" ]
    , r2 = [ "KC_EXLM", "KC_LCBR", "KC_TILD", "KC_SLSH", "KC_RCBR" ]
    , r3 = [ "KC_NO",   "KC_DLR",  "KC_CIRC", "KC_PERC", "KC_NO" ]
    , thumb_l = [ "NAV_SPC", "OS_LSFT" ]
    , thumb_r = [ "OS_LCTL", "KC_RGUI" ]
    }
