return {
  {
    'mrcjkb/haskell-tools.nvim',
    -- To avoid being surprised by breaking changes,
    -- I recommend you set a version range
    version = '^10',
    filetypes = { 'haskell', 'lhaskell', 'cabal' },
    -- This plugin implements proper lazy-loading (see :h lua-plugin-lazy).
    -- No need for lazy.nvim to lazy-load it.
    lazy = false,
  },
  {
    'neovimhaskell/haskell-vim',
    filetypes = { 'haskell', 'lhaskell', 'cabal' },
    config = function()
      vim.g.haskell_enable_quantification = 1 -- to enable highlighting of `forall`
      vim.g.haskell_enable_recursivedo = 1 -- to enable highlighting of `mdo` and `rec`
      vim.g.haskell_enable_arrowsyntax = 1 -- to enable highlighting of `proc`
      vim.g.haskell_enable_pattern_synonyms = 1 -- to enable highlighting of `pattern`
      vim.g.haskell_enable_typeroles = 1 -- to enable highlighting of type roles
      vim.g.haskell_enable_static_pointers = 1 -- to enable highlighting of `static`
      vim.g.haskell_backpack = 1 -- to enable highlighting of backpack keywords
    end,
  },
}
