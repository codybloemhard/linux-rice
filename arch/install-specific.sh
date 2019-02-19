#!/bin/bash
echo "Installing (specific)"
sudo pacman -Sy code
sudo pacman -Sy texlive-most mupdf
yay -S https://aur.archlinux.org/discord.git
yay -S https://aur.archlinux.org/pkgbase/minecraft-launcher/
echo "Done"
