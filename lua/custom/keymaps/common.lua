vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'ESC' })
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', { desc = '[W]rite File' })
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>', { desc = '[Q]uit' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent Right' })
vim.keymap.set('v', '<', '<gv', { desc = 'Indent Left' })

vim.keymap.set('n', ']<space>', 'm`o<esc>``', { desc = 'Put Blank line Below' })
vim.keymap.set('n', '[<space>', 'm`O<esc>``', { desc = 'Put Blank line Above' })

vim.keymap.set('n', ']t', '<cmd>tabnext<cr>', { desc = 'Next Tab' })
vim.keymap.set('n', '[t', '<cmd>tabprev<cr>', { desc = 'Previous Tab' })
vim.keymap.set('n', '<leader>Tc', '<cmd>tabclose<cr>', { desc = 'Close [T]ab [C]urrent' })

vim.keymap.set('n', ']q', '<cmd>cnext<cr>', { desc = 'Next [Q]uickfix Item' })
vim.keymap.set('n', '[q', '<cmd>cprev<cr>', { desc = 'Previous [Q]uickfix Item' })

vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Movement Keymaps
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!"<CR>')

vim.keymap.set('i', '<C-j>', '<DOWN>')
vim.keymap.set('i', '<C-k>', '<UP>')
vim.keymap.set('i', '<C-h>', '<LEFT>')
vim.keymap.set('i', '<C-l>', '<RIGHT>')
vim.keymap.set('i', '<C-;>', '<BS>')

vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>tf', '<cmd>ToggleBufferFormatOnSave<cr>', { desc = '[T]oggle buffer [F]ormat on save' })
vim.keymap.set('n', '<leader>tF', '<cmd>ToggleFormatOnSave<cr>', { desc = '[T]oggle global [F]ormat on save' })

vim.keymap.set('n', '<leader>g', '<cmd>silent!!tmux split-window -Z "lazygit -p ' .. vim.fn.getcwd() .. '"<cr>', {
  desc = 'Open Lazy[G]it',
})
