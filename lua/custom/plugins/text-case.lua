return {
  'johmsalas/text-case.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require('textcase').setup {}
    require('telescope').load_extension 'textcase'

    vim.keymap.set('n', '<leader>lc', '<cmd>TextCaseOpenTelescope<CR>', { desc = '[L]SP Variable [C]ase Change' })
    vim.keymap.set('v', '<leader>lc', '<cmd>TextCaseOpenTelescope<CR>', { desc = '[L]SP Variable [C]ase Change' })
  end,
  event = 'VeryLazy',
}
