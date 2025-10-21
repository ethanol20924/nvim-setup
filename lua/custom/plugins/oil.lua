return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			-- Window-local options to use for oil buffers
			win_options = {
				concealcursor = "ncvi",
			},
		})
		vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
	end,
}
