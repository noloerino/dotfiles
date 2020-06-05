set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Put plugins here and run :PluginInstall
Plugin 'udalov/kotlin-vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'cespare/vim-toml'
" Needed for 3.7 f-string highlighting
Plugin 'vim-python/python-syntax'
call vundle#end()

" python-syntax configuration
let g:python_highlight_string_formatting = 1
let g:python_highlight_string_format = 1
let g:python_highlight_func_calls = 1

filetype plugin indent on

color flattown
syntax on

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set number
set cm=blowfish2

set backspace=indent,eol,start

