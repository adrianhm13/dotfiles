local wezterm = require("wezterm")

local config = wezterm.config_builder()

local os_name = wezterm.target_triple

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

config.font_size = 12.5
config.warn_about_missing_glyphs = false
config.freetype_load_target = "HorizontalLcd" -- https://wezfurlong.org/wezterm/config/lua/config/freetype_load_target.html

-- Monaspace:  https://monaspace.githubnext.com/
-- Based upon, contributed to:  https://gist.github.com/ErebusBat/9744f25f3735c1e0491f6ef7f3a9ddc3
config.font = wezterm.font({ -- Normal text
	family = "Monaspace Neon",
	weight = "Regular",
	harfbuzz_features = { "calt", "liga", "dlig", "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08" },
})

-- config.font_rules = {
-- 	{ -- Italic
-- 		intensity = "Normal",
-- 		italic = true,
-- 		font = wezterm.font({
-- 			family = "Monaspace Xenon", -- courier-like
-- 			style = "Italic",
-- 		}),
-- 	},
--
-- 	{ -- Bold
-- 		intensity = "Bold",
-- 		italic = false,
-- 		font = wezterm.font({
-- 			family = "Monaspace Krypton",
-- 			weight = "Bold",
-- 		}),
-- 	},
--
-- 	{ -- Bold Italic
-- 		intensity = "Bold",
-- 		italic = true,
-- 		font = wezterm.font({
-- 			family = "Monaspace Xenon",
-- 			style = "Italic",
-- 			weight = "Bold",
-- 		}),
-- 	},
-- }

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.macos_window_background_blur = 10
config.window_background_opacity = 1.0

-- if string.find(os_name, "apple") then
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
-- 	config.font_size = 15
-- elseif string.find(os_name, "linux") then
-- 	config.window_padding = {
-- 		left = 0,
-- 		right = 0,
-- 		top = 0,
-- 		bottom = 0,
-- 	}
-- 	config.font_size = 13
-- end

return config
