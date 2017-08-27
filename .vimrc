" .vimrc built for vim 7.4
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins here
Plugin 'gmarik/Vundle.vim' " Let Vundle manage Vundle
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'edkolev/tmuxline.vim'

call vundle#end()

filetype on
filetype plugin on
filetype indent on

" General Settings
syntax on

set t_Co=256
set number " show line numbers
set showmatch

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Airline plugin
set laststatus=2
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

" Python settings
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

let python_highlight_all=1

" docstrings for folded code
let g:SimylFold_docstring_preview=1

" Web dev settings
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
    \ set expandtab
    \ set autoindent

" NerdTree mapping for quick access
map <C-n> :NERDTreeToggle<CR>
