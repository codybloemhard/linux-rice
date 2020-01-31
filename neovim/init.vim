syntax on
set number relativenumber
set expandtab
set smarttab

" toggle file finder
nmap <C-n> :NERDTreeToggle<CR>
" go to currently opened file in nerdtree
nmap <C-f> :NERDTreeFind<CR>
" scroll through buffers
nmap <C-x> :bprev<CR>
nmap <C-c> :bprev<CR>
" enable powerline chars and the top bar
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" hjkl to jikl
noremap h i
noremap j h
noremap k j
noremap i k
noremap h i
" moving between windows
nnoremap <C-j> <C-W>j
nnoremap <C-l> <C-W>l
nnoremap <C-i> <C-W>i
nnoremap <C-k> <C-W>k

"Originaly on "i", now i use "i" to go up
let NERDTreeMapOpenSplit='h'

let g:rainbow_active = 1

" Use fzf to find files, ignoring git files
nmap <C-o> :GFiles<CR>

" TComment: select code and type "gc" to toggle commenting

" plugins

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tomtom/tcomment_vim'
Plug 'frazrepo/vim-rainbow'

call plug#end()

