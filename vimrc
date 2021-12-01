"
" plugins
"
call plug#begin('~/.dotfiles/vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'reedes/vim-colors-pencil'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'benmills/vimux'
Plug 'szw/vim-maximizer'
Plug 'puremourning/vimspector'

"
" Syntaxes
"
Plug 'chr4/nginx.vim'
Plug 'tpope/vim-liquid'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
call plug#end()

let g:typescript_indent_disable = 1

"
" leader
"
nnoremap <SPACE> <Nop>
let mapleader=" "

"
" basic
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
set novisualbell
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

set suffixesadd=.js,.jsx,.json,.ts,.tsx,.scss,.css
set includeexpr=substitute(v:fname,'@/',getcwd().'/','')
set path+=$PWD/node_modules

"
" fomatting markdown
" visually highlight and press `gq` to format
"
au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.twig setlocal syntax=liquid

nnoremap gp :silent %!./node_modules/.bin/prettier --stdin --stdin-filepath %<CR>

"
" Syntax
"
syntax enable
" Allow JSX in normal JS files
let g:jsx_ext_required = 0
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
" https://github.com/vim-python/python-syntax#option-variables
let g:python_highlight_all = 1

" https://vi.stackexchange.com/a/5318
let g:matchparen_timeout = 20
let g:matchparen_insert_timeout = 20

"
" Completion
"
filetype plugin on
set omnifunc=syntaxcomplete#Complete
" Improve omnicomplete
set completeopt=longest,menuone

"
" COC configs
"
source ~/.dotfiles/coc.vimrc

"
" FZF
"
" @see https://github.com/junegunn/fzf/issues/383
"
nnoremap <c-p> :GFiles<cr>

"
" Vimux
"
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>

"
" Maximizer
"
nnoremap <silent>mm :MaximizerToggle<CR>

"
" colors
"
colorscheme nord
let g:lightline = {
	\ 'colorscheme': 'nord',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
	\ },
  \ 'component': {
  \   'filename': '%F',
  \ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status'
	\ },
	\ }


"
" movement
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
