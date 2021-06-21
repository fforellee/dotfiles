" ~J~o~r~m~u~n~g~a~n~d~r~

 " Nota sobre o meu atual setup do vim, eu vou descrevr alguns dos processos
 " importantes para rodar plugins essenciais pra mim, no momento n sei
 " utilizar o latex preview, contudo sei que para fazer algusn dos
 " autocomplete funcionar eu preciso compilar o vim eu mesmo
 " para compilar o vim manualmente e necessario clonar o repositorio
 " git clone https://github.com/vim/vim

"Scripts de instalacao do vim plug
"windows iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
"Linux curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vimsyntax on

"Scripts vundle

"preferencias 

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
"leader key
let mapleader ="\<Tab>"

"Key mapings 
nnoremap <leader>a : !python 
nnoremap <leader>/ : noh <CR>

call plug#begin('~/.vim/plugged')
    Plug 'ap/vim-css-color'
    Plug 'iamcco/markdown-preview.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-commentary'
    Plug 'VundleVim/Vundle.vim'
    Plug 'neoclide/coc.nvim',{'branch':'release'}
    Plug 'honza/vim-snippets'
" Syntax highlighter
    Plug 'uiiaoo/java-syntax.vim'
    Plug 'JuliaEditorSupport/julia-vim'
call plug#end()

call vundle#begin()
    Plugin 'iamcco/markdown-preview.vim'
    Plugin 'ycm-core/YouCompleteMe'
call vundle#end()


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

map <leader>\ :! pdflatex %<CR><CR>

"Vim coc config
"
" Para utilizar o coc e necessario instalar o nodejs, eu 
" prefiri utilizar o coc em vez de outros plugins porque 
" e mais facil de configurar 
"
" let g:coc_global_extension2s = [
"     'coc-snippets',
"     'coc-pairs',
"     'coc-prettier',
"     ]
" Install plugins on startup

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

"Vim hex 
map <leader>h :%!xxd <CR><CR>
map <leader>H :%!xxd -r <CR><CR>
