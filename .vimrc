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

"set hlsearch

syntax on

"look
set t_Co=256
colorscheme gruvbox
set bg=dark
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
silent! nmap <F4> :NERDTreeToggle<CR>
silent! nmap <F3> :NERDTreeFind<CR>

"NERDtree options
"ignore pyc files
let NERDTreeIgnore = ['\.pyc$']

"bundles
Bundle 'https://github.com/scrooloose/nerdtree.git'
