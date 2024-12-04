-- TODO:
-- Look into installing packages without a package manager?

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
local add, now = MiniDeps.add, MiniDeps.now

now(function()
	add({ source = "ibhagwan/fzf-lua" })
	add({ source = "neovim/nvim-lspconfig" })
	add({ source = "stevearc/conform.nvim" })

	--FORMATTER--
	require("conform").setup({
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "ruff_format" },
			csharp = { "csharpier" },
			go = { "gofmt" },
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	})

	--LSP--
	require("lspconfig").gopls.setup({})
	require("lspconfig").pyright.setup({})
	require("lspconfig").ruff.setup({})
	require("lspconfig").marksman.setup({})
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

--COLORS--
vim.cmd.colorscheme("quiet")
vim.opt.background = "light"
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#0087d7" })
vim.api.nvim_set_hl(0, "Title", { bold = true })
vim.api.nvim_set_hl(0, "markdownH1Delimiter", { fg = "#d7005f", bold = true })
vim.api.nvim_set_hl(0, "markdownH2Delimiter", { fg = "#00af5f", bold = true })
vim.api.nvim_set_hl(0, "markdownH3Delimiter", { fg = "#d78700", bold = true })
vim.api.nvim_set_hl(0, "markdownH4Delimiter", { fg = "#0087d7", bold = true })
vim.api.nvim_set_hl(0, "markdownH5Delimiter", { fg = "#d787d7", bold = true })
vim.api.nvim_set_hl(0, "markdownH6Delimiter", { fg = "#00afaf", bold = true })

--OPTIONS--
vim.g.mapleader = " "
vim.opt.cursorline = true
vim.g.netrw_banner = 0
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = "menu,menuone,preview"
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
vim.opt.wrap = false

-- --KEYMAPS--
-- vim.keymap.set("i", "<C-o>", "<C-X><C-O>")
vim.keymap.set("i", "<C-n>", "<C-X><C-O>", { noremap = true })
vim.keymap.set("n", "-", "<CMD>Ex<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>-", "<CMD>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>")
vim.keymap.set("n", "<Esc>", "<CMD>nohlsearch<CR>")
vim.keymap.set("n", "<S-h>", "<CMD>bp<CR>", { desc = "Jump to previous buffer" })
vim.keymap.set("n", "<S-l>", "<CMD>bn<CR>", { desc = "Jump to next buffer" })
vim.keymap.set("n", "<leader>q", "<CMD>bufdo bd<CR>", { desc = "Delete all buffers" })
vim.keymap.set("n", "<leader>bd", "<CMD>bd<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<C-c>", "<CMD>bd<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>d", "<CMD>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>dc", "<CMD>DepsClean<CR>", { desc = "Deps clean" })
vim.keymap.set("n", "<leader>du", "<CMD>DepsUpdate<CR>", { desc = "Deps Update" })
vim.keymap.set("n", "<leader>sd", "<CMD>Pick diagnostic<CR>", { desc = "Pick diagnostic" })
vim.keymap.set("n", "<leader>sf", "<CMD>FzfLua files<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>w", "<CMD>write<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>sm", "<CMD>FzfLua marks<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader><leader>", "<CMD>FzfLua buffers<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>sg", "<CMD>FzfLua grep<CR>", { desc = "Pick grep" })
vim.keymap.set("n", "<leader>ss", "<CMD>setlocal spell<CR>", { desc = "Set spell" })
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
		vim.keymap.set("n", "<leader>w", ":w<CR>:silent! !prettier -w %<CR>", { noremap = true, silent = true })
		-- vim.keymap.set("n", "j", "gj")
		-- vim.keymap.set("n", "k", "gk")
		vim.opt.wrap = true
		-- vim.opt_local.spell = true
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.opt.colorcolumn = "89"
	end,
})

-- Creating a custom command
vim.cmd("command! ReloadConfig source $MYVIMRC")

-- Creating a key mapping
vim.api.nvim_set_keymap("n", "<leader>r", ":luafile $MYVIMRC<CR>", { noremap = true, silent = true })
