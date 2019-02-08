# intructions for build

## Milling
 This board is meant to be milled onto one sides copper clad board, You'll only need to mill the back side. A very important thing to note is that the image must be mirrored along the x axis (in the design the board is on it's side). You can do the mirroring in flatcam while preparing for export to gcode.
## Soldering
Start by soldering the diodes in first, technically you can choose to solder them on the switch side or the reverse side, In my prototype boards i soldered them switch side since it would be easier to solder the legs that way.
After you solder the diodes i would solder in the jumper cables. I Cut some solid core wire and connected the gaps via them. You can use the kicad frontside traces as a guide on where to wire the jumpers. It's designed using big fake vias as throughhole points for the jumpers.

## Case and Plate Making

## Firmware
The firmware is qmk heavily derived from other projects which i compiled locally via windows subsystem for linux and flashed using QMK Toolbox.