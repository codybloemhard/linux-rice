#!/bin/sh
echo "Configuring extra"
#cmus
cp confs/cmusrc-std.conf ~/.config/cmus/rc
cp confs/cmus-autosave-std.conf ~/.config/cmus/autosave
#zathura pdf viewer
cp confs/zathurarc ~/.config/zathura/zathurarc
#directories for usb script
mkdir ~/mnt
mkdir ~/mnt/usb0
mkdir ~/mnt/usb1
mkdir ~/mnt/usb2
mkdir ~/mnt/usb3
