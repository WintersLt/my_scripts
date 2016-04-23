set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
 Plugin 'Valloric/YouCompleteMe'
 Bundle 'scrooloose/syntastic'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
""""let g:loaded_youcompleteme = 1
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
" set shiftwidth=2
" set smartindent
