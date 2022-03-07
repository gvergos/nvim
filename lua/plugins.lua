local use = require('packer').use
require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Package manager
    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
    
    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    
    -- Completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- LuaSnip
    use 'L3MON4D3/LuaSnip'

    -- Comments
    use 'preservim/nerdcommenter'

    -- Auto complete parenthesis
    use 'jiangmiao/auto-pairs'

    -- Colorschemes
    use "ellisonleao/gruvbox.nvim"
    use 'bluz71/vim-moonfly-colors'

    -- Nerd Tree
    use 'preservim/nerdtree'
    use 'ryanoasis/vim-devicons'
    
    -- Java
    --use 'mfussenegger/nvim-jdtls'

    use 'williamboman/nvim-lsp-installer'
end)
