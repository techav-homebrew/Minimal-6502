# Minimal-6502
Minimal 6502 SBC based on Grant Searle's 8-chip 6502 computer and laid out as a 4x3" PCB.

Modifications from Grant Searle's design include:
- Addition of expansion header
- Changed clock from crystal to standard TTL can oscillator
- Added option for USB for serial & power via FTDI
- Reassembled software for 8kB EEPROM instead of 16kB EPROM because 27128 EPROM is not readily available (PCB still supports 27128)

<img src="PCB/Minimal-6502_Render.jpg">

## Assembly Notes
Part U5, 32kB SRAM, can be either a 7.5mm or 14.5mm width part. If using a 7.5mm package, it should be aligned as indicated on the side closest to the CPU. 

Computer can be assembled with either an RS-232 serial port for use with a traditional terminal or USB serial adapter for use with a modern computer as a terminal. Parts related to each option are listed below.

### RS-232 DE-9 Serial
- J1 - DE-9 connector
- U2 - MAX232 RS-232 level shifter
- C1, C2, C3, C4 - 100nF capacitor
- J3 - 2.1mm barrel power connector

### USB Serial
- J2 - USB-B connector
- U8 - FTDI FT230X
- R3, R4 - 26-Ohm resistor

## Usage Notes
The computer should be powered by USB or via the barrel connector, not both. There is no on-board voltage regulation, so if the barrel connector is used, then the computer should be powered by a regulated 5V power supply. 

Serial bit rate is 115200, and backspace should be configured for **Control-H** (PuTTY defaults to **Control-?**)

When using a terminal emulator via USB, it may be necessary to press Reset to display the Cold Start prompt. 

If no size is entered on the memory size prompt, then the computer will attempt to determine the installed memory size.

## Expansion Port Header Pinout
1. +5V
2. +5V
3. +5V
4. +5V
5. D0
6. A0
7. D1
8. A1
9. D2
10. A2
11. D3
12. A3
13. D4
14. A4
15. D5
16. A5
17. D6
18. A6
19. D7
20. A7
21. R/W#
22. A8
23. READ#
24. A9
25. WRITE#
26. A10
27. NMI#
28. A11
29. RDY
30. A12
31. IRQ#
32. A13
33. [Not Connected]
34. A14
35. Phi2
36. A15
37. Ground
38. Ground
39. Ground
40. Ground
