local fb_actions = require("telescope").extensions.file_browser.actions

return {
  theme = "dropdown",
  hijack_netrw = true,
  mappings = {
    ["n"] = {
      ["N"] = fb_actions.create,
      ["h"] = fb_actions.goto_parent_dir,
      ["re"] = fb_actions.rename,
      ["m"] = fb_actions.move,
      -- ["/"] = function()
      --   vim.cmd("startinsert")
      -- end,
    },
  },
  initial_mode = "normal",
  layout_config = {
    height = 40,
  },
}
