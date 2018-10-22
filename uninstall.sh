# rpi_zram unstall

#sudo vi /etc/rc.local -c 'normal /zram' -c 'normal dd' -c ':wq'
sudo systemctl stop zram.service
sudo systemctl disable zram.service
sudo rm -rf /etc/systemd/system/zram.service
sudo rm -rf /usr/bin/zram.sh

