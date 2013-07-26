:filetype plugin on
execute pathogen#infect()

syntax enable
   if has('gui_running')
        set background=light
    else
        set background=dark
    endif
colorscheme solarized
" Wrapping and tabs.
set ts=4 sw=4 sta et sts=4 ai

" More syntax highlighting.
let python_highlight_all = 1

" Smart indenting
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set number

set nocursorcolumn
set nocursorline
syntax sync minlines=256
