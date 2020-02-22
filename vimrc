"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => System 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
set clipboard=unnamed

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Prevent incorrect backgroung rendering
let &t_ut=''
" # Setup
syntax on
set number
set relativenumber
set ruler
set cursorline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" === General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

noremap <LEADER><CR> :nohlsearch<CR>

" Insert
noremap h i
noremap H I

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" === Cursor Movement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remap cursor
noremap i k
noremap k j
noremap j h

noremap I 5k 
noremap K 5j

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

call plug#end()

color snazzy
let g:SnazzyTransparent = 1

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
hi clear CursorLine
hi CursorLine gui=underline cterm=underline
