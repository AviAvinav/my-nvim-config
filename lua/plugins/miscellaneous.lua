return {
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
    -- for lualine & neo-tree
  },
  {
    "tpope/vim-fugitive",
    -- for lualine
  },
  {
    "ayu-theme/ayu-vim",
    -- for lualine
  },
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },
  {
    "MunifTanjim/nui.nvim",
    lazy = true,
    -- for neo-tree
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    -- for telescope
  },
	{
	"L3MON4D3/LuaSnip",
	lazy = true,
	},
}
