#!/bin/bash

export LANG=C

cores=$(nproc --all)

# disable zram
core=0
while [ $core -lt $cores ]; do
    if [[ -b /dev/zram$core ]]; then
        swapoff /dev/zram$core
    fi
    let core=core+1
done
if [[ -n $(lsmod | grep zram) ]]; then
    rmmod zram
fi
if [[ $1 == stop ]]; then
    exit 0
fi

# disable all
swapoff -a

# enable zram
modprobe zram num_devices=$cores

echo lz4 > /sys/block/zram0/comp_algorithm

totalmem=$(free | grep -e "^Mem:" | awk '{print $2}')
#mem=$(( ($totalmem / $cores)* 1024 ))
mem=$(( $totalmem * 1024 ))

core=0
while [ $core -lt $cores ]; do
    echo $mem > /sys/block/zram$core/disksize
    mkswap /dev/zram$core
    swapon -p 5 /dev/zram$core
    let core=core+1
done
