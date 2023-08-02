return {
  'sbdchd/neoformat',
  branch = "master",
  config = function ()
    vim.keymap.set('n', '<leader>ff', "<Cmd>Neoformat<CR>", { noremap=true, silent=true, desc="[F]ormat" })
  end,
}
