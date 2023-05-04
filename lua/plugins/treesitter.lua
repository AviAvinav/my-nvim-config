return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local ts = require "nvim-treesitter.configs"

		ts.setup {
			ensure_installed = {
				"css",
				"html",
				"javascript",
				"json",
				"lua",
				"python",
				"rust",
				"tsx",
				"typescript",
				"yaml",
				"vue",
				"svelte",
				"astro",
			},
		}
		end,
}
