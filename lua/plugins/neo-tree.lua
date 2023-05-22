return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  cmd = { "NeoTreeFocusToggle", "NeoTreeFloatToggle" },
  config = function()
    local neo_tree = require "neo-tree"

    neo_tree.setup {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        position = "right",
      },
      hijack_netrw_behavior = "open_current",
    }
  end,
}
