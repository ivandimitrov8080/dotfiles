set encoding=utf-8
set number
set path+=**
set wildmenu

call plug#begin()
Plug 'ap/vim-css-color'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'neoclide/coc.nvim', {'branch:': 'master', 'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier' ]
Plug 'jiangmiao/auto-pairs'
Plug 'yuezk/vim-js'
Plug 'nvim-lua/plenary.nvim'

call plug#end()

