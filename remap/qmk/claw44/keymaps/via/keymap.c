/*
Copyright 2012 Jun Wako <wakojun@gmail.com>
Copyright 2015 Jack Humbert
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include QMK_KEYBOARD_H

// Each layer gets a name for readability, which is then used in the keymap matrix below.
// The underscores don't mean anything - you can have a layer called STUFF or any other name.
// Layer names don't all need to be of the same length, obviously, and you can also skip them
// entirely and just use numbers.

enum layer_number {
    _QWERTY = 0,
    _NUMSYM = 1,
    _VIMFN = 2,
    _ONEHAND = 3,
    _GAMING = 4,
};

// #define KC_L_SPC LT(_LOWER, KC_SPC)  // lower
// #define KC_R_ENT LT(_RAISE, KC_ENT)  // raise
// #define KC_G_JA LGUI_T(KC_LNG1)     // cmd or win
// #define KC_G_EN LGUI_T(KC_LNG2)     // cmd or win
// #define KC_C_BS LCTL_T(KC_BSPC)      // ctrl
// #define KC_A_DEL ALT_T(KC_DEL)       // alt
# define KC_CGL LCTL(LGUI(KC_LEFT)) // Swith to left workspace on windows
# define KC_CGR LCTL(LGUI(KC_RGHT)) // Swith to right workspace on windows
# define KC_CSG4 LCTL(LSFT(LGUI(KC_4))) // Screenshot on windows with selection
# define KC_SG_S LSFT(LGUI(KC_S)) // Screenshot on mac with selection
# define KC_CD LCTL(KC_DOWN) // Go inside folder on mac
# define KC_CU LCTL(KC_UP) // Go inside folder on mac

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    [_QWERTY] = LAYOUT(
    //,--------+--------+--------+--------+--------+--------.                 ,--------+---------+--------+---------+--------+--------.
       LT(2,KC_TAB) , KC_Q   , KC_W   , KC_E , KC_R  , KC_T,                   KC_Y   , KC_U    , KC_I   , KC_O    , KC_P   , KC_UNDS,
    //|--------+--------+--------+--------+--------+--------|                 |--------+---------+--------+---------+--------+--------|
       LCTL_T(KC_ENT) , KC_A , KC_S   , KC_D , KC_F  , KC_G,                   KC_H   , KC_J    , KC_K   , KC_L    , KC_SCLN, KC_QUOT,
    //|--------+--------+--------+--------+--------+--------|                 |--------+---------+--------+---------+--------+--------|
       LSFT_T(KC_ESC), KC_Z  , KC_X   , KC_C , KC_V  , KC_B,                   KC_N   , KC_M    , KC_COMM, KC_DOT  , KC_SLSH, KC_GRV,
    //`--------+--------+--------+--------+--------+--------/                 \--------+---------+--------+---------+--------+--------'
                        LALT_T(KC_BSPC), KC_SPC, MO(1),LT(3,KC_DEL),           KC_LGUI, OSM(MOD_LSFT), LT(2,KC_ENT), KC_BSPC
    //                `----------+--------+--------+--------'                 `--------+---------+--------+---------'
    ),

    [_NUMSYM] = LAYOUT(
    //,--------+--------+--------+--------+--------+--------.                 ,--------+--------+--------+--------+--------+--------.
       KC_PLUS, KC_COLN , KC_7   , KC_8   , KC_9   , KC_MINS,                   KC_CIRC ,KC_ASTR ,KC_LPRN ,KC_RCBR ,KC_PIPE ,KC_LBRC,
    //|--------+--------+--------+--------+--------+--------|                 |--------+--------+--------+--------+--------+--------|
       KC_LCTL, KC_PDOT , KC_4   , KC_5   , KC_6   , KC_DQUO,                   KC_HASH, KC_AMPR ,KC_AT   ,KC_QUES ,KC_PERC ,LSFT(KC_INT3),
    //|--------+--------+--------+--------+--------+--------|                 |--------+--------+--------+--------+--------+--------|
       KC_LSFT, KC_0    , KC_1   , KC_2   , KC_3   , KC_DLR,                    KC_EXLM, KC_RBRC ,KC_NUHS , KC_LCBR, KC_INT1, LSFT(KC_INT1),
    //`--------+--------+--------+--------+--------+--------/                 \--------+--------+--------+--------+--------+--------'
                         KC_LALT, _______, _______, LCG_SWP,                   KC_EQL  , KC_LSFT,KC_LT   , KC_GT
    //                  `--------+--------+--------+--------'                 `--------+--------+--------+--------'
    ),

    [_VIMFN] = LAYOUT(
    //,--------+-------------+--------+--------+--------+--------.                 ,--------+--------+--------+--------+--------+--------.
       _______ ,CW_TOGG      , KC_F7 ,  KC_F8 , KC_F9 ,KC_LNG1,                      KC_LNG2, KC_PGUP, KC_HOME, KC_END , KC_PGDN, KC_CGL,
    //|--------+-------------+--------+--------+--------+--------|                 |--------+--------+--------+--------+--------+--------|
       KC_LCTL ,OSM(MOD_HYPR), KC_F4 ,  KC_F5 , KC_F6 ,LCTL(KC_A),                  KC_LEFT, KC_DOWN, KC_UP  , KC_RGHT, KC_MENU, KC_LALT,
    //|--------+-------------+--------+--------+--------+--------|                 |--------+--------+--------+--------+--------+--------|
       KC_LSFT ,OSM(MOD_MEH) , KC_F1 ,  KC_F2 , KC_F3 ,LCTL(KC_X),                  KC_INS , KC_F10 , KC_F11 , KC_F12 , TG(4), KC_CGR,
    //`--------+-------------+--------+--------+--------+--------/                 \--------+--------+--------+--------+--------+--------'
                          KC_LALT,LCTL(KC_C), LCTL(KC_V), LCTL(KC_Z),             KC_LGUI, KC_LSFT, _______, _______
    //                  `-------------+--------+--------+--------'                 `--------+--------+--------+--------'
    ),

    [_ONEHAND] = LAYOUT(
    //,--------+--------+--------+--------+--------+--------.                     ,--------+--------+--------+--------+--------+--------.
        KC_TAB, KC_SG_S , KC_WH_D, KC_UP, KC_WH_U  , KC_CSG4,                       KC_MINS, KC_7   , KC_8   , KC_9, KC_COLN, _______,
    //|--------+--------+--------+--------+--------+--------|                     |--------+--------+--------+--------+--------+--------|
        KC_LCTL, KC_WH_L, KC_LEFT, KC_DOWN, KC_RGHT, KC_WH_R,                       KC_DQUO, KC_4   , KC_5   , KC_6, KC_PDOT, _______,
    //|--------+--------+--------+--------+--------+--------|                     |--------+--------+--------+--------+--------+--------|
        KC_LSFT, KC_CD  , KC_CU  , KC_MPRV, KC_MPLY, KC_MNXT,                       KC_DLR , KC_1   , KC_2   , KC_3, _______, _______,
    //`--------+--------+--------+--------+--------+--------/                     \--------+--------+--------+--------+--------+--------'
                          KC_LALT, KC_SPC, _______, _______,                       KC_LGUI , KC_0   , KC_ENT , KC_BSPC
    //                  `--------+--------+--------+--------'                     `--------+--------+--------+--------'
    ),

    [_GAMING] = LAYOUT(
    //,--------+--------+--------+--------+--------+--------.                     ,--------+--------+--------+--------+--------+--------.
        KC_TAB , KC_1   , KC_Q   , KC_W   , KC_E   , KC_R   ,                       _______, _______, _______, _______, _______, _______,
    //|--------+--------+--------+--------+--------+--------|                     |--------+--------+--------+--------+--------+--------|
        KC_LCTL, KC_2   , KC_A   , KC_S   , KC_D   , KC_F   ,                       _______, _______, _______, _______, _______, _______,
    //|--------+--------+--------+--------+--------+--------|                     |--------+--------+--------+--------+--------+--------|
        KC_LSFT, KC_3   , KC_X   , KC_C   , KC_V   , KC_B   ,                       _______, _______, _______, _______, _______, _______,
    //`--------+--------+--------+--------+--------+--------/                     \--------+--------+--------+--------+--------+--------'
                          KC_LALT,KC_SPC, KC_ENT, KC_ESC,                           _______, _______, _______, _______
    //                  `--------+--------+--------+--------'                     `--------+--------+--------+--------'
    ),
};

#ifdef ENCODER_MAP_ENABLE
const uint16_t PROGMEM encoder_map[][NUM_ENCODERS][NUM_DIRECTIONS] = {
    [0] =   { ENCODER_CCW_CW(KC_NO, KC_NO),     ENCODER_CCW_CW(KC_NO, KC_NO)      },
    [1] =   { ENCODER_CCW_CW(_______, _______), ENCODER_CCW_CW(_______, _______)  },
    [2] =   { ENCODER_CCW_CW(_______, _______), ENCODER_CCW_CW(_______, _______)  },
    [3] =   { ENCODER_CCW_CW(_______, _______), ENCODER_CCW_CW(_______, _______)  },
    [4] =   { ENCODER_CCW_CW(_______, _______), ENCODER_CCW_CW(_______, _______)  }
};
#endif
