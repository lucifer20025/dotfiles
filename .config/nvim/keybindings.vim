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
