vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = { version = 'LuaJIT' },
            workspace = {
                checkThirdParty = false,
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
})

vim.lsp.enable({
    "lua_ls",
    "ts_ls",
    "svelte",
    "pyright",
    "tailwindcss",
    "sqls",
    "clangd",
    "cds_lsp",
    "texlab"
})

vim.lsp.config('ts_ls', {
    init_options = {
        preferences = {
            disableSuggestions = false,
        },
    },
    settings = {
        typescript = {
            tsserver = {
                experimental = {
                    enableProjectDiagnostics = false,
                },
            },
        },
    },
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
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
        },
    },
})
