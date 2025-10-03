vim.g.gruvbox_material_transparent_background = 1
vim.g.gruvbox_material_foreground = "mix"
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_ui_contrast = "high"
vim.g.gruvbox_material_float_style = "bright"
vim.g.gruvbox_material_statusline_style = "material"
vim.g.gruvbox_material_cursor = "auto"
vim.cmd.colorscheme("gruvbox-material")
vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
vim.api.nvim_set_hl(0, "ZenBg", { ctermbg = 0 })
vim.cmd('highlight CursorLine ctermbg=none guibg=none gui=NONE cterm=NONE')
