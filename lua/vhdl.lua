vim.cmd[[
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    let g:syntastic_vhdl_checkers = ['vhdltool']

    let g:neomake_open_list = 2
    autocmd! BufWritePost,BufRead * Neomake
    let g:neomake_vhdl_vhdltool_maker = {
        \ 'exe': 'vhdl-tool',
        \ 'args': ['client', 'lint', '--compact'],
        \ 'errorformat': '%f:%l:%c:%t:%m',
        \ }
    let g:neomake_vhdl_enabled_makers = ['vhdltool']

    let g:tagbar_type_vhdl = {
    \ 'ctagsbin': 'vhdl-tool',
    \ 'ctagsargs': 'ctags -o -',
    \ 'ctagstype': 'vhdl',
    \ 'kinds' : [
        \'d:prototypes',
        \'b:package bodies',
        \'e:entities',
        \'a:architectures',
        \'t:types',
        \'p:processes',
        \'f:functions',
        \'r:procedures',
        \'c:constants',
        \'T:subtypes',
        \'r:records',
        \'C:components',
        \'P:packages',
        \'l:locals',
        \'i:instantiations',
        \'s:signals',
        \'v:variables:1:0'
    \ ],
    \ 'sro' : '::',
    \ 'kind2scope' : {
         \ 'a' : 'architecture',
         \ 'b' : 'packagebody',
         \ 'P' : 'package',
         \ 'p' : 'process'
    \ },
    \ 'scope2kinds' : {
         \ 'architecture' : 'a',
         \ 'packagebody'  : 'b',
         \ 'package'      : 'P',
         \ 'process'      : 'p'
    \ }
\}
]]
