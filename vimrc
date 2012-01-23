" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible
filetype off                    " required by vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required! 
Bundle 'gmarik/vundle'

" --------------
" Plugin Bundles
" --------------

" Navigation
Bundle 'wincent/Command-T'

" Commands
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'chrisbra/csv.vim'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'vim-scripts/matchit.zip'

" UI
Bundle 'altercation/vim-colors-solarized'
Bundle 'mutewinter/ir_black_mod'
Bundle 'tomasr/molokai'
Bundle 'Lokaltog/vim-powerline'

" Language Additions
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'itspriddle/vim-jquery'
Bundle 'tpope/vim-rails'
Bundle 'mutewinter/taskpaper.vim'
Bundle 'leshill/vim-json'

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
"
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

filetype plugin indent on  " Automatically detect file types. (must turn on after Vundle)

" ----------------------------------------
" Platform Specific Configuration
" ----------------------------------------

if has('win32') || has('win64')
  " Windows
  source $VIMRUNTIME/mswin.vim
  set guifont=Consolas:h10:cANSI
  set guioptions-=T " Toolbar
  set guioptions-=m " Menubar

  " Windows has a nasty habit of launching gVim in the wrong working directory
  cd ~
elseif has('gui_macvim')
  " MacVim

  "set guifont=Menlo\ Regular:h12
  set guifont=Droid\ Sans\ Mono:h14
  " Hide Toolbar in MacVim
  if has("gui_running")
    set guioptions=egmrt
  endif
endif

" ----------------------------------------
" GUI Specific Configuration
" ----------------------------------------

if has('gui_running')

  " Set screen geometry
  set lines=50
  set columns=100

endif

" ----------------------------------------
" Regular Vim Configuartion (No Plugins Needed)
" ----------------------------------------

syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
set laststatus=2                " always show the statusline
set hidden                      " allow hidden buffers
set history=100
set wildmode=list:longest       " shell-like wildcard matching

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Color
set background=dark
colorscheme solarized

"" Key mappings
let mapleader = ","
" Map ;; to Esc, but don't move cursor
:imap ;; <Esc>`^

" -----------------------------
" Plugin-specific Configuration
" -----------------------------

"" Command T
nnoremap <silent><C-t> :CommandT<CR>

"" Powerline
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h14
let g:Powerline_symbols = 'fancy'
