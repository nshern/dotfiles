local palette

if vim.o.background == 'dark' then
  palette = {
    base00 = '#002b36', -- Default Background
    base01 = '#073642', -- Lighter Background (Used for status bars, line number and folding marks)
    base02 = '#586e75', -- Selection Background
    base03 = '#657b83', -- Comments, Invisibles, Line Highlighting
    base04 = '#839496', -- Dark Foreground (Used for status bars)
    base05 = '#93a1a1', -- Default Foreground, Caret, Delimiters, Operators
    base06 = '#eee8d5', -- Light Foreground (Not often used)
    base07 = '#fdf6e3', -- Light Background (Not often used)
    base08 = '#dc322f', -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = '#cb4b16', -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = '#b58900', -- Classes, Markup Bold, Search Text Background
    base0B = '#859900', -- Strings, Inherited Class, Markup Code, Diff Inserted
    base0C = '#2aa198', -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = '#268bd2', -- Functions, Methods, Attribute IDs, Headings
    base0E = '#6c71c4', -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = '#d33682', -- Deprecated, Opening/Closing Embedded Language Tags
  }
end

if vim.o.background == 'light' then
  palette = {

    base00 = '#fdf6e3', -- Light Background (Not often used)
    base01 = '#eee8d5', -- Light Foreground (Not often used)
    base02 = '#93a1a1', -- Default Foreground, Caret, Delimiters, Operators
    base03 = '#839496', -- Dark Foreground (Used for status bars)
    base04 = '#657b83', -- Comments, Invisibles, Line Highlighting
    base05 = '#586e75', -- Selection Background
    base06 = '#073642', -- Lighter Background (Used for status bars, line number and folding marks)
    base07 = '#002b36', -- Default Background
    base08 = '#dc322f', -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = '#cb4b16', -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = '#b58900', -- Classes, Markup Bold, Search Text Background
    base0B = '#859900', -- Strings, Inherited Class, Markup Code, Diff Inserted
    base0C = '#2aa198', -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = '#268bd2', -- Functions, Methods, Attribute IDs, Headings
    base0E = '#6c71c4', -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = '#d33682', -- Deprecated, Opening/Closing Embedded Language Tags
  }
end

if palette then
  require('mini.base16').setup { palette = palette }
  vim.g.colors_name = 'solarized'
end
