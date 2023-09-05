return {
	{ "tikhomirov/vim-glsl" },
	{
		"timtro/glslView-nvim",
		ft = "glsl",
		config = function()
			require("glslView").setup {
				viewer_path = 'glslViewer',
				args = { '-l' },
			}
			local map = vim.api.nvim_set_keymap

			map("n", "<leader>gv", "<Cmd>GlslView -w 128 -h 256<CR>",
				{ noremap = true, silent = true, desc = "[G]lsl [V]iew" })
		end,
	},
}
