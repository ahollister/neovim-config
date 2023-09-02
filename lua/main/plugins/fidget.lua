local M = {}

M.config = function()
	require("fidget").setup({
		text = {
			spinner = "bouncing_ball",
		},
		window = {
			border = "rounded",
			blend = 0,
		},
	})
end

M.tag = "legacy"

return M
