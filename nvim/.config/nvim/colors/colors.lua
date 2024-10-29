if vim.g.colors_name ~= nil then
    vim.cmd 'highlight clear'
end
vim.g.colors_name = 'colors'

local hi = vim.api.nvim_set_hl

-- PALETTE
-- {{{
local palette = {
    black = "#000000",
    white = "#ffffff",
    red = {
        [100] = "#2d0709",
        [10] = "#fff1f1",
        [20] = "#ffd7d9",
        [30] = "#ffb3b8",
        [40] = "#ff8389",
        [50] = "#fa4d56",
        [60] = "#da1e28",
        [70] = "#a2191f",
        [80] = "#750e13",
        [90] = "#520408",
    },
    magenta = {
        [100] = "#2a0a18",
        [10] = "#fff0f7",
        [20] = "#ffd6e8",
        [30] = "#ffafd2",
        [40] = "#ff7eb6",
        [50] = "#ee5396",
        [60] = "#d02670",
        [70] = "#9f1853",
        [80] = "#740937",
        [90] = "#510224",
    },
    purple = {
        [100] = "#1c0f30",
        [10] = "#f6f2ff",
        [20] = "#e8Daff",
        [30] = "#d4bbff",
        [40] = "#be95ff",
        [50] = "#a56eff",
        [60] = "#8a3ffc",
        [70] = "#6929c4",
        [80] = "#491d8b",
        [90] = "#31135e",
    },
    blue = {
        [100] = "#001141",
        [10] = "#edf5ff",
        [20] = "#d0e2ff",
        [30] = "#a6c8ff",
        [40] = "#78a9ff",
        [50] = "#4589ff",
        [60] = "#0f62fe",
        [70] = "#0043ce",
        [80] = "#002d9c",
        [90] = "#001d6c",
    },
    cyan = {
        [100] = "#061727",
        [10] = "#e5f6ff",
        [20] = "#bae6ff",
        [30] = "#82cfff",
        [40] = "#33b1ff",
        [50] = "#1192e8",
        [60] = "#0072c3",
        [70] = "#00539a",
        [80] = "#003a6d",
        [90] = "#012749",
    },
    teal = {
        [100] = "#081a1c",
        [10] = "#d9fbfb",
        [20] = "#9ef0f0",
        [30] = "#3ddbd9",
        [40] = "#08bdba",
        [50] = "#009d9a",
        [60] = "#007d79",
        [70] = "#005d5d",
        [80] = "#004144",
        [90] = "#022b30",
    },
    green = {
        [100] = "#071908",
        [10] = "#defbe6",
        [20] = "#a7F0ba",
        [30] = "#6fdc8c",
        [40] = "#42be65",
        [50] = "#24a148",
        [60] = "#198038",
        [70] = "#0e6027",
        [80] = "#044317",
        [90] = "#022d0d",
    },
    gray = {
        [100] = "#161616",
        [10] = "#f4f4f4",
        [20] = "#e0e0e0",
        [30] = "#c6c6c6",
        [40] = "#a8a8a8",
        [50] = "#8d8d8d",
        [60] = "#6f6f6f",
        [70] = "#525252",
        [80] = "#393939",
        [90] = "#262626",
    },
    yellow = {
        [100] = "#1c1500",
        [10] = "#fcf4d6",
        [20] = "#fddc69",
        [30] = "#f1c21b",
        [40] = "#d2a106",
        [50] = "#b28600",
        [60] = "#8e6a00",
        [70] = "#684e00",
        [80] = "#483700",
        [90] = "#302400",
    },
    orange = {
        [100] = "#231000",
        [10] = "#fff2e8",
        [20] = "#ffd9Be",
        [30] = "#ffb784",
        [40] = "#ff832b",
        [50] = "#eb6200",
        [60] = "#ba4e00",
        [70] = "#8a3800",
        [80] = "#5e2900",
        [90] = "#3e1a00",
    },
}
-- }}}

