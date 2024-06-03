return {
  config = function()
    -- Set background color
    vim.cmd 'highlight Normal guibg=#000000'

    -- Set syntax colors
    vim.cmd 'highlight TSVariable guifg=#FFFFFF'
    vim.cmd 'highlight TSFunction guifg=#FFFFFF'
    vim.cmd 'highlight TSKeyword guifg=#FFFFFF'
    vim.cmd 'highlight TSString guifg=#FFFFFF'
    vim.cmd 'highlight TSComment guifg=#808080'

    -- Additional Treesitter highlights
    vim.cmd 'highlight TSType guifg=#FFFFFF'
    vim.cmd 'highlight TSConstant guifg=#FFFFFF'
    vim.cmd 'highlight TSConditional guifg=#FFFFFF'
    vim.cmd 'highlight TSRepeat guifg=#FFFFFF'
    vim.cmd 'highlight TSOperator guifg=#FFFFFF'
    vim.cmd 'highlight TSNumber guifg=#FFFFFF'
    vim.cmd 'highlight TSBoolean guifg=#FFFFFF'
    vim.cmd 'highlight TSFloat guifg=#FFFFFF'
    vim.cmd 'highlight TSNone guifg=#FFFFFF'
    vim.cmd 'highlight TSLabel guifg=#FFFFFF'
    vim.cmd 'highlight TSPunctDelimiter guifg=#FFFFFF'
    vim.cmd 'highlight TSPunctBracket guifg=#FFFFFF'
    vim.cmd 'highlight TSPunctSpecial guifg=#FFFFFF'
    vim.cmd 'highlight TSStringRegex guifg=#FFFFFF'
    vim.cmd 'highlight TSStringEscape guifg=#FFFFFF'
    vim.cmd 'highlight TSCharacter guifg=#FFFFFF'
    vim.cmd 'highlight TSTag guifg=#FFFFFF'
    vim.cmd 'highlight TSTagDelimiter guifg=#FFFFFF'
    vim.cmd 'highlight TSText guifg=#FFFFFF'
    vim.cmd 'highlight TSStrong guifg=#FFFFFF'
    vim.cmd 'highlight TSEmphasis guifg=#FFFFFF'
    vim.cmd 'highlight TSUnderline guifg=#FFFFFF'
    vim.cmd 'highlight TSTitle guifg=#FFFFFF'
    vim.cmd 'highlight TSLiteral guifg=#FFFFFF'
    vim.cmd 'highlight TSURI guifg=#FFFFFF'
    vim.cmd 'highlight TSMath guifg=#FFFFFF'
    vim.cmd 'highlight TSTextReference guifg=#FFFFFF'
    vim.cmd 'highlight TSEnvironment guifg=#FFFFFF'
    vim.cmd 'highlight TSEnvironmentName guifg=#FFFFFF'
    vim.cmd 'highlight TSNote guifg=#FFFFFF'
    vim.cmd 'highlight TSWarning guifg=#FFFFFF'
    vim.cmd 'highlight TSDanger guifg=#FFFFFF'

    -- Set the colorscheme
  end,
}
