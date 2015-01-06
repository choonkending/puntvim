" Plugins "
"""""""""""
filetype off
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'kien/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'godlygeek/tabular'
Plugin 'bogado/file-line'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()
filetype plugin indent on
filetype indent on          " load filetype-specific indent files


" Standard settings "
"""""""""""""""""""""
syntax on
colorscheme railscasts

set number     " show line numbers
set ruler
set expandtab
set cursorline " highlight current line
set warn       " show current mode
set autoindent
set ignorecase " case insensitive search
set smartcase  " use case sensitive search if a capital letter is used
set hlsearch
set showcmd    " show command in bottom bar
set showmatch  " highlight matching [{()}]
set incsearch
set wildmenu   " visual autocomplete for command menu

set mouse=a
set tabstop=2
set shiftwidth=2
set list " Show `listchars` characters
set listchars=tab:=»,trail:·
set laststatus=2
set t_Co=256
set fillchars+=vert:\ 
set cc=121
set textwidth=120
set backspace=indent,eol,start

" Custom settings "
"""""""""""""""""""

" Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:NERDTreeWinSize = 42


" Custom Mappings "
"""""""""""""""""""

map Y y$

" Using registers to copy/paste to/from system clipboard
map <leader>p "+p
map <leader>y "+y

" Ctrl-c/x to copy/cut
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" NerdTree plugin
nmap <leader>f :NERDTreeToggle
nmap <leader>F :NERDTreeFind

"nnoremap <esc> :noh<return><esc>
:noremap <Space>n :cnext<C-m>
:noremap <Space>p :cprev<C-m>
:nnoremap <F5> :buffers<CR>:buffer<Space>

" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-S-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Tabularize mappings
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
endif

" CtrlP wildignore
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v[\/](node_modules)$'
