return {
    "p00f/clangd_extensions.nvim",
    config = function()
        require("clangd_extensions").setup()

        local map = vim.api.nvim_set_keymap

        map('n', '<leader>cs', "<Cmd>ClangdSwitchSourceHeader<CR>", {
            noremap = true,
            silent = true,
            desc = "[C]langd [S]witch Source Header"
        })
        map('n', '<leader>ca', "<Cmd>ClangdAST<CR>", {
            noremap = true,
            silent = true,
            desc = "[C]langd [A]ST"
        })
        map('n', '<leader>ci', "<Cmd>ClangdSymbolInfo<CR>", {
            noremap = true,
            silent = true,
            desc = "[C]langd Symbol [I]nfo"
        })
        map('n', '<leader>ch', "<Cmd>ClangdTypeHierarchy<CR>", {
            noremap = true,
            silent = true,
            desc = "[C]langd Type [H]ierarchy"
        })
    end
}
