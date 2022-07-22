local selection_range = require('ruby-refactor.utils').visual_selection_range

local function extract()
  local selected_text = selection_range()

  -- Logic Here
end

-- Just for texting
vim.keymap.set('v', 'a', extract, {})

return extract
