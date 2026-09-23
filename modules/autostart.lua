-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--

hl.on("hyprland.start", function()
	hl.exec_cmd("hypridle")
	-- hl.exec_cmd("hyprsunset")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("qs")
	hl.exec_cmd("fcitx5")
	hl.exec_cmd("swayosd-server")
	hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
	hl.exec_cmd("elephant")
	hl.exec_cmd("walker --gapplication-service")

	-- # Slow app launch fix -- set systemd vars
	hl.exec_cmd("systemctl --user import-environment $(env | cut -d'=' -f 1)")
	hl.exec_cmd("dbus-update-activation-environment --systemd --all")

	hl.exec_cmd("wayscriber --daemon")

	-- # Clipboard history daemon
	hl.exec_cmd("wl-paste --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
	hl.exec_cmd("bash $ALICE_PATH/scripts/start.sh")

	hl.exec_cmd("kitty", { workspace = "2 silent" })
	hl.exec_cmd("nautilus", { workspace = "4 silent" })
	hl.exec_cmd("obsidian", { workspace = "7 silent" })
	hl.exec_cmd("firefox", { workspace = "3 silent" })

	hl.dispatch(hl.dsp.focus({ workspace = 2 }))
end)
