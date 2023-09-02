local M = {}

M.config = function()
	require("telescope").setup({
		pickers = {
			find_files = {
				find_command = {
					"rg",
					"--files",
					"--hidden",
					"--glob",
					"!.git",
					"--glob",
					"!node_modules",
				},
			},
		},
	})
end

M.keys = {
	{ "<leader>fs", require("telescope.builtin").find_files, desc = "Find Files" },
	{ "<leader>fg", require("telescope.builtin").live_grep, desc = "Live Grep" },
	{ "<leader>gs", require("telescope.builtin").git_files, desc = "Git Files" },
	{ "<leader>fh", require("telescope.builtin").help_tags, desc = "Help tags" },
	{ "<leader>ff", require("telescope.builtin").oldfiles, desc = "Recent files" },
}

M.tag = "0.1.2"

M.dependencies = {
	"nvim-lua/plenary.nvim",
}

return M
