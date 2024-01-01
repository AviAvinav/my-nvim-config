local M = {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  cmd = { "NeoTreeFocusToggle", "NeoTreeFloatToggle" },
}

M.opts = {
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
    },
  },
  window = {
    position = "right",
  },
}

return M
