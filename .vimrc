set number
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab
set autoindent
set noerrorbells
set vb t_vb=

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 
Plug 'dylanaraps/wal.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme wal

" COC autocomplete settings
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes

let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

set guifont=DroidSansMono\ Nerd\ Font\ 12

let g:airline_left_sep = "\uE0B5"
let g:airline_left_sep = "\uE0B4"
let g:airline_right_sep = "\uE0B7"
let g:airline_right_sep = "\uE0B6"

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
