let types = ../../types.dhall
-- http://thedarnedestthing.com/daily%20beakl
-- inspired by https://github.com/EricGebhart/qmk_firmware/tree/ericgebhart/users/ericgebhart
in  types.HomeBlock::{
    , l1 = [ "KC_NO", "KC_A", "KC_B", "KC_C", "KC_NO" ]
    , l2 = [ "KC_NO", "KC_D", "KC_E", "KC_F", "DELIM"]
    , l3 = [ "KC_NO", "KC_LBRC", "KC_RBRC", "LLOCK", "KC_NO" ]

    , r1 = [ "KC_SLSH", "KC_4", "KC_5", "KC_6", "KC_ASTR" ]
    , r2 = [ "KC_DOT", "KC_1", "KC_2", "KC_3", "KC_MINS"]
    , r3 = [ "KC_COMM", "KC_7", "KC_8", "KC_9", "KC_PLUS" ]
    , thumb_l = [ "NAV_SPC", "OS_LSFT" ]
    , thumb_r = [ "KC_EQL", "KC_0" ]
    }
