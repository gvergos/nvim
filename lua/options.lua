-- Vim options
vim.g.mapleader = ' '
--vim.wo.colorcolumn = '80'
vim.bo.filetype = 'lua'
vim.g.syntax = true
vim.cmd[[
    set mouse=a
    set exrc
    set encoding=UTF-8
    set fenc=utf-8
    set guicursor=
    set nu
    set nohlsearch
    set hidden
    set nowrap
    set smartcase
    set noswapfile
    set statusline=
    set nobackup
    set undodir=~/.vim/undodir
    set undofile
    set incsearch
    set scrolloff=10
    set noshowmode
    set signcolumn=yes
    set spelllang=en_us,el
    set spell
    set nofoldenable    " disable folding
    set cursorline
    set cursorlineopt=number
    set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz
]]

local set = vim.opt
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.smartindent = true
set.autoindent = true
set.cursorline = false
set.autowrite = true
set.relativenumber = true
set.cursorlineopt = "number"
set.scrolloff = 10
set.termguicolors = true

vim.g.nvim_markdown_previe_theme = "solarized-light"
vim.g.nvim_markdown_preview_format = 'markdown'
vim.cmd[[ 
    autocmd FileType markdown MarkdownPreview
]]

