return {
  {
    -- pest parser LSP and syntax highlighting
    -- NOTE: Requires openssl
    'pest-parser/pest.vim',
    build = 'cargo install pest-language-server',
    event = { 'BufRead *.pest' },
    dependencies = { 'williamboman/mason.nvim' },
    config = function()
      require('pest-vim').setup {}
      require('mason-lspconfig').setup_handlers {
        ['pest_ls'] = function()
          require('pest-vim').setup {}
        end,
      }
    end,
  },
}
