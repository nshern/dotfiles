vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "default-plus"

vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { fg = "NvimLightGreen", bg = "NvimDarkBlue", bold = true })
