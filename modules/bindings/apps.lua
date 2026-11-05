-- ===================================================
--                  BASIC APPS
-- ===================================================
for k, v in pairs(AliceConfig.AppBindings) do
	hl.bind(AliceConfig.MainMod .. " + " .. AliceConfig.APPMOD .. " + " .. k, function()
		v.func()
	end, { description = "Open " .. v.name })
end
