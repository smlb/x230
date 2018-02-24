filetype plugin indent on

set nonu 
set ttyfast
set mouse=a
set hlsearch

set lbr
set tw=500
set ai 
set si 
set wrap 

set display=lastline
set laststatus=2

set smartcase
set linebreak
set textwidth=0

set termguicolors 
colorscheme quantum
set pastetoggle=<F2>

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

let mapleader = ","
let g:mapleader = ","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>hh :split<CR>
nmap <silent> <leader>vv :vsplit<CR>
nmap <silent><leader>qq :q!<CR>
nmap <silent><leader>tt :tabnew<CR>

nmap j gj
nmap k gk
nnoremap <leader><space> :nohlsearch<CR>

imap jj <Esc>
xnoremap . :norm.<CR>

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 15 
let g:netrw_altv= 1

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

