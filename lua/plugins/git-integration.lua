return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()

			vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>") -- Space + gh -> preview hunk
			vim.keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>") -- Space + gs -> stage hunk
			vim.keymap.set("n", "<leader>gn", ":Gitsigns next_hunk<CR>") -- Space + gn -> next hunk
			vim.keymap.set("n", "<leader>gp", ":Gitsigns prev_hunk<CR>") -- Space + gp -> prev hunk
			vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>") -- Space + gb -> toggle blame
		end,
	},
	{
		"tpope/vim-fugitive",
	},
}
