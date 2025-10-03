vim.api.nvim_create_autocmd(
    "BufWinEnter",
    { pattern = "*.cds", command = "set ft=cds" }
)

vim.api.nvim_create_autocmd(
    "BufWinEnter",
    { pattern = "*.ejs", command = "set ft=html" }
)
