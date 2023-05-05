return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.1",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local tl = require "telescope"
    local fb_actions = require("telescope").extensions.file_browser.actions

    tl.setup {
      extensions = {
        file_browser = {
          theme = "dropdown",
          hijack_netrw = true,
          mappings = {
            ["n"] = {
              ["N"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["re"] = fb_actions.rename,
              -- ["/"] = function()
              --   vim.cmd("startinsert")
              -- end,
            },
          },
          initial_mode = "normal",
          layout_config = {
            height = 40,
          },
        },
      },
    }
    tl.load_extension "file_browser"
  end,
}
