## SARPi Project - Slackware ARM on a Raspberry Pi

Device Tree overlay for a DS3234 RTC on a Raspberry Pi.

Part of the "Install a DS3234 Real Time Clock on a Raspberry Pi running Slackware ARM" mini-project.

Installation guide URL: https://sarpi.penthux.net/index.php?p=rtc-ds3234

### Instructions

The following should be done by 'root' user ...

To install the existing spi-rtc-ds3234.dtbo DT overlay:
```
~# wget https://slackware.uk/sarpi/extra/ds3234-rpi-dtbo.tar.xz  
~# tar -xvJf ds3234-rpi-dtbo.tar.xz  
~# cp -av ds3234-rpi-dtbo/spi-rtc-ds3234.dtbo /boot/overlays/  
```
Using Makefile to build the spi-rtc-ds3234.dtbo DT overlay and install it:
```
~# wget https://slackware.uk/sarpi/extra/ds3234-rpi-dtbo.tar.xz  
~# tar -xvJf ds3234-rpi-dtbo.tar.xz  
~# cd ds3234-rpi-dtbo  
~# make && make install 
```
Manually build the spi-rtc-ds3234.dtbo DT overlay and install it:
```
~# wget https://slackware.uk/sarpi/extra/ds3234-rpi-dtbo.tar.xz  
~# tar -xvJf ds3234-rpi-dtbo.tar.xz  
~# cd ds3234-rpi-dtbo  
~# dtc -@ -I dts -O dtb -o spi-rtc-ds3234.dtbo spi-rtc-ds3234-overlay.dts  
~# cp -av spi-rtc-ds3234.dtbo /boot/overlays/  
```

