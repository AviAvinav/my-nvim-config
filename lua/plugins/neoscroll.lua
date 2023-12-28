return {
  "karb94/neoscroll.nvim",
  config = function()
    local neoscroll = require "neoscroll"

    neoscroll.setup()
  end,
  event = { "BufNewFile", "BufReadPost" },
}
