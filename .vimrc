set nocompatible

" Vundle stuff

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'bling/vim-airline'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
call vundle#end()

filetype plugin indent on

" General settings

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set softtabstop=2
set ignorecase
set smartcase

" look and feel

set background=dark
set colorcolumn=100
colorscheme advantage

" airline stuff
let g:airline_detect_paste=1
" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

" nerdtree
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let NERDTreeQuitOnOpen=0

" always show statusline
set laststatus=2

" todo: get decent ctags
" tag support
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" tagbar stuff
nmap <silent> <leader>b :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/bin/ectags'

" git integration
" airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

syntax on

set nobackup

set swapfile
set dir=~/.vim/swap

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

" split pane navigation
nmap <silent> <a-k> :wincmd k<CR>
nmap <silent> <a-j> :wincmd j<CR>
nmap <silent> <a-h> :wincmd h<CR>
nmap <silent> <a-l> :wincmd l<CR>

" show insane characters
set lcs=tab:>-,trail:-
set list

