-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mkdp_theme = "light"
vim.o.cursorline = false
-- vim.opt.background = "dark"
vim.opt.termguicolors = true

vim.opt.spelllang = { "en", "da" }
vim.g.neobones = { darkness = "stark", transparent_background = true, lighten_non_text = 60, lighten_comments = 60 }
vim.g.zenbones = { transparent_background = true }

vim.g.gruvbox_material_background = "hard"
