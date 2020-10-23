call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
Plug 'lifepillar/vim-mucomplete'
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/nerdtree-dash'
Plug 'liuchengxu/vim-which-key'
Plug 'ap/vim-css-color'
call plug#end()

let g:dracula_colorterm = 0
colorscheme dracula

let g:lightline = {
            \ 'colorscheme': 'dracula',
            \ 'separator': { 'left': "\uE0B0" },
            \ 'subseparator': { 'left': "\uE0B1", 'right': "\uE0B3" },
            \ 'component': {
            \   'lineinfo': "\uf77a %3l:%-2c",
            \ },
            \ 'component_function': {
            \   'filetype': 'MyFiletype',
            \   'fileformat': 'MyFileformat',
            \ }
            \ }

function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle
call insert(s:palette.normal.right, s:palette.normal.left[1], 0)

let g:rainbow_active = 1

set nocompatible
syntax on
filetype plugin indent on
set autoindent
set autoread
set backspace=indent,eol,start
set bs=2
set display=lastline
set hlsearch
set incsearch
set laststatus=2
set mouse=a
set smarttab
set smartindent
set viminfo+=!
set nowrap
set shiftwidth=4
set tabstop=4
set softtabstop=4
set splitright
set splitbelow
set ruler
set showcmd
set showmode
set showmatch
set report=0
set linespace=0
set pumheight=20
set expandtab
set number

set completeopt+=menuone,noselect
set shortmess+=c
set belloff+=ctrlg
let g:mucomplete#enable_auto_at_startup = 1

autocmd BufWinEnter * highlight ExtraWhitespace ctermbg=darkred
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") |
            \ Startify | NERDTree | wincmd w | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0])
            \ && !exists("s:std_in") |
            \ exe 'NERDTree' argv()[0] | wincmd p |
            \ ene | exe 'cd '.argv()[0] | Startify | endif

let NERDTreeShowHidden=1

let g:NERDSpaceDelims=1

function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_custom_header = [
            \ '|-|----------------------------------------------|-|',
            \ '| |______________________________________________| |',
            \ '| |     _   __ ______ ____  _    __ ____ __  ___ | |',
            \ '| |    / | / // ____// __ \| |  / //  _//  |/  / | |',
            \ '| |   /  |/ // __/  / / / /| | / / / / / /|_/ /  | |',
            \ '| |  / /|  // /___ / /_/ / | |/ /_/ / / /  / /   | |',
            \ '| | /_/ |_//_____/ \____/  |___//___//_/  /_/    | |',
            \ '| |----------------------------------------------| |',
            \ '|_|______________________________________________|_|'
            \ ]
let g:startify_lists = [
            \ { 'type': 'commands',  'header': ['   Commands']          },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']         },
            \ { 'type': 'dir',       'header': ['   Current'.getcwd()]  }
            \ ]
let g:startify_bookmarks = [
            \ '~/.zprezto/runcoms/zshrc',
            \ '~/.config/nvim/init.vim',
            \ '~/.config/nvim/keybinds.vim',
            \ '~/.config/nvim/whichkey.vim',
            \ '~/.i3config',
            \ '~/.picomconfig'
            \ ]
let g:startify_commands = [
            \ { 'up': [ 'Update Plugins', ':PlugUpdate' ]       },
            \ { 'ug': [ 'Upgrade vim-plug', ':PlugUpgrade' ]    }
            \ ]

exe 'source' '~/.config/nvim/keybinds.vim'
exe 'source' '~/.config/nvim/whichkey.vim'

