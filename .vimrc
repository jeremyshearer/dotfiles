syntax on
filetype plugin indent on
set nocompatible
set expandtab
set tabstop=2
set shiftwidth=2
set shiftround
set number
set ruler
set incsearch
set noswapfile
set nowritebackup
set nobackup
set backspace=2
set history=50
set clipboard=unnamed
set wildignore+=*/tmp/*,*/WEB-INF/*,*/node_modules/*

call plug#begin('~/.vim/pluged')
  Plug 'mattn/emmet-vim'
  Plug 'w0rp/ale'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'mileszs/ack.vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'scrooloose/nerdtree'
  Plug 'altercation/vim-colors-solarized'
call plug#end()

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

let mapleader = ','

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

syntax enable
set background=dark
colorscheme solarized

"NerdTree
map <C-f> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
let g:ale_lint_on_enter = 0
let g:ctrlp_map = '<c-f>'
