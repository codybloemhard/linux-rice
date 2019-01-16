#!/bin/bash
echo "Installing (specific)"
sudo pacman -Sy code
sudo pacman -Sy texlive-most
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
yay -S https://aur.archlinux.org/discord.git
yay -S https://aur.archlinux.org/pkgbase/minecraft-launcher/
echo "Done"
