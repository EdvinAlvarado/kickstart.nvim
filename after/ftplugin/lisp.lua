vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lisp', 'scheme', 'clojure', 'fennel' },
  callback = function()
    local opts = { buffer = true, silent = true }
    -- Indentation (Lisp convention: 2 spaces, no tabs)
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.lisp = true -- enables Lisp-style indentation
    vim.opt_local.foldmethod = 'expr'
    vim.opt_local.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
  end,
})
