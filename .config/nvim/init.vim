" ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
" ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
" ██║   ██║██║██╔████╔██║██████╔╝██║     
" ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"  ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"   ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝

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

" Plugins
let mapleader=" "
call plug#begin('~/.config/nvim/plugged')

Plug 'crusoexia/vim-monokai'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree' "file tree 
Plug 'ap/vim-css-color' "Displays a preview of colors with CSS
Plug 'itchyny/lightline.vim' "status line for vim
Plug 'yggdroot/indentline'
Plug 'mattn/emmet-vim' 
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/syntastic'

call plug#end()

"Theme options
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

colorscheme monokai
set background=dark

" indent and status line
let g:indent_guides_enable_on_vim_startup = 1 
let g:lightline = { 'colorscheme' : 'molokai', 'separator' : { 'left': '', 'right': '' } }
let g:polyglot_disabled = ['markdown']

" emmet settings
let g:user_emmet_leader_key=','
let g:user_emmet_mode='in'    "enables emmet in insert and normal mode
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" synastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
nnoremap <leader>q :qa!<CR>
nnoremap <leader>z :wqa<CR>
nnoremap <leader>s :wa<CR>
nnoremap <C-s> :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>, :tabedit ~/.config/nvim/init.vim<CR>
autocmd Filetype vim nnoremap <leader>pi :PlugInstall<CR>
autocmd Filetype vim nnoremap <leader>pu :PlugUpdate<CR>
autocmd Filetype vim nnoremap <leader>pc :PlugClean<CR>

" Keybindings for commenting stuff out
autocmd Filetype python vnoremap <leader>/ :norm I#<CR>
autocmd Filetype vim vnoremap <leader>/ :norm I"<CR>
autocmd Filetype c++ vnoremap <leader>/ :norm I//<CR>
