local M = {}

M.config = function()
	require("colorizer").setup({
		filetypes = { "*" },
		user_default_options = {
			css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
			css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
			tailwind = true, -- Enable tailwind colors
			-- parsers can contain values used in |user_default_options|
			sass = { enable = true, parsers = { "css" } }, -- Enable sass colors
		},
	})
end

return M
