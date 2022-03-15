local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Easy switch to normal mode
map("i", "jj", "<Esc>", opts)
map("i", "ξξ", "<Esc>", opts)

-- Opening nvim configuration
map("n", "<Leader>rc", ":e ~/.config/nvim<CR>", opts)

-- Window navigation
map("n", "<C-j>", "<C-W><C-j>", opts)
map("n", "<C-k>", "<C-W><C-k>", opts)
map("n", "<C-h>", "<C-W><C-h>", opts)
map("n", "<C-l>", "<C-W><C-l>", opts)

-- Spelling autocorrect
map("n", "<Leader>sp", ":normal! mm[s1z=`m<CR>]", opts)
map("n", "<Leader>σπ", ":normal! mm[s1z=`m<CR>]", opts)

-- Window spliting
map("n", "<Leader>vs", ":Vex!<CR>", opts)
map("n", "<Leader>hs", ":Sex<CR>", opts)

-- Window resize
map("n", "<Leader>=", ":vertical resize +10<CR>", opts)
map("n", "<Leader>-", ":vertical resize -10<CR>", opts)

map("n", "<Leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<Leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<Leader>fb", "<cmd>Telescope buffers<CR>", opts)
map("n", "<Leader>fh", "<cmd>Telescope help_tags<CR>", opts)

-- LSP
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
