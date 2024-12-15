vim.cmd.highlight("clear")
vim.g.colors_name = "green"

local hi = function(name, val)
	-- Force links
	val.force = true

	-- Make sure that `cterm` attribute is not populated from `gui`
	val.cterm = val.cterm or {}

	-- Define global highlight
	vim.api.nvim_set_hl(0, name, val)
end

vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#0087d7" })
vim.api.nvim_set_hl(0, "Title", { bold = true })
vim.api.nvim_set_hl(0, "Normal", { fg = "#33ff00" })
-- vim.api.nvim_set_hl(0, "Comment", { fg = "" })
vim.api.nvim_set_hl(0, "Identifier", { link = Normal })
vim.api.nvim_set_hl(0, "String", { link = Normal })
vim.api.nvim_set_hl(0, "Delimiter", { link = Normal })
vim.api.nvim_set_hl(0, "Operator", { link = Normal })
vim.api.nvim_set_hl(0, "Function", { link = Normal })
vim.api.nvim_set_hl(0, "Special", { link = Normal })
vim.api.nvim_set_hl(0, "Statement", { link = Normal })
vim.api.nvim_set_hl(0, "Constant", { link = Normal })
vim.api.nvim_set_hl(0, "@variable", { link = Normal })
vim.api.nvim_set_hl(0, "Statusline", { fg = "#33ff00", bg = "#000000" })
vim.api.nvim_set_hl(0, "markdownH1Delimiter", { fg = "#d7005f", bold = true })
vim.api.nvim_set_hl(0, "markdownH2Delimiter", { fg = "#00af5f", bold = true })
vim.api.nvim_set_hl(0, "markdownH3Delimiter", { fg = "#d78700", bold = true })
vim.api.nvim_set_hl(0, "markdownH4Delimiter", { fg = "#0087d7", bold = true })
vim.api.nvim_set_hl(0, "markdownH5Delimiter", { fg = "#d787d7", bold = true })
vim.api.nvim_set_hl(0, "markdownH6Delimiter", { fg = "#00afaf", bold = true })