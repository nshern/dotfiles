if vim.g.colors_name ~= nil then
	vim.cmd("highlight clear")
end
vim.g.colors_name = "custom"
vim.cmd.colorscheme("default")

local hi = vim.api.nvim_set_hl

local NvimDarkBlue = "#004c73"
local NvimDarkCyan = "#007373"
local NvimDarkGreen = "#005523"
local NvimDarkGrey1 = "#07080d"
local NvimDarkGrey2 = "#14161b"
local NvimDarkGrey3 = "#2c2e33"
local NvimDarkGrey4 = "#4f5258"
local NvimDarkMagenta = "#470045"
local NvimDarkRed = "#590008"
local NvimDarkYellow = "#6b5300"
local NvimLightBlue = "#a6dbff"
local NvimLightCyan = "#8cf8f7"
local NvimLightGreen = "#b3f6c0"
local NvimLightGrey1 = "#eef1f8"
local NvimLightGrey2 = "#e0e2ea"
local NvimLightGrey3 = "#c4c6cd"
local NvimLightGrey4 = "#9b9ea4"
local NvimLightMagenta = "#ffcaff"
local NvimLightRed = "#ffc0b9"
local NvimLightYellow = "#fce094"
--
if vim.o.background == "dark" then
	hi(0, "@markup.heading.1.markdown", { bg = NONE, fg = NvimLightRed, bold = true })
	hi(0, "@markup.heading.2.markdown", { bg = NONE, fg = NvimLightMagenta, bold = true })
	hi(0, "@markup.heading.3.markdown", { bg = NONE, fg = NvimLightBlue, bold = true })
	hi(0, "@markup.heading.4.markdown", { bg = NONE, fg = NvimLightYellow, bold = true })
	hi(0, "LineNr", { bg = NvimDarkGrey2, fg = NvimLightGrey4 })
	hi(0, "MiniFilesBorder", { fg = NvimLightGrey2 })
	hi(0, "MiniFilesCursorline", { bg = NvimDarkGrey4 })
	hi(0, "MiniFilesNormal", { fg = NvimLightGrey2 })
	hi(0, "MiniFilesTitle", { fg = NvimLightGrey2 })
	hi(0, "MiniPickBorder", { fg = NvimLightGrey2 })
	hi(0, "MiniPickMatchCurrent", { bg = NvimDarkGrey4 })
	hi(0, "MiniPickNormal", { fg = NvimLightGrey2 })
	hi(0, "MiniStarterItemPrefix", { fg = NvimLightGrey2, bold = true })
	hi(0, "MiniStatuslineModeNormal", { bg = NvimLightGrey2, bold = true, fg = NvimDarkGrey2 })
	hi(0, "Normal", { bg = NONE, fg = NvimLightGrey2 }) -- Make theme transparent
end

if vim.o.background == "light" then
	hi(0, "@markup.heading.1.markdown", { bg = NONE, fg = NvimDarkRed, bold = true })
	hi(0, "@markup.heading.2.markdown", { bg = NONE, fg = NvimDarkMagenta, bold = true })
	hi(0, "@markup.heading.3.markdown", { bg = NONE, fg = NvimDarkBlue, bold = true })
	hi(0, "@markup.heading.4.markdown", { bg = NONE, fg = NvimDarkYellow, bold = true })
	hi(0, "LineNr", { bg = NvimLightGrey2, fg = NvimDarkGrey4 })
	hi(0, "MiniFilesBorder", { fg = "NvimDarkGrey2" })
	hi(0, "MiniFilesCursorline", { bg = "NvimLightGrey4" })
	hi(0, "MiniFilesNormal", { fg = "NvimDarkGrey2" })
	hi(0, "MiniFilesTitle", { fg = "NvimDarkGrey2" })
	hi(0, "MiniPickBorder", { fg = "NvimDarkGrey2" })
	hi(0, "MiniPickMatchCurrent", { bg = "NvimLightGrey4" })
	hi(0, "MiniPickNormal", { fg = "NvimDarkGrey2" })
	hi(0, "MiniStarterItemPrefix", { fg = "NvimDarkGrey2", bold = true })
	hi(0, "MiniStatuslineModeNormal", { bg = "NvimDarkGrey2", bold = true, fg = "NvimLightGrey2" })
	hi(0, "Normal", { bg = NONE, fg = "NvimDarkGrey2" }) -- Make theme transparent
end
