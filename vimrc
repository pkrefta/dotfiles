execute pathogen#infect()

set nocompatible

syntax enable
set number
set numberwidth=4
set history=100
filetype plugin indent on
set linebreak
set showbreak=+++ 
set textwidth=100
set autoindent
set shiftwidth=2
set tabstop=2
set expandtab
set smartindent
set smarttab
set softtabstop=2
set incsearch
set hlsearch
set cursorline

colorscheme dracula

set ruler
set showtabline=2
set undolevels=1000

set undolevels=999
set backspace=indent,eol,start

set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd BufRead,BufNewFile *.es6 setfiletype javascript

let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>rr :source ~/.vimrc<CR>
nnoremap <Leader>p :tabp<CR>
nnoremap <Leader>n :tabn<CR>  

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
