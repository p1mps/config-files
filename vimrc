set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim.git'
Plugin 'jaxbot/github-issues.vim.git'
Plugin 'bling/vim-airline'
Bundle 'joonty/vim-phpunitqf.git'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme lucius
LuciusBlack
syntax on 
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set wildmode=full wildmenu
set t_Co=256
set number
set laststatus=2
set incsearch 
set ignorecase
