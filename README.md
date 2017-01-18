# RPI_ZRAM by Don ([**@novaspirit**](https://github.com/novaspirit/rpi_zram))
This script will enable ZRAM on a Raspberry Pi

## Quick Installer
Install RPI_ZRAM from your Raspberry Pi's shell promt:
> sudo wget -q https://git.io/vM1kx -O /tmp/rpizram && bash /tmp/rpizram
The installer will complete the steps in the manual installation (below) for you.

## Manual Installation
Download the script and copy to /usr/local/bin/ folder
> sudo wget -O /usr/local/bin/zram.sh https://raw.githubusercontent.com/puregrain/rpi_zram/master/zram.sh

make file executable
> sudo chmod +x /usr/local/bin/zram.sh

edit /etc/rc.local file to run script on boot
> sudo nano /etc/rc.local

add line before exit 0
> /usr/local/bin/zram.sh &

run the script to start your RPI_ZRAM
sudo /usr/local/bin/zram.sh

## See it in action
Use top, htop or atop. Which ever you prefer to view the swap memory in action or a simple free -m will do the trick
>free -m

That command should output something like:

![](http://i.imgur.com/eAGIFXo.png)
