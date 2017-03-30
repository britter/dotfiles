execute pathogen#infect()

syntax on
filetype on
filetype plugin indent on

set number
set expandtab
set tabstop=4
set autoindent
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase

let maplocalleader=","

" use different background color after 80 chars
" http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Syntax highlighting for gradle files
au BufNewFile,BufRead *.gradle setf groovy
au BufNewFile,BufRead *.sbt setf scala

