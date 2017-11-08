call plug#begin('~/.vim/plugged')
Plug 'posva/vim-vue'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/tpope-vim-abolish'
call plug#end()
" ===========================================
" PATHOGEN configuration
" ===========================================
execute pathogen#infect()
syntax enable
filetype plugin indent on

" ===========================================
" NERDTREE configuration
" ===========================================
nmap <C-k> :NERDTreeFind<cr>
" nmap <C-k> :NERDTreeTabsFind<cr>
" nmap <C-l> :NERDTreeToggle<CR>
nmap <C-l> :NERDTreeTabsToggle<cr>
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let mapleader=","

noremap <Leader>* :noh<cr>

" ===========================================
" VIM configuration
" ===========================================
set background=dark
colorscheme monokai

set nocompatible
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set history=1000                "Store lots of :cmdline history
set backspace=indent,eol,start  "Allow backspace in insert mode
set number                      "Line numbers are good
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set noswapfile
set nobackup
set nowb
set mouse=a
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set nowrap
set t_Co=256
set showmatch
set foldmethod=manual
set clipboard+=unnamed
xnoremap p "_dP
" ################
" search highlight
" ################

" highlight search terms
set hlsearch

" show search matches as you type
set incsearch

" Press Space to turn off highlighting and clear any message already displayed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

autocmd BufWritePre * :%s/\s\+$//e    "remove espaço no final da linha

" ===========================================
" CTRLP configuration
" ===========================================
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.obj,system*,*.jpg,*.png,*.gif,*.log
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_by_filename = 0
let g:ctrlp_working_path_mode = 'a'

" ===========================================
" AG configuration
" ===========================================
set runtimepath^=~/.vim/bundle/ag
let g:ag_working_path_mode="r"

" ===========================================
" AIRLINE configuration
" ===========================================
set laststatus=2

" ===========================================
" TABULAR configuration
" ===========================================
map <C-t>  :Tab /=<CR>

" CUSTOM shortcuts
nmap ,cs :let @*=expand("%")<CR>
nmap ,cl :let @*=expand("%:p")<CR>"
"
"Copy file path, name
if has('win32')
  nmap ,cs :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
  nmap ,cl :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>

  " This will copy the path in 8.3 short format, for DOS and Windows 9x
  nmap ,c8 :let @*=substitute(expand("%:p:8"), "/", "\\", "g")<CR>
else
  nmap ,cs :let @*=expand("%")<CR>
  nmap ,cl :let @*=expand("%:p")<CR>
endif
" ##############
" Tab Management
" ##############

" vim tab navigation
for i in [1, 2, 3, 4, 5, 6, 7]
  execute 'nnoremap ,'.i.' '.i.'gt'
endfor

" tab managements
nmap ,tc :tabclose<CR>
nmap ,tn :tabnew<CR>
nmap ,to :tabo<CR>
nmap ,t :tabedit<CR>
