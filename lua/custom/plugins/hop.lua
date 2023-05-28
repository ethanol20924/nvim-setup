return {
  "phaazon/hop.nvim",
  config = function()
    require("hop").setup {}
    -- Example keybindings from github repo, replaces 'f' and 't' motions
    local hop = require('hop')
    local directions = require('hop.hint').HintDirection
    vim.keymap.set('', 'f', function()
      hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
    end, { remap = true })
    vim.keymap.set('', 'F', function()
      hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
    end, { remap = true })
    vim.keymap.set('', 't', function()
      hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
    end, { remap = true })
    vim.keymap.set('', 'T', function()
      hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
    end, { remap = true })
    vim.keymap.set('', '<leader>hc', function()
      hop.hint_char1()
    end, { silent=true, desc="[H]op to [C]haracter" })
    vim.keymap.set('', '<leader>hp', function()
      hop.hint_patterns()
    end, { silent=true, desc="[H]op to [P]attern" })
    vim.keymap.set('', '<leader>hw', function()
      hop.hint_words({ current_line_only = true })
    end, { silent=true, desc="[H]op to [W]ord Forward" })
    vim.keymap.set('', '<leader>hW', function()
      hop.hint_words()
    end, { silent=true, desc="[H]op to [W]ord Backward" })
  end,
}
