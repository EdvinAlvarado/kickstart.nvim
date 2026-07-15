return {
  {
    'LhKipp/nvim-nu',
    build = ':TSInstall nu',
    event = { 'BufRead *.nu' },
    ft = 'nu',
    dependencies = { 'nvimtools/none-ls.nvim' },
    keys = {
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = true }),
    },
    opts = {},
  },
}
