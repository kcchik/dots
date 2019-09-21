syntax on

set expandtab
set tabstop=2
set softtabstop=2

set number
set cursorline
set showmatch

set incsearch
set hlsearch

set wildmenu

set lazyredraw

nnoremap <S-down> :m .+1<CR>==
nnoremap <S-up> :m .-2<CR>==
inoremap <S-down> <Esc>:m .+1<CR>==gi
inoremap <S-up> <Esc>:m .-2<CR>==gi
vnoremap <S-down> :m '>+1<CR>gv=gv
vnoremap <S-up> :m '<-2<CR>gv=gv

nnoremap B ^
nnoremap E $

inoremap jk <esc>

