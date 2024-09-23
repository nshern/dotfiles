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
	-- add({ source = "nvim-treesitter/nvim-treesitter" })
	-- 	require("nvim-treesitter.configs").setup({
	-- 		ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
	-- 		auto_install = true,
	-- 		indent = {
	-- 			enable = true,
	-- 		},
	-- 		highlight = {
	-- 			enable = true,
	-- 		},
	-- 	})
	add({
		source = "neovim/nvim-lspconfig",
	})
	require("lspconfig").pyright.setup({})
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

later(function()
	add({ source = "stevearc/oil.nvim" })
	require("oil").setup({ skip_confirm_for_simple_edits = true, delete_to_trash = true })
	require("mini.tabline").setup()
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

	add({ source = "ibhagwan/fzf-lua" })
	require("fzf-lua").setup({ defaults = { file_icons = false } })
end)

--OPTIONS--
vim.g.termguicolors = true
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
vim.opt.spelllang = { "en", "da" }
vim.opt.undofile = true
vim.opt.updatetime = 200

-- FUNCTIONS --
function toggle_background()
	if vim.o.background == "dark" then
		vim.o.background = "light"
		grayscale()
	else
		vim.o.background = "dark"
		grayscale()
	end
end

function grayscale()
	if vim.o.background == "dark" then
		vim.api.nvim_set_hl(0, "Normal", { bg = "#000000", fg = "#e0e0e0" })
	end

	vim.api.nvim_set_hl(0, "Identifier", { link = Normal })
	vim.api.nvim_set_hl(0, "Function", { link = Normal })
	vim.api.nvim_set_hl(0, "String", { link = Normal })
	vim.api.nvim_set_hl(0, "Special", { link = Normal })
end

--KEYMAPS--
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
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
vim.keymap.set("n", "<leader>sf", "<CMD>FzfLua files<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>sb", "<CMD>FzfLua buffers<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>sg", "<CMD>FzfLua grep<CR>", { desc = "Pick grep" })
vim.keymap.set("n", "<leader>ss", "<CMD>FzfLua spell_suggest<CR>", { desc = "Pick spellsuggest" })
vim.keymap.set("n", "<leader>tb", [[:lua ToggleBackground()<CR>]], { noremap = true, silent = true })
vim.keymap.set("n", "gD", "<CMD>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "gl", "<CMDcd %p:h<CR>")
vim.keymap.set("n", "gr", "<CMD>lua vim.lsp.buf.references()<CR>")
vim.keymap.set("n", "gra", "<CMD>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "gre", "<CMD>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tb", ":lua toggle_background()<CR>", { noremap = true, silent = true })

-- AUTOCOMMANDS
vim.cmd([[
augroup MarkdownSpell
autocmd!
autocmd FileType markdown setlocal spell
augroup END
]])

grayscale()
