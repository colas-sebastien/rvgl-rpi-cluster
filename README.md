# rvgl-rpi-cluster
Setup 4x RaspberryPi 4 in cluster to play rvgl (Re-Volt) on a single display and play in network mode

## Hardware
### Bill of Materials
- 4x Raspberry Pi 4 (1Gb, 2Gb or 4Gb of Ram)
- 4x USB-C to USB cables
- 4x Micro HTMI to HDMI Cables
- 4x Mrico SDCard (Minimum 16Gb of mem)
- 1x HDMI Quad Viewer
- 1x HDMI cable
- 1x Ethernet Switch with at least 5 ports
- 4x Ethernet short cables
- 1x Ethernet long cable
### Connecting everything together

## Software

### Install Rapsberry Pi OS
On a Linux machine prepare the SDCards thanks to Raspberr Pi Imager.
Install the Raspberry Pi OS 64bit, click on edit settings
- General
    - Hostname: rgvl-1,rvgl-2,rvgl-3,rvgl-4 (depending of the RPi you are installing)
    - Username: rvgl
    - Password: The password you want
    - Local: configure your local settings
- Services
    - enable ssh
    - provide your public key

![imager step 1](img/imager_01.jpg)
![imager step 2](img/imager_02.jpg)
![imager step 3](img/imager_03.jpg)

Repeat these steps for the 4 SDCards, don't forget to change hostnames.

### Customize images
On a linux machine verify that you can access to RPi thanks to ssh.
```
ssh rvgl@rvgl-1.local
```
Repeat it for all RPi

Update Raspberry pi OS:
```
./execute_on_cluster.sh update
```

Install packages needed by rvgl:
```
./execute_on_cluster.sh packages_to_install
```

Install remote files:
```
./deploy_files_on_cluster.sh
```

Configure Bluetooth devices on each cluster member
```
ssh rvgl@rvgl-1.local
bluetoothctl
scan on
pair BT_ADDRESS
connect BT_ADDRESS
```


Install RVGL Launcher on your linux machine
https://rvgl.org/downloads/rvgl_launcher_linux.zip


./rvgl.64 -basepath /ssdgames/rvgl -prefpath /ssdgames/rvgl/save -packlist default -nop2p -sessionlog -nointro -nopause -profile cassbeck -savereplays -showping -tvtime

# Troubleshooting
## Unpair a Blutooth joypad:
```
ssh rvgl@rvgl-1.local
bluetoothctl
cancel-pairing BT_ADDRESS
remove BT_ADDRESS
```

BT XBox controller white: C8:3F:26:9A:A3:87
