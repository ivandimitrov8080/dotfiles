local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

map('n', '<C-t>', ':lua require("FTerm").toggle()<CR>')
map('i', '<C-x><C-o>', '<Cmd>lua require("cmp").complete()<CR>')

