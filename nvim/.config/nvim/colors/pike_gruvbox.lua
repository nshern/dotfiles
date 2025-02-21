vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end


vim.g.colors_name = "pike_gruvbox"

local palette = {
    bg_0 = "#282828",
    bg0_h = "#1d2021",
    bg0 = "#282828",
    bg1 = "#3c3836",
    bg2 = "#504945",
    bg3 = "#665c54",
    bg4 = "#7c6f64",
    gray = "#928374",
    red_1 = "#cc241d",
    green_2 = "#98971a",
    yellow_3 = "#d79921",
    blue_4 = "#458588",
    purple_5 = "#b16286",
    aqua_6 = "#689d6a",
    gray_7 = "#a89984",
    gray_8 = "#928394",
    red_9 = "#fb4934",
    green_10 = "#b8bb26",
    yellow_11 = "#fabd2f",
    blue_12 = "#83a598",
    purple_13 = "#d3869b",
    aqua_14 = "#8ec07c",
    fg_15 = "#ebdbb2",
    orange = "#d65d0e",
    bg0_s = "#32302f",
    orange_bright = "#fe8019",
}

vim.api.nvim_set_hl(0, "@variable", { link = Normal })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = palette.bg2 })
vim.api.nvim_set_hl(0, "Comment", { fg = "#3c3836", bold = true })
-- vim.api.nvim_set_hl(0, "Conceal", { bg = palette.bg2 })
vim.api.nvim_set_hl(0, "Constant", {})
vim.api.nvim_set_hl(0, "CurSearch", { bg = palette.yellow_11, fg = palette.black })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = palette.bg4 })
vim.api.nvim_set_hl(0, "Cursorline", { bg = palette.bg0 })
vim.api.nvim_set_hl(0, "Delimiter", { link = Normal })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = palette.red_9 })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = palette.blue_12 })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = palette.aqua_14 })
vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = palette.red_9 })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = palette.blue_12 })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = palette.red_9 })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = palette.yellow_11 })
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = palette.bg2 })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = palette.yellow_11 })
vim.api.nvim_set_hl(0, "Directory", { fg = palette.blue_12 })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = palette.red_9 })
vim.api.nvim_set_hl(0, "Function", {fg = "#83a598"})
vim.api.nvim_set_hl(0, "Identifier", { link = Normal })
vim.api.nvim_set_hl(0, "Linenr", { fg = palette.bg1 })
vim.api.nvim_set_hl(0, "Changed", { fg = palette.blue_12 })
vim.api.nvim_set_hl(0, "Added", { fg = palette.green_10 })
vim.api.nvim_set_hl(0, "Removed", { fg = palette.red_9 })
vim.api.nvim_set_hl(0, "MatchParen", { fg = palette.purple_13, bold = true })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = palette.aqua_14 })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = palette.green_10 })
vim.api.nvim_set_hl(0, "NoneText", { fg = palette.gray_7 })
vim.api.nvim_set_hl(0, "Normal", {})
vim.api.nvim_set_hl(0, "NormalFloat", { bg = palette.gray_7 })
vim.api.nvim_set_hl(0, "Operator", { link = Normal })
vim.api.nvim_set_hl(0, "Pmenu", { bg = palette.bg0 })
vim.api.nvim_set_hl(0, "Pmenusel", { bg = palette.bg4, bold = true })
vim.api.nvim_set_hl(0, "PreProc", {fg = "#8ec07c"})
vim.api.nvim_set_hl(0, "Question", { fg = palette.aqua_14 })
vim.api.nvim_set_hl(0, "Quickfixline", { link = Question })
vim.api.nvim_set_hl(0, "Search", { bg = palette.yellow_3, fg = palette.fg0 })
vim.api.nvim_set_hl(0, "SignColumn", { link = Normal })
vim.api.nvim_set_hl(0, "Special", { link = Normal })
-- vim.api.nvim_set_hl(0, "SpecialKey", { bg = palette.gray_70 })
vim.api.nvim_set_hl(0, "Spellbad", { link = DiagnosticUnderlineError })
vim.api.nvim_set_hl(0, "Statement", { fg = "#d65d0e" })
-- vim.api.nvim_set_hl(0, "Statusline", { fg = palette.gray_30, bg = palette.gray_100 })
vim.api.nvim_set_hl(0, "String", {fg = "#b8bb26"})
vim.api.nvim_set_hl(0, "Title", { bold = true })
vim.api.nvim_set_hl(0, "Title", { link = Normal })
vim.api.nvim_set_hl(0, "Type", { link = Normal })
vim.api.nvim_set_hl(0, "Visual", { bg = palette.blue_4 })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = palette.yellow_11 })
