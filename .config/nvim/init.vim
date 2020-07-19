" ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
" ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
" ██║   ██║██║██╔████╔██║██████╔╝██║     
" ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"  ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"   ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝

" Basic Settings
syntax on
set clipboard+=unnamedplus
set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set nofoldenable " disables folding
set spell
set cursorline
set encoding=UTF-8
filetype plugin indent on  "Enabling Plug-in & Indent
" Give more space for displaying messages.
set cmdheight=2
" Set indent to 4 for python
autocmd Filetype python setlocal tabstop=4 
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
" Having longer update time (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Plugins
let mapleader=" "
call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree' "file tree 
Plug 'ap/vim-css-color' "Displays a preview of colors with CSS
Plug 'sheerun/vim-polyglot' " language pack for vim
Plug 'itchyny/lightline.vim' "status line for vim
Plug 'sainnhe/sonokai'
Plug 'yggdroot/indentline'
Plug 'mattn/emmet-vim' 

call plug#end()

"Theme options
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

colorscheme sonokai
let g:sonokai_style = 'shusia'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 0
let g:sonokai_transparent_background = 1

" indent and status line
let g:indent_guides_enable_on_vim_startup = 1 
let g:lightline = { 'colorscheme' : 'sonokai', 'separator' : { 'left': '', 'right': '' } }

" emmet settings
let g:user_emmet_leader_key=','
let g:user_emmet_mode='in'    "enables emmet in insert and normal mode
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


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
nnoremap <C-s> :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>, :tabedit ~/.config/nvim/init.vim<CR>
autocmd Filetype vim nnoremap <leader>pi :PlugInstall<CR>
autocmd Filetype vim nnoremap <leader>pc :PlugClean<CR>
