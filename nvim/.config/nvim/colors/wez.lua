if vim.g.colors_name ~= nil then
  vim.cmd 'highlight clear'
end
vim.g.colors_name = 'hush'

local hi = vim.api.nvim_set_hl

-- Syntax--
hi(0, 'Comment', { fg = 'darkcyan', italic = true })
hi(0, 'Function', { fg = NONE })
hi(0, 'Identifier', { fg = NONE })
hi(0, 'Normal', { bg = NONE, fg = NONE })
hi(0, 'Special', { fg = NONE })
hi(0, 'Statement', { fg = NONE })
hi(0, 'String', { fg = NONE })
hi(0, 'Variable', { fg = NONE })
hi(0, 'Constant', { fg = NONE })
hi(0, 'Delimiter', { fg = NONE })
hi(0, 'Type', { fg = NONE })
hi(0, '@variable', { fg = NONE })

-- UI
hi(0, 'LineNr', { fg = 'gray' })

-- Plugins
hi(0, 'MiniStatuslineModeCommand', { bg = '#e0e2ea', bold = true, fg = '#14161b' })
hi(0, 'MiniStatuslineModeInsert', { bg = '#e0e2ea', bold = true, fg = '#14161b' })
hi(0, 'MiniStatuslineModeNormal', { bg = '#e0e2ea', bold = true, fg = '#14161b' })
hi(0, 'MiniStatuslineModeReplace', { bg = '#e0e2ea', bold = true, fg = '#14161b' })
hi(0, 'MiniStatuslineModeVisual', { bg = '#e0e2ea', bold = true, fg = '#14161b' })

-- Markdown
hi(0, '@markup.heading.1.markdown', { fg = '#a6dbff', bold = true })
hi(0, '@markup.heading.2.markdown', { fg = '#8cf8f7', bold = true })
hi(0, '@markup.heading.3.markdown', { fg = '#b4f6c0', bold = true })
hi(0, '@markup.heading.4.markdown', { fg = '#ffcaff', bold = true })
hi(0, '@markup.heading.5.markdown', { fg = '#ffc0b9', bold = true })
hi(0, '@markup.heading.6.markdown', { fg = '#fce094', bold = true })
