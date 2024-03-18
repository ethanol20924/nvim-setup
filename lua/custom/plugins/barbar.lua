return {
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
        config = function()
            vim.g.barbar_auto_setup = false
            require("barbar").setup()
            local map = vim.api.nvim_set_keymap

            -- Move to previous/next
            map('n', '<leader>bp', '<Cmd>BufferPrevious<CR>',
                {noremap = true, silent = true, desc = "[B]uffer [P]revious"})
            map('n', '<leader>bn', '<Cmd>BufferNext<CR>',
                {noremap = true, silent = true, desc = "[B]uffer [N]ext"})
            map('n', '<leader>bc', '<Cmd>BufferClose<CR>',
                {noremap = true, silent = true, desc = "[B]uffer [C]lose"})
            -- Sort automatically by...
            map('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', {
                noremap = true,
                silent = true,
                desc = "[B]uffer Order by [B]uffer Number"
            })
            map('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', {
                noremap = true,
                silent = true,
                desc = "[B]uffer Order by [D]irectory"
            })
            map('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', {
                noremap = true,
                silent = true,
                desc = "[B]uffer Order by [L]anguage"
            })
            map('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', {
                noremap = true,
                silent = true,
                desc = "[B]uffer Order by [W]indow Number"
            })
            -- Delete all buffers except this one
            map('n', '<leader>ba', '<Cmd>%bd|e#<CR>',
                {noremap = true, silent = true, desc = "[B]uffer Close [A]ll"})

            -- Other:
            -- :BarbarEnable - enables barbar (enabled by default)
            -- :BarbarDisable - very bad command, should never be used
        end
    }
}
