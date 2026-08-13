return {
  {
    'github/copilot.vim',
    enabled = true,
    lazy = false,
    cmd = 'Copilot',
    keys = {},
  },
  {
    'olimorris/codecompanion.nvim',
    enabled = true,
    event = 'VeryLazy',
    version = '^19',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      {
        'MeanderingProgrammer/render-markdown.nvim',
        ft = { 'markdown', 'codecompanion' },
      },
      {
        'HakonHarnes/img-clip.nvim',
        opts = {
          filetypes = {
            codecompanion = {
              prompt_for_file_name = false,
              template = '[Image]($FILE_PATH)',
              use_absolute_path = true,
            },
          },
        },
      },
    },
    keys = {
      vim.keymap.set({ 'n', 'v' }, '<C-a>', '<cmd>CodeCompanionActions<cr>', { noremap = true, silent = true }),
      vim.keymap.set({ 'n', 'v' }, '<LocalLeader>a', '<cmd>CodeCompanionChat Toggle<cr>', { noremap = true, silent = true }),
      vim.keymap.set('v', 'ga', '<cmd>CodeCompanionChat Add<cr>', { noremap = true, silent = true }),
      vim.keymap.set({ 'n', 'v' }, '<LocalLeader>c', '<cmd>CodeCompanion<cr>', { noremap = true, silent = true }),
    },
    opts = {
      mcp = {
        servers = {
          ['kagi-search'] = {
            cmd = { 'uvx', 'kagimcp' },
          },
        },
      },
    },
  },
}
