return {
  'eandrju/cellular-automaton.nvim',
  config = function ()
    vim.api.nvim_set_keymap('n', '<leader>fml', '<Cmd>CellularAutomaton make_it_rain<CR>', {noremap = true, silent = true, desc = "[F]uck [M]y [L]ife"})
  end,
}
