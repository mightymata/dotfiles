"""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc Configuration File                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Author:
"   Matthew Appleby
"
" Version:
"   1.1 - 4/6/13
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

"vim-ariline
Bundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1
set laststatus=2   " Always show the statusline

"MiniBufExplorer: shows open buffers as tabs
"Bundle 'fholgado/minibufexpl.vim'

"VimRails: vim support for Ruby on Rails
Bundle 'tpope/vim-rails'

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

filetype indent plugin on        " required by Vundle

"Surround: allows editing an elements surroundings
Bundle 'surround.vim'

filetype plugin on        " required by Vundle
filetype indent on        " indents based on filetype
                          " (added this to work with html)

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     General                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                       " show line numbers
set smartindent
set autoindent
set hidden                       " allows there to be unsaved buffers hidden

syntax enable                    " enable syntax highlighting
set encoding=utf-8
set showcmd                     " display incomplete commands

" toggle paste mode with visual feedback
nnoremap <leader>p :set invpaste paste?<CR>
set pastetoggle=<leader>p
set noshowmode

" open .vimrc in new tab to edit
nmap <leader>v :edit $MYVIMRC<CR>

" bind \R to resource .vimrc configuration file
nnoremap <leader>R :source $MYVIMRC<CR>

" Source the vimrc file after saving it
"if has("autocmd")
"  autocmd bufwritepost .vimrc source $MYVIMRC
"endif

" Makes ESCAPE exit insert mode faster
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Interface                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 256 colors
set t_Co=256

set scrolloff=10
"highlight VertSplit ctermfg=black ctermbg=yellow
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

map <C-j> :bprev<CR>
map <C-k> :bnext<CR>

