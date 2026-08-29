-- ~/.config/nvim/ftdetect/pest.lua
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.pest',
  callback = function()
    vim.bo.filetype = 'pest'
  end,
})
