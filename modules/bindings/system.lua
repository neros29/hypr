-- ===================================================
--                  SYSTEM BINDS
-- ===================================================
hl.bind(MainMod .. " + W", hl.dsp.window.close(), { description = "Close window" })
hl.bind(MainMod .. "+ f", hl.dsp.window.fullscreen(), { description = "Toggle fullscreen" })
hl.bind(MainMod .. " + k", hl.dsp.exec_cmd("omarchy-menu-keybindings"), { description = "Open keybind hints" })
hl.bind(MainMod .. " + ESCAPE", hl.dsp.exec_cmd("omarchy-menu system"), { description = "Open power menu" })
hl.bind(MainMod .. " + CTRL + SPACE", hl.dsp.global("quickshell:wallpaperpicker"))
hl.bind(
	MainMod .. " + RETURN",
	hl.dsp.exec_cmd("python3 ~/.alice/scripts/relitive_commands.py"),
	{ description = "Relitive key bind" }
)
hl.bind(MainMod .. " + CTRL + n", hl.dsp.exec_cmd("toggle-nightlight"), { description = "Toggle nightlight" })
-- hl.bind(
-- 	mainMod .. " + BACKSPACE",
-- 	hl.dsp.exec_cmd("hyprctl dispatch setprop \"address:$(hyprctl activewindow -j | jq -r '.address')\" opaque toggle"),
-- 	{ description = "Toggle transprecy" }
-- )
hl.bind(
	MainMod .. " + SHIFT + s",
	hl.dsp.exec_cmd(
		'grim ~/Pictures/Screenshots/screenshot-$(date +%F_%H-%M-%S).png && notify-send "📸 Area Screenshot Saved" "Saved to ~/Pictures/Screenshots/screenshot-$(date +%F_%H-%M-%S).png"'
	),
	{ description = "Take screen shot" }
)
hl.bind(
	MainMod .. " + CTRL + s",
	hl.dsp.exec_cmd(
		'grim -g "$(slurp)" ~/Pictures/Screenshots/screenshot-$(date +%F_%H-%M-%S).png && notify-send "📸 Area Screenshot Saved" "Saved to ~/Pictures/Screenshots/screenshot-$(date +%F_%H-%M-%S).png"'
	),
	{ description = "Take screen shot" }
)
hl.bind(
	MainMod .. " + CTRL + v",
	hl.dsp.exec_cmd("omarchy-launch-walker -m clipboard"),
	{ description = "Open clipboard history" }
)
hl.bind(
	MainMod .. " + CTRL + e",
	hl.dsp.exec_cmd("omarchy-launch-walker -m symbols"),
	{ description = "Open emoji picker" }
)
hl.bind(
	MainMod .. " + CTRL + p",
	hl.dsp.exec_cmd("pkill hyprpicker || hyprpicker -a"),
	{ description = "Open color picker" }
)
