-- 'Penumbra' color scheme
-- Derived from penumbra theme (https://github.com/nealmckee/penumbra?tab=readme-ov-file) and
-- Derived from base16 (https://github.com/chriskempson/base16) and
-- mini_palette palette generator

local use_cterm, palette

if vim.o.background == 'dark' then
  -- NOTE: Penumbra+ is used for dark theme, instead of the balanced dark version as I prefer the increased contrast
  palette = {

    base00 = '#24272b', -- Default Background
    base01 = '#181b1f', -- Lighter Background (Used for status bars, line number and folding marks)
    base02 = '#3e4044', -- Selection Background
    base03 = '#636363', -- Comments, Invisibles, Line Highlighting
    base04 = '#9e9e9e', -- Dark Foreground (Used for status bars)
    base05 = '#cecece', -- Default Foreground, Caret, Delimiters, Operators
    base06 = '#fff7ed', -- Light Foreground (Not often used)
    base07 = '#fffdfb', -- Light Background (Not often used)
    base08 = '#CA736C', -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = '#BA823A', -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = '#8D9741', -- Classes, Markup Bold, Search Text Background
    base0B = '#47A477', -- Strings, Inherited Class, Markup Code, Diff Inserted
    base0C = '#00A2AF', -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = '#5794D0', -- Functions, Methods, Attribute IDs, Headings
    base0E = '#9481CC', -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = '#BC73A4', -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
  }

  --TODO: Fix cterm values
  use_cterm = {
    base00 = 235,
    base01 = 238,
    base02 = 241,
    base03 = 102,
    base04 = 250,
    base05 = 252,
    base06 = 254,
    base07 = 231,
    base08 = 186,
    base09 = 136,
    base0A = 29,
    base0B = 115,
    base0C = 132,
    base0D = 153,
    base0E = 218,
    base0F = 67,
  }
end

if vim.o.background == 'light' then
  palette = {

    base00 = '#fff7ed', -- Lighter Background (Used for status bars, line number and folding marks)
    base01 = '#F2E6D4', -- Default Background
    base02 = '#bebebe', -- Selection Background
    base03 = '#8f8f8f', -- Comments, Invisibles, Line Highlighting
    base04 = '#636363', -- Dark Foreground (Used for status bars)
    base05 = '#3e4044', -- Default Foreground, Caret, Delimiters, Operators
    base06 = '#303338', -- Light Foreground (Not often used)
    base07 = '#24272b', -- Light Background (Not often used)
    base08 = '#CA736C', -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = '#BA823A', -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = '#8D9741', -- Classes, Markup Bold, Search Text Background
    base0B = '#47A477', -- Strings, Inherited Class, Markup Code, Diff Inserted
    base0C = '#00A2AF', -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = '#5794D0', -- Functions, Methods, Attribute IDs, Headings
    base0E = '#9481CC', -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = '#BC73A4', -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
  }

  --TODO: Fix cterm values
  use_cterm = {
    base00 = 252,
    base01 = 248,
    base02 = 102,
    base03 = 241,
    base04 = 237,
    base05 = 235,
    base06 = 234,
    base07 = 232,
    base08 = 235,
    base09 = 94,
    base0A = 29,
    base0B = 22,
    base0C = 126,
    base0D = 25,
    base0E = 89,
    base0F = 25,
  }
end

if palette then
  require('mini.base16').setup { palette = palette, use_cterm = use_cterm }
  vim.g.colors_name = 'penumbra+'
end
