local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

later(function()
	require("mini.ai").setup()
end)
later(function()
	require("mini.align").setup()
end)
later(function()
	require("mini.animate").setup({
		scroll = { enable = false },
		resize = { enable = false },
		open = { enable = false },
		close = { enable = false },
	})
end)

later(function()
	local hipatterns = require("mini.hipatterns")
	hipatterns.setup({
		highlighters = {
			-- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
			fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
			hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
			todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
			note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

			-- Highlight hex color strings (`#rrggbb`) using that color
			hex_color = hipatterns.gen_highlighter.hex_color(),
		},
	})
end)

later(function()
	require("mini.git").setup()
end)

later(function()
	require("mini.pick").setup()
end)

later(function()
	require("mini.extra").setup()
end)

later(function()
	require("mini.notify").setup()
end)

later(function()
	require("mini.completion").setup()
end)

now(function()
	require("mini.starter").setup({
		header = "-. . --- ...- .. -- ",
		footer = "",
		items = {
			{ name = "Open File", action = "Pick files", section = "" },
			{ name = "Recent Files", action = "Pick oldfiles", section = "" },
			{ name = "Todo", action = ":e ~/notes/todo.md", section = "" },
			{ name = "Notes", action = ":e ~/notes/notes.md", section = "" },
			{ name = "Study", action = ":e ~/notes/study.md", section = "" },
			{ name = "Config", action = ":e ~/.config/nvim", section = "" },
			{ name = "Keymaps", action = "Pick keymaps", section = "" },
			{ name = "Help", action = "Pick help", section = "" },

			{ name = "Quit", action = ":qa!", section = "" },
		},

		query_updaters = "abcdefghijklmnopqrstuvwxyz0123456789_.",
	})
end)

later(function()
	require("mini.colors").setup()
end)
later(function()
	require("mini.splitjoin").setup()
end)

later(function()
	require("mini.bracketed").setup()
end)
later(function()
	require("mini.diff").setup({
		view = {
			style = "sign",
			signs = { add = "█", change = "▒", delete = "" },
		},
	})
end)
later(function()
	require("mini.files").setup()
end)
later(function()
	require("mini.jump").setup()
end)
later(function()
	require("mini.jump2d").setup()
end)
later(function()
	require("mini.pairs").setup()
end)
later(function()
	require("mini.statusline").setup({ use_icons = false })
end)
later(function()
	require("mini.surround").setup()
end)
later(function()
	require("mini.tabline").setup({ show_icons = false })
end)

now(function()
	require("mini.clue").setup({
		triggers = {
			-- Leader triggers
			{ mode = "n", keys = "<Leader>" },
			{ mode = "x", keys = "<Leader>" },

			{ mode = "n", keys = "\\" },

			-- Built-in completion
			{ mode = "i", keys = "<C-x>" },

			-- `g` key
			{ mode = "n", keys = "g" },
			{ mode = "x", keys = "g" },

			-- Marks
			{ mode = "n", keys = "'" },
			{ mode = "n", keys = "`" },
			{ mode = "x", keys = "'" },
			{ mode = "x", keys = "`" },

			-- Registers
			{ mode = "n", keys = '"' },
			{ mode = "x", keys = '"' },
			{ mode = "i", keys = "<C-r>" },
			{ mode = "c", keys = "<C-r>" },

			-- Window commands
			{ mode = "n", keys = "<C-w>" },

			-- `z` key
			{ mode = "n", keys = "z" },
			{ mode = "x", keys = "z" },
		},
		clues = {
			{ mode = "n", keys = "<Leader>b", desc = "+Buffers" },
			{ mode = "n", keys = "<Leader>l", desc = "+LSP" },
			{ mode = "n", keys = "<Leader>o", desc = "+Open" },
			{ mode = "n", keys = "<Leader>s", desc = "+Search" },
			{ mode = "n", keys = "<Leader>t", desc = "+Theme" },
		},
	})
end)

now(function()
	add({ source = "stevearc/conform.nvim" })
	require("conform").setup({
		notify_on_error = false,
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			markdown = { "prettier" },
			python = { "isort", "black" },
		},
	})
end)

now(function()
	add({ source = "nvim-tree/nvim-web-devicons" })
end)

now(function()
	add({
		source = "neovim/nvim-lspconfig",
	})
	require("lspconfig").pyright.setup({})
	require("lspconfig").marksman.setup({})
	require("lspconfig").taplo.setup({})
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
