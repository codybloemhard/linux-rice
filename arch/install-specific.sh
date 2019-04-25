#!/bin/bash
echo "Installing (specific)"
#latex
sudo pacman -Sy texlive-most mupdf
#discord
yay -S https://aur.archlinux.org/discord.git
#minecraft
yay -S https://aur.archlinux.org/pkgbase/minecraft-launcher/
#vscode opensource
yay -S vscodium-bin
#rust lang
curl https://sh.rustup.rs -sSf | sh
echo "Done"
