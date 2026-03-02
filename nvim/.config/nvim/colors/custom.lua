vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "custom"

-- stylua: ignore start
local xterm = {
	[0] = "#000000", "#800000", "#008000", "#808000", "#000080", "#800080", "#008080", "#c0c0c0",
	"#808080", "#ff0000", "#00ff00", "#ffff00", "#0000ff", "#ff00ff", "#00ffff", "#ffffff",
	"#000000", "#00005f", "#000087", "#0000af", "#0000d7", "#0000ff",
	"#005f00", "#005f5f", "#005f87", "#005faf", "#005fd7", "#005fff",
	"#008700", "#00875f", "#008787", "#0087af", "#0087d7", "#0087ff",
	"#00af00", "#00af5f", "#00af87", "#00afaf", "#00afd7", "#00afff",
	"#00d700", "#00d75f", "#00d787", "#00d7af", "#00d7d7", "#00d7ff",
	"#00ff00", "#00ff5f", "#00ff87", "#00ffaf", "#00ffd7", "#00ffff",
	"#5f0000", "#5f005f", "#5f0087", "#5f00af", "#5f00d7", "#5f00ff",
	"#5f5f00", "#5f5f5f", "#5f5f87", "#5f5faf", "#5f5fd7", "#5f5fff",
	"#5f8700", "#5f875f", "#5f8787", "#5f87af", "#5f87d7", "#5f87ff",
	"#5faf00", "#5faf5f", "#5faf87", "#5fafaf", "#5fafd7", "#5fafff",
	"#5fd700", "#5fd75f", "#5fd787", "#5fd7af", "#5fd7d7", "#5fd7ff",
	"#5fff00", "#5fff5f", "#5fff87", "#5fffaf", "#5fffd7", "#5fffff",
	"#870000", "#87005f", "#870087", "#8700af", "#8700d7", "#8700ff",
	"#875f00", "#875f5f", "#875f87", "#875faf", "#875fd7", "#875fff",
	"#878700", "#87875f", "#878787", "#8787af", "#8787d7", "#8787ff",
	"#87af00", "#87af5f", "#87af87", "#87afaf", "#87afd7", "#87afff",
	"#87d700", "#87d75f", "#87d787", "#87d7af", "#87d7d7", "#87d7ff",
	"#87ff00", "#87ff5f", "#87ff87", "#87ffaf", "#87ffd7", "#87ffff",
	"#af0000", "#af005f", "#af0087", "#af00af", "#af00d7", "#af00ff",
	"#af5f00", "#af5f5f", "#af5f87", "#af5faf", "#af5fd7", "#af5fff",
	"#af8700", "#af875f", "#af8787", "#af87af", "#af87d7", "#af87ff",
	"#afaf00", "#afaf5f", "#afaf87", "#afafaf", "#afafd7", "#afafff",
	"#afd700", "#afd75f", "#afd787", "#afd7af", "#afd7d7", "#afd7ff",
	"#afff00", "#afff5f", "#afff87", "#afffaf", "#afffd7", "#afffff",
	"#d70000", "#d7005f", "#d70087", "#d700af", "#d700d7", "#d700ff",
	"#d75f00", "#d75f5f", "#d75f87", "#d75faf", "#d75fd7", "#d75fff",
	"#d78700", "#d7875f", "#d78787", "#d787af", "#d787d7", "#d787ff",
	"#d7af00", "#d7af5f", "#d7af87", "#d7afaf", "#d7afd7", "#d7afff",
	"#d7d700", "#d7d75f", "#d7d787", "#d7d7af", "#d7d7d7", "#d7d7ff",
	"#d7ff00", "#d7ff5f", "#d7ff87", "#d7ffaf", "#d7ffd7", "#d7ffff",
	"#ff0000", "#ff005f", "#ff0087", "#ff00af", "#ff00d7", "#ff00ff",
	"#ff5f00", "#ff5f5f", "#ff5f87", "#ff5faf", "#ff5fd7", "#ff5fff",
	"#ff8700", "#ff875f", "#ff8787", "#ff87af", "#ff87d7", "#ff87ff",
	"#ffaf00", "#ffaf5f", "#ffaf87", "#ffafaf", "#ffafd7", "#ffafff",
	"#ffd700", "#ffd75f", "#ffd787", "#ffd7af", "#ffd7d7", "#ffd7ff",
	"#ffff00", "#ffff5f", "#ffff87", "#ffffaf", "#ffffd7", "#ffffff",
	"#080808", "#121212", "#1c1c1c", "#262626", "#303030", "#3a3a3a",
	"#444444", "#4e4e4e", "#585858", "#626262", "#6c6c6c", "#767676",
	"#808080", "#8a8a8a", "#949494", "#9e9e9e", "#a8a8a8", "#b2b2b2",
	"#bcbcbc", "#c6c6c6", "#d0d0d0", "#dadada", "#e4e4e4", "#eeeeee",
}
-- stylua: ignore end

