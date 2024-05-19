return {
  'NeogitOrg/neogit',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'nvim-telescope/telescope.nvim', -- optional
    {
      'sindrets/diffview.nvim',
      config = function()
        require('diffview').setup {}
        vim.keymap.set('n', '<leader>gd', function()
          vim.cmd 'DiffviewOpen'
          vim.cmd 'DiffviewToggleFiles'
        end, { desc = 'git [d]iff file history' })
      end,
    },
  },
  config = function()
    require('neogit').setup {
      auto_refresh = false,
      status = {
        recent_commit_count = 0,
      },
    }
    vim.keymap.set('n', '<leader>gg', function()
      vim.cmd 'Neogit'
    end, { desc = 'git Open Neogit' })
  end,
}
