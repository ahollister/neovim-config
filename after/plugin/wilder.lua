-- Wilder
---------

local wilder = require("wilder")

wilder.setup({
	modes = { ":", "/", "?" },
})

wilder.set_option(
	"renderer",
	wilder.popupmenu_renderer(wilder.popupmenu_border_theme({
		highlights = {
			border = "Normal", -- highlight to use for the border
		},
		-- 'single', 'double', 'rounded' or 'solid'
		border = "rounded",
	}))
)
