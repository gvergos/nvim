local setup = function()
    require('dbee').setup({
        result = {
            focus_result = false,
        },
    })
    require('cmp-dbee').setup()

    vim.keymap.set('n', '<leader>db', function() require('dbee').toggle() end, { desc = 'Toggle DBee' })
end

return {
    'kndndrj/nvim-dbee',
    build = function()
        require('dbee').install("go")
    end,
    dependencies = {
        'MunifTanjim/nui.nvim',
    },
    config = function()
        setup()
    end,
}
