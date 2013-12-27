set nocompatible
filetype off

syntax on
filetype plugin indent on

" Bundles
source ~/.vim/bundles.vim

" Generic
set encoding=utf-8
set fileencodings=utf-8

set autochdir
set autoindent
set smartindent
set cindent
set background=dark
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set wildignore=*.pyc
set ignorecase
set smartcase
set hlsearch
set incsearch
set shiftround
set history=1000
set undolevels=1000
set noswapfile
set nobackup
set number
set relativenumber
set linespace=3

" Enable mouse events
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Bindings
nmap <Tab> :CtrlPBuffer<CR>
map <C-h> :CtrlPLine<CR>
imap <S-Tab> <Esc><<i

  " Subsettings
let g:netrw_liststyle=3

set laststatus=2
let g:airline_powerline_fonts=1

" Theme
colorscheme molokai