if vim.o.background == "dark" then
    -- {{{
    hi(0, '@variable', { link = Normal })
    hi(0, 'Added', { fg = palette.green[40] })
    hi(0, 'Changed', { fg = palette.teal[40] })
    hi(0, 'ColorColumn', { bg = palette.gray[100] })
    hi(0, 'Type', { link = Normal })
    hi(0, 'Operator', { link = Normal })
    hi(0, 'Comment', { fg = palette.gray[60], bold = true })
    hi(0, '@string.documentation.python', { fg = palette.green[50] })
    hi(0, 'Conceal', { fg = palette.gray[100] })
    hi(0, 'Constant', { link = Normal })
    hi(0, 'CurSearch', { fg = palette.black, bg = palette.yellow[40] })
    hi(0, 'CursorColumn', { bg = palette.gray[80] })
    hi(0, 'CursorLine', { bg = palette.gray[80] })
    hi(0, 'Delimiter', { link = Normal })
    hi(0, 'DiagnosticError', { fg = palette.red[50] })
    hi(0, 'DiagnosticHint', { fg = palette.blue[40] })
    hi(0, 'DiagnosticInfo', { fg = palette.teal[40] })
    hi(0, 'DiagnosticOk', { fg = palette.green[40] })
    hi(0, 'DiagnosticUnderlineError', { sp = palette.red[50], underline = 1 })
    hi(0, 'DiagnosticUnderlineHint', { sp = palette.blue[40], underline = 1 })
    hi(0, 'DiagnosticUnderlineInfo', { sp = palette.teal[40], underline = 1 })
    hi(0, 'DiagnosticUnderlineOk', { sp = palette.green[40], underline = 1 })
    hi(0, 'DiagnosticUnderlineWarn', { sp = palette.yellow[30], underline = 1 })
    hi(0, 'DiagnosticWarn', { fg = palette.yellow[30] })
    hi(0, 'DiffAdd', { fg = palette.white, bg = palette.green[70] })
    hi(0, 'DiffChange', { bg = palette.gray[100], fg = palette.white })
    hi(0, 'DiffDelete', { bg = palette.gray[100], fg = palette.white })
    hi(0, 'Directory', { fg = palette.teal[30] })
    hi(0, 'ErrorMsg', { fg = palette.red[50] })
    hi(0, 'Function', { link = Normal })
    hi(0, 'Identifier', { link = Normal })
    hi(0, 'LineNr', { fg = palette.gray[70] })
    hi(0, 'ModeMsg', { fg = palette.green[40] })
    hi(0, 'MoreMsg', { fg = palette.cyan[40] })
    hi(0, 'NonText', { fg = palette.gray[70] })
    hi(0, 'Normal', { fg = palette.gray[20] })
    hi(0, 'Question', { fg = palette.cyan[40] })
    hi(0, 'QuickFixLine', { fg = palette.teal[40] })
    hi(0, 'Removed', { fg = palette.red[50] })
    hi(0, 'Search', { bg = palette.yellow[70], fg = palette.white })
    hi(0, 'Special', { link = Normal })
    hi(0, 'SpecialKey', { fg = palette.gray[70] })
    hi(0, 'SpellBad', { sp = palette.red[50], undercurl = 1 })
    hi(0, 'SpellCap', { sp = palette.yellow[30], undercurl = 1 })
    hi(0, 'SpellLocal', { sp = palette.green[40], undercurl = 1 })
    hi(0, 'SpellRare', { sp = palette.teal[40], undercurl = 1 })
    hi(0, 'Statement', { link = Normal })
    hi(0, 'StatusLine', { bg = palette.gray[90], fg = palette.white })
    hi(0, 'String', { link = Normal })
    hi(0, 'Title', { link = Normal })
    hi(0, 'Visual', { bg = palette.yellow[40], fg = palette.black })
    hi(0, 'WarningMsg', { fg = palette.yellow[30] })
end

-- }}}

