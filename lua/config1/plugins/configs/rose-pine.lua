return {
	"rose-pine/neovim",
	as = "rose-pine",
	config = function()
		require("rose-pine").setup({
			-- disable_background = true,
			-- disable_float_background = true,
			-- disable_italics = true,
			-- dark_variant = "moon",
			-- bold_vert_split = true,
			-- change specific vim highlight groups
			highlight_groups = {
				telescopepromptborder = { fg = "muted" },
				telescoperesultsborder = { fg = "muted" },
				telescopepreviewborder = { fg = "muted" },
			},
		})
	end,
}
