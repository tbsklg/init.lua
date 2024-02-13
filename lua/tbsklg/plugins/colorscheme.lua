--return {
--	"catppuccin/nvim",
--	name = "catppuccin",
--	priority = 1000,
--	config = function()
--		local cattppuccin = require("catppuccin")
--
--		cattppuccin.setup({
--			flavour = "mocha",
--			integrations = {
--				neotree = true,
--			},
--		})
--
--		vim.cmd([[colorscheme catppuccin]])
--	end,
--}

return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		local rose_pine = require("rose-pine")

		rose_pine.setup({
			integrations = {
				neotree = true,
			},
		})

		vim.cmd([[colorscheme rose-pine]])
	end,
}
