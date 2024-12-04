if vim.g.colors_name ~= nil then
	vim.cmd("highlight clear")
end

vim.g.colors_name = "green"

local hi = vim.api.nvim_set_hl

vim.cmd.colorscheme("quiet")

local foreground = "#33ff33"
local background = "#000000"
local shade_1 = "#00d000"
local shade_2 = "#00a900"
local shade_3 = "#008100"
local shade_4 = "#005a00"
local shade_5 = "#003300"
local shade_55 = "#001f00"
local shade_6 = "#000c00"

hi(0, "@variable", { link = Normal })
hi(0, "ColorColumn", { bg = shade_4 })
hi(0, "Comment", { fg = shade_4, bold = true })
hi(0, "Constant", { link = Normal })
hi(0, "Cursearch", { fg = background, bg = foreground })
hi(0, "CursorLine", { bg = foreground, fg = background })
hi(0, "Delimiter", { link = Normal })
hi(0, "Function", { link = Normal })
hi(0, "Identifier", { link = Normal })
hi(0, "Linenr", { fg = shade_4 })
hi(0, "Normal", { fg = foreground })
hi(0, "Operator", { link = Normal })
hi(0, "Preproc", { link = Normal })
hi(0, "Search", { fg = foreground, bg = shade_4, bold = true })
hi(0, "Special", { link = Normal })
hi(0, "Statement", { link = Normal })
hi(0, "Statusline", { link = Normal, bold = true })
hi(0, "String", { link = Normal })
hi(0, "Title", { link = Normal })
hi(0, "Type", { link = Normal })
hi(0, "ErrorMsg", { link = Normal })
hi(0, "DiagnosticHint", { fg = shade_3 })
hi(0, "Visual", { bg = "#33ff33", fg = "#000000" })

hi(0, "Moremsg", { link = Normal })
hi(0, "NonText", { link = Normal })
hi(0, "Question", { link = Normal })
hi(0, "Pmenu", { bg = shade_55, fg = foreground })
hi(0, "PmenuSel", { fg = "#33ff33", bg = "#000000" })
