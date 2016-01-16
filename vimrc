execute pathogen#infect()

set nocompatible
set iskeyword-=_
set noswapfile

set guifont=Menlo\ Regular:h14

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
set so=10
set expandtab
set smartindent
set smarttab
set softtabstop=2
set incsearch
set hlsearch
set cursorline
set lazyredraw
set showmatch

nnoremap <leader>a :Ag

color Dracula

let g:session_autoload = 'yes'
let g:session_autosave = 'yes'

set ruler
set showtabline=2
set undolevels=1000
set wildmenu
set undolevels=999
set backspace=indent,eol,start


set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd BufRead,BufNewFile *.es6 setfiletype javascript

let g:agprg="ag --vimgrep"
let g:ag_working_path_mode = "r"

xnoremap p pgvy

let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>rr :source ~/.vimrc<CR>
nnoremap <Leader>p :tabp<CR>
nnoremap <Leader>n :tabn<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>f :Autoformat<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader><Space> :nohlsearch<CR>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to end and beginning of line
nnoremap B ^
nnoremap E $
" and disable old keys
nnoremap $ <nop>
nnoremap ^ <nop>

" lets diffrent ESC
inoremap jk <esc>



nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

nnoremap <leader>d ""d
nnoremap <leader>D ""D
vnoremap <leader>d ""d


"noremap  <Up> ""
"noremap! <Up> <Esc>
"noremap  <Down> ""
"noremap! <Down> <Esc>
"noremap  <Left> ""
"noremap! <Left> <Esc>
"noremap  <Right> ""
"noremap! <Right> <Esc>  

"Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"nnoremap <tab> <c-w>
"nnoremap <tab><tab> <c-w><c-w>

let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore node_modules
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
let g:ctrlp_use_caching = 0
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path = 0

set autoread
set laststatus=2
let g:airline_theme = 'tomorrow'
let g:airline_inactive_collapse = 1
let g:airline_exclude_preview = 0
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
