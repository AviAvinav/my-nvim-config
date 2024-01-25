local M = {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
}

M.opts = {
  autotag = {
    enable = true,
  },
  ensure_installed = {
    "css",
    "html",
    "javascript",
    "json",
    "lua",
    "python",
    "rust",
    "tsx",
    "typescript",
    "yaml",
    "vue",
    "svelte",
    "astro",
    "c",
    "cpp",
    "go",
    "haskell",
  },
  highlight = {
    enable = true,
  },
  textsubjects = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}

M.config = function(_, opts)
  require("nvim-treesitter.configs").setup(opts)
end

return M
