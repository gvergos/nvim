-- Colorschemes
vim.o.background = "dark"
vim.cmd[[
    colorscheme gruvbox
    highlight! link SignColumn LineNr
    highlight Normal guibg=none
    hi Visual  guifg=none guibg=#424748 gui=none
    hi LineNr guifg=gray gui=none
    hi CursorLineNr guifg=#0FACD2 guibg=none gui=none

    hi clear SpellBad guifg=none cterm=bold guibg=none gui=bold
    hi SpellRare guifg=none cterm=bold guibg=none gui=bold
    hi SpellCap guifg=none cterm=bold guibg=none gui=bold

    let g:airline#extensions#tabline#enabled=1
    let g:airline#extensions#tabline#left_sep=' '
    let g:airline#extensions#tabline#left_alt_sep='|'
    let g:airline#extensions#tabline#formatter='default'
    let g:airline_theme='deus'
]]
