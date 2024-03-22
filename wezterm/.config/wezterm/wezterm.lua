local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- local colors = require("lua/rose-pine-dawn").colors()
-- local window_frame = require('lua/rose-pine').window_frame()

-- config.colors = colors
config.check_for_updates = false
config.color_scheme = "Batppuccin"
-- config.color_scheme = "nvim"
-- config.window_background_opacity = 0.8
config.default_cursor_style = "SteadyBlock"
config.cursor_blink_rate = 400
-- config.macos_window_background_blur = 40
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
	family = "Jetbrains Mono",
	weight = "Regular",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})
config.font_rules = {
	{
		intensity = "Normal",
		italic = true,
		font = wezterm.font({
			family = "Jetbrains Mono",
			weight = "Regular",
			stretch = "Normal",
			style = "Italic",
			harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
		}),
	},
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font({
			family = "Jetbrains Mono",
			weight = "Bold",
			stretch = "Normal",
			style = "Normal",
			harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
		}),
	},
}

config.font_size = 17.0

config.keys = {
	{
		key = "g",
		mods = "CMD",
		action = wezterm.action({ SendString = "fg\n" }),
	},
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

	{
		key = "j",
		mods = "CTRL|SHIFT|CMD",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
}

return config
