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
Bundle 'farseer90718/vim-taskwarrior'
Plugin 'tpope/vim-fugitive'
Plugin 'nelstrom/vim-qargs'
Plugin 'flazz/vim-colorschemes'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/phpfolding.vim'
Plugin 'vim-scripts/guicolorscheme.vim'
Plugin 'gilgigilgil/anderson.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'chriskempson/base16-vim'
Plugin 'tacahiroy/ctrlp-funky'
Bundle 'takac/vim-spotifysearch'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/PreserveNoEOL'
Plugin 'vim-scripts/sessionman.vim'
Plugin 'henrik/git-grep-vim'
Plugin 'rking/ag.vim'

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
let g:github_access_token = "c51ac6beb44949c53b8506e0569680f1f2b491da"
set runtimepath^=~/.vim/bundle/ag
let g:ag_working_path_mode="r"
set hidden
map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>
set clipboard+=unnamed
:let g:notes_directories = ['~/Dropbox/Notes']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['phpcs']
let g:syntastic_php_phpcs_args="--standard=PSR2 -n"
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespac "
set list
nmap <Leader>l I\Logger::error(print_r($word, TRUE));
set noeol
noremap <Leader>f :CtrlPFunky<CR>
noremap <Leader>t :CtrlPTag<CR>
set colorcolumn=120
map <Leader>n :NERDTreeToggle<CR>
noremap x "_x"
set lazyredraw
set ttyfast
map <Leader> <Plug>(easymotion-prefix)

"mapping wrapping words
:nnoremap <Leader>" ciw""<Esc>P"
:nnoremap <Leader>' ciw''<Esc>P'

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:neocomplete#enable_at_startup = 1

" Zoom / Restore window. {{{
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <Esc>x :ZoomToggle<CR>
" }}}
autocmd VimEnter * SyntasticToggleMode
