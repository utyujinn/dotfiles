"if !isdirectory('./.vimsession')
"    call mkdir('.vimsession')
"endif

packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack'
"Jetpack 'tpope/vim-unimpaired'
"Jetpack 'sjl/gundo.vim'
"Jetpack 'simeji/winresizer'
"Jetpack 'xolox/vim-misc'
"Jetpack 'xolox/vim-session'
Jetpack 'tomasiser/vim-code-dark'
call jetpack#end()

"let g:session_directory = './.vimsession'
"let g:session_directory = '~/.vimsession'
"let g:session_autosave = 'yes'
"let g:session_autoload = 'yes'
"let g:session_autosave_periodic = 1

syntax on
filetype plugin indent on
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number
set clipboard=unnamed,unnamedplus
set ruler
set backspace=indent,eol,start
colorscheme codedark 

set hlsearch
nnoremap <ESC><ESC> :nohl<CR>
set incsearch
set ignorecase
set smartcase

"set directory=~/.vimsession
set undofile
"set undodir=~/.vimsession

"noremap <c-h> <c-w>h
"noremap <c-j> <c-w>j
"noremap <c-k> <c-w>k
"noremap <c-l> <c-w>l

"tnoremap <Esc> <c-w>

"nnoremap J 10j
"nnoremap K 10k
"nnoremap U <c-r>

"nnoremap gl gt
"nnoremap gh gT
"nnoremap gk :tabedit
"nnoremap gj :bdelete
"nnoremap gJ :bdelete!

"nnoremap zk zb
"nnoremap zj zt

"com Q q!
"com Qa qa!

