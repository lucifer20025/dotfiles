" ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
" ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
" ██║   ██║██║██╔████╔██║██████╔╝██║     
" ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"  ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"   ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝

" Basic Settings
source ~/.config/nvim/basicSettings.vim

" Keybindings 
source ~/.config/nvim/keybindings.vim

" Plugins
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


