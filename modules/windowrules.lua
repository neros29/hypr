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
