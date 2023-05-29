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
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require("mason-tool-installer").setup {
        ensure_installed = {
          "lua-language-server",
          "typescript-language-server",
          "gopls",
          "stylua",
          "tailwindcss-language-server",
          "astro-language-server",
          "vue-language-server",
          "svelte-language-server",
          "pyright",
          "rust-analyzer",
          "emmet-ls",
        },
      }
    end,
    dependencies = { "williamboman/mason.nvim" },
    cmd = { "MasonToolsInstall", "MasonToolsUpdate" },
  },
}
