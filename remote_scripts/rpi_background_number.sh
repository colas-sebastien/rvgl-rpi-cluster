#!/bin/bash

file=/home/rvgl/.config/pcmanfm/LXDE-pi/desktop-items-0.conf

sed -i '/wallpaper=/d' $file
echo "wallpaper=/home/rvgl/background/`hostname`.jpg" >> $file
sudo systemctl restart display-manager