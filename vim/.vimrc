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
Plugin 'git@github.com:majutsushi/tagbar.git'
Plugin 'hynek/vim-python-pep8-indent'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'gabrielelana/vim-markdown'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set guifont=Source\ Code\ Pro\ for\ Powerline\ 9
colorscheme jellybeans
set laststatus=2
syntax enable

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
" set colorcolumn=80
syntax sync minlines=256


au BufRead,BufNewFile *.cnxml set filetype=xml
au BufRead,BufNewFile *.cnxmlplus set filetype=xml
" run flake every time a python file is written
autocmd BufWritePost *.py call Flake8()
autocmd BufWritePre *.py :%s/\s\+$//e " strip trailing whitespace on save
set backspace=2 " make backspace work like most other apps
set t_Co=256
au FileType qf call AdjustWindowHeight(1,3)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction
