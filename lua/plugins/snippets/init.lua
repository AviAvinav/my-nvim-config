return {
  "L3MON4D3/LuaSnip",
  config = function()
    local ls = require "luasnip"
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node
    local f = ls.function_node
    local c = ls.choice_node
    local fmt = require("luasnip.extras.fmt").fmt
    local types = require "luasnip.util.types"

    require("luasnip.loaders.from_vscode").lazy_load { paths = { vim.fn.stdpath "config" .. "/snippets" } }
    vim.keymap.set({ "i", "s" }, "<C-k>", function()
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      end
    end, { silent = true, desc = "🚀snip jump to next placeholder" })
    local snips = {
      lua = {
        s(
          { trig = "pcall", name = "protected call" },
          fmt(
            [[
				local ok, {} = pcall(require, '{}')
				if not ok then return end
	  ]],
            { i(1, "name"), i(2, "module") }
          )
        ),
      },
      cpp = {
        s(
          { trig = "dsa", name = "dsa" },
          { t { "#include <iostream>\nusing namespace std;\n\nint main() {\n\n\treturn 0;\n}" } }
        ),
      },
    }
    ls.add_snippets(nil, { lua = snips.lua, cpp = snips.cpp })
  end,
  dependencies = { "rafamadriz/friendly-snippets", "saadparwaiz1/cmp_luasnip" },
  event = { "BufReadPost", "BufNewFile" },
  build = "make install_jsregexp",
}
