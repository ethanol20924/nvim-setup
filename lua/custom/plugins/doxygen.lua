return {
  "vim-scripts/DoxygenToolkit.vim",
  branch = "master",
  config = function()
    local map = vim.api.nvim_set_keymap
    
    map('n', '<leader>dc', '<Cmd>Dox<CR>', {noremap = true, silent = true, desc = "[D]oxygen [C]omment"})
    map('n', '<leader>da', '<Cmd>DoxAuthor<CR>', {noremap = true, silent = true, desc = "[D]oxygen [A]uthor"})
    map('n', '<leader>db', '<Cmd>DoxBlock<CR>', {noremap = true, silent = true, desc = "[D]oxygen [B]lock"})
    map('n', '<leader>dl', '<Cmd>DoxLic<CR>', {noremap = true, silent = true, desc = "[D]oxygen [L]icence"})
  end,
}
