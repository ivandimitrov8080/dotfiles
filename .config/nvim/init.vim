set encoding=utf-8
set number
set path+=**
set wildmenu

syntax enable
filetype plugin indent on

let g:vimtex_view_method = 'mupdf'

call plug#begin()
Plug 'baskerville/vim-sxhkdrc'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'jiangmiao/auto-pairs'
Plug 'yuezk/vim-js'
Plug 'nvim-lua/plenary.nvim'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lervag/vimtex'

call plug#end()

lua require("nvim-tree").setup()

