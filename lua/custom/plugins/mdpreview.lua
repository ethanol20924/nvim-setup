return {
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install && rm -f package-lock.json && git restore .",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  config = function()
    vim.keymap.set("n", "<Leader>mp", "<Plug>MarkdownPreview", { desc = "Markdown Preview" })
  end,
}
