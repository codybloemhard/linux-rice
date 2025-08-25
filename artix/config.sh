#!/bin/sh
mkdir ~/.config
mkdir ~/dow
# xs
mkdir ~/.config/sx
cp confs/xsrc ~/.config/sx/xsrc
# Pacman
doas cp confs/pacman.conf /etc/pacman.conf
# Locale
doas cp confs/locale.gen /etc/locale.gen
doas locale-gen
# scripts folder
cp -frT ../scr ~/scr
mkdir ~/scr/.sfiles
# i3
mkdir ~/.config/i3
cp confs/conf.i3 ~/.config/i3/config
# shapebar
cp ~/git/shapebar/run-shapebar ~/scr/run-shapebar
cp ~/git/shapebar/shapebar-conf ~/scr/shapebar-conf
cp -r ~/git/shapebar/modules ~/scr/
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
cp confs/asoundrc-std.conf ~/.config/alsa/asoundrc
# profile
cp confs/profile-std.conf ~/.profile
# backgrounds
cp -rT ../img ~/img
# set browser
xdg-settings set default-web-browser firefox.desktop
# git
git config --global core.editor "nvim"
git config --global column.ui auto
git config --global branch.sort -committerdate
git config --global tag.sort version:refname
git config --global init.defaultBranch master
git config --global diff.algorithm histogram # default is myers
git config --global diff.colorMoved plain
git config --global diff.mnemonicPrefix true
git config --global diff.renames true
git config --global push.autoSetupRemote true
git config --global push.followTags true
# btop
mkdir ~/.config/btop
cp confs/btop.conf ~/.config/btop/btop.conf
# sfeed
mkdir ~/.config/sfeed
mkdir ~/.config/sfeed/feeds
cp confs/sfeedrc ~/.config/sfeed/sfeedrc
# neovim (install plugins)
mkdir ~/.config/nvim
mkdir /etc/xdg/nvim
cp ../neovim/init.vim ~/.config/nvim/init.vim
doas cp ../neovim/sysinit.vim /etc/xdg/nvim/sysinit.vim
nvim -c 'PlugInstall' '+q' '+q'
# directories for mounting shit
mkdir ~/mnt
# sync time
~/scr/sync-time.sh
# firefox
../firefox/install-firefrog
# mpv
mkdir ~/.config/mpv
cp confs/mpv.conf ~/.config/mpv/mpv.conf
# grub, startup, TTY, login
cp confs/console-colours ~/.config/console-colours
doas cp confs/issue /etc/issue
doas cp confs/motd /etc/motd
doas cp confs/colours /etc/init.d/colours
doas rc-update add colours sysinit
doas cp confs/grub /etc/default/grub
doas grub-mkconfig -o /boot/grub/grub.cfg
# iptables firewall
doas cp confs/firewall /etc/init.d/firewall
doas rc-update add firewall boot
# done
echo 'Done Configuring'
