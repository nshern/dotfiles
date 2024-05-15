return {
  'mcchrish/zenbones.nvim',
  dependencies = 'rktjmp/lush.nvim',
  config = function()
    vim.cmd.colorscheme 'zenwritten'
    vim.cmd [[
      augroup MyColorSchemeTweaks
        autocmd!
        autocmd ColorScheme zenwritten lua MyZenwrittenTweaks()
      augroup END
    ]]

    function MyZenwrittenTweaks()
      if vim.o.background == 'light' then
        -- vim.api.nvim_set_hl(0, 'Constant', { fg = '#556570' })
        -- vim.api.nvim_set_hl(0, 'Number', { fg = '#2c363c' })
        vim.api.nvim_set_hl(0, 'Constant', { fg = '#3b8992' })
        vim.api.nvim_set_hl(0, 'Number', { fg = '#3b8992' })
      else
        vim.g.zenwritten = { colorize_diagnostic_underline_text = true }
        -- vim.api.nvim_set_hl(0, 'Constant', { fg = '#868C91' })
        -- vim.api.nvim_set_hl(0, 'Number', { fg = '#B4BDC3' })
        vim.api.nvim_set_hl(0, 'Constant', { fg = '#66a5ad' })
        vim.api.nvim_set_hl(0, 'Number', { fg = '#66a5ad' })
      end
    end

    -- Trigger the tweaks immediately in case the colorscheme is already set
    MyZenwrittenTweaks()
  end,
}
