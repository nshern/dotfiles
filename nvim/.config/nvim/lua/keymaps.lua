-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>[', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>]', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<leader>bd', '<CMD>bd<CR>', { desc = 'Delete current buffer' })
vim.keymap.set('n', '<leader>tl', '<CMD>set background=light<CR>', { desc = 'Set background to light' })
vim.keymap.set('n', '<leader>td', '<CMD>set background=dark<CR>', { desc = 'Set background to dark' })
vim.keymap.set('n', '<leader>tt', '<CMD>hi Normal guibg=NONE ctermbg=NONE<CR>', { desc = 'Set background to transparent' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

--  Switch functioanlity of { and } in order to stay consistent with j and k
-- vim.api.nvim_set_keymap('n', '{', '}', { noremap = true })
-- vim.api.nvim_set_keymap('n', '}', '{', { noremap = true })
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

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.api.nvim_buf_set_keymap(0, 'n', 'j', 'gj', { noremap = true })
    vim.api.nvim_buf_set_keymap(0, 'n', 'k', 'gk', { noremap = true })
    -- vim.keymap.set('n', '<leader>ld', '<CMD>LTeXSetLanguage<CR>da-DK<CR>', { desc = 'Change language to da-DK' })
    -- vim.keymap.set('n', '<leader>le', '<CMD>LTeXSetLanguage<CR>en-US<CR>', { desc = 'Change language to en-US' })
    -- vim.api.nvim_buf_set_keymap(0, 'n', '<leader>le', '<CMD>LTeXSetLanguage<CR>en-US<CR>', { desc = 'Change language to en-US' })
    -- vim.api.nvim_buf_set_keymap(0, 'n', '<leader>ld', '<CMD>LTeXSetLanguage<CR>da-DK<CR>', { desc = 'Change language to da-DK' })
  end,
})

-- Conceal level for markdown to hide formatting
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    vim.opt_local.conceallevel = 3
  end,
})

-- NOTE: Oil
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', '<leader>e', '<CMD>Neotree toggle<CR>', { desc = 'Open parent directory' })

-- NOTE: Bufferline
vim.keymap.set('n', '<S-l>', '<CMD>bn<CR>', { desc = 'Jump to next buffer' })
vim.keymap.set('n', '<S-h>', '<CMD>bp<CR>', { desc = 'Jump to previous buffer' })

-- Shift the block right and keep selection
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })
-- Shift the block left and keep selection
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
-- vim: ts=2 sts=2 sw=2 et
