-- Avoid going crazy
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "ξξ", "<Esc>")

-- Move highlighted parts
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Open nvim config
vim.keymap.set("n", "<Leader>rc", "<cmd>e ~/.config/nvim<CR>")

-- Moving through windows
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")

-- Spell correction
vim.keymap.set("n", "<Leader>sp", "<cmd>normal! mm[s1z=`m<CR>]")
vim.keymap.set("n", "<Leader>σπ", "<cmd>normal! mm[s1z=`m<CR>]")

-- Splits
vim.keymap.set("n", "<Leader>vs", "<cmd>Vex<CR>")
vim.keymap.set("n", "<Leader>hs", "<cmd>Sex<CR>")

-- Resize
vim.keymap.set("n", "<Leader>=", "<cmd>vertical resize +10<CR>")
vim.keymap.set("n", "<Leader>-", "<cmd>vertical resize -10<CR>")
vim.keymap.set("n", "<Leader>r=", "<cmd>resize +5<CR>")
vim.keymap.set("n", "<Leader>r-", "<cmd>resize -5<CR>")

-- Better view
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Github Copilot
vim.api.nvim_set_keymap('i', '<Right>', 'copilot#Accept("<CR>")', {expr=true, silent=true})
