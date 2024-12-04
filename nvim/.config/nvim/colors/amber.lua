if vim.g.colors_name ~= nil then
	vim.cmd("highlight clear")
end

vim.g.colors_name = "green"

local hi = vim.api.nvim_set_hl

local foreground = "#ffb000"
local background = "#000000"
local shade_1 = "#eba200"
local shade_2 = "#d89500"
local shade_3 = "#c48700"
local shade_4 = "#b17a00"
local shade_5 = "#9d6c00"
local shade_6 = "#895f00"
local shade_7 = "#765100"
local shade_8 = "#624400"
local shade_9 = "#4e3600"
local shade_10 = "#3b2900"
local shade_11 = "#271b00"
local shade_12 = "#140e00"

local normal_black = "#000000"
local normal_red = "#990000"
local normal_green = "#00A600"
local normal_yellow = "#999900"
local normal_blue = "#0000B2"
local normal_magenta = "#B200B2"
local normal_cyan = "#00A6B2"
local normal_white = "#BFBFBF"

local bright_black = "#666666"
local bright_red = "#E50000"
local bright_green = "#00D900"
local bright_yellow = "#E5E500"
local bright_blue = "#0000FF"
local bright_magenta = "#E500E5"
local bright_cyan = "#00E5E5"
local bright_white = "#E5E5E5"

hi(0, "@variable", { link = Normal })
hi(0, "ColorColumn", { bg = shade_4 })
hi(0, "Comment", { fg = shade_8, bold = true })
hi(0, "Constant", { link = Normal })
hi(0, "Cursearch", { fg = background, bg = foreground })
hi(0, "CursorLine", { bg = shade_10, fg = foreground })
hi(0, "Delimiter", { link = Normal })
hi(0, "Function", { link = Normal })
hi(0, "Identifier", { link = Normal })
hi(0, "Linenr", { fg = shade_8 })
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
hi(0, "DiagnosticHint", { fg = bright_blue })
hi(0, "DiagnosticError", { fg = bright_red })
hi(0, "Visual", { bg = foreground, fg = background })

hi(0, "Moremsg", { link = Normal })
hi(0, "NonText", { link = Normal })
hi(0, "Question", { link = Normal })
hi(0, "Pmenu", { bg = shade_55, fg = foreground })
hi(0, "PmenuSel", { fg = "#33ff33", bg = "#000000" })
