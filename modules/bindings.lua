---------------------
---- KEYBINDINGS ----
---------------------
require("modules.bindings.special") -- This file is were you put wired bindings such as volume, and other wired out of the ordinary bindings.
require("modules.bindings.system") -- This is for basic utility's rather then opening real apps.
require("modules.bindings.tilling") -- This is for any hyprland bindings, the tilling window manager specific bindings

-- ===================================================
--                  BASIC APPS
-- ===================================================
for k, v in pairs(AliceConfig.AppBindings) do
	hl.bind(AliceConfig.MainMod .. " + " .. AliceConfig.APPMOD .. " + " .. k, function()
		v.func()
	end, { description = "Open " .. v.name })
end
