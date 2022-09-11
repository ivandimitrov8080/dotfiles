return require('packer').startup({
    function(use)
        ---------------------
        -- Package Manager --
        ---------------------
        use('wbthomason/packer.nvim')

        ----------------------
        -- Required plugins --
        ----------------------

        use('nvim-lua/plenary.nvim')

        -----------------------------------
        -- Treesitter: Better Highlights --
        -----------------------------------

        use({
            {
                'nvim-treesitter/nvim-treesitter',
                event = 'CursorHold',
                run = ':TSUpdate',
                config = function()
                    require('ivand.plugins.treesitter')
                end
            }, {'nvim-treesitter/playground', after = 'nvim-treesitter'},
            {
                'nvim-treesitter/nvim-treesitter-textobjects',
                after = 'nvim-treesitter'
            },
            {
                'nvim-treesitter/nvim-treesitter-refactor',
                after = 'nvim-treesitter'
            }, {'windwp/nvim-ts-autotag', after = 'nvim-treesitter'},
            {
                'JoosepAlviste/nvim-ts-context-commentstring',
                after = 'nvim-treesitter'
            }
        })

        --------------------------
        -- Editor UI Niceties --
        --------------------------

        use {
            'nvim-lualine/lualine.nvim',
            requires = {
                'kyazdani42/nvim-web-devicons', {
                    'RRethy/nvim-base16',
                    config = function()
                        require('ivand.plugins.base-16')
                    end
                }
            }
        }

        ---------------------------------
        -- Navigation and Fuzzy Search --
        ---------------------------------

        use({
            'kyazdani42/nvim-tree.lua',
            config = function() require('ivand.plugins.nvim-tree') end
        })

        use({
            {
                'nvim-telescope/telescope.nvim',
                event = 'CursorHold',
                config = function()
                    require('ivand.plugins.telescope')
                end
            }, {
                'nvim-telescope/telescope-fzf-native.nvim',
                after = 'telescope.nvim',
                run = 'make',
                config = function()
                    require('telescope').load_extension('fzf')
                end
            },
            {'nvim-telescope/telescope-symbols.nvim', after = 'telescope.nvim'}
        })

        -------------------------
        -- Editing to the MOON --
        -------------------------

        use({
            'tpope/vim-surround',
            event = 'BufRead',
            requires = {{'tpope/vim-repeat', event = 'BufRead'}}
        })

        use({
            'wellle/targets.vim',
            event = 'BufRead',
            config = function() require('lualine').setup() end
        })

        --------------
        -- Terminal --
        --------------

        use({'numToStr/FTerm.nvim', event = 'CursorHold'})

        -----------------------------------
        -- LSP, Completions and Snippets --
        -----------------------------------

        use({
            'neovim/nvim-lspconfig',
            event = 'BufRead',
            config = function() require('ivand.plugins.lspconfig') end,
            requires = {'hrsh7th/cmp-nvim-lsp'}
        })

        use({
            'hrsh7th/nvim-cmp',
            config = function() require('ivand.plugins.nvim-cmp') end,
            requires = {
                {
                    'L3MON4D3/LuaSnip',
                    config = function()
                        require('ivand.plugins.luasnip')
                    end,
                    requires = {
                        {'rafamadriz/friendly-snippets', event = 'CursorHold'}
                    }
                }
            },
            {'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp'},
            {'hrsh7th/cmp-path', after = 'nvim-cmp'},
            {'hrsh7th/cmp-buffer', after = 'nvim-cmp'}
        })

        use({
            'windwp/nvim-autopairs',
            event = 'InsertCharPre',
            after = 'nvim-cmp',
            config = function() require('nvim-autopairs').setup({}) end
        })

        -------------------
        -- Compatibility --
        -------------------

        --        use({
        --            'nvim-orgmode/orgmode',
        --            config = function()
        --                require('orgmode').setup()
        --            end
        --        })

    end,
    config = {
        display = {
            open_fn = function()
                return require('packer.util').float({border = 'single'})
            end
        }
    }
})
