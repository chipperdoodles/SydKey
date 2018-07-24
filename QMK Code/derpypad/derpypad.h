#ifndef DERPYPAD_H
#define DERPYPAD_H

#include "quantum.h"

#define KEYMAP( \
	K00, K01, K02, K03, \
	K10, K11, K12, K13, \
	K20, K21, K22, \
	K30, K31, K32, K33,  \
	K40, K41, K42, \
	K50, K52,     K53  \
) { \
	{ K00,   K01,   K02,   K03 }, \
	{ K10,   K11,   K12,   K13 }, \
	{ K20,   K21,   K22,   KC_NO }, \
	{ K30,   K31,   K32,   K33 }, \
	{ K40,   K41,   K42,   KC_NO}, \
	{ K50,   K52,  KC_NO,   K53 }  \
}

#endif

// void matrix_init_kb(void) {
// 	// put your keyboard start-up code here
// 	// runs once when the firmware starts up
//
// 	matrix_init_user();
// }
//
// void matrix_scan_kb(void) {
// 	// put your looping keyboard code here
// 	// runs every cycle (a lot)
// 	matrix_scan_user();
// }
//
// bool process_record_kb(uint16_t keycode, keyrecord_t *record) {
// 	// put your per-action keyboard code here
// 	// runs for every action, just before processing by the firmware
//
// 	return process_record_user(keycode, record);
// }
//
// void led_set_kb(uint8_t usb_led) {
// 	// put your keyboard LED indicator (ex: Caps Lock LED) toggling code here
//
// 	led_set_user(usb_led);
// }