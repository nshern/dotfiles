-- vim.opt_local.conceallevel = 2  -- fully hide the concealed text
vim.o.spell = true
vim.o.spelllang = "en"
vim.opt.colorcolumn = "80"

vim.keymap.set("n", "<leader>ne", function()
    -- 1) get today’s date in YYYY-MM-DD format
    local today = os.date("%Y-%m-%d")
    local header = "# " .. today

    -- 2) build each line of the snippet
    local lines = {
        header

    }

    vim.api.nvim_put(lines, "l", true, false)
end, {
    desc = "Insert daily prompts (with current date)",
})


vim.keymap.set("n", "<leader>nw", function()
    -- 1) get today’s date in YYYY-MM-DD format

    -- 2) build each line of the snippet
    local lines = {
        "# What",
        "",
        "# Why",
        "",
        "# How",
        "",
        "# Sources",

    }

    vim.api.nvim_put(lines, "l", true, false)
end, {})
