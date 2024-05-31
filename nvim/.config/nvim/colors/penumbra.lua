-- NOTE: For a dark theme:
--
-- Sun+		#FFFDFB Sun+ “white”, text in highlighted sections, emphasized borders
-- Sun		#FFF7ED Sun selections, light borders, strongly emphasized content
-- Sun-		#F2E6D4 Optional
-- Sky+		#BEBEBE Emphasized content and emphasized UI text
-- Sky		#8F8F8F Foreground, code, main content colour, text both in editors and UI elements
-- Sky-		#636363 Comments, de-emphasized content
-- Shade+	#3E4044 Foreground UI elements, rulers, indentation guides and similar
-- Shade	#303338 Main background colour
-- Shade-	#24272B “black”, de-emphasized/receded background elements, selections, dark UI elements
--
local use_cterm, palette

if vim.o.background == 'dark' then
  palette = {

    base00 = '#303338', -- Default Background
    base01 = '#24272b', -- Lighter Background (Used for status bars, line number and folding marks)
    base02 = '#3e4044', -- Selection Background
    base03 = '#636363', -- Comments, Invisibles, Line Highlighting
    base04 = '#8f8f8f', -- Dark Foreground (Used for status bars)
    base05 = '#bebebe', -- Default Foreground, Caret, Delimiters, Operators
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

-- NOTE: For a light theme:
--
-- Shade- “white”, text in highlighted sections, emphasized borders
-- Shade selections, light borders, strongly emphasized content
-- Shade+ optional
-- Sky- emphasized content and emphasized UI text
-- Sky foreground, code, main content colour, text both in editors and UI elements
-- Sky+ comments, de-emphasized content
-- Sun- foreground UI elements, rulers, indentation guides and similar
-- Sun main background colour
-- Sun+ “black”, de-emphasized/receded background elements, selections, dark UI elements
--
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
  vim.g.colors_name = 'penumbra'
end
