AliceConfig = {
	Terminal = "kitty",
	Browser = "firefox",
	FileManager = "nautilus --new-window",
	MainMod = "SUPER",
	APPMOD = "SHIFT",
}

AliceConfig.RelativeCmds = {
	["2"] = function()
		hl.exec_cmd(AliceConfig.Terminal)
	end,
	["3"] = function()
		hl.exec_cmd(AliceConfig.Browser)
	end,
	["4"] = function()
		hl.exec_cmd(AliceConfig.FileManager)
	end,
	["7"] = function()
		hl.exec_cmd("obsidian")
	end,
	["8"] = function()
		hl.exec_cmd("floating-music-launcher")
	end,
	["10"] = function()
		hl.exec_cmd("hyprctl dispatch \"hl.dsp.global('quickshell:wallpaperpicker')\"")
	end,
	["default"] = function()
		hl.exec_cmd("walker")
	end,
}
AliceConfig.AppBindings = {
	["Return"] = {
		func = function()
			hl.exec_cmd(AliceConfig.Terminal)
		end,
		name = "Terminal",
	},
	["F"] = {
		func = function()
			hl.exec_cmd(AliceConfig.FileManager)
		end,
		name = "File Manger",
	},
	["B"] = {
		func = function()
			hl.exec_cmd(AliceConfig.Browser)
		end,
		name = "Browser",
	},
	["W"] = {
		func = function()
			hl.exec_cmd("omarchy-launch-wifi")
		end,
		name = "Wifi",
	},
	["C"] = {
		func = function()
			hl.exec_cmd("gnome-calculator")
		end,
		name = "Calculator",
	},
	["T"] = {
		func = function()
			hl.exec_cmd("~/.config/play-timer/play-timer.sh")
		end,
		name = "Play Timer",
	},
	["M"] = {
		func = function()
			hl.exec_cmd("floating-music-launcher")
		end,
		name = "Music Launcher",
	},
}
