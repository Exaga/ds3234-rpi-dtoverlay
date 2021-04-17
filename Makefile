# Makefile for spi-rtc-ds3234.dtbo
# Raspberry Pi DTB overlay for DS3234 RTC
# Exaga - sarpi.penthux.net - 15 April 2021

all: spi-rtc-ds3234.dtbo
 
spi-rtc-ds3234.dtbo: spi-rtc-ds3234-overlay.dts
		dtc -@ -I dts -O dtb -o spi-rtc-ds3234.dtbo spi-rtc-ds3234-overlay.dts
 
install-spi-rtc-ds3234.dtbo: spi-rtc-ds3234.dtbo
		cp spi-rtc-ds3234.dtbo /boot/overlays/
 
install: install-spi-rtc-ds3234.dtbo
 
clean: 
		rm spi-rtc-ds3234.dtbo
