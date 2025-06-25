return {
    cmd = { "ruff", "server" },

    filetypes = { "python" },
    -- ---@param client vim.lsp.Client
    -- on_attach = function(client)
    --     --
    --     -- Use treesitter highlighting, as it supports injections.
    --     if client.server_capabilities then
    --         client.server_capabilities.semanticTokensProvider = nil
    --     end
    -- end,
    root_markers = {
        "Pipfile",
        "pyproject.toml",
        "pyrightconfig.json",
        "requirements.txt",
        "setup.cfg",
        "setup.py",
    },
}
