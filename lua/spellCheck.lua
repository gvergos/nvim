vim.cmd[[ 
    "highlight SpellBad ctermfg=009 ctermbg=011 guifg=#867A7A guibg=none gui=underline
    "hi SpellBad cterm=NONE gui=underline
    hi clear SpellBad
    hi SpellBad cterm=bold

    " Enable highlighting of CUDA kernel calls
    let g:cuda_kernel_highlight = 1
    " Highlight keywords from CUDA Runtime API
    let g:cuda_runtime_api_highlight = 1
    " Highlight keywords from CUDA Driver API
    let g:cuda_driver_api_highlight = 1
    " Highlight keywords from CUDA Thrust library
    let g:cuda_thrust_highlight = 1
]]
