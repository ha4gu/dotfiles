" Encode settings for Vim and Vim script
set encoding=utf-8
scriptencoding utf-8

" vi互換
" set nocompatible		" 明示的に指定する意味はなく、逆にデメリットしかない

" 文字コード設定
set fileencoding=utf-8							" ファイル保存時の文字コード
set fileencodings=ucs-boms,utf-8,cp932,euc-jp	" ファイル読込時の文字コード
set fileformats=unix,dos,mac					" ファイル読込時の改行コード
set ambiwidth=double							" 記号等の文字幅調整

" タブ・インデント
set noexpandtab		" タブ文字を入力した際に半角スペース展開させない
set tabstop=4		" タブ文字を表示する際の文字幅
set autoindent		" 改行時の単純なインデント
set smartindent		" 改行時の構文を踏まえてのインデント

" 検索
set incsearch	" インクリメンタルサーチ有効
set ignorecase	" 大文字小文字を無視して検索
set smartcase	" 検索文字列に大文字がある場合には大文字小文字を区別
set wrapscan	" カーソル位置によらずファイル全体を検索
set hlsearch	" 検索文字をハイライト表示
" ESCを二回押すことで検索ハイライトを消す
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

" カーソル移動
set number			" 行番号表示
set cursorline		" カーソル行を強調表示
set scrolloff=5		" スクロール時の余白
set ruler			" ステータス行右側の現在位置表示
set nostartofline	" 行を移る際に行頭へカーソルを戻さない

" コマンド補完
set wildmenu		" コマンドモードで補完を使う
set history=1000	" コマンド履歴の保存数

" モードライン
set modeline        " モードライン有効
set modelines=5     " モードライン設定を上下端から探す行数

" シンタックス
syntax enable		" シンタックスハイライト
syntax on			" シンタックスハイライト
filetype indent on	" ファイルタイプによるインデントを行う
filetype plugin on	" ファイルタイプによるプラグインを使う
set t_Co=256
colorscheme elflord

" 不可視文字
" set list  "不可視文字を表示
" set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲

" 他雑多
set showmatch		" 括弧の対応状況を表示
set matchtime=1		" 対応の表示時間は0.1秒
set showmode
set wrap
set notitle
set backspace=indent,eol,start  "BSでなんでも消せるようにする
set formatoptions+=mM	" 整形オプションにマルチバイト系を追加
set laststatus=2		" ステータスラインを常に表示
set display=lastline	" 一行の内容が非常に長い場合でも内容を表示する
" Y を行末までのヤンクにする
nnoremap Y y$


" マウス有効化
if has('mouse')
	set mouse=a
	if has('mouse_sgr')
		set ttymouse=sgr
	elseif v:version > 703 || v:version is 703 && has('patch632')
		set ttymouse=sgr
	else
		set ttymouse=xterm2
	endif
endif

" クリップボードからの貼付け時は自動でペーストモードにする
if &term =~ "xterm"
	let &t_SI .= "\e[?2004h"
	let &t_EI .= "\e[?2004l"
	let &pastetoggle = "\e[201~"
	function XTermPasteBegin(ret)
		set paste
		return a:ret
	endfunction
	inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

