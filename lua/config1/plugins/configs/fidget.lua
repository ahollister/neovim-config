return {
	"j-hui/fidget.nvim",
	config = function()
		require("fidget").setup({
			text = {
				spinner = "bouncing_ball",
			},
			window = {
				border = "rounded",
				blend = 0,
			},
		})
	end,
	tag = "legacy"
}
