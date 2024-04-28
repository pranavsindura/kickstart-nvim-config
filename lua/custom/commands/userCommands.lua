vim.api.nvim_create_user_command('ToggleBufferFormatOnSave', function()
  vim.b.disable_autoformat = not vim.b.disable_autoformat
end, {
  desc = 'Toggle autoformat-on-save for buffer',
})

vim.api.nvim_create_user_command('ToggleFormatOnSave', function()
  vim.g.disable_autoformat = not vim.g.disable_autoformat
end, {
  desc = 'Toggle autoformat-on-save globally',
})
