return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup {
      keymaps = {
        ['l'] = 'actions.select',
        ['h'] = 'actions.parent',
        ['<C-v>'] = {
          'actions.select',
          opts = { vertical = true },
          desc = 'Open the entry in a vertical split',
        },
        ['<C-x>'] = {
          'actions.select',
          opts = { horizontal = true },
          desc = 'Open the entry in a horizontal split',
        },
        ['q'] = 'actions.close',
      },
      view_options = {
        show_hidden = true,
      },
      float = {
        -- Padding around the floating window
        padding = 2,
        max_width = 120,
        max_height = 25,
        border = 'rounded',
      },
    }
    vim.keymap.set('n', '<leader>e', '<cmd>Oil --float<cr>', { desc = 'Open [E]xplorer' })
  end,
}
