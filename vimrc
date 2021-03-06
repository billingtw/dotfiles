" ======== Vundle ===========================================
" "
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#begin() " required

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" = plugin setup =============================================
Plugin 'scrooloose/nerdcommenter.git' " comment
Plugin 'tpope/vim-surround'
Plugin 'matchit.zip'
Plugin 'kien/ctrlp.vim' "File fuzzy search
Plugin 'Shougo/neocomplcache' "AutoComplete & snippets
Plugin 'godlygeek/tabular.git' "alignment



call vundle#end() " required
filetype plugin indent on " required

" = plugin setup =============================================


syntax on

"
set autoindent
set cindent
set backspace=indent,eol,start
set cursorline
set t_Co=256
set expandtab
set hlsearch     "高亮度搜尋
set ignorecase
set incsearch
set ruler
set visualbell
set number
set shiftwidth=4 ""縮排選項轉空格
set softtabstop=4
set tabstop=4
set laststatus=2
set scrolloff=3
set showmatch
set smartcase
set visualbell " what's this ?


"
" encoding
set encoding=utf8
set fileencodings=utf8,big5,gbk,latin1
set fileencoding=utf8
set <C-u>=^U
set <C-b>=^B
map <C-u> :set fileencoding=utf8
map <C-b> :set fileencoding=big5


" show file encoding
if has("statusline")
    set statusline=%<%f\%h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\&bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif


" color schema
let g:airline_powerline_fonts = 1
set background=dark
color mango
"color ir_black
highlight Search cterm=none ctermbg=blue

hi IndentGuidesEven ctermbg=8
hi IndentGuidesOdd ctermbg=236


" font-size
set guifont=Monaco:h20
set guifont=Monospace:h20
 
