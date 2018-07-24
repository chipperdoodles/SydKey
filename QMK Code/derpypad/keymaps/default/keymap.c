#include "derpypad.h"
#include "LUFA/Drivers/Peripheral/TWI.h"
#include "i2c.h"
#include "ssd1306.h"

enum {
    BASE = 0,
    MULTIMEDIA = 1,
    MOUSE = 2,
    ADJUST = 3
};

static char layer_lookup[][14] = {"Base","Media","Mouse","Adjust"};

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {

    [BASE] = KEYMAP(
		KC_MUTE, KC_VOLD, KC_VOLU, KC_BSPC,
		LT(3, KC_NLCK), KC_PSLS, KC_PAST, KC_PMNS,
		KC_P7, KC_P8, KC_P9,
		KC_P4, KC_P5, KC_P6, KC_PPLS,
		KC_P1, KC_P2, KC_P3,
		KC_P0, KC_PDOT, KC_PENT),
        
    [MULTIMEDIA] = KEYMAP(
        KC_MUTE, KC_VOLD, KC_VOLU, KC_BSPC,
        LT(3, KC_NLCK), KC_PSLS, KC_PAST, KC_PMNS,
        KC_P7, KC_VOLU, KC_P9,
        KC_MPRV, KC_MPLY, KC_MNXT, KC_PPLS,
        KC_P1, KC_VOLD, KC_P3,
        KC_P0, KC_PDOT, KC_PENT),
        
    [MOUSE] = KEYMAP(
        KC_MUTE, KC_VOLD, KC_VOLU, KC_BSPC,
        LT(3, KC_NLCK), KC_PSLS, KC_PAST, KC_WH_U,
        KC_BTN1, KC_MS_U, KC_BTN2,
        KC_MS_L, KC_BTN3, KC_MS_R, KC_WH_D,
        KC_BTN4, KC_MS_D, KC_BTN5,
        KC_ACL0, KC_ACL1, KC_ACL2),

    [ADJUST] = KEYMAP(
        TO(0), TO(1), TO(2), TO(3),
        LT(3, KC_NLCK), OUT_USB, OUT_BT, OUT_AUTO,
        KC_NO, KC_NO, KC_NO,
        KC_NO, KC_NO, KC_NO, KC_NO,
        KC_NO, KC_NO, KC_NO,
        KC_NO, KC_NO, KC_NO),
    };
    
bool process_record_user(uint16_t keycode, keyrecord_t *record) {
	return true;
}
    
void led_set_user(uint8_t usb_led) {
        
    }
    
void matrix_init_user(void) {
     #ifdef SSD1306OLED
    // calls code for the SSD1306 OLED
          _delay_ms(400);
          TWI_Init(TWI_BIT_PRESCALE_1, TWI_BITLENGTH_FROM_FREQ(1, 400000));
          iota_gfx_clear_screen();
          iota_gfx_init();   // turns on the display
    #endif
    // #endif
    #ifdef AUDIO_ENABLE
        startup_user();
    #endif
}

void matrix_scan_user(void) {
    #ifdef SSD1306OLED
     iota_gfx_task();  // this is what updates the display continuously
    #endif
}

void matrix_update(struct CharacterMatrix *dest,
                          const struct CharacterMatrix *source) {
  if (memcmp(dest->display, source->display, sizeof(dest->display))) {
    memcpy(dest->display, source->display, sizeof(dest->display));
    dest->dirty = true;
  }
}

void iota_gfx_task_user(void) {
#if DEBUG_TO_SCREEN
  if (debug_enable) {
    return;
  }
#endif

struct CharacterMatrix matrix;

matrix_clear(&matrix);
matrix_write_P(&matrix, PSTR("Derpypad"));

uint8_t layer = biton32(layer_state);

char buf[48];
snprintf(buf,sizeof(buf), "Undef-%d", layer);
matrix_write_P(&matrix, PSTR("\nLayer: "));
matrix_write(&matrix, layer_lookup[layer]);

// Host Keyboard LED Status
// char led[40];
//   snprintf(led, sizeof(led), "\n\n%s %s %s",
//           (host_keyboard_leds() & (1<<USB_LED_NUM_LOCK)) ? "NUM" : "  ",
//           (host_keyboard_leds() & (1<<USB_LED_CAPS_LOCK)) ? "CAPS" : "  ",
//           (host_keyboard_leds() & (1<<USB_LED_SCROLL_LOCK)) ? "SCRL" : "  ");
// matrix_write(&matrix, led);
matrix_update(&display, &matrix);
}
