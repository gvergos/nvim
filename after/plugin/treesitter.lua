local treesitter = require("nvim-treesitter.configs")

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.cds = {
    install_info = {
        url = "https://github.com/cap-js-community/tree-sitter-cds.git",
        branch = "main",
        files = { "src/parser.c", "src/scanner.c" },
    },
    filetype = "cds",
}

treesitter.setup({
    ensure_installed = { "lua", "vim", "vimdoc", "cds" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
})
