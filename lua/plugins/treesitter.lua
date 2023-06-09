return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local ts = require "nvim-treesitter.configs"

    ts.setup {
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
      },
    }
  end,
}
