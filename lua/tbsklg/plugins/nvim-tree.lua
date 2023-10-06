return {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local nvim_tree = require('nvim-tree')

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        --configure nvim tree
        nvim_tree.setup({
            view = {
                width = 40,
                relativenumber = true,
            },
            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = "", 
                            arrow_open = "",
                            default = '',
                            open = '',
                            symlink = '',
                        },
                    }
                },
            },
            git = {
                ignore = false,
            },
        })

        -- keymaps
        local keymap = vim.keymap
        keymap.set('n', '<leader>ee', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })
    end,
}

