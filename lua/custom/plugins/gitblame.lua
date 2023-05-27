return {
  "tveskag/nvim-blame-line",
  config = function()
    -- Custom keybindings
    vim.keymap.set('n', '<leader>gb', ":ToggleBlameLine<cr>", { silent=true, desc="[G]it [B]lame Toggle" })
  end,
}
