---@type LazySpec
local M = { "kylechui/nvim-surround", version = "*", event = "VeryLazy" }

M.config = function()
  require("nvim-surround").setup {}
end

return M
