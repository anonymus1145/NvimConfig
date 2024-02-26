return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = true,
  -- Uncomment next line if you want to follow only stable versions
  version = "*",
  
  vim.keymap.set("n", "<leader>m", ":Neogen<CR>", {}) -- Space + m -> creaza documentatie de tip JsDoc

}
