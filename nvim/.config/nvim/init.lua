-- NOTE: OPTIONS
vim.diagnostic.config({ virtual_text = false })
vim.g.mapleader = " "
vim.o.autocomplete = false
vim.o.clipboard = "unnamedplus"
-- vim.o.complete = ".,w,b"
-- vim.o.completeopt = "fuzzy,menuone,noselect"
vim.o.expandtab = true
vim.o.ignorecase = true
vim.o.cursorline = true
vim.o.mouse = ""
vim.o.number = true
vim.o.pumheight = 7
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.signcolumn = "yes"
vim.o.smartcase = true
vim.o.softtabstop = 4
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.tabstop = 4
vim.o.undofile = true
vim.o.winborder = "rounded"
vim.o.wrap = false

local add = vim.pack.add

-- PLUGINS
add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/nvim-mini/mini.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "master" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
})

vim.cmd.colorscheme("custom")

require("mini.bracketed").setup({})
require("mini.completion").setup({})
require("mini.cursorword").setup({})
require("mini.diff").setup({
	view = {
		style = "sign",
		signs = { add = "█", change = "▒", delete = "" },
	},
})
require("mini.extra").setup({})
require("mini.files").setup({})
require("mini.git").setup({})
require("mini.icons").setup({})
require("mini.jump2d").setup({})
require("mini.pick").setup({})
require("mini.surround").setup({})
require("mini.tabline").setup({})

require("mini.clue").setup({
	-- Define which clues to show. By default shows only clues for custom mappings
	-- (uses `desc` field from the mapping; takes precedence over custom clue).
	clues = {
		require("mini.clue").gen_clues.builtin_completion(),
		require("mini.clue").gen_clues.g(),
		require("mini.clue").gen_clues.marks(),
		require("mini.clue").gen_clues.registers(),
		require("mini.clue").gen_clues.square_brackets(),
		require("mini.clue").gen_clues.windows({ submode_resize = true }),
		require("mini.clue").gen_clues.z(),
	},
	-- Explicitly opt-in for set of common keys to trigger clue window
	triggers = {
		{ mode = { "n", "x" }, keys = "<Leader>" }, -- Leader triggers
		{ mode = "n", keys = "\\" }, -- mini.basics
		{ mode = { "n", "x" }, keys = "[" }, -- mini.bracketed
		{ mode = { "n", "x" }, keys = "]" },
		{ mode = "i", keys = "<C-x>" }, -- Built-in completion
		{ mode = { "n", "x" }, keys = "g" }, -- `g` key
		{ mode = { "n", "x" }, keys = "'" }, -- Marks
		{ mode = { "n", "x" }, keys = "`" },
		{ mode = { "n", "x" }, keys = '"' }, -- Registers
		{ mode = { "i", "c" }, keys = "<C-r>" },
		{ mode = "n", keys = "<C-w>" }, -- Window commands
		{ mode = { "n", "x" }, keys = "s" }, -- `s` key (mini.surround, etc.)
		{ mode = { "n", "x" }, keys = "z" }, -- `z` key
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

		-- Highlight hex color strings (`#rrggbb`) using that color
		hex_color = hipatterns.gen_highlighter.hex_color(),
	},
})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "ruff_organize_imports", "ruff_format" },
		-- You can customize some of the format options for the filetype (:help conform.format)
		go = { "gofmt" },
		rust = { "rustfmt", lsp_format = "fallback" },
		-- Conform will run the first available formatter
		javascript = { "prettierd", "prettier", stop_after_first = true },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

require("nvim-treesitter.configs").setup({
	auto_install = true,
	ensure_installed = {
		"c",
		"bash",
		"bicep",
		"c_sharp",
		"lua",
		"markdown",
		"markdown_inline",
		"python",
		"query",
		"turtle",
		"vim",
		"vimdoc",
		"rust",
	},
	highlight = {
		enable = true,
		disable = { "c" },
		additional_vim_regex_highlighting = false,
	},
})

vim.filetype.add({
	extension = {
		trig = "trig",
	},
})

vim.treesitter.language.register("turtle", "trig")

