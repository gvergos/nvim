return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    -- The cds parser is registered on the `User TSUpdate` event in
    -- lua/config/commands.lua: nvim-treesitter (main) drops the parser table
    -- and re-fires that event on every install/update, so a registration made
    -- here in `config` would be wiped before :TSInstall ever reads it.
}
