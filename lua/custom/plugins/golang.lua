return {
  --{
  -- Adds go language support: e.g.
  -- :GoBuild
  -- :GoTest
  -- :GoInstall
  -- :GoRun
  -- Requires gopls
  --  'fatih/vim-go',
  --  build = ':GoUpdateBinaries',
  --  event = {"BufRead *.go"},
  --  config = function()
  --    vim.g.go_def_mode = 'gopls'
  --    vim.g.go_info_mode = 'gopls'
  --    vim.g.go_gopls_enabled = 0
  --  end,
  --},
  {
    'ray-x/go.nvim',
    event = { 'BufRead *.go' },
    ft = { 'go', 'gomod' },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
    dependencies = { -- optional packages
      'ray-x/guihua.lua',
      'neovim/nvim-lspconfig',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('go').setup()
      require('go.format').goimport() -- goimport + gofmt

      -- Run gofmt + goimport on save
      local format_sync_grp = vim.api.nvim_create_augroup('GoImport', {})
      vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = '*.go',
        callback = function()
          require('go.format').goimport()
        end,
        group = format_sync_grp,
      })
    end,
  },
}
