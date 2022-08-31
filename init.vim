filetype plugin indent on
filetype plugin on
set autoindent
set cc=80
set clipboard=unnamedplus
set cursorline
set expandtab
set hlsearch
set incsearch
set mouse=a
set mouse=v
set nowrap
set number
set relativenumber
set scrolloff=10
set shiftwidth=4
set showmatch
set softtabstop=4
set tabstop=4
set wildmode=longest,list
syntax on

call plug#begin('~/.local/share/nvim/site/autoload')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dracula/vim'
Plug 'APZelos/blamer.nvim'
Plug 'tmsvg/pear-tree'
call plug#end()

" color schemes
 if (has("termguicolors"))
 set termguicolors
 endif
 syntax enable
" colorscheme evening
colorscheme dracula
" open new split panes to right and below
set splitright
set splitbelow

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>

" fzf
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Rg<CR>

" Blamer
let g:blamer_enabled = 1
let g:blamer_delay = 30
let g:blamer_date_format = '%d/%m/%y'
let g:blamer_template = '<committer> <committer-time>'
