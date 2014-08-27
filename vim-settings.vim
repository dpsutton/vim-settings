""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Upgraded status/tabline
Plugin 'bling/vim-airline'

" Filesystem explorer
Plugin 'scrooloose/nerdtree'

" NERDCommenter
Plugin 'scrooloose/nerdcommenter'

" Fuzzy file finder
Plugin 'kien/ctrlp.vim'

" Ghetto XML/HTML mappings
Plugin 'tpope/vim-ragtag'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Tab autocomplete
Plugin 'ervandew/supertab'

" Mappings to manipulate surroundings
Plugin 'tpope/vim-surround'

" Syntax checker
Plugin 'scrooloose/syntastic'

" RSpec runner
Plugin 'skwp/vim-rspec'

" Color Schemes
Plugin 'flazz/vim-colorschemes'

" Indent level lines
Plugin 'Yggdroot/indentLine'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML5
Plugin 'othree/html5.vim'

" Javascript
Plugin 'pangloss/vim-javascript'

" Python
Plugin 'hdima/python-syntax'

" Ruby on Rails
Plugin 'tpope/vim-rails'

" Jade
Plugin 'digitaltoad/vim-jade'

" C#
Plugin 'OrangeT/vim-csharp'

" Coffeescript
Plugin 'kchmck/vim-coffee-script'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree open on GUI startup
let g:nerdtree_tabs_open_on_gui_startup=0

" NERDTree toggle
map <a-tab> :NERDTreeToggle<cr>
map <F2> :NERDTreeToggle<cr>

" NERDTree close on open file
let NERDTreeQuitOnOpen=1

" Airline autopopulate symbols
if has("gui_running")
  let g:airline_powerline_fonts=1
end

" Airline smarter tabline
let g:airline#extensions#tabline#enabled=1

" Airline only show filename in tabline
let g:airline#extensions#tabline#fnamemod=":t"

" RSpec turn off default mappings
let g:RspecKeymap=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
" hybrid, solarized, gruvbox, bubblegum, luna, badwolf, monokai
set background=dark
colors Tomorrow-Night-Eighties

" Font depending on OS
if has("win32")
  set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI
else
  set guifont=Monaco_for_Powerline:h13
end

" Hide scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" Hide menubar
set guioptions-=m

" Hide toolbar
set guioptions-=T

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable Vim
set nocompatible

" Variables can be set per file
set modeline

" Show line numbers
set number

" Highlights matching braces
set showmatch

" Search starts while entering string
set incsearch

" Search highlighting
set hlsearch

" Search ignore case
set ignorecase

" Search ignore case unless search contains an uppercase
set smartcase

" Autoloads changes to file made outside Vim
set autoread

" Do not wrap lines
set nowrap

" Prevent automatically inserting line breaks
set textwidth=0

" Command line completion help
set wildmenu

