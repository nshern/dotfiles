-- 'Minicyan' color scheme
-- Derived from base16 (https://github.com/chriskempson/base16) and
-- mini_palette palette generator
local use_cterm, palette

-- Dark palette is an output of 'MiniBase16.mini_palette':
-- - Background '#0A2A2A' (LCh(uv) = 15-10-192)
-- - Foreground '#D0D0D0' (Lch(uv) = 83-0-0)
-- - Accent chroma 50
if vim.o.background == 'dark' then
  palette = {
    base00 = '#161616',
    base01 = '#262626',
    base02 = '#393939',
    base03 = '#525252',
    base04 = '#a8a8a8',
    base05 = '#c6c6c6',
    base06 = '#e0e0e0',
    base07 = '#f4f4f4',
    base08 = '#ffb3b8',
    base09 = '#ffb784',
    base0A = '#f1c21b',
    base0B = '#6fdc8c',
    base0C = '#3ddbd9',
    base0D = '#a6c8ff',
    base0E = '#d4bbff',
    base0F = '#ffafd2',
  }
end

-- Light palette is an 'inverted dark', output of 'MiniBase16.mini_palette':
-- - Background '#C0D2D2' (LCh(uv) = 83-10-192)
-- - Foreground '#262626' (Lch(uv) = 15-0-0)
-- - Accent chroma 80
if vim.o.background == 'light' then
  palette = {
    base00 = '#c0d2d2',
    base01 = '#9badad',
    base02 = '#778989',
    base03 = '#546767',
    base04 = '#353535',
    base05 = '#262626',
    base06 = '#181818',
    base07 = '#040404',
    base08 = '#402100',
    base09 = '#855f00',
    base0A = '#007d3c',
    base0B = '#003d00',
    base0C = '#b12985',
    base0D = '#003fb6',
    base0E = '#7e0052',
    base0F = '#006cb4',
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
  require('mini.base16').setup({ palette = palette, use_cterm = use_cterm })
  vim.g.colors_name = 'minicyan'
end
