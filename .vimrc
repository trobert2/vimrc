"vundle stuff
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
set ignorecase
"editor
set smartcase
set autoindent
:set tabstop=4 expandtab shiftwidth=4 softtabstop=4

set hlsearch

syntax on
"look
colorscheme sorcerer
"highlight 80 char if passed
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%80v', 100)
"set line numbers
set number

"maps and other commands
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

"bundles
Bundle 'https://github.com/scrooloose/nerdtree.git'
