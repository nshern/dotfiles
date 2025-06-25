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


MiniDeps.add({ source = "nvim-treesitter/nvim-treesitter" })
MiniDeps.add({ source = "github/copilot.vim" })
MiniDeps.add({ source = "catppuccin/nvim", name = "catppuccin" })
MiniDeps.add({ source = "rose-pine/neovim", name = "rose-pine" })

vim.g.copilot_enabled = false
vim.g.copilot_filetypes = {
    markdown = false
}
vim.g.copilot_no_tab_map = true


-- PLUGINS
MiniDeps.now(function()
    require("rose-pine").setup({
        dark_variant = "moon"
    })

    require("mini.cursorword").setup()
    require("mini.git").setup()
    require("mini.extra").setup()
    require("mini.ai").setup()
    require("mini.icons").setup({})
    require("mini.completion").setup({ lsp_completion = { source_func = "omnifunc" } })
    require("mini.jump").setup()
    require("mini.jump2d").setup()
    require("mini.pick").setup({ content = { prefix = function() end } })
    require("mini.surround").setup()
    require("mini.tabline").setup()
    require('mini.files').setup({ content = {} })
    require('mini.statusline').setup()
    require 'nvim-treesitter.configs'.setup({
        ensure_installed = { "c_sharp", "python", "lua", "markdown", "markdown_inline" },
        highlight = { enable = true },
        autoinstall = true
    })

    require("mini.starter").setup({
        query_updaters = 'abcdefghijklmnopqrstuvwxyz0123456789_.',
        autoopen = true,
        items = {
            require("mini.starter").sections.recent_files(15, true, false),
        },
        footer = "",
        header = [[
        ]]
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
            event = { pattern = "%f[%w]()EVENT()%f[%W]", group = "MiniHipatternsHack" },

            -- Highlight hex color strings (`#rrggbb`) using that color
            hex_color = hipatterns.gen_highlighter.hex_color(),
        },
    })

    require("mini.diff").setup({
        view = {
            style = "sign",
            signs = { add = "+", change = "~", delete = "" },
        },
    })
end)
