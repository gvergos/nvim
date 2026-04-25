return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local parsers = require('nvim-treesitter.parsers')
        parsers.cds = {
            install_info = {
                url = 'https://github.com/cap-js-community/tree-sitter-cds.git',
                files = { 'src/parser.c' },
                branch = 'main',
            },
            filetype = 'cds',
        }
    end
}
