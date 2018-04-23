if has('python3')
endif

set pyxversion=3

set exrc

let $JS_CMD='node'

autocmd BufWritePre * %s/\s\+$//e

let g:ycm_path_to_python_interpreter = '/Users/null/.pyenv/shims/python'
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_keep_logfiles = 1

let g:dein#install_process_timeout = 240
let g:vue_disable_pre_processors = 1

set ttyfast
set lazyredraw
set regexpengine=1

let g:solarized_termcolors=256


set synmaxcol=120
let macvim_skip_colorscheme=1

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

:nmap <F1> :echo<CR>
:imap <F1> <C-o>:echo<CR>

" Required:
set runtimepath^=/Users/null/.dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/null/.dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
" call dein#add('terryma/vim-multiple-cursors')
call dein#add('romainl/Apprentice')
call dein#add('danilo-augusto/vim-afterglow')
call dein#add('LucHermitte/lh-vim-lib')
call dein#add('LucHermitte/local_vimrc')
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
call dein#add('cakebaker/scss-syntax.vim')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('luochen1990/rainbow')
call dein#add('rking/ag.vim')
call dein#add('othree/html5.vim')
call dein#add('isRuslan/vim-es6')
call dein#add('easymotion/vim-easymotion')
call dein#add('Raimondi/delimitMate')
call dein#add('scrooloose/nerdtree')
call dein#add('pangloss/vim-javascript')
call dein#add('mxw/vim-jsx')
call dein#add('leshill/vim-json')
call dein#add('ajh17/Spacegray.vim')
call dein#add('tpope/vim-dispatch')
call dein#add('kchmck/vim-coffee-script')
call dein#add('dansomething/vim-eclim')
call dein#add('Valloric/YouCompleteMe')
call dein#add('haya14busa/incsearch.vim')
call dein#add('othree/html5.vim')
call dein#add('posva/vim-vue')
call dein#add('csscomb/vim-csscomb')
"
call dein#add('janko-m/vim-test')
call dein#add('ngmy/vim-rubocop')       " ruby linter
call dein#add('sheerun/vim-polyglot')   " a lot of syntax and indention rules
call dein#add('w0rp/ale')               " lints your files while you type/save"

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
"

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

syntax enable

" Map bc to run CSScomb. bc stands for beautify css
autocmd FileType css noremap <buffer> <leader>bc :CSScomb<CR>
autocmd FileType scss noremap <buffer> <leader>bc :CSScomb<CR>

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
set so=10
set expandtab
set smartindent
set smarttab
set incsearch
set hlsearch
set cursorline
set lazyredraw
set showmatch
" set foldmethod=syntax

nnoremap <leader>a :Ag

set background=dark
color apprentice

set ruler
set showtabline=2
set undolevels=1000
set wildmenu
set undolevels=999
set backspace=indent,eol,start
set colorcolumn=80,100

" by default, the indent is 2 spaces.
set shiftwidth=2
set softtabstop=2
set tabstop=2

" for html/rb files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab

" for python/coffee/jade files, 4 spaces
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype jade setlocal ts=4 sw=4 sts=0 expandtab


set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd BufRead,BufNewFile *.es6 setfiletype javascript
autocmd BufRead,BufNewFile *.jsx setfiletype javascript

au BufRead,BufNewFile *.vue set filetype=vue


autocmd BufWinEnter * silent! :%foldopen!

let g:ag_prg="ag --vimgrep"
let g:ag_working_path_mode = 0

" xnoremap p pgvy

let mapleader = "\<Space>"
nnoremap <Leader>t :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>rr :source ~/.vimrc<CR>
nnoremap <Leader>p :tabp<CR>
nnoremap <Leader>n :tabn<CR>
nnoremap <Leader>o :NERDTreeToggle<CR>
nnoremap <Leader>f :Autoformat<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Esc><Esc> :nohlsearch<CR>

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


" nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
" vnoremap <A-j> :m '>+1<CR>gv=gv
" vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap ∆ :m .+1<CR>==
nnoremap Ż :m .-2<CR>==

inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap Ż <Esc>:m .-2<CR>==gi

vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap Ż :m '<-2<CR>gv=gv



nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

nnoremap <leader>d ""d
nnoremap <leader>D ""D
vnoremap <leader>d ""d


noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

"Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"nnoremap <tab> <c-w>
"nnoremap <tab><tab> <c-w><c-w>

let g:ctrlp_user_command = 'ag %s -i -U -f --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .cache
      \ --ignore node_modules
      \ --ignore happypack
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
let g:ctrlp_use_caching = 0
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = "w"

set autoread
set laststatus=2
let g:airline_theme = 'tomorrow'
let g:airline_inactive_collapse = 1
let g:airline_exclude_preview = 0
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
" use normal fonts (or install poweline fonts if you want)
let g:airline_powerline_fonts = 0
" always display tabline, even if there's only one buffer
let g:airline#extensions#tabline#enabled = 0


let g:jsx_ext_required = 0



" Only lint on save
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

let g:ale_sign_column_always = 1

let g:airline#extensions#ale#enabled = 1

" NeoComplete

let g:acp_enableAtStartup = 0

" Enable Neocomplete
" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_fuzzy_completion = 1
" let g:neocomplete_enable_fuzzy_completion_start_length = 2
" let g:neocomplete_enable_camel_case_completion = 0
" let g:neocomplete#enable_smart_case = 1
" let g:neocomplete#enable_auto_delimiter = 1
" let g:neocomplete#max_list = 20
" let g:neocomplete#force_overwrite_completefunc = 1
" let g:neocomplete#enable_auto_select = 0
" let g:neocomplete#sources#syntax#min_keyword_length = 2

inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" if !exists('g:neocomplete#sources#omni#input_patterns')
"   let g:neocomplete#sources#omni#input_patterns = {}
" endif
" let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
