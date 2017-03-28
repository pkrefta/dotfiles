"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

:nmap <F1> :echo<CR>
:imap <F1> <C-o>:echo<CR>

" Required:
set runtimepath^=/Users/pavello/.dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/pavello/.dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('terryma/vim-multiple-cursors')
call dein#add('jiangmiao/auto-pairs')
call dein#add('tpope/vim-endwise')
call dein#add('dracula/vim')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-eunuch')
call dein#add('kien/ctrlp.vim')
call dein#add('bling/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('tomtom/tcomment_vim')
call dein#add('mxw/vim-jsx')
call dein#add('cakebaker/scss-syntax.vim')
call dein#add('elzr/vim-json')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('luochen1990/rainbow')
call dein#add('rking/ag.vim')
call dein#add('othree/html5.vim')
call dein#add('isRuslan/vim-es6')
call dein#add('easymotion/vim-easymotion')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Raimondi/delimitMate')
call dein#add('scrooloose/nerdtree')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
syntax enable

set nocompatible
set iskeyword-=_
set noswapfile

set guifont=Menlo\ Regular:h14
set number
set numberwidth=4
set history=100
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

color dracula

set ruler
set showtabline=2
set undolevels=1000
set wildmenu
set undolevels=999
set backspace=indent,eol,start
set colorcolumn=80,100


set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd BufRead,BufNewFile *.es6 setfiletype javascript
autocmd BufRead,BufNewFile *.zsh setfiletype javascript

let g:ag_prg="ag --vimgrep"
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
      \ --ignore happypack
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








" NeoComplete

let g:acp_enableAtStartup = 0

" Enable Neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_fuzzy_completion = 1
let g:neocomplete_enable_fuzzy_completion_start_length = 2
let g:neocomplete_enable_camel_case_completion = 0
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#max_list = 20
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#enable_auto_select = 0
let g:neocomplete#sources#syntax#min_keyword_length = 2

inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
