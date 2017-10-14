filetype plugin on
filetype indent on

set termguicolors
set nocompatible
set showmatch
set wildmenu
set number
set ruler
set cmdheight=2
set backspace=eol,start,indent
set ignorecase
set incsearch  
set magic
set background=dark
set t_Co=256
set shell=/bin/zsh
set mouse=a
set autoread
set smartcase
set linebreak
set textwidth=0
set display=lastline
set term=xterm-256color
set history=300

set noswapfile
set nobackup
set nowb

set termencoding=utf-8
set encoding=utf-8
scriptencoding utf-8
set ffs=unix

set noerrorbells

syntax enable
colorscheme quantum  

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai 
set si 
set wrap 
set laststatus=2
     
set pastetoggle=<F2>

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'itchyny/lightline.vim'
Plug 'lervag/vimtex'
Plug 'kien/ctrlp.vim'
call plug#end()             

try
  set undodir=~/.vim/tmp/undo
  set undofile
catch
endtry

let g:NERDTreeWinPos = "right"
let mapleader = ","
let g:mapleader = ","

" Use templates for *.c files 
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.c 0r ~/.vim/templates/main.c
  augroup END
endif

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>rl :so $MYVIMRC<CR>
nmap <silent> <leader>tt gt<CR>
nmap <silent> <leader>hh :split<CR>
nmap <silent> <leader>vv :vsplit<CR>
nmap <silent> <leader>ff :NERDTreeToggle<CR>
nmap <silent> <leader>cp :CtrlP
nmap <leader>vcp :VimtexCompile<CR>
nmap <silent><leader>tn :tabnew<CR>
nmap <silent><leader>ss :sh<CR>
nmap <silent><leader>qq :q!<CR>

command SudoE :w !sudo tee %

" Cursor behaviour 
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

let g:rehash256 = 1

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

"vim: set ft=vim ts=2 sw=2 tw=500 et :
