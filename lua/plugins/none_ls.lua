local M = {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufWritePre" },
}

local sources = function(formatting)
  return {
    formatting.prettierd.with {
      extra_filetypes = { "md", "mdx" },
    },
    formatting.stylua,
    formatting.rustfmt,
    formatting.ocamlformat,
    formatting.clang_format,
    formatting.black,
  }
end

M.config = function()
  local none_ls = require "null-ls"

  local formatting = none_ls.builtins.formatting

  local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

  none_ls.setup {
    on_attach = function(client, bufnr)
      if client.supports_method "textDocument/formatting" then
        vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = augroup,
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format { bufnr = bufnr }
          end,
        })
      end
    end,
    sources = sources(formatting),
  }
end

return M
