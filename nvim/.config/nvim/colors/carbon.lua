vim.cmd.highlight("clear")
vim.g.colors_name = "carbon"

-- local hi = function(name, val)
-- 	-- Force links
-- 	val.force = true
--
-- 	-- Make sure that `cterm` attribute is not populated from `gui`
-- 	val.cterm = val.cterm or {}
--
-- 	-- Define global highlight
-- 	vim.api.nvim_set_hl(0, name, val)
-- end

vim.api.nvim_set_hl(0, "Title", { bold = true })
vim.api.nvim_set_hl(0, "Normal", { fg = "#c6c6c6" })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#fa4d56" })
vim.api.nvim_set_hl(0, "DiagnosticWarning", { fg = "#d2a106" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#4589ff" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#0e6027", bold = true })
vim.api.nvim_set_hl(0, "Identifier", { link = Normal })
vim.api.nvim_set_hl(0, "String", { link = Normal })
vim.api.nvim_set_hl(0, "Delimiter", { link = Normal })
vim.api.nvim_set_hl(0, "Operator", { link = Normal })
vim.api.nvim_set_hl(0, "Type", { link = Normal })
vim.api.nvim_set_hl(0, "Function", { link = Normal })
vim.api.nvim_set_hl(0, "Special", { link = Normal })
vim.api.nvim_set_hl(0, "Statement", { link = Normal })
vim.api.nvim_set_hl(0, "Constant", {})
vim.api.nvim_set_hl(0, "@variable", { link = Normal })
vim.api.nvim_set_hl(0, "Statusline", { fg = "#c6c6c6", bg = "#262626" })
vim.api.nvim_set_hl(0, "Linenr", { fg = "#525252" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#d2a106", fg = "#000000" })
vim.api.nvim_set_hl(0, "MatchParen", { fg = "#ee5396", bold = true })

-- vim.api.nvim_set_hl(0, "markdownH1Delimiter", { fg = "#d7005f", bold = true })
-- vim.api.nvim_set_hl(0, "markdownH2Delimiter", { fg = "#00af5f", bold = true })
-- vim.api.nvim_set_hl(0, "markdownH3Delimiter", { fg = "#d78700", bold = true })
-- vim.api.nvim_set_hl(0, "markdownH4Delimiter", { fg = "#0087d7", bold = true })
-- vim.api.nvim_set_hl(0, "markdownH5Delimiter", { fg = "#d787d7", bold = true })
-- vim.api.nvim_set_hl(0, "markdownH6Delimiter", { fg = "#00afaf", bold = true })
