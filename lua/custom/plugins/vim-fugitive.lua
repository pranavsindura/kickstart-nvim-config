return {
  'tpope/vim-fugitive',
  event = 'VeryLazy',
  config = function()
    vim.keymap.set('n', '<leader>gg', '<cmd>tabnew +G<cr><cmd>resize 15<cr>', { desc = 'git Open Fugitive' })
  end,
}
