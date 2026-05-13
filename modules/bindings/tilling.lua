-- ===================================================
--                 Window & Workspace binds
-- ===================================================
hl.bind(MainMod .. "+ CTRL + h", hl.dsp.workspace.swap_monitors({ monitor1 = "eDP-2", monitor2 = "DP-1" }))
hl.bind(MainMod .. "+ CTRL + l", hl.dsp.workspace.swap_monitors({ monitor1 = "HDMI-A-1", monitor2 = "DP-1" }))

-- Move focus with mainMod + arrow keys
hl.bind(MainMod .. " + h", hl.dsp.focus({ direction = "left" }), { description = "Move focus left" })
hl.bind(MainMod .. " + l", hl.dsp.focus({ direction = "right" }), { description = "Move focus right" })
hl.bind(MainMod .. " + k", hl.dsp.focus({ direction = "up" }), { description = "Move focus up" })
hl.bind(MainMod .. " + j", hl.dsp.focus({ direction = "down" }), { description = "Move focus down" })

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(MainMod .. " + " .. key, hl.dsp.focus({ workspace = i }), { description = "Move to workspaces " .. i })
	hl.bind(
		MainMod .. " + SHIFT + " .. key,
		hl.dsp.window.move({ workspace = i }),
		{ description = "Move to workspaces " .. i }
	)
end

-- Example special workspace (scratchpad)
hl.bind(MainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(MainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
