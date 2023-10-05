-- Specify the path where you want to install your plugins
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer.nvim itself
    use 'wbthomason/packer.nvim'

    use 'christoomey/vim-tmux-navigator'

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

    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {}
        end
    }

    -- LSP support
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

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

    -- gcc to comment lines
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Cellular automaton for fun
    use 'eandrju/cellular-automaton.nvim'

    -- GitHub Copilot support
    use 'github/copilot.vim'

    -- File explorer
    use 'nvim-tree/nvim-tree.lua'

    -- Git decorations
    use 'lewis6991/gitsigns.nvim'

    -- Detect tabstop and shiftwidth automatically
    use 'tpope/vim-sleuth'
end)
