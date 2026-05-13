-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function()
	hl.exec_cmd("~/.alice/bin/start")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("hyprsunset")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("python3 ~/.alice/scripts/moniter-daemon.py >> ~/.alice/logs/md-log")
	hl.exec_cmd("qs")
	hl.exec_cmd("fcitx5")
	hl.exec_cmd("swayosd-server")
	hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
	hl.exec_cmd("omarchy-cmd-first-run")
	hl.exec_cmd("elephant")
	hl.exec_cmd("walker --gapplication-service")
	hl.exec_cmd("/home/neros/Documents/projects/screen-time/run")

	-- # Slow app launch fix -- set systemd vars
	hl.exec_cmd("systemctl --user import-environment $(env | cut -d'=' -f 1)")
	hl.exec_cmd("dbus-update-activation-environment --systemd --all")

	-- # Extra autostart processes
	hl.exec_cmd("~/.alice/bin/start")
	hl.exec_cmd("wayscriber --daemon")
	-- # Clipboard history daemon
	hl.exec_cmd("wl-paste --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)
