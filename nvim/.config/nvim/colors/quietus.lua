vim.g.colors_name = 'quietus'

if vim.o.background == "dark" then
    vim.api.nvim_set_hl(0, "Normal", {bg = "Grey0", fg = "NvimLightGrey2"})
end

if vim.o.background == "light" then
    vim.api.nvim_set_hl(0, "Normal", {bg = "Grey99", fg = "NvimDarkGrey2"})
end

vim.api.nvim_set_hl(0, "String", { link = "Normal"})
vim.api.nvim_set_hl(0, "Statement", { link = "Normal"})
vim.api.nvim_set_hl(0, "Special", { link = "Normal"})
vim.api.nvim_set_hl(0, "PreProc", { link = "Normal"})
vim.api.nvim_set_hl(0, "Identifier", { link = "Normal"})
vim.api.nvim_set_hl(0, "Function", { link = "Normal"})
