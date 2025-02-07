local add, now = MiniDeps.add, MiniDeps.now

now(function()
	add({ source = "ibhagwan/fzf-lua" })
	add({ source = "neovim/nvim-lspconfig" })

	require("lspconfig").pyright.setup({})
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
end)
