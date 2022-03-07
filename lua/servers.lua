local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local servers = { 'pyright', 'rust_analyzer', 'tsserver', 'clangd' , 'jdtls', 'html', 'arduino_language_server'}

for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        capabilities = capabilities
    }
end
