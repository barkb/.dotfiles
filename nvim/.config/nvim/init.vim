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
" COC extenstions to install
" coc-json
" coc-julia
" coc-rls
" coc-sourcekit
" coc-tsserver
" coc-vimlsp

"Vim Transparent
Plug 'xiyaowong/nvim-transparent'

"Telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'sharkdp/fd'
Plug 'nvim-treesitter/nvim-treesitter'
call plug#end()

colorscheme onehalfdark 
set background=dark
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

" Telescope remaps
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"config for MacVim
set guifont=MesloLGS\ NF:h12
set guicursor=a:block-Cursor/blinkwait700-blinkon400-blinkoff400
