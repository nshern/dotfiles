-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- This file is automatically loaded by lazyvim.config.init.

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Set formatoptions when entering a buffer
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("set_formatoptions"),
  callback = function()
    vim.cmd([[set formatoptions-=cro]])
  end,
})
