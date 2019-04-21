#!/bin/bash
echo "Installing (extra)"
sudo pacman -Sy scrot alsa-firmware alsa-utils firefox sl unzip zathura-pdf-mupdf
sudo pacman -Sy pulseaudio cmus
sudo pacman -Sy the_silver_searcher #ag
echo "Done"
