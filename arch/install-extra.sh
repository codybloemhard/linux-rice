#!/bin/bash
echo "Installing (extra)"
sudo pacman -Sy --noconfirm scrot alsa-firmware alsa-utils firefox sl unzip zip zathura-pdf-mupdf
sudo pacman -Sy --noconfirm pulseaudio cmus
sudo pacman -Sy --noconfirm the_silver_searcher #ag
echo "Done"
