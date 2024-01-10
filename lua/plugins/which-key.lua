local M = {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {},
  cmd = { "WhichKey" },
}

M.init = function()
  vim.o.timeout = true
  vim.o.timeoutlen = 6000
end

return M
