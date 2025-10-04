vim.lsp.enable({
    "lua_ls",
    "ts_ls",
    "cds_lsp",
    "pyright",
    "clangd",
    "rust_analyzer",
    "sqlls",
    "asm_lsp",
    "jsonls"
})

vim.diagnostic.config({
    virtual_lines = false,
    underline = false,
    update_in_insert = false,
    severity_sort = false,
    float = {
        border = "none",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})
