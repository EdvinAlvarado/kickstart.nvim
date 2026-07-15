return {
  {
    -- zig file detection and syntaz highlighing
    'ziglang/zig.vim',
    event = { 'BufRead *.zig' },
    ft = 'zig',
    keys = {
      vim.keymap.set('n', '<c-b>', '<cmd>w<cr>' .. '<cmd>compiler zig_build<cr>'),
      vim.keymap.set('n', '<c-t>', '<cmd>w<cr>' .. '<cmd>compiler zig_test<cr>'),
      vim.keymap.set('n', '<c-r>', '<cmd>w<cr>' .. '<cmd>compiler zig_build_exe<cr>'),
    },
  },
}
