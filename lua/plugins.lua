local use = require('packer').use
require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Package manager
    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
    
    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'
    
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
    
    -- LSP - Installer
    use 'williamboman/nvim-lsp-installer'

    -- Cpp syntax highlighting
    use 'bfrg/vim-cuda-syntax'

    -- Syntax highlighting in telescope panes
    use 'norcalli/nvim-terminal.lua'

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    -- Diagnostics
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }

    -- Marckdown Preview
    use "davidgranstrom/nvim-markdown-preview"

end)
