# Vim Cheat Sheet
## My nvim config keybindings
- `;`  command mode
- `space w` to save
- `space q` to save and quit
- `jikl` to move
- `0` to go to first character
- `space f` fzf git files
- `space a` fzf ag
- `space g` fzf files
- `space x` previous buffer
- `space c` next buffer
- `space d` close buffer
- `(visual mode) K` drag selection down
- `(visual mode) I` drag selection up
- `<F4>` source init.vim
## General (n)vim cheat sheet
### Navigation
- `w` and `b` to go forward and backward by a word
- `e` go forward a word to the last char in word
- `t{`, `T{` go to (one char before) the next and previous `{`
- `f0`, `F0` go onto the next and previous char '0'
- `$` to go to the end of the line
- 'H', `M`, `L` go to the first line, middle line and last line in view
-  `gg` and `G` to go to the start end end of a file
- `:123` to go to line 123
- `zz`, `zb`, `zt` change view so that current line is in the middle, to the bottom and to the top
- `/hello` search string `hello`, jump to next with `n` and prev with `N`
### Basic Editing
- `i` or `h` to insert in vim and in my config
- `a` to edit after cursor
- `o` and `O` to insert under and above current line
- `I` and `A` to insert at the start and end of a line
- `V`, `v` visual mode by line and by character
- `y` copy selection
- `p`, `P` paste selection under current line/cursor and above
- `U` change selection to uppercase
- `dw`, `cw`, `dd`, `cc` delete word, change word, delete line, change line
### Favorites/Powerful editing
- `12l`, `3dd` move 12 to the left and delete next 3 lines
- `ci(`, `da{` change everything inside `()` and delete whole `{}` block
- `V=`, `=a{` format line and format block
### Non editing
- `:w`, `:q`, `:wq`, `q!` write, close vim, write and close, close without saving
- `:bprev`, `:bnext`, `:bd` previous buffer, next buffer, close buffer
- `` set vim as background process and return to terminal, `fg` to go back to vim
