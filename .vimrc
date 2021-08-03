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
colorscheme fahrenheit
set hlsearch
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
highlight ColorColumn ctermbg=magenta 
call matchadd('ColorColumn','\%81v',100)
" Tabs with numbers

" noremap <leader>0 :tablast<cr>
noremap <leader>1 1gt <CR>
noremap <leader>2 2gt <CR>
noremap <leader>3 3gt <CR>
noremap <leader>4 4gt <CR>
noremap <leader>5 5gt <CR>
noremap <leader>6 6gt <CR>
noremap <leader>7 7gt <CR>
noremap <leader>8 8gt <CR>
noremap <leader>9 9gt <CR>

" Default preferences 
nnoremap n nzzzv
nnoremap N Nzzzv
" nnoremap <C-j> :cnext<CR>zzzv
nnoremap J mzJ`z
inoremap , ,<C-g>u

"leader key
let mapleader ="\<Tab>"

call plug#begin('~/.vim/plugged')
    Plug 'lilydjwg/colorizer'               "vim color highlighing
    Plug 'tpope/vim-surround'               "vim Surround text with other text
    Plug 'iamcco/markdown-preview.vim'      "Mardown preview
    Plug 'tpope/vim-fugitive'               "Vim git plugin
    Plug 'honza/vim-snippets'               "Vim git plugin
    Plug 'prabirshrestha/vim-lsp'           "Vim git plugin
    Plug 'scrooloose/nerdtree'              "Tree view of files
    Plug 'tpope/vim-commentary'             "Vim automatic commentary
    Plug 'VundleVim/Vundle.vim'             "Vim plugin manager
    Plug 'neoclide/coc.nvim',{'branch':'release'} 
    " Syntax highlighter
    Plug 'uiiaoo/java-syntax.vim'
call plug#end()

call vundle#begin()
    Plugin 'iamcco/markdown-preview.vim'
    Plugin 'ycm-core/YouCompleteMe'
call vundle#end()


"Plugin Config
"
"
"Coc config
"
"
" let g:coc_global_extension2s = [
"     'coc-snippets',
"     'coc-pairs',
"     'coc-prettier',
"     ]
"
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8
"
" TextEdit might fail if hidden is not set.
set hidden
"
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
"
" Give more space for displaying messages.
set cmdheight=2
"
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"
" End of Coc plugin config
"
" Keybings
"
"Vim keybings
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
noremap <leader>h :%!xxd <CR><CR>
noremap <leader>H :%!xxd -r <CR><CR>
noremap <leader>bh :%!xxd -b <CR><CR>
noremap <leader>ph :%!xxd -p <CR><CR>
noremap <leader><Tab> :tabedit 
noremap <leader>vr :reg <CR>
noremap <leader>vm :marks <CR>
noremap <leader>C :colorscheme 
" noremap <expr> <silent> <leader>vl system("live-server")
" Problems with running live server in a vim session, I will use tmux instead
" noremap <expr> <silent> <leader>vlc system("live-server")
noremap <leader>vv :vert term<CR>
noremap <leader>vh :term<CR>
"Plug Keybings
noremap <leader>P :PlugInstall <CR>
noremap <leader>Pc :PlugClean <CR>
"Plugin Keybings
noremap <leader>Pl :PluginInstall <CR>
noremap <leader>Plc :PluginClean <CR>
" C/C++ keybings
" noremap <leader>gcc :!gcc % -o 
noremap <leader>gcc :!gcc % -o %:r <CR>
" Python keybings
nnoremap <leader>p : !python % <CR>
"Fugitive keybings
nnoremap <leader>gc : Git commit -m "
nnoremap <leader>ga : Git add .
nnoremap <leader>gs : Git status     <CR>
nnoremap <leader>gra : Git remote add 
nnoremap <leader>gb : Git branch <CR>
" nnoremap <leader>gc : Git checkout 
nnoremap <leader>gp : Git push 
"Latex/PDF keybings
map <leader>\ :! pdflatex %<CR><CR>
noremap <expr> <silent> <leader>z system("zathura " . substitute(expand("%"), '.tex$', '.pdf', ""). " &")
noremap <expr> <silent> <leader>lz system("zathura ")
"Nerd tree keybings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Coc keybindings
nnoremap <leader>ci :CocInstall 
nnoremap <leader>cc :CocConfig <CR>
nnoremap <leader>cl :CocList <CR>
" Coc snippets
nnoremap <leader>cse :CocCommand snippets.editSnippets<CR>
nnoremap <leader>csl :CocList snippets<CR>
nnoremap <leader>csd :CocCommand snippets.openSnippetFiles<CR>

" Install missings puglins
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
