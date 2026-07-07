---@type vim.lsp.Config
return {
  ---@type lspconfig.settings.tinymist
  settings = {
    tinymist = {
      exportPdf = 'onType',
      lint = { enabled = true, when = 'onType' },
    },
  },
}
