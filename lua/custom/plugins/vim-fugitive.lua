return {
  'tpope/vim-fugitive',
  event = 'VeryLazy',
  config = function()
    vim.keymap.set('n', '<leader>gg', '<cmd>tabnew +G<cr>', { desc = 'git Open Fugitive' })
  end,
}
