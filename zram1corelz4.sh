#!/bin/bash
rmmod zram
modprobe zram num_devices=1

swapoff -a

echo 'lz4' > /sys/block/zram0/comp_algorithm
totalmem=`free | grep -e "^Mem:" | awk '{print $2}'`
mem=$(( $totalmem * 1024 ))

echo $mem > /sys/block/zram0/disksize
mkswap /dev/zram$core
swapon -p 5 /dev/zram0

