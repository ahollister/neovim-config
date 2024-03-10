local M = {}

M.config = function()
	require("nota").setup({
		global_path = "/Users/adam/notes.md",
		local_path = "notes.md",
		vertical_split = false,
	})
end

return M
