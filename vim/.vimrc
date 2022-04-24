"===VIM CONFIGURATION===
"===Vim settings
syntax on
filetype plugin on

set nocompatible
set number
set expandtab
set smartindent
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set noswapfile
set incsearch

"===General Mappings
"Shortens split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"===PLUGINS
call plug#begin()
" VimWiki install
Plug 'vimwiki/vimwiki'

"  Themes
Plug 'rafi/awesome-vim-colorschemes'

" Easier markdown usage
Plug 'plasticboy/vim-markdown'

" NERDTree & NERDTree-git & vim-devicons
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' |
            \ Plug 'https://github.com/PhilRunninger/nerdtree-visual-selection.git'

"Easy Motion
Plug 'easymotion/vim-easymotion'

"coc-nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"coc-json
Plug 'neoclide/coc-json'

"coc-tabnine
Plug 'neoclide/coc-tabnine'

call plug#end()

colorscheme space-vim-dark 
set background=dark
set termguicolors
hi LineNr ctermbg=NONE guibg=NONE

"===NERDTree Config
let g:NERDTreeWinSize=35

nmap <C-f> :NERDTreeToggle<CR>

" Auto-Open NT
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NT, put it in the other window and bring
" back NT
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

let NERDTreeShowHidden=1

"===VimWiki Config
let g:vimwiki_list = [{'path':'~/vimwiki', 'syntax':'markdown', 'ext':'.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Makes vimwiki markdown links as [text](text.md) instead of [text](text)
let g:vimwiki_markdown_link_ext=1

let g:markdown_folding=1

"config for MacVim
set guifont=MesloLGS\ NF:h12
set guicursor=a:block-Cursor/blinkwait700-blinkon400-blinkoff400


"Source other files once everything else is set up
source ~/.coc.vimrc
