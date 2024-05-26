return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup {
      keymaps = {
        ['L'] = 'actions.select',
        ['<C-v>'] = 'actions.select_vsplit',
        ['<C-x>'] = 'actions.select_split',
        ['<C-p>'] = 'actions.preview',
        ['q'] = 'actions.close',
        ['R'] = 'actions.refresh',
        ['H'] = 'actions.parent',
      },
    }
    vim.keymap.set('n', '<leader>e', '<CMD>Oil --float<CR>', { desc = 'Open [E]xplorer' })
  end,
}
