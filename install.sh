# rpi_zram install

#Download the script and copy to /usr/bin/ folder
sudo wget -O /usr/bin/zram.sh https://raw.githubusercontent.com/novaspirit/rpi_zram/master/zram.sh

#make file executable
sudo chmod +x /usr/bin/zram.sh

#add line before exit 0
sudo vi /etc/rc.local -c 'normal GO/usr/bin/zram.sh &' -c ':wq'
