#!/bin/bash

chmod +x /home/rvgl/rvgl.sh
sudo cp /home/rvgl/autostart/rvgl.desktop /etc/xdg/autostart
sudo systemctl restart display-manager