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
set colorcolumn=101
set laststatus=3
set conceallevel=0
set noshowmode
" call matchadd('ColorColumn', '\%101v')
highlight ColorColumn ctermbg=4
" fix fzf/telescope background colour
highlight NormalFloat ctermbg=0
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
" Use fzf to find files, ignoring git files
nnoremap <leader>n :GFiles<CR>
nnoremap <leader>t :Ag<CR>
nnoremap <leader>s :Files<CR>
" scroll through buffers
nnoremap A :bprev<CR>
nnoremap O :bnext<CR>
nnoremap <leader>d :bd<CR>
" some extras
map <F4> :source ~/.config/nvim/init.vim<CR>
map <F5> :w<CR>:!./compile<CR>
map <F6> :setlocal spell! spelllang=en_gb<CR>

" status
highlight Sbg ctermbg=None ctermfg=1
highlight Sft ctermbg=None ctermfg=2
highlight Sfl ctermbg=None ctermfg=3
highlight Sln ctermbg=None ctermfg=4
highlight Scn ctermbg=None ctermfg=5

set statusline=\%#Sbg#\%F\%=\ %#Sft#\ %{&ff}\ %#Sfl#\ %Y\ %#Sln#\ %l\ /\ %L\ :\ %p%%\ %#Scn#\ %v

" whitespace config
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:better_whitespace_ctermcolor = 'darkred'
let g:strip_whitespace_confirm = 0
" some visual stuff
let g:rainbow_active = 1
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
" leave out black and gray
let g:rainbow_ctermfgs = ['red','green','yellow','blue','magenta','cyan']
let g:indentLine_char = '┆'
" Fzf
let g:fzf_preview_window = ['right:0%', 'ctrl-/']
" Vim Wifi
let g:vimwiki_list = [{'path': '~/.vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0
" plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tomtom/tcomment_vim'
Plug 'frazrepo/vim-rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Yggdroot/indentLine'
Plug 'dag/vim-fish'
Plug 'cespare/vim-toml'
Plug 'tbastos/vim-lua'
Plug 'othree/html5.vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'vimwiki/vimwiki'
" Plug 'harryhanYuhao/typst.vim'
Plug 'pest-parser/pest.vim'
call plug#end()
