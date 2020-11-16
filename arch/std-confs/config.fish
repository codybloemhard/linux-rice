set fish_greeting

# PACMAN ----------------
function pacin
    sudo pacman -S $argv | lolcat
end
function pacrm
    sudo pacman -Rns $argv | lolcat
end
function pacss
    pacman -Ss $argv | lolcat
end
abbr -a pacls 'pacman -Qd | lolcat'
abbr -a aurls "yay -Qm"
abbr -a pacct 'pacman -Q | wc -l | lolcat'
abbr -a syu 'pacman -Syu | lolcat;yay -Syu | lolcat'
abbr -a pacuc 'pacman -Qu | wc -l | lolcat'
abbr -a paccl 'sudo pacman -Scc;yay -Sc;yay -Yc'
abbr -a pacfd 'pacman -Q | grep'
# GIT ----------------
abbr -a gitad 'git add -A;git status | lolcat'
function gitpu
    git push origin $argv | lolcat;
end
function gitco
    git commit -m $argv | lolcat;
end
# MISC ----------------
abbr -a la 'exa -la'
abbr -a l 'ls'
abbr -a neo 'neofetch | lolcat;'
abbr -a shutdown 'sudo shutdown -P now;'
abbr -a restart 'sudo shutdown -r now;'
abbr -a py 'python'
abbr -a snek 'python'
abbr -a vim 'nvim'
abbr -a v 'nvim'
abbr -a rmd 'rm -rf'
abbr -a ix "curl -s -F 'f:1=<-' ix.io"
abbr -a ccat "pigmentize -g"
abbr -a feh 'feh --scale-down -d'
abbr -a ka 'sudo killall'
abbr -a cc 'cargo check'
abbr -a cb 'cargo build'
abbr -a cr 'cargo run'
abbr -a cbr 'cargo build --release'
abbr -a crr 'cargo run --release'
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
# STARSHIP ----------------
export PATH="$HOME/.cargo/bin:$PATH"
starship init fish | source
