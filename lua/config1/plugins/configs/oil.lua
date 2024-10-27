return {
	"stevearc/oil.nvim",
	config = function()
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
		})
	end,
	lazy = false,
	keys = {
		{ "<leader>b", ":Oil<CR>", desc = "Open parent directory" },
	},
}
