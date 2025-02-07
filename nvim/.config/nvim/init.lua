vim.cmd.colorscheme("quiet")
vim.g.mapleader = " "
vim.g.netrw_banner = 0
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = "menu,menuone,popup"
vim.opt.cursorline = false
vim.opt.expandtab = true
vim.opt.foldmethod = "marker"
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.linebreak = true
vim.opt.number = true
vim.opt.pumheight = 10
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

vim.keymap.set("i", "<C-n>", "<C-X><C-O>", { noremap = true })
vim.keymap.set("n", "-", "<CMD>Ex<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<Esc>", "<CMD>nohlsearch<CR>")
vim.keymap.set("n", "<S-h>", "<CMD>bp<CR>", { desc = "Jump to previous buffer" })
vim.keymap.set("n", "<S-l>", "<CMD>bn<CR>", { desc = "Jump to next buffer" })
vim.keymap.set("n", "<leader><leader>", "<CMD>FzfLua buffers<CR>", { desc = "Show Fzf buffers" })
vim.keymap.set("n", "<leader>bd", "<CMD>bd<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<C-c>", "<CMD>bd<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>d", "<CMD>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gq", "ggVGgq<C-o><C-o>", { desc = "format" })
vim.keymap.set("n", "<leader>q", "<CMD>bufdo bd<CR>", { desc = "Delete all buffers" })
vim.keymap.set("n", "<leader>sd", "<CMD>FzfLua diagnostics_document<CR>", { desc = "Fzf diagnostic" })
vim.keymap.set("n", "<leader>sf", "<CMD>FzfLua files<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>sg", "<CMD>FzfLua grep<CR>", { desc = "Pick grep" })
vim.keymap.set("n", "<leader>sm", "<CMD>FzfLua marks<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>ss", "<CMD>setlocal spell<CR>", { desc = "Set spell" })
vim.keymap.set("n", "<leader>w", "<CMD>write<CR>", { desc = "Write" })
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })


vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    -- Display documentation of the symbol under the cursor
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)

    -- Jump to the definition
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)

    -- Format current file
    vim.keymap.set({'n', 'x'}, 'gq', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)

    -- Displays a function's signature information
    vim.keymap.set('i', '<C-s>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)

    -- Jump to declaration
    vim.keymap.set('n', '<leader>ld', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)

    -- Lists all the implementations for the symbol under the cursor
    vim.keymap.set('n', '<leader>li', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)

    -- Jumps to the definition of the type symbol
    vim.keymap.set('n', '<leader>lt', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)

    -- Lists all the references
    vim.keymap.set('n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)

    -- Renames all references to the symbol under the cursor
    vim.keymap.set('n', '<leader>ln', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)

    -- Selects a code action available at the current cursor position
    vim.keymap.set('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end,
})

-- List of compatible language servers is here:
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
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
