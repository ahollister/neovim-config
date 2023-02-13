-- ROSE-PINE THEME
------------------

-- Theme customizations
require("rose-pine").setup({
	disable_background = true,
	disable_float_background = true,
	disable_italics = true,
	dark_variant = "moon",
	bold_vert_split = true,
	-- Change specific vim highlight groups
	highlight_groups = {
		TelescopePromptBorder = { fg = "rose" },
		TelescopeResultsBorder = { fg = "rose" },
		TelescopePreviewBorder = { fg = "rose" },
	},
})