vim.api.nvim_create_autocmd("FileType", {

	pattern = { "markdown", "typst" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.linebreak = true
		vim.opt_local.breakindent = true
		local surround = require("mini.surround")

		surround.setup({
			custom_surroundings = {
				["b"] = {
					input = function()
						-- Look for a pair of `**` … `**`
						return { "%*%*().-()%*%*" }
					end,
					output = function()
						return { left = "**", right = "**" }
					end,
				},
			},
		})
	end,
})

-- KEYMAPS

local nmap = function(lhs, rhs, desc)
	vim.keymap.set("n", lhs, rhs, { desc = desc })
end

local nmap_leader = function(suffix, rhs, desc)
	vim.keymap.set("n", "<Leader>" .. suffix, rhs, { desc = desc })
end

nmap_leader("b", "", "+Buffer")
nmap_leader("e", "", "+Explore/Edit")
nmap_leader("f", "", "+Find")
nmap_leader("g", "", "+Git")
nmap_leader("l", "", "+Language")
nmap_leader("d", "", "+Dependency")

nmap_leader("bd", ":bd<CR>", "Buff remove")
nmap_leader("du", "<CMD>lua vim.pack.update()<CR>", "Update")
nmap_leader("lf", vim.lsp.buf.format, "Format")
nmap_leader("ed", "<Cmd>lua MiniFiles.open()<CR>", "Directory")
nmap_leader("ef", "<Cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>", "File directory")
nmap_leader("f/", '<Cmd>Pick history scope="/"<CR>', '"/" history')
nmap_leader("f:", '<Cmd>Pick history scope=":"<CR>', '":" history')
nmap_leader("fa", '<Cmd>Pick git_hunks scope="staged"<CR>', "Added hunks (all)")
nmap_leader("fb", "<Cmd>Pick buffers<CR>", "Buffers")
nmap_leader("fc", "<Cmd>Pick git_commits<CR>", "Commits (all)")
nmap_leader("fC", '<Cmd>Pick git_commits path="%"<CR>', "Commits (buf)")
nmap_leader("fd", '<Cmd>Pick diagnostic scope="all"<CR>', "Diagnostic workspace")
nmap_leader("fD", '<Cmd>Pick diagnostic scope="current"<CR>', "Diagnostic buffer")
nmap_leader("ff", "<Cmd>Pick files<CR>", "Files")
nmap_leader("fg", "<Cmd>Pick grep_live<CR>", "Grep live")
nmap_leader("fG", '<Cmd>Pick grep pattern="<cword>"<CR>', "Grep current word")
nmap_leader("fh", "<Cmd>Pick help<CR>", "Help tags")
nmap_leader("fH", "<Cmd>Pick hl_groups<CR>", "Highlight groups")
nmap_leader("fl", '<Cmd>Pick buf_lines scope="all"<CR>', "Lines (all)")
nmap_leader("fL", '<Cmd>Pick buf_lines scope="current"<CR>', "Lines (buf)")
nmap_leader("fm", "<Cmd>Pick git_hunks<CR>", "Modified hunks (all)")
nmap_leader("fM", '<Cmd>Pick git_hunks path="%"<CR>', "Modified hunks (buf)")
nmap_leader("fr", "<Cmd>Pick resume<CR>", "Resume")
nmap_leader("fR", '<Cmd>Pick lsp scope="references"<CR>', "References (LSP)")
nmap_leader("fS", '<Cmd>Pick lsp scope="document_symbol"<CR>', "Symbols document")
nmap_leader("fv", '<Cmd>Pick visit_paths cwd=""<CR>', "Visit paths (all)")
nmap_leader("fV", "<Cmd>Pick visit_paths<CR>", "Visit paths (cwd)")

-- GIT
local git_log_cmd = [[Git log --pretty=format:\%h\ \%as\ │\ \%s --topo-order]]
local git_log_buf_cmd = git_log_cmd .. " --follow -- %"

nmap_leader("ga", "<Cmd>Git diff --cached<CR>", "Added diff")
nmap_leader("gA", "<Cmd>Git diff --cached -- %<CR>", "Added diff buffer")
nmap_leader("gc", "<Cmd>Git commit<CR>", "Commit")
nmap_leader("gC", "<Cmd>Git commit --amend<CR>", "Commit amend")
nmap_leader("gd", "<Cmd>Git diff<CR>", "Diff")
nmap_leader("gD", "<Cmd>Git diff -- %<CR>", "Diff buffer")
nmap_leader("gl", "<Cmd>" .. git_log_cmd .. "<CR>", "Log")
nmap_leader("gL", "<Cmd>" .. git_log_buf_cmd .. "<CR>", "Log buffer")
nmap_leader("go", "<Cmd>lua MiniDiff.toggle_overlay()<CR>", "Toggle overlay")
nmap_leader("gs", "<Cmd>lua MiniGit.show_at_cursor()<CR>", "Show at cursor")

vim.keymap.set("n", "<Esc>", "<CMD>nohlsearch<CR>")
vim.keymap.set({ "n" }, "grd", "<CMD>lua vim.lsp.buf.declaration()<CR>")

nmap_leader("q", ":quit<CR>", "Quit")
nmap_leader("r", ":restart<CR>", "Restart")
nmap_leader("w", ":write<CR>", "Write file")

-- :NOTE LSP

vim.lsp.enable({
	"lua_ls",
	"azure_pipelines_ls",
	"bashls",
	"roslyn_ls",
	"ruff",
	"tinymist",
	"ts_ls",
	"ty",
	"rust_analyzer",
	"turtle_ls",
	"jsonls",
	"gopls",
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				disable = { "lowercase-global", "undefined-global" },
			},
		},
	},
})

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config("jsonls", {
	capabilities = capabilities,
})

local uv = vim.uv or vim.loop
local fs = vim.fs or require("vim.fs")

vim.lsp.config("roslyn_ls", {
	cmd = {
		"dotnet",
		vim.fn.expand("~/tools/roslyn-ls/content/LanguageServer/neutral/Microsoft.CodeAnalysis.LanguageServer.dll"),
		"--logLevel",
		"Information",
		"--extensionLogDirectory",
		fs.joinpath(uv.os_tmpdir(), "roslyn_ls/logs"),
		"--stdio",
	},
})

vim.lsp.config("azure_pipelines_ls", {
	root_dir = function(bufnr, on_dir)
		local fname = vim.api.nvim_buf_get_name(bufnr)
		local root = vim.fs.root(bufnr, { "azure-pipelines.yml", ".git" })
		on_dir(root or vim.fn.fnamemodify(fname, ":p:h"))
	end,
	settings = {
		yaml = {
			schemas = {
				["https://raw.githubusercontent.com/microsoft/azure-pipelines-vscode/master/service-schema.json"] = {
					"/azure-pipeline*.y*l",
					"/*.azure*",
					"Azure-Pipelines/**/*.y*l",
					"Pipelines/*.y*l",
				},
			},
		},
	},
})
