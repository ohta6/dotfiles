""dein Scripts-----------------------------
"if &compatible
"  set nocompatible               " Be iMproved
"endif
"
"" Required:
""set runtimepath+=/home/ohta/.cache/dein/repos/github.com/Shougo/dein.vim
"let s:dein_path = expand('~/.cache/dein')
"let s:dein_repo_path = s:dein_path . '/repos/github.com/Shougo/dein.vim'
"if &runtimepath !~# '/dein.vim'
"  if !isdirectory(s:dein_repo_path)
"    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_path
"  endif
"  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_path, ':p')
"endif
"
"" Required:
"if dein#load_state(s:dein_path)
"  call dein#begin(s:dein_path)
"
"  " Let dein manage dein
"  " Required:
"  call dein#add(s:dein_repo_path)
"
"  " Add or remove your plugins here:
"  call dein#add('Shougo/neosnippet.vim')
"  call dein#add('Shougo/neosnippet-snippets')
"  call dein#add('Shougo/unite.vim')
"  call dein#add('davidhalter/jedi-vim')
"
"  " You can specify revision/branch/tag.
"  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
"
"  " Required:
"  call dein#end()
"  call dein#save_state()
"endif
"
"" Required:
"filetype plugin indent on
"syntax enable
"
"" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif
"
""End dein Scripts-------------------------


" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" コマンドラインモードの補完
set wildmenu
"set wildmode=longest:full,full


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
"set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
set matchpairs& matchpairs+=<:>
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" タイトルを表示
set title


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
"set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 高度な自動インデント
set smarttab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4
" インデントはスマートインデント
set smartindent
" 自動インデント
set autoindent


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect
" yでコピーした時にクリップボードに入る
set guioptions+=a

" シンタックスハイライト
syntax on

" スクロール送りを開始する前後の行数を指定
set scrolloff=5

" jjでesc
inoremap <silent> jj <ESC>

" 編集箇所のカーソルを記憶

if has("autocmd")
    augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
    augroup END
endif

" ウィンドウ、タブ関係
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sn gt
nnoremap sp gT
nnoremap st :<C-u>tabnew<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>

" $and^の置き換え
noremap <S-h> ^
noremap <S-l> $