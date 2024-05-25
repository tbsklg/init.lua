return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local nvim_tree = require("nvim-tree")

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvim_tree.setup({
            view = {
                width = 40,
                relativenumber = false,
                adaptive_size = false,
                preserve_window_proportions = true,
                side = "right"
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
                        },
                        git = {
                            unstaged = "✗",
                            staged = "✓",
                            unmerged = "",
                            renamed = "➜",
                            untracked = "★",
                            deleted = "",
                            ignored = "◌",
                        },
                    },
                },
            },
            git = {
                ignore = false,
            },
        })
    end,
}
