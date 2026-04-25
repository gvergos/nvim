vim.api.nvim_create_autocmd(
    "BufWinEnter",
    { pattern = "*.ejs", command = "set ft=html" }
)

vim.api.nvim_create_autocmd(
    "BufWinEnter",
    { pattern = "*.hdiconfig", command = "set ft=json" }
)

local formatJSON = function ()
    local start_line = vim.fn.line("'<")
    local end_line = vim.fn.line("'>")
    vim.cmd(string.format("%d,%d!jq .", start_line, end_line))
end

vim.api.nvim_create_autocmd(
    "BufWinEnter",
    { pattern = "*.cds", command = "set ft=cds" }
)

vim.api.nvim_create_user_command(
    "FormatJSON",
    formatJSON,
    { nargs = 0 }
)

--vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    --pattern = { '*.view.xml', '*.fragment.xml', '*.controller.js' },
    --callback = function()
        --vim.lsp.start({
            --name = 'ui5_lsp',
            --cmd = { '/home/gvergos/Documents/Projects/ui5_lsp/target/debug/ui5_lsp' },
            --root_dir = vim.fs.root(0, { 'manifest.json', 'webapp', '.git' }),
        --})
    --end,
--})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'cds',
    callback = function()
        vim.treesitter.start()
    end,
})

vim.api.nvim_create_autocmd('User', { 
    pattern = 'TSUpdate',
    callback = function()
        require('nvim-treesitter.parsers').cds = {
            install_info = {
                url = 'https://github.com/cap-js-community/tree-sitter-cds.git',
                queries = 'queries/neovim', -- also install queries from given directory
            },
        }
    end
})
