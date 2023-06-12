-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd([[ autocmd FileType markdown setlocal spell ]])
local o = vim.opt
o.spelllang = { "en", "da" }
-- o.spell = true

vim.api.nvim_exec(
  [[
  augroup MarkdownSettings
    autocmd!
    autocmd FileType markdown setlocal wrap linebreak nolist
  augroup END
]],
  false
)
