local map = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Map jj to exit neovim
map('i', 'jj', '<Esc>', opts)
map('i', 'ξξ', '<Esc>', opts)

-- Telescope
map('n', '<leader>ft', '<cmd>Telescope<CR>', opts)                   
map('n', '<leader>p', '<cmd>Telescope find_files<CR>', opts)
map('n', '<leader>ff', '<cmd>Telescope current_buffer_fuzzy_find<CR>', opts)

-- Splits
map('n', '<Leader>vs', ':Vex!<CR>', opts)
map('n', '<Leader>hs', ':Sex<CR>', opts)

-- Changing windows
map('n', '<c-j>', '<c-w>j', opts)
map('n', '<c-k>', '<c-w>k', opts)
map('n', '<c-h>', '<c-w>h', opts)
map('n', '<c-l>', '<c-w>l', opts)

-- Spelling Correction
map('n', '<Leader>sp', ':normal! mm[s1z=`m<CR>', opts)
map('n', '<Leader>σπ', ':normal! mm[s1z=`m<CR>', opts)

-- Window Resize
map('n', '<Leader>=', ':vertical resize +10<CR>', opts)
map('n', '<Leader>-', ':vertical resize -10<CR>', opts)



