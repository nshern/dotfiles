vim.opt.termguicolors = false
vim.cmd('hi clear')
vim.cmd('syntax reset')
vim.g.colors_name = 'custom'

local blanks = {
    'String',
    'Constant',
    'Function',
    'Identifier',
    'Special'
}

for _, blank in pairs(blanks) do
    vim.api.nvim_set_hl(0, blank, { link = Normal })
end

vim.api.nvim_set_hl(0, 'LineNr', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'CurrentLineNr', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'Comment', { ctermfg = 8})
vim.api.nvim_set_hl(0, 'Visual', { ctermbg = 3, ctermfg = 0 })
vim.api.nvim_set_hl(0, "MatchParen", { ctermbg = 5, bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { ctermbg = 8, ctermfg= 15, bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { ctermbg = 8, ctermfg= 15, bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { ctermbg = 8, ctermfg= 15, bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.4.markdown", { ctermbg = 8, ctermfg= 15, bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.5.markdown", { ctermbg = 8, ctermfg= 15, bold = true })
vim.api.nvim_set_hl(0, 'CursorLine', { underline = true, sp = 8 })
vim.api.nvim_set_hl(0, 'CursorLineNr', { ctermfg = 8, bold = true })
vim.api.nvim_set_hl(0, 'ColorColumn', { ctermbg = 8 })
vim.api.nvim_set_hl(0, "@lsp.type.class.markdown", { link = "DiagnosticWarn" })
vim.api.nvim_set_hl(0, "@keyword.directive.markdown", { link = "String" })
vim.api.nvim_set_hl(0, "@markup.link.label.markdown_inline", { link = "Identifier" })

vim.api.nvim_set_hl(0, "MiniPickMatchRanges", { ctermbg = 3, ctermfg = 0  })
vim.api.nvim_set_hl(0, "MiniIconsAzure", { link = "MiniIconsBlue" })
vim.api.nvim_set_hl(0, "MiniFilesBorderModified", { ctermbg = 0, ctermfg=11  })
vim.api.nvim_set_hl(0, "StatusLine", { ctermbg = 7, ctermfg=0, bold = true})
vim.api.nvim_set_hl(0, "TabLineSel", { ctermbg =7, ctermfg=0, bold = true, underline = true})
vim.api.nvim_set_hl(0, "MiniTabLineHidden", { ctermbg = 8, ctermfg=0})
vim.api.nvim_set_hl(0, "MiniTabLineModifiedCurrent", { ctermbg = 3, ctermfg=0})
