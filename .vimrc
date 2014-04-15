"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugins
filetype plugin on
"filetype indent on
set ffs=unix
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
"set t_Co=256 is necesary so that the theme will work
"set term=xterm-256color
""""solarized theme
let g:solarized_termcolors=16
set t_Co=16
colorscheme solarized
""""molokai theme
"set t_Co=256
"colorscheme molokai
syntax enable
set background=dark
"highlight 80 char if passed
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%80v', 100)
"set line numbers
set number
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4 
set softtabstop=4
set textwidth=79
"set columns=79
set shiftwidth=4
set shiftround
set autoindent
set ai
set si
set ls=2
set expandtab
set wrap
set linebreak
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vundle settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved
filetype off                  " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on     " required!
Bundle 'http://github.com/davidhalter/jedi-vim'
Bundle 'https://github.com/hynek/vim-python-pep8-indent'
Bundle 'https://github.com/nvie/vim-flake8'
Bundle 'https://github.com/airblade/vim-gitgutter'
Bundle 'https://github.com/altercation/vim-colors-solarized'
Bundle 'https://github.com/Lokaltog/vim-powerline'

"let g:gitgutter_eager = 0
"let g:gitgutter_realtime = 0 
"GitGutterEnable
"let g:flake8_cmd=""
let g:flake8_ignore="E125"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"maps and other commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"delete whitespace for .py files
autocmd BufWritePre *.py :%s/\s\+$//e
":nnoremap w W
:command WQ wq
:command Wq wq
:command W w
:command Q q
"move through opened files easier
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h
