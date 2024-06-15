return {
  'voldikss/vim-floaterm',
  config = function()
    vim.keymap.set('n', '<leader>lg', '<cmd>FloatermNew --width=0.85 --height=0.85 --title=lazygit lazygit<cr>', { desc = 'Open [l]azy [g]it' })
    vim.keymap.set({ 'n', 't' }, '<C-f>', '<cmd>FloatermToggle<cr>', { desc = 'Toggle Floaterm' })
  end,
}
