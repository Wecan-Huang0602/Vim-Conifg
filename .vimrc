set encoding=utf-8

set ai

"---------------------------------------------------------------------------
"編輯相關設定
"---------------------------------------------------------------------------
set backspace=2 "在插入模式下可以使用鍵盤的delete鍵
set clipboard=unnamed "讓複製的東西可以跟外面共用
set noswapfile "不要有暫存檔
set softtabstop=4 "按下tab縮四格 
set shiftwidth=4 "按下>>進行區段縮排時縮四格
set scrolloff=1 "底端或上端剩1行時捲動畫面


"---------------------------------------------------------------------------
"搜尋相關設定
"---------------------------------------------------------------------------
set ignorecase "無視大小寫差異
set incsearch "漸進式搜尋
set hlsearch "高亮搜尋的文字
set smartcase "智慧搜尋(自動切換要不要無視大小寫) 


"---------------------------------------------------------------------------
"視窗顯示相關設定
"---------------------------------------------------------------------------
syntax on "語法高亮
"colorscheme Tomorrow-Night-Eighties "畫面顏色主題
set number "顯示行號
set splitright "在分割視窗時會把新的視窗分割到右邊
set splitbelow "在分割視窗時會把新的視窗分割到下面
set cursorline "在游標處顯示底線
set showtabline=2 "顯示頁籤的tab
set linebreak "在一行太長折行時以word為單位折(不會把一個字分開)
set showcmd "顯示下的指令


"---------------------------------------------------------------------------
"依照檔案類型自動做相關的設定(ex:縮排、外掛)
"---------------------------------------------------------------------------
filetype on "偵測檔案型態
filetype indent on "根據程式語言種類進行縮排
filetype plugin on "根據程式語言種類載入外掛



"---------------------------------------------------------------------------
"鍵盤Mapping設定
"---------------------------------------------------------------------------
"把Ctrl+c改成複製:
"map <C-c> y

"把Ctrl+v改成貼上:
"map <C-v> p 

"用Enter在n或v模式進行換行:
"map <Enter> o



"---------------------------------------------------------------------------
"自動命令
"---------------------------------------------------------------------------

"當切換到別的視窗時，只在那個窗顯示底線
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline


"按下F5執行程式
if executable("python3")
    autocmd Bufread,BufNewFile *.py noremap <F5> :% w !python3<Enter>
else
    autocmd Bufread,BufNewFile *.py noremap <F5> :echo "You install Python3 first!"
endif




"---------------------------------------------------------------------------
"Plugins 外掛
"---------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

"Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'ryanoasis/vim-devicons'
Plug 'mhartington/oceanic-next'

call plug#end()



"---------------------------------------------------------------------------
" YouCompleteMe 設定
"---------------------------------------------------------------------------
set completeopt-=preview "不要顯示提示時函數的說明視窗



"---------------------------------------------------------------------------
" vim-airline 設定
"---------------------------------------------------------------------------
let g:airline_powerline_fonts = 1 "顯示尖角的效果
let g:airline#extensions#tabline#enabled = 1 "美化頂部Tab列
let g:airline#extensions#tabline#show_buffers = 0 "不要顯示buffer



"---------------------------------------------------------------------------
" NERDTree 設定
"---------------------------------------------------------------------------
"按下F2跳出或關閉NERDTree的檔案管理員
noremap <silent> <F2> :NERDTreeToggle<Enter> 


"---------------------------------------------------------------------------
"Oceanic-Next 設定
"---------------------------------------------------------------------------
" Theme
syntax enable
" for vim 7
set t_Co=256

" for vim 8
if (has("termguicolors"))
 set termguicolors
endif

colorscheme OceanicNext
let g:airline_theme='oceanicnext'







