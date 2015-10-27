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
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set expandtab
let g:solarized_termcolors=256
set background=dark
colorscheme zenburn
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
let g:ctrlp_map = '<Leader> p'
let g:ctrlp_cmd = 'CtrlP'
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>
inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
set wrapscan
set number
set backspace=start,indent,eol
set cursorline
noremap <Leader>u :call PhpInsertUse()<CR>
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set mouse=a
set hlsearch
