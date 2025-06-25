vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "custom"

local background = vim.o.background

local match_paren_bg = background == "light" and "LightMagenta" or "DarkMagenta"

vim.api.nvim_set_hl(0, "Normal", {})

-- Markdown
if background == "light" then
    vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { bg = 'NvimLightBlue', fg = 'NvimDarkBlue', bold = true })
    vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { bg = 'NvimLightYellow', fg = 'NvimDarkYellow', bold = true })
    vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { bg = 'NvimLightGreen', fg = 'NvimDarkGreen', bold = true })
    vim.api.nvim_set_hl(0, "@markup.heading.4.markdown", { bg = 'NvimLightMagenta', fg = 'NvimDarkMagenta', bold = true })
    vim.api.nvim_set_hl(0, "@markup.heading.5.markdown", { bg = 'NvimLightCyan', fg = 'NvimDarkCyan', bold = true })
    vim.api.nvim_set_hl(0, "@markup.strong.markdown_inline", { fg = "NvimDarkMagenta", bold = True })
    vim.api.nvim_set_hl(0, "SpellBad", { fg = "NvimDarkRed", bold = True, underline = true})
else
    vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { bg = 'NvimDarkBlue', fg = 'NvimLightBlue', bold = true })
    vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { bg = 'NvimDarkYellow', fg = 'NvimLightYellow', bold = true })
    vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { bg = 'NvimDarkGreen', fg = 'NvimLightGreen', bold = true })
    vim.api.nvim_set_hl(0, "@markup.heading.4.markdown", { bg = 'NvimDarkMagenta', fg = 'NvimLightMagenta', bold = true })
    vim.api.nvim_set_hl(0, "@markup.heading.5.markdown", { bg = 'NvimDarkCyan', fg = 'NvimLightCyan', bold = true })
    vim.api.nvim_set_hl(0, "@markup.strong.markdown_inline", { fg = "NvimLightMagenta", bold = True })
    vim.api.nvim_set_hl(0, "SpellBad", { fg = "NvimLightRed", bold = True, underline = true})
end
vim.api.nvim_set_hl(0, "@lsp.type.class.markdown", { link = "DiagnosticWarn" })
vim.api.nvim_set_hl(0, "@keyword.directive.markdown", { link = "String" })
vim.api.nvim_set_hl(0, "@markup.link.label.markdown_inline", { link = "Identifier" })

vim.api.nvim_set_hl(0, "MatchParen", { bg = match_paren_bg, bold = true })

-- UI
vim.api.nvim_set_hl(0, "MiniTablineCurrent", { underline = true })
