---------------------
---- KEYBINDINGS ----
---------------------
MainMod = "SUPER" -- Sets "Windows" key as main modifier
Terminal = "kitty"
FileManager = "nautilus"
Browser = "firefox"

require("modules.bindings.special") -- This file is were you put wired bindings such as volume, and other wired out of the ordinary bindings.
require("modules.bindings.apps") -- This is used for opening apps
require("modules.bindings.system") -- This is for basic utility's rather then opening real apps.
require("modules.bindings.tilling") -- This is for any hyprland bindings, the tilling window manager specific bindings
