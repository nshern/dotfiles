vim.cmd([[autocmd FileType go nnoremap <buffer> <leader>w :write<CR>:silent !gofmt -w %<CR>]])

-- vim.cmd([[autocmd FileType markdown nnoremap <buffer> <leader>w :write<CR>:silent !prettier -w %<CR>]])
