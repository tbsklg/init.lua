return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			local cattppuccin = require("catppuccin")

			cattppuccin.setup({
				flavour = "mocha",
				integrations = {
					neotree = true,
				},
			})

			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
