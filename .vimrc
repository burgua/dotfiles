set nocompatible
filetype off
set laststatus=2

set history=1000

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'Command-T'
Bundle 'snipMate'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'edsono/vim-matchit'
Bundle 'tpope/vim-endwise'
Bundle 'mileszs/ack.vim'
Bundle 'ap/vim-css-color'

filetype plugin indent on

set nu
syntax on

color molokai

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

