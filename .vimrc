set nocompatible
filetype off
set laststatus=2

set history=1000

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'scrooloose/nerdtree'
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'jcf/vim-latex'

filetype plugin indent on

set nu
syntax on

color molokai

" remove trailing spaces on write
autocmd BufWritePre *.py :%s/\s\+$//e

set visualbell

set incsearch
set hlsearch
set ignorecase

set ruler

set autoindent
set smartindent
set title

set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab

