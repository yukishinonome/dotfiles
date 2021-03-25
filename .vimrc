" タイトルを表示
set title

" 行番号を表示
set number

" インデント幅
set shiftwidth=2

" タブキー押下時に挿入される文字幅を指定
set softtabstop=2

" ファイル内にあるタブ文字の表示幅
set tabstop=2

" 対応する括弧を強調表示
set showmatch

" シンタックスハイライト
syntax on

" 数字の色
autocmd ColorScheme * highlight Number ctermfg=98

" 文字列の色
autocmd ColorScheme * highlight String ctermfg=136

" 命令文の色
autocmd ColorScheme * highlight Statement ctermfg=63

" 行番号の色
autocmd ColorScheme * highlight LineNr ctermfg=111

" カラースキーム
colorscheme desert
call plug#begin('~/.vim/plugged')
Plug 'Shougo/unite.vim'
Plug 'ujihisa/unite-colorscheme'

" カラースキーム一覧
Plug 'altercation/vim-colors-solarized' " solarized
Plug 'croaker/mustang-vim'              " mustang
Plug 'jeffreyiacono/vim-colors-wombat'  " wombat
Plug 'nanotech/jellybeans.vim'          " jellybeans
Plug 'vim-scripts/Lucius'               " lucius
Plug 'vim-scripts/Zenburn'              " zenburn
Plug 'mrkn/mrkn256.vim'                 " mrkn256
Plug 'jpo/vim-railscasts-theme'         " railscasts
Plug 'therubymug/vim-pyte'              " pyte
Plug 'tomasr/molokai'                   " molokai
Plug 'chriskempson/vim-tomorrow-theme'  " tomorrow night
Plug 'vim-scripts/twilight'             " twilight
Plug 'w0ng/vim-hybrid'                  " hybrid
Plug 'freeo/vim-kalisi'                 " kalisi
Plug 'morhetz/gruvbox'                  " gruvbox
Plug 'toupeira/vim-desertink'           " desertink
Plug 'sjl/badwolf'                      " badwolf
Plug 'itchyny/landscape.vim'            " landscape
Plug 'joshdick/onedark.vim'             " onedark in atom
Plug 'gosukiwi/vim-atom-dark'           " atom-dark

call plug#end()
