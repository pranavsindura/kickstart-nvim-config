return {
  'sindrets/diffview.nvim',
  config = function()
    require('diffview').setup {}
    vim.keymap.set('n', '<leader>hd', function()
      vim.cmd 'DiffviewOpen'
    end, { desc = 'git [d]iff against index' })
  end,
}
