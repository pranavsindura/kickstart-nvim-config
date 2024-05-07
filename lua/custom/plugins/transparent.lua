return {
  'xiyaowong/transparent.nvim',
  lazy = false,
  config = function()
    require('transparent').setup {}
    vim.cmd 'TransparentDisable'
  end,
}
