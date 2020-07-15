syntax on

set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set nofoldenable " disables folding
set spell
set cursorline
" Give more space for displaying messages.
set cmdheight=2

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

let mapleader=" "
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree' "file tree 
Plug 'itchyny/lightline.vim' "status line for vim
"Plug 'phanviet/vim-monokai-pro'
"Plug 'fneu/breezy'
"Plug 'erichdongubler/vim-sublime-monokai'
Plug 'sainnhe/sonokai'

call plug#end()

let g:sonokai_style = 'shusia'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 0
let g:sonokai_transparent_background = 1
colorscheme sonokai
let g:lightline = {'colorscheme' : 'sonokai'}

"Keybindings
nnoremap <Up> :resize +2<CR> 
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
nnoremap <leader>t :tabedit 
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l   
nnoremap <leader>v :vsplit 
nnoremap <C-s> :source %<CR>

