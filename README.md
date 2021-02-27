# Cody's Linux Rice (Arch / Artix / Void)
## Maintained?
* Arch/Artix: Yes, I use this rice on my Artix Desktop daily
* Void: No, I used to use void on Desktop and Laptop but not anymore. The config is outdated.
## About
Category                | Program
------------------------|-----------------------------------
Os                      | Artix/Arch
Tiling window manager   | i3-gaps
Shell                   | Fish
Terminal                | St (https://github.com/ocdy1001/st-cody)
Launcher                | Dmenu (https://github.com/ocdy1001/dmenu-cody)
Status bar              | Shapebar (https://github.com/ocdy1001/shapebar)
Prompt                  | Starship (https://github.com/starship/starship)
Text Editor             | NeoVim
Compositor              | Picom
AUR Helper              | Paru
Keymap                  | Physical: QMK (https://github.com/ocdy1001/qmk-cody)
Notable Utils           | Scrot, Slock, Feh, Fzf, Ag, c-lolcat, Bat, Exa
## Usefull Shortcuts
- C: Control, S:Shift, M:Mod.
- Mod = (arch: windowskey, void: alt).
### i3-gaps
- M-f           = close window
- M-b           = open terminal
- M-j           = open browser
- M-h           = open dmenu
- M-Space       = toggle popup terminal
- M-a           = focus left window
- M-o           = focus right window
- M-u           = focus up window
- M-e           = focus down window
- M-S-a         = move left window
- M-S-o         = move right window
- M-S-u         = move up window
- M-S-e         = move down window
- M-k           = split horizontally from now on
- M-p           = split vertically from now on
- M-r           = toggle into resize mode
- a             = (resize mode) decrease width
- o             = (resize mode) increase width
- u             = (resize mode) decrease height
- e             = (resize mode) increase height
- M-n           = toggle fullscreen for selected window
- M-S-f         = toggle floating mode for selected window
- M-z           = increase gap size
- M-S-z         = decrease gap size
- M-x           = set gap size to default
- M-S-x         = set gap size to 0
- M-(q,g,m,l,w,y)  = switch to workspace n
- M-S(q,g,m,l,w,y) = move window to workspace n
- M-S-d         = reload config file
- M-S-s         = restart i3, keep windows open
- M-S-t         = close i3, xserver
### st-cody
- Mouse to select text(not keyboardshortcut but yea)
- C-u           = scroll up
- C-e           = scroll down
- C-S-Pgup      = increase font size
- C-S-Pgdn      = decrease font size
- C-S-c         = copy
- C-S-v         = paste
# Install
## Step 1: Install distro on your pc:
### Void
0. Boot from usb.
1. Void boots and asks to login.
2. Use login: ``root``.
3. Use password: ``voidlinux``.
4. ``void-installer`` (commands from now on like ''this'').
5. The installer comes up, go to each field and configure
6. Have a ext4 that mounts  to ``/``
7. Have a 128M fat32 partition for boot, let it mount to ``/boot/efi``
8. Have 4G + swap partion
9. Goto install, let it do its thing.
10. When prompted to reboot, say yes.
11. Your new, clean, sexy Void os boots now into the terminal. There is nothing else.
### Arch
0. Follow Arch wiki
1. When wifi only use ``wifi-menu``
2. If you use grub and it boots to an grub terminal instead of the menu, boot from usb again, arch-chroot into your system, install grub with ``--removable`` flag.
3. when chrooted in, install ``pacman -S dialog wpa_supplicant wifi-menu`` as they are only present at the install iso and not in your fresh system.
4. Install sudo ``pacman -S sudo``
5. Make a normal user ``useradd -m username`` and set password ``passwd username``
6. Add user as sudoer ``su -c visudo``, scroll down till you see ``root ALL=(ALL) ALL``, add under that line ``username ALL=(ALL) ALL``
7. Login as that user by first logging out from root ``logout``
### Step 1.5(optional) Configure wifi on Void:
0. This is for when you don have a cable and the network section in the installer failed.
1. Login as root, i had one command where sudo would do.
2. View your network interfaces ``sudo ip link show``
3. Pick your interface, called _interface from now.
4. List all networks by running ``sudo iw dev wlp2s0 scan | grep -i ssid``
5. Pick one called _ssid from now.
6. You know the password for the network, called _key from now.
7. Backup example conf: ``cp /etc/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant-std.conf``
8. Populate the conf with our data. ``wpa_passphrase _ssid _key >> /etc/wpa_supplicant/wpa_supplicant.conf``
9. For some reason had to do ``killall wpa_applicant``;
10. ``wpa_supplicant -B -i<interface_name> -c<path/to/configuration/file> -Dwext``
11. ``dhcpcd _interface``
12. Should work now, ``xbps-install -S`` and ``ping google.com`` should work.
13. If not, i also had to repeat some steps. If it prompts that it has this file in /usr/.... after step 10, just remove it with ``rm filename``. and repeat step 10.
## Step 2 Install Rice:
0. Assuming you have internet access now and you only have void/arch installed: there is only a terminal. No windows etc. commands:(``void`` || ``arch``)
1. Login as a normal user.
2. Install git: ``sudo xbps-install -Sy git`` || ``sudo pacman -S git``
3. Make a dir for all git projects: ``mkdir ~/git``
4. Goto the new dir: ``cd ~/git``
5. Pull this repo(assuming you read this on another device): ``git clone https://github.com/ocdy1001/VoidLinuxRice.git``
6. ``cd ~/git/LinuxRice/void`` || ``cd ~/git/LinuxRice/arch``
7. Let FILENAME be ``cvlr.sh`` || ``calr.sh``
8. Give exec rights: ``chmod +x FILENAME``
9. Run it ``./FILENAME``
10. It does stuff(installing using xbps or pacman and copying config files).
11. You now have the programs, my configs, repos installed, system updated etc.
12. ``startx``
13. Should see a space image background.
14. Press ``windowskey+enter`` to fire up a terminal.
15. ``windowskey+b``, to fire up the browser, log in, browser should be dark themed, else choose gtk+ in the settings.
16. Done.
