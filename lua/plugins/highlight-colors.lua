local M = { "brenoprata10/nvim-highlight-colors" }

M.config = function()
  require("nvim-highlight-colors").setup {
    enable_tailwind = true,
  }
end

return M
