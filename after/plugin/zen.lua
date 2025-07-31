require("zen-mode").setup {
    window = {
        width = 90,
        options = {
            number = false,
            relativenumber = true,
        }
    },
}

vim.keymap.set("n", "<leader>zz", function()
    require("zen-mode").toggle()
    vim.wo.wrap = false
end)
