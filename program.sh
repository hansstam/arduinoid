cd /sdcard/andri
/data/data/jackpal.androidterm/local/bin/avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o program.o program.c
/data/data/jackpal.androidterm/local/bin/avr-gcc -mmcu=atmega328p program.o -o program
/data/data/jackpal.androidterm/local/bin/avr-objcopy -O ihex -R .eeprom program program.hex
/data/data/jackpal.androidterm/local/bin/avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyACM0  -b 115200 -C /data/data/jackpal.androidterm/local/etc/avrdude.conf -U flash:w:program.hex

