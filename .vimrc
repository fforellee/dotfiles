 ".d88b.  .d88b.  .d88b. .d8888b  .d88b."  
"d88P"88bd88""88bd88""88b88K     d8P  Y8b" 
"888  888888  888888  888"Y8888b.88888888"
"Y88b 888Y88..88PY88..88P     X88Y8b."     
 "Y88888 "Y88P"  "Y88P"  88888P' "Y8888  
     888                                 
"Y8b d88P"                                 
 "Y88P"                                  

syntax on

set relativenumber 
set clipboard+=unnamedplus
set number 
set noerrorbells 
set incsearch 
set noswapfile
set nu
set nowrap 
set smartindent 
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab 
highlight ColorColumn ctermbg=0 guibg=lightgrey
let mapleader ="\<space>"

nnoremap <leader>T : call Toggle_transparent()<CR>
nnoremap <leader>/ : noh <CR>
nnoremap <leader>S : source %
nnoremap <leader>a : !python 

call plug#begin('~/local/nvim-data/site/autoload/plug.vim')

Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'JuliaEditorSupport/julia-vim'
Plug 'tpope/vim-commentary'

call plug#end()

call vundle#begin()

Plugin 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call vundle#end()

"Nerd tree config
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
