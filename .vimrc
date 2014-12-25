syntax on

set number
set expandtab
set tabstop=4
set autoindent
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase

" use different background color after 80 chars
" http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

function RemoveTrailingWhitespace()
    if !&binary
        normal! mz
        %s/\s\+$//ge
        normal! 'z
    endif
endfunction

" remove trailing spaces on save
autocmd BufWritePre * :call RemoveTrailingWhitespace()
