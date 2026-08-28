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

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "gruber-darker",
    callback = function()
        local hl = function(g, o) vim.api.nvim_set_hl(0, g, o) end

        ---------------------------------------------------------------- palette
        local fg        = "#f5f5f5"  -- fg+2
        local fg1       = "#f4f4ff"  -- fg+1
        local niagara   = "#96a6c8"
        local quartz    = "#95a99f"
        local wisteria  = "#9e95c7"
        local yellow    = "#ffdd33"
        local yellow_d  = "#BFAC3D"  -- dimmed keyword yellow
        local green     = "#5CA12B"
        local brown     = "#cc8c3c"

        ------------------------------------------------------------ base groups
        hl("Normal",     { fg = fg, bg = "#181818" })
        hl("String",     { fg = green })
        hl("Type",       { fg = quartz })
        hl("Function",   { fg = yellow })
        hl("Keyword",    { fg = yellow_d, bold = false })
        hl("Constant",   { fg = wisteria })
        hl("Comment",    { fg = quartz, italic = false })
        hl("Identifier", { fg = niagara })
        hl("Delimiter",  { fg = fg })
        hl("Operator",   { fg = fg })

        --------------------------------------------------- keyword subcaptures
        -- instanceof, typeof, return, import, ...
        for _, k in ipairs({
            "operator", "function", "return", "conditional",
            "repeat", "import", "export", "exception", "type",
        }) do
            hl("@keyword." .. k, { link = "Keyword" })
        end

        ------------------------------------------- clear language-specific tails

        local langs = { "javascript", "typescript", "lua", "go", "cds" }
        for _, lang in ipairs(langs) do
            for name in pairs(vim.api.nvim_get_hl(0, {})) do
                local base = name:match("^(@.+)%." .. lang .. "$")
                if base then
                    vim.api.nvim_set_hl(0, name, { link = base })
                end
            end
        end

        ------------------------------------------------------ treesitter colors
        hl("@variable",           { fg = fg })       -- was niagara — too broad in CDS
        hl("@variable.parameter", { fg = niagara })
        hl("@variable.member",    { fg = niagara })
        hl("@property",           { fg = niagara })

        -- CDS-specific, set directly (no fallback involved)
        hl("@variable.cds",        { fg = fg })
        hl("@variable.member.cds", { fg = niagara })

        hl("@type",            { link = "Type" })     -- types.SmallString
        hl("@type.definition", { fg = fg1 })          -- entity ClassObjects
        hl("@type.builtin",    { link = "Type" })

        hl("@string",   { link = "String" })
        hl("@function", { link = "Function" })
        hl("@keyword",  { link = "Keyword" })
        hl("@constant", { link = "Constant" })
        hl("@number",   { link = "Constant" })
        hl("@boolean",  { link = "Constant" })
        hl("@comment",  { link = "Comment" })
        hl("@attribute", { fg = wisteria })           -- @path, @readonly

        hl("@punctuation.bracket",   { fg = fg })
        hl("@punctuation.delimiter", { fg = fg })
        hl("@operator",              { fg = fg })

        ----------------------------------------------------------------- ui bits
        hl("LineNr",       { fg = "#757575" })
        hl("CursorLineNr", { fg = yellow })
    end,
})
