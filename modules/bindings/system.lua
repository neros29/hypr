-- ================================================
--                  SYSTEM BINDS
-- ===================================================
--
hl.bind(
	AliceConfig.MainMod .. " + SPACE",
	hl.dsp.exec_cmd("omarchy-launch-walker"),
	{ description = "Open app launcher" }
)

hl.bind(AliceConfig.MainMod .. " + W", hl.dsp.window.close(), { description = "Close window" })
hl.bind(AliceConfig.MainMod .. " + CTRL + W", hl.dsp.window.kill(), { description = "Close window" })
hl.bind(AliceConfig.MainMod .. " + f", hl.dsp.window.fullscreen(), { description = "Toggle fullscreen" })
hl.bind(
	AliceConfig.MainMod .. " + k",
	hl.dsp.exec_cmd("omarchy-menu-keybindings"),
	{ description = "Open keybind hints" }
)
hl.bind(AliceConfig.MainMod .. " + ESCAPE", hl.dsp.exec_cmd("omarchy-menu system"), { description = "Open power menu" })
hl.bind(AliceConfig.MainMod .. " + CTRL + SPACE", hl.dsp.global("quickshell:wallpaperpicker"))
hl.bind(
	AliceConfig.MainMod .. " + SHIFT + SPACE",
	hl.dsp.global("quickshell:status"),
	{ description = "Status widget." }
)
hl.bind("mouse:277", hl.dsp.global("quickshell:status"), { description = "Status widget." })
hl.bind(
	AliceConfig.MainMod .. " + SHIFT + j",
	hl.dsp.global("quickshell:jdict"),
	{ description = "Japanese dictionary widget." }
)
hl.bind(
	AliceConfig.MainMod .. " + F1",
	hl.dsp.exec_cmd("omarchy-menu power"),
	{ description = "Open power profile menu" }
)

hl.bind(AliceConfig.MainMod .. " + RETURN", function()
	local workspace_id = tostring(hl.get_active_workspace().id)
	local cmd = AliceConfig.RelativeCmds[workspace_id] or AliceConfig.RelativeCmds["default"]
	cmd()
end, { description = "Relitive key bind" })

hl.bind(
	AliceConfig.MainMod .. " + CTRL + n",
	hl.dsp.exec_cmd("toggle-nightlight"),
	{ description = "Toggle nightlight" }
)
-- hl.bind(
-- 	mainMod .. " + BACKSPACE",
-- 	hl.dsp.exec_cmd("hyprctl dispatch setprop \"address:$(hyprctl activewindow -j | jq -r '.address')\" opaque toggle"),
-- 	{ description = "Toggle transprecy" }
-- )
hl.bind(
	AliceConfig.MainMod .. " + SHIFT + s",
	hl.dsp.exec_cmd(
		'grim ~/Pictures/Screenshots/screenshot-$(date +%F_%H-%M-%S).png && notify-send "📸 Area Screenshot Saved" "Saved to ~/Pictures/Screenshots/screenshot-$(date +%F_%H-%M-%S).png"'
	),
	{ description = "Take screen shot" }
)
hl.bind(
	AliceConfig.MainMod .. " + CTRL + s",
	hl.dsp.exec_cmd(
		'grim -g "$(slurp)" ~/Pictures/Screenshots/screenshot-$(date +%F_%H-%M-%S).png && notify-send "📸 Area Screenshot Saved" "Saved to ~/Pictures/Screenshots/screenshot-$(date +%F_%H-%M-%S).png"'
	),
	{ description = "Take screen shot" }
)
hl.bind(
	AliceConfig.MainMod .. " + v",
	hl.dsp.exec_cmd("omarchy-launch-walker -m clipboard"),
	{ description = "Open clipboard history" }
)
hl.bind(
	AliceConfig.MainMod .. " + CTRL + e",
	hl.dsp.exec_cmd("omarchy-launch-walker -m symbols"),
	{ description = "Open emoji picker" }
)
hl.bind(
	AliceConfig.MainMod .. " + CTRL + p",
	hl.dsp.exec_cmd("pkill hyprpicker || hyprpicker -a"),
	{ description = "Open color picker" }
)
hl.bind(
	AliceConfig.MainMod .. " + p",
	hl.dsp.exec_cmd("echo 'cycle pause' | socat - UNIX-CONNECT:/tmp/mpv 2>/dev/null"),
	{ description = "Play/Pause mpv" }
)
hl.bind(
	AliceConfig.MainMod .. " + D",
	hl.dsp.exec_cmd("/home/neros/.alice/bin/date-gen"),
	{ description = "Copy current date and time to clipboard" }
)
hl.bind(
	AliceConfig.MainMod .. "+ SHIFT + D",
	hl.dsp.exec_cmd("/home/neros/.alice/bin/date-gen time"),
	{ description = "Copy current date and time to clipboard" }
)
