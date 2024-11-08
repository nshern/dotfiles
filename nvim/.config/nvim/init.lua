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

	add({ source = "stevearc/oil.nvim" })
	require("oil").setup({ skip_confirm_for_simple_edits = true, delete_to_trash = true })
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

	add({ source = "neovim/nvim-lspconfig" })
	add({ source = "stevearc/conform.nvim" })

	--LSP--
	require("lspconfig").gopls.setup({})
	require("lspconfig").pyright.setup({})
	require("lspconfig").lua_ls.setup({})

	--FORMATTER--
	require("conform").setup({
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			csharp = { "csharpier" },
			markdown = { "prettier" },
			go = { "gofmt" },
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	})

	--CSHARP--
	require("lspconfig").omnisharp.setup({})

	--GO--
	require("lspconfig").gopls.setup({})

	--PYTHON--
	require("lspconfig").pyright.setup({})
	require("lspconfig").ruff.setup({})

	--MARKDOWN--
	require("lspconfig").marksman.setup({})

	--TOML--
	require("lspconfig").taplo.setup({})

	--LUA--
	require("lspconfig").lua_ls.setup({
		settings = {
			Lua = {
				diagnostics = {
					disable = { "lowercase-global", "undefined-global" },
				},
			},
		},
	})

	--TERRAFORM--
	require("lspconfig").terraformls.setup({})

	vim.api.nvim_create_autocmd({ "BufWritePre" }, {
		pattern = { "*.tf", "*.tfvars" },
		callback = function()
			vim.lsp.buf.format()
		end,
	})

	-- override file detection https://github.com/neovim/neovim/blob/a064ed622927b4c5e30165abbe54db841359c71f/runtime/lua/vim/filetype/detect.lua#L1473
	vim.filetype.add({
		extension = {
			tf = "terraform",
		},
	})
end)
--
later(function() end)

--OPTIONS--
vim.g.mapleader = " "
vim.g.termguicolors = true
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.expandtab = true
vim.opt.foldmethod = "marker"
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.linebreak = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 3
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.softtabstop = 4
vim.opt.spelllang = { "en", "da" }
vim.opt.tabstop = 4
vim.opt.undofile = true
vim.opt.updatetime = 200

-- COLORS --
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
end

if vim.o.background == "light" then
	hi(0, "Visual", { bg = "NvimDarkYellow", fg = "NvimLightGrey1" })
end

-- --KEYMAPS--
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
vim.keymap.set("n", "<leader><leader>", "<CMD>FzfLua buffers<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>w", "<CMD>write<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>sg", "<CMD>FzfLua grep<CR>", { desc = "Pick grep" })
vim.keymap.set("n", "<leader>ss", "<CMD>setlocal spell<CR>", { desc = "Set spell" })
vim.keymap.set("n", "<leader>tb", [[:lua ToggleBackground()<CR>]], { noremap = true, silent = true })
vim.keymap.set("n", "gD", "<CMD>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "<leader>gq", "ggVGgq<C-o><C-o>", { desc = "format" })
vim.keymap.set("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "gl", "<CMDcd %p:h<CR>")
vim.keymap.set("n", "gr", "<CMD>lua vim.lsp.buf.references()<CR>")
vim.keymap.set("n", "<leader>ca", "<CMD>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<leader>re", "<CMD>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tb", ":lua toggle_background()<CR>", { noremap = true, silent = true })

-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	callback = function(args)
-- 		local client = vim.lsp.get_client_by_id(args.data.client_id)
-- 		if client then
-- 			client.server_capabilities.semanticTokensProvider = nil
-- 		end
-- 	end,
-- })

--STATUS LINE--
local statusline = {
	" %t",
	"%r",
	"%m",
	"%=",
	"%{&filetype}",
	" %2p%%",
	" %3l:%-2c ",
}
vim.o.statusline = table.concat(statusline, "")

--COLORSCHEME--
function toggle_background()
	if vim.o.background == "dark" then
		vim.o.background = "light"
	else
		vim.o.background = "dark"
	end
end

--AUTOCOMMANDS--
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt_local.textwidth = 120
		vim.opt_local.colorcolumn = "121"
		vim.opt_local.spell = true
	end,
})

-- Creating a custom command
vim.cmd("command! ReloadConfig source $MYVIMRC")

-- Creating a key mapping
vim.api.nvim_set_keymap("n", "<leader>r", ":luafile $MYVIMRC<CR>", { noremap = true, silent = true })
