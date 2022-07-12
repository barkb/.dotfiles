"===NVIM CONFIGURATION===
"===NVim settings
syntax on
filetype plugin on

set nocompatible
set relativenumber
set expandtab
set smartindent
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set scrolloff=8
set signcolumn=yes
set incsearch


"===General Mappings
let mapleader = ' '
"Shortens split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Source init.vim
noremap <leader>sv :source $MYVIMRC<CR>
"===PLUGINS
call plug#begin('~/.config/nvim/plugged')
" VimWiki install
Plug 'vimwiki/vimwiki'

"  Theming
Plug 'rafi/awesome-vim-colorschemes'
Plug 'xiyaowong/nvim-transparent'

" Easier markdown usage
Plug 'plasticboy/vim-markdown'

"Easy Motion
Plug 'easymotion/vim-easymotion'

" CoC
Plug 'neoclide/coc.nvim'
" COC extenstions to install
" coc-json
" coc-julia
" coc-rls
" coc-sourcekit
" coc-tsserver
" coc-vimlsp

Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

"Vim Transparent
Plug 'xiyaowong/nvim-transparent'
call plug#end()

"Theming config
colorscheme molokai 
set termguicolors
hi LineNr ctermbg=NONE guibg=NONE

"Set transparency
let g:transparent_enabled = v:true

"===VimWiki Config
let g:vimwiki_list = [{'path':'~/vimwiki', 'syntax':'markdown', 'ext':'.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Makes vimwiki markdown links as [text](text.md) instead of [text](text)
let g:vimwiki_markdown_link_ext=1

let g:markdown_folding=1

" Ranger config
let g:rnvimr_enable_ex = 1
let g:rnvimr_border_attr = {'fg': 1, 'bg': -1}
let g:rnvimr_enable_picker = 1
highlight link RnvimrNormal CursorLine
nmap <leader>o :RnvimrToggle<CR>

"config for MacVim
set guifont=MesloLGS\ NF:h12
set guicursor=a:block-Cursor/blinkwait700-blinkon400-blinkoff400
