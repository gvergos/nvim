vim.g.mapleader = " "
vim.g.syntax = true
vim.g.indent = true

vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wrap = false

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.g.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true   -- Enable colors in terminal

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"     -- Always show sign column

vim.opt.updatetime = 50

vim.opt.mouse = "a"            -- Enable mouse mode

vim.opt.ignorecase = true      -- Case insensitive searching unless /C or capital in search

vim.opt.showmatch = true       -- highlight matching brackets

vim.opt.list = false -- show space and tabs chars
vim.opt.listchars = "tab:▸·,trail:×,nbsp:⎵"  -- make tab, etc visible

vim.opt.clipboard = "unnamedplus" -- Access system clipboard

vim.opt.fillchars = { eob = ' ' }

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.laststatus=3

vim.opt.spell = true

-- Note: Move spl file to .local/share/nvim/site/spell
vim.opt.spelllang = { "en_us","el2" }
vim.opt.cursorline = true      -- show cursor line

-- Background
vim.o.background = "dark"

vim.cmd[[
set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz
]]

--vim.opt.foldenable = false
--vim.opt.breakindent = true     -- Enable break indent
--vim.opt.showmode = false       -- Do not need to show the mode. We use the statusline instead.
--vim.opt.completeopt= "menu,menuone,noselect"
