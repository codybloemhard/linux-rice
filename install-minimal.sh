#!/bin/bash
echo "Installing (minimal)"
sudo xbps-install -Suv
sudo xbps-install -Sy void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree
sudo xbps-install -S
sudo xbps-install -Sy xorg i3-gaps i3status dmenu feh lxappearance compton terminator arc-theme linux-headers
echo "Done"