return {
  "onsails/lspkind-nvim",
  event = { "VeryLazy" },
  config = function()
    require("lspkind").init {
      mode = "symbol_text",
      preset = "codicons",
      symbol_map = {
        Text = "",
        Method = "ƒ",
        Function = "",
        Constructor = "",
        Variable = "󰫧",
        Class = "",
        Interface = "ﰮ",
        Module = "",
        Property = "",
        Unit = "",
        Value = "",
        Enum = "了",
        Keyword = "",
        Snippet = "",
        Color = "",
        File = "",
        Folder = "",
        EnumMember = "",
        Constant = "",
        Struct = "",
        Codeium = "",
      },
    }
  end,
}
