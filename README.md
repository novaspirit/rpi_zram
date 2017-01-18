# rpi_zram
script to enable zram for raspberry pi

Download the script and copy to /usr/local/bin/ folder
> sudo wget -O /usr/local/bin/zram.sh https://raw.githubusercontent.com/puregrain/rpi_zram/master/zram.sh

make file executable
> sudo chmod +x /usr/local/bin/zram.sh

edit /etc/rc.local file to run script on boot
> sudo nano /etc/rc.local

add line before exit 0
> /usr/local/bin/zram.sh &
