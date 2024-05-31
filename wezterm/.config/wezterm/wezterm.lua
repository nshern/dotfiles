local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

function get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
	return "Dark"
end

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "penumbra dark+"
	else
		return "penumbra light"
	end
end
--
config.check_for_updates = false
config.color_scheme = scheme_for_appearance(get_appearance())

config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

-- config.window_background_opacity = 0.8
config.default_cursor_style = "SteadyBlock"
config.cursor_blink_rate = 400
-- config.macos_window_background_blur = 5
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
	weight = "Medium",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})
config.font_rules = {
	{
		intensity = "Normal",
		italic = true,
		font = wezterm.font({
			family = "Comic Code",
			weight = "Medium",
			stretch = "Normal",
			style = "Italic",
			harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
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
			harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
		}),
	},
}

config.font_size = 17.0

config.keys = {
	-- { key = "PageUp", mods = "SHIFT", action = wezterm.action.ScrollByPage(-0.4) },
	-- { key = "PageDown", mods = "SHIFT", action = wezterm.action.ScrollByPage(0.4) },
	{ key = "k", mods = "CTRL", action = wezterm.action.ScrollByPage(-0.1) },
	{ key = "j", mods = "CTRL", action = wezterm.action.ScrollByPage(0.1) },
	{ key = "PageUp", mods = "CTRL", action = wezterm.action.ScrollByPage(-0.5) },
	{ key = "PageDown", mods = "CTRL", action = wezterm.action.ScrollByPage(0.5) },
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
