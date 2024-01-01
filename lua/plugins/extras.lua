return {
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
    opts = {
      override = {
        toml = {
          icon = "",
        },
      },
    },
  },
  {
    "tpope/vim-fugitive",
    cmd = { "G", "Git" },
  },
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },
  {
    "MunifTanjim/nui.nvim",
    lazy = true,
  },
  {
    "jiangmiao/auto-pairs",
    event = { "InsertEnter" },
  },
  {
    "numToStr/Comment.nvim",
    opts = {},
    event = { "BufReadPost", "BufNewFile" },
  },
  {
    "ziontee113/icon-picker.nvim",
    opts = {
      disable_legacy_commands = true,
    },
    dependencies = { "stevearc/dressing.nvim", lazy = true },
    cmd = "IconPickerInsert",
  },
  {
    "github/copilot.vim",
    event = { "InsertEnter" },
  },
  {
    "karb94/neoscroll.nvim",
    opts = {},
    event = { "BufNewFile", "BufReadPost" },
  },
}
