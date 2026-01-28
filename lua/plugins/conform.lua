local M = {
  "stevearc/conform.nvim",
}

M.config = function()
  require("conform").setup {
	format_on_save = {
	  timeout_ms = 500,
	  lsp_format = "fallback",
	},
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
      markdown = { "prettierd", "prettier", stop_after_first = true },
      vue = { "prettierd", "prettier", stop_after_first = true },
      svelte = { "prettierd", "prettier", stop_after_first = true },
      astro = { "prettierd", "prettier", stop_after_first = true },
      html = { "prettierd", "prettier", stop_after_first = true },
      css = { "prettierd", "prettier", stop_after_first = true },
      ocaml = { "ocamlformat" },
      rust = { "rustfmt" },
      c = { "clang_format" },
      cpp = { "clang_format" },
      typescript = { "prettierd", "prettier", stop_after_first = true },
      tsx = { "prettierd", "prettier", stop_after_first = true },
      jsx = { "prettierd", "prettier", stop_after_first = true },
      json = { "prettierd", "prettier", stop_after_first = true },
      javascriptreact = { "prettierd", "prettier", stop_after_first = true },
      typescriptreact = { "prettierd", "prettier" , stop_after_first = true },
      java = { "google-java-format" },
    },
  }
  vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
end

return M
