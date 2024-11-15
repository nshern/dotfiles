if vim.g.colors_name ~= nil then
	vim.cmd("highlight clear")
end
vim.g.colors_name = "pro"

local hi = vim.api.nvim_set_hl

-- PALETTE

local background = "#000000"
local foreground = "#F4F4F4"

normal = {
	black = "#000000",
	red = "#990000",
	green = "#00A600",
	yellow = "#999900",
	blue = "#0000B2",
	magenta = "#B200B2",
	cyan = "#00A6B2",
	white = "#BFBFBF",
}

bright = {
	black = "#666666",
	red = "#E50000",
	green = "#00D900",
	yellow = "#E5E500",
	blue = "#0000FF",
	magenta = "#E500E5",
	cyan = "#00E5E5",
	white = "#E5E5E5",
}

hi(0, "@variable", { link = Normal })
hi(0, "Added", { fg = normal.green })
hi(0, "markdownH1Delimiter", { fg = normal.cyan })
hi(0, "markdownH2Delimiter", { fg = normal.magenta })
hi(0, "markdownH3Delimiter", { fg = normal.green })
hi(0, "markdownH4Delimiter", { fg = normal.yellow })
hi(0, "Changed", { fg = normal.cyan })
hi(0, "Keyword", { link = Normal })
hi(0, "ColorColumn", { bg = bright.black })
hi(0, "Comment", { fg = bright.black, bold = true })
hi(0, "Conceal", { fg = bright.black })
hi(0, "Constant", { link = Normal })
hi(0, "CurSearch", { fg = normal.black, bg = bright.yellow })
hi(0, "CursorColumn", { bg = normal.white })
hi(0, "CursorLine", { bg = normal.whote })
hi(0, "Delimiter", { link = Normal })
hi(0, "DiagnosticError", { fg = bright.red })
hi(0, "DiagnosticHint", { fg = bright.cyan })
hi(0, "DiagnosticInfo", { fg = bright.blue })
hi(0, "DiagnosticOk", { fg = bright.green })
hi(0, "DiagnosticUnderlineError", { sp = bright.red, underline = 1 })
hi(0, "DiagnosticUnderlineHint", { sp = bright.cyan, underline = 1 })
hi(0, "DiagnosticUnderlineInfo", { sp = bright.blue, underline = 1 })
hi(0, "DiagnosticUnderlineOk", { sp = bright.green, underline = 1 })
hi(0, "DiagnosticUnderlineWarn", { sp = bright.yellow, underline = 1 })
hi(0, "DiagnosticWarn", { fg = bright.yellow })
hi(0, "DiffAdd", { fg = bright.white, bg = bright.gray })
-- hi(0, "DiffChange", { bg = palette.gray[100], fg = palette.white })
-- hi(0, "DiffDelete", { bg = palette.gray[100], fg = palette.white })
-- hi(0, "Directory", { fg = palette.cyan[50] })
-- hi(0, "ErrorMsg", { fg = palette.red[50] })
hi(0, "Function", { link = Normal })
hi(0, "Identifier", { link = Normal })
-- hi(0, "LineNr", { fg = palette.gray[50] })
-- hi(0, "ModeMsg", { fg = palette.green[40] })
-- hi(0, "MoreMsg", { fg = palette.cyan[40] })
-- hi(0, "NonText", { fg = palette.gray[70] })
hi(0, "Normal", { fg = foreground, bg = background })
hi(0, "Operator", { link = Normal })
-- hi(0, "Pmenu", { bg = palette.gray[90] })
-- hi(0, "PmenuSel", { fg = palette.black, bg = palette.green[40] })
-- hi(0, "Question", { fg = palette.cyan[40] })
-- hi(0, "QuickFixLine", { fg = palette.teal[40] })
-- hi(0, "Removed", { fg = palette.red[50] })
-- hi(0, "Search", { bg = palette.yellow[70], fg = palette.white })
hi(0, "Special", { link = Normal })
-- hi(0, "SpecialKey", { fg = palette.gray[70] })
hi(0, "SpellBad", { sp = bright.red, undercurl = 1 })
hi(0, "SpellCap", { sp = bright.yellow, undercurl = 1 })
-- hi(0, "SpellLocal", { sp = palette.green[40], undercurl = 1 })
-- hi(0, "SpellRare", { sp = palette.teal[40], undercurl = 1 })
hi(0, "Statement", { link = Normal })
-- hi(0, "StatusLine", { bg = palette.gray[90], fg = palette.white })
hi(0, "String", { link = Normal })
hi(0, "Title", { link = Normal })
hi(0, "Type", { link = Normal })
hi(0, "Visual", { bg = bright.blue, fg = bright.white })
-- hi(0, "WarningMsg", { fg = palette.yellow[30] })
