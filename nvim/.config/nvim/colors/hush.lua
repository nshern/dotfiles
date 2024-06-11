if vim.g.colors_name ~= nil then
	vim.cmd("highlight clear")
end
vim.g.colors_name = "hush"

local hi = vim.api.nvim_set_hl

if vim.o.background == "dark" then
	-- Syntax--
	hi(0, "Function", { fg = "#e0e2ea" })
	hi(0, "Identifier", { fg = "#e0e2ea" })
	hi(0, "Normal", { bg = NONE, fg = "#e0e2ea" })
	hi(0, "Special", { fg = "#e0e2ea" })
	hi(0, "Statement", { fg = "#e0e2ea" })
	hi(0, "String", { fg = "#e0e2ea" })
	hi(0, "@variable", { fg = "#e0e2ea" })
	hi(0, "Delimiter", { fg = "#e0e2ea" })
	hi(0, "Constant", { fg = "#e0e2ea" })
	hi(0, "Preproc", { fg = "#e0e2ea" })

	-- Plugins
	hi(0, "MiniStatuslineModeCommand", { bg = "#e0e2ea", bold = true, fg = "#14161b" })
	hi(0, "MiniStatuslineModeInsert", { bg = "#e0e2ea", bold = true, fg = "#14161b" })
	hi(0, "MiniStatuslineModeNormal", { bg = "#e0e2ea", bold = true, fg = "#14161b" })
	hi(0, "MiniStatuslineModeReplace", { bg = "#e0e2ea", bold = true, fg = "#14161b" })
	hi(0, "MiniStatuslineModeVisual", { bg = "#e0e2ea", bold = true, fg = "#14161b" })
	hi(0, "MiniJump2dSpot", { bg = "#ffcaff", bold = true, fg = "#14161b" })
	hi(0, "MiniStarterItemPrefix", { fg = "#e0e2ea", bold = true })

	-- Markdown
	hi(0, "markdownH1", { fg = "#a6dbff", bold = true })
	hi(0, "markdownH2", { fg = "#8cf8f7", bold = true })
	hi(0, "markdownH3", { fg = "#b4f6c0", bold = true })
	hi(0, "markdownH4", { fg = "#ffcaff", bold = true })
	hi(0, "markdownH5", { fg = "#ffc0b9", bold = true })
	hi(0, "markdownH6", { fg = "#fce094", bold = true })
	hi(0, "@lsp.type.class.markdown", { fg = "#fce094", bold = true })
end

if vim.o.background == "light" then
	-- Syntax
	hi(0, "Function", { fg = "#14161b" })
	hi(0, "Identifier", { fg = "#14161b" })
	hi(0, "Normal", { bg = NONE, fg = "#14161b" })
	hi(0, "Special", { fg = "#14161b" })
	hi(0, "Statement", { fg = "#14161b" })
	hi(0, "String", { fg = "#14161b" })
	hi(0, "@variable", { fg = "#14161b" })
	hi(0, "Delimiter", { fg = "#14161b" })
	hi(0, "Constant", { fg = "#14161b" })
	hi(0, "Preproc", { fg = "#14161b" })

	-- Plugins
	hi(0, "MiniStatuslineModeCommand", { bg = "#14161b", bold = true, fg = "#e0e2ea" })
	hi(0, "MiniStatuslineModeInsert", { bg = "#14161b", bold = true, fg = "#e0e2ea" })
	hi(0, "MiniStatuslineModeNormal", { bg = "#14161b", bold = true, fg = "#e0e2ea" })
	hi(0, "MiniStatuslineModeReplace", { bg = "#14161b", bold = true, fg = "#e0e2ea" })
	hi(0, "MiniStatuslineModeVisual", { bg = "#14161b", bold = true, fg = "#e0e2ea" })
	hi(0, "MiniJump2dSpot", { bg = "#14161b", bold = true, fg = "#e0e2ea" })

	hi(0, "MiniStarterItemPrefix", { fg = "#14161b", bold = true })

	-- Markdown
	hi(0, "@markup.heading.1.markdown", { fg = "#004c63", bold = true })
	hi(0, "@markup.heading.2.markdown", { fg = "#007373", bold = true })
	hi(0, "@markup.heading.3.markdown", { fg = "#005523", bold = true })
	hi(0, "@markup.heading.4.markdown", { fg = "#470045", bold = true })
	hi(0, "@markup.heading.5.markdown", { fg = "#590008", bold = true })
	hi(0, "@markup.heading.6.markdown", { fg = "#6b5300", bold = true })
end
