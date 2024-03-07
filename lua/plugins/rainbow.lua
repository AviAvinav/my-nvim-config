local M = {
  "HiPhish/rainbow-delimiters.nvim",
}

M.config = function()
  local rainbow_delimiters = require "rainbow-delimiters"

  ---@type rainbow_delimiters.config
  vim.g.rainbow_delimiters = {
    strategy = {
      [""] = rainbow_delimiters.strategy["global"],
      vim = rainbow_delimiters.strategy["local"],
    },
    query = {
      [""] = "rainbow-delimiters",
      lua = "rainbow-blocks",
      haskell = "rainbow-delimiters",
    },
    priority = {
      [""] = 110,
      lua = 210,
    },
    highlight = {
      "RainbowDelimiterRed",
      "RainbowDelimiterYellow",
      "RainbowDelimiterBlue",
      "RainbowDelimiterOrange",
      "RainbowDelimiterGreen",
      "RainbowDelimiterViolet",
      "RainbowDelimiterCyan",
    },
    blacklist = { "c", "cpp" },
  }
end

return M
