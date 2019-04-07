# Cody's Linux Rice (Void / Arch)
## Step 1: Install Void on your pc:
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
## Dependencies
This rice should install everything including it's dependencies.
I clone some of my repo's in order or compile and install software.
They are mainly forks of existing open source software, mostly suckless stuff.
- https://github.com/ocdy1001/dmenu-cody
- https://github.com/ocdy1001/st-cody
## Usefull Shortcuts
- C: Control, S:Shift, M:Mod.
- Mod = (arch: windowskey, void: alt).
- This is because i use void on my laptop and it has the windows key on a weird place.
### i3-gaps
- M-q           = close window
- M-Enter       = open terminal
- M-b           = open browser
- M-BackSpace   = open dmenu
- M-Space       = toggle popup terminal 
-
- M-j           = focus left window
- M-l           = focus right window
- M-i           = focus up window
- M-k           = focus down window
- M-S-j         = move left window
- M-S-l         = move right window
- M-S-i         = move up window
- M-S-k         = move down window
- M-Left        = focus left window
- M-Right       = focus right window
- M-Up          = focus up window
- M-Down        = focus down window
- M-S-Left      = move left window
- M-S-Right     = move right window
- M-S-Up        = move up window
- M-S-Down      = move down window
- M-h           = split horizontally from now on
- M-v           = split vertically from now on
- 
- M-r           = go into resize mode
- M-r           = (resize mode) go back to normal mode
- M-Enter       = (resize mode) go back to normal mode
- M-Esc         = (resize mode) go back to normal mode
- j             = (resize mode) decrease width
- u             = (resize mode) increase width
- k             = (resize mode) decrease height
- i             = (resize mode) increase height
- Left          = (resize mode) decrease width
- Right         = (resize mode) increase width
- Down          = (resize mode) decrease height
- Up            = (resize mode) increase height
- 
- M-f           = toggle fullscreen for selected window
- M-S-f         = toggle floating mode for selected window
- M-z           = increase gap size
- M-S-z         = decrease gap size
- M-x           = set gap size to default
- M-S-x         = set gap size to 0
- 
- M-(1..9,0)    = switch to workspace n
- M-S(1..9,0)   = move window to workspace n
- 
- M-S-c         = reload config file
- M-S-r         = restart i3, keep windows open
- M-S-e         = close i3, xserver
- M-S-o         = start compositor
- M-S-p         = kill compositor
### st-cody
- Mouse to select text(not keyboardshortcut but yea)
- S-Up          = scroll n lines up
- S-Down        = scroll n lines down
- S-Pgup        = scroll n lines up
- S-Pgdn        = scroll n lines down
- C-S-Pgup      = increase font size
- C-S-Pgdn      = decrease font size
- C-S-c         = copy
- C-S-v         = paste
