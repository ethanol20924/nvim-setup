return {
  "sindrets/diffview.nvim",
  config = function()
    require("diffview").setup {}

    -- Custom keybindings
    vim.keymap.set('n', '<leader>gdo', ":DiffviewOpen<cr>", { silent=true, desc="[G]it [D]iffview [O]pen" })
    vim.keymap.set('n', '<leader>gdh', ":DiffviewFileHistory<cr>", { silent=true, desc="[G]it [D]iffview [F]ile History" })
    vim.keymap.set('n', '<leader>gdc', ":DiffviewClose<cr>", { silent=true, desc="[G]it [D]iffview [C]lose" })
  end,
}
