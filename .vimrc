<<<<<<< HEAD
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

=======
" vimplug start
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/softmoth/zsh-vim-mode'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'airblade/vim-gitgutter'
" Plug 'easymotion/vim-easymotion'
Plug 'elzr/vim-json'
Plug 'townk/vim-autoclose'
Plug 'klen/python-mode'
Plug 'tpope/vim-fugitive'
Plug 'maksimr/vim-jsbeautify'
Plug 'chrisbra/csv.vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'elzr/vim-json'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kristijanhusak/vim-hybrid-material' " Theme
Plug 'scrooloose/syntastic'
Plug 'epmatsw/ag.vim'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'ryanoasis/vim-devicons' " ALWAYS LOAD LAST!
call plug#end()
" vimplug end

" Material theme advanced config
let g:enable_bold_font=1

set termguicolors " enable 24bit true color
syntax enable
set background=dark
colorscheme hybrid_reverse

" Use system clipboard
set clipboard=unnamed

" GVIM settings
set guioptions -=m
set guioptions -=T
set shell=zsh
set guioptions+=a

" General settings
syntax on
filetype plugin indent on
set number
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Some aliases
nnoremap :fzf :FZF<CR>
nnoremap :nt :NERDTree<CR>
" autocmd vimenter * NERDTree " nerdtree on startup
set encoding=UTF-8
autocmd FileType nerdtree setlocal nolist
"insert and remove comments in visual and normal mode
map  ,ic :s/^/#/g<CR>:let @/ = ""<CR>
map  ,rc :s/^#//g<CR>:let @/ = ""<CR>

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_pylint_post_args="--max-line-length=120"
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_python_exec = 'python3.7'
let g:AutoClosePreserveDotReg = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ag_working_path_mode="r"

" Airline
let g:airline_theme = "hybrid"
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
let g:airline#extensions#tabline#enabled = 1

" pymode
let g:pymode_python = 'python3'
let g:pymode_folding = 1 " Turn on
let g:pymode_doc = 0 " Turn off auto docs
let g:pymode_doc_bind = 'K' " Bind K to docs
let g:pymode_lint_config = '$HOME/pylint.rc'
let g:pymode_rope = 0

" youcompleteme
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'
nnoremap :jd :YcmCompleter GoTo<CR>

" Airline theme
let g:AirlineTheme = 'badwolf'
>>>>>>> fa67bcbdf9f2113f603e43749efe68e4d41f59a2
