set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'git@github.com:altercation/vim-colors-solarized.git'
Plugin 'git@github.com:Valloric/YouCompleteMe.git'
Plugin 'git@github.com:scrooloose/syntastic.git'
Plugin 'mattn/emmet-vim' " zencoding
Plugin 'hynek/vim-python-pep8-indent'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
if has('gui_running')
    set background=light
    colorscheme solarized
    "set guifont=Source\ Code\ Pro\ Medium\ 10
    " Powerline setup
    set guifont=Source\ Code\ Pro\ for\ Powerline\ 9
    set laststatus=2
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
set cursorline
set colorcolumn=80
syntax sync minlines=256

au BufRead,BufNewFile *.cnxml set filetype=xml
au BufRead,BufNewFile *.cnxmlplus set filetype=xml
" run flake every time a python file is written
autocmd BufWritePost *.py call Flake8()
set backspace=2 " make backspace work like most other apps
