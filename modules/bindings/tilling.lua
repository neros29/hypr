-- ===================================================
--                 Window & Workspace binds
-- ===================================================

local directions = { "eDP-2", "DP-1", "HDMI-A-1" }

local get_move = function(monitor, move_direction)
	local idx = nil
	for i, v in ipairs(directions) do
		if v == monitor then
			idx = i
			break
		end
	end

	if not idx then
		return monitor
	end

	local n = #directions
	if move_direction == "right" then
		idx = (idx % n) + 1
	elseif move_direction == "left" then
		idx = (idx - 2 + n) % n + 1
	end
	return directions[idx]
end

for k, v in pairs({ ["h"] = "left", ["l"] = "right" }) do
	hl.bind(AliceConfig.MainMod .. "+ SHIFT + " .. k, function()
		local current_mon = hl.get_monitor_at_cursor().name
		local target_mon = get_move(current_mon, v)

		hl.dispatch(hl.dsp.workspace.swap_monitors({
			monitor1 = current_mon,
			monitor2 = target_mon,
		}))
	end)
end

-- Move focus with mainMod + arrow keys
hl.bind(AliceConfig.MainMod .. " + h", hl.dsp.focus({ direction = "left" }), { description = "Move focus left" })
hl.bind(AliceConfig.MainMod .. " + l", hl.dsp.focus({ direction = "right" }), { description = "Move focus right" })
hl.bind(AliceConfig.MainMod .. " + k", hl.dsp.focus({ direction = "up" }), { description = "Move focus up" })
hl.bind(AliceConfig.MainMod .. " + j", hl.dsp.focus({ direction = "down" }), { description = "Move focus down" })

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(
		AliceConfig.MainMod .. " + " .. key,
		hl.dsp.focus({ workspace = i }),
		{ description = "Move to workspaces " .. i }
	)
	hl.bind(
		AliceConfig.MainMod .. " + SHIFT + " .. key,
		hl.dsp.window.move({ workspace = i }),
		{ description = "Move to workspaces " .. i }
	)
end

-- Example special workspace (scratchpad)
hl.bind(AliceConfig.MainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(AliceConfig.MainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
