local api = require "nvim-tree.api"

local function on_my_attach(bufnr)
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end
  api.config.mappings.default_on_attach(bufnr)
end

vim.keymap.set('n', '<C-n>', function()
  require("nvim-tree.api").tree.toggle()
end, { desc = "Toggle NvimTree" })

require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = '30%',
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    on_attach = on_my_attach,
})

