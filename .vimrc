set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Put plugins here and run :PluginInstall
Plugin 'udalov/kotlin-vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'derekwyatt/vim-scala'
call vundle#end()
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

