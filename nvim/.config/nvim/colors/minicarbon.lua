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
		selection = "#525252", -- Selection Background
	}
end

if vim.o.background == "light" then
	palette = {
		base00 = "#ffffff", -- Default Background
		base01 = "#f4f4f4", -- Lighter Background (Used for status bars, line number and folding marks)
		base02 = "#c6c6c6", -- Selection Background
		base03 = "#525252", -- Comments, Invisibles, Line Highlighting
		base04 = "#393939", -- Dark Foreground (Used for status bars)
		base05 = "#000000", -- Default Foreground, Caret, Delimiters, Operators
		base06 = "#262626", -- Light Foreground (Not often used)
		base07 = "#161616", -- Light Background (Not often used)
		base08 = "#750e13", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
		base09 = "#8a3800", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
		base0A = "#684e00", -- Classes, Markup Bold, Search Text Background
		base0B = "#0e6027", -- Strings, Inherited Class, Markup Code, Diff Inserted
		base0C = "#005d5d", -- Support, Regular Expressions, Escape Characters, Markup Quotes
		base0D = "#00539a", -- Functions, Methods, Attribute IDs, Headings
		base0E = "#6929c4", -- Deprecated, Opening/Closing Embedded Language Tags
		base0F = "#9f1853", -- Keywords, Storage, Selector, Markup Italic, Diff Changed
		selection = "#a6c8ff", -- Selection Background
	}
end

if palette then
	require("mini.base16").setup({ palette = palette, use_cterm = use_cterm })
	vim.g.colors_name = "minicarbon"
	local hi = vim.api.nvim_set_hl

	hi(0, "Delimiter", { link = Normal })
	hi(0, "Visual", { bg = palette.selection })
	hi(0, "Normal", { bg = NONE, fg = palette.base05 }) -- Make theme transparent
end
