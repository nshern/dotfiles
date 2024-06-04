if vim.g.colors_name ~= nil then
  vim.cmd 'highlight clear'
end
vim.g.colors_name = 'hush'

local hi = vim.api.nvim_set_hl

if vim.o.background == 'dark' then
  hi(0, 'Comment', { fg = '#9b9ea4', italic = true })
  hi(0, 'Function', { fg = '#e0e2ea' })
  hi(0, 'Identifier', { fg = '#e0e2ea' })
  hi(0, 'Normal', { bg = NONE, fg = '#e0e2ea' })
  hi(0, 'Special', { fg = '#e0e2ea' })
  hi(0, 'Statement', { fg = '#e0e2ea' })
  hi(0, 'String', { fg = '#e0e2ea' })
  hi(0, 'MiniStatuslineModeCommand', { bg = '#e0e2ea', bold = true, fg = '#14161b' })
  hi(0, 'MiniStatuslineModeInsert', { bg = '#e0e2ea', bold = true, fg = '#14161b' })
  hi(0, 'MiniStatuslineModeNormal', { bg = '#e0e2ea', bold = true, fg = '#14161b' })
  hi(0, 'MiniStatuslineModeReplace', { bg = '#e0e2ea', bold = true, fg = '#14161b' })
  hi(0, 'MiniStatuslineModeVisual', { bg = '#e0e2ea', bold = true, fg = '#14161b' })
end

if vim.o.background == 'light' then
  hi(0, 'Comment', { fg = '#4f5258', italic = true })
  hi(0, 'Function', { fg = '#14161b' })
  hi(0, 'Identifier', { fg = '#14161b' })
  hi(0, 'Normal', { bg = NONE, fg = '#14161b' })
  hi(0, 'Special', { fg = '#14161b' })
  hi(0, 'Statement', { fg = '#14161b' })
  hi(0, 'String', { fg = '#14161b' })
  hi(0, 'MiniStatuslineModeCommand', { bg = '#14161b', bold = true, fg = '#e0e2ea' })
  hi(0, 'MiniStatuslineModeInsert', { bg = '#14161b', bold = true, fg = '#e0e2ea' })
  hi(0, 'MiniStatuslineModeNormal', { bg = '#14161b', bold = true, fg = '#e0e2ea' })
  hi(0, 'MiniStatuslineModeReplace', { bg = '#14161b', bold = true, fg = '#e0e2ea' })
  hi(0, 'MiniStatuslineModeVisual', { bg = '#14161b', bold = true, fg = '#e0e2ea' })
end
