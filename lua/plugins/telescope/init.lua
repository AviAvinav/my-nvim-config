return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		cmd = "Telescope",
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		-- event = { "VeryLazy" },
		config = function()
			local tl = require "telescope"
			local file_browser = require "plugins.telescope.file_browser"

			tl.setup {
				extensions = {
					file_browser = file_browser,
				},
			}
			tl.load_extension "file_browser"
		end,
	},
}
