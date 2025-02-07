require("options")
require("keymaps")
require("formatters")
require("lsp")

vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.opt.colorcolumn = "89"
	end,
})

