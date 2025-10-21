return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	config = function()
		vim.api.nvim_set_keymap(
			"n",
			"<leader>bn",
			"<Cmd>BufferNext<CR>",
			{ noremap = true, silent = true, desc = "[B]uffer [N]ext" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>bp",
			"<Cmd>BufferPrevious<CR>",
			{ noremap = true, silent = true, desc = "[B]uffer [P]revious" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>bc",
			"<Cmd>BufferClose<CR>",
			{ noremap = true, silent = true, desc = "[B]uffer [C]loser" }
		)
	end,
}
