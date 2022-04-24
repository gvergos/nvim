require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  --ensure_installed = "maintained",

  -- Install languages synchronously (only applied to `ensure_installed`)
  --sync_install = false,

  -- List of parsers to ignore installing
  --ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    additional_vim_regex_highlighting = false,
  },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
}


require'nvim-treesitter.configs'.setup {
    -- install language parser
    -- :TSInstallInfo Command to view supported languages
    --ensure_installed = {"html", "css", "vim", "lua", "javascript", "typescript", "tsx"},
    -- Enable code highlighting
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    -- Enable incremental selection
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<CR>',
            node_incremental = '<CR>',
            node_decremental = '<BS>',
            scope_incremental = '<TAB>',
        }
    },

    textobjects = { enable = true },

    -- Enable based on Treesitter Code formatting for (=) . NOTE: This is an experimental feature.
    indent = {
        enable = true
    }
}
