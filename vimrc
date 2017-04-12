"
"
"
" PLUGINS (vim-plug)
"
"
"
call plug#begin('~/.dotfiles/vim/plugged')
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'Raimondi/delimitMate'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-liquid'
Plug 'terryma/vim-multiple-cursors'
Plug 'bling/vim-airline'
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ternjs/tern_for_vim'
Plug 'Shougo/neocomplete.vim'
Plug 'mhinz/vim-grepper'
Plug 'editorconfig/editorconfig-vim'
Plug 'pangloss/vim-javascript'
Plug 'alexlafroscia/postcss-syntax.vim'
Plug 'leafgarland/typescript-vim'
call plug#end()

"
"
"
" LEADER
"
"
"
let mapleader=","

"
"
"
" BASIC
"
"
"
" Use Vim settings instead of vi settings
set nocompatible
" Line numbers are good
set number
set relativenumber
" Allow backspace in insert mode
set backspace=indent,eol,start
" Store lots of :cmdline history
set history=1000
" Lots of undo history, too
set undolevels=1000
" Undo lines on buffer reload
set undoreload=1000
" Show incomplete cmds down the bottom
set showcmd
" Disable cursor blink
set gcr=a:blinkon0
" No sounds
set visualbell
set noerrorbells
" Reload files changed outside vim
set autoread
" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
" Word wrap without linebreaks
set wrap
set nolist
set linebreak
" Highlight search matches
set hlsearch
" Preview first search match as you type
set incsearch
" Clear current search highlight by double tapping /
nmap <silent> // :nohlsearch<CR>
" Show line/col number in status bar
set ruler
" UTF-8 encoding by default
set encoding=utf-8
" Always show the status bar
set laststatus=2
" Enable bold fonts
let g:enable_bold_font = 1
if has('persistent_undo')
  " Save undos after file closes
  set undofile                          
  " Save undos in undodir within vim dir
  set undodir=~/.dotfiles/vim/undodir    
endif
" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden
" Turn off swap files
set noswapfile
set nobackup
set nowb
" Filetype recognition
filetype on
filetype plugin on
filetype indent on
" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·
" Fold based on indent
set foldmethod=indent
" Deepest fold is 3 levels
set foldnestmax=3
" Dont fold by default
set nofoldenable
" Start scrolling when we're 8 lines away from margins
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
" Appearance
colorscheme onedark 
set background=dark
set noshowmode
set guioptions=gm
" Syntax
syntax enable
" Allow JSX in normal JS files
let g:jsx_ext_required = 0
" Reduce delay of ESC switching out of Insert mode (terminal Vim)
set timeoutlen=1000 ttimeoutlen=0
" If you visually select something and hit paste
" that thing gets yanked into your buffer. This
" generally is annoying when you're copying one item
" and repeatedly pasting it. This changes the paste
" command in visual mode so that it doesn't overwrite
" whatever is in your paste buffer."
vnoremap p "_dP
" Always use system clipboard instead of +/* registers
set clipboard=unnamed

"
"
"
" COMPLETION 
"
"
"
let g:neocomplete#enable_at_startup = 1
set wildmode=list:longest
" Enable ctrl-n and ctrl-p to scroll thru matches
set wildmenu
" Stuff to ignore when tab completing
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"
"
"
" MOVEMENT
"
"
"
" 0 goes to first character in line
nnoremap 0 ^
" CR in normal mode for newline without insert
nmap <CR> o<Esc>
" Shift-CR for newline before current line w/out insert
nmap <S-Enter> O<Esc>
" vv for vertical split, ss for horizontal split
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s
" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Tab Navigation
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabnew<CR>
nnoremap tm  :tabm<CR>

"
"
"
" SETTINGS
"
"
"
" CtrlP Fuzzy Finder
map ,jr :CtrlP .<CR>
map ,js :CtrlP src<CR>
map ,jd :CtrlP dist<CR>
map ,ja :CtrlP app<CR>
map ,jw :CtrlP server<CR>
let g:ctrlp_custom_ignore = '/node_modules/'

" Multi-select
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'

let delimitMate_offByDefault = 0
" Hitting <CR> or space w/in parens will expand
" to balance spaces or newlines
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

" Settings for vim-grepper
" Set ,fi to Grepper w/ open/focused loclist
" (Mnemonic 'find in (files)')
nnoremap <leader>fi :Grepper -noquickfix -open -switch -tool git <CR>

" Fix multi-cursor + newcomplete
function! Multiple_cursors_before()
  exe 'NeoCompleteLock'
endfunction
function! Multiple_cursors_after()
  exe 'NeoCompleteUnlock'
endfunction

" Source a settings file 
" so ~/.dotfiles/vim/settings.vim