" Extensions to ignore in searches
set wildignore+=*.o,*.~,*.pyc,*.exe,*/tmp/*,*.so,*.swp,*.zip,*\\tmp\\*

" Turn off folding by default
set nofoldenable

" Fold by syntax highlighting
set foldmethod=syntax

" Minimum number of screen rows above and below the cursor
set scrolloff=10

" Minimum number of screen columns to the left and right of the cursor
set sidescrolloff=0

" Always show the status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Allow use of system clipboard
set clipboard=unnamed

" Buffer screen updates to speed up macros etc.
set lazyredraw

" New window appears below current
set splitbelow

" New window appears to the right of current
set splitright

" Set charater representation via UTF-8
set encoding=utf8

" File type preferences
set fileformat=unix
set fileformats=unix,dos

" Don't create backups
set nobackup
set nowb

" Turn off swapfiles
set noswapfile

" Buffer becomes hidden when abandoned to prevent need to save
set hidden

" Enable syntax highlighting
syntax on

" Enable filetype plugins
filetype plugin on

" Enable filetype indenting
filetype indent on

" Set autocomplete to syntax completion
set omnifunc=syntaxcomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically indent properly
set autoindent

" Represent 1 tab as 2 columns
set tabstop=2

" Text is indented by 2 columns
set shiftwidth=2

" Insert 2 columns when tab pressed
set softtabstop=2

" Backspace behave normally
set backspace=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader for Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set mapleader
let mapleader=","
let g:mapleader=","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer/Tab Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go to next buffer
nmap gb :bnext<cr>

" Go to previous buffer
nmap gB :bprevious<cr>

" New buffer in current area
nmap <leader>ee :enew<cr>

" New buffer in split
nmap <leader>es :new<cr>

" New buffer in vertical split
nmap <leader>ev :vnew<cr>

" Remove the current buffer
nmap <leader>bd :bprevious<cr>:bdelete #<cr>

" Remove the current buffer with override
nmap <leader>bD :bprevious<cr>:bdelete! #<cr>

" Split current file
nmap <leader>bs :split<cr>

" Vertical split current file
nmap <leader>bv :vsplit<cr>

" Show buffer list
nmap <leader>bl :ls<cr>

" Create new tab
nmap <c-t> :tabnew<cr>

" Go to next tab
nmap <a-]> :tabn<cr>

" Go to previous tab
nmap <a-[> :tabp<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" View Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go to split below
nmap <c-j> <c-w>j

" Go to split above
nmap <c-k> <c-w>k

" Go to split left
nmap <c-h> <c-w>h

" Go to split right
nmap <c-l> <c-w>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make H and L go to beginning and end of line
noremap H ^
noremap L $
vnoremap L g_

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn off search highlight
nmap ? :noh<cr>

" Toggle spell check
nmap <leader>sc :setlocal spell!<cr>

" Remove trailing whitespace
nmap <leader>xt :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:noh<cr>:echo "Trailing whitespace removed"<cr>

" Sort lines alphabetically
nmap <leader>sl :sort i<cr>
vmap <leader>sl :sort i<cr>

" Sort lines numerically
nmap <leader>sn :sort n<cr>
vmap <leader>sn :sort n<cr>

" Space to toggle folding
nmap <space> za
vmap <space> za

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Slips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change console command (like :W to :w)
ca W w
ca WQ wq
ca Wq wq
ca Q q
ca X x

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent Switch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Helps switch between space and tab indentation
" <leader>it        - toggle indentation method
" <leader>i<tab>    - switch to tab indentation
" <leader>i<space>  - switch to space indentation
" <leader>is        - show current indentation method
" <leader>ir        - reindent the file using current indentation method
if exists("indentswitch_loaded")
  finish
endif
let indentswitch_loaded = 1

if !exists("g:indentswitch_indent")
  let g:indentswitch_indent = "spaces"
endif

function! Ispaces()
  let g:indentswitch_indent = "spaces"
  set expandtab
  set smarttab
  echo "Space Indentation"
endfunction

function! Itabs()
  let g:indentswitch_indent = "tabs"
  set noexpandtab
  set nosmarttab
  echo "Tab Indentation"
endfunction

function! Itoggle()
  if g:indentswitch_indent == "tabs"
    call Ispaces()
  else
    call Itabs()
  endif
endfunction

function! Ishow()
  if g:indentswitch_indent == "tabs"
    echo "Tab Indentation"
  else
    echo "Space Indentation"
  endif
endfunction

if g:indentswitch_indent == "tabs"
  set noexpandtab
  set nosmarttab
else
  set expandtab
  set smarttab
endif

command! -bar -nargs=0 Itoggle call Itoggle()
command! -bar -nargs=0 Itabs call Itabs()
command! -bar -nargs=0 Ispaces call Ispaces()
command! -bar -nargs=0 Ishow call Ishow()

map <leader>it :Itoggle<cr>
map <leader>i<tab> :Itabs<cr>
map <leader>i<space> :Ispaces<cr>
map <leader>is :Ishow<cr>
map <leader>ir gg=G''
