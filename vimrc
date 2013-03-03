"""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc Configuration File                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Author:
"   Matthew Appleby
"
" Version:
"   1.0 - 2/27/13
"
" Plugin Manager:
"   Vundle (https://github.com/gmarik/vundle)
"
" Sections:
"   * Bundles
"   * General
"   * Interface
"   * Text (tab, indents, whitespace)
"   * Moving (tabs, windows, buffers)
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     Bundles                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                 " choose no compatibility with legacy vi
filetype off                     " required by Vundle
set rtp+=~/.vim/bundle/vundle/   " required by Vundle
call vundle#rc()                 " required by Vundle

"" Vundle Bundle (GitHub)
Bundle 'gmarik/vundle'

"" My bundles (GitHub)
"Powerline: awesome Vim status line
"Bundle 'Lokaltog/powerline'      

"NERDtree: file tree viewer
Bundle 'scrooloose/nerdtree'
nnoremap <leader>nt :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDChristmasTree=1
let NERDTreeWinPos="right"

"NERDcommenter: commenting tools
Bundle 'scrooloose/nerdcommenter'

"Colorschems: so many colors
Bundle 'flazz/vim-colorschemes'

filetype plugin on        " required by Vundle


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     General                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                       " show line numbers
set smartindent
set autoindent

syntax enable                    " enable syntax highlighting
set encoding=utf-8
set showcmd                     " display incomplete commands
"filetype plugin indent on       " load file type plugins + indentation


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Interface                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 256 colors
set t_Co=256

set scrolloff=10
"highlight LineNr ctermfg=grey ctermbg=black
"colorscheme github


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"          Text (tabs, indents, whitespace)         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set smarttab                    " smarter tab levels
"set noendofline binary          " suppresses adding EOL at end of file


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"          Moving (tabs, windows, buffers)          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Searching
"set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
