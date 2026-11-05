---------------
---- INPUT ----
---------------

hl.config({
	input = {
		kb_layout = "us",
		repeat_rate = 40,
		repeat_delay = 600,

		numlock_by_default = true,

		sensitivity = 0,
		tablet = {
			output = "current",
		},

		touchpad = {
			natural_scroll = true,
			scroll_factor = 1.5,
		},
	},
})
hl.gesture({
	fingers = 3,
	direction = "vertical",
	scale = 1.5,
	action = function()
		hl.dispatch(hl.dsp.global("quickshell:status"))
	end,
})
hl.gesture({
	fingers = 3,
	direction = "right",
	scale = 1.5,
	action = function()
		hl.dispatch(hl.dsp.global("quickshell:jdict"))
	end,
})
