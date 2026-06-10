hl.window_rule({
	match = { tag = "floating-window" },
	float = true,
	center = true,
	size = { 875, 600 },
})

hl.window_rule({
	match = {
		class = "(blueberry\\.py|com\\.omarchy\\.Impala|com\\.omarchy\\.Wiremix|com\\.omarchy\\.Omarchy|org\\.gnome\\.NautilusPreviewer|com\\.gabm\\.satty|Omarchy|About|TUI\\.float)",
	},
	tag = "+floating-window",
})

hl.window_rule({
	match = {
		class = "org\\.gnome\\.Calculator",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "^(zoom|vlc|mpv|org\\.kde\\.kdenlive|com\\.obsproject\\.Studio|com\\.github\\.PintaProject\\.Pinta|imv|org\\.gnome\\.NautilusPreviewer)$\\.Calculator",
	},
	opacity = "1 1",
})

hl.layer_rule({
	match = {
		namespace = "walker",
	},
	no_anim = true,
})

-- Picture In Picture
hl.window_rule({
	match = { title = "(Picture.?in.?[Pp]icture)" },
	float = true,
	tag = "+pip",
})

hl.window_rule({
	match = { tag = "pip" },
	float = true,
	pin = true,
	size = { 700, 394 },
	keep_aspect_ratio = true,
	border_size = 0,
	decorate = false,
	opacity = "1 1",
	move = "100%-w-40 4%",
})

hl.window_rule({
	match = {
		class = "com\\.alice\\.Music",
	},
	float = true,
	center = true,
	size = { 1000, 600 },
})
