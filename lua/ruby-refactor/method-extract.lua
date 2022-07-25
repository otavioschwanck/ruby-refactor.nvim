local get_root = require('ruby-refactor.tree-sitter')

local function extract()
end

vim.keymap.set('v', 'a', extract, {})
vim.keymap.set('n', 'gb', ":luafile %<CR>", {})

return extract
