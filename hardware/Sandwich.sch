EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
LIBS:Zilog
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Z80CPU U?
U 1 1 56AFD33E
P 2100 3600
F 0 "U?" H 2100 5266 50  0000 C CNN
F 1 "Z80CPU" H 2100 5166 50  0000 C CNN
F 2 "" H 2100 4000 50  0000 C CNN
F 3 "" H 2100 4000 50  0000 C CNN
	1    2100 3600
	1    0    0    -1  
$EndComp
$Comp
L 7805 U?
U 1 1 56AFD55A
P 1300 900
F 0 "U?" H 1300 1203 50  0000 C CNN
F 1 "7805" H 1300 1103 50  0000 C CNN
F 2 "" H 1300 900 50  0000 C CNN
F 3 "" H 1300 900 50  0000 C CNN
	1    1300 900 
	1    0    0    -1  
$EndComp
Text GLabel 1800 850  2    60   Input ~ 0
5V
Text GLabel 1300 1250 3    60   Input ~ 0
GND
Text GLabel 800  850  0    60   Input ~ 0
Vin
Wire Wire Line
	1700 850  1800 850 
Wire Wire Line
	1300 1250 1300 1150
Text GLabel 2300 2000 2    60   Input ~ 0
5V
Wire Wire Line
	2100 2100 2100 2000
Wire Wire Line
	2100 2000 2300 2000
Text GLabel 2300 5200 2    60   Input ~ 0
GND
Wire Wire Line
	2100 5100 2100 5200
Wire Wire Line
	2100 5200 2300 5200
$EndSCHEMATC
