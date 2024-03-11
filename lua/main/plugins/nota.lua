local M = {}

M.config = function()
	require("nota").setup({
		global_path = "/Users/adam/notes.md",
		scratch_path = "/Users/adam/scratch.md",
		local_path = "notes.md",
		vertical_split = true,
	})
end

return M
