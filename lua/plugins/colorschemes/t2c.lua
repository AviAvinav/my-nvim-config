return {
  "svermeulen/text-to-colorscheme.nvim",
  config = function()
    require("text-to-colorscheme").setup {
      ai = {
        openai_api_key = "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",
        gpt_model = "gpt-3.5-turbo",
      },
      hex_palettes = {
        {
          name = "darkest knight batman",
          background_mode = "dark",
          background = "#1c1c1c",
          foreground = "#f8f8f2",
          accents = {
            "#bd93f9",
            "#ff79c6",
            "#8be9fd",
            "#ffb86c",
            "#44d469",
            "#6272a4",
            "#ff5555",
          },
        },
        {
          name = "diwali dark",
          background_mode = "dark",
          background = "#1c1c1c",
          foreground = "#d4d4d4",
          accents = {
            "#f4c110",
            "#f45e1b",
            "#267f63",
            "#2d7cd1",
            "#b4009e",
            "#f4005f",
            "#00a0b4",
          },
        },
      },
      -- default_palette = "tokyonight",
    }
    -- vim.cmd [[colorscheme text-to-colorscheme]]
  end,
}
