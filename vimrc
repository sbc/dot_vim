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
Bundle 'tpope/vim-fugitive'

" UI
Bundle 'altercation/vim-colors-solarized'
Bundle 'mutewinter/ir_black_mod'
Bundle 'tomasr/molokai'

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

  " Set height and width on Windows
  set lines=60
  set columns=120

  " Windows has a nasty habit of launching gVim in the wrong working directory
  cd ~
elseif has('gui_macvim')
  " MacVim

  set guifont=Menlo\ Regular:h12
  " Hide Toolbar in MacVim
  if has("gui_running")
    set guioptions=egmrt
  endif
endif

" ----------------------------------------
" Regular Vim Configuartion (No Plugins Needed)
" ----------------------------------------

syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands

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
:imap ;; <Esc>`^      " Map ;; to Esc, but don't move cursor

" -----------------------------
" Plugin-specific Configuration
" -----------------------------

"" Command T
nnoremap <silent><C-t> :CommandT<CR>
