-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
require('lazy').setup({
  require 'custom.plugins.tokyonight',
  require 'custom.plugins.gruvbox',
  require 'custom.plugins.vim-sleuth',
  require 'custom.plugins.Comment',
  require 'custom.plugins.which-key',
  require 'custom.plugins.telescope',
  require 'custom.plugins.nvim-lspconfig',
  require 'custom.plugins.conform',
  require 'custom.plugins.nvim-cmp',
  require 'custom.plugins.todo-comments',
  require 'custom.plugins.mini',
  require 'custom.plugins.nvim-treesitter',
  require 'custom.plugins.better-escape',
  require 'custom.plugins.vim-fugitive',
  require 'custom.plugins.text-case',
  require 'custom.plugins.lsp_signature',
  require 'custom.plugins.transparent',
  require 'custom.plugins.nvim-ts-autotag',
  require 'custom.plugins.nvim-ts-context-commentstring',
  require 'custom.plugins.nvim-ufo',
  require 'custom.plugins.vim-tmux-navigator',
  require 'custom.plugins.nvim-dap-vscode-js',
  require 'custom.plugins.scope',
  require 'custom.plugins.tabnine-nvim',
  require 'custom.plugins.nvim-surround',
  require 'custom.plugins.oil',
  require 'custom.plugins.flash',
  require 'kickstart.plugins.debug',
  require 'kickstart.plugins.indent_line',
  require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',
  -- require 'kickstart.plugins.neo-tree',
  require 'kickstart.plugins.gitsigns',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
