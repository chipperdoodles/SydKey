EESchema Schematic File Version 2
LIBS:sydpyd-rescue
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:sydpyd-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Sydpad"
Date "2017-12-21"
Rev ".1"
Comp "Beep Boops with Noties"
Comment1 "A 4x6 featherwing bluetooth numpad"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Entry Wire Line
	3150 4350 3250 4450
$Comp
L VCC #PWR3
U 1 1 4ED6BD35
P 4150 4500
F 0 "#PWR3" H 4150 4600 30  0001 C CNN
F 1 "VCC" H 4150 4600 30  0000 C CNN
F 2 "" H 4150 4500 60  0001 C CNN
F 3 "" H 4150 4500 60  0001 C CNN
	1    4150 4500
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-sydpyd #PWR1
U 1 1 4ED6BD03
P 3900 4250
F 0 "#PWR1" H 3900 4250 30  0001 C CNN
F 1 "GND" H 3900 4180 30  0001 C CNN
F 2 "" H 3900 4250 60  0001 C CNN
F 3 "" H 3900 4250 60  0001 C CNN
	1    3900 4250
	0    1    1    0   
$EndComp
Text Label 3350 4750 0    50   ~ 0
~RES~
Text Label 3350 4450 0    50   ~ 0
MOSI
Text Label 3350 4650 0    50   ~ 0
SCK
Text Label 3350 4550 0    50   ~ 0
MISO
Entry Wire Line
	3150 4550 3250 4650
Entry Wire Line
	3150 4450 3250 4550
Text Label 4450 2350 0    50   ~ 0
SCK
Text Label 4450 2250 0    50   ~ 0
MOSI
Text Label 4450 2150 0    50   ~ 0
MISO
Entry Wire Line
	4700 2150 4800 2250
Entry Wire Line
	4700 2250 4800 2350
Entry Wire Line
	4700 2350 4800 2450
$Sheet
S 6000 1900 800  2550
U 4F60E920
F0 "Matrix" 60
F1 "matrix.sch" 60
F2 "row1" T L 6000 2050 60 
F3 "row2" T L 6000 2150 60 
F4 "row3" T L 6000 2250 60 
F5 "row4" T L 6000 2350 60 
F6 "col1" T L 6000 2750 60 
F7 "col2" T L 6000 2850 60 
F8 "col3" T L 6000 2950 60 
F9 "col4" T L 6000 3050 60 
F10 "row5" I L 6000 2450 60 
F11 "row6" I L 6000 2550 60 
$EndSheet
Text Label 4100 2850 0    60   ~ 0
row1
Text Label 4100 2450 0    60   ~ 0
row2
Text Label 2350 2150 2    60   ~ 0
row3
Text Label 2350 2250 2    60   ~ 0
row4
Entry Wire Line
	5500 2150 5600 2050
Entry Wire Line
	5500 2150 5600 2050
Entry Wire Line
	5500 2250 5600 2150
Entry Wire Line
	5500 2350 5600 2250
Entry Wire Line
	5500 2350 5600 2250
Entry Wire Line
	5500 2350 5600 2250
Entry Wire Line
	5500 2450 5600 2350
Text Label 5600 2050 0    60   ~ 0
row1
Text Label 5600 2150 0    60   ~ 0
row2
Text Label 5600 2250 0    60   ~ 0
row3
Text Label 5600 2350 0    60   ~ 0
row4
Text Label 4100 2750 0    60   ~ 0
col2
Text Label 4100 2950 0    60   ~ 0
col1
Text Label 4100 2650 0    60   ~ 0
col3
Text Label 4100 2550 0    60   ~ 0
col4
Entry Wire Line
	5500 2850 5600 2750
Entry Wire Line
	5500 2950 5600 2850
Entry Wire Line
	5500 3050 5600 2950
Entry Wire Line
	5500 3150 5600 3050
Entry Wire Line
	5500 2550 5600 2450
Entry Wire Line
	5500 2650 5600 2550
