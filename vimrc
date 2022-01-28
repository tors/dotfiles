set encoding=utf-8

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'jreybert/vimagit'
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'NLKNguyen/papercolor-theme'
Plug 'TovarishFin/vim-solidity'
call plug#end()

" coc.vim
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
inoremap <silent><expr> <c-@> coc#refresh()

" coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.cache
let g:ctrlp_custom_ignore = '\v[\/](node_modules|vendor|target|dist|bower|bower_components)|(\.(swp|ico|git|svn))$'

" syntax
syntax on
filetype plugin indent on

" whitespace
set smartindent
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start

" clipboard
set clipboard=unnamed
set nu

" syntax highlighting
set nocursorcolumn
set nocursorline

" Allow backgrounding buffers without writing them, and remember marks/undo
" for backgrounded buffers
set hidden

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" backspace
set nocompatible
set backspace=indent,eol,start

" yolo mode
set nobackup
set nowritebackup
set dir=~/.vimswap//,/var/tmp//,/tmp//,

set background=light
colorscheme PaperColor
