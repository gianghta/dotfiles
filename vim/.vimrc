" Giang Ta - Vim configuration file
" Contact: thoanggiang98@gmail.com

"""""""""""""""""""""""""""""""""""""""""""""""""
"GENERAL SETTINGS"
"""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

set noerrorbells

" Editing convention, mostly follow Python PEP 8
set tabstop=8 softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Convert tab to space
set expandtab

" Smart indentation
set smartindent

" Display line number
set nu

set ruler

" No line wrapping
set nowrap

" Some word case search options
set ignorecase
set smartcase

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Set incremental search highlight
set incsearch

" Auto scroll when reach almost {line}
set scrolloff=10

" Allow backspace
set backspace=indent,eol,start

" setting horizontal and vertical splits
set splitright
set splitbelow

" Add margin to left column
set foldcolumn=1

set bg=dark

"""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGINS"
"""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Gruvbox theme
Plug 'morhetz/gruvbox'

" Airline stuff
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NERDTree for navigation
Plug 'preservim/nerdtree'

"Autocomplete for vim
Plug 'ycm-core/YouCompleteMe'

" Syntax hightlight
Plug 'vim-syntastic/syntastic'

" Python commentary
" gcc -> comment out a line
" gc -> comment out a block in visual mode
Plug 'tpope/vim-commentary'

call plug#end()

"----------Key Mapping-------------------------------

" Mapping a leader key for different combination
let mapleader = " "
let g:mapleader = " "

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <C-n> :NERDTreeToggle<CR>

"----------Layout theme------------------------------

" Gruvbox config
let g:gruvbox_contrast_dark='soft'
colorscheme gruvbox

" Cursor Mode Settings
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

"----------NERDTree config---------------------------

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"----------------YouCompleteMe-----------------------
noremap <leader>] :YcmCompleter GoTo<cr>

" Auto-complete goes away after
let g:ycm_autoclose_preview_window_after_completion=1

" Shortcut for goto definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Show hidden files
let NERDTreeShowHidden=1

"-----------------Syntastic--------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = '▲'
let g:syntastic_python_checkers=['flake8', 'python3']
let g:syntastic_go_checkers = ['golint']

"----------vim-airline--------------------------------
" Color settings for it to display correctly
set lazyredraw
set t_Co=256
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"statusline appears all the time
set laststatus=2
"show PASTE if in paste mode
let g:airline_detect_paste=1
let g:airline_theme='deus'
