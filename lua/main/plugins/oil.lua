local M = {}

M.config = function()
	require("oil").setup({
		default_file_explorer = true,
		columns = {
			"icon",
			"permissions",
			"size",
			"mtime",
		},
		delete_to_trash = true,
		view_options = {
			-- Show files and directories that start with "."
			show_hidden = true,
		},
		float = {
			-- Padding around the floating window
			padding = 5,
			max_width = 0,
			max_height = 0,
			border = "rounded",
			win_options = {
				winblend = 0,
			},
		},
	})
end

M.keys = {
	{ "<leader>b", ":Oil<CR>", desc = "Open parent directory" },
}

M.lazy = false

return M
