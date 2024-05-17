return {
    "tbsklg/nvim-exec",
    lazy = true,
    branch = "initial-setup",
    config = function()
        local nvim_exec = require("nvim-exec")

        vim.keymap.set({ "n", "v" }, "<leader>r", function()
            nvim_exec.run()
        end, { desc = "Execute code block after marker >>>" })
    end,
    ft = "javascript",
}
