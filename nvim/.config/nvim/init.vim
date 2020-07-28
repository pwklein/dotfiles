let mapleader=" "
let maplocalleader = ","
" enable automatic reload after sourcing
autocmd! bufwritepost init.vim source %

autocmd FileType python map <buffer> <leader>c :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType sh map <leader>c :w !bash<CR>
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType tex map <leader>c :VimtexCompile<CR>
autocmd FileType tex map <leader>v :VimtexView<CR>
autocmd FileType tex map <leader>k :VimtexClean<CR>:VimtexStop<CR>
autocmd FileType tex map <leader>t :VimtexTocOpen<CR>
autocmd FileType tex map <leader>tt :VimtexTocToggle<CR>

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
Plug 'lervag/vimtex'
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
map <leader>w :w<CR>
map <leader>f :Neoformat<CR>
" insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
vnoremap <Leader>s :sort<CR>

" This is new style
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})
let g:vimtex_view_method = 'zathura'

