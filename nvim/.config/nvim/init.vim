let mapleader=" "
set number relativenumber
set tabstop=4 softtabstop=4
set smartindent
set incsearch
set splitbelow
set clipboard=unnamedplus
set splitright
" Enable folding
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'scrooloose/NERDTree'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
"Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
call plug#end()

"remap switching splits to Ctrl-x
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
inoremap jj <ESC>
inoremap <ESC> ~

"let g:airline_theme='molokai'
source $HOME/.config/nvim/themes/airline.vim

