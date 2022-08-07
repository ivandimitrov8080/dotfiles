set encoding=utf-8
set number
set path+=**
set wildmenu

syntax enable
filetype plugin indent on

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

" Configuration

" Vimtex
let g:vimtex_view_method = 'mupdf'

" Firenvim

let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'always',
        \ },
    \ }
\ }

let fc = g:firenvim_config['localSettings']
let fc['https?://[^/]*facebook.com/*'] = { 'takeover': 'never', 'priority': 1 }

" coc

hi CocInfoFloat guifg=white guibg=black
hi CocErrorFloat guifg=white guibg=black
hi CocWarningFloat guifg=white guibg=black
hi CocHintFloat guifg=white guibg=black

" End Confguration

