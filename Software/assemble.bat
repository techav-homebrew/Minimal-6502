ca65 osi_bas.s -o osi_bas.o -l
ld65 -C osi_bas.cfg osi_bas.o -o osi_bas.bin
bin2hex.exe 0x80 osi_bas.bin ROM8K.HEX

pause
