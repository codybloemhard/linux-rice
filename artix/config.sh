#!/bin/sh
# Pacman
doas cp confs/pacman.conf /etc/pacman.conf
# Locale
doas cp confs/locale.gen /etc/locale.gen
doas locale-gen
# scripts folder
cp -frT ../scripts ~/scripts
mkdir ~/scripts/.sfiles
# xorg
mkdir ~/.config
cp confs/.xinitrc ~/.xinitrc
# i3
mkdir ~/.config/i3
cp confs/conf.i3 ~/.config/i3/config
# shapebar
cp ~/git/shapebar/run-shapebar ~/scripts/run-shapebar
cp ~/git/shapebar/shapebar-conf ~/scripts/shapebar-conf
cp -r ~/git/shapebar/modules ~/scripts/
# gtk theme
mkdir ~/.config/gtk-3.0
cp confs/gtk-gtk3.css ~/.config/gtk-3.0/gtk.css
cp confs/settings-gtk3.ini ~/.config/gtk-3.0/settings.ini
mkdir ~/.config/gtk-2.0
cp confs/gtkfilechooser-gtk2.ini ~/.config/gtk-2.0/gtkfilechooser.ini
cp confs/settings-gtk2.ini ~/.config/gtk-2.0/settings.ini
# picom
mkdir ~/.config/picom
cp confs/picom-std.conf ~/.config/picom/picom.conf
# fish
chsh -s $(which fish)
cp confs/starship.toml ~/.config/
cp confs/config.fish ~/.config/fish/
# to select right audio device(smsl m3 dac for me)
cp confs/asoundrc-std.conf ~/.asoundrc
# profile
cp confs/profile-std.conf ~/.profile
# backgrounds
cp -rT ../img ~/img
# set browser
xdg-settings set default-web-browser firefox.desktop
# git
git config --global core.editor "nvim"
# btop
cp confs/btop.conf ~/.config/btop/btop.conf
# neovim (install plugins)
mkdir ~/.config/nvim
mkdir /etc/xdg/nvim
cp ../neovim/init.vim ~/.config/nvim/init.vim
doas cp ../neovim/sysinit.vim /etc/xdg/nvim/sysinit.vim
nvim -c 'PlugInstall' '+q' '+q'
# directories for mounting shit
mkdir ~/mnt
# sync time
~/scripts/sync-time.sh
# firefox
../firefox/install-firefrog
# done
echo 'Done Configuring'
