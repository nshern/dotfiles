-- 'Minicyan' color scheme
-- Derived from base16 (https://github.com/chriskempson/base16) and
-- mini_palette palette generator
local use_cterm, palette

-- Dark palette is an output of 'MiniBase16.mini_palette':
-- - Background '#0A2A2A' (LCh(uv) = 15-10-192)
-- - Foreground '#D0D0D0' (Lch(uv) = 83-0-0)
-- - Accent chroma 50
if vim.o.background == "dark" then
	palette = {
		base00 = "#262626", -- Default Background
		base01 = "#393939", -- Lighter Background (Used for status bars, line number and folding marks)
		base02 = "#525252", -- Selection Background
		base03 = "#6f6f6f", -- Comments, Invisibles, Line Highlighting
		base04 = "#8d8d8d", -- Dark Foreground (Used for status bars)
		base05 = "#e0e0e0", -- Default Foreground, Caret, Delimiters, Operators
		base06 = "#f4f4f4", -- Light Foreground (Not often used)
		base07 = "#ffffff", -- Light Background (Not often used)
		base08 = "#ffb3b8", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
		base09 = "#ffb784", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
		base0A = "#f1c21b", -- Classes, Markup Bold, Search Text Background
		base0B = "#6fdc8c", -- Strings, Inherited Class, Markup Code, Diff Inserted
		base0C = "#3ddbd9", -- Support, Regular Expressions, Escape Characters, Markup Quotes
		base0D = "#82cfff", -- Functions, Methods, Attribute IDs, Headings
		base0E = "#d4bbff", -- Deprecated, Opening/Closing Embedded Language Tags
		base0F = "#ffafd2", -- Keywords, Storage, Selector, Markup Italic, Diff Changed
		-- selection = "#525252", -- Selection Background
		selection = "#00539a",
		docstring = "#24a148",
	}
end

if vim.o.background == "light" then
	palette = {
		base00 = "#f4f4f4", -- Default Background
		base01 = "#e0e0e0", -- Lighter Background (Used for status bars, line number and folding marks)
		base02 = "#c6c6c6", -- Selection Background
		base03 = "#6f6f6f", -- Comments, Invisibles, Line Highlighting
		base04 = "#393939", -- Dark Foreground (Used for status bars)
		base05 = "#161616", -- Default Foreground, Caret, Delimiters, Operators
		base06 = "#262626", -- Light Foreground (Not often used)
		base07 = "#161616", -- Light Background (Not often used)
		base08 = "#a2191f", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
		base09 = "#ba4e00", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
		base0A = "#684e00", -- Classes, Markup Bold, Search Text Background
		base0B = "#0e6027", -- Strings, Inherited Class, Markup Code, Diff Inserted
		base0C = "#005d5d", -- Support, Regular Expressions, Escape Characters, Markup Quotes
		base0D = "#0043ce", -- Functions, Methods, Attribute IDs, Headings
		base0E = "#6929c4", -- Deprecated, Opening/Closing Embedded Language Tags
		base0F = "#9f1853", -- Keywords, Storage, Selector, Markup Italic, Diff Changed
		selection = "#a6c8ff", -- Selection Background
		docstring = "#24a148",
	}
end

if palette then
	require("mini.base16").setup({ palette = palette, use_cterm = use_cterm })
	vim.g.colors_name = "carbonized"
	local hi = vim.api.nvim_set_hl

	hi(0, "Delimiter", { link = Normal })
	hi(0, "Visual", { bg = palette.selection })
	hi(0, "Identifier", { fg = palette.base0D })
	-- hi(0, "Normal", { bg = NONE, fg = palette.base05 }) -- Make theme transparent
	-- hi(0, "@string.documentation.python", { fg = palette.docstring }) -- Make theme transparent
	-- hi(0, "@comment", { fg = palette.docstring }) -- Make theme transparent
	hi(0, "@markup.heading.1.markdown", { fg = palette.base0D }) -- Make theme transparent
	hi(0, "@markup.heading.2.markdown", { fg = palette.base0C }) -- Make theme transparent
	hi(0, "@markup.heading.3.markdown", { fg = palette.base0E }) -- Make theme transparent
	hi(0, "@markup.heading.4.markdown", { fg = palette.base0F }) -- Make theme transparent
end
