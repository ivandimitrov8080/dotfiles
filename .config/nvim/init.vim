set encoding=utf-8
set number
set path+=**
set wildmenu

syntax enable
filetype plugin indent on

call plug#begin()
Plug 'waycrate/swhkd-vim'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'jiangmiao/auto-pairs'
Plug 'yuezk/vim-js'
Plug 'nvim-lua/plenary.nvim'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

lua require("nvim-tree").setup()

