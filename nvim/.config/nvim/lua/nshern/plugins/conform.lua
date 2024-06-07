return {
  {
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = false,
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'isort', 'black' },
        ['javascript'] = { 'prettier' },
        ['javascriptreact'] = { 'prettier' },
        ['typescript'] = { 'prettier' },
        ['typescriptreact'] = { 'prettier' },
        ['vue'] = { 'prettier' },
        ['css'] = { 'prettier' },
        ['scss'] = { 'prettier' },
        ['less'] = { 'prettier' },
        ['html'] = { 'prettier' },
        ['json'] = { 'prettier' },
        ['jsonc'] = { 'prettier' },
        ['yaml'] = { 'prettier' },
        ['markdown'] = { 'prettier' },
        ['markdown.mdx'] = { 'prettier' },
        ['graphql'] = { 'prettier' },
        ['handlebars'] = { 'prettier' }, --
        ['xml'] = { 'xmlformatter' }, --
      },
    },
  },
}
