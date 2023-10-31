return {
	"rose-pine/neovim",
	config = function()
		require("rose-pine").setup({
			--- @usage 'auto'|'main'|'moon'|'dawn'
			variant = "main",
			--- @usage 'main'|'moon'|'dawn'
			dark_variant = "moon",
			disable_italics = true,
		})

		vim.cmd("colorscheme rose-pine")
	end,
}
