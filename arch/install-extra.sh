#!/bin/bash
echo "Installing (extra)"
sudo pacman -Sy scrot alsa-firmware alsa-utils chromium sl unzip
sudo pacman -Sy pulseaudio cmus
echo "Done"
