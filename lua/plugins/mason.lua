return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    config = function()
      require("mason").setup {
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      }
    end,
    cmd = { "MasonUpdate", "MasonInstall", "Mason" },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local on_attach = function(_, bufnr)
        local function buf_set_keymap(...)
          vim.api.nvim_buf_set_keymap(bufnr, ...)
        end

        local opts = { noremap = true, silent = true }

        -- See `:help vim.lsp.*` for documentation on any of the below functions
        buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
        buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
        buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
        buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
        buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
        buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
        buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
        buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
        buf_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
        buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
        buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
        buf_set_keymap("n", "<space>re", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
        buf_set_keymap("n", "Y", "<cmd>lua vim.diagnostic.open_float(0, { scope = 'line' })<CR>", opts)
        buf_set_keymap("n", "yt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
        buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
        buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
      end

      require("mason-lspconfig").setup {
        ensure_installed = {
          "gopls",
          "pyright",
          "zls",
          "clangd",
        },
      }
      -- require("mason-lspconfig").setup_handlers {
      --   function(server)
      --     require("lspconfig")[server].setup {
      --       on_attach = on_attach,
      --     }
      --   end,
      --   ["lua_ls"] = function()
      --     require("lspconfig").lua_ls.setup {
      --       on_attach = on_attach,
      --       settings = {
      --         Lua = {
      --           diagnostics = {
      --             globals = { "vim" },
      --           },
      --           workspace = {
      --             library = vim.api.nvim_get_runtime_file("", true),
      --           },
      --         },
      --       },
      --     }
      --   end,
      -- }
    end,
  },
}
