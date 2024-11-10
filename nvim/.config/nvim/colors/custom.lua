if vim.g.colors_name ~= nil then
	vim.cmd("highlight clear")
end

vim.g.colors_name = "custom"

local hi = vim.api.nvim_set_hl

hi(0, "@variable", { link = Normal })
hi(0, "Constant", { link = Normal })
hi(0, "Delimiter", { link = Normal })
hi(0, "Function", { link = Normal })
hi(0, "Identifier", { link = Normal })
hi(0, "Operator", { link = Normal })
hi(0, "Special", { link = Normal })
hi(0, "Statement", { link = Normal })
hi(0, "String", { link = Normal })
hi(0, "Type", { link = Normal })

if vim.o.background == "dark" then
	hi(0, "Visual", { bg = "NvimLightYellow", fg = "NvimDarkGrey1" })
	hi(0, "Comment", { fg = "red" })
end

if vim.o.background == "light" then
	hi(0, "Visual", { bg = "NvimDarkYellow", fg = "NvimLightGrey1" })
	hi(0, "Comment", { fg = "red" })
end
