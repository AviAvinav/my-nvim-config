return {
  "folke/tokyonight.nvim",
  config = function()
    local tn = require "tokyonight"

    tn.setup {
      style = "night",
      transparent = true,
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
      },
    }

    vim.cmd [[colorscheme tokyonight]]
  end,
}
