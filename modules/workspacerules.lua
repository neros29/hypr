hl.workspace_rule({
	workspace = "2",
	on_created_empty = "kitty",
	default = true,
	monitor = "DP-1",
})
hl.workspace_rule({
	workspace = "3",
	on_created_empty = "firefox",
	monitor = "eDP-2",
})
hl.workspace_rule({
	workspace = "4",
	on_created_empty = "nautilus",
	monitor = "DP-1",
})
hl.workspace_rule({
	workspace = "7",
	on_created_empty = "obsidian",
	monitor = "HDMI-A-1",
})
hl.workspace_rule({
	workspace = "8",
	monitor = "eDP-2",
	default = true,
})
hl.workspace_rule({
	workspace = "10",
	monitor = "HDMI-A-1",
	default = true,
})
