set encoding=utf-8

call plug#begin()
" working with files
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'

" status
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'

" formatting
Plug 'itmammoth/doorboy.vim'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-commentary'

" git
Plug 'tpope/vim-fugitive'

" js
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier'

" typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'Quramy/vim-js-pretty-template'
Plug 'peitalin/vim-jsx-typescript'


" html & css
Plug 'mattn/emmet-vim'

" golang
Plug 'mdempsky/gocode', {'rtp': 'vim/'}
Plug 'fatih/vim-go'

" themes
Plug 'connorholyday/vim-snazzy'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
call plug#end()

" dark theme
" let g:lightline = {'colorscheme': 'snazzy'}
" colorscheme snazzy

" light theme
let g:lightline = {'colorscheme': 'onehalfdark'}
colorscheme onehalfdark

hi Comment gui=italic cterm=italic
hi htmlArg gui=italic cterm=italic

set t_ut=

" forces true colour on.
" https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

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

" devicons
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true

