" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim
syntax on
set number relativenumber
set expandtab
set smarttab
set shiftwidth=4
set hidden
set noswapfile
set clipboard+=unnamedplus " use system clipboard(needs xclip)
set backupcopy=yes
set mouse=c " disable mouse
set colorcolumn=81
highlight ColorColumn ctermbg=1
" leader = space, ; easier than :
let mapleader = " "
nnoremap ; :
vnoremap ; :
" quick save and quiting options
nnoremap <leader>g :w<CR>
vnoremap <leader>g :w<CR>
nnoremap <leader>q :wq<CR>
vnoremap <leader>q :wq<CR>
nnoremap <leader>m :w<CR>
" 0 = home nonwhite, - = end, 9 = home absolute
nnoremap 0 _
nnoremap _ 0
vnoremap 0 _
vnoremap _ 0
" v is V and V is v, because V is more useful more times
nnoremap v V
nnoremap V v
vnoremap v V
vnoremap V v
" hjkl to aueo
nnoremap a h
nnoremap u k
nnoremap e j
nnoremap o l
vnoremap a h
vnoremap u k
vnoremap e j
vnoremap o l
" replace overwritten commands
nnoremap h a
nnoremap H A
nnoremap k o
nnoremap K O
nnoremap l u
nnoremap L U
nnoremap W e
vnoremap h a
vnoremap H A
vnoremap k o
vnoremap K O
vnoremap l u
vnoremap L U
vnoremap W e
" faster jumps
nnoremap U 5k
nnoremap E 5j
vnoremap U 5k
vnoremap E 5j
" dragging lines
vnoremap <C-S-E> :m '>+1<CR>gv=gv
vnoremap <C-S-U> :m '<-2<CR>gv=gv
" clear search highlight
nnoremap <leader>c :noh<CR>
" moving between windows
nnoremap <A-a> <C-W>h
nnoremap <A-u> <C-W>k
nnoremap <A-e> <C-W>j
nnoremap <A-o> <C-W>l
" scroll through buffers
nnoremap <C-x> :bprev<CR>
nnoremap <C-c> :bnext<CR>
nnoremap <leader>d :bd<CR>
