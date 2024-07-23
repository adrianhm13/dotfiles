local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.colors = {
	foreground = "#c8d3f5",
	background = "#222436",
	cursor_bg = "#c8d3f5",
	cursor_border = "#c8d3f5",
	cursor_fg = "#222436",
	selection_bg = "#2d3f76",
	selection_fg = "#c8d3f5",
	split = "#82aaff",
	compose_cursor = "#ff966c",
	scrollbar_thumb = "#2f334d",

	ansi = {
		"#1b1d2b",
		"#ff757f",
		"#c3e88d",
		"#ffc777",
		"#82aaff",
		"#c099ff",
		"#86e1fc",
		"#828bb8",
	},
	brights = {
		"#444a73",
		"#ff757f",
		"#c3e88d",
		"#ffc777",
		"#82aaff",
		"#c099ff",
		"#86e1fc",
		"#c8d3f5",
	},

	tab_bar = {
		background = "#222436",
		inactive_tab_edge = "#1e2030",
		active_tab = {
			fg_color = "#1e2030",
			bg_color = "#82aaff",
		},
		inactive_tab = {
			fg_color = "#545c7e",
			bg_color = "#2f334d",
		},
		inactive_tab_hover = {
			fg_color = "#82aaff",
			bg_color = "#2f334d",
		},
		new_tab = {
			fg_color = "#82aaff",
			bg_color = "#222436",
		},
		new_tab_hover = {
			fg_color = "#82aaff",
			bg_color = "#222436",
			intensity = "Bold",
		},
	},
}

config.font = wezterm.font("Hack Nerd Font")
config.font_size = 13

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 1
config.macos_window_background_blur = 10

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
