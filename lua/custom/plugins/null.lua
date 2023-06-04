return {
  'jose-elias-alvarez/null-ls.nvim',
  ft = { 'python' },
  config = function()
    require("null-ls").setup({
      sources = {
        require("null-ls").builtins.diagnostics.mypy,
        require("null-ls").builtins.diagnostics.ruff,
        require("null-ls").builtins.completion.spell,
      },
    })
  end
}
