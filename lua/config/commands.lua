vim.api.nvim_create_autocmd(
    "BufWinEnter",
    { pattern = "*.cds", command = "set ft=cds" }
)

vim.api.nvim_create_autocmd(
    "BufWinEnter",
    { pattern = "*.ejs", command = "set ft=html" }
)

vim.api.nvim_create_autocmd(
    "BufWinEnter",
    { pattern = "*.hdiconfig", command = "set ft=json" }
)

vim.api.nvim_create_autocmd(
    "BufWinEnter",
    { pattern = "*.hdbtable", command = "set ft=sql" }
)

local formatJSON = function ()
    local start_line = vim.fn.line("'<")
    local end_line = vim.fn.line("'>")
    vim.cmd(string.format("%d,%d!jq .", start_line, end_line))
end

vim.api.nvim_create_user_command(
    "FormatJSON",
    formatJSON,
    { nargs = 0 }
)
