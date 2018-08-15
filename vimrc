set encoding=utf-8

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'itmammoth/doorboy.vim'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'prettier/vim-prettier'
call plug#end()

" dark theme
" colorscheme palenight
" let g:lightline = {'colorscheme': 'palenight'}
"
" light theme
let ayucolor="light"  " for light version of theme
colorscheme ayu

if (has('termguicolors'))
  set termguicolors
endif

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.cache
let g:ctrlp_custom_ignore = '\v[\/](node_modules|vendor|target|dist|bower|bower_components)|(\.(swp|ico|git|svn))$'

syntax on
filetype plugin indent on

" clipboard
set clipboard=unnamed
set nu

" syntax highlighting
set nocursorcolumn
set nocursorline

" Allow backgrounding buffers without writing them, and remember marks/undo
" for backgrounded buffers
set hidden

" whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

" list chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
" searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter

set splitright                    " Open new vertical split windows to the right of the current one, not the left.
set splitbelow                    " See above description. Opens new windows below, not above.

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" clear search after hitting return
:nnoremap <CR> :nohlsearch<cr>
set nohlsearch

" go
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

" neoformat
autocmd BufWritePre *.go Neoformat goimports

" yolo mode
set nobackup
set nowritebackup
set dir=~/.vimswap//,/var/tmp//,/tmp//,
