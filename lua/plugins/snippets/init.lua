return {
  "L3MON4D3/LuaSnip",
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load { paths = { vim.fn.stdpath "config" .. "/snippets" } }
  end,
  dependencies = { "rafamadriz/friendly-snippets" },
  event = { "BufReadPost", "BufNewFile" },
  build = "make install_jsregexp",
}
