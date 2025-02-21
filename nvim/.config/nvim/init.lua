--BOOTSTRAP
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

-- PLUGINS
MiniDeps.add({ source = "neovim/nvim-lspconfig" })
MiniDeps.add({ source = "nshern/pike.nvim.git" })

MiniDeps.now(function()
    require("mini.completion").setup({ lsp_completion = { source_func = "omnifunc" } })
    require('mini.files').setup({ content = {} })
    require("mini.icons").setup({})
    require("mini.jump").setup()

    Mvim_starter_custom = function()
        return {
            { name = "Recent Files", action = function() require("mini.extra").pickers.oldfiles() end, section = "Search" },
        }
    end

    require("mini.jump2d").setup()
    require("mini.pick").setup({ content = { prefix = function() end } })
    require("mini.surround").setup()
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
end)

MiniDeps.later(function()
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

    require("mini.diff").setup({
        view = {
            style = "sign",
            signs = { add = "+", change = "~", delete = "-" },
        },
    })
end)


-- OPTIONS
vim.cmd.colorscheme("pike_test")
vim.g.mapleader = " "
vim.g.netrw_banner = 0
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
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

-- KEYMAPS
vim.keymap.set("n", "-", "<CMD>lua MiniFiles.open()<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<Esc>", "<CMD>nohlsearch<CR>")
vim.keymap.set("n", "<S-h>", "<CMD>bp<CR>", { desc = "Jump to previous buffer" })
vim.keymap.set("n", "<S-l>", "<CMD>bn<CR>", { desc = "Jump to next buffer" })
vim.keymap.set("n", "<leader><leader>", "<CMD>Pick buffers<CR>", { desc = "Show buffers" })
vim.keymap.set("n", "<leader>bd", "<CMD>bd<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<C-c>", "<CMD>bd<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>d", "<CMD>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gq", "ggVGgq<C-o><C-o>", { desc = "format" })
vim.keymap.set("n", "<leader>q", "<CMD>bufdo bd<CR>", { desc = "Delete all buffers" })
vim.keymap.set("n", "<leader>sf", "<CMD>Pick files<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>sg", "<CMD>Pick grep<CR>", { desc = "Pick grep" })
vim.keymap.set("n", "<leader>ss", "<CMD>setlocal spell<CR>", { desc = "Set spell" })
vim.keymap.set("n", "<leader>w", "<CMD>write<CR>", { desc = "Write" })
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- LSP
vim.api.nvim_create_autocmd("LspAttach", {
    desc = "LSP actions",
    callback = function(event)
        local opts = { buffer = event.buf }

        -- Display documentation of the symbol under the cursor
        vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)

        -- Jump to the definition
        vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)

        -- Format current file
        vim.keymap.set({ "n", "x" }, "gq", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)

        -- Displays a function's signature information
        vim.keymap.set("i", "<C-s>", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)

        -- Jump to declaration
        vim.keymap.set("n", "<leader>ld", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)

        -- Lists all the implementations for the symbol under the cursor
        vim.keymap.set("n", "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)

        -- Jumps to the definition of the type symbol
        vim.keymap.set("n", "<leader>lt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)

        -- Lists all the references
        vim.keymap.set("n", "<leader>lr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)

        -- Renames all references to the symbol under the cursor
        vim.keymap.set("n", "<leader>ln", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)

        -- Selects a code action available at the current cursor position
        vim.keymap.set("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
    end,
})
