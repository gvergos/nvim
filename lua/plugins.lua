-- Package Manager Packer
require('packer').startup(function ()
    -- Packer
    use 'wbthomason/packer.nvim'

    -- Gruvbox
    use "ellisonleao/gruvbox.nvim"
    -- Moonfly
    use 'bluz71/vim-moonfly-colors'
use "lunarvim/darkplus.nvim"

    -- Lua-Line
    use {
  	    'nvim-lualine/lualine.nvim',
  	    requires = { { 'kyazdani42/nvim-web-devicons', opt = true} }
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Cpp highlight
    use 'octol/vim-cpp-enhanced-highlight'

    -- Auto-pairs
    use 'jiangmiao/auto-pairs'
    use "alvan/vim-closetag"
    use "tpope/vim-unimpaired"
    use "tpope/vim-surround"

    -- Commenter
    use 'preservim/nerdcommenter'

    -- LSP
    use "neovim/nvim-lspconfig"

    -- LSP Installer
    use 'williamboman/nvim-lsp-installer'

    -- Vsnip
    use "hrsh7th/vim-vsnip"
    use "hrsh7th/vim-vsnip-integ"
    
    -- Autocomplete
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    -- Coc
    use { "neoclide/coc.nvim", branch = "release"}

    -- Java
    use "mfussenegger/nvim-jdtls"

    -- Emmet
    use 'mattn/emmet-vim'
    
    -- Vhdl
    use 'scrooloose/syntastic'
    use 'http://git.vhdltool.com/vhdl-tool/syntastic-vhdl-tool'
    use 'majutsushi/tagbar'
    use 'neomake/neomake'
    use "suoto/vim-hdl"
end)
