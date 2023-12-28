local fb_actions = require("telescope").extensions.file_browser.actions

return {
  mappings = {
    ["n"] = {
      ["N"] = fb_actions.create,
      ["h"] = fb_actions.goto_parent_dir,
      ["re"] = fb_actions.rename,
      ["m"] = fb_actions.move,
    },
  },
  initial_mode = "normal",
  layout_config = {
    -- height = 40,
  },
}
