#!/bin/bash

sudo apt update
sudo apt install build-essential dkms linux-headers-$(uname -r)

echo " "
echo "Press y when Guest additions disk is inserted" 
read input

sudo mkdir -vp /mnt/cdrom
sudo mount -v /dev/cdrom /mnt/cdrom

cd /mnt/cdrom
sudo sh ./VBoxLinuxAdditions.run --nox11

echo " "
echo "Press y to reboot"
read input

shutdown -r now
