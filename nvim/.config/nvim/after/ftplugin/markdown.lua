vim.keymap.set('n', '<leader>md', '<CMD>LTeXSetLanguage<CR>da-DK<CR>', { desc = 'Change language to da-DK' })
vim.keymap.set('n', '<leader>me', '<CMD>LTeXSetLanguage<CR>en-US<CR>', { desc = 'Change language to en-US' })
vim.keymap.set('v', '<leader>mc', ':s/\\%V.//gn<CR>', { silent = true, desc = 'Count characters' })