if vim.o.background == "light" then
    -- {{{
    hi(0, '@variable', { link = Normal })
    hi(0, 'Added', { fg = palette.green[70] })
    hi(0, 'Changed', { fg = palette.teal[70] })
    hi(0, 'ColorColumn', { bg = palette.gray[100] })
    hi(0, 'Type', { link = Normal })
    hi(0, 'Operator', { link = Normal })
    hi(0, 'Comment', { fg = palette.cyan[50] })
    hi(0, '@string.documentation.python', { fg = palette.green[50] })
    hi(0, 'Conceal', { fg = palette.gray[100] })
    hi(0, 'Constant', { link = Normal })
    hi(0, 'CurSearch', { fg = palette.white, bg = palette.yellow[70] })
    hi(0, 'CursorColumn', { bg = palette.gray[80] })
    hi(0, 'CursorLine', { bg = palette.gray[80] })
    hi(0, 'Delimiter', { link = Normal })
    hi(0, 'DiagnosticError', { fg = palette.red[50] })
    hi(0, 'DiagnosticHint', { fg = palette.blue[70] })
    hi(0, 'DiagnosticInfo', { fg = palette.teal[70] })
    hi(0, 'DiagnosticOk', { fg = palette.green[70] })
    hi(0, 'DiagnosticUnderlineError', { sp = palette.red[50], underline = 1 })
    hi(0, 'DiagnosticUnderlineHint', { sp = palette.blue[70], underline = 1 })
    hi(0, 'DiagnosticUnderlineInfo', { sp = palette.teal[70], underline = 1 })
    hi(0, 'DiagnosticUnderlineOk', { sp = palette.green[70], underline = 1 })
    hi(0, 'DiagnosticUnderlineWarn', { sp = palette.yellow[70], underline = 1 })
    hi(0, 'DiagnosticWarn', { fg = palette.yellow[70] })
    hi(0, 'DiffAdd', { fg = palette.white, bg = palette.green[70] })
    hi(0, 'DiffChange', { bg = palette.gray[100], fg = palette.white })
    hi(0, 'DiffDelete', { bg = palette.gray[100], fg = palette.white })
    hi(0, 'Directory', { fg = palette.teal[30] })
    hi(0, 'ErrorMsg', { fg = palette.red[50] })
    hi(0, 'Function', { link = Normal })
    hi(0, 'Identifier', { link = Normal })
    hi(0, 'LineNr', { fg = palette.gray[70] })
    hi(0, 'ModeMsg', { fg = palette.green[70] })
    hi(0, 'MoreMsg', { fg = palette.cyan[70] })
    hi(0, 'NonText', { fg = palette.gray[70] })
    hi(0, 'Normal', { bg = palette.white, fg = palette.black })
    hi(0, 'Question', { fg = palette.cyan[70] })
    hi(0, 'QuickFixLine', { fg = palette.teal[40] })
    hi(0, 'Removed', { fg = palette.red[50] })
    hi(0, 'Search', { bg = palette.yellow[30], fg = palette.white })
    hi(0, 'Special', { link = Normal })
    hi(0, 'SpecialKey', { fg = palette.gray[70] })
    hi(0, 'SpellBad', { sp = palette.red[50], undercurl = 1 })
    hi(0, 'SpellCap', { sp = palette.yellow[30], undercurl = 1 })
    hi(0, 'SpellLocal', { sp = palette.green[40], undercurl = 1 })
    hi(0, 'SpellRare', { sp = palette.teal[40], undercurl = 1 })
    hi(0, 'Statement', { link = Normal })
    hi(0, 'StatusLine', { bg = palette.gray[90], fg = palette.white })
    hi(0, 'String', { link = Normal })
    hi(0, 'Title', { link = Normal })
    hi(0, 'Visual', { bg = palette.yellow[70], fg = palette.black })
    hi(0, 'WarningMsg', { fg = palette.yellow[70] })
end

-- }}}
