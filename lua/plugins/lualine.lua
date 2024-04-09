local M = {
  "nvim-lualine/lualine.nvim",
  event = { "VeryLazy" },
}

M.opts = {
  options = {
    theme = "tokyonight",
    -- section_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
    disabled_filetypes = {},
    icons_enabled = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { { "branch" } },
    lualine_c = {
      {
        "buffers",
        max_length = vim.o.columns * 2 / 3,
        filetype_names = {
          TelescopePrompt = "Telescope",
          dashboard = "Dashboard",
          lazy = "Lazy",
          fzf = "FZF",
        },
      },
    },
    -- lualine_c = {
    --   {
    --     "filename",
    --     file_status = true,
    --     path = 1,
    --     shorting_target = 40,
    --   },
    -- },
    lualine_x = {
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        symbols = { error = " ", warn = " ", info = " ", hint = " " },
      },
    },
    lualine_y = { { "progress" } },
    lualine_z = { { "location" } },
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
}

return M
