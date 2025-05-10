return {
  {
    "mason-org/mason.nvim",
    version = "^1.0.0",
    opts = {
      ensure_installed = {
        "prettier",
        "eslint-lsp",
        "js-debug-adapter",
        "typescript-language-server",
      },
    },
  },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
}
