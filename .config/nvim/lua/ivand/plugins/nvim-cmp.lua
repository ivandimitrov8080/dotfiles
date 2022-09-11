local cmp = require('cmp')

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-y>'] = cmp.mapping.confirm({select = true}),
        ['<C-Space>'] = cmp.mapping.complete()
    }),
    sources = {
        {name = 'nvim_lsp', max_item_count = 10},
        {name = 'luasnip', max_item_count = 10},
        {name = 'path', max_item_count = 10},
        {name = 'buffer', max_item_count = 10}
    },
    window = {completion = cmp.config.window.bordered()},
    snippet = {
        expand = function(args) require('luasnip').lsp_expand(args.body) end
    },
    completion = {keyword_length = 2, autocomplete = true}
})

vim.o.completeopt = 'menuone,noselect'
