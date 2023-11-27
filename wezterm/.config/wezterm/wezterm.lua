local wezterm = require("wezterm")

local config = {}
local colors = require("lua/rose-pine-moon").colors()
local window_frame = require("lua/rose-pine-moon").window_frame()

if wezterm.config_builder then
	config = wezterm.config_builder()
end


config.colors = colors
config.window_frame = window_frame
config.window_background_opacity = 1.0
config.cursor_blink_rate = 400
config.macos_window_background_blur = 30
config.native_macos_fullscreen_mode = true
config.adjust_window_size_when_changing_font_size = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.inactive_pane_hsb = {
  saturation = 1.0,
  brightness = 1.0,
}
config.hide_tab_bar_if_only_one_tab = false
config.window_decorations = "RESIZE"
config.font = wezterm.font({
	family = "Comic Code Ligatures",
	weight = "Regular",
	harfbuzz_features = { "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "calt", "dlig" },
})
config.font_rules = {
	{
		intensity = "Normal",
		italic = true,
		font = wezterm.font({
			family = "Comic Code Ligatures",
			weight = "Light",
			stretch = "Normal",
			style = "Italic",
			harfbuzz_features={ 'calt', 'liga', 'dlig', 'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08' },
		}),
	},
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font({
			family = "Comic Code Ligatures",
			weight = "Bold",
			stretch = "Normal",
			style = "Normal",
			harfbuzz_features={ 'calt', 'liga', 'dlig', 'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08' },
		}),
	},
}

config.font_size = 14.5

config.keys = {
	{ key = "N", mods = "CMD|SHIFT", action = wezterm.action.ToggleFullScreen },
	{
		key = "H",
		mods = "SHIFT|CMD",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "L",
		mods = "SHIFT|CMD",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "K",
		mods = "SHIFT|CMD",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "J",
		mods = "SHIFT|CMD",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT|CMD",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	{
		key = "j",
		mods = "CTRL|SHIFT|CMD",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
}

return config
