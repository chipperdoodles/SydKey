# SydKey
Kicad files for a 4x6 numbpad using bluefruit 32u4 feather

## Background
	
## Design
This is a simple design is to make a bluetooth programmable number pad with small oled screen. It has 4 function keys and a full number pad layout underneath, it does not support alternate layouts.

It was designed with the goal of being etched via my tiny cheap cnc engraver and hand soldered and programmed via qmk, trace width and pad shapes were messed with to make hand soldering more forgivable. It's also designed with the intention of one side being carved and the other side being hand wired, I found in my struggles with my aligning front and back designs on my lil cnc.

## BOM
* 6x4 Copper Clad Board
* Diodes
* Cherry Mx compatible switches
* i2c Oled
* Adafruit Bluefruit 32u4 Feather

## Programming
The board is programmed using the open source firmware QMK, its quite excellent but I'm not a great programmer and their documentation covers the essential basics but I pulled together some code to get it functioning, I know someone can do much better.

## Resources