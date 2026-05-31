vim.keymap.set('n', '<c-r>', '<cmd>w<cr>' .. '<cmd>!cargo run<cr>')
vim.keymap.set('n', '<c-t>', '<cmd>w<cr>' .. '<cmd>!cargo test<cr>')
vim.keymap.set('n', '<c-c>', 'I// <esc>')
vim.keymap.set('n', '<c-x>', '<home>xxx')
vim.keymap.set('n', '<c-b>', '<cmd>w<cr>' .. '<cmd>!cargo build<cr>')

local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set('n', '<leader>a', function()
  vim.cmd.RustLsp 'codeAction' -- supports rust-analyzer's grouping
  -- or vim.lsp.buf.codeAction() if you don't want grouping.
end, { silent = true, buffer = bufnr })
vim.keymap.set(
  'n',
  'K', -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp { 'hover', 'actions' }
  end,
  { silent = true, buffer = bufnr }
)
