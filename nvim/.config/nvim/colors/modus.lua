local palette

if vim.o.background == 'dark' then
  palette = {
    base00 = '#000000', -- Default Background
    base01 = '#1e1e1e', -- Lighter Background (Used for status bars, line number and folding marks)
    base02 = '#535353', -- Selection Background
    base03 = '#646464', -- Comments, Invisibles, Line Highlighting
    base04 = '#989898', -- Dark Foreground (Used for status bars)
    base05 = '#ffffff', -- Default Foreground, Caret, Delimiters, Operators
    base06 = '#c6daff', -- Light Foreground (Not often used)
    base07 = '#303030', -- Light Background (Not often used)

    base08 = '#ff5f59', -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = '#db7b5f', -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = '#d0bc00', -- Classes, Markup Bold, Search Text Background
    base0B = '#44bc44', -- Strings, Inherited Class, Markup Code, Diff Inserted
    base0C = '#00d4d0', -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = '#2fafff', -- Functions, Methods, Attribute IDs, Headings
    base0E = '#b6a0ff', -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = '#feacd0', -- Deprecated, Opening/Closing Embedded Language Tags
  }
end

if vim.o.background == 'light' then
  palette = {
    base00 = '#ffffff', -- Default Background
    base01 = '#f2f2f2', -- Lighter Background (Used for status bars, line number and folding marks)
    base02 = '#c4c4c4', -- Selection Background
    base03 = '#9f9f9f', -- Comments, Invisibles, Line Highlighting
    base04 = '#595959', -- Dark Foreground (Used for status bars)
    base05 = '#000000', -- Default Foreground, Caret, Delimiters, Operators
    base06 = '#193668', -- Light Foreground (Not often used)
    base07 = '#e0e0e0', -- Light Background (Not often used)

    base08 = '#a60000', -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = '#8a290f', -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = '#6f5500', -- Classes, Markup Bold, Search Text Background
    base0B = '#006800', -- Strings, Inherited Class, Markup Code, Diff Inserted
    base0C = '#005e8b', -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = '#0031a9', -- Functions, Methods, Attribute IDs, Headings
    base0E = '#531ab6', -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = '#721045', -- Deprecated, Opening/Closing Embedded Language Tags
  }
end

if palette then
  require('mini.base16').setup { palette = palette }
  vim.g.colors_name = 'modus'
end
