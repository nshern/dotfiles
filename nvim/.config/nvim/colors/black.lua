vim.cmd.highlight("clear")
vim.g.colors_name = "pike"

--
local black = "#000000"

local blue_40 = "#78a9ff"
local blue_50 = "#4589ff"
local blue_60 = "#0f62fe"
local blue_70 = "#0043ce"
local blue_80 = "#002d9c"
local blue_90 = "#001d6c"
local blue_100 = "#001141"
local gray_100 = "#161616"
local gray_20 = "#e0e0e0"
local gray_30 = "#c6c6c6"
local gray_50 = "#8d8d8d"
local gray_60 = "#6f6f6f"
local gray_70 = "#525252"
local gray_80 = "#393939"
local gray_90 = "#262626"
local green_50 = "#24a148"
local green_60 = "#198038"
local magenta_60 = "#d02670"
local magenta_50 = "#ee5396"
local orange_80 = "#5e2900"
local red_50 = "#fa4d56"
local teal_30 = "#3ddbd9"
local teal_60 = "#007d79"
local teal_70 = "#005d5d"
local teal_80 = "#004144"
local white = "#ffffff"
local yellow_30 = "#f1c21b"
local yellow_40 = "#d2a106"
local yellow_70 = "#684e00"

vim.api.nvim_set_hl(0, "@variable", { link = Normal })
vim.api.nvim_set_hl(0, "Comment", { fg = gray_70 })
vim.api.nvim_set_hl(0, "Conceal", { bg = gray_70 })
vim.api.nvim_set_hl(0, "Constant", {})
vim.api.nvim_set_hl(0, "CurSearch", { bg = yellow_30, fg = black })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = gray_70 })
vim.api.nvim_set_hl(0, "Cursorline", { bg = gray_100 })
vim.api.nvim_set_hl(0, "Delimiter", { link = Normal })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = red_50 })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = blue_50 })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = red_50 })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = yellow_40 })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = yellow_40 })
vim.api.nvim_set_hl(0, "Directory", { fg = gray_50 })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = red_50 })
vim.api.nvim_set_hl(0, "Function", { link = Normal })
vim.api.nvim_set_hl(0, "Identifier", { link = Normal })
vim.api.nvim_set_hl(0, "Linenr", { fg = gray_70 })
vim.api.nvim_set_hl(0, "MatchParen", { fg = magenta_60, bold = true })
vim.api.nvim_set_hl(0, "NoneText", { fg = gray_70 })
vim.api.nvim_set_hl(0, "Normal", {})
vim.api.nvim_set_hl(0, "Operator", { link = Normal })
vim.api.nvim_set_hl(0, "Pmenu", { bg = gray_80 })
vim.api.nvim_set_hl(0, "Pmenusel", { bg = gray_70, bold = true })
vim.api.nvim_set_hl(0, "PreProc", { link = Normal })
vim.api.nvim_set_hl(0, "Question", { fg = teal_30 })
vim.api.nvim_set_hl(0, "Quickfixline", { link = Question })
vim.api.nvim_set_hl(0, "Search", { bg = yellow_70, fg = white })
vim.api.nvim_set_hl(0, "SignColumn", { link = Normal })
vim.api.nvim_set_hl(0, "Special", { link = Normal })
vim.api.nvim_set_hl(0, "SpecialKey", { bg = gray_70 })
vim.api.nvim_set_hl(0, "Spellbad", { link = DiagnosticUnderlineError })
vim.api.nvim_set_hl(0, "Statement", { link = Normal })
vim.api.nvim_set_hl(0, "Statusline", { fg = gray_30, bg = gray_100, bold = true })
vim.api.nvim_set_hl(0, "String", { link = Normal })
vim.api.nvim_set_hl(0, "Title", { link = Normal })
vim.api.nvim_set_hl(0, "Type", { link = Normal })
vim.api.nvim_set_hl(0, "Visual", { bg = blue_80 })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = yellow_30 })
