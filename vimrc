set hlsearch
set cursorline
syntax on
set term=screen-256color
colorscheme delek 

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

" nerdtree config
map <C-o> :NERDTreeToggle %<CR>
let NERDTreeWinSize = 50
set mouse=a
let g:NERDTreeMouseMode=3

" tagbar config
map <C-m> :TagbarToggle<CR>

" lightline config
set laststatus=2
let g:lightline = {'colorscheme': 'wombat'}

" Fzf Configuration
" This is the default extra key bindings
map <C-f> :Files<CR>
map <C-n> :Buffers<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~30%' }

