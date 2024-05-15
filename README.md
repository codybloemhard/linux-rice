# Cody's Linux Rice (Artix / Arch / Void)

## Maintained?

* Artix: Yes, I use this rice on my Artix desktop daily
* Arch: Kinda, after some minor tweaks it should be fine on Arch.
* Void: No, I used to use void on desktop and laptop but not anymore. The config is outdated.

## About

- A minimal but useable desktop environment for my personal use.
- Supports live theme changing.

Key                     | Value
------------------------|-----------------------------------
Os                      | Artix
Init system             | OpenRC
Display server          | X11
Display init            | xs (https://github.com/Earnestly/sx)
Window manager          | i3-gaps
Shell (bin/sh)          | Dash
Shell (Login)           | Fish
Terminal                | St (https://gitlab.com/codybloemhard/st-cody)
Launcher                | Dmenu (https://gitlab.com/codybloemhard/dmenu-cody)
Status bar              | Shapebar (https://gitlab.com/codybloemhard/shapebar)
Prompt                  | Starship (https://github.com/starship/starship)
Text editor             | NeoVim
Compositor              | Picom
AUR helper              | Paru
Keymap                  | Physical: QMK (https://gitlab.com/codybloemhard/qmk-cody)
Notable Utils           | Scrot, Slock, Feh, Fzf, Ag, Bat, Eza, Dust, Btop, Paclog
Themes                  | Nord, Gruvbox, Hawkrad, Tokyo Night, Space, Dark

## Example Image

![Nord Theme Example](https://codyb.xyz/img/rice0.webp)

## Usefull Shortcuts

- C: Control, S:Shift, M:Mod.
- M = Mod (windowskey).

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

- Mouse to select text(if you want)
- C-u           = scroll up
- C-e           = scroll down
- C-S-Pgup      = increase font size
- C-S-Pgdn      = decrease font size
- C-S-c         = copy
- C-S-v         = paste
- C-v           = Select mode (Vim-like)
    - a,u,e,o   = Move around
    - arrows    = Move around
    - s         = Toggle select mode
    - t         = Toggle block mode
    - Escape    = Quit select mode
    - Return    = Quit select mode and keep selection
    - /, ?      = Search forward, backwards
    - n, N      = Next, previous search result

# Install

## Install Rice:

0. Assuming you have internet access now and you only have artix installed.
1. Login as a normal user.
2. Install git (or include it in pacstrap): `sudo pacman -S git`
3. Make a dir for all git projects: `mkdir ~/git`
4. Goto the new dir: `cd ~/git`
5. Pull this repo(assuming you read this on another device): `git clone https://gitlab.com/codybloemhard/linux-rice.git`
6. `cd ~/git/linux-rice/artix`
8. Give exec rights: `chmod +x calr.sh`
9. Run it `./calr.sh`
10. It does stuff(installing and copying config files).
11. You now have the programs, my configs, repos installed, system updated etc.
12. `startx` to start the x server.

### Configure wifi (wpa, optional):

0. View your network interfaces `sudo ip link show`
1. Pick your interface, called _interface from now.
2. List all networks by running `sudo iw dev interface scan | grep -i ssid`
3. Pick one called _ssid from now.
4. You know the password for the network, called _key from now.
5. Backup example conf: `cp /etc/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant-std.conf`
6. Populate the conf with our data. `wpa_passphrase _ssid _key >> /etc/wpa_supplicant/wpa_supplicant.conf`
7. For some reason had to do `killall wpa_applicant`;
8. `wpa_supplicant -B -i<interface_name> -c<path/to/configuration/file> -Dwext`
9. `dhcpcd _interface`
10. Should work now, `pacman -Syu` and `ping somewebsite` should work.
11. If not, i also had to repeat some steps. If it prompts that it has this file in /usr/.... after step 10, just remove it with `rm filename`. and repeat step 10.

### Confige wifi (connmanctl, optional):

0. `connmanctl`
1. `enable wifi`
2. `scan wifi`
3. `agent on`
4. `connect wifi_...`

### Some tid bits

- mount boot partition to `/mnt/boot`, but install grub with `grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=grub`
- If you use grub and it boots to an grub terminal instead of the menu, boot from usb again, arch-chroot into your system, install grub with `--removable` flag.
- when chrooted in, install `pacman -S iwd dhcpcd` as they are only present at the install iso and not in your fresh system.
- Install sudo `pacman -S sudo`
- Make a normal user `useradd -m username` and set password `passwd username`
- Add user as sudoer `su -c visudo`, scroll down till you see `root ALL=(ALL) ALL`, add under that line `username ALL=(ALL) ALL`

## More Examples

![Gruvbox Theme Example](https://codyb.xyz/img/rice1.webp)
![Hawkrad Theme Example](https://codyb.xyz/img/rice2.webp)
