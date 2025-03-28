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
set cursorline
set cursorlineopt=number

" leader = space, ; easier than :
let mapleader = " "
nnoremap ; :
vnoremap ; :

" quick save and quiting options
nnoremap <leader>q :silent! wa <bar> qa!<CR>
vnoremap <leader>q :silent! wa <bar> qa!<CR>
nnoremap <leader>g :w<CR>
vnoremap <leader>g :w<CR>
nnoremap <leader>m :silent! wa<CR>

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

" swap { and }
nnoremap { }
nnoremap } {
vnoremap { }
vnoremap } {

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
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''" }

" leave out black and gray
let g:rainbow_ctermfgs = ['red','green','yellow','blue','magenta','cyan']
" let g:indentLine_char = '┆'
let g:indentLine_char = ' '

" Fzf
let g:fzf_preview_window = ['right,0%,border-sharp', 'ctrl-/']
let g:fzf_layout = { 'window': { 'width': 0.92, 'height': 0.5, 'border': 'sharp' } }

" Vim Wifi
let g:vimwiki_list = [{'path': '~/.vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0

" theme
" adapted from:
" https://github.com/jeffkreeftmeijer/vim-dim

highlight SpecialKey     ctermfg=4
highlight TermCursor     cterm=reverse
highlight NonText        ctermfg=12
highlight Directory      ctermfg=4
highlight ErrorMsg       ctermfg=15 ctermbg=1
highlight IncSearch      cterm=reverse
highlight MoreMsg        ctermfg=2
highlight ModeMsg        cterm=bold
highlight Question       ctermfg=2
highlight Title          ctermfg=5
highlight WarningMsg     ctermfg=1
highlight WildMenu       ctermfg=0 ctermbg=11
highlight Conceal        ctermfg=7 ctermbg=7
highlight SpellBad       ctermbg=9
highlight SpellRare      ctermbg=13
highlight SpellLocal     ctermbg=14
highlight PmenuSbar      ctermbg=8
highlight PmenuThumb     ctermbg=0
highlight TabLine        cterm=underline ctermfg=0 ctermbg=7
highlight TabLineSel     cterm=bold
highlight TabLineFill    cterm=reverse
highlight MatchParen     ctermbg=14
highlight Constant       ctermfg=5
highlight Special        ctermfg=5
highlight Identifier     cterm=NONE ctermfg=6
highlight Statement      ctermfg=3
highlight PreProc        ctermfg=4
highlight Type           ctermfg=2
highlight Underlined     cterm=underline ctermfg=5
highlight Ignore         ctermfg=15
highlight Error          ctermfg=15 ctermbg=9
highlight Todo           ctermfg=0 ctermbg=11

" In diffs, added lines are green, changed lines are yellow, deleted lines are
" red, and changed text (within a changed line) is bright yellow and bold.
highlight DiffAdd        ctermfg=0    ctermbg=2
highlight DiffChange     ctermfg=0    ctermbg=3
highlight DiffDelete     ctermfg=0    ctermbg=1
highlight DiffText       ctermfg=0    ctermbg=11   cterm=bold

" Invert selected lines in visual mode
" if theme only has 8 colours
" highlight Visual         ctermfg=NONE ctermbg=NONE cterm=inverse
highlight Visual         ctermfg=NONE ctermbg=8 cterm=bold

" Highlight search matches in black, with a yellow background
highlight Search         ctermfg=0    ctermbg=11

" Dim line numbers, comments, color columns, the status line, splits and sign
" columns.
highlight LineNr       ctermfg=8
" why not work >:(
" highlight CursorLine   ctermfg=0    ctermbg=0 cterm=underline
" highlight CursorColumn              ctermbg=9
highlight CursorLineNr ctermfg=7    ctermbg=NONE cterm=bold
highlight Comment      ctermfg=15
highlight ColorColumn  ctermfg=7    ctermbg=8
highlight Folded       ctermfg=7    ctermbg=8
highlight FoldColumn   ctermfg=7    ctermbg=8
highlight Pmenu        ctermfg=15   ctermbg=8
highlight PmenuSel     ctermfg=15   ctermbg=8
highlight SpellCap     ctermfg=7    ctermbg=8
highlight StatusLine   ctermfg=15   ctermbg=NONE cterm=bold
highlight StatusLineNC ctermfg=7    ctermbg=NONE
highlight VertSplit    ctermfg=7    ctermbg=8
highlight SignColumn                ctermbg=8

highlight link DimFzfFg     Normal
highlight link DimFzfBg     Normal
highlight link DimFzfFgPlus PmenuSel
highlight link DimFzfBgPlus PmenuSel
highlight link DimFzfInfo   Comment

highlight DimFzfHl      ctermfg=2
highlight DimFzfPrompt  ctermfg=12
highlight DimFzfPointer ctermfg=1
highlight DimFzfMarker  ctermfg=9

" fix fzf/telescope background colour
highlight NormalFloat ctermbg=0

let g:fzf_colors = { 'fg':      ['fg', 'DimFzfFg'],
                   \ 'bg':      ['bg', 'DimFzfBg'],
                   \ 'hl':      ['fg', 'DimFzfHl'],
                   \ 'fg+':     ['fg', 'DimFzfFgPlus'],
                   \ 'bg+':     ['bg', 'DimFzfbgPlus'],
                   \ 'hl+':     ['fg', 'DimFzfHl'],
                   \ 'info':    ['fg', 'DimFzfInfo'],
                   \ 'prompt':  ['fg', 'DimFzfPrompt'],
                   \ 'pointer': ['fg', 'DimFzfPointer'],
                   \ 'marker':  ['fg', 'DimFzfMarker']}

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
