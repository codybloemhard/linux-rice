syntax on
set number relativenumber
set expandtab
set smarttab
set shiftwidth=4
set hidden
set noswapfile
" set colorcolumn=81
call matchadd('ColorColumn', '\%81v', 100)
highlight ColorColumn ctermbg=0

let mapleader = " "

" 0 = home nonwhite, - = end, 9 = home absolute
nnoremap 0 _
nnoremap _ 0

" hjkl to jikl
nnoremap h i
nnoremap j h
nnoremap k j
nnoremap i k
nnoremap h i
vnoremap j h
vnoremap k j
vnoremap i k
vnoremap h i

" moving between windows
nnoremap <C-j> <C-W>j
nnoremap <C-l> <C-W>l
nnoremap <C-i> <C-W>i
nnoremap <C-k> <C-W>k

" Use fzf to find files, ignoring git files
nnoremap <leader>f :GFiles<CR>
nnoremap <leader>l :Line<CR>
nnoremap <leader>a :Ag<CR>
nnoremap <leader>g :Files<CR>

" scroll through buffers
nmap <C-x> :bprev<CR>
nmap <C-c> :bnext<CR>

map <F2> :w<CR>
map <F4> :source ~/.config/nvim/init.vim<CR>
map <F5> :w<CR>:!cargo run<CR>
map <F6> :setlocal spell! spelllang=en_us<CR>

" dragging lines
vnoremap K :m '>+1<CR>gv=gv
vnoremap I :m '<-2<CR>gv=gv

" enable powerline chars and the top bar
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" whitespace config
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:better_whitespace_ctermcolor = 'darkred'
let g:strip_whitespace_confirm = 0

let g:rainbow_active = 1
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
let g:indentLine_char = '┆'

" plugins

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tomtom/tcomment_vim'
Plug 'frazrepo/vim-rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'terryma/vim-multiple-cursors'
Plug 'lilydjwg/colorizer'
Plug 'Yggdroot/indentLine'

call plug#end()

" PLUGIN TIPS
" TComment: select code and type "gc" to toggle commenting
" Vim-Rainbow: colours matching bracket pairs the same color
" auto-pairs: auto types the closing brackets

