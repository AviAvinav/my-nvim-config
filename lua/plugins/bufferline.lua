return {
  "akinsho/bufferline.nvim",
  version = "*",
  event = { "VeryLazy" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local bl = require "bufferline"

    bl.setup {
      options = {
        mode = "tabs",
        -- separator_style = "slant",
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true,
      },
      -- highlights = {
      --   fill = {
      --     bg = {
      --       attribute = "fg",
      --       highlight = "Pmenu",
      --     },
      --   },
      -- },
    }
  end,
}
