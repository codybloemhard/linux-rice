#!/bin/sh
echo "Installing (specific)"
# latex
sudo pacman -Sy texlive-most mupdf
# discord
yay -S discord
# minecraft
yay -S minecraft-launcher
# vscode opensource
yay -S vscodium-bin
#rust lang
curl https://sh.rustup.rs -sSf | sh
# steam
sudo pacman -Sy lib32-nvidia-utils steam
# to change gtk theme by hand
sudo pacman -S lxappearance-gtk3
# pdf reader
sudo pacman -Sy --noconfirm zathura-pdf-mupdf
# music player
sudo pacman -Sy --noconfirm cmus
echo "Done"
