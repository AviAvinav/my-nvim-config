local M = {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufWritePre" },
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
      html = { { "prettierd", "prettier" } },
      css = { { "prettierd", "prettier" } },
      ocaml = { "ocamlformat" },
      rust = { "rustfmt" },
      c = { "clang_format" },
      cpp = { "clang_format" },
      typescript = { { "prettierd", "prettier" } },
      tsx = { { "prettierd", "prettier" } },
      jsx = { { "prettierd", "prettier" } },
      json = { { "prettierd", "prettier" } },
      javascriptreact = { { "prettierd", "prettier" } },
      typescriptreact = { { "prettierd", "prettier" } },
      java = { "google-java-format" },
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
