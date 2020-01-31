sudo pacman -Sy --noconfirm nvim
# plugin manager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# install font to get nerdtree icons to work
yay -Sy nerd-fonts-complete
