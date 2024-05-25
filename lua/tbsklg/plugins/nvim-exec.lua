return {
    "tbsklg/nvim-exec",
    lazy = true,
    branch = "7-show-code-execution-result-in-window",
    ft = { "javascript", "typescript" },
    config = function()
        local nvim_exec = require("nvim-exec")

        vim.keymap.set({ "n", "v" }, "<leader>r", function()
            nvim_exec.run()
        end, { desc = "Execute code block after marker >>>" })
    end,
}
