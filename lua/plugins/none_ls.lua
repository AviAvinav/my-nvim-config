return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufWritePre" },
  config = function()
    local none_ls = require "none-ls"

    local formatting = none_ls.builtins.formatting
    local diagnostics = none_ls.builtins.diagnostics

    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    none_ls.setup {
      on_attach = function(client, bufnr)
        if client.supports_method "textDocument/formatting" then
          vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
              vim.lsp.buf.format { bufnr = bufnr }
            end,
          })
        end
      end,
      sources = {
        formatting.prettierd.with {
          extra_filetypes = { "md", "mdx" },
        },
        formatting.stylua,
        -- diagnostics.eslint,
        formatting.rustfmt,
        formatting.ocamlformat,
      },
    }
  end,
}
