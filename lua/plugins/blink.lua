return {
    { "L3MON4D3/LuaSnip", keys = {} },
    {
        "saghen/blink.cmp",
        dependencies = {
            "rafamadriz/friendly-snippets",
        },
        version = "*",
        build = 'cargo build --release',
        opts = {
            keymap = {
                preset = 'none',
                ['<S-Tab>'] = { 'select_prev', 'fallback' },
                ['<Tab>'] = { 'select_next', 'fallback' },
                ['<Return>'] = { 'select_and_accept', 'fallback' },
            },

            appearance = {
                nerd_font_variant = 'normal',
            },
            completion = {
                menu = {
                    enabled = true,
                    winhighlight = 'Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None',
                },
                list = { selection = { preselect = true, auto_insert = true }},
                trigger = { show_on_trigger_character = true },
                documentation = { auto_show = true }
            },
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },
            fuzzy = { implementation = "prefer_rust_with_warning" }
        }
    },
}
