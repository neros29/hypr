-- env = GDK_SCALE,1

-- This is your anchor at the very beginning of the coordinate space.
hl.monitor({
	-- defualt = true,
	output = "eDP-2",
	mode = "preferred",
	position = "0x0",
	scale = 1.2,
})

-- 2. DP-1 (Center)
-- "auto-right" tells Hyprland to place this immediately to the right of eDP-2,
-- automatically accounting for eDP-2's 1.2x scaling math.
hl.monitor({
	output = "DP-1",
	mode = "preferred",
	position = "auto-right",
	scale = 1,
})

-- 3. HDMI-A-1 (Far Right)
-- "auto-right" here tells Hyprland to chain this to the right of DP-1.
hl.monitor({
	output = "HDMI-A-1",
	mode = "1920x1080@120",
	position = "auto-right",
	scale = 1,
})

-- 4. The Catch-All Fallback (Crucial for unplugs)
hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = 1,
})
