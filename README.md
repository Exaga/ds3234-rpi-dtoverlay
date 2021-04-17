SARPi Project - Slackware ARM on a Raspberry Pi

Install a DS3234 Real Time Clock on a Raspberry Pi running Slackware ARM

How To URL: https://sarpi.penthux.net/index.php?p=rtc-ds3234

To install the existing overlay:

root@slackware:~# wget sarpi.penthux.net/files/extra/ds3234-rpi-dtbo.tar.xz  
root@slackware:~# tar -xvJf ds3234-rpi-dtbo.tar.xz  
root@slackware:~# cp -av ds3234-rpi-dtbo/spi-rtc-ds3234.dtbo /boot/overlays/  

To build the overlay and install it:

root@slackware:~/ds3234-rpi-dtbo# make && make install 

