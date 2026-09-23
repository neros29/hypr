-------------------------
---- Hyprland config ----
-------------------------
-- This is my hyprland config entry point.
-- This config is written in the new hyprland lua syntax.
-- Look in /home/neros/Repos/hyprland-wiki if need to find any info

require("modules.moniters") -- This if for monitor configurations.
require("modules.envs") -- This is were i define environment variables
require("modules.theme") -- This is a generated theme file. Do not touch.
require("modules.bindings") -- This the entry point for keyboard shortcuts.
require("modules.autostart") -- This were all the daemons are started
require("modules.input") -- This is were input configurations such as mouse and keyboard input are.
require("modules.windowrules") -- This is were windowrules and defined

hl.config({
	dwindle = {
		preserve_split = true, -- You probably want this
	},
})

hl.config({
	misc = {
		force_default_wallpaper = 1, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = true, -- If true disables the random hyprland logo / anime girl background. :(
	},
})
