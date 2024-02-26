return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
----- Auto install LSP servers with mason ---
      require('mason').setup({})
      require('mason-lspconfig').setup({
        ensure_installed = { 'tsserver', 'tailwindcss', 'eslint' }
      })

      require('mason-lspconfig').setup_handlers({
        function(server)
          lspconfig[server].setup({})
        end,
      })
------ Add manual lsp servers here ------
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.tailwindcss.setup({
        capabilities = capabilities
      })
      lspconfig.eslint.setup({
        capabilities = capabilities
      })

      vim.keymap.set("n", "I", vim.lsp.buf.hover, {})                    -- Shift + i = I to display hover information for LSP
      vim.keymap.set("n", "D", vim.lsp.buf.definition, {})               -- Shift + d = D to display the definitions and implementation
      vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {}) -- Space + ca -> to display code actions
    end,
  },
}
