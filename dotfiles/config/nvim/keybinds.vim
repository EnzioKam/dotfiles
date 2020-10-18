nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

tnoremap <C-[> <C-\><C-n>
nnoremap <M-t> :te<CR>
nnoremap <M-0> :b term://<CR>
tnoremap <C-j><C-k> <C-\><C-N>
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

map ;; <plug>NERDCommenterToggle

let g:mapleader = "\<Space>"
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
set timeoutlen=200

" Remappings from vim-better-default at
" https://github.com/lichengxu/vim-better-default
nnoremap <silent> <Leader>q  :q<CR>
nnoremap <silent> <Leader>Q  :qa!<CR>
" Move half page faster
nnoremap <Leader>d  <C-d>
nnoremap <Leader>u  <C-u>
" Insert mode shortcut
inoremap <C-h> <BS>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
" Bash like
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>
" Command mode shortcut
cnoremap <C-h> <BS>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Delete>
" jj | escaping
inoremap jj <Esc>
cnoremap jj <C-c>
" Quit visual mode
vnoremap v <Esc>
" Move to the start of line
nnoremap H ^
" Move to the end of line
nnoremap L $
" Redo
nnoremap U <C-r>
" Quick command mode
nnoremap <CR> :
" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
" Yank to the end of line
nnoremap Y y$
" Auto indent pasted text
" nnoremap p p=`]<C-o>
" Open shell in vim
map <silent> <Leader>' :terminal<CR>
" Search result highlight countermand
" nnoremap <silent> <Leader>sc :nohlsearch<CR>
" Toggle pastemode
" nnoremap <silent> <Leader>tp :setlocal paste!<CR>

nnoremap <silent> <Leader>bp :bprevious<CR>
nnoremap <silent> <Leader>bn :bnext<CR>
nnoremap <silent> <Leader>bf :bfirst<CR>
nnoremap <silent> <Leader>bl :blast<CR>
nnoremap <silent> <Leader>bd :bd<CR>
nnoremap <silent> <Leader>bk :bw<CR>

" File save
nnoremap <silent> <Leader>fs :update<CR>

nnoremap <silent> <Leader>f0 :set foldlevel=0<CR>
nnoremap <silent> <Leader>f1 :set foldlevel=1<CR>
nnoremap <silent> <Leader>f2 :set foldlevel=2<CR>
nnoremap <silent> <Leader>f3 :set foldlevel=3<CR>
nnoremap <silent> <Leader>f4 :set foldlevel=4<CR>
nnoremap <silent> <Leader>f5 :set foldlevel=5<CR>
nnoremap <silent> <Leader>f6 :set foldlevel=6<CR>
nnoremap <silent> <Leader>f7 :set foldlevel=7<CR>
nnoremap <silent> <Leader>f8 :set foldlevel=8<CR>
nnoremap <silent> <Leader>f9 :set foldlevel=9<CR>

nnoremap <Leader>ww <C-W>w
nnoremap <Leader>wr <C-W>r
nnoremap <Leader>wd <C-W>c
nnoremap <Leader>wq <C-W>q
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wl <C-W>l

tnoremap <Leader>wj <C-W>j
tnoremap <Leader>wk <C-W>k
tnoremap <Leader>wh <C-W>h
tnoremap <Leader>wl <C-W>l

nnoremap <Leader>wH <C-W>5<
nnoremap <Leader>wL <C-W>5>
nnoremap <Leader>wJ :resize +5<CR>
nnoremap <Leader>wK :resize -5<CR>
nnoremap <Leader>w= <C-W>=
nnoremap <Leader>ws <C-W>s
nnoremap <Leader>w- <C-W>s
nnoremap <Leader>wv <C-W>v
nnoremap <Leader>w\| <C-W>v
nnoremap <Leader>w2 <C-W>v
