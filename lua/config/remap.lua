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

-- Search terms stay in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Github Copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap('i', '<Right>', 'copilot#Accept("<CR>")', {expr=true, silent=true})

-- Don't lose yanked word in visual paste
vim.keymap.set("v", "p", "\"_dP")

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")  -- Yank line to system clipboard

-- Map <C-c> to <Esc> in insert mode
vim.keymap.set("i", "<C-v>", "<Esc>")

-- Open terminal in current directory
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Search and replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

local function check_word(from, to)
    local bufnr = vim.api.nvim_get_current_buf()
    local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)

    local one_line = ""
    for _, line in ipairs(lines) do
        one_line = one_line .. "\n" .. line
    end

    if not string.find(one_line, from) then
        repeat
            from = vim.fn.input("No such word!. Replace: ")
            to = vim.fn.input("With: ")
        until string.find(one_line, from)
        return from, to
    end
    return from, to
end

local function replace_single(from, to)
    vim.api.nvim_command(":%s/" .. from .. "/" .. to .. "/gc")
end

local function replace_word()
    local from, to = check_word(vim.fn.input("Replace: "), vim.fn.input("With: "))
    replace_single(from, to)
end

vim.keymap.set("n", "<Leader>re", replace_word)

-- Generate UUID
vim.keymap.set("n", "<Leader>uu", "<cmd>r !uuidgen<CR>")
