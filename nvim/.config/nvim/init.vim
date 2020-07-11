let mapleader=" "
" enable automatic reload after sourcing
autocmd! bufwritepost init.vim source %

autocmd FileType python map <buffer> <leader>gg :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <leader>gg jj:w<CR>:exec '!python' shellescape(@%, 1)<CR>
filetype off
filetype plugin indent on
syntax on

"80 character line and use Q for formating
set nowrap
set colorcolumn=80
highlight ColorColumn ctermbg=238
" vmap Q gq
" nmap Q gqap

set nobackup
set nowritebackup
set noswapfile

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

" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 350

let g:python_host_prog = expand('/usr/bin/python2')
let g:python3_host_prog = expand('/usr/bin/python3')
" map sort function to a key
vnoremap <Leader>s :sort<CR>

let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

call plug#begin('~/.local/share/nvim/site/autoload/plugged')
Plug 'machakann/vim-highlightedyank'
Plug 'chrisbra/Colorizer'
Plug 'cjrh/vim-conda'
Plug 'scrooloose/NERDTree'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-fugitive'
Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
call plug#end()

"remap switching splits to Ctrl-x
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
inoremap jj <ESC>
inoremap <ESC> ~
nnoremap <leader>d "_d
xnoremap <leader>d "_d
map <leader>w :w<CR>:Neoformat<CR>
imap <leader>w jj:w<CR>:Neoformat<CR>
map <leader>f :Neoformat<CR>
"let g:airline_theme='molokai'
"source $HOME/.config/nvim/themes/airline.vim
" Quickly insert an empty new line without entering insert mode
    nnoremap <Leader>o o<Esc>
    nnoremap <Leader>O O<Esc>
