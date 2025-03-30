-- 'Minischeme' color scheme
-- Derived from base16 (https://github.com/chriskempson/base16) and
-- mini_palette palette generator
local palette

if vim.o.background == 'dark' then
  palette = {
    base00 = '#161616',
    base01 = '#393939',
    base02 = '#525252',
    base03 = '#6f6f6f',
    base04 = '#8d8d8d',
    base05 = '#a8a8a8',
    base06 = '#c6c6c6',
    base07 = '#f4f4f4',
    base08 = '#ff8389',
    base09 = '#ff832b',
    base0A = '#d2a106',
    base0B = '#42be65',
    base0C = '#08bdba',
    base0D = '#78a9ff',
    base0E = '#be95ff',
    base0F = '#ff7eb6',
  }
end

if vim.o.background == 'light' then
  palette = {
    base00 = '#f4f4f4',
    base01 = '#c6c6c6',
    base02 = '#a8a8a8',
    base03 = '#8d8d8d',
    base04 = '#6f6f6f',
    base05 = '#525252',
    base06 = '#393939',
    base07 = '#161616',
    base08 = '#a2191f',
    base09 = '#8a3800',
    base0A = '#684e00',
    base0B = '#0e6027',
    base0C = '#005d5d',
    base0D = '#0043ce',
    base0E = '#6929c4',
    base0F = '#9f1853',
  }
end

if palette then
  require('mini.base16').setup({ palette = palette, use_cterm = use_cterm })
  vim.g.colors_name = 'minicarbon'
end
