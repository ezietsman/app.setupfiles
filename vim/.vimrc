syntax on
filetype plugin indent on
execute pathogen#infect()

syntax enable
    if has('gui_running')
        set background=light
        colorscheme solarized
        set guifont=DejaVu\ Sans\ Mono\ 9
    endif
" Wrapping and tabs.
set ts=4 sw=4 sta et sts=4 ai

" More syntax highlighting.
let python_highlight_all = 1

" Smart indenting
set cindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set number
set tabstop=4
set shiftwidth=4
set expandtab
" set nocursorcolumn
" set nocursorline
set cursorline
set colorcolumn=80
syntax sync minlines=256


au BufRead,BufNewFile *.cnxml set filetype=xml
au BufRead,BufNewFile *.cnxmlplus set filetype=xml
