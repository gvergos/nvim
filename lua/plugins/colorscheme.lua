--local setup = function()
    --require("gruvbox").setup({
        --terminal_colors = true, -- add neovim terminal colors
        --undercurl = false,
        --underline = true,
        --bold = false,
        --italic = {
            --strings = false,
            --emphasis = true,
            --comments = true,
            --operators = false,
            --folds = true,
        --},
        --overrides = {
            --String   = { fg = "#8AB884" },
            --Function = { fg = "#B8AE84" },
            --Keyword  = { fg = "#BF8654" }
        --},
        --strikethrough = true,
        --invert_selection = false,
        --invert_signs = false,
        --invert_tabline = false,
        --inverse = true, -- invert background for search, diffs, statuslines and errors
        --contrast = "", -- can be "hard", "soft" or empty string
        --palette_overrides = {},
        --dim_inactive = false,
        --transparent_mode = true,
    --})
    --vim.cmd("colorscheme gruvbox")
    --vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none" })
    --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    --vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
    --vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
    --vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
    --vim.api.nvim_set_hl(0, "ZenBg", { ctermbg = 0 })
    --vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
    --vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
    --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    --vim.api.nvim_set_hl(0, 'LineNr', { fg = '#888888' })
    --vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ffffff' })
    --vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'NONE' })
--end

--return  {
    --"ellisonleao/gruvbox.nvim",
    --priority = 1000 , 
    --config = function() 
        --setup()
    --end
--}

--local setup = function ()
    --vim.cmd("colorscheme everforest")
    --vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none" })
    --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    --vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
    --vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
    --vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
    --vim.api.nvim_set_hl(0, "ZenBg", { ctermbg = 0 })
    --vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
    --vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
    --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    --vim.api.nvim_set_hl(0, 'LineNr', { fg = '#888888' })
    --vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ffffff' })
    --vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'NONE' })
--end

--return {
    --"neanias/everforest-nvim",
    --version = false,
    --lazy = false,
    --priority = 1000, -- make sure to load this before all the other start plugins
    ---- Optional; default configuration will be used if setup isn't called.
    --config = function()
        --setup()
    --end
--}

return {
    "blazkowolf/gruber-darker.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        bold = false,
        italic = {
            strings = false,
        }
    },
    config = function()
        local Color = require("gruber-darker.color")
        local p = require("gruber-darker.palette")
        p.fg = Color.new(0xe4e4ef)
        p.green = Color.new(0x73c936)
        p.yellow = Color.new(0xd9bb33)
        vim.cmd.colorscheme("gruber-darker")
        vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
        vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "ZenBg", { ctermbg = 0 })
        vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
        vim.api.nvim_set_hl(0, 'LineNr', { fg = '#888888' })
        vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ffffff' })
        vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'NONE' })
        vim.api.nvim_set_hl(0, "SpellBad",   { underline = true, sp = "#e67e80" })
        vim.api.nvim_set_hl(0, "SpellCap",   { underline = true, sp = "#7fbbb3" })
        vim.api.nvim_set_hl(0, "SpellRare",  { underline = true, sp = "#d699b6" })
        vim.api.nvim_set_hl(0, "SpellLocal", { underline = true, sp = "#83c092" })
        -- Color functions with a slightly blue-gray tone
        local func_color = "#96a6c8"
        vim.api.nvim_set_hl(0, "Function", { fg = func_color })
        vim.api.nvim_set_hl(0, "@function", { fg = func_color })
        vim.api.nvim_set_hl(0, "@function.call", { fg = func_color })
        vim.api.nvim_set_hl(0, "@function.method", { fg = func_color })
        vim.api.nvim_set_hl(0, "@function.method.call", { fg = func_color })
        vim.api.nvim_set_hl(0, "@function.builtin", { fg = func_color })
        vim.api.nvim_set_hl(0, "@lsp.type.function", { fg = func_color })
        vim.api.nvim_set_hl(0, "@lsp.type.method", { fg = func_color })
    end,
}


