syntax on
set number relativenumber
set expandtab
set smarttab
" set colorcolumn=81
call matchadd('ColorColumn', '\%81v', 100)
" toggle file finder

" 0 = home nonwhite, - = end, 9 = home absolute
nnoremap 9 _
nnoremap 0 $
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
nmap <C-f> :GFiles<CR>
nmap <C-l> :Line<CR>
nmap <C-a> :Ag<CR>

nmap <C-g> :GitGutterLineHighlightsToggle<CR>
nmap <C-h> :NERDTreeToggle<CR>

" go to currently opened file in nerdtree

" scroll through buffers
nmap <C-x> :bprev<CR>
nmap <C-c> :bprev<CR>

nmap <F3> :NERDTreeFind<CR>
map <F4> ::source ~/.config/nvim/init.vim<CR>
map <F5> :!cargo run<CR>
map <F6> :setlocal spell! spelllang=en_us<CR>
map <F7> :Gdiff<CR>

" dragging lines
vmap <expr> <S-I> DVB_Drag('up')
vmap <expr> <S-K> DVB_Drag('down')

" enable powerline chars and the top bar
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" whitespace config
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:better_whitespace_ctermcolor = 'darkred'
let g:strip_whitespace_confirm = 0
"Originaly on "i", now i use "i" to go up
let NERDTreeMapOpenSplit='h'

let g:rainbow_active = 1


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
Plug 'gavinbeatty/dragvisuals.vim'

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

