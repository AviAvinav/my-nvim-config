return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local lualine = require "lualine"

		lualine.setup({
  options = {
    theme = "ayu_dark",
    section_separators = { "", "" },
    component_separators = { "", "" },
    disabled_filetypes = {},
    icons_enabled = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = { {
      "filename",
      file_status = true,
      path = 1,
    } },
    lualine_x = {
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        symbols = { error = " ", warn = " ", info = " ", hint = " " },
      },
    },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { {
      "filename",
      file_status = true,
      path = 1,
    } },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = { "fugitive" },
})
end,
}
