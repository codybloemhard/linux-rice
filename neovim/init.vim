syntax on
set number relativenumber
set expandtab
set smarttab
set colorcolumn=81

" toggle file finder
nmap <C-n> :NERDTreeToggle<CR>

" go to currently opened file in nerdtree
nmap <C-S-f> :NERDTreeFind<CR>

" scroll through buffers
nmap <C-x> :bprev<CR>
nmap <C-c> :bprev<CR>

" enable powerline chars and the top bar
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" whitespace config
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:better_whitespace_ctermcolor = 'darkred'
let g:strip_whitespace_confirm = 0

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
nmap <C-f> :GFiles<CR>

nmap <C-g> :GitGutterLineHighlightsToggle<CR>

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
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'terryma/vim-multiple-cursors'
Plug 'lilydjwg/colorizer'

call plug#end()

" VIM TIPS
" ":Tutor" to learn vim!
" ":bd" to close a buffer
" "<0>" to go to begin of line
" "<$>" to go to end of line
" "<S-a>" to insert after line
" "<C-w>" to delete word before cursor
" "<S-V" to select lines
" "H,M,L" to go to top screen, middle screem, low screen

" PLUGIN TIPS
" TComment: select code and type "gc" to toggle commenting
" Vim-Rainbow: colours matching bracket pairs the same color
" auto-pairs: auto types the closing brackets

