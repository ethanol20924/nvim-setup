return {
    "NeogitOrg/neogit",
    branch = 'master',
    dependencies = {
        "nvim-lua/plenary.nvim", -- required
        "nvim-telescope/telescope.nvim", -- optional
        "sindrets/diffview.nvim", -- optional
        "ibhagwan/fzf-lua" -- optional
    },
    config = function()
        require("neogit").setup()

        local map = vim.api.nvim_set_keymap

        map("n", "<leader>go", "<Cmd>Neogit<CR>",
            {noremap = true, silent = true, desc = "[G]it [O]pen"})
    end
}
