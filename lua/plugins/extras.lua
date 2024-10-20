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
    event = { "BufReadPost", "BufNewFile" },
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
    event = { "BufReadPost", "BufNewFile" },
  },
  {
    "karb94/neoscroll.nvim",
    opts = {},
    event = { "BufNewFile", "BufReadPost" },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    event = { "BufReadPost", "BufNewFile" },
  },
  {
    "lukas-reineke/headlines.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    ft = { "markdown" },
    config = true,
  },
  {
    "Exafunction/codeium.nvim",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup {}
    end,
  },
  {
    "fladson/vim-kitty",
    ft = { "kitty" },
  },
  { "nvchad/volt", lazy = true },
  {
    "nvchad/minty",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "Shades", "Huefy" },
  },
}
