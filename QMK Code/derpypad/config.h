#ifndef CONFIG_H
#define CONFIG_H

#include "config_common.h"

/* USB Device descriptor parameter */
#define VENDOR_ID       0xFEED
#define PRODUCT_ID      0x6060
#define DEVICE_VER      0x0001
#define MANUFACTURER    qmkbuilder
#define PRODUCT         DerpyPad
#define DESCRIPTION     Keypad
#define CATERINA_BOOTLOADER

/* key matrix size */
#define MATRIX_ROWS 6
#define MATRIX_COLS 4

/* key matrix pins */
#define MATRIX_ROW_PINS { F6, F0, D7, B5, D6, C7 }
#define MATRIX_COL_PINS { F7, F5, F4, F1 }
#define UNUSED_PINS

/* COL2ROW or ROW2COL */
#define DIODE_DIRECTION ROW2COL

#define USE_I2C
#define SSD1306OLED
//#define OLED_ROTATE180
#define SSD1306_ADDRESS 0x3D
#define ADAFRUIT_BLE_ENABLE

/* Set 0 if debouncing isn't needed */
#define DEBOUNCING_DELAY 5

/* Mechanical locking support. Use KC_LCAP, KC_LNUM or KC_LSCR instead in keymap */
#define LOCKING_SUPPORT_ENABLE

/* Locking resynchronize hack */
#define LOCKING_RESYNC_ENABLE

/* key combination for command */
#define IS_COMMAND() ( \
    keyboard_report->mods == (MOD_BIT(KC_LSHIFT) | MOD_BIT(KC_RSHIFT)) \
)

/* prevent stuck modifiers */
#define PREVENT_STUCK_MODIFIERS

#endif