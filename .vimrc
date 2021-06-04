
 ".d88b.  .d88b.  .d88b. .d8888b  .d88b."  
"d88P"88bd88""88bd88""88b88K     d8P  Y8b" 
"888  888888  888888  888"Y8888b.88888888"
"Y88b 888Y88..88PY88..88P     X88Y8b."     
 "Y88888   Y88P"  Y88P"  88888P'  Y8888"
     "888"                                 
"Y8b d88P"                                 
 "Y88P"                                  

 " Nota sobre o meu atual setup do vim, eu vou descrevr alguns dos processos
 " importantes para rodar plugins essenciais pra mim, no momento n sei
 " utilizar o latex preview, contudo sei que para fazer algusn dos
 " autocomplete funcionar eu preciso compilar o vim eu mesmo

"Scripts de instalacao do vim plug
"windows iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
"Linux curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vimsyntax on

"Scripts vundle

color blackboard
set wrap
set encoding=utf-8
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
set ft=xxd
highlight ColorColumn ctermbg=0 guibg=lightgrey
let mapleader ="\<Tab>"

nnoremap <leader>T : call Toggle_transparent()<CR>
nnoremap <leader>/ : noh <CR>


nnoremap <leader>a : !python 
nnoremap <leader>p : LLPStartPreview 

call plug#begin('~/.vim/plugged')
    Plug 'mnishz/colorscheme-preview.vim'
    Plug 'ap/vim-css-color'
    Plug 'iamcco/markdown-preview.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-commentary'
    Plug 'VundleVim/Vundle.vim'
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex'}
    Plug 'neoclide/coc.nvim'
    Plug 'honza/vim-snippets'
    Plug 'wokalski/autocomplete-flow'
" Syntax highlighter
    Plug 'uiiaoo/java-syntax.vim'
    Plug 'JuliaEditorSupport/julia-vim'
call plug#end()

call vundle#begin()
    Plugin 'valloric/youcompleteme'
    Plugin 'iamcco/markdown-preview.vim'
    Plugin 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plugin 'wokalski/autocomplete-flow'
    Plugin 'ying17zi/vim-live-latex-preview'
    Plugin 'altercation/vim-colors-solarized'
call vundle#end()


"Vim latex preview
let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile = 0

"Nerd tree config
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Bracey Config

let g:bracey_auto_start_browser=0                                
let g:bracey_server_allow_remote_connections=1                   
let g:bracey_server_port=8080                           

"Vim YouCompleteMe"

let g:ycm_autoclose_preview_window_after_insertion = 1

"Latex config
map  <leader>c:! pdflatex %<CR><CR>
map  <leader>f:! mupdf-x11 $(echo % \| sed 's/tex$/pdf') $ disown<CR>
