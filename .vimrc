set tabstop=4
set shiftwidth=4
set smartindent
set number
set mouse=a

"copying with ctrl C
vnoremap <C-c> : '<, '>w  !xclip -selection clipboard<CR><CR>

"cutting with ctrl X
vnoremap <C-x> : '<, '>w  !xclip -selection clipboard<CR><CR>:silent normal!gvxd<CR>

call plug#begin()
"file explorer in vim
Plug 'preservim/nerdtree'
"highlighter
Plug 'vim-syntastic/syntastic'
"norminette that runs on highlighter
Plug 'alexandregv/norminette-vim'
call plug#end()

" Remap Ctrl + Arrow keys to switch between windows
nnoremap <C-Left> <C-w>h
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>l

" Enable norminette-vim (and gcc)
let g:syntastic_c_checkers = ['norminette', 'cc']
let g:syntastic_aggregate_errors = 1
" Set the path to norminette (do no set if using norminette of 42 mac)
let g:syntastic_c_norminette_exec = 'norminette'
" Support headers (.h)
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']
" Pass custom arguments to norminette (this one ignores 42header)
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'
" Check errors when opening a file (disable to speed up startup time)
let g:syntastic_check_on_open = 1
" Enable error list
let g:syntastic_always_populate_loc_list = 1
" Automatically open error list
let g:syntastic_auto_loc_list = 1
" Skip check when closing
let g:syntastic_check_on_wq = 0
