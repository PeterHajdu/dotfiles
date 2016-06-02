set nocompatible

" Vundle stuff

filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'leafgarland/typescript-vim'
Plugin 'junegunn/fzf.vim'

call vundle#end()

filetype plugin indent on

" General settings

let mapleader=","

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set ignorecase
set smartcase

" Indentation
set shiftwidth=2
set tabstop=2
set smartindent
set smarttab
set expandtab
set softtabstop=2

" look and feel
set background=dark
set colorcolumn=120

" always show statusline
set laststatus=2

syntax on

set nobackup
set nowritebackup
set noswapfile
set noundofile

" forget about arrows
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" easy tab navigation
map <C-e> <ESC>:tabnew 
map <C-l> <ESC>:tabn<CR>
map <C-h> <ESC>:tabp<CR>
map <BS> <ESC>:tabp<CR>

" fzf plugin
map <C-p> <ESC>:Files<CR>

" split pane navigation
nmap <silent> <a-k> :wincmd k<CR>
nmap <silent> <a-j> :wincmd j<CR>
nmap <silent> <a-h> :wincmd h<CR>
nmap <silent> <a-l> :wincmd l<CR>

" show insane characters
set lcs=tab:>-,trail:-
set list

