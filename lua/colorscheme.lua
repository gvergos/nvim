-- Gruvbox

vim.opt.termguicolors = true
--vim.o.background = "dark" -- or "light" for light mode
vim.cmd[[
    colorscheme gruvbox
    highlight! link SignColumn LineNr
    highlight Normal guibg=none
    hi Visual  guifg=none guibg=#424748 gui=none
    hi LineNr guifg=gray gui=none
    hi CursorLineNr guifg=#0FACD2 guibg=none gui=none
]]