Text Label 5600 2750 0    60   ~ 0
col1
Text Label 5600 2850 0    60   ~ 0
col2
Text Label 5600 2950 0    60   ~ 0
col3
Text Label 5600 3050 0    60   ~ 0
col4
Text Label 5600 2450 0    60   ~ 0
row5
Text Label 5600 2550 0    60   ~ 0
row6
Text Label 2150 2550 0    60   ~ 0
row5
Text Label 2150 2650 0    60   ~ 0
row6
$Comp
L FEATHERWING MS1
U 1 1 5A3A4948
P 3850 3550
F 0 "MS1" H 3850 3550 45  0001 C CNN
F 1 "FEATHERWING" H 3850 3550 45  0001 C CNN
F 2 "adafruit:FEATHERWING" H 3850 3550 60  0001 C CNN
F 3 "" H 3850 3550 60  0001 C CNN
	1    3850 3550
	0    -1   -1   0   
$EndComp
Entry Wire Line
	3150 4650 3250 4750
NoConn ~ 4050 1850
NoConn ~ 2350 2950
NoConn ~ 2350 2750
$Comp
L GND-RESCUE-sydpyd #PWR4
U 1 1 5A3B4CC0
P 4400 3100
F 0 "#PWR4" H 4400 3100 30  0001 C CNN
F 1 "GND" H 4400 3030 30  0001 C CNN
F 2 "" H 4400 3100 60  0001 C CNN
F 3 "" H 4400 3100 60  0001 C CNN
	1    4400 3100
	1    0    0    -1  
$EndComp
NoConn ~ 4050 3150
Entry Wire Line
	2000 1750 2100 1850
Entry Wire Line
	2000 1850 2100 1950
Entry Wire Line
	3150 4750 3250 4850
Entry Wire Line
	3150 4850 3250 4950
Text Label 3350 4950 0    50   ~ 0
SDA
Text Label 3350 4850 0    50   ~ 0
SCL
Text Label 2200 1850 0    50   ~ 0
SDA
Text Label 2200 1950 0    50   ~ 0
SCL
$Comp
L VCC #PWR2
U 1 1 5A6AA574
P 4050 3250
F 0 "#PWR2" H 4050 3350 30  0001 C CNN
F 1 "VCC" H 4050 3350 30  0000 C CNN
F 2 "" H 4050 3250 60  0001 C CNN
F 3 "" H 4050 3250 60  0001 C CNN
	1    4050 3250
	0    1    1    0   
$EndComp
$Comp
L Conn_01x08 J1
U 1 1 5AD0CD99
P 5000 4750
F 0 "J1" H 5000 5150 50  0000 C CNN
F 1 "OLED" H 5000 4250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x08_Pitch2.54mm" H 5000 4750 50  0001 C CNN
F 3 "" H 5000 4750 50  0001 C CNN
	1    5000 4750
	1    0    0    1   
$EndComp
Text Notes 5100 5050 0    60   ~ 0
data clk dc  rst cs 3v3 vin gnd
NoConn ~ 3600 4450
NoConn ~ 3600 4550
NoConn ~ 3600 4650
NoConn ~ 4050 1950
NoConn ~ 4050 2050
NoConn ~ 2350 2850
NoConn ~ 4050 3350
Wire Wire Line
	6000 3050 5600 3050
Wire Wire Line
	5600 2950 6000 2950
Wire Wire Line
	6000 2850 5600 2850
Wire Wire Line
	5600 2750 6000 2750
Wire Wire Line
	6000 2350 5600 2350
Wire Wire Line
	5600 2250 6000 2250
Wire Wire Line
	6000 2150 5600 2150
Wire Wire Line
	5600 2050 6000 2050
Wire Wire Line
	3250 4550 3600 4550
Wire Wire Line
	4050 2250 4700 2250
Wire Wire Line
	4050 2150 4700 2150
Wire Wire Line
	4050 2350 4700 2350
Wire Wire Line
	3250 4650 3600 4650
Wire Bus Line
	4800 2250 4800 4000
Wire Bus Line
	5500 2150 5500 4000
Wire Wire Line
	5600 2450 6000 2450
Wire Wire Line
	6000 2550 5600 2550
