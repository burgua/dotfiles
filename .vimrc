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

Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'vim-matchit'
Bundle 'vim-css-color'
Bundle 'syntastic'
Bundle 'snipmate-snippets'
Bundle 'ack.vim'
" Bundle 'altercation/vim-colors-solarized'

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

