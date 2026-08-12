-- ===================================================
--                  BASIC APPS
-- ===================================================
hl.bind(MainMod .. " + SPACE", hl.dsp.exec_cmd("omarchy-launch-walker"), { description = "Open app launcher" })
hl.bind(MainMod .. " + SHIFT + RETURN", hl.dsp.exec_cmd(Terminal))
hl.bind(MainMod .. " + SHIFT + F", hl.dsp.exec_cmd(FileManager), { description = "Open file manager" })
hl.bind(MainMod .. " + SHIFT + B", hl.dsp.exec_cmd(Browser), { description = "Open file browser" })
hl.bind(MainMod .. " + SHIFT + w", hl.dsp.exec_cmd("omarchy-launch-wifi"), { description = "Launch wifi" })
hl.bind(MainMod .. " + SHIFT + c", hl.dsp.exec_cmd("gnome-calculator"), { description = "Launch calculator" })
-- bindd = SUPER SHIFT, T, Timer, exec, bash /home/neros/.config/play-timer/play-timer.sh
hl.bind(
	MainMod .. " + SHIFT + t",
	hl.dsp.exec_cmd("bash /home/neros/.config/play-timer/play-timer.sh"),
	{ description = "Launch Timer" }
)
hl.bind(MainMod .. " + SHIFT + M", hl.dsp.exec_cmd("floating-music-launcher"), { description = "Choose Music" })
