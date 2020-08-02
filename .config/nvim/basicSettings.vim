" Basic Settings
syntax on
filetype plugin indent on  "Enabling Plug-in & Indent
set nu rnu "sets line numbers
set encoding=UTF-8 
set clipboard+=unnamedplus "makes vim use computer's clipboard
set guicursor=
set noshowmatch nohlsearch nowrap noswapfile nobackup noshowmode
set hidden
set noerrorbells
set tabstop=2 softtabstop=2 expandtab shiftwidth=2
autocmd Filetype python setlocal tabstop=4 " Set indent to 4 for python
set smartindent smartcase
set undodir=~/.config/nvim/undodir undofile
set incsearch
set termguicolors
set scrolloff=8
set nofoldenable " disables folding
set spell
set cursorline
set cmdheight=2 " Give more space for displaying messages.
set colorcolumn=100 "complying with new linux guidelines
highlight ColorColumn ctermbg=0 guibg=lightgrey
set updatetime=50
set shortmess+=c
let mapleader=" "

