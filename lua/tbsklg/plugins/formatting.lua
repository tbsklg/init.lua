return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 1000,
		}

		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				javascript = { "standardjs" },
				typescript = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
			},
			format_on_save,
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format(format_on_save)
		end, { desc = "format file or range (in visual mode)" })
	end,
}
