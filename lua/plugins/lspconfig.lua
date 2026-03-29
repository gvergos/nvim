local setup = function()
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references)
    vim.keymap.set('n', 'er', vim.diagnostic.open_float)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover)
    vim.keymap.set('n', 'ca', vim.lsp.buf.code_action)
end

return {
    'neovim/nvim-lspconfig',
    config = function()
        setup()
    end
}
