set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
call vundle#end()

let g:ycm_confirm_extra_conf = 0

filetype plugin indent on

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

set hidden
set novb
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set softtabstop=2
set hlsearch
set textwidth=0
set lcs=tab:>-,trail:-
set list
syntax on
set backspace=indent,eol,start
set history=50
set ruler
set showcmd
set incsearch
set number
set lbr

set ignorecase
set smartcase

map <C-e> <ESC>:tabnew 
map <C-l> <ESC>:tabn<CR>
map <C-h> <ESC>:tabp<CR>

set background=dark
set colorcolumn=100
colorscheme advantage

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

au BufNewFile,BufRead *.cpp set syntax=cpp11

set wildmode=longest,list

