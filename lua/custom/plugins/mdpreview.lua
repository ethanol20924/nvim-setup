return {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install && rm -f package-lock.json && git restore .",
    init = function() vim.g.mkdp_filetypes = {"markdown"} end,
    config = function()
        vim.cmd([[
function OpenMarkdownPreview (url)
    execute "silent ! open -a Firefox -n --args --new-window " . a:url
endfunction
]])
        vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'
        vim.keymap.set("n", "<Leader>mp", "<Plug>MarkdownPreview",
                       {desc = "[M]arkdown [P]review"})
    end
}
