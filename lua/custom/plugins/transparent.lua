return {
  'xiyaowong/transparent.nvim',
  lazy = false,
  config = function()
    require('transparent').setup {}
    vim.keymap.set('n', '<leader>tt', '<cmd>TransparentToggle<cr>', { desc = '[T]oggle [T]ransparent' })
  end,
}
