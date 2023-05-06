local ls = require "luasnip"

return {
  ls.parser.parse_snippet("rfc", "const $1 = () => {\n\treturn (\n\t\t<div>\n\t\t\t$0\n\t\t</div>\n\t)\n}"),
}
