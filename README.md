# ocdy1001's Linux Rice (Void/Arch)
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
