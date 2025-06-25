vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.o.termguicolors = false

vim.g.colors_name = "term"

local background = vim.o.background

local match_paren_bg = background == "light" and 200 or 200
local cursorline = background == "light" and 236 or 236
local pmenu = background == "light" and 236 or 236
local colorcolumn = background == "light" and 240 or 240

vim.api.nvim_set_hl(0, "Normal", {})

-- Markdown

if background == "light" then
    vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { bg = 'NvimLightBlue', fg = 'NvimDarkBlue', bold = true })
else
    vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { bg = 'NvimDarkBlue', fg = 'NvimLightBlue', bold = true })
end

vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { ctermbg = 12, ctermfg=0, bold = true})
vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { ctermbg = 2, ctermfg=0, bold = true})
vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { ctermbg = 5, ctermfg=0, bold = true})
vim.api.nvim_set_hl(0, "@markup.heading.4.markdown", { ctermbg = 6, ctermfg=0, bold = true})
vim.api.nvim_set_hl(0, "CursorLine", { ctermbg = cursorline })
vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = colorcolumn })
vim.api.nvim_set_hl(0, "pmenu", { ctermbg = pmenu })
vim.api.nvim_set_hl(0, "MatchParen", { ctermbg = match_paren_bg, bold = true })
vim.api.nvim_set_hl(0, "Visual", { ctermbg = 8 })
vim.api.nvim_set_hl(0, "TabLineSel", { ctermbg = 8, underline = true })
vim.api.nvim_set_hl(0, "Comment", { ctermfg = 245, italic = true })
vim.api.nvim_set_hl(0, "LineNr", { ctermfg = 3 })
vim.api.nvim_set_hl(0, "SpellBad", { ctermfg = 9, bold = True, underline = true})
vim.api.nvim_set_hl(0, "StatusLineNC", { ctermbg = 8, ctermfg = 15})
