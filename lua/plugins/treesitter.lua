return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter').setup({
                ensure_installed = { 'sql', 'lua', 'python', 'typescript', 'javascript', 'svelte' },
                auto_install = true,
            })
        end,
        {
            "cap-js-community/tree-sitter-cds",
            lazy = false,
            build = function()
                local src = vim.fn.stdpath("data") .. "/lazy/tree-sitter-cds/src/"
                local out_dir = vim.fn.stdpath("data") .. "/lazy/nvim-treesitter/parser/"
                local out = out_dir .. "cds.so"
                vim.fn.mkdir(out_dir, "p")
                local result = vim.fn.system({ "gcc", "-o", out, "-shared", "-fPIC", "-Os",
                src .. "parser.c", src .. "scanner.c", "-I", src })
                vim.notify("cds parser build: " .. (result == "" and "success" or result), vim.log.levels.INFO)
            end,
            config = function()
                vim.filetype.add({ extension = { cds = "cds" } })
                vim.treesitter.language.register("cds", "cds")

                local base = vim.fn.stdpath("data") .. "/lazy/tree-sitter-cds/"
                local src = base .. "queries/"
                local dst = base .. "queries/cds/"
                vim.fn.mkdir(dst, "p")
                for _, file in ipairs(vim.fn.glob(src .. "*.scm", false, true)) do
                    local filename = vim.fn.fnamemodify(file, ":t")
                    vim.fn.system({ "cp", file, dst .. filename })
                end

                vim.opt.runtimepath:append(base)

                vim.api.nvim_create_autocmd("FileType", {
                    pattern = "cds",
                    callback = function()
                        vim.treesitter.start()
                    end,
                })
            end,
        }
    }
}
