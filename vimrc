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
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/phpfolding.vim'
Plugin 'vim-scripts/guicolorscheme.vim'
Plugin 'gilgigilgil/anderson.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set expandtab
set t_Co=256
colorscheme zenburn
set shiftwidth=4
set tabstop=4
set smarttab
set wildmode=full wildmenu
set number
set laststatus=2
set incsearch
set smartcase
let mapleader=","
" autocmd BufWritePre * :%s/\s\+$//e
set backupdir=/tmp
set directory=/tmp
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
let g:ctrlp_cmd = 'CtrlP'
nnoremap <leader>p :CtrlP<CR>
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-m> :bprevious<CR>
inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
set wrapscan
set number
" set backspace=start,indent,eol
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
let g:github_access_token = "207db42ef1193ddece531265c50adfda2c921537"
set runtimepath^=~/.vim/bundle/ag
let g:ag_working_path_mode="r"
set hidden
map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespac "
set clipboard+=unnamed
:let g:notes_directories = ['~/Dropbox/Notes']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php']
