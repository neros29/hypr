-- ===================================================
--                 Utility binds
-- ===================================================
local osdclient = "swayosd-client --monitor \"$(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name')\""
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(osdclient .. " --output-volume raise"), { description = "Toggle mute" })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(osdclient .. " --output-volume lower"), { description = "Toggle mute" })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(osdclient .. " --output-volume mute-toggle"), { description = "Toggle mute" })
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd(osdclient .. " --input-volume mute-toggle"),
	{ description = "Toggle micrphon mute" }
)
hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd(osdclient .. " --brightness raise"),
	{ description = "Raise brightness" }
)
hl.bind(
	"XF86MonBrightnessDown",
	hl.dsp.exec_cmd(osdclient .. " --brightness lower"),
	{ description = "Raise brightness" }
)

hl.bind(
	"XF86AudioPause",
	hl.dsp.exec_cmd("echo 'cycle pause' | socat - UNIX-CONNECT:/tmp/mpv 2>/dev/null"),
	{ description = "Play/pause mpv" }
)
