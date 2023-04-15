"---------ファイル生成-----------------------------------------------------------------------------"

".vimでvimファイル管理
if !isdirectory('./.vimse')
    call mkdir('.vimse')
endif

"---------プラグイン設定---------------------------------------------------------------------------"

packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack'
"[等でバッファの移動
Jetpack 'tpope/vim-unimpaired'
"テキスト履歴のツリー管理
Jetpack 'sjl/gundo.vim'
"<c-e>でウィンドウサイズの操作
Jetpack 'simeji/winresizer'
"vim-sessionのためのプラグイン
Jetpack 'xolox/vim-misc'
".vimを追加することで、セッションの保存
Jetpack 'xolox/vim-session'
call jetpack#end()

"セッションディレクトリを設定
let g:session_directory = './.vimse'
" vimを辞める時に自動保存
let g:session_autosave = 'yes'
" 引数なしでvimを起動した時にsession保存ディレクトリのdefault.vimを開く
let g:session_autoload = 'yes'
" 1分間に1回自動保存
let g:session_autosave_periodic = 1


"---------編集設定---------------------------------------------------------------------------------"

"ハイライトを行う。
syntax on
"ファイルタイプごとのインデントとプラグインを自動で読む
filetype plugin indent on
"自動でインデントを行う。
set autoindent
"タブをスペースとして利用
set expandtab
"タブを4文字分にする
set tabstop=2
"インデントを増やすときなども4文字分にする
set shiftwidth=2
"行番号数字をセット
set number
"システムのクリップボードにコピー
set clipboard=unnamed,unnamedplus
"カーソル位置を右下に表示
set ruler
"消去キーを各所で有効にする。
set backspace=indent,eol,start
"スキンを設定
colorscheme pablo 
"コードの格納方法をインデントにする。
set foldmethod=indent


"---------検索設定---------------------------------------------------------------------------------"

"検索結果のハイライトを行う。
set hlsearch
"ESC2回で消えるようにする
nnoremap <ESC><ESC> :nohl<CR>
"入力のたびに検索する。
set incsearch
"大文字小文字を区別しない。
set ignorecase
"大文字が含まれている場合、区別する。
set smartcase


"---------環境設定---------------------------------------------------------------------------------"
"let s:local_session_directory = xolox#misc#path#merge(getcwd(), '.vim')
"    set directory=\.vim\swap//
"    set undodir=\.vim\undodir
"endif
"set directory=%USERDATA%\vimfiles\swap//
"set undofile
"set undodir=%USERDATA%\vimfiles\undodir
set directory=./.vimse
set undofile
set undodir=./.vimse
"adf
"packloadall
"silent! helptags ALL
"jfdljdkfjdsjfs

"---------キーのリマップ---------------------------------------------------------------------------"

"ctrl+hjklでウィンドウの移動
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>


"---------起動時処理-------------------------------------------------------------------------------"

"起動時にfoldを全オープンする。
autocmd BufRead * normal zR


