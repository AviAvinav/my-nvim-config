return {
  "folke/tokyonight.nvim",
  config = function()
    local tn = require "tokyonight"
    -- local prompt = "#2d3149"
    tn.setup {
      style = "night",
      transparent = true,
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
      },
      on_highlights = function(hl, c)
        -- hl.TelescopeNormal = {
        --   bg = c.bg_dark,
        --   fg = c.fg_dark,
        -- }
        -- hl.TelescopeBorder = {
        --   bg = c.bg_dark,
        --   fg = c.bg_dark,
        -- }
        -- hl.TelescopePromptNormal = {
        --   bg = prompt,
        -- }
        -- hl.TelescopePromptBorder = {
        --   bg = prompt,
        --   fg = prompt,
        -- }
        -- hl.TelescopePromptTitle = {
        --   bg = prompt,
        --   fg = prompt,
        -- }
        -- hl.TelescopePreviewTitle = {
        --   bg = c.bg_dark,
        --   fg = c.bg_dark,
        -- }
        -- hl.TelescopeResultsTitle = {
        --   bg = c.bg_dark,
        --   fg = c.bg_dark,
        -- }
        hl.TelescopeNormal = { bg = "NONE" }
        hl.TelescopeBorder = { bg = "NONE", fg = "#2d2e43" }
        hl.TelescopePromptBorder = { bg = "NONE", fg = "#2d2e43" }
        hl.TelescopeResultsBorder = { bg = "NONE", fg = "#2d2e43" }
        hl.TelescopePreviewBorder = { bg = "NONE", fg = "#2d2e43" }
      end,
    }

    -- vim.cmd [[highlight NormalFloat guibg=NONE]]
    vim.cmd "colorscheme tokyonight"
  end,
}
