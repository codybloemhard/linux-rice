# FISH SETTINGS ----------------
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
# PACMAN ----------------
abbr -a pin 'sudo pacman -S'
abbr -a pun 'sudo pacman -Rns'
abbr -a pss 'pacman -Ss'
abbr -a pls 'pacman -Qd'
abbr -a aurls 'paru -Qm'
abbr -a pct 'pacman -Q | wc -l'
abbr -a syu 'paru -Syu'
abbr -a pcl 'sudo paru -Sc; paru --clean'
abbr -a pfd 'pacman -Qs'
# GIT ----------------
abbr -a ga 'git add -A; git status'
abbr -a gr 'git reset'
abbr -a gd 'git diff'
abbr -a gc 'git commit -m'
abbr -a gdc 'git diff HEAD~0 --stat'
abbr -a gl 'git log'
abbr -a gb 'git branch'
abbr -a gp 'git push origin'
abbr -a gch 'git checkout'
# RUST ----------------
abbr -a cc 'cargo clippy --all-features'
abbr -a ccc 'cargo check'
abbr -a cb 'cargo build'
abbr -a cr 'cargo run'
abbr -a cbr 'cargo build --release'
abbr -a crr 'cargo run --release'
abbr -a ct 'cargo test'
abbr -a ctt 'cargo tarpaulin --ignore-tests'
abbr -a bacon 'bacon clippy-all'
# MISC ----------------
abbr -a la 'exa -la'
abbr -a neo 'neofetch'
abbr -a sd 'sudo shutdown -hP now'
abbr -a rs 'sudo shutdown -r now'
abbr -a p 'python'
abbr -a vim 'nvim'
abbr -a v 'nvim'
abbr -a rmd 'rm -rf'
abbr -a feh 'feh --scale-down -d'
abbr -a ka 'sudo killall'
abbr -a pass 'termpasshash'
abbr -a username 'openssl rand -base64 16 | cut -c -16'
abbr -a pp 'pplanner'
abbr -a fp 'ffplay'
abbr -a ff 'firefox'
abbr -a du 'dust'
abbr -a day 'bat git/misc/day-plan'
abbr -a bt 'btop'
abbr -a enc 'scrypt enc'
abbr -a dec 'scrypt dec'
abbr -a acc 'cat ~/git/misc/accounts | grep '
abbr -a dst 'disown (nohup st &)'
abbr -a tree 'exa -T'
abbr -a fishconf 'nvim ~/.config/fish/config.fish'
abbr -a nvimconf 'nvim ~/.config/nvim/init.vim'
abbr -a vimconf 'nvim ~/.config/nvim/init.vim'
abbr -a i3conf 'nvim ~/.config/i3/config'
# VIM MODE ----------------
bind -M default -m default a backward-char
bind -M default -m default o forward-char
bind -M visual -m visual a backward-char
bind -M visual -m visual o forward-char
bind -M default -m insert h end-of-buffer
bind -M default l undo
fish_vi_key_bindings
# BANG BANG ----------------
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
# STARSHIP ----------------
export PATH="$HOME/.cargo/bin:$HOME/scripts:$PATH:$HOME/.local/bin"
starship init fish | source
# FCITX
export XMODIFIERS='@im=fcitx'
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
# STARTX
if status --is-login
    exec startx
end
