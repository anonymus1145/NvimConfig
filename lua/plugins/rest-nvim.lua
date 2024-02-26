-- plugins/rest.lua
return {
   "rest-nvim/rest.nvim",
   dependencies = { { "nvim-lua/plenary.nvim" } },
   config = function()
     require("rest-nvim").setup({
       --- Get the same options from Packer setup
      vim.keymap.set("n", "<leader>t", "<Plug>RestNvim"), -- Space + t -> Run request under the cursor
      vim.keymap.set("n", "<leader>tp", "<Plug>RestNvimPreview"), -- Space + tp -> Preview request
      vim.keymap.set("n", "<leader>tl", "<Plug>RestNvimLast") -- Space + tl -> Re-run last request
    })
  end
}



