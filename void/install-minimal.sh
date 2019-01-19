#!/bin/bash
echo "Installing (minimal)"
sudo xbps-install -Suy
sudo xbps-install -Sy void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree
sudo xbps-install -S
sudo xbps-install -Sy xorg i3-gaps i3status dmenu feh compton terminator arc-theme linux-headers polybar
echo "Done"
