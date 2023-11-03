-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.color_scheme = 'Everforest Dark (Gogh)'

-- For example, changing the color scheme:
config.native_macos_fullscreen_mode = true
config.adjust_window_size_when_changing_font_size = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.font = wezterm.font { family = 'Hack Nerd Font' }
config.font_rules = {
  {
    intensity = 'Bold',
    italic = true,
    font = wezterm.font {
      family = 'VictorMono Nerd Font',
      weight = 'Bold',
      style = 'Italic',
    },
  },
  {
    italic = true,
    intensity = 'Half',
    font = wezterm.font {
      family = 'VictorMono Nerd Font',
      weight = 'DemiBold',
      style = 'Italic',
    },
  },
  {
    italic = true,
    intensity = 'Normal',
    font = wezterm.font {
      family = 'VictorMono Nerd Font',
      style = 'Italic',
    },
  },
}

config.font_size = 17.0

config.keys = {
  { key = 'N', mods = 'CMD|SHIFT', action = wezterm.action.ToggleFullScreen },  
  {
    key = 'H',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'L',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'K',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'J',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
  {
    key = "w",
    mods = "CMD",
    action = wezterm.action.CloseCurrentPane { confirm = true },
    },
}


-- and finally, return the configuration to wezterm
return config

