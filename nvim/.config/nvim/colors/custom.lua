if vim.g.colors_name ~= nil then
	vim.cmd("highlight clear")
end

vim.g.colors_name = "custom"
vim.opt.termguicolors = false
vim.cmd("syntax off")

local hi = vim.api.nvim_set_hl

hi(0, "@variable", { link = Normal })
hi(0, "Comment", { ctermfg = 16, bold = true })
hi(0, "ColorColumn", { ctermfg = 16 })
hi(0, "CursorLine", { ctermbg = 1, ctermfg = 0 })
-- hi(0, "Cursearch", { fg = "#000000", bg = "#33ff33" })
-- hi(0, "Search", { fg = "#33ff33", bg = "#004700" })
hi(0, "Constant", { link = Normal })
hi(0, "Delimiter", { link = Normal })
hi(0, "Function", { link = Normal })
hi(0, "Identifier", { link = Normal })
hi(0, "Preproc", { link = Normal })
hi(0, "Linenr", { ctermfg = 16 })
hi(0, "Normal", { fg = "#33ff33" })
hi(0, "Operator", { link = Normal })
hi(0, "Special", { link = Normal })
hi(0, "Statement", { link = Normal })
hi(0, "Statusline", { link = Normal, bold = true })
hi(0, "String", { link = Normal })
hi(0, "Type", { link = Normal })
hi(0, "Visual", { ctermbg = 1, ctermfg = 0 })

hi(0, "Moremsg", { link = Normal })
hi(0, "NonText", { link = Normal })
hi(0, "Question", { link = Normal })
hi(0, "Pmenu", { ctermbg = 16, ctermfg = 0 })
hi(0, "PmenuSel", { ctermbg = 17, ctermfg = 1 })
