-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
--
hl.config({
	general = {
		gaps_in = 3,
		gaps_out = 6,
		border_size = 2,

		col = {
			active_border = { colors = { "rgba(ffffffff)", "rgba(ffffffff)" }, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},
	},

	decoration = {
		rounding = 6,
		-- rounding_power = 2,
		dim_inactive = true,
		dim_strength = 0.0,

		-- Change transparency of focused and unfocused windows
		active_opacity = 0.90,
		inactive_opacity = 0.85,

		shadow = {
			enabled = true,
			range = 1,
			render_power = 1,
			color = "rgba(211, 211, 211, 0.8)",
		},

		blur = {
			enabled = true,
			size = 1,
			passes = 3,
			new_optimizations = true,
			ignore_opacity = true,
		},
	},

	animations = {
		enabled = true,
	},
})

hl.curve("overshot", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("smoothOut", { type = "bezier", points = { { 0.5, 0 }, { 0.99, 0.99 } } })
hl.curve("smoothIn", { type = "bezier", points = { { 0.5, -0.5 }, { 0.68, 1.5 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 5, bezier = "overshot", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, bezier = "smoothOut" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "smoothOut" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "smoothIn", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 5, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 5, bezier = "smoothIn" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "default" })
