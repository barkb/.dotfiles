"===NVIM CONFIGURATION===
"===NVim settings
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
call plug#begin('~/.config/nvim/plugged')
" VimWiki install
Plug 'vimwiki/vimwiki'

"  Themes
Plug 'rafi/awesome-vim-colorschemes'

" Easier markdown usage
Plug 'plasticboy/vim-markdown'

"Easy Motion
Plug 'easymotion/vim-easymotion'

" CoC
Plug 'neoclide/coc.nvim'

call plug#end()

colorscheme gruvbox 
set background=dark
set termguicolors
hi LineNr ctermbg=NONE guibg=NONE

"===VimWiki Config
let g:vimwiki_list = [{'path':'~/vimwiki', 'syntax':'markdown', 'ext':'.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Makes vimwiki markdown links as [text](text.md) instead of [text](text)
let g:vimwiki_markdown_link_ext=1

let g:markdown_folding=1

"config for MacVim
set guifont=MesloLGS\ NF:h12
set guicursor=a:block-Cursor/blinkwait700-blinkon400-blinkoff400