local dark = {
	Added = { link = "String" },
	Comment = { fg = xterm[243] },
	CurSearch = { bg = xterm[221], fg = xterm[234] },
	CursorLine = { bg = xterm[236] },
	DiagnosticError = { fg = xterm[203] },
	DiagnosticHint = { fg = xterm[75] },
	DiagnosticOk = { fg = xterm[113] },
	DiagnosticWarn = { fg = xterm[221] },
	DiagnosticInfo = { fg = xterm[74] },
	DiagnosticVirtualTextHint = { fg = xterm[75], italic = true },
	DiagnosticVirtualTextWarn = { fg = xterm[221], italic = true },
	Directory = { fg = xterm[74] },
	MoreMsg = { link = "Directory" },
	Question = { link = "Directory" },
	ErrorMsg = { fg = xterm[130] },
	Removed = { link = "ErrorMsg" },
	Function = { fg = xterm[44] },
	Identifier = { fg = xterm[75] },
	LineNr = { fg = xterm[243] },
	CursorLineNr = { fg = xterm[253], bold = true },
	MatchParen = { fg = xterm[133] },
	ModeMsg = { fg = xterm[113] },
	NonText = { link = "Comment" },
	Normal = { fg = xterm[253], bg = xterm[234] },
	Constant = { link = "Normal" },
	Delimiter = { link = "Normal" },
	Operator = { link = "Normal" },
	Type = { link = "Normal" },
	["@boolean"] = { fg = xterm[208], bold = true },
	["@variable"] = { link = "Normal" },
	OkMsg = { link = "String" },
	Pmenu = { bg = xterm[250], fg = xterm[234] },
	PmenuKind = { bg = xterm[250], fg = xterm[16] },
	PmenuKindSel = { bg = xterm[19], fg = xterm[16] },
	PmenuSBar = { bg = xterm[245] },
	PmenuSel = { bg = xterm[19], fg = xterm[231] },
	Special = { fg = xterm[74] },
	Statement = { fg = xterm[170] },
	Statusline = { bg = xterm[250], fg = xterm[234], bold = true },
	String = { fg = xterm[113] },
	Visual = { bg = xterm[238] },
	WarningMsg = { fg = xterm[178] },
	-- mini.cursorword
	MiniCursorword = { underline = true },
	MiniCursorwordCurrent = { underline = true },
	-- mini.diff
	MiniDiffSignAdd = { fg = xterm[113] },
	MiniDiffSignChange = { fg = xterm[221] },
	MiniDiffSignDelete = { fg = xterm[203] },
	MiniDiffOverAdd = { bg = xterm[22] },
	MiniDiffOverChange = { bg = xterm[58] },
	MiniDiffOverDelete = { bg = xterm[52] },
	MiniDiffOverContext = { bg = xterm[236] },
	-- mini.pick
	MiniPickBorder = { fg = xterm[239], bg = xterm[235] },
	MiniPickMatchCurrent = { bg = xterm[238] },
	MiniPickMatchMarked = { fg = xterm[221], bold = true },
	MiniPickMatchRanges = { fg = xterm[113], bold = true },
	MiniPickNormal = { fg = xterm[253], bg = xterm[235] },
	MiniPickPreviewLine = { bg = xterm[238] },
	MiniPickPreviewRegion = { bg = xterm[238] },
	MiniPickPrompt = { fg = xterm[74], bg = xterm[235] },
	-- mini.files
	MiniFilesDirectory = { fg = xterm[74], bold = true },
	MiniFilesFile = { fg = xterm[253] },
	MiniFilesCursorLine = { link = "CursorLine" },
	MiniFilesNormal = { fg = xterm[253], bg = xterm[235] },
	MiniFilesBorder = { fg = xterm[239], bg = xterm[235] },
	MiniFilesTitle = { fg = xterm[74], bold = true },
	-- mini.statusline
	MiniStatuslineModeNormal = { bg = xterm[75], fg = xterm[235], bold = true },
	MiniStatuslineModeInsert = { bg = xterm[113], fg = xterm[235], bold = true },
	MiniStatuslineModeVisual = { bg = xterm[170], fg = xterm[235], bold = true },
	MiniStatuslineModeReplace = { bg = xterm[203], fg = xterm[235], bold = true },
	MiniStatuslineModeCommand = { bg = xterm[221], fg = xterm[235], bold = true },
	MiniStatuslineModeOther = { bg = xterm[74], fg = xterm[235], bold = true },
	MiniStatuslineDevinfo = { bg = xterm[238], fg = xterm[253] },
	MiniStatuslineFilename = { bg = xterm[236], fg = xterm[250] },
	MiniStatuslineFileinfo = { bg = xterm[238], fg = xterm[253] },
	MiniStatuslineInactive = { bg = xterm[236], fg = xterm[243] },
	-- mini.tabline
	MiniTablineCurrent = { bg = xterm[235], fg = xterm[253], bold = true },
	MiniTablineVisible = { bg = xterm[237], fg = xterm[250] },
	MiniTablineHidden = { bg = xterm[236], fg = xterm[243] },
	MiniTablineModifiedCurrent = { bg = xterm[237], fg = xterm[113], bold = true },
	MiniTablineModifiedVisible = { bg = xterm[237], fg = xterm[113] },
	MiniTablineModifiedHidden = { bg = xterm[236], fg = xterm[64] },
	MiniTablineFill = { bg = xterm[234] },
	-- mini.jump2d
	MiniJump2dSpot = { fg = xterm[203], bold = true, nocombine = true },
	MiniJump2dDim = { fg = xterm[243] },
	-- mini.hipatterns
	MiniHipatternsFixme = { bg = xterm[203], fg = xterm[235], bold = true },
	MiniHipatternsHack = { bg = xterm[221], fg = xterm[235], bold = true },
	MiniHipatternsTodo = { bg = xterm[75], fg = xterm[235], bold = true },
	MiniHipatternsNote = { bg = xterm[113], fg = xterm[235], bold = true },
	-- mini.clue
	MiniClueNextKey = { fg = xterm[221], bold = true },
	MiniClueDescSeparator = { fg = xterm[239] },
	MiniClueTitle = { fg = xterm[74], bold = true },
	-- mini.completion
	MiniCompletionActiveParameter = { underline = true },
	-- mini.surround
	MiniSurroundHighlight = { bg = xterm[221], fg = xterm[235] },
	-- mini.notify
	MiniNotifyBorder = { fg = xterm[239] },
	MiniNotifyNormal = { fg = xterm[253], bg = xterm[235] },
	MiniNotifyTitle = { fg = xterm[74], bold = true },
}

for group, hl in pairs(dark) do
	vim.api.nvim_set_hl(0, group, hl)
end

vim.g.terminal_color_0 = xterm[235]
vim.g.terminal_color_1 = xterm[160]
vim.g.terminal_color_2 = xterm[113]
vim.g.terminal_color_3 = xterm[178]
vim.g.terminal_color_4 = xterm[75]
vim.g.terminal_color_5 = xterm[170]
vim.g.terminal_color_6 = xterm[14]
vim.g.terminal_color_7 = xterm[250]
vim.g.terminal_color_8 = xterm[239]
vim.g.terminal_color_9 = xterm[203]
vim.g.terminal_color_10 = xterm[113]
vim.g.terminal_color_11 = xterm[221]
vim.g.terminal_color_12 = xterm[75]
vim.g.terminal_color_13 = xterm[170]
vim.g.terminal_color_14 = xterm[14]
vim.g.terminal_color_15 = xterm[253]
