local wezterm = require("wezterm")

local config = {}
local colors = require("lua/rose-pine-moon").colors()
local window_frame = require("lua/rose-pine-moon").window_frame()

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Use Rose Pine Moon Theme
config.colors = colors
config.window_frame = window_frame

config.native_macos_fullscreen_mode = true
config.adjust_window_size_when_changing_font_size = false
config.tab_bar_at_bottom = false
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.window_decorations = "RESIZE"
config.font = wezterm.font({ family = "Hack Nerd Font" })
config.font_rules = {
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font({
			family = "VictorMono Nerd Font",
			weight = "Bold",
			style = "Italic",
		}),
	},
	{
		italic = true,
		intensity = "Half",
		font = wezterm.font({
			family = "VictorMono Nerd Font",
			weight = "DemiBold",
			style = "Italic",
		}),
	},
	{
		italic = true,
		intensity = "Normal",
		font = wezterm.font({
			family = "VictorMono Nerd Font",
			style = "Italic",
		}),
	},
}

config.font_size = 17.0

config.keys = {
	{ key = "N", mods = "CMD|SHIFT", action = wezterm.action.ToggleFullScreen },
	{
		key = "H",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "L",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "K",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "J",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
  {
    key = 'l',
    mods = 'CTRL|SHIFT|CMD',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },

  {
    key = 'j',
    mods = 'CTRL|SHIFT|CMD',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
}

return config
