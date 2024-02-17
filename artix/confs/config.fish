# FISH SETTINGS --------
set fish_greeting
set -U fish_color_normal normal
set -U fish_color_command brmagenta
set -U fish_color_end green
set -U fish_color_redirection green
set -U fish_color_quote yellow
set -U fish_color_error brred
set -U fish_color_param blue
set -U fish_color_operator green
set -U fish_color_escape bryellow
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_valid_path --bold
set -U fish_color_autosuggestion BD93F9
set -U fish_color_user brgreen
set -U fish_color_host normal
set -U fish_color_cancel brred
set -U fish_pager_color_completion normal
set -U fish_pager_color_description B3A06D yellow
set -U fish_pager_color_prefix white --bold --underline
set -U fish_pager_color_progress brwhite --background=cyan
set -U fish_color_match --background=brblue
set -U fish_color_comment gray
# PACMAN ---------------
abbr -a pin 'doas pacman -S'
abbr -a pun 'doas pacman -Rns'
abbr -a pss 'pacman -Ss'
abbr -a pls 'pacman -Qd'
abbr -a aurls 'paru -Qm'
abbr -a pct 'pacman -Q | wc -l'
abbr -a syu 'paru -Syu'
abbr -a pcl 'doas paccache -r -k 1; paru -cc;'
abbr -a pfd 'pacman -Qs'
# GIT ------------------
abbr -a ga 'git add -A; git status'
abbr -a gr 'git reset'
abbr -a gd 'git diff'
abbr -a gc 'git commit -m'
abbr -a gdc 'git diff HEAD~0 --stat'
abbr -a gl 'git log'
abbr -a gb 'git branch'
abbr -a gp 'git push origin'
abbr -a gch 'git checkout'
abbr -a gam 'git commit --amend - m'
abbr -a gcl 'git clone'
# RUST -----------------
abbr -a cc 'cargo clippy --all-features'
abbr -a ccc 'cargo check'
abbr -a cb 'cargo build'
abbr -a cr 'cargo run'
abbr -a cbr 'cargo build --release'
abbr -a crr 'cargo run --release'
abbr -a ct 'cargo test'
abbr -a ctt 'cargo tarpaulin --ignore-tests --skip-clean'
abbr -a bacon 'bacon -j 'clippy' -w --all-features'
abbr -a cil 'cargo install --path ./'
abbr -a cia 'cargo install-update -a'
abbr -a ca 'cargo add'
# HASKELL --------------
abbr -a cabu 'cabal update'
abbr -a cabi 'cabal install'
abbr -a cabr 'cabal run'
abbr -a cabb 'cabal build'
# OPENRC ---------------
abbr -a rc-restart 'rc-service _ restart'
abbr -a rc-statuz 'rc-service _ status'
abbr -a rc-start 'rc-service _ start'
abbr -a rc-stop 'rc-service _ stop'
abbr -a rc-list 'rc-update -v show'
# MISC -----------------
abbr -a ls 'exa'
abbr -a la 'exa -la'
abbr -a neo 'neofetch'
abbr -a p 'python'
abbr -a vim 'nvim'
abbr -a v 'nvim'
abbr -a rmd 'rm -rf'
abbr -a feh 'feh --scale-down -d'
abbr -a ka 'doas killall'
abbr -a pass 'termpasshash'
abbr -a username 'openssl rand -base64 16 | cut -c -16'
abbr -a pp 'pplanner'
abbr -a fp 'ffplay'
abbr -a ff 'firefox'
abbr -a du 'dust'
abbr -a bt 'btop'
abbr -a enc 'scrypt enc'
abbr -a dec 'scrypt dec'
abbr -a dst 'disown (nohup st &)'
abbr -a tree 'exa -T'
abbr -a libver 'dpkg -l | grep'
abbr -a ex 'chmod +x'
abbr -a weather 'curl wttr.in'
abbr -a pl 'paclog'
abbr -a head 'sed 10q'
# pacmd list-sinks | grep -e 'name:' -e 'index' # to find devices
abbr -a recordaudio 'parec -d alsa_output.usb-S.M.S.L_Audio_SMSL_M-3_Desktop_DAC-00.analog-stereo.monitor | lame -r -V0 - sample.mp3'
# specific file and directory based
abbr -a acc 'cat /mnt/reikai/vault/accounts | grep '
abbr -a notes 'nvim ~/.vimwiki/index.md'
abbr -a day 'nvim /mnt/reikai/vault/day'
abbr -a yeet 'nvim ~/doc/yeet'
abbr -a vault 'cd /mnt/reikai/vault/'
abbr -a misc 'cd ~/git/misc/'
abbr -a pullphotos 'adb pull /sdcard/DCIM/Camera'
abbr -a fishconf 'nvim ~/.config/fish/config.fish'
abbr -a nvimconf 'nvim ~/.config/nvim/init.vim'
abbr -a vimconf 'nvim ~/.config/nvim/init.vim'
abbr -a i3conf 'nvim ~/.config/i3/config'
# VIM MODE -------------
bind -M default -m default a backward-char
bind -M default -m default o forward-char
bind -M visual -m visual a backward-char
bind -M visual -m visual o forward-char
bind -M default -m insert h end-of-buffer
bind -M default l undo
bind -M default p fish_clipboard_paste
bind -M default yy fish_clipboard_copy
bind -M default Y fish_clipboard_copy
fish_vi_key_bindings
# reikai preservation

function reikai_check
    set red '\e[31m'
    set green '\e[32m'
    set orange '\e[33m'
    set blue '\e[34m'
    set purple '\e[35m'
    set end '\e[0m'
    if test -e /mnt/reikai
        df /mnt/reikai | tail -n 1 | awk '{print $1}' | read filesystemtype
        if test "$filesystemtype" = 'ramfs'
            echo -e "$purple \breikai$end: $blue \bopen$end"
        else
            echo -e "$purple \breikai: $orange \bclosed$end"
            return 0
        end
    else
        echo -e "$purple \breikai: $orange \bnonexistant$end"
            return 0
    end

    if test -e /mnt/reikai/.sealstamp
        cat /mnt/reikai/.sealstamp | read -za STAMP
        md5sum /mnt/reikai/vault/* | awk '{print $1}' | read -za CURRENT
        echo -e "$purple \breikai: $blue \bstamp found$end"
    else
        echo -e "$purple \breikai: $orange \bstamp not found$end"
        return 0
    end

    if test "$STAMP" = "$CURRENT"
        echo -e "$purple \breikai: $green \bstamp is current$end"
        return 0
    else
        echo -e "$purple \breikai: $red \bstamp is deprecated$end"
        read -l -P 'Force shutdown? [y/N] ' confirm

        if test "$confirm" = 'y'
            return 0
        else
            return 1
        end
    end
end

function rs
  if reikai_check
    doas shutdown -r now
  end
end

function sd
  if reikai_check
    doas shutdown -hP now
  end
end
# BANG BANG ------------
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end
bind ! __history_previous_command
# Don't search pacman for commands when command not found:
function fish_command_not_found
    __fish_default_command_not_found_handler $argv
end
# EXPORTS
export PATH="$HOME/.cargo/bin:$HOME/scripts:$PATH:$HOME/.local/bin"
export EDITOR='nvim'
export XMODIFIERS='@im=fcitx'
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export BAT_THEME='ansi'
export BAR_FONT_SIZE=13
export BAR_HEIGHT=26
# STARSHIP -------------
starship init fish | source
# STARTX
# if status --is-login
#     exec startx
# end
