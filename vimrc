set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'kien/ctrlp.vim.git'
Plugin 'jaxbot/github-issues.vim.git'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'easymotion/vim-easymotion.git'
Bundle 'arnaud-lb/vim-php-namespace'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'
Bundle 'joonty/vim-phpunitqf.git'
Plugin 'tpope/vim-fugitive'


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
let mapleader=","
autocmd BufWritePre * :%s/\s\+$//e
set backupdir=/tmp
set directory=/tmp
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
let g:ctrlp_map = '<c-o>'
let g:ctrlp_cmd = 'CtrlP'
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>
inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
noremap <Leader>u :call PhpInsertUse()<CR>
