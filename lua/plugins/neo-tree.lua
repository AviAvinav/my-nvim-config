return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
	config = function()
		local neo_tree = require"neo-tree"

		neo_tree.setup({
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
				}
			}
		})
	end,
}
