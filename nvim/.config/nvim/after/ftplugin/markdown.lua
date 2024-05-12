vim.keymap.set('n', '<leader>ld', '<CMD>LTeXSetLanguage<CR>da-DK<CR>', { desc = 'Change language to da-DK' })
vim.keymap.set('n', '<leader>le', '<CMD>LTeXSetLanguage<CR>en-US<CR>', { desc = 'Change language to en-US' })
vim.keymap.set('v', '<leader>lc', ':s/\\%V.//gn<CR>', { silent = true, desc = 'Count characters' })