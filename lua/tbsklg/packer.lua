-- Specify the path where you want to install your plugins
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer.nvim itself
    use 'wbthomason/packer.nvim'

    -- Essential plugins
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- Theme
    use {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    }

    -- Syntax highlighting with Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Quick navigation with Harpoon
    use 'ThePrimeagen/harpoon'

    -- Undo history with Undotree
    use 'mbbill/undotree'

    -- Git integration with Fugitive
    use 'tpope/vim-fugitive'

    -- LSP support
    use {
        'neovim/nvim-lspconfig'
    }
    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {}
        end
    }

    -- Autocompletion with nvim-cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'

    -- Haskell tools
    use {
        'mrcjkb/haskell-tools.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    -- Status line with Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons'
        },
        config = function()
            require('lualine').setup {}
        end
    }

    -- Cellular automaton for fun
    use 'eandrju/cellular-automaton.nvim'

    -- GitHub Copilot support
    use 'github/copilot.vim'
end)

