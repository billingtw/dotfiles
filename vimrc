
syntax on

"
set autoindent
set cindent
set backspace=indent,eol,start
set cursorline
set t_Co=256
set expandtab
set hlsearch     "高亮度搜尋
set ruler
set visualbell
set number
""縮排選項轉空格
set shiftwidth=4
set softtabstop=4
set tabstop=4
set laststatus=2

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
highlight Search cterm=none ctermbg=blue

" font-size
set guifont=Monaco:h20
set guifont=Monospace:h20
 
