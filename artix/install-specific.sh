#!/bin/sh
echo "Installing (specific)"
# latex
doas pacman -Sy texlive-most mupdf
# minecraft
paru minecraft-launcher
# vscode opensource
paru vscodium-bin
# rust lang
curl https://sh.rustup.rs -sSf | sh
# steam
doas pacman -Sy lib32-nvidia-utils steam
# to change gtk theme by hand
doas pacman -S lxappearance-gtk3
# pdf reader
doas pacman -Sy --noconfirm zathura-pdf-mupdf
# music player
doas pacman -Sy --noconfirm cmus
# fcitx (japanese input)
doas pacman -S fcitx-im fcitx-configtool fcitx-mozc
cp confs/fcitx.conf ~/.config/fcitx/config
# sfeed (rss)
doas paru sfeed
# lsusb
doas pacman -Sy usbutils
# mkfs.ext4
dosfstools
echo "Done"
