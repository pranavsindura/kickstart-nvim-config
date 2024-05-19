return {
  'sindrets/diffview.nvim',
  config = function()
    require('diffview').setup {}
    vim.keymap.set('n', '<leader>gd', function()
      vim.cmd 'DiffviewOpen'
      vim.cmd 'DiffviewToggleFiles'
    end, { desc = 'git [d]iff file' })
    vim.keymap.set('n', '<leader>gg', function()
      vim.cmd 'DiffviewOpen'
    end, { desc = 'git [d]iff all files' })
  end,
}
