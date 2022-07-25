local function get_root()
  local language_tree = vim.treesitter.get_parser(vim.fn.bufnr(), 'ruby')
  local syntax_tree = language_tree:parse()
  local root = syntax_tree[1]:root()

  return root
end

return get_root
