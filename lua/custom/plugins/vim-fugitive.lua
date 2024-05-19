return {
  'tpope/vim-fugitive',
  event = 'VeryLazy',
  config = function()
    vim.keymap.set('n', '<leader>gg', function()
      vim.cmd 'G'
    end, { desc = 'git Open Fugitive' })
  end,
}
