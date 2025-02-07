require("lspconfig").pyright.setup({})
require("lspconfig").gopls.setup({})
require("lspconfig").ruff.setup({})
require("lspconfig").bashls.setup({})
require("lspconfig").taplo.setup({})
require("lspconfig").terraformls.setup({})
require("lspconfig").lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				disable = { "lowercase-global", "undefined-global" },
			},
		},
	},
})
