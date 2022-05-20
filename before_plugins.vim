let tabsize = 2
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
execute "set softtabstop=".tabsize

let mapleader=";"

set nu
set expandtab
set nohlsearch
set guicursor=
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set signcolumn=yes
set noerrorbells
set scrolloff=8
set termguicolors
set hidden
set colorcolumn=100
set cmdheight=2
set mouse=a
set encoding=UTF-8

vmap <Leader>y :!xclip -f -sel clip<CR>
map <Leader>p mz:-1r !xclip -o -sel clip<CR>`z

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
