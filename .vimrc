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
set linespace=3
set scrolloff=3
set cursorline

set backspace=2
set laststatus=2

set relativenumber
set number

" Enable mouse events
if has("mouse")
  set mouse=a
endif
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Bindings
nmap <Tab> :CtrlPBuffer<CR>
map <C-h> :CtrlPLine<CR>
imap <S-Tab> <Esc><<i
nmap - :NERDTreeToggle<CR>

" Subsettings
let NERDTreeShowBookmarks=1
let g:sneak#streak=1
let g:user_emmet_mode='a'
let g:user_emmet_leader_key='<Leader><Leader>'

let g:airline_powerline_fonts=0
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:tmuxline_powerline_separators=0

let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#virtualenv#enabled=1
let g:airline_detect_paste=1
let g:airline_detect_modified=1

" Theme
colorscheme railscasts
let g:airline_theme="bubblegum"

" Ignore
set wildignore+=*~,*.sw?
set wildignore+=*.tar.*,*.tgz
set wildignore+=.DS_Store
set wildignore+=node_modules/*,*.min.js               " Javascript
set wildignore+=*.pyc,dist/*,build/*,*.egg-info,*.egg " Python

" Autofiletype
autocmd BufNewFile,BufReadPost *.less set ft=less

" Code Control
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

