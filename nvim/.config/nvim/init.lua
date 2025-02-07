-- require("bootstrap")
require("options")
require("keymaps")
-- require("plugins")
require("formatters")

vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.opt.colorcolumn = "89"
	end,
})
