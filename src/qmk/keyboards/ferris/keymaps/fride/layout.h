#pragma once

#include "quantum.h"
#include "wrappers.h"

/* This overrides the base LAYOUT function to allow
 * consistent use of existing keymap blocks as defined
 * in users/possumvibes/wrappers.h
 * This function assigns the board's pins.
 */

 #define LAYOUT_ferris( \
    K0_0, K0_1, K0_2, K0_3, K0_4,       K0_5, K0_6, K0_7, K0_8, K0_9,\
    K1_0, K1_1, K1_2, K1_3, K1_4,       K1_5, K1_6, K1_7, K1_8, K1_9,\
    K2_0, K2_1, K2_2, K2_3, K2_4,       K2_5, K2_6, K2_7, K2_8, K2_9,\
                        K3_3, K3_4,   K3_5, K3_6 \
) \
{ \
    {K0_0,  K0_1,  K0_2,  K0_3,  K0_4},\
    {K1_0,  K1_1,  K1_2,  K1_3,  K1_4},\
    {K2_0,  K2_1,  K2_2,  K2_3,  K2_4},\
    {KC_NO, KC_NO, KC_NO, K3_3,  K3_4},\
	\
	{K0_5,  K0_6,  K0_7,  K0_8,  K0_9},\
	{K1_5,  K1_6,  K1_7,  K1_8,  K1_9},\
	{K2_5,  K2_6,  K2_7,  K2_8,  K2_9},\
	{K3_5,  K3_6, KC_NO,  KC_NO, KC_NO}\
}

/* This is a wrapper for the LAYOUT function to allow passing cleaner or modified arguments. */
#define LAYOUT_ferris_wrapper(...)    LAYOUT_ferris(__VA_ARGS__)

// Layout Template with consistent thumbs (e.g., for alpha layers)
#define LAYOUT_ferris_alpha( \
        K00, K01, K02, K03, K04, K05, K06, K07, K08, K09, \
        K10, K11, K12, K13, K14, K15, K16, K17, K18, K19, \
        K20, K21, K22, K23, K24, K25, K26, K27, K28, K29  \
    ) \
    LAYOUT_ferris_wrapper( \
        K00, K01, K02, K03, K04, K05, K06, K07, K08, K09, \
        K10, K11, K12, K13, K14, K15, K16, K17, K18, K19, \
        K20, K21, K22, K23, K24, K25, K26, K27, K28, K29, \
                  __ALPHATHUMB_L__, __ALPHATHUMB_R__ \
    )
/* Wrapper for new alpha macro */
#define LAYOUT_alpha_wrapper(...)       LAYOUT_ferris_alpha(__VA_ARGS__)
