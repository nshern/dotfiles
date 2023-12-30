local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- local colors = require('lua/rose-pine-moon').colors()
-- local window_frame = require('lua/rose-pine').window_frame()
local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
-- custom.background = "#000000"
custom.tab_bar.background = "#1e1e2e"
custom.tab_bar.inactive_tab.bg_color = "#1e1e2e"
custom.tab_bar.inactive_tab.fg_color = "#7f849c"
custom.tab_bar.new_tab.bg_color = "#1e1e2e"
custom.tab_bar.active_tab.bg_color = "#45475a"
custom.tab_bar.active_tab.fg_color = "#cdd6f4"


-- config.colors = colors
-- config.window_frame = window_frame
config.color_schemes = {["catcustom"] = custom,}
config.color_scheme = "catcustom"
config.default_cursor_style = "SteadyBlock"
config.cursor_blink_rate = 400
config.macos_window_background_blur = 50
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
	family = "Comic Code",
	weight = "Regular",
	-- harfbuzz_features = { "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "calt", "dlig" },
})
config.font_rules = {
	{
		intensity = "Normal",
		italic = true,
		font = wezterm.font({
			family = "Comic Code",
			weight = "Regular",
			stretch = "Normal",
			style = "Italic",
			-- harfbuzz_features={ 'calt', 'liga', 'dlig', 'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08' },
		}),
	},
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font({
			family = "Comic Code",
			weight = "Bold",
			stretch = "Normal",
			style = "Normal",
			-- harfbuzz_features={ 'calt', 'liga', 'dlig', 'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08' },
		}),
	},
}

config.font_size = 15.0

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
