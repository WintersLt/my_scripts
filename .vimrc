syntax on
set tag=$MONE_TAGS
"set tags=~/views//enh_contIndirXdms/tags
set tags=$CODE_ROOT_DIR/tags
set tabstop=4
set ruler
"set hlsa -- highlight search string . . .
"set autoindent
set viminfo=%,'50,\"100,:100,n$HOME/.viminfo
"iab include #include<
"set ignorecase "-- for case insencitive search
"set nu
set sm
set sw=4
set hlsearch  "to highlight the searched string
"set paste
set backspace=indent,eol,start
set autoindent
augroup cprog
" Remove all cprog autocommands
au!

" When starting to edit a file:
" For C and C++ files set formatting of comments and set C-indenting on.
" For other files switch it off.
" Don't change the order, it's important that the line with * comes first.
autocmd FileType * set formatoptions=tcql nocindent comments&
autocmd FileType c,cpp,java set formatoptions=croql cindent comments=sr:/*,mb:*,el:*/,://
augroup END
filetype plugin on
"set diffopt+=iwhite
map <F2> <Esc>:1,$!xmllint --format -<CR>
"setlocal spell spelllang=en_us
map <F3> <Esc>:setlocal spell spelllang=en_us <CR>
map <F4> <Esc>:set nospell <CR>
set shiftwidth=2
set smartindent
