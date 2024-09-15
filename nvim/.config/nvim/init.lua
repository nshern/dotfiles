--BOOTSTRAP--
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

--PLUGINS--
local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later
now(function()
	require("mini.icons").setup()
	require("mini.files").setup()
	add({ source = "nvim-treesitter/nvim-treesitter" })
	require("nvim-treesitter.configs").setup({
		ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
		auto_install = true,
		indent = {
			enable = true,
		},
		highlight = {
			enable = true,
		},
	})

	require("mini.starter").setup({
		header = "",
		footer = "",
		query_updaters = "abcdefghijklmnopqrstuvwxyz0123456789_.",
	})
	add({
		source = "neovim/nvim-lspconfig",
	})
	require("lspconfig").basedpyright.setup({})
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
later(function()
	add({ source = "nshern/carbonized.nvim" })
	require("carbonized").setup({ transparent_background = false })
	vim.cmd.colorscheme("carbonized")

	-- add({ source = "williamboman/mason.nvim" })
	-- require("mason").setup()

	require("mini.extra").setup()
	require("mini.surround").setup()
	add({ source = "stevearc/conform.nvim" })
	require("conform").setup({
		notify_on_error = false,
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			-- markdown = { "prettier" },
			python = { "isort", "black" },
		},
	})
	require("mini.completion").setup({
		mappings = {
			force_twostep = "<C-t>",
			force_fallback = "<C-f>",
		},
		window = {
			info = { border = "rounded" },
			signature = { border = "rounded" },
		},
	})
	require("mini.colors").setup()
	require("mini.git").setup()
	require("mini.jump").setup()
	require("mini.jump2d").setup()
	require("mini.pick").setup()
	require("mini.statusline").setup({ use_icons = false })
	require("mini.tabline").setup({ show_icons = false })
	require("mini.diff").setup({
		view = {
			style = "sign",
			signs = { add = "█", change = "▒", delete = "" },
		},
	})
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

--OPTIONS--
vim.g.mapleader = " "
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.foldmethod = "marker"
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.linebreak = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 3
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.undofile = true
vim.opt.updatetime = 200
vim.opt.spelllang = { "en", "da" }

--KEYMAPS--
vim.keymap.set("n", "-", "<CMD>lua MiniFiles.open()<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<Esc>", "<CMD>nohlsearch<CR>")
vim.keymap.set("n", "<S-h>", "<CMD>bp<CR>", { desc = "Jump to previous buffer" })
vim.keymap.set("n", "<S-l>", "<CMD>bn<CR>", { desc = "Jump to next buffer" })
vim.keymap.set("n", "<leader>-", "<CMD>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>")
vim.keymap.set("n", "<leader>ba", "<CMD>bufdo bd<CR>", { desc = "Delete all buffers" })
vim.keymap.set("n", "<leader>bd", "<CMD>bd<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>d", "<CMD>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>dc", "<CMD>DepsClean<CR>", { desc = "Deps clean" })
vim.keymap.set("n", "<leader>du", "<CMD>DepsUpdate<CR>", { desc = "Deps Update" })
vim.keymap.set("n", "<leader>sd", "<CMD>Pick diagnostic<CR>", { desc = "Pick diagnostic" })
vim.keymap.set("n", "<leader>sf", "<CMD>Pick files<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>sg", "<CMD>Pick grep live<CR>", { desc = "Pick grep" })
vim.keymap.set("n", "<leader>ss", "<CMD>Pick spellsuggest<CR>", { desc = "Pick spellsuggest" })
vim.keymap.set("n", "<leader>tb", [[:lua ToggleBackground()<CR>]], { noremap = true, silent = true })
vim.keymap.set("n", "gD", "<CMD>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "gl", "<CMDcd %p:h<CR>")
vim.keymap.set("n", "gr", "<CMD>lua vim.lsp.buf.references()<CR>")
vim.keymap.set("n", "gra", "<CMD>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "gre", "<CMD>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- FUNCTIONS
function ToggleBackground()
	if vim.opt.background == "light" then
		vim.opt.background = "dark"
	else
		vim.opt.background = "light"
	end
end

-- AUTOCOMMANDS
vim.cmd([[
augroup MarkdownSpell
autocmd!
autocmd FileType markdown setlocal spell
augroup END
]])
