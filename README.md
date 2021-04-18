## SARPi Project - Slackware ARM on a Raspberry Pi

Device Tree overlay for a DS3234 RTC on a Raspberry Pi.

Part of the "Install a DS3234 Real Time Clock on a Raspberry Pi running Slackware ARM" mini-project.

Installation guide URL: https://sarpi.penthux.net/index.php?p=rtc-ds3234

### Instructions

The following should be done by 'root' user ...

To install the existing spi-rtc-ds3234.dtbo DT overlay:
```
~# curl -O https://slackware.uk/sarpi/extra/ds3234-rpi-dtbo.tar.xz  
~# tar -xvJf ds3234-rpi-dtbo.tar.xz  
~# cp -av ds3234-rpi-dtbo/spi-rtc-ds3234.dtbo /boot/overlays/  
```
Using Makefile to build the spi-rtc-ds3234.dtbo DT overlay and install it:
```
~# curl -O https://slackware.uk/sarpi/extra/ds3234-rpi-dtbo.tar.xz  
~# tar -xvJf ds3234-rpi-dtbo.tar.xz  
~# cd ds3234-rpi-dtbo  
~# make && make install 
```
Manually build the spi-rtc-ds3234.dtbo DT overlay and install it:
```
~# curl -O https://slackware.uk/sarpi/extra/ds3234-rpi-dtbo.tar.xz  
~# tar -xvJf ds3234-rpi-dtbo.tar.xz  
~# cd ds3234-rpi-dtbo  
~# dtc -@ -I dts -O dtb -o spi-rtc-ds3234.dtbo spi-rtc-ds3234-overlay.dts  
~# cp -av spi-rtc-ds3234.dtbo /boot/overlays/  
```
#### Configure /boot/config.txt

Use a text editor to open the /boot/config.txt file:
```
~# nano -w /boot/config.txt 
```
Enable the SPI interface and load the DS3234 RTC DT overlay in /boot/config.txt at boot time by editing/adding the following lines to the file:
```
# Uncomment some or all of these to enable the optional hardware interfaces
#dtparam=i2c_arm=on
#dtparam=i2s=on
dtparam=spi=on

# Uncomment to load the DS3234 DT overlay
dtoverlay=spi-rtc-ds3234 
```
Save and exit the /boot/config.txt file. Reboot the system.

