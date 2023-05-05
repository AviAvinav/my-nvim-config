return {
  "olivercederborg/poimandres.nvim",
  config = function()
    local pmdrs = require "poimandres"

    pmdrs.setup {
      disable_background = true,
    }

    vim.cmd "colorscheme poimandres"
  end,
}
