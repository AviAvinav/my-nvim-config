return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    local null_ls = require "null-ls"

    local formatting = null_ls.builtins.formatting

    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    null_ls.setup {
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
        formatting.eslint_d,
      },
    }
  end,
}
