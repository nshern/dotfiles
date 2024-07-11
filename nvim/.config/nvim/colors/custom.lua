if vim.g.colors_name ~= nil then
	vim.cmd("highlight clear")
end
vim.g.colors_name = "custom"

local hi = vim.api.nvim_set_hl

-- Palette
-- "NvimDarkBlue"       = #004c73
-- "NvimDarkCyan"       = #007373
-- "NvimDarkGreen"      = #005523
-- "NvimDarkGrey1"      = #07080d
-- "NvimDarkGrey2"      = #14161b
-- "NvimDarkGrey3"      = #2c2e33
-- "NvimDarkGrey4"      = #4f5258
-- "NvimDarkMagenta"    = #470045
-- "NvimDarkRed"        = #590008
-- "NvimDarkYellow"     = #6b5300
-- "NvimLightBlue"      = #a6dbff
-- "NvimLightCyan"      = #8cf8f7
-- "NvimLightGreen"     = #b3f6c0
-- "NvimLightGrey1"     = #eef1f8
-- "NvimLightGrey2"     = #e0e2ea
-- "NvimLightGrey3"     = #c4c6cd
-- "NvimLightGrey4"     = #9b9ea4
-- "NvimLightMagenta"   = #ffcaff
-- "NvimLightRed"       = #ffc0b9
-- "NvimLightYellow"    = #fce094
--
if vim.o.background == "dark" then
	hi(0, "@markup.heading.1.markdown", { bg = NONE, fg = "#ffc0b9", bold = true })
	hi(0, "@markup.heading.2.markdown", { bg = NONE, fg = "#ffcaff", bold = true })
	hi(0, "@markup.heading.3.markdown", { bg = NONE, fg = "#a6dbff", bold = true })
	hi(0, "@markup.heading.4.markdown", { bg = NONE, fg = "#fce094", bold = true })
	hi(0, "@variable", { bg = NONE, fg = "#e0e2ea" })
	hi(0, "Function", { bg = NONE, fg = "#e0e2ea" })
	hi(0, "Identifier", { bg = NONE, fg = "#e0e2ea" })
	hi(0, "LineNr", { bg = "#14161b", fg = "#9b9ea4" })
	hi(0, "MiniFilesBorder", { fg = "#e0e2ea" })
	hi(0, "MiniFilesCursorline", { bg = "#4f5258" })
	hi(0, "MiniFilesNormal", { fg = "#e0e2ea" })
	hi(0, "MiniFilesTitle", { fg = "#e0e2ea" })
	hi(0, "MiniIconsAzure", { fg = "#8cf8f7" })
	hi(0, "MiniIconsBlue", { fg = "#a6dbff" })
	hi(0, "MiniPickBorder", { fg = "#e0e2ea" })
	hi(0, "MiniPickMatchCurrent", { bg = "#4f5258" })
	hi(0, "MiniPickNormal", { fg = "#e0e2ea" })
	hi(0, "MiniStarterItemPrefix", { fg = "#e0e2ea", bold = true })
	hi(0, "MiniStatuslineModeNormal", { bg = "#e0e2ea", bold = true, fg = "#14161b" })
	hi(0, "Normal", { bg = NONE, fg = "#e0e2ea" })
	hi(0, "Special", { bg = NONE, fg = "#e0e2ea" })
	hi(0, "String", { bg = NONE, fg = "#e0e2ea" })
end

if vim.o.background == "light" then
	hi(0, "@markup.heading.1.markdown", { bg = NONE, fg = "#590008", bold = true })
	hi(0, "@markup.heading.2.markdown", { bg = NONE, fg = "#470045", bold = true })
	hi(0, "@markup.heading.3.markdown", { bg = NONE, fg = "#004c63", bold = true })
	hi(0, "@variable", { bg = NONE, fg = "#14161b" })
	hi(0, "Function", { bg = NONE, fg = "#14161b" })
	hi(0, "Identifier", { bg = NONE, fg = "#14161b" })
	hi(0, "MiniFilesBorder", { fg = "#14161b" })
	hi(0, "MiniFilesNormal", { fg = "#14161b" })
	hi(0, "MiniFilesTitle", { fg = "#14161b" })
	hi(0, "LineNr", { bg = "#e0e2ea", fg = "#4f5258" })
	hi(0, "MiniIconsAzure", { fg = "#007373" })
	hi(0, "MiniIconsBlue", { fg = "#004c73" })
	hi(0, "MiniPickNormal", { fg = "#14161b" })
	hi(0, "MiniPickBorder", { fg = "#14161b" })
	hi(0, "MiniPickTitle", { fg = "#14161b" })
	hi(0, "MiniStarterItemPrefix", { fg = "#14161b", bold = true })
	hi(0, "MiniStatuslineModeNormal", { bg = "#14161b", bold = true, fg = "#e0e2ea" })
	hi(0, "Normal", { bg = NONE, fg = "#14161b" })
	hi(0, "Special", { bg = NONE, fg = "#14161b" })
	hi(0, "String", { bg = NONE, fg = "#14161b" })
end
