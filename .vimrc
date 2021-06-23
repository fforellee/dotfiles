" ~J~o~r~m~u~n~g~a~n~d~r~

 " Nota sobre o meu atual setup do vim, eu vou descrever alguns dos processos
 " importantes para rodar plugins essenciais pra mim,
 " para fazer algusn dos autocomplete funcionar eu preciso compilar o vim eu mesmo
 " para compilar o vim manualmente e necessario clonar o repositorio
 " No momento so me falta o autocompletar, para assim finalmente tero setup
 " ideal parte 1 do meu vimrc, foram alguns meses de preparacao e pratica,
 " finalmente consegui me integrar com o vim.
 " git clone https://github.com/vim/vim

"Scripts de instalacao do vim plug
"windows iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
"Linux curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vimsyntax on

"Scripts vundle

"preferencias 

set wrap
colorscheme black_angus
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
set termguicolors
highlight ColorColumn ctermbg=0 guibg=lightgrey

"leader key
"
let mapleader ="\<Tab>"

call plug#begin('~/.vim/plugged')
    Plug 'ap/vim-css-color'
    Plug 'iamcco/markdown-preview.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-commentary'
    Plug 'VundleVim/Vundle.vim'
    Plug 'neoclide/coc.nvim',{'branch':'release'}
    Plug 'honza/vim-snippets'
" Syntax highlighter
    Plug 'uiiaoo/java-syntax.vim'
call plug#end()

call vundle#begin()
    Plugin 'iamcco/markdown-preview.vim'
    Plugin 'ycm-core/YouCompleteMe'
call vundle#end()



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

" Keybings
"
"Vim keybings
"
"
"Vim hex 
noremap <leader>h :%!xxd <CR><CR>
noremap <leader>H :%!xxd -r <CR><CR>
noremap <leader>bh :%!xxd -b <CR><CR>
"Vim registers
noremap <leader>vr :reg <CR>
"Vim marks
noremap <leader>vm :marks <CR>
"Vim colorschemes
noremap <leader>C :colorscheme 
"Vim live-preview
noremap <leader>vl :!live-server $(pwd) & <CR><CR>
" End of Vim keybingins
"
"
" Python keybings
nnoremap <leader>p : !python % <CR>
" End of Python keybings
"
"
"Fugitive
nnoremap <leader>gc : Git commit -m "
nnoremap <leader>ga : Git add .      <CR>
nnoremap <leader>gs : Git status     <CR>
nnoremap <leader>gp : Git push 
"
"
"Latex config
map <leader>\ :! pdflatex %<CR><CR>
" map <leader>z :! pdflatex %<CR><CR>
"
"
"
"Nerd tree config
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
