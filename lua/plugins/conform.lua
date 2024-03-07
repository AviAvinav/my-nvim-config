local M = {
  "stevearc/conform.nvim",
}

M.config = function()
  require("conform").setup {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      javascript = { { "prettierd", "prettier" } },
      markdown = { { "prettierd", "prettier" } },
      vue = { { "prettierd", "prettier" } },
      svelte = { { "prettierd", "prettier" } },
      astro = { { "prettierd", "prettier" } },
      ocaml = { "ocamlformat" },
      rust = { "rustfmt" },
      c = { "clang_format" },
      cpp = { "clang_format" },
    },
  }
  vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
      require("conform").format { bufnr = args.buf }
    end,
  })
end

return M
