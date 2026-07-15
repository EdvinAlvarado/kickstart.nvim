return {
  {
    -- Cargo crate versions and features
    'saecki/crates.nvim',
    event = { 'BufRead Cargo.toml' },
    tag = 'stable',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
  },
  {
    'mrcjkb/rustaceanvim',
    enabled = false, -- Conflicts with nvim-lspconfig. Looks cool but IDK if I needed and I can't seem to be capable of disabling the lspconfig rust_analyzer
    -- To avoid being surprised by breaking changes,
    -- I recommend you set a version range
    version = '^9',
    -- This plugin implements proper lazy-loading (see :h lua-plugin-lazy).
    -- No need for lazy.nvim to lazy-load it.
    lazy = false,
  },
}
