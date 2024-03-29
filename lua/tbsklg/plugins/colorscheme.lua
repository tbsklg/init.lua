return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		local rose_pine = require("rose-pine")

		rose_pine.setup({
			styles = {
				italic = true,
				transparent = true
			}
		})

		vim.cmd([[colorscheme rose-pine]])
	end,
}
