if vim.g.colors_name ~= nil then
    vim.cmd 'highlight clear'
end
vim.g.colors_name = 'system'

local hi = vim.api.nvim_set_hl

local amber = "#ffb000"
local light_amber = "#FFCC00"
local dark_amber = "#a37000"
local orange = "#FF6F1D"

local aqua = "#00ffff"
local black = "#000000"
local blue = "#0000ff"
local fuchsia = "#ff00ff"
local gray = "#808080"
local green = "#008000"
local lime = "#00ff00"
local maroon = "#800000"
local navy = "#000080"
local olive = "#808000"
local purple = "#800080"
local red = "#ff0000"
local silver = "#c0c0c0"
local teal = "#008080"
local white = "#ffffff"
local yellow = "#ffff00"

-- DARK --
-- {{{
if vim.o.background == "dark" then
    hi(0, "Comment", { fg = orange, bold = true })
    hi(0, '@string.documentation.python', { fg = green })
    hi(0, '@variable', { link = Normal })
    hi(0, 'Added', { fg = green })
    hi(0, 'Changed', { fg = teal })
    hi(0, 'ColorColumn', { bg = foreground })
    hi(0, 'Conceal', { fg = gray })
    hi(0, 'Constant', { link = Normal })
    hi(0, 'CurSearch', { fg = black, bg = "DarkOrange" })
    hi(0, 'CursorColumn', { bg = gray })
    hi(0, 'CursorLine', { bg = gray })
    hi(0, 'Delimiter', { link = Normal })
    hi(0, 'DiagnosticError', { fg = red })
    hi(0, 'DiagnosticHint', { fg = aqua })
    hi(0, 'DiagnosticInfo', { fg = fuchsia })
    hi(0, 'DiagnosticOk', { fg = green })
    hi(0, 'DiagnosticUnderlineError', { sp = red, underline = 1 })
    hi(0, 'DiagnosticUnderlineHint', { sp = aqua, underline = 1 })
    hi(0, 'DiagnosticUnderlineInfo', { sp = fuchsia, underline = 1 })
    hi(0, 'DiagnosticUnderlineOk', { sp = green, underline = 1 })
    hi(0, 'DiagnosticUnderlineWarn', { sp = yellow, underline = 1 })
    hi(0, 'DiagnosticWarn', { fg = yellow })
    hi(0, 'DiffAdd', { fg = white, bg = green })
    hi(0, 'DiffChange', { bg = gray, fg = white })
    hi(0, 'DiffDelete', { bg = gray, fg = white })
    hi(0, 'Directory', { fg = teal })
    hi(0, 'ErrorMsg', { fg = red })
    hi(0, 'Function', { link = Normal })
    hi(0, 'Identifier', { link = Normal })
    hi(0, 'LineNr', { link = Normal })
    hi(0, 'ModeMsg', { fg = green })
    hi(0, 'MoreMsg', { fg = blue })
    hi(0, 'NonText', { fg = gray })
    hi(0, 'Normal', { bg = black, fg = foreground })
    hi(0, 'Operator', { link = Normal })
    hi(0, 'Question', { fg = aqua })
    hi(0, 'QuickFixLine', { fg = aqua })
    hi(0, 'Removed', { fg = red })
    hi(0, 'Search', { bg = "orange3", fg = white })
    hi(0, 'Special', { link = Normal })
    hi(0, 'SpecialKey', { fg = gray })
    hi(0, 'SpellBad', { sp = red, undercurl = 1 })
    hi(0, 'SpellCap', { sp = yellow, undercurl = 1 })
    hi(0, 'SpellLocal', { sp = green, undercurl = 1 })
    hi(0, 'SpellRare', { sp = teal, undercurl = 1 })
    hi(0, 'Statement', { link = Normal })
    hi(0, 'StatusLine', { bg = black, fg = "orange1" })
    hi(0, 'String', { link = Normal })
    hi(0, 'Title', { link = Normal, bold = true })
    hi(0, 'Type', { link = Normal })
    hi(0, 'Visual', { bg = "orange1", fg = black })
    hi(0, 'WarningMsg', { fg = yellow })
end
-- }}}

-- LIGHt --
-- {{{
if vim.o.background == "light" then
    hi(0, '@string.documentation.python', { fg = green })
    hi(0, '@variable', { link = Normal })
    hi(0, 'Added', { fg = green })
    hi(0, 'Changed', { fg = teal })
    hi(0, 'ColorColumn', { bg = silver })
    hi(0, 'Comment', { fg = red })
    hi(0, 'Conceal', { fg = gray })
    hi(0, 'Constant', { link = Normal })
    hi(0, 'CurSearch', { fg = white, bg = "navy" })
    hi(0, 'CursorColumn', { bg = gray })
    hi(0, 'CursorLine', { bg = gray })
    hi(0, 'Delimiter', { link = Normal })
    hi(0, 'DiagnosticError', { fg = maroon })
    hi(0, 'DiagnosticHint', { fg = teal })
    hi(0, 'DiagnosticInfo', { fg = purple })
    hi(0, 'DiagnosticOk', { fg = green })
    hi(0, 'DiagnosticUnderlineError', { sp = red, underline = 1 })
    hi(0, 'DiagnosticUnderlineHint', { sp = blue, underline = 1 })
    hi(0, 'DiagnosticUnderlineInfo', { sp = fuchsia, underline = 1 })
    hi(0, 'DiagnosticUnderlineOk', { sp = green, underline = 1 })
    hi(0, 'DiagnosticUnderlineWarn', { sp = olive, underline = 1 })
    hi(0, 'DiagnosticWarn', { fg = olive })
    hi(0, 'DiffAdd', { fg = white, bg = green })
    hi(0, 'DiffChange', { bg = gray, fg = white })
    hi(0, 'DiffDelete', { bg = gray, fg = white })
    hi(0, 'Directory', { fg = teal })
    hi(0, 'ErrorMsg', { fg = red })
    hi(0, 'Function', { link = Normal })
    hi(0, 'Identifier', { link = Normal })
    hi(0, 'LineNr', { link = Normal })
    hi(0, 'ModeMsg', { fg = green })
    hi(0, 'MoreMsg', { fg = teal })
    hi(0, 'NonText', { fg = gray })
    hi(0, 'Normal', { bg = white, fg = black })
    hi(0, 'Operator', { link = Normal })
    hi(0, 'Question', { fg = blue })
    hi(0, 'QuickFixLine', { fg = blue })
    hi(0, 'Removed', { fg = red })
    hi(0, 'Search', { bg = "blue", fg = white })
    hi(0, 'Special', { link = Normal })
    hi(0, 'SpecialKey', { fg = gray })
    hi(0, 'SpellBad', { sp = maroon, undercurl = 1 })
    hi(0, 'SpellCap', { sp = olive, undercurl = 1 })
    hi(0, 'SpellLocal', { sp = green, undercurl = 1 })
    hi(0, 'SpellRare', { sp = teal, undercurl = 1 })
    hi(0, 'Statement', { link = Normal })
    hi(0, 'StatusLine', { bg = silver, fg = black })
    hi(0, 'String', { link = Normal })
    hi(0, 'Title', { fg = black, bold = true })
    hi(0, 'Type', { link = Normal })
    hi(0, 'Visual', { bg = "blue", fg = white })
    hi(0, 'WarningMsg', { fg = olive })
end
-- }}}
