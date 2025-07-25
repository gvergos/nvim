local lspconfig = require('lspconfig')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.clangd.setup{}
lspconfig.cds_lsp.setup{}
lspconfig.ts_ls.setup{}
lspconfig.lua_ls.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.prismals.setup{}
lspconfig.svelte.setup {}
lspconfig.emmet_ls.setup{
    filetypes = { "html", "typescriptreact", "typescript", "javascriptreact", "templ", "svelte" },
}
lspconfig.gopls.setup{}
lspconfig.templ.setup{}
lspconfig.htmx.setup{}
lspconfig.tailwindcss.setup{
    capabilities = capabilities,
    filetypes = { "html", "typescriptreact", "typescript", "javascriptreact", "templ", "svelte" },
}
lspconfig.cssls.setup{ capabilities = capabilities }
lspconfig.pyright.setup {}
lspconfig.texlab.setup {}

vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
vim.keymap.set('n', 'er', vim.diagnostic.open_float)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)

local configs = require("lspconfig.configs")
if not configs.cds_lsp then
    configs.cds_lsp = {
        default_config = {
            cmd = {
                -- Since we installed cds-lsp globally, we can refer to it using this command
                vim.fn.expand("cds-lsp"),
                -- And then remembering to kindly ask it to be ready for some sweet stdio communication
                "--stdio",
            },
            -- Also remember to tell it which files it actually works with!
            filetypes = { "cds" },
            root_dir = lspconfig.util.root_pattern(".git", "package.json"),
            settings = {},
        },
    }
end
