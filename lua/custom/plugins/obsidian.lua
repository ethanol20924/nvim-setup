return {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim"

    },
    opts = {
        workspaces = {{name = "Personal", path = "~/Vaults/Personal"}},

        follow_url_func = function(url)
            -- Open the URL in the default web browser.
            vim.fn.jobstart({"open", url}) -- Mac OS
            -- vim.fn.jobstart({"xdg-open", url})  -- linux
        end

    }
}
