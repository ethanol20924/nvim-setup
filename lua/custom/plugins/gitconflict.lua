return {
	"akinsho/git-conflict.nvim",
	version = "*",
	config = function()
		require("git-conflict").setup()
		-- Custom keybindings
		vim.keymap.set(
			"n",
			"<leader>gco",
			":GitConflictChooseOurs<cr>",
			{ silent = true, desc = "[G]it [C]onflict Choose [O]urs" }
		)
		vim.keymap.set(
			"n",
			"<leader>gct",
			":GitConflictChooseTheirs<cr>",
			{ silent = true, desc = "[G]it [C]onflict Choose [T]heirs" }
		)
		vim.keymap.set(
			"n",
			"<leader>gcb",
			":GitConflictChooseBoth<cr>",
			{ silent = true, desc = "[G]it [C]onflict Choose [B]oth" }
		)
		vim.keymap.set(
			"n",
			"<leader>gcn",
			":GitConflictChooseNone<cr>",
			{ silent = true, desc = "[G]it [C]onflict Choose [N]one" }
		)
		vim.keymap.set(
			"n",
			"<leader>gc[",
			":GitConflictPrevConflict<cr>",
			{ silent = true, desc = "[G]it [C]onflict Previous Conflict" }
		)
		vim.keymap.set(
			"n",
			"<leader>gc]",
			":GitConflictNextConflict<cr>",
			{ silent = true, desc = "[G]it [C]onflict Next Conflict" }
		)
		vim.keymap.set(
			"n",
			"<leader>gcl",
			":GitConflictListQf<cr>",
			{ silent = true, desc = "[G]it [C]onflict [L]ist Conflicts" }
		)
	end,
}
