-- Vanilla Config
require('ivand.settings')
require('ivand.plugins')
require('ivand.keybinds')

---Pretty print lua table
function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, {...})
    print(unpack(objects))
end
