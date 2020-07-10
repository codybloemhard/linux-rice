#!/bin/bash
echo "Installing (specific)"
#latex
sudo pacman -Sy texlive-most mupdf
#discord
yay -S discord
#minecraft
yay -S minecraft-launcher
#vscode opensource
yay -S vscodium-bin
#rust lang
curl https://sh.rustup.rs -sSf | sh
echo "Done"
#steam
sudo pacman -Sy lib32-nvidia-utils steam
#to change gtk theme by hand
sudo pacman -S lxappearance-gtk3
# japanese font
yay ttf-koruri
