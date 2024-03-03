-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Quality of life keymaps
vim.keymap.set('n', ';', ':', { desc = 'Enter command mode with semicolon' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Page down and center', noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Page up and center', noremap = true })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move visual lines down', noremap = true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move visual lines up', noremap = true })
vim.keymap.set('v', '<', '<gv', { desc = 'Indent line and reselect visual mode' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent line and reselect visual mode' })

vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Esc in insert mode' })
vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Esc in insert mode' })

vim.api.nvim_create_user_command('Cppath', function()
  local path = vim.fn.fnamemodify(vim.fn.expand '%', ':.')
  vim.fn.setreg('+', path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})
vim.keymap.set('n', '<leader>y', '<cmd>Cppath<CR>', { desc = 'Yank relative path of current buffer' })

-- vim: ts=2 sts=2 sw=2 et
