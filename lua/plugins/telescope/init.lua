return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.1",
  dependencies = { "nvim-lua/plenary.nvim" },
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
}
