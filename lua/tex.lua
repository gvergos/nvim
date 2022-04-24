vim.cmd[[
    let g:tex_flavor='latex'
    let g:vimtex_compiler_progname='nvr'
    nnoremap <Insert> :AsyncRun latexmk -pvc -pdf %<CR>
    nnoremap <Del> :AsyncStop<CR>
    let g:vimtex_view_general_viewer = 'zathura'
    "let g:vimtex_view_general_options = '-reuse-instance @pdf'
    "let g:vimtex_view_general_options_latexmk = '-reuse-instance'
]]
