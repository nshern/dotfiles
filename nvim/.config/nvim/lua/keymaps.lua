vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>[', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>]', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<leader>bd', '<CMD>bd<CR>', { desc = 'Delete current buffer' })
vim.keymap.set('n', '<leader>tl', '<CMD>set background=light<CR>', { desc = 'Set background to light' })
vim.keymap.set('n', '<leader>td', '<CMD>set background=dark<CR>', { desc = 'Set background to dark' })
vim.keymap.set('n', '<leader>tt', '<CMD>hi Normal guibg=NONE ctermbg=NONE<CR>', { desc = 'Set background to transparent' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move"<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

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
  end,
})

vim.keymap.set('n', '-', '<CMD>lua MiniFiles.open()<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', '<S-l>', '<CMD>bn<CR>', { desc = 'Jump to next buffer' })
vim.keymap.set('n', '<S-h>', '<CMD>bp<CR>', { desc = 'Jump to previous buffer' })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