Wire Wire Line
	4050 2550 4700 2550
Wire Wire Line
	4050 2450 4700 2450
Wire Wire Line
	4050 2650 4700 2650
Wire Wire Line
	4050 2750 4700 2750
Wire Wire Line
	3250 4750 4800 4750
Wire Wire Line
	4050 3050 4400 3050
Wire Wire Line
	4400 3050 4400 3100
Wire Bus Line
	2000 1750 2000 4000
Wire Wire Line
	2350 1850 2100 1850
Wire Wire Line
	2350 1950 2100 1950
Wire Wire Line
	3250 4850 4700 4850
Wire Wire Line
	3250 4950 4650 4950
Wire Wire Line
	3250 4450 3600 4450
Wire Wire Line
	2350 2050 2100 2050
Entry Wire Line
	2000 1950 2100 2050
Text Label 2200 2050 0    50   ~ 0
~RES~
NoConn ~ 4800 4550
NoConn ~ 4800 4650
NoConn ~ 4800 4850
Entry Wire Line
	4700 2450 4800 2550
Entry Wire Line
	4700 2550 4800 2650
Entry Wire Line
	4700 2650 4800 2750
Entry Wire Line
	4700 2750 4800 2850
Wire Wire Line
	4050 2850 4700 2850
Wire Wire Line
	4050 2950 4700 2950
Entry Wire Line
	4700 2850 4800 2950
Entry Wire Line
	4700 2950 4800 3050
Entry Wire Line
	2000 2050 2100 2150
Entry Wire Line
	2000 2150 2100 2250
Entry Wire Line
	2000 2250 2100 2350
Entry Wire Line
	2000 2350 2100 2450
Wire Wire Line
	2100 2150 2350 2150
Wire Wire Line
	2100 2250 2350 2250
Wire Wire Line
	2100 2350 2350 2350
Wire Wire Line
	2100 2450 2350 2450
Entry Wire Line
	2000 2450 2100 2550
Entry Wire Line
	2000 2550 2100 2650
Wire Wire Line
	2100 2550 2350 2550
Wire Wire Line
	2100 2650 2350 2650
$Comp
L R R1
U 1 1 5AF3B168
P 4250 4800
F 0 "R1" V 4330 4800 50  0000 C CNN
F 1 "R" V 4250 4800 50  0000 C CNN
F 2 "Basic_Comps:Resistor_THT" V 4180 4800 50  0001 C CNN
F 3 "" H 4250 4800 50  0001 C CNN
	1    4250 4800
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5AF3B1CF
P 4700 4800
F 0 "R2" V 4780 4800 50  0000 C CNN
F 1 "R" V 4700 4800 50  0000 C CNN
F 2 "Basic_Comps:Resistor_THT" V 4630 4800 50  0001 C CNN
F 3 "" H 4700 4800 50  0001 C CNN
	1    4700 4800
	1    0    0    -1  
$EndComp
$Comp
L SW_DPDT_x2 SW1
U 1 1 5AF3B2B3
P 4400 4250
F 0 "SW1" H 4400 4420 50  0000 C CNN
F 1 "SW_DPDT_x2" H 4400 4050 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 4400 4250 50  0001 C CNN
F 3 "" H 4400 4250 50  0001 C CNN
	1    4400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4950 4650 5050
Wire Wire Line
	4650 5050 4800 5050
Connection ~ 4250 4950
Wire Wire Line
	4700 4850 4700 4950
Wire Wire Line
	4700 4950 4800 4950
Wire Wire Line
	4150 4500 4650 4500
Wire Wire Line
	4650 4500 4650 4450
Wire Wire Line
	4650 4450 4800 4450
Wire Wire Line
	4600 4350 4800 4350
Wire Wire Line
	4250 4650 4250 4500
Connection ~ 4250 4500
Wire Wire Line
	4700 4650 4700 4450
Connection ~ 4700 4450
Wire Bus Line
	2000 4000 5500 4000
Wire Bus Line
	3150 4000 3150 4850
Wire Wire Line
	3900 4250 4200 4250
NoConn ~ 4600 4150
$EndSCHEMATC
