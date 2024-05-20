return {
    "folke/trouble.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    config = function()
        -- Lua
        vim.keymap.set("n", "<leader>xx",
                       function() require("trouble").toggle() end,
                       {noremap = true, silent = true, desc = "Trouble Toggle"})

        vim.keymap.set("n", "<leader>xw", function()
            require("trouble").toggle("workspace_diagnostics")
        end, {noremap = true, silent = true, desc = "Trouble [W]orkspace"})

        vim.keymap.set("n", "<leader>xd", function()
            require("trouble").toggle("document_diagnostics")
        end, {noremap = true, silent = true, desc = "Trouble [D]iagnostics"})

        vim.keymap.set("n", "<leader>xq",
                       function() require("trouble").toggle("quickfix") end, {
            noremap = true,
            silent = true,
            desc = "Trouble [Q]uickfix"
        })

        vim.keymap.set("n", "<leader>xl",
                       function() require("trouble").toggle("loclist") end, {
            noremap = true,
            silent = true,
            desc = "Trouble [L]oclist"
        })

        vim.keymap.set("n", "gR", function()
            require("trouble").toggle("lsp_references")
        end, {noremap = true, silent = true, desc = "Trouble [R]eference"})
    end
}
