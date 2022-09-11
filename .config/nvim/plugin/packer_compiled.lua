-- Automatically generated packer.nvim plugin loader code
if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
    vim.api.nvim_command(
        'echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
    return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

    _G._packer = _G._packer or {}
    _G._packer.inside_compile = true

    local time
    local profile_info
    local should_profile = false
    if should_profile then
        local hrtime = vim.loop.hrtime
        profile_info = {}
        time = function(chunk, start)
            if start then
                profile_info[chunk] = hrtime()
            else
                profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
            end
        end
    else
        time = function(chunk, start) end
    end

    local function save_profiles(threshold)
        local sorted_times = {}
        for chunk_name, time_taken in pairs(profile_info) do
            sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
        end
        table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
        local results = {}
        for i, elem in ipairs(sorted_times) do
            if not threshold or threshold and elem[2] > threshold then
                results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
            end
        end
        if threshold then
            table.insert(results,
                         '(Only showing plugins that took longer than ' ..
                             threshold .. ' ms ' .. 'to load)')
        end

        _G._packer.profile_output = results
    end

    time([[Luarocks path setup]], true)
    local package_path_str =
        "/home/ivand/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ivand/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ivand/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ivand/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
    local install_cpath_pattern =
        "/home/ivand/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
    if not string.find(package.path, package_path_str, 1, true) then
        package.path = package.path .. ';' .. package_path_str
    end

    if not string.find(package.cpath, install_cpath_pattern, 1, true) then
        package.cpath = package.cpath .. ';' .. install_cpath_pattern
    end

    time([[Luarocks path setup]], false)
    time([[try_loadstring definition]], true)
    local function try_loadstring(s, component, name)
        local success, result = pcall(loadstring(s), name,
                                      _G.packer_plugins[name])
        if not success then
            vim.schedule(function()
                vim.api.nvim_notify(
                    'packer.nvim: Error running ' .. component .. ' for ' ..
                        name .. ': ' .. result, vim.log.levels.ERROR, {})
            end)
        end
        return result
    end

    time([[try_loadstring definition]], false)
    time([[Defining packer_plugins]], true)
    _G.packer_plugins = {
        ["FTerm.nvim"] = {
            loaded = false,
            needs_bufread = false,
            only_cond = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/FTerm.nvim",
            url = "https://github.com/numToStr/FTerm.nvim"
        },
        ["cmp-buffer"] = {
            after_files = {
                "/home/ivand/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua"
            },
            load_after = {},
            loaded = true,
            needs_bufread = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
            url = "https://github.com/hrsh7th/cmp-buffer"
        },
        ["cmp-nvim-lsp"] = {
            loaded = true,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
            url = "https://github.com/hrsh7th/cmp-nvim-lsp"
        },
        ["cmp-path"] = {
            after_files = {
                "/home/ivand/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua"
            },
            load_after = {},
            loaded = true,
            needs_bufread = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/cmp-path",
            url = "https://github.com/hrsh7th/cmp-path"
        },
        cmp_luasnip = {
            after_files = {
                "/home/ivand/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua"
            },
            load_after = {},
            loaded = true,
            needs_bufread = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
            url = "https://github.com/saadparwaiz1/cmp_luasnip"
        },
        ["lualine.nvim"] = {
            loaded = true,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/start/lualine.nvim",
            url = "https://github.com/nvim-lualine/lualine.nvim"
        },
        ["nvim-autopairs"] = {
            config = {
                "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0"
            },
            load_after = {},
            loaded = false,
            needs_bufread = false,
            only_cond = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
            url = "https://github.com/windwp/nvim-autopairs"
        },
        ["nvim-base16"] = {
            config = {
                "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26ivand.plugins.base-16\frequire\0"
            },
            loaded = true,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/start/nvim-base16",
            url = "https://github.com/RRethy/nvim-base16"
        },
        ["nvim-cmp"] = {
            loaded = true,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/start/nvim-cmp",
            url = "https://github.com/hrsh7th/nvim-cmp"
        },
        ["nvim-lspconfig"] = {
            config = {
                "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28ivand.plugins.lspconfig\frequire\0"
            },
            loaded = false,
            needs_bufread = false,
            only_cond = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
            url = "https://github.com/neovim/nvim-lspconfig"
        },
        ["nvim-tree.lua"] = {
            config = {
                "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28ivand.plugins.nvim-tree\frequire\0"
            },
            loaded = true,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
            url = "https://github.com/kyazdani42/nvim-tree.lua"
        },
        ["nvim-treesitter"] = {
            after = {
                "nvim-treesitter-refactor", "nvim-ts-autotag",
                "nvim-treesitter-textobjects", "playground",
                "nvim-ts-context-commentstring"
            },
            config = {
                "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29ivand.plugins.treesitter\frequire\0"
            },
            loaded = false,
            needs_bufread = false,
            only_cond = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
            url = "https://github.com/nvim-treesitter/nvim-treesitter"
        },
        ["nvim-treesitter-refactor"] = {
            load_after = {["nvim-treesitter"] = true},
            loaded = false,
            needs_bufread = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-refactor",
            url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
        },
        ["nvim-treesitter-textobjects"] = {
            load_after = {["nvim-treesitter"] = true},
            loaded = false,
            needs_bufread = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
            url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
        },
        ["nvim-ts-autotag"] = {
            load_after = {["nvim-treesitter"] = true},
            loaded = false,
            needs_bufread = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
            url = "https://github.com/windwp/nvim-ts-autotag"
        },
        ["nvim-ts-context-commentstring"] = {
            load_after = {["nvim-treesitter"] = true},
            loaded = false,
            needs_bufread = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring",
            url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
        },
        ["nvim-web-devicons"] = {
            loaded = true,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
            url = "https://github.com/kyazdani42/nvim-web-devicons"
        },
        ["packer.nvim"] = {
            loaded = true,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/start/packer.nvim",
            url = "https://github.com/wbthomason/packer.nvim"
        },
        playground = {
            load_after = {["nvim-treesitter"] = true},
            loaded = false,
            needs_bufread = true,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/playground",
            url = "https://github.com/nvim-treesitter/playground"
        },
        ["plenary.nvim"] = {
            loaded = true,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/start/plenary.nvim",
            url = "https://github.com/nvim-lua/plenary.nvim"
        },
        ["targets.vim"] = {
            config = {
                "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0"
            },
            loaded = false,
            needs_bufread = false,
            only_cond = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/targets.vim",
            url = "https://github.com/wellle/targets.vim"
        },
        ["telescope-fzf-native.nvim"] = {
            config = {
                "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0"
            },
            load_after = {["telescope.nvim"] = true},
            loaded = false,
            needs_bufread = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
            url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
        },
        ["telescope-symbols.nvim"] = {
            load_after = {["telescope.nvim"] = true},
            loaded = false,
            needs_bufread = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/telescope-symbols.nvim",
            url = "https://github.com/nvim-telescope/telescope-symbols.nvim"
        },
        ["telescope.nvim"] = {
            after = {"telescope-fzf-native.nvim", "telescope-symbols.nvim"},
            config = {
                "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28ivand.plugins.telescope\frequire\0"
            },
            loaded = false,
            needs_bufread = true,
            only_cond = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
            url = "https://github.com/nvim-telescope/telescope.nvim"
        },
        ["vim-repeat"] = {
            loaded = false,
            needs_bufread = false,
            only_cond = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/vim-repeat",
            url = "https://github.com/tpope/vim-repeat"
        },
        ["vim-surround"] = {
            loaded = false,
            needs_bufread = false,
            only_cond = false,
            path = "/home/ivand/.local/share/nvim/site/pack/packer/opt/vim-surround",
            url = "https://github.com/tpope/vim-surround"
        }
    }

    time([[Defining packer_plugins]], false)
    -- Config for: nvim-tree.lua
    time([[Config for nvim-tree.lua]], true)
    try_loadstring(
        "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28ivand.plugins.nvim-tree\frequire\0",
        "config", "nvim-tree.lua")
    time([[Config for nvim-tree.lua]], false)
    -- Config for: nvim-base16
    time([[Config for nvim-base16]], true)
    try_loadstring(
        "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26ivand.plugins.base-16\frequire\0",
        "config", "nvim-base16")
    time([[Config for nvim-base16]], false)
    -- Load plugins in order defined by `after`
    time([[Sequenced loading]], true)
    vim.cmd [[ packadd nvim-cmp ]]
    vim.cmd [[ packadd cmp-buffer ]]
    vim.cmd [[ packadd cmp-path ]]
    vim.cmd [[ packadd cmp_luasnip ]]
    time([[Sequenced loading]], false)
    vim.cmd [[augroup packer_load_aucmds]]
    vim.cmd [[au!]]
    -- Event lazy-loads
    time([[Defining lazy-load event autocommands]], true)
    vim.cmd [[au CursorHold * ++once lua require("packer.load")({'nvim-treesitter', 'telescope.nvim', 'FTerm.nvim'}, { event = "CursorHold *" }, _G.packer_plugins)]]
    vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'nvim-autopairs'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
    vim.cmd [[au BufRead * ++once lua require("packer.load")({'vim-surround', 'targets.vim', 'nvim-lspconfig', 'vim-repeat'}, { event = "BufRead *" }, _G.packer_plugins)]]
    time([[Defining lazy-load event autocommands]], false)
    vim.cmd("augroup END")

    _G._packer.inside_compile = false
    if _G._packer.needs_bufread == true then vim.cmd("doautocmd BufRead") end
    _G._packer.needs_bufread = false

    if should_profile then save_profiles() end

end)

if not no_errors then
    error_msg = error_msg:gsub('"', '\\"')
    vim.api.nvim_command(
        'echohl ErrorMsg | echom "Error in packer_compiled: ' .. error_msg ..
            '" | echom "Please check your config for correctness" | echohl None')
end
