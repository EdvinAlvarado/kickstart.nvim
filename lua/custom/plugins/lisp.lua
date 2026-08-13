return {
  {
    'julienvincent/nvim-paredit',
    ft = 'lisp',
    opts = {
      indent = {
        enable = true,
      },
    },
  },
  {
    'dundalek/parpar.nvim',
    ft = 'lisp',
    dependencies = { 'gpanders/nvim-parinfer', 'julienvincent/nvim-paredit' },
    opts = {},
  },
  {
    'monkoose/nvlime',
    ft = 'lisp',
    dependencies = { 'monkoose/parsley' },
    build = function(plugin)
      -- plugin.dir is the plugin install directory
      -- This starts the nvlime server once so Quicklisp can fetch dependencies.
      -- Adjust the Lisp command if you use a different implementation.
      local cmd = string.format('sbcl --load "%s/lisp/start-nvlime.lisp"', plugin.dir)
      vim.fn.system(cmd)
    end,
    config = function()
      vim.g.nvlime_config = {
        cmp = {
          enabled = true, -- enable nvim-cmp completion
        },
        main_window = {
          position = 'right', -- "top", "bottom", "left", or "right"
          size = 40,
        },
      }

      -- Also register the nvlime source for nvim-cmp
      require('cmp').setup.filetype({ 'lisp' }, {
        sources = {
          { name = 'nvlime' },
          { name = 'buffer' },
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
          { name = 'minuet', group_index = 1, priority = 100 },
          -- add other sources here if needed
        },
      })
    end,
  },
}
