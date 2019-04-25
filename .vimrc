set ttyfast
set hlsearch
set cursorline
set undofile
set history=100
set noswapfile
set autoread
set hidden
set linespace=0
set ignorecase
set smartcase
set number
set mouse=a

filetype plugin on
syntax on

" 2 lines for cmd line
set encoding=utf-8

set expandtab           " enter spaces when tab is pressed
" set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent


set showcmd             " show (partial) command in status line
let mapleader = "\<Space>"

set background=dark

hi clear SpellBad
hi SpellBad cterm=underline

nnoremap <silent> <leader> :update<CR>
nnoremap <silent> <leader>x :update<CR>:bd<CR>
nnoremap <silent> <leader>h :nohlsearch<CR>
nnoremap <silent> <leader>f :let @+ = expand("%")<CR>
