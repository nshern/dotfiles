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

vim.keymap.set('n', '<leader>sf', '<CMD>Pick files<CR>', { desc = 'Pick files' })
vim.keymap.set('n', '<leader>sb', '<CMD>Pick buffers<CR>', { desc = 'Pick buffers' })
vim.keymap.set('n', '<leader>sg', '<CMD>Pick grep live<CR>', { desc = 'Pick grep' })
vim.keymap.set('n', '<leader>sg', '<CMD>Pick grep live<CR>', { desc = 'Pick grep' })

-- Open Mini files for current file location
vim.keymap.set('n', '<leader>-', '<CMD>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>')

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim.cmd 'filetype plugin on'

vim.keymap.set('n', '-', '<CMD>lua MiniFiles.open()<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', '<S-l>', '<CMD>bn<CR>', { desc = 'Jump to next buffer' })
vim.keymap.set('n', '<S-h>', '<CMD>bp<CR>', { desc = 'Jump to previous buffer' })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
  callback = function(event)
    local map = function(keys, func, desc)
      vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
    end
    map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
    map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
    map('K', vim.lsp.buf.hover, 'Hover Documentation')
    map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    map('gR', vim.lsp.buf.references, '[G]oto [R]eferences')
    local client = vim.lsp.get_client_by_id(event.data.client_id)
    if client and client.server_capabilities.documentHighlightProvider then
      vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
        buffer = event.buf,
        callback = vim.lsp.buf.document_highlight,
      })

      vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
        buffer = event.buf,
        callback = vim.lsp.buf.clear_references,
      })
    end
  end,
})
