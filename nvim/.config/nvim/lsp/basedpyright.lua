return {
    cmd = { "basedpyright-langserver", "--stdio" },
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
    settings = {
        basedpyright = {
            analysis = {
                autoImportCompletions = true,
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                reportMissingTypeStubs = true,
                reportUndefinedVariable = "none", -- covered by ruff
                reportUnreachable = "none",
                reportUnusedImport = "none", -- covered by ruff
                typeCheckingMode = "basic", -- standard
                useLibraryCodeForTypes = true,
            },
            disableOrganizeImports = false,
        },
    },
    single_file_support = true,
}

