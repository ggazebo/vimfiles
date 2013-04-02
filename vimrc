set encoding=utf-8
syntax on
set autoindent
set incsearch
set hlsearch

" Editing modes
set backspace=indent,eol,start
set smarttab

" Plugins and modeline
filetype plugin on
filetype indent on
set modeline

" GUI
set number
set ruler
set showtabline=2   " Always show tabline
set shortmess=aoI   " Less verbose short messages
set guioptions+=r   " RHS scroll bar always on

" More useful completion
set wildmenu
set wildmode=list:longest

" Centralize temporary files
if has("unix")
  set directory=~/.cache/vim//
elseif (has("win32") || has("win64"))
  set directory=$TEMP//
endif

" Extended block matching
runtime macros/matchit.vim

" Searching
set ignorecase
set smartcase

" Navigation
set scrolloff=2
set sidescrolloff=8
set history=100

" Mouse scrolling in screen
if has("mouse") && &term == "screen"
  set ttymouse=xterm2
endif


" Windows specific options
if (has("win32") || has("win64"))
  " Force backup copy so file permissions are preserved
  set backupcopy=yes
endif

" Attach vimfiles
let &runtimepath = expand("<sfile>:h") . "," . &runtimepath

" Enable Pathogen
call pathogen#infect()

" =====================================
" Filetypes
" =====================================

au Filetype python set et sw=4 sts=4 ts=8 ff=unix

au Filetype vim set et sw=2 sts=2 ff=unix

au Filetype tex set spell
