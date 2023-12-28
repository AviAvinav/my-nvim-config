return {
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
    config = function()
      require("nvim-web-devicons").setup {
        override = {
          toml = {
            icon = "",
          },
        },
      }
    end,
    -- for lualine & neo-tree
  },
  {
    "tpope/vim-fugitive",
    cmd = { "G", "Git" },
    -- for lualine
  },
  -- {
  --   "ayu-theme/ayu-vim",
  --   -- for lualine
  -- },
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },
  {
    "MunifTanjim/nui.nvim",
    lazy = true,
    -- for neo-tree
  },
  -- {
  --   "mbbill/undotree",
  -- },
  {
    "stevearc/dressing.nvim",
    lazy = true,
  },
}
