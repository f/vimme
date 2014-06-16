set nocompatible
filetype off

syntax on
filetype plugin indent on

" Bundles
source ~/.vim/bundles.vim

" Generic
set encoding=utf-8
set fileencodings=utf-8

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
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
autocmd FileType html,css imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

let g:airline_powerline_fonts=0
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:tmuxline_powerline_separators=0

let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#virtualenv#enabled=1
let g:airline_detect_paste=1
let g:airline_detect_modified=1

let g:ctrlp_match_window = 'top,order:ttb,min:1,max:15,results:15'

command Bash ConqueTermSplit bash --init-file ~/.bash_profile
map <S-Down> :Bash<CR>

" Theme
colorscheme molokai
let g:airline_theme="badwolf"
let g:molokai_original=1
let g:rehash256=1
hi Normal ctermbg=None

" Ignore
set wildignore+=*~,*.sw?
set wildignore+=*.tar.*,*.tgz
set wildignore+=.DS_Store
set wildignore+=node_modules/*,*.min.js               " Javascript
set wildignore+=*.pyc,dist/*,build/*,*.egg-info,*.egg " Python

" Autofiletype
autocmd BufNewFile,BufReadPost *.less set ft=less
autocmd BufNewFile,BufReadPost *.coffee set ft=coffee
autocmd BufNewFile,BufReadPost *.scss set ft=scss

" Code Control
hi OverLength term=underline cterm=underline gui=undercurl guisp=Orange 
match OverLength /\%81v.\+/

" 3 esc buffer close, wow easy.
map <silent> <esc><esc><esc> :bd<CR>
imap <silent> <esc><esc><esc> <esc>:bd<CR>

" clear search
map <silent> <space><space> :let @/=''<CR>

" keep blocks selected when indenting
vnoremap < <gv
vnoremap > >gv

if has('gui_running')
  set guioptions-=rL
  set guifont=Menlo:h16
  set clipboard=unnamed
  if has('gui_macvim')
    set macmeta
    set fuopt=maxvert,maxhorz
  endif
endif

source ~/.vim/functions.vim
