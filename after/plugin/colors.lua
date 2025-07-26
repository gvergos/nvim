function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd(string.format('colorscheme %s', color))
    vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
    vim.api.nvim_set_hl(0, "ZenBg", { ctermbg = 0 })
    vim.cmd('highlight CursorLine ctermbg=none guibg=none gui=NONE cterm=NONE')
end

ColorMyPencils('melange')
