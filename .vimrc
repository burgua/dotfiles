set nocompatible
filetype off
set laststatus=2

set history=1000

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-endwise'
Bundle 'bling/vim-airline'
Bundle 'skammer/vim-css-color'
Bundle 'honza/vim-snippets'

filetype plugin indent on

set nu
syntax on
color molokai

" remove trailing spaces on write
autocmd BufWritePre * :%s/\s\+$//e

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

