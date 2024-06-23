return {
  'voldikss/vim-floaterm',
  event = 'VeryLazy',
  config = function()
    vim.keymap.set('n', '<leader>gg', '<cmd>FloatermNew --width=0.85 --height=0.85 --title=lazygit lazygit<cr>', { desc = 'Open Lazy[g]it' })
    vim.keymap.set({ 'n', 't' }, '<C-f>', '<cmd>FloatermToggle term<cr>', { desc = 'Toggle Floaterm' })
  end,
}
