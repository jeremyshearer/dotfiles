execute pathogen#infect()
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

set wildignore+=*/tmp/*,*/WEB-INF/*

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

let mapleader = ','

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

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
