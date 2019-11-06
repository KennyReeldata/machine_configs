set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number


" jump to the last position when reopening a file
augroup reopen
    autocmd!
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END


" Vimplug
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf'
Plug 'vim-airline/vim-airline'
" Initialize plugin system
call plug#end()

