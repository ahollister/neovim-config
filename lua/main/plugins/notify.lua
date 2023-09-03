local M = {}

M.config = function()
	require("notify").setup({
		background_colour = "#000000",
	})
end

M.lazy = false

return M
