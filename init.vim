call plug#begin()
Plug 'tomasiser/vim-code-dark'
Plug 'lambdalisue/vim-fullscreen'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'posva/vim-vue'
Plug 'luochen1990/rainbow'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'jalera/vim-javascript-syntax'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

set number relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set nowrap

let mapleader="\<SPACE>"
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap <c-p> :FZF<CR>
nnoremap <leader>e :NERDTree<CR>
nnoremap <leader>ñ :tabnew<CR>:terminal powershell<CR>
tnoremap <Esc> <C-\><C-n>

inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

vnoremap <C-c> "*y
nnoremap <C-v> "*p

colorscheme codedark
autocmd VimEnter * RainbowToggle
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
autocmd VimEnter * NERDTree

let g:airline_theme='exort'
let g:rainbow_active = 1
let g:user_emmet_leader_key='<C-,>'

call rpcnotify(0, 'Gui', 'WindowMaximized', 1)

if @% == ""
	bd
endif
