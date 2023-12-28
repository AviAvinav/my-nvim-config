return {
  "nvimdev/lspsaga.nvim",
  event = { "VeryLazy" },
  config = function()
    local saga = require "lspsaga"

    saga.init_lsp_saga {
      error_sign = "", -- 
      warn_sign = "",
      hint_sign = "",
      infor_sign = "",
    }
    --  require("lspsaga").setup {
    -- init_
    --  }
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}
