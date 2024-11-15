if vim.g.colors_name ~= nil then
	vim.cmd("highlight clear")
end
vim.g.colors_name = "carbon_quiet_light"

local hi = vim.api.nvim_set_hl

local comment = "#eb6200"

local black = "#000000"
local white = "#ffffff"

local red = "#a2191f"
local green = "#0e6027"
local yellow = "#684e00"
local blue = "#0043ce"
local magenta = "#6929c4"
local cyan = "#005d5d"

local bright_red = "#da1e28"
local bright_green = "#198038"
local bright_yellow = "#8e6a00"
local bright_blue = "#0f62fe"
local bright_magenta = "#8a3ffc"
local bright_cyan = "#007d79"

local gray_10 = "#f7f3f2" -- NvimLightGrey1
local gray_20 = "#e5e0df" -- NvimLightGrey2
local gray_30 = "#cac5c4" -- NvimLightGrey3
local gray_40 = "#ada8a8" -- NvimLightGrey4
local gray_50 = "#8d8d8d"
local gray_70 = "#565151" -- NvimDarkGrey4
local gray_80 = "#3c3838" -- NvimDarkGrey3
local gray_90 = "#272525" -- NvimDarkGrey2
local gray_100 = "#171414" -- NvimDarkGrey1

hi(0, "@variable", { link = Normal })
hi(0, "Added", { fg = bright_green })
hi(0, "markdownH1Delimiter", { fg = bright_blue, bold = true })
hi(0, "markdownH2Delimiter", { fg = bright_magenta, bold = true })
hi(0, "markdownH3Delimiter", { fg = bright_cyan, bold = true })
hi(0, "markdownH4Delimiter", { fg = bright_magenta, bold = true })
hi(0, "markdownH5Delimiter", { fg = bright_yellow, bold = true })
hi(0, "markdownH6Delimiter", { fg = bright_red, bold = true })
hi(0, "Changed", { fg = bright_cyan })
hi(0, "Keyword", { link = Normal })
hi(0, "ColorColumn", { bg = gray_30 })
hi(0, "Comment", { fg = comment, bold = true })
-- hi(0, "Conceal", { fg = bright.black })
hi(0, "Constant", { link = Normal })
hi(0, "CurSearch", { fg = black, bg = bright_yellow })
hi(0, "CursorColumn", { bg = gray_40 })
hi(0, "CursorLine", { bg = gray_40 })
hi(0, "Folded", { bg = gray_40, fg = black })
hi(0, "Delimiter", { link = Normal })
hi(0, "DiagnosticError", { fg = bright_red })
hi(0, "DiagnosticHint", { fg = bright_blue })
hi(0, "DiagnosticInfo", { fg = bright_cyan })
hi(0, "DiagnosticOk", { fg = bright_green })
hi(0, "DiagnosticUnderlineError", { sp = normal_red, underline = 1 })
hi(0, "DiagnosticUnderlineHint", { sp = normal_blue, underline = 1 })
hi(0, "DiagnosticUnderlineInfo", { sp = normal_cyan, underline = 1 })
hi(0, "DiagnosticUnderlineOk", { sp = normal_green, underline = 1 })
hi(0, "DiagnosticUnderlineWarn", { sp = normal_yellow, underline = 1 })
hi(0, "DiagnosticWarn", { fg = normal_yellow })
hi(0, "DiffAdd", { fg = white, bg = green })
hi(0, "DiffText", { fg = white, bg = bright_cyan })
hi(0, "DiffChange", { bg = gray_70, fg = white })
hi(0, "DiffDelete", { bg = red, fg = white })
hi(0, "Directory", { fg = normal_blue })
hi(0, "ErrorMsg", { fg = bright_red })
hi(0, "Function", { link = Normal })
hi(0, "PreProc", { link = Normal })
hi(0, "Identifier", { link = Normal })
hi(0, "LineNr", { fg = gray_50 })
hi(0, "NormalFloat", { bg = gray_20 })
hi(0, "ModeMsg", { fg = green })
hi(0, "MoreMsg", { fg = cyan })
hi(0, "Normal", { bg = gray_10, fg = black })
hi(0, "Operator", { link = Normal })
hi(0, "Pmenu", { bg = gray_30 })
hi(0, "PmenuThumb", { bg = gray_40 })
hi(0, "PmenuSel", { fg = white, bg = gray_100 })
hi(0, "Question", { fg = cyan })
hi(0, "QuickFixLine", { fg = bright_cyan })
hi(0, "Removed", { fg = bright_red })
hi(0, "Search", { bg = yellow, fg = white })
hi(0, "Special", { link = Normal })
hi(0, "SpecialKey", { fg = gray_40 })
hi(0, "NonText", { fg = gray_40 })
hi(0, "SpellBad", { sp = bright_red, undercurl = 1 })
hi(0, "SpellCap", { sp = bright_yellow, undercurl = 1 })
hi(0, "SpellLocal", { sp = bright_green, undercurl = 1 })
hi(0, "SpellRare", { sp = bright_cyan, undercurl = 1 })
hi(0, "Statement", { link = Normal })
hi(0, "StatusLine", { bg = gray_20, fg = black })
hi(0, "String", { link = Normal })
hi(0, "Title", { fg = black, bold = true })
hi(0, "Type", { link = Normal })
hi(0, "Visual", { bg = blue, fg = white, bold = true })
hi(0, "WarningMsg", { fg = bright_yellow })
