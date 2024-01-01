local M = {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {},
}

M.init = function()
	vim.o.timeout = true
	vim.o.timeoutlen = 300
end

return M
