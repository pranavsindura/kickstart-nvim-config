-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('VimLeavePre', {
  desc = 'Save session on close',
  group = vim.api.nvim_create_augroup('custom_mini_sessions_auto_save', { clear = true }),
  callback = function()
    local miniSessions = require 'mini.sessions'
    miniSessions.write(vim.fn.fnamemodify(vim.fn.getcwd(), ':t'))
  end,
})
