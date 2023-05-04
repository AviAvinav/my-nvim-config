return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.1",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local tl = require "telescope"

    tl.setup {
      extensions = {
        file_browser = {
          theme = "dropdown",
          hijack_netrw = true,
        },
      },
    }
    tl.load_extension "file_browser"
  end,
}

