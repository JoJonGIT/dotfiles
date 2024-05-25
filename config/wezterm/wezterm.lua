local wezterm = require("wezterm")
local act = wezterm.action
local config = {}
----------------
--> Settings <--
----------------
config.font = wezterm.font({ family = "FiraCode Nerd Font Mono", weight = "DemiBold" })
config.font_size = 19
config.window_background_opacity = 0.95
config.text_background_opacity = 1.0
config.color_scheme = "Catppuccin Frappé (Gogh)"
config.adjust_window_size_when_changing_font_size = false
config.animation_fps = 60
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_ease_out = "Linear"
config.cursor_blink_rate = 1100
config.default_workspace = "home"
config.window_decorations = "RESIZE"
config.default_cursor_style = "BlinkingUnderline"
config.cursor_thickness = "0.05cell"
config.automatically_reload_config = true
config.hide_tab_bar_if_only_one_tab = true
config.enable_tab_bar = true
config.audible_bell = "Disabled"
config.window_close_confirmation = "NeverPrompt"
config.initial_cols = 80
config.initial_rows = 24
config.integrated_title_button_color = "Auto"
config.integrated_title_button_style = "Gnome"
config.integrated_title_buttons = { "Close" }
config.line_height = 1.0
config.cell_width = 1.0
config.min_scroll_bar_height = "0.5cell"
config.mouse_wheel_scrolls_tabs = false
config.pane_focus_follows_mouse = true
config.prefer_to_spawn_tabs = false
config.scrollback_lines = 3500
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = true
config.show_new_tab_button_in_tab_bar = true
config.show_tab_index_in_tab_bar = true
config.show_tabs_in_tab_bar = true
config.status_update_interval = 1000
config.swallow_mouse_click_on_pane_focus = true
config.swallow_mouse_click_on_window_focus = true
config.switch_to_last_active_tab_when_closing_tab = true
config.use_resize_increments = true
config.window_padding = {
	left = 2,
	right = 2,
	top = 8,
	bottom = 8,
}
config.inactive_pane_hsb = {
	saturation = 1.0,
	brightness = 1.0,
}
config.foreground_text_hsb = {
	hue = 1.0,
	saturation = 1.0,
	brightness = 1.0,
}
config.enable_wayland = false

--> KEYS EVERYONE!!!!!!!!!!!!!!!!!!! <--
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	-- Copy Mode idk get yet
	{ key = "c", mods = "LEADER", action = act.ActivateCopyMode },

	-- Split Vertical with -
	{ key = "-", mods = "LEADER", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },

	-- Split Horizontal
	{ key = "|", mods = "LEADER|SHIFT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },

	-- Vim motions to navigate panes
	{ key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
	{ key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
	{ key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
	{ key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },

	-- pressing x on keyboard will close current pane
	{ key = "x", mods = "LEADER", action = act.CloseCurrentPane({ confirm = true }) },
	-- z will mess with zoom state
	{ key = "z", mods = "LEADER", action = act.TogglePaneZoomState },
	-- I guess s rotates clockwise the panes
	{ key = "s", mods = "LEADER", action = act.RotatePanes("Clockwise") },
	-- USE r KEY FOR:But Wezterm offers custom "mode" in the name of "KeyTable"
	{ key = "r", mods = "LEADER", action = act.ActivateKeyTable({ name = "resize_pane", one_shot = false }) },

	-- Tab keybindings
	--
	-- Press n key to spawn a tab
	{ key = "n", mods = "LEADER", action = act.SpawnTab("CurrentPaneDomain") },
	-- Use the [ and ] to go left and right when navigating tabs
	{ key = "[", mods = "LEADER", action = act.ActivateTabRelative(-1) },
	{ key = "]", mods = "LEADER", action = act.ActivateTabRelative(1) },
	-- pressing t will spawn tab navigator
	{ key = "t", mods = "LEADER", action = act.ShowTabNavigator },

	-- Key table for moving tabs around PRESS m
	{ key = "m", mods = "LEADER", action = act.ActivateKeyTable({ name = "move_tab", one_shot = false }) },

	-- Lastly, workspace WITH w KEY
	{ key = "w", mods = "LEADER", action = act.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }) },
}
-- I can use the tab navigator (LDR t), but I also want to quickly navigate tabs with index
for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = act.ActivateTab(i - 1),
	})
end

config.key_tables = {
	resize_pane = {
		{ key = "h", action = act.AdjustPaneSize({ "Left", 1 }) },
		{ key = "j", action = act.AdjustPaneSize({ "Down", 1 }) },
		{ key = "k", action = act.AdjustPaneSize({ "Up", 1 }) },
		{ key = "l", action = act.AdjustPaneSize({ "Right", 1 }) },
		{ key = "Escape", action = "PopKeyTable" },
		{ key = "Enter", action = "PopKeyTable" },
	},
	move_tab = {
		{ key = "h", action = act.MoveTabRelative(-1) },
		{ key = "j", action = act.MoveTabRelative(-1) },
		{ key = "k", action = act.MoveTabRelative(1) },
		{ key = "l", action = act.MoveTabRelative(1) },
		{ key = "Escape", action = "PopKeyTable" },
		{ key = "Enter", action = "PopKeyTable" },
	},
}
return config
