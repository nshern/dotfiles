-- {{{BOOTSTRAP
local path_package = vim.fn.stdpath("data") .. "/site/"
local mini_path = path_package .. "pack/deps/start/mini.nvim"
if not vim.loop.fs_stat(mini_path) then
	vim.cmd('echo "Installing `mini.nvim`" | redraw')
	local clone_cmd = {
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/echasnovski/mini.nvim",
		mini_path,
	}
	vim.fn.system(clone_cmd)
	vim.cmd("packadd mini.nvim | helptags ALL")
	vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

require("mini.deps").setup({ path = { package = path_package } })
--}}}
-- {{{OPTIONS
vim.g.mapleader = " "
vim.o.smartindent = false
vim.opt.autoindent = true
vim.opt.breakindent = false
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = false
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.list = true
vim.opt.modeline = false
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.foldmethod = "marker"
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.updatetime = 250
-- }}}
-- {{{PLUGINS
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

			hex_color = hipatterns.gen_highlighter.hex_color(),
		},
	})
end)

now(function()
	require("mini.indentscope").setup()
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

now(function()
	require("mini.notify").setup()
	vim.notify = require("mini.notify").make_notify()
end)

later(function()
	require("mini.completion").setup({
		mappings = {
			force_twostep = "<C-t>", -- Force two-step completion
			force_fallback = "<C-f>", -- Force fallback completion
		},

		window = {
			info = { border = "rounded" },
			signature = { border = "rounded" },
		},
	})
end)

now(function()
	require("mini.starter").setup({
		header = "",
		footer = "",
		-- items = {
		-- 	{ name = "Quit", action = ":qa!", section = "" },
		-- },

		query_updaters = "abcdefghijklmnopqrstuvwxyz0123456789_.",
	})
end)

later(function()
	require("mini.colors").setup()
end)
later(function()
	require("mini.splitjoin").setup()
end)

now(function()
	require("mini.icons").setup()
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
now(function()
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
-- later(function()
-- 	require("mini.surround").setup()
-- end)
later(function()
	require("mini.tabline").setup({ show_icons = false })
end)

now(function()
	local miniclue = require("mini.clue")
	miniclue.setup({
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
			miniclue.gen_clues.builtin_completion(),
			miniclue.gen_clues.g(),
			miniclue.gen_clues.marks(),
			miniclue.gen_clues.registers(),
			miniclue.gen_clues.windows(),
			miniclue.gen_clues.z(),
			{ mode = "n", keys = "<Leader>b", desc = "+Buffers" },
			{ mode = "n", keys = "<Leader>l", desc = "+LSP" },
			{ mode = "n", keys = "<Leader>o", desc = "+Open" },
			{ mode = "n", keys = "<Leader>s", desc = "+Pick" },
			{ mode = "n", keys = "<Leader>z", desc = "+Spell" },
			{ mode = "n", keys = "<Leader>d", desc = "+Deps" },
			{ mode = "n", keys = "<Leader>r", desc = "+Rename" },
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

now(function()
	add({ source = "nvim-treesitter/nvim-treesitter" })
	require("nvim-treesitter.configs").setup({
		ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
		auto_install = true,
		indent = {
			-- enable = false,
			disable = { "python" },
		},
		highlight = {
			enable = true,
		},
	})
end)
-- }}}
--{{{KEYMAPS
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>[", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>]", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("n", "<leader>bd", "<CMD>bd<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>ba", "<CMD>bufdo bd<CR>", { desc = "Delete all buffers" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "<leader>sb", "<CMD>Pick buffers<CR>", { desc = "Pick buffers" })
vim.keymap.set("n", "<leader>sf", "<CMD>Pick diagnostic<CR>", { desc = "Pick diagnostic" })
vim.keymap.set("n", "<leader>ss", "<CMD>Pick spellsuggest<CR>", { desc = "Pick spellsuggest" })
vim.keymap.set("n", "<leader>sf", "<CMD>Pick files<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>sg", "<CMD>Pick grep live<CR>", { desc = "Pick grep" })
vim.keymap.set("n", "<leader>svc", "<CMD>Pick git_commits<CR>", { desc = "Pick git commits" })
vim.keymap.set("n", "<leader>svb", "<CMD>Pick git_branches<CR>", { desc = "Pick git branches" })
vim.keymap.set("n", "<leader>svh", "<CMD>Pick git_hunks<CR>", { desc = "Pick git hunks" })
vim.keymap.set("n", "<leader>svf", "<CMD>Pick git_files<CR>", { desc = "Pick git files" })
vim.keymap.set("n", "<leader>sh", "<CMD>Pick help<CR>", { desc = "Pick help" })
vim.keymap.set("n", "<leader>sk", "<CMD>Pick keymaps<CR>", { desc = "Pick keymaps" })
vim.keymap.set("n", "<leader>so", "<CMD>Pick oldfiles<CR>", { desc = "Pick old files" })

vim.keymap.set("n", "<leader>li", "<CMD>LspInfo<CR>", { desc = "Lsp Info" })
vim.keymap.set("n", "<leader>lr", "<CMD>LspRestart<CR>", { desc = "Lsp Restart" })

-- Open Mini files for current file location
vim.keymap.set("n", "<leader>-", "<CMD>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>")

vim.keymap.set("n", "-", "<CMD>lua MiniFiles.open()<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<S-l>", "<CMD>bn<CR>", { desc = "Jump to next buffer" })
vim.keymap.set("n", "<S-h>", "<CMD>bp<CR>", { desc = "Jump to previous buffer" })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>os", "<CMD>lua MiniStarter.open()<CR>", { desc = "Open starter" })

-- lsp
vim.keymap.set("n", "gr", "<CMD>lua vim.lsp.buf.references()<CR>")
vim.keymap.set("n", "ca", "<CMD>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<leader>re", "<CMD>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("n", "gD", "<CMD>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "gl", "<CMDcd %p:h<CR>")

vim.keymap.set("n", "<leader>du", "<CMD>DepsUpdate<CR>", { desc = "Deps update" })
vim.keymap.set("n", "<leader>dc", "<CMD>DepsClean<CR>", { desc = "Deps clean" })
vim.keymap.set("n", "<leader>da", "<CMD>DepsAdd<CR>", { desc = "Deps add" })

vim.keymap.set("n", "<leader>e", "<CMD>:Ex<CR>", { desc = "Open netrw" })
--}}}
--{{{AUTOCOMMANDS
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt_local.spell = true
		vim.opt_local.wrap = true
		vim.opt_local.linebreak = true
		vim.opt_local.textwidth = 80
	end,
})
-- }}}
-- {{{COLORSCHEME
local use_cterm, palette
if vim.o.background == "dark" then
	palette = {
		base00 = "#262626",
		base01 = "#393939",
		base02 = "#525252",
		base03 = "#6f6f6f",
		base04 = "#8d8d8d",
		base05 = "#e0e0e0",
		base06 = "#f4f4f4",
		base07 = "#ffffff",
		base08 = "#ffb3b8",
		base09 = "#ffb784",
		base0A = "#f1c21b",
		base0B = "#6fdc8c",
		base0C = "#3ddbd9",
		base0D = "#82cfff",
		base0E = "#d4bbff",
		base0F = "#ffafd2",
		selection = "#00539a",
	}
end

if vim.o.background == "light" then
	palette = {
		base00 = "#f4f4f4",
		base01 = "#e0e0e0",
		base02 = "#c6c6c6",
		base03 = "#6f6f6f",
		base04 = "#393939",
		base05 = "#161616",
		base06 = "#262626",
		base07 = "#161616",
		base08 = "#a2191f",
		base09 = "#ba4e00",
		base0A = "#684e00",
		base0B = "#0e6027",
		base0C = "#005d5d",
		base0D = "#0043ce",
		base0E = "#6929c4",
		base0F = "#9f1853",
		selection = "#a6c8ff",
	}
end

if palette then
	require("mini.base16").setup({ palette = palette, use_cterm = use_cterm })
	local hi = vim.api.nvim_set_hl

	hi(0, "Delimiter", { link = Normal })
	hi(0, "Visual", { bg = palette.selection })
	hi(0, "Identifier", { fg = palette.base0D })
	-- hi(0, "Normal", { bg = NONE, fg = palette.base05 }) -- Make theme transparent
	-- hi(0, "@string.documentation.python", { fg = palette.docstring }) -- Make theme transparent
	-- hi(0, "@comment", { fg = palette.docstring }) -- Make theme transparent
	hi(0, "@markup.heading.1.markdown", { fg = palette.base0D }) -- Make theme transparent
	hi(0, "@markup.heading.2.markdown", { fg = palette.base0C }) -- Make theme transparent
	hi(0, "@markup.heading.3.markdown", { fg = palette.base0E }) -- Make theme transparent
	hi(0, "@markup.heading.4.markdown", { fg = palette.base0F }) -- Make theme transparent
end
--}}}
