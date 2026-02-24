vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "aardvarkblue"

local black = "#191919"
local red = "#aa342e"
local green = "#4b8c0f"
local yellow = "#dbba00"
local blue = "#1370d3"
local purple = "#c43ac3"
local cyan = "#008eb0"
local white = "#bebebe"
local brightBlack = "#525252"
local brightRed = "#f05b50"
local brightGreen = "#95dc55"
local brightYellow = "#ffe763"
local brightBlue = "#60a4ec"
local brightPurple = "#e26be2"
local brightCyan = "#60b6cb"
local brightWhite = "#f7f7f7"
local background = "#102040"
local foreground = "#dddddd"
local cursorColor = "#007acc"
local selectionBackground = "#bfdbfe"
local cursorLine = "#101c36"
local Visual = "#373f5d"

local theme

theme = {
	Added = { link = "String" },
	Comment = { fg = brightBlack },
	CurSearch = { bg = brightYellow, fg = black },
	CursorLine = { bg = cursorLine },
	DiagnosticError = { fg = brightRed },
	DiagnosticHint = { fg = brightBlue },
	DiagnosticOk = { fg = brightGreen },
	DiagnosticWarn = { fg = brightYellow },
	DiagnosticInfo = { fg = brightCyan },
	DiagnosticVirtualTextHint = { fg = brightBlue, italic = true },
	DiagnosticVirtualTextWarn = { fg = brightYellow, italic = true },
	Directory = { fg = brightCyan },
	MoreMsg = { link = "Directory" },
	Question = { link = "Directory" },
	ErrorMsg = { fg = red },
	Removed = { link = "ErrorMsg" },
	Function = { fg = brightCyan },
	Identifier = { fg = brightBlue },
	LineNr = { fg = yellow },
	CursorLineNr = { fg = yellow, bold = true },
	MatchParen = { fg = purple },
	-- MiniJump2dSpot = { bg = xterm_028, fg = xterm_000, bold = true },
	ModeMsg = { fg = brightGreen },
	NonText = { link = "Comment" },
	-- Normal = { bg = xterm_233, fg = xterm_254 },
	Normal = { fg = foreground, bg = background },
	Constant = { link = "Normal" },
	Delimiter = { link = "Normal" },
	Operator = { link = "Normal" },
	Type = { link = "Normal" },
	["@variable"] = { link = "Normal" },
	OkMsg = { link = "String" },
	Pmenu = { bg = white, fg = black },
	PmenuSBar = { bg = "#8a8a8a" },
	PmenuSel = { bg = "#0000af", fg = brightWhite },
	-- PmenuThumb = { bg = xterm_241 },
	-- Search = { bg = xterm_058, fg = xterm_254 },
	Special = { fg = brightCyan },
	Statement = { fg = brightPurple },
	Statusline = { bg = white, fg = black, bold = true },
	String = { fg = brightGreen },
	Visual = { bg = Visual },
	WarningMsg = { fg = yellow },
	-- ["Title"] = { bg = xterm_027, fg = xterm_184, bold = true },
	-- ["@boolean.python"] = { fg = xterm_202, bold = true },
	-- ["@markup.heading.2.markdown"] = { fg = xterm_027, bold = true },
	-- ["@markup.heading.3.markdown"] = { link = "@markup.heading.2.markdown" },
	-- ["@markup.heading.4.markdown"] = { link = "@markup.heading.2.markdown" },
	-- ["@markup.heading.5.markdown"] = { link = "@markup.heading.2.markdown" },
	-- ["@markup.heading.6.markdown"] = { link = "@markup.heading.2.markdown" },
	-- ["@markup.raw.markdown_inline"] = { bg = xterm_236 },
}

for group, hl in pairs(theme) do
	vim.api.nvim_set_hl(0, group, hl)
end

-- vim.g.terminal_color_0 = xterm_000
-- vim.g.terminal_color_1 = xterm_160
-- vim.g.terminal_color_2 = xterm_40
-- vim.g.terminal_color_3 = xterm_184
-- vim.g.terminal_color_4 = xterm_027
-- vim.g.terminal_color_5 = xterm_164
-- vim.g.terminal_color_6 = xterm_044
-- vim.g.terminal_color_7 = xterm_254
-- vim.g.terminal_color_8 = xterm_059
-- vim.g.terminal_color_9 = xterm_009
-- vim.g.terminal_color_10 = xterm_010
-- vim.g.terminal_color_11 = xterm_011
-- vim.g.terminal_color_12 = xterm_033
-- vim.g.terminal_color_13 = xterm_013
-- vim.g.terminal_color_14 = xterm_014
-- vim.g.terminal_color_15 = xterm_015